### Regression-script.R###
### reads in the Advertising.csv data set, and computes a "regression"
### object---via lm()---as well as the summary of such regression object---via summary().
### These objects are saved in the file regression.RData. This script also produces the
### three diagnostics plots residual-plot.png, scale-location-plot.png, and
### normal-qq-plot.png (see help(plot.lm) for more info).

setwd('~/coding/stat159/stat159-fa16/stat159-fall2016-hw03/')
## Read in Advertising.csv
ad <- read.table('data/Advertising.csv', sep=',')
sales <- ad$Sales
tv <- ad$TV
radio <- ad$Radio
news <- ad$Newspaper


save