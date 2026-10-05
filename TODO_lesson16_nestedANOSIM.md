# TODO: add nestedANOSIM to lesson 16 (ANOSIM, SIMPER, mvabund)

Plan for updating `16-anosim_simper_mvabund.Rmd` with the **nestedANOSIM** package
(<https://github.com/fonturbel/nestedANOSIM>, v0.0-3). Numbers below were checked in a
scratch R session on 2026-10-05 using `data/16_bird_data.txt`. Nothing was knitted.

---

## 0. Before you start

1. **Install the package.** It is not installed in your library yet:

   ```r
   remotes::install_github("fonturbel/nestedANOSIM", build_vignettes = TRUE)
   vignette("mistletoe-visitors", package = "nestedANOSIM")   # worked example
   ```

2. **Confirm the sampling design in Fontúrbel et al. 2020.** In `16_bird_data.txt` the
   habitat sequence of rows 1-12 (Point) repeats exactly in rows 13-24 (Camera1) and
   25-36 (Camera2). That suggests the **same 12 sites were sampled with all three
   methods**. Check the methods section of the paper:
   - **Same sites (paired):** use `strata = site` in steps 2 and 4 below.
   - **Different sites (independent):** drop `strata` everywhere.

3. **Design for the students:** Habitat (4 levels) x Sampling method (3 levels),
   3 replicates per cell, fully **crossed** (not nested). The package's `nested`
   argument just means "the second factor, tested within each level of the main
   factor". It works for crossed designs too.

---

## 1. Load the package (setup chunk, ~line 36)

Add to the `library()` block:

```r
library(nestedANOSIM)  # Two-way ANOSIM, SIMPER and ggplot2 graphics
```

---

## 2. New section after "ANOSIM: Testing Sampling Method Effects" (~line 192)

Suggested heading: `### Two-way ANOSIM: habitat within each sampling method`

Short text idea: the two one-way ANOSIMs above ignore each other. Because sampling
method has a strong effect, it could hide a habitat effect. A two-way ANOSIM tests
sampling method, then habitat *within* each method separately.

```{r anosim_twoway}
# Site ID: the same 12 sites sampled with each method (CONFIRM in the paper)
site <- paste0("S", rep(1:12, 3))

birds2 <- nested_anosim(comm   = birds,
                        main   = data$Sample,     # main factor
                        nested = data$Habitat,    # tested within each method
                        strata = site,            # paired design: permute within sites
                        permutations = 9999,
                        p_adjust = "holm",        # 3 within-method tests
                        seed = 123)
```

**Expected output** (with `strata = site`; same values without it):

| Test | R | p | p (Holm) |
|---|---|---|---|
| Overall (method x habitat) | 0.173 | 0.016 | |
| Sampling method | 0.271 | 0.0001 | |
| Habitat within Camera1 | 0.005 | 0.45 | 0.90 |
| Habitat within Camera2 | -0.191 | 0.93 | 0.93 |
| Habitat within Point | 0.131 | 0.16 | 0.47 |

Teaching points:
- Habitat has no effect even after accounting for sampling method. This agrees
  with the one-way result but is a stronger argument.
- A **negative R** (Camera2) means dissimilarities within habitats are larger than
  between them. Worth showing because students rarely see one.
- With only 3 samples per habitat per method, power is low. Non-significant does
  not mean "no difference".
- Why `strata`: if a site is sampled by all three methods, its three samples are
  not independent. Permuting method labels only within each site respects that.
  Here it does not change the method test (R = 0.271, p = 0.0001 either way).

Optionally show the reversed design (main = Habitat, nested = Sample). Habitat:
R = 0.035, p = 0.18. Method within habitat: the largest is Logged, R = 0.44,
p = 0.053 (Holm 0.21). Point out that the question decides which factor is "main".

---

## 3. Replace the base plots with ggplot2 boxplots (optional)

The existing `plot(forestbirds)` / `plot(sampbirds)` can stay. To add the two-way results:

```{r anosim_twoway_plots, fig.height=4.5, fig.width=6}
plot_anosim_box(birds2, which = "main", xlab = "Sampling method")
plot_anosim_box(birds2, which = "Point", xlab = "Habitat")
```

`which` takes `"overall"`, `"main"`, or a main-factor level (`"Camera1"`, `"Camera2"`,
`"Point"`). It also accepts a plain `anosim` object: `plot_anosim_box(sampbirds)`.

---

## 4. SIMPER section (~line 241): add the two-way version

The current chunk uses `summary(simper(...))` and an `if ("Camera1_Point" %in% ...)`
lookup. The tidy version is easier for students:

```{r simper_twoway}
simbirds2 <- nested_simper(comm   = birds,
                           main   = data$Sample,
                           nested = data$Habitat,
                           strata = site,          # drop if sites are independent
                           permutations = 999,
                           cutoff = 0.7,           # taxa up to 70% of dissimilarity
                           seed = 123)

simbirds2$main     # tidy table: comparison, species, pct, cum_pct, mean_a, mean_b, p
```

**Expected output (main factor, with `strata = site`):**

| Comparison | Top species | % of dissimilarity | p |
|---|---|---|---|
| Point vs Camera1 | COLIBRI | 38.4 | 0.001 |
| | FIOFIO | 11.9 | 0.013 |
| | CHUCAO | 11.5 | 0.197 |
| Point vs Camera2 | COLIBRI | 34.8 | 0.010 |
| | CHUCAO | 12.6 | 0.013 |
| Camera1 vs Camera2 | COLIBRI | 21.6 | 0.998 |

Teaching points:
- COLIBRI (hummingbird) alone explains about 35-38% of the Point vs camera
  difference. Point counts and cameras detect it very differently.
- Camera1 vs Camera2: nothing significant, so the two cameras agree.
- Pairing matters for SIMPER p-values: FIOFIO (Point vs Camera1) goes from
  p = 0.038 unpaired to 0.013 paired. The ANOSIM did not change.
- Caveat to mention: SIMPER contributions favour abundant, variable species
  (Warton et al. 2012, *Methods Ecol Evol* 3: 89-101). This connects nicely to the
  mvabund section that follows.

---

## 5. Re-enable the ordination (optional, ~line 194)

The chunk `anosim_ordination` is currently `eval=FALSE` ("temporarily disabled").
`plot_nmds_hulls()` could replace it:

```{r nmds_twoway, fig.height=5, fig.width=7}
ord <- plot_nmds_hulls(birds2, groups = data$Sample, seed = 1)
ord$plot
ord$stress
```

Not tested on this dataset. Check that stress is acceptable (< 0.2) when you knit.

---

## 6. Small fixes in the existing chunks (independent of nestedANOSIM)

- `anosim(birdist, ..., distance = "bray")`: `distance` is **ignored** when the first
  argument is already a `dist` object (`birdist` is already Bray-Curtis). Remove
  `distance = "bray"` from `anosim1` and `anosim2` to avoid suggesting otherwise.
- `attach(data)` (line ~48) is not needed: all later code uses `data$...`.
  Consider removing it, since `attach()` is a common source of student bugs.

---

## 7. Final steps

- [ ] Confirm site pairing in the 2020 paper (step 0.2); keep or drop `strata`.
- [ ] Add the chunks from steps 1, 2 and 4 (3 and 5 are optional).
- [ ] Check the inline text matches the numbers when knitted.
- [ ] Knit `16-anosim_simper_mvabund.Rmd` in RStudio.
- [ ] Commit the Rmd and HTML, then delete this TODO file.
