#!/bin/bash
# Clean old files
rm paper.dvi
rm paper.ps
rm paper.pdf

# Run latex
latex -synctex=1 paper.tex
dvips -synctex=1 paper.dvi
ps2pdf -synctex=1 paper.ps paper.pdf 
bibtex paper
