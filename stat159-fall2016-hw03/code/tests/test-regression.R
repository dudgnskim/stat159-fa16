### test-regression.R file is to test if the functions implemented in regression-function.R
### function properly the way they are supposed to work.

## Test dataset = mtcars
# Linear regression on mtcars
reg <- lm(mpg ~ disp+hp, data=mtcars)
regsum <- summary(reg)

# Load the source code regression-functions.R
source("../functions/regression-functions.R")

# Context of the test
context("Series of regression functions performance tests")

## Tests
# RSS test
test_that("rss of mtcars", {
  expect_equal(rss(reg), sum(regsum$residuals^s))
  expect_type(rss(reg), "double")
})

# TSS test
test_that("tss of mtcars", {
  expect_equal(tss(reg), sum((mtcars$mpg - mean(mtcars$mpg))^2))
  expect_type(tss(reg), 'double')
})

# RSE test
test_that("rse of mtcars", {
  expect_equal(rse(reg), regsum$sigma)
})

# R2 test
test_that("r_squared of mtcars", {
  
})

# F-stat test
test_that("rse of mtcars", {
  
})
