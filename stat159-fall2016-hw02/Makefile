# setting target
all: report.pdf .PHONY

#phony targets
.PHONY: all data clean

data: data/Advertising.csv

Advertising.csv:
	cd data; wget "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"

regression.RData: code/regression-script.R Advertising.csv
	cd code; Rscript regression-script.R

eda-output.txt: eda-script.R Advertising.csv
	cd code; Rscript eda-script.R

scatterplot-tv-sales.png: code/regression-script.R Advertising.csv
	cd code; Rscript regression-script.R

histogram-tv.png: code/eda-script.R Advertising.csv
	cd code; Rscript eda-script.R
	
report.pdf: report/report.Rmd regression.RData scatterplot-tv-sales.png
	cd report; Rscript -e "library(rmarkdown); render('report.Rmd')"

clean:
	rm -f report.pdf regression.RData eda-output.txt