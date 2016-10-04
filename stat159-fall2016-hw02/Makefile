# setting target
all: report.pdf regression.RData eda-output.txt .PHONY

.PHONY: all data clean

data: data/Advertising.csv

Advertising.csv:
	cd data; wget "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"

regression.RData: regression-scirpt.R Advertising.csv


eda-output.txt: eda-script.R Advertising.csv


scatterplot-tv-sales.png: regression-scirpt.R Advertising.csv
	Rscript regression-scirpt.R

report.pdf: report.Rmd regression.RData scatterplot-tv-sales.png
	Rscript -e "library(rmarkdown); render('report.Rmd')"

clean:
	rm -f report.pdf regression.RData eda-output.txt