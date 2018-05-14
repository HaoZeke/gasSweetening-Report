$pdflatex = "pdflatex -shell-escape %O %S -synctex=1 -interaction=nonstopmode";
$pdf_mode = 1;
$dvi_mode = $postscript_mode = 0;
# These are additional latexmk files...
$clean_ext = "bbl nav out snm vrb";
