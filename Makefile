.PHONY: html pdf clean

html:
	asciidoctor -o build/book.html book.adoc

pdf:
	asciidoctor-pdf -o build/book.pdf book.adoc

clean:
	rm -rf build/*
