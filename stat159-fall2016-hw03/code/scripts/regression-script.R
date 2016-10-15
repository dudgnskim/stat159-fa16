### Regression-script.R###
### reads in the Advertising.csv data set, and computes a "regression"
### object---via lm()---as well as the summary of such regression object---via summary().
### These objects are saved in the file regression.RData. This script also produces the
### three diagnostics plots residual-plot.png, scale-location-plot.png, and
### normal-qq-plot.png (see help(plot.lm) for more info).

setwd('~/coding/stat159/stat159-fa16/stat159-fall2016-hw03/')
## Read in Advertising.csv
ad <- read.table('data/Advertising.csv', sep=',', header = TRUE)
sales <- ad$Sales
tv <- ad$TV
radio <- ad$Radio
news <- ad$Newspaper

## Scatterplots
# scatterplot-tv-sales
png('images/scatterplot-tv-sales.png')
plot(sales ~ tv, cex=1, pch=19, col='tomato')
dev.off()
# scatterplot-radio-sales
png('images/scatterplot-radio-sales.png')
plot(sales ~ radio, cex=1, pch=19, col='navy')
dev.off()
# scatterplot-newspaper-sales
png('images/scatterplot-newspaper-sales.png')
plot(sales ~ news, cex=1, pch=19, col='orange')
dev.off()

## Regression of the predictors onto Sales
# Simple regressions
# sales ~ tv
s_tv <- lm(sales ~ tv)
st.sum <- summary(s_tv)

# sales ~ radio
s_radio <- lm(sales ~ radio)
sr.sum <- summary(s_radio)

# sales ~ newspaper
s_news <- lm(sales ~ news)
sn.sum <- summary(s_news)

# Multivariate regression
s_all <- lm(sales ~ tv+radio+news)
sa.sum <- summary(s_all)

## Residual plot
res <- summary(s_all)$residuals
png('residual-plot.png')
plot(s_all, which=1)
dev.off()

## Scale-location-plot.png
png('scale-location-plot.png')
plot(s_all, which=3)
dev.off()

## Normal Q-Q plot
png('normal-qq-plot.png')
plot(s_all, which=2)
dev.off()

## Save regression.RData
save(sa.sum, st.sum, sr.sum, sn.sum, file='data/regression.RData')