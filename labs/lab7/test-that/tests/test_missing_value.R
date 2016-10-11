### A file to test the functions in functions folder.

# Test variables
x <- c(1,2,3,4,5)
y <- c(1,2,3,4,NA)
z <- c(TRUE, FALSE, TRUE)
w <- letters[1:5]

# load the source code of the functions to be tested
source("../functions/missing_values.R")


# context with one test that groups expectations
context("Test for missing value")

## Tests
test_that("Missing values in x,y,z,w", {
	x <- c(1, 2, 3, 4, 5)
	y <- c(1, 2, 3, 4, NA)
	z <- c(1, NA, 3, 4, NA)
	nas <- rep(NA, 10)
  
	expect_equal(missing_values(x), 0)
	expect_length(missing_values(x), 1)
	expect_gte(missing_values(x), 0)
	expect_type(missing_values(x), 'double')
	expect_equal(missing_values(y), 1)
	expect_length(missing_values(y), 1)
	expect_equal(missing_values(z), 2)
	expect_length(missing_values(z), 1)
	expect_equal(missing_values(nas), 10)
	})