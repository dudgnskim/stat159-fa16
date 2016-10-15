### eda-script.R ###
### Reads in the Advertising.csv data set, and computes summary statistics,
### histograms for all the variables (TV, Radio, Newspaper, and Sales), matrix of
### correlations among all variables, and scatterplot-matrix (pairwise scatterplots).
### The summary statistics (clearly labeled) and the matrix of correlations, will be
### saved in a file eda-output.txt. In addition to including the correlation matrix
### in eda-output.txt, save it also in binary format correlation-matrix.RData.
### In turn, each exploratory chart is saved in PNG format.

setwd('~/coding/stat159/stat159-fa16/stat159-fall2016-hw03')
## Read in Advertising.csv
ad <- read.table('data/Advertising.csv', sep=',', header = TRUE)[,-1]
sales <- ad$Sales
tv <- ad$TV
radio <- ad$Radio
news <- ad$Newspaper

## Summary statistics
sink('data/eda-output.txt')
cat("Summary statistics of tv, radio, newspaper, and sales: \n")
summary(ad)
sink()

## Histogram output for each predictors and response variable
# Y: Sales
png('images/histogram-sales.png')
hist(sales)
dev.off()
# X1: TV
png('images/histogram-tv.png')
hist(tv)
dev.off()
# X2: Radio
png('images/histogram-radio.png')
hist(radio)
dev.off()
# X3: Newspaper
png('images/histogram-newspaper.png')
hist(news)
dev.off()

## Correlation Matrix
c.m <- cor(ad[,-4])
save(c.m, file='data/correlation-matrix.RData')
png('scatterplot-matrix.png')
plot(c.m)
dev.off()



