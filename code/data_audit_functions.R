# =============================================================================
# data_audit_functions.R
# Laboratorio de Ecologia Integrativa - PUCV
#
# Generic data quality checks for tabular datasets: duplicate IDs, consistency
# between redundant fields, missing key fields, out-of-range numeric values,
# inconsistent categories within a group, invisible characters, repeated
# punctuation, and composite-category mismatches. None of the checks assume a
# specific field naming convention (Darwin Core or otherwise); every column
# name is passed as an argument.
#
# Usage:
#   source("R/data_audit_functions.R")
#   result <- audit_dataset(
#     my_dataset,
#     id_col = "record_id"
#   )
#   result
#
# Each check can also be called on its own with its own column arguments,
# which is often clearer than forcing every dataset through audit_dataset().
#
# Requires: dplyr, stringr
# =============================================================================

library(dplyr)
library(stringr)

# -----------------------------------------------------------------------
# 1. Duplicate IDs
# -----------------------------------------------------------------------
check_duplicate_ids <- function(df, id_col) {
  df %>%
    count(.data[[id_col]], name = "n_records") %>%
    filter(n_records > 1)
}

# -----------------------------------------------------------------------
# 2. Consistency between two redundant fields
#    (e.g. a full date vs. a separate year column, or a total vs. a sum of
#    parts). `extract_fn` pulls a comparable value out of `field_a` before
#    comparing it to `field_b`; the default assumes both fields already hold
#    directly comparable values.
# -----------------------------------------------------------------------
check_field_consistency <- function(df, id_col, field_a, field_b,
                                     extract_fn = identity) {
  df %>%
    mutate(
      derived_value = extract_fn(.data[[field_a]]),
      matches = is.na(.data[[field_a]]) | (derived_value == .data[[field_b]])
    ) %>%
    filter(!matches | (is.na(.data[[field_a]]) & !is.na(.data[[field_b]]))) %>%
    select(all_of(c(id_col, field_a, field_b)))
}

# -----------------------------------------------------------------------
# 3. Records missing all of a set of key fields
#    (e.g. no location info at all, or no contact info at all)
# -----------------------------------------------------------------------
check_missing_key_fields <- function(df, id_col, cols) {
  df %>%
    filter(if_all(all_of(cols), is.na)) %>%
    select(all_of(id_col))
}

# -----------------------------------------------------------------------
# 4. Numeric values outside a plausible range
#    (elevation, coordinates, body measurements, concentrations - any
#    numeric field with known physical or logical limits)
# -----------------------------------------------------------------------
check_numeric_range <- function(df, id_col, value_col, min_val, max_val) {
  df %>%
    filter(!is.na(.data[[value_col]])) %>%
    filter(.data[[value_col]] < min_val | .data[[value_col]] > max_val) %>%
    select(all_of(c(id_col, value_col)))
}

# -----------------------------------------------------------------------
# 5. Inconsistent category within a group
#    (same coordinates assigned to two different administrative regions,
#    same site code assigned to two different treatments, etc.)
# -----------------------------------------------------------------------
check_group_inconsistency <- function(df, group_cols, category_col) {
  df %>%
    filter(if_all(all_of(group_cols), ~ !is.na(.x))) %>%
    group_by(across(all_of(group_cols))) %>%
    summarise(
      n_distinct_categories = n_distinct(.data[[category_col]], na.rm = TRUE),
      categories = paste(unique(.data[[category_col]]), collapse = " | "),
      .groups = "drop"
    ) %>%
    filter(n_distinct_categories > 1)
}

# -----------------------------------------------------------------------
# 6a. Invisible characters in a text field (default: non-breaking space)
# -----------------------------------------------------------------------
check_invisible_characters <- function(df, id_col, text_col, pattern = "\u00A0") {
  df %>%
    filter(str_detect(.data[[text_col]], pattern)) %>%
    mutate(flagged = str_replace_all(.data[[text_col]], pattern, "{invisible_char}")) %>%
    select(all_of(id_col), flagged)
}

# -----------------------------------------------------------------------
# 6b. Repeated punctuation in a text field (default: double period)
# -----------------------------------------------------------------------
check_repeated_punctuation <- function(df, id_col, text_col, pattern = "\\.\\.") {
  df %>%
    filter(str_detect(.data[[text_col]], pattern)) %>%
    select(all_of(c(id_col, text_col)))
}

# -----------------------------------------------------------------------
# 7. Composite category not reflected in its own classification field
#    (a name/label implies a sub-category - e.g. "subsp.", "var." - but the
#    field meant to record that sub-category doesn't say so)
# -----------------------------------------------------------------------
check_subcategory_mismatch <- function(df, id_col, text_col, category_col,
                                        keyword_patterns, valid_categories) {
  df %>%
    filter(str_detect(.data[[text_col]], paste(keyword_patterns, collapse = "|"))) %>%
    filter(!.data[[category_col]] %in% valid_categories) %>%
    select(all_of(c(id_col, text_col, category_col)))
}

# -----------------------------------------------------------------------
# 8. Master function: runs whichever checks are supplied
#
#    `checks` is a named list; each element is itself a list with `fn` (the
#    check function to call) and `args` (its arguments, excluding `df`).
#    This keeps audit_dataset() dataset-agnostic: it doesn't assume which
#    checks apply or which column names they use.
#
#    Example:
#
#      checks <- list(
#        duplicate_ids   = list(fn = check_duplicate_ids,
#                                args = list(id_col = "record_id")),
#        out_of_range    = list(fn = check_numeric_range,
#                                args = list(id_col = "record_id",
#                                            value_col = "elevation_m",
#                                            min_val = -430, max_val = 8849))
#      )
#      audit_dataset(my_dataset, checks)
# -----------------------------------------------------------------------
audit_dataset <- function(df, checks) {
  lapply(checks, function(check) {
    do.call(check$fn, c(list(df = df), check$args))
  })
}

# =============================================================================
# Example usage (commented out; does not run on source())
# =============================================================================
# my_dataset <- readr::read_csv("data/raw/my_dataset.csv")
#
# checks <- list(
#   duplicate_ids     = list(fn = check_duplicate_ids,
#                             args = list(id_col = "record_id")),
#   date_consistency  = list(fn = check_field_consistency,
#                             args = list(id_col = "record_id",
#                                         field_a = "event_date",
#                                         field_b = "year",
#                                         extract_fn = function(x) as.integer(str_extract(x, "^\\d{4}")))),
#   missing_location  = list(fn = check_missing_key_fields,
#                             args = list(id_col = "record_id",
#                                         cols = c("country", "state_province", "latitude", "longitude"))),
#   elevation_range   = list(fn = check_numeric_range,
#                             args = list(id_col = "record_id", value_col = "elevation_m",
#                                         min_val = -430, max_val = 8849)),
#   region_disagreement = list(fn = check_group_inconsistency,
#                             args = list(group_cols = c("latitude", "longitude"),
#                                         category_col = "state_province")),
#   invisible_chars   = list(fn = check_invisible_characters,
#                             args = list(id_col = "record_id", text_col = "scientific_name")),
#   repeated_punct    = list(fn = check_repeated_punctuation,
#                             args = list(id_col = "record_id", text_col = "scientific_name")),
#   subcategory_mismatch = list(fn = check_subcategory_mismatch,
#                             args = list(id_col = "record_id", text_col = "scientific_name",
#                                         category_col = "taxon_rank",
#                                         keyword_patterns = c("subsp\\.", " var\\.", " f\\."),
#                                         valid_categories = c("subspecies", "variety", "form")))
# )
#
# result <- audit_dataset(my_dataset, checks)
# result
