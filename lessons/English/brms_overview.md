# brms: Bayesian Regression Models using Stan — Overview for Ecological Research

## What brms does

brms (by Paul-Christian Bürkner) is a front end to Stan. You write models in familiar `lme4`-style formula syntax, and brms translates them into Stan code, compiles it, and samples the posterior with Hamiltonian Monte Carlo (NUTS). You get full Bayesian inference without writing Stan by hand, and you can still inspect or modify the generated code (`stancode()`).

Its strength is breadth. One interface covers:

- **Many response distributions**: Gaussian, Poisson, negative binomial, binomial, beta, zero-inflated and hurdle families, zero-one-inflated beta, ordinal (cumulative, sratio), categorical, Weibull and other survival families, von Mises, and more. You can also define custom families.
- **Hierarchical structure**: random intercepts and slopes, crossed and nested effects, and correlated random effects across sub-models using the `|ID|` syntax.
- **Distributional regression**: you can model not just the mean but also the dispersion, zero-inflation probability, or shape as functions of predictors, e.g. `bf(y ~ x, phi ~ x)`.
- **Special terms**: splines and GAM-type smooths (`s()`, `t2()`), Gaussian processes (`gp()`), autocorrelation (`ar()`, `car()` for spatial), measurement error (`me()`, `mi()` for missing data), and non-linear formulas.
- **Phylogenetic and other known covariance structures**, via `gr(species, cov = A)`.
- **Multivariate models**: several responses fitted jointly with `mvbf()` or `bf() + bf()`. This makes Bayesian path analysis / piecewise SEM possible.
- **Model checking and comparison**: `pp_check()`, LOO-CV (`loo()`, `loo_compare()`), Bayes factors via bridge sampling, `hypothesis()` for testing custom contrasts, and good integration with `tidybayes`, `emmeans`, `marginaleffects`, and `bayesplot`.

## Applications in plant–animal interaction ecology

- **Interaction frequencies**, such as flower visits by *Sephanoides* or fruit removal by *Dromiciops*: counts are usually overdispersed and full of zeros. `zero_inflated_negbinomial()` or `hurdle_negbinomial()` families handle this, with plant, site, or camera as random effects. You can also let the zero-inflation part depend on its own predictors.
- **Proportions**, such as fruit set, seed germination, or florivory as proportion of area damaged: use `binomial()` with `trials()`, or `zero_one_inflated_beta()` when you have exact 0s and 1s.
- **Comparative trait analyses** across mistletoe species or host plants: phylogenetic mixed models with a phylogenetic covariance matrix, optionally multivariate across several floral traits.
- **SEM-style causal models**, such as florivory → floral traits → visitation → reproductive success: fit each path as a sub-model within one multivariate brms model. That gives you full uncertainty propagation and indirect effects computed directly from the posterior draws.
- **Temporal and spatial dynamics**, such as seasonal abundance, camera-trap activity by temperature, or warming-experiment responses: smooths (`s(day_of_year, bs = "cc")` for cyclic seasonality), `ar()` terms, or `gp()` over coordinates.
- **Small or unbalanced field datasets**: weakly informative priors stabilize estimates where frequentist GLMMs fail to converge or give singular fits. That is often the practical selling point with reviewers.
- **Ordinal data**, such as damage classes or phenological stages: `cumulative("logit")` is much better than treating those scores as continuous.

## Minimal example

```r
library(brms)

# Hummingbird visits per flower, overdispersed with excess zeros
fit <- brm(
  bf(visits ~ temperature + treatment + offset(log(obs_time)) + (1 | plant_id),
     zi ~ treatment),                      # zero-inflation also modeled
  family = zero_inflated_negbinomial(),
  data   = visits_df,
  prior  = c(prior(normal(0, 1), class = "b"),
             prior(exponential(1), class = "sd")),
  chains = 4, cores = 4, iter = 4000,
  backend = "cmdstanr"                     # faster than rstan
)

summary(fit)
pp_check(fit, type = "rootogram")          # posterior predictive check for counts
conditional_effects(fit, "temperature")
hypothesis(fit, "treatmentwarming > 0")    # posterior probability of an effect
```

## Practical tips

- Use the `cmdstanr` backend; it's faster and more up to date than `rstan`.
- Always run prior predictive checks with `sample_prior = "only"`.
- Check R-hat (< 1.01), effective sample size (ESS), and divergent transitions.
- Report posterior medians with 95% credible intervals, plus probabilities of direction where useful.
- Complex models with many random effects can take minutes to hours. `within_chain` threading or `brm_multiple()` for imputed datasets can help.

## Key references

- Bürkner, P.-C. (2017). brms: An R package for Bayesian multilevel models using Stan. *Journal of Statistical Software*, 80(1), 1–28.
- Bürkner, P.-C. (2018). Advanced Bayesian multilevel modeling with the R package brms. *The R Journal*, 10(1), 395–411.
- McElreath, R. *Statistical Rethinking* (conceptual foundation), and Solomon Kurz's free brms translation of it.
