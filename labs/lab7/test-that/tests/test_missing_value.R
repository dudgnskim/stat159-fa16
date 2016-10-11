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
	
	})