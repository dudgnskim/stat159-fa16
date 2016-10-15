### session-info-script.R is a script that includes library() calls to ALL
### the packages that you use for your project, as well as the output of the
### function sessionInfo(). Export the output via sink() to the file
### session-info.txt (this file is at the project's top level directory).
setwd('~/coding/stat159/stat159-fa16/stat159-fall2016-hw03/')
## Required libraries
library(xtable)
library(testthat)

## Saving session information to session-info.txt
sink('session-info.txt')
sessionInfo()
sink()