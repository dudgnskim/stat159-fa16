This is a folder containing lab7 work, which is to test functions in R.

This folder contains basic examples of unit tests with the R package "testthat"

File structure:

test-that/
   README.md
   test-that.R
   functions/
      add.R
      better-add.R
      range-value.R
   tests/
      test-add.R
      test-better-add.R
      test-range-value.R
Runing tests from command line

One way to run the tests is execute the script test-that.R from the command line. Assuming that you are positioned in this directory, run the command:

Rscript test-that.R
Running tests from R console

Another way to run the unit tests is from the R concole (e.g. from RStudio). Assuming that your working directory if test-that/, then do:

source("test-that.R")
Running individual test files

You can also run each individual test file (R scripts inside tests/). For example, here is how to run the tests in test-range-value.R:

cd tests
Rscript -e "library(testthat); test_file('test-range-value.R')"

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.

Author: YOUNG HOON KIM