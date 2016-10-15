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

## Scatterplots
# scatterplot-tv-sales
png('scatterplot-tv-sales.png')
plot(sales ~ tv, cex=1, pch=19, col='tomato')
dev.off()
# scatterplot-radio-sales
png('scatterplot-radio-sales.png')
plot(sales ~ radio, cex=1, pch=19, col='navy')
dev.off()
# scatterplot-newspaper-sales
png('scatterplot-newspaper-sales.png')
plot(sales ~ news, cex=1, pch=19, col='orange')
dev.off()

## Save regression.RData
reg <- lm()
save()





