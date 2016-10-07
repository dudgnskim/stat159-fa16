### Import Advertising.csv and generate regression.RData, scatterplot-tv-sales.png
setwd("~/coding/stat159/stat159-fa16/stat159-fall2016-hw02")
ad <- read.csv('data/Advertising.csv', header=TRUE)
tv <- ad$TV
sales<- ad$Sales

# Save regression.RData
reg <- lm(sales ~ tv)
reg_sum <- summary(reg)
save(reg_sum, file='data/regression.RData')

#Generate scatterplot-tv-sales
png('images/scatterplot-tv-sales.png')
plot(tv, sales, pch=19, cex=1, col='tomato', main='Regression Analysis of Sales on TV')
abline(reg)
dev.off()
pdf('images/scatterplot-tv-sales.pdf')
plot(tv, sales, pch=19, cex=1, col='tomato', main='Regression Analysis of Sales on TV')
abline(reg)
dev.off()