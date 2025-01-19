presentation.pdf: presentation.rst presentation.yaml presentation.conf Makefile
	rst2pdf --stylesheets=presentation.yaml --config=presentation.conf presentation.rst
	mupdf presentation.pdf
