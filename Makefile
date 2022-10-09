MARP_PACKAGE="@marp-team/marp-cli@latest"

all: slides.pdf

%.pdf: %.md
	npx $(MARP_PACKAGE) $< --output $@ --allow-local-files

clean:
	rm -f *.pdf

watch:
	npx $(MARP_PACKAGE) slides.md --output slides.pdf --allow-local-files --watch

.PHONY: clean watch
