### Import Advertising.csv data to create eda-output.txt, histograms

#Import Advertising.csv
setwd("~/coding/stat159/stat159-fa16/stat159-fall2016-hw02")
ad <- read.csv('data/Advertising.csv', header=TRUE)
tv <- ad$TV
sales <- ad$Sales

sink("data/eda-output.txt")
cat("Summary statistics of tv: \n")
cat("Minimum: ", summary(tv)[1], "\n", append=TRUE)
cat("1st Qu.: ", summary(tv)[2], "\n", append=TRUE)
cat("Median: ", summary(tv)[3], "\n", append=TRUE)
cat("Mean: ", summary(tv)[4], "\n", append=TRUE)
cat("3rd Qu.: ", summary(tv)[5], "\n", append=TRUE)
cat("Maximum: ", summary(tv)[6], "\n\n", append=TRUE)
cat("Summary statistics of sales: \n")
cat("Minimum: ", summary(sales)[1], "\n", append=TRUE)
cat("1st Qu.: ", summary(sales)[2], "\n", append=TRUE)
cat("Median: ", summary(sales)[3], "\n", append=TRUE)
cat("Mean: ", summary(sales)[4], "\n", append=TRUE)
cat("3rd Qu.: ", summary(sales)[5], "\n", append=TRUE)
cat("Maximum: ", summary(sales)[6], "\n", append=TRUE)
sink()

#Generate histogram of tv
png("images/histogram-tv.png")
hist(tv)
dev.off()
pdf("images/histogram-tv.pdf")
hist(tv)
dev.off()

#Generate histogram of sales
png("images/histogram-sales.png")
hist(sales)
dev.off()
pdf("images/histogram-sales.pdf")
hist(sales)
dev.off()