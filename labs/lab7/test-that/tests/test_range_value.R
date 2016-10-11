### A file to test the range_value(x) function in functions folder.

# Test variables
x <- c(1,2,3,4,5)
y <- c(1,2,3,4,NA)
z <- c(TRUE, FALSE, TRUE)
w <- letters[1:5]

# load the source code of the functions to be tested
source("../functions/range_value.R")


# context with one test that groups expectations
context("Test for range value")

# Test on x
test_that("range works as expected", {
	# Testing the range_value(x)
	expect_equal(range_value(x), 4)
	# Testing the length of range_value(x)
	expect_length(range_value(x), 1)
	# Testing the type of range_value(x)
	expect_type(range_value(x), "double")
	})

# Test on y
test_that("range of y", {
	# Testing the length of range_value(y)
	expect_length(range_value(y), 1)
	# Testing the range_value(y)
	expect_equal(range_value(y), 3)
	})

# Test on z
test_that("range of z", {
	# Testing the lenght of range_value(z)
	expect_length(range_value(z), 1)
	# Testing the type of range_value(z)
	expect_type(range_value(z), 'integer')
	# Testing the range_value(z)
	expect_equal(range_value(z), 1L)
	})

# Test on w
test_that("range of w", {
	# Testing the range_value(w)
	expect_error(range_value(w))
	})







