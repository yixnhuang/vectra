# latexmkrc for Vectra
#
# This configuration is intentionally minimal. The Makefile controls the main
# build targets and output names.
#
# Vectra currently targets pdfLaTeX as the default engine for stable,
# portable builds.

$pdf_mode = 1;

$pdflatex = 'pdflatex -interaction=nonstopmode -file-line-error -synctex=1 %O %S';

# Continue far enough to report useful errors.
$halt_on_error = 0;

# Clean common auxiliary files.
$clean_ext = 'aux bbl bcf blg brf fdb_latexmk fls idx ilg ind lof log lot nav out run.xml snm synctex.gz toc vrb xdv';

# Silence some unnecessary latexmk messages.
$silent = 0;
