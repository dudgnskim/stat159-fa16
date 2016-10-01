# Main target: paper.md, paper.html
all: paper.html

.PHONY: all clean

paper.md: paper/sections/*.md
	cd paper/sections; cat *.md > paper.md
	cd paper/sections; mv paper.md ../

paper.html: paper.md
	cd paper; pandoc -s paper.md -o paper.html

clean:
	rm -f paper.md paper.html