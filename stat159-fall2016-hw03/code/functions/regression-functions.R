### This file contains codes that conduct parts of regresison analyses.

## RSS
rss <- function(lm_obj) {
  return(sum(resid(lm_obj)^2))
}

## TSS -> (R_squared = 1 - RSS/TSS)
#tss = rss / (1-r_squared)
tss <- function(lm_obj) {
  return(sum((lm_obj$model[,1] - mean(lm_obj$model[,1]))^2))
}

## RSE
#rse = sqrt(RSS/degrees of freedom)
rse <- function(lm_obj) {
  rss <- rss(lm_obj)
  n <- nrow(lm_obj$model)
  p <- ncol(lm_obj$model) - 1
  rse <- sqrt(rss/(n-p-1))
  return(rse)
}


## R2
#r_squared = (TSS - RSS)/RSS = 1 - RSS/TSS
r_squared <- function(lm_obj) {
  rss <- rss(lm_obj)
  tss <- tss(lm_obj)
  return(1 - rss/tss)
}

## Adjusted R2
#adj_r_sq = 1 - (RSS/(n-p-1))/(TSS/(n-1))
adj_r_sq <- function(lm_obj) {
  n <- nrow(lm_obj$model)
  rss <- rss(lm_obj)
  tss <- tss(lm_obj)
  p <- ncol(lm_obj$model) - 1
  return(1 - ((rss/(n-p-1))/(tss/(n-1))))
}

## F_stat
#f-stat = ((TSS-RSS)/p)/(RSS/(n-p-1)) = ((TSS-RSS)/RSS) * ((n-p-1)/p)
fstat <- function(lm_obj) {
  n <- nrow(lm_obj$model)
  p <- ncol(lm_obj$model) - 1
  rss <- rss(lm_obj)
  tss <- tss(lm_obj)
  return(((tss-rss)/p)/(rss/(n-p-1)))
}