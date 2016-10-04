# setting target
all: report.pdf regression.RData eda-output.txt .PHONY

.PHONY: all data clean

data: data/Advertising.csv
	cd data; wget "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"



report.pdf: report.md
	pandoc -s report.md -o report.pdf

