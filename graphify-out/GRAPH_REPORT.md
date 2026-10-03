# Graph Report - R_caffe  (2026-10-02)

## Corpus Check
- 5 files · ~424,618 words
- Verdict: corpus is large enough that graph structure adds value.

## Summary
- 343 nodes · 434 edges · 32 communities (21 shown, 11 thin omitted)
- Extraction: 88% EXTRACTED · 12% INFERRED · 0% AMBIGUOUS · INFERRED: 52 edges (avg confidence: 0.83)
- Token cost: 68,410 input · 0 output

## Community Hubs (Navigation)
- Bayesian Modelling with brms
- ANCOVA & Repeated Measures
- Data Best Practices & Audit
- GLM / Zero-Inflated / GEE
- ggplot2 Plotting
- Model Averaging & Selection
- Simple Hypothesis Tests
- brms Overview & Extensions
- Spanish Data Audit Functions
- Biodiversity Indices
- Time Series & ARIMA
- Regression & Correlation
- Spatial GLM & Autocorrelation
- ANOVA Designs (CRD/RBD)
- Factorial & Nested ANOVA
- ANOSIM / SIMPER / mvabund
- R Objects & Basic Plots
- Meta-Analysis & Probability Hub
- Circular Statistics
- Caffe2025 Poster Art
- Caffe Espresso Logo
- Lesson-20 Activity Datasets
- CC BY-SA License
- ANCOVA/Repeated Datasets
- MANOVA Heavy-Metals Data
- Threat/Biodiversity Data
- Bird Datasets
- Plot Aesthetics
- Plot Geometries
- Palm Age-Structure Data
- Cactus Populations Data
- Infestation Data

## God Nodes (most connected - your core abstractions)
1. `Lesson 22 - Bayesian statistics with brms` - 38 edges
2. `Best Practices for Managing and Analyzing Biological Data` - 27 edges
3. `Lesson 10: Model Averaging and Regression Trees` - 21 edges
4. `brms overview for ecological research` - 19 edges
5. `Buenas prácticas de gestión y análisis de datos biológicos` - 17 edges
6. `Lesson 14: Generalized Linear Mixed-Effects Models` - 15 edges
7. `brms (Bayesian Regression Models using Stan)` - 14 edges
8. `Lesson 03: Simple Hypothesis Tests in R` - 13 edges
9. `audit_dataset()` - 13 edges
10. `Lesson 06: ANOVA Designs Part 3 (Repeated Measures & ANCOVA)` - 12 edges

## Surprising Connections (you probably didn't know these)
- `Weakly informative priors for small/unbalanced field data` --semantically_similar_to--> `Weakly informative priors`  [INFERRED] [semantically similar]
  lessons/English/brms_overview.md → 22-bayesian_brms.html
- `Practical tips (R-hat < 1.01, ESS, prior predictive checks)` --semantically_similar_to--> `Convergence diagnostics (R-hat, ESS, divergences)`  [INFERRED] [semantically similar]
  lessons/English/brms_overview.md → 22-bayesian_brms.html
- `brms (Bayesian Regression Models using Stan)` --semantically_similar_to--> `brms package`  [INFERRED] [semantically similar]
  lessons/English/brms_overview.md → 22-bayesian_brms.html
- `cmdstanr backend` --semantically_similar_to--> `Stan / rstan / cmdstanr backend`  [INFERRED] [semantically similar]
  lessons/English/brms_overview.md → 22-bayesian_brms.html
- `Zero-inflated / hurdle negative binomial families` --semantically_similar_to--> `Zero-inflated negative binomial family`  [INFERRED] [semantically similar]
  lessons/English/brms_overview.md → 22-bayesian_brms.html

## Import Cycles
- None detected.

## Hyperedges (group relationships)
- **ANOVA Design Family** — 03_simple_hyp_test_anova, 04_anova_des_p1_crd, 04_anova_des_p1_rbd, 05_anova_des_p2_factorial, 06_anova_des_p3_repeated_measures, 06_anova_des_p3_ancova [INFERRED 0.85]
- **GLM Extensions** — 11_glm_glm, 12_zi_gee_gee, 13_gam_gam, 14_glmm_glmm, 15_spatexpglm_spatial_glm [INFERRED 0.85]
- **Multivariate Community Analysis** — 16_anosim_simper_mvabund_anosim, 16_anosim_simper_mvabund_simper, 17_pca_nmds_pca, 17_pca_nmds_nmds, 18_biodiversity_diversity [INFERRED 0.75]
- **Lesson 20 Activity Pattern Datasets** — data_20_act_x_dataset, data_20_act_y_dataset, data_20_activity_dataset, data_20_records_hour_dataset [INFERRED 0.85]
- **Bayesian workflow steps in brms lesson** — 22_bayesian_brms_prior_predictive_check, 22_bayesian_brms_convergence_diagnostics, 22_bayesian_brms_posterior_predictive_check, 22_bayesian_brms_credible_interval, 22_bayesian_brms_loo_cv [EXTRACTED 1.00]
- **Dataset audit function suite (EN)** — lessons_english_best_practices_audit_dataset, lessons_english_best_practices_check_duplicates, lessons_english_best_practices_check_dates, lessons_english_best_practices_check_no_geography, lessons_english_best_practices_check_elevation, lessons_english_best_practices_check_geo_disagreement, lessons_english_best_practices_check_nbsp, lessons_english_best_practices_check_double_period, lessons_english_best_practices_check_taxonrank_infra [EXTRACTED 1.00]
- **Suite de funciones de auditoría (ES)** — lessons_spanish_buenas_practicas_auditar_dataset, lessons_spanish_buenas_practicas_check_duplicados, lessons_spanish_buenas_practicas_check_fechas, lessons_spanish_buenas_practicas_check_sin_geografia, lessons_spanish_buenas_practicas_check_elevacion, lessons_spanish_buenas_practicas_check_geo_disagreement, lessons_spanish_buenas_practicas_check_nbsp, lessons_spanish_buenas_practicas_check_doble_punto, lessons_spanish_buenas_practicas_check_taxonrank_infra [EXTRACTED 1.00]

## Communities (32 total, 11 thin omitted)

### Community 0 - "Bayesian Modelling with brms"
Cohesion: 0.12
Nodes (31): Bayes' theorem (posterior ∝ likelihood × prior), Bayesian meta-analysis (se() term), brm(), Bürkner (2017) brms, J. Stat. Software, Convergence diagnostics (R-hat, ESS, divergences), 95% credible interval / probability of direction, Example 1: negative binomial model of marsupial visits, Example 2: seed removal binomial / beta-binomial model (+23 more)

### Community 1 - "ANCOVA & Repeated Measures"
Cohesion: 0.07
Nodes (20): R package: car, R package: dplyr, R package: emmeans, R package: ez, R package: ggplot2, Lesson 06: ANOVA Designs Part 3 (Repeated Measures & ANCOVA), R package: lme4, R package: nlme (+12 more)

### Community 2 - "Data Best Practices & Audit"
Cohesion: 0.12
Nodes (22): audit_dataset(), Character encoding (UTF-8) in R code, check_dates(), check_double_period(), check_duplicates(), check_elevation(), check_geo_disagreement(), check_nbsp() (+14 more)

### Community 3 - "GLM / Zero-Inflated / GEE"
Cohesion: 0.09
Nodes (11): R package: AER, Lesson 11: Generalized Linear Models and Data Distributions, R package: lme4, R package: MASS, R package: AER, Lesson 12: Zero-Inflated Models and GEE, R package: ggeffects, R package: ggplot2 (+3 more)

### Community 4 - "ggplot2 Plotting"
Cohesion: 0.10
Nodes (17): R package: dplyr, R package: gapminder, R package: ggplot2, R package: ggsci, R package: ggthemes, Lesson 02: Making Plots in R (ggplot2), R package: scales, R package: tidyr (+9 more)

### Community 5 - "Model Averaging & Selection"
Cohesion: 0.10
Nodes (16): R package: corrplot, R package: GGally, R package: ggplot2, R package: ggpubr, R package: gt, Lesson 10: Model Averaging and Regression Trees, R package: lme4, R package: lmerTest (+8 more)

### Community 6 - "Simple Hypothesis Tests"
Cohesion: 0.12
Nodes (5): Lesson 03: Simple Hypothesis Tests in R, R package: vcd, Lesson 07: MANOVA, R package: MVN, R package: vegan

### Community 7 - "brms Overview & Extensions"
Cohesion: 0.20
Nodes (17): McElreath (2020) Statistical Rethinking, brms (Bayesian Regression Models using Stan), Bürkner (2018) Advanced Bayesian multilevel modeling, R Journal, cmdstanr backend, Distributional regression (bf(y ~ x, phi ~ x)), brms overview for ecological research, hypothesis(), LOO, Bayes factors, tidybayes, emmeans, marginaleffects (+9 more)

### Community 8 - "Spanish Data Audit Functions"
Cohesion: 0.24
Nodes (11): auditar_dataset(), check_doble_punto(), check_duplicados(), check_elevacion(), check_fechas(), check_geo_disagreement(), check_nbsp(), check_sin_geografia() (+3 more)

### Community 9 - "Biodiversity Indices"
Cohesion: 0.15
Nodes (8): R package: BiodiversityR, R package: dplyr, R package: ggplot2, R package: ggpubr, R package: ggsci, Lesson 18: Biodiversity Analysis, R package: Rarefy, R package: vegan

### Community 10 - "Time Series & ARIMA"
Cohesion: 0.17
Nodes (7): R package: astsa, R package: dplyr, R package: forecast, R package: ggplot2, Lesson 19: Time Series Analysis, R package: tidyr, R package: tseries

### Community 11 - "Regression & Correlation"
Cohesion: 0.17
Nodes (7): R package: confintr, Lesson 08: Linear Regression and Correlation, R package: confintr, R package: dplyr, R package: ggplot2, R package: gridExtra, Lesson 09: Multiple Linear Regression

### Community 12 - "Spatial GLM & Autocorrelation"
Cohesion: 0.18
Nodes (9): R package: ggplot2, R package: gstat, Lesson 15: Spatially-Explicit GLM/GAM, R package: mgcv, R package: mpmcorrelogram, R package: ncf, R package: nortest, R package: spatstat (+1 more)

### Community 13 - "ANOVA Designs (CRD/RBD)"
Cohesion: 0.22
Nodes (6): R package: car, R package: dplyr, R package: emmeans, R package: ggplot2, Lesson 04: ANOVA Designs Part 1 (CRD & RBD), R package: tidyr

### Community 14 - "Factorial & Nested ANOVA"
Cohesion: 0.22
Nodes (4): R package: car, R package: dplyr, R package: ggplot2, Lesson 05: ANOVA Designs Part 2 (Nested & Factorial)

### Community 15 - "ANOSIM / SIMPER / mvabund"
Cohesion: 0.28
Nodes (6): R package: corrplot, R package: dplyr, R package: ggplot2, Lesson 16: ANOSIM, SIMPER and mvabund, R package: tidyr, R package: vegan

### Community 17 - "Meta-Analysis & Probability Hub"
Cohesion: 0.32
Nodes (8): Meta-analysis Effect Size (Hedges' d), Lesson 21 - Meta-analysis, Meta-analysis Crop Damage Dataset (Xe, Se, Ne, Xc, Sc, Nc, hedges_d, var), Shared HTML Footer, Probability Distributions (binomial, Poisson), Probability Theory, Distributions and Summary Statistics (English), Teoria de Probabilidad, Distribuciones y Estadigrafos (Spanish), R caffe Course README / Index

### Community 19 - "Caffe2025 Poster Art"
Cohesion: 0.53
Nodes (5): White Coffee Cup and Saucer, Coffee Splash Droplet, Matrix-Style Digital Code Rain, R Caffe 2025 Promotional Image, R Caffe Course Branding

### Community 20 - "Caffe Espresso Logo"
Cohesion: 0.50
Nodes (5): Coffee Crema, White Espresso Cup and Saucer, R Caffe Espresso Cup Image, Splashing Coffee Droplet, R Caffe Coffee Theme

### Community 21 - "Lesson-20 Activity Datasets"
Cohesion: 0.50
Nodes (4): Activity Dataset X (Condition, Video, Date, Photo.Time), Activity Dataset Y (Condition, Video, Date, Time), Activity Patterns Dataset (Condition, Video, Date, Photo.Time), Records per Hour Dataset (value, A, B)

### Community 22 - "CC BY-SA License"
Cohesion: 0.50
Nodes (4): License Badge Image, Creative Commons Attribution-ShareAlike (CC BY-SA), Attribution (BY) Term, ShareAlike (SA) Term

## Ambiguous Edges - Review These
- `R caffe Course README / Index` → `Best Practices for Managing and Analyzing Biological Data`  [AMBIGUOUS]
  README.md · relation: references

## Knowledge Gaps
- **124 isolated node(s):** `Aesthetic Mappings`, `Geometries`, `R package: dplyr`, `R package: tidyr`, `R package: vegan` (+119 more)
  These have ≤1 connection - possible missing edges or undocumented components. (Counts symbols only; 189 node(s) total have ≤1 connection when file, concept and rationale nodes are included.)
- **11 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **What is the exact relationship between `R caffe Course README / Index` and `Best Practices for Managing and Analyzing Biological Data`?**
  _Edge tagged AMBIGUOUS (relation: references) - confidence is low._
- **Why does `Lesson 22 - Bayesian statistics with brms` connect `Bayesian Modelling with brms` to `Meta-Analysis & Probability Hub`, `brms Overview & Extensions`?**
  _High betweenness centrality (0.237) - this node is a cross-community bridge._
- **Why does `Generalized Linear Model (GLM)` connect `GLM / Zero-Inflated / GEE` to `ANCOVA & Repeated Measures`, `Regression & Correlation`, `ANOSIM / SIMPER / mvabund`?**
  _High betweenness centrality (0.152) - this node is a cross-community bridge._
- **Why does `R caffe Course README / Index` connect `Meta-Analysis & Probability Hub` to `Bayesian Modelling with brms`, `Spanish Data Audit Functions`, `Data Best Practices & Audit`?**
  _High betweenness centrality (0.135) - this node is a cross-community bridge._
- **Are the 2 inferred relationships involving `Lesson 22 - Bayesian statistics with brms` (e.g. with `brms overview for ecological research` and `Special terms: s(), t2(), gp(), ar(), car(), me(), mi()`) actually correct?**
  _`Lesson 22 - Bayesian statistics with brms` has 2 INFERRED edges - model-reasoned connections that need verification._
- **Are the 2 inferred relationships involving `Buenas prácticas de gestión y análisis de datos biológicos` (e.g. with `Best Practices for Managing and Analyzing Biological Data` and `R caffe Course README / Index`) actually correct?**
  _`Buenas prácticas de gestión y análisis de datos biológicos` has 2 INFERRED edges - model-reasoned connections that need verification._
- **What connects `Aesthetic Mappings`, `Geometries`, `R package: dplyr` to the rest of the system?**
  _124 weakly-connected nodes found - possible documentation gaps or missing edges._