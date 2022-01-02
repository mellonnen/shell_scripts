# Create NAME.pdf using pandoc
# Depends on markdown, bib, and csl files, and potential pngs for figures.
.SECONDEXPANSION:
NAME.pdf: NAME.md ieee.csl bib.bib $$(wildcard $$*.png)
	pandoc NAME.md -o NAME.pdf -s -C

# Create an empty bib file if we do not already have one.
bib.bib:
	echo "" >> bib.bib

# Fetch the ieee.csl file if we do not already have one.
ieee.csl:
	curl https://raw.githubusercontent.com/citation-style-language/styles/master/ieee.csl -o ieee.csl

# Create NAME.md with boilerplate if we do not already have one.
NAME.md:
	echo "---\ntitle: Title\nauthor: Arvid Gotthard\nbibliography: bib.bib\ncsl: ieee.csl\nurlcolor: blue\n---\n" >> NAME.md

# Launch okular for preview and start a file watcher.
.PHONY:
watch: 
	okular NAME.pdf 2>/dev/null &
	while true; do \
		make; \
		fswatch -1 --event Updated .; \
	done
