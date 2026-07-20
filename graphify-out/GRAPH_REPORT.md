# Graph Report - .  (2026-07-20)

## Corpus Check
- 45 files · ~393,109 words
- Verdict: corpus is large enough that graph structure adds value.

## Summary
- 248 nodes · 242 edges · 31 communities (22 shown, 9 thin omitted)
- Extraction: 87% EXTRACTED · 13% INFERRED · 0% AMBIGUOUS · INFERRED: 31 edges (avg confidence: 0.8)
- Token cost: 140,201 input · 0 output

## Community Hubs (Navigation)
- Model Averaging & Selection
- Simple Hypothesis Tests & MANOVA
- GLM / Zero-Inflated / GEE
- ANCOVA & Repeated Measures
- GLMM Mixed Models
- Biodiversity Indices
- Time Series & ARIMA
- Regression & Correlation
- PCA & nMDS Ordination
- Spatial GLM & Autocorrelation
- ggplot2 Plotting
- ANOVA Designs (CRD/RBD)
- Factorial & Nested ANOVA
- ANOSIM / SIMPER / mvabund
- Meta-Analysis & Probability Hub
- R Objects & Basic Plots
- Circular Statistics
- GAM Smoothing
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
- Palms Dataset
- Cactus Dataset
- Infestation Dataset

## God Nodes (most connected - your core abstractions)
1. `Lesson 10: Model Averaging and Regression Trees` - 20 edges
2. `Lesson 14: Generalized Linear Mixed-Effects Models` - 14 edges
3. `Lesson 03: Simple Hypothesis Tests in R` - 13 edges
4. `Lesson 06: ANOVA Designs Part 3 (Repeated Measures & ANCOVA)` - 12 edges
5. `Lesson 18: Biodiversity Analysis` - 12 edges
6. `Lesson 19: Time Series Analysis` - 12 edges
7. `Lesson 15: Spatially-Explicit GLM/GAM` - 11 edges
8. `Lesson 02: Making Plots in R (ggplot2)` - 10 edges
9. `Lesson 04: ANOVA Designs Part 1 (CRD & RBD)` - 9 edges
10. `Lesson 17: PCA and nMDS` - 9 edges

## Surprising Connections (you probably didn't know these)
- `Generalized Linear Model (GLM)` --conceptually_related_to--> `Linear Regression`  [INFERRED]
  11-glm.html → 08-reg_correl.html
- `Generalized Estimating Equations (GEE)` --conceptually_related_to--> `Generalized Linear Model (GLM)`  [INFERRED]
  12-zi_gee.html → 11-glm.html
- `mvabund` --conceptually_related_to--> `Generalized Linear Model (GLM)`  [INFERRED]
  16-anosim_simper_mvabund.html → 11-glm.html
- `Non-metric Multidimensional Scaling (nMDS)` --shares_data_with--> `nMDS Plot`  [INFERRED]
  17-pca_nmds.html → 02-plots.html
- `MANOVA` --conceptually_related_to--> `One-way ANOVA`  [INFERRED]
  07-MANOVA.html → 03-simple_hyp_test.html

## Import Cycles
- None detected.

## Hyperedges (group relationships)
- **ANOVA Design Family** — 03_simple_hyp_test_anova, 04_anova_des_p1_crd, 04_anova_des_p1_rbd, 05_anova_des_p2_factorial, 06_anova_des_p3_repeated_measures, 06_anova_des_p3_ancova [INFERRED 0.85]
- **GLM Extensions** — 11_glm_glm, 12_zi_gee_gee, 13_gam_gam, 14_glmm_glmm, 15_spatexpglm_spatial_glm [INFERRED 0.85]
- **Multivariate Community Analysis** — 16_anosim_simper_mvabund_anosim, 16_anosim_simper_mvabund_simper, 17_pca_nmds_pca, 17_pca_nmds_nmds, 18_biodiversity_diversity [INFERRED 0.75]
- **Lesson 20 Activity Pattern Datasets** — data_20_act_x_dataset, data_20_act_y_dataset, data_20_activity_dataset, data_20_records_hour_dataset [INFERRED 0.85]

## Communities (31 total, 9 thin omitted)

### Community 0 - "Model Averaging & Selection"
Cohesion: 0.10
Nodes (21): Akaike Information Criterion (AIC), R package: corrplot, R package: GGally, R package: ggplot2, R package: ggpubr, R package: gt, Lesson 10: Model Averaging and Regression Trees, R package: lme4 (+13 more)

### Community 1 - "Simple Hypothesis Tests & MANOVA"
Cohesion: 0.12
Nodes (13): One-way ANOVA, Chi-square Test, Fisher Exact Test, Kruskal-Wallis Test, Lesson 03: Simple Hypothesis Tests in R, t-test, R package: vcd, Wilcoxon / Mann-Whitney Test (+5 more)

### Community 2 - "GLM / Zero-Inflated / GEE"
Cohesion: 0.12
Nodes (15): R package: AER, Data Distributions in Ecology, Generalized Linear Model (GLM), Lesson 11: Generalized Linear Models and Data Distributions, R package: lme4, R package: MASS, Negative Binomial GLM, R package: AER (+7 more)

### Community 3 - "ANCOVA & Repeated Measures"
Cohesion: 0.14
Nodes (13): ANCOVA, R package: car, R package: dplyr, R package: emmeans, R package: ez, R package: ggplot2, Lesson 06: ANOVA Designs Part 3 (Repeated Measures & ANCOVA), R package: lme4 (+5 more)

### Community 4 - "GLMM Mixed Models"
Cohesion: 0.14
Nodes (12): R package: GGally, R package: ggplot2, R package: ggpubr, Lesson 14: Generalized Linear Mixed-Effects Models, R package: lme4, R package: lmerTest, R package: MASS, R package: mgcv (+4 more)

### Community 5 - "Biodiversity Indices"
Cohesion: 0.15
Nodes (13): R package: BiodiversityR, Species Diversity Indices, R package: dplyr, Evenness, R package: ggplot2, R package: ggpubr, R package: ggsci, Lesson 18: Biodiversity Analysis (+5 more)

### Community 6 - "Time Series & ARIMA"
Cohesion: 0.17
Nodes (13): Autocorrelation Function (ACF/PACF), ARIMA Models, R package: astsa, Cross-correlation Function, Time Series Decomposition, R package: dplyr, R package: forecast, Forecasting (+5 more)

### Community 7 - "Regression & Correlation"
Cohesion: 0.17
Nodes (11): R package: confintr, Correlation, Lesson 08: Linear Regression and Correlation, Linear Regression, R package: confintr, R package: dplyr, R package: ggplot2, R package: gridExtra (+3 more)

### Community 8 - "PCA & nMDS Ordination"
Cohesion: 0.20
Nodes (11): nMDS Plot, R package: ade4, R package: dplyr, R package: ecodist, R package: ggplot2, R package: ggpubr, R package: ggsci, Lesson 17: PCA and nMDS (+3 more)

### Community 9 - "Spatial GLM & Autocorrelation"
Cohesion: 0.18
Nodes (11): Spatial Autocovariate Approach, R package: ggplot2, R package: gstat, Lesson 15: Spatially-Explicit GLM/GAM, R package: mgcv, R package: mpmcorrelogram, R package: ncf, R package: nortest (+3 more)

### Community 10 - "ggplot2 Plotting"
Cohesion: 0.22
Nodes (10): R package: dplyr, R package: gapminder, R package: ggplot2, Grammar of Graphics, R package: ggsci, R package: ggthemes, Lesson 02: Making Plots in R (ggplot2), R package: scales (+2 more)

### Community 11 - "ANOVA Designs (CRD/RBD)"
Cohesion: 0.22
Nodes (10): ANOVA Assumptions, R package: car, Completely Randomized Design, R package: dplyr, R package: emmeans, R package: ggplot2, Lesson 04: ANOVA Designs Part 1 (CRD & RBD), Post-hoc Analysis (+2 more)

### Community 12 - "Factorial & Nested ANOVA"
Cohesion: 0.22
Nodes (9): R package: car, R package: dplyr, Effect Sizes, Factorial ANOVA, R package: ggplot2, Interaction Effects, Lesson 05: ANOVA Designs Part 2 (Nested & Factorial), Nested ANOVA (+1 more)

### Community 13 - "ANOSIM / SIMPER / mvabund"
Cohesion: 0.28
Nodes (9): ANOSIM, R package: corrplot, R package: dplyr, R package: ggplot2, Lesson 16: ANOSIM, SIMPER and mvabund, mvabund, SIMPER, R package: tidyr (+1 more)

### Community 14 - "Meta-Analysis & Probability Hub"
Cohesion: 0.28
Nodes (9): Meta-analysis Effect Size (Hedges' d), Lesson 21 - Meta-analysis, Meta-analysis Crop Damage Dataset (Xe, Se, Ne, Xc, Sc, Nc, hedges_d, var), Shared HTML Footer, Probability Distributions (binomial, Poisson), Probability Theory, Distributions and Summary Statistics (English), Buenas practicas de gestion y analisis de datos biologicos, Teoria de Probabilidad, Distribuciones y Estadigrafos (Spanish) (+1 more)

### Community 15 - "R Objects & Basic Plots"
Cohesion: 0.25
Nodes (8): Barplot, Boxplot, Data Frame, Histogram, Lesson 01: Managing and Operating Objects in R, Scatterplot, Variable Transformation, Vector

### Community 16 - "Circular Statistics"
Cohesion: 0.29
Nodes (5): Circular Statistics, Lesson 20: Circular Statistics and Activity Patterns, Activity Overlap Coefficient (dhat5), Rayleigh Test, Rose Diagrams

### Community 17 - "GAM Smoothing"
Cohesion: 0.33
Nodes (5): R package: ggeffects, R package: ggplot2, R package: gratia, Lesson 13: Generalized Additive Models, R package: mgcv

### Community 18 - "Caffe2025 Poster Art"
Cohesion: 0.53
Nodes (6): White Coffee Cup and Saucer, Coffee Splash Droplet, Coffee-Meets-Data Visual Metaphor, Matrix-Style Digital Code Rain, R Caffe 2025 Promotional Image, R Caffe Course Branding

### Community 19 - "Caffe Espresso Logo"
Cohesion: 0.50
Nodes (5): Coffee Crema, White Espresso Cup and Saucer, R Caffe Espresso Cup Image, Splashing Coffee Droplet, R Caffe Coffee Theme

### Community 20 - "Lesson-20 Activity Datasets"
Cohesion: 0.50
Nodes (4): Activity Dataset X (Condition, Video, Date, Photo.Time), Activity Dataset Y (Condition, Video, Date, Time), Activity Patterns Dataset (Condition, Video, Date, Photo.Time), Records per Hour Dataset (value, A, B)

### Community 21 - "CC BY-SA License"
Cohesion: 0.50
Nodes (4): License Badge Image, Creative Commons Attribution-ShareAlike (CC BY-SA), Attribution (BY) Term, ShareAlike (SA) Term

## Knowledge Gaps
- **121 isolated node(s):** `Aesthetic Mappings`, `Geometries`, `R package: dplyr`, `R package: tidyr`, `R package: vegan` (+116 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **9 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `Generalized Linear Model (GLM)` connect `GLM / Zero-Inflated / GEE` to `ANCOVA & Repeated Measures`, `ANOSIM / SIMPER / mvabund`, `Regression & Correlation`?**
  _High betweenness centrality (0.091) - this node is a cross-community bridge._
- **Why does `Generalized Linear Mixed Model (GLMM)` connect `ANCOVA & Repeated Measures` to `GLM / Zero-Inflated / GEE`, `GLMM Mixed Models`?**
  _High betweenness centrality (0.057) - this node is a cross-community bridge._
- **Why does `Lesson 14: Generalized Linear Mixed-Effects Models` connect `GLMM Mixed Models` to `ANCOVA & Repeated Measures`?**
  _High betweenness centrality (0.033) - this node is a cross-community bridge._
- **What connects `Aesthetic Mappings`, `Geometries`, `R package: dplyr` to the rest of the system?**
  _121 weakly-connected nodes found - possible documentation gaps or missing edges._
- **Should `Model Averaging & Selection` be split into smaller, more focused modules?**
  _Cohesion score 0.09523809523809523 - nodes in this community are weakly interconnected._
- **Should `Simple Hypothesis Tests & MANOVA` be split into smaller, more focused modules?**
  _Cohesion score 0.11578947368421053 - nodes in this community are weakly interconnected._
- **Should `GLM / Zero-Inflated / GEE` be split into smaller, more focused modules?**
  _Cohesion score 0.12280701754385964 - nodes in this community are weakly interconnected._