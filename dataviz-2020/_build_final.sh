#!/bin/sh

rm -rf ./_book_final/
rm -rf ./_bookdown_files/
Rscript -e "bookdown::render_book(input = 'index.Rmd', output_format = 'bookdown::gitbook', config_file = '_bookdown_final.yml')"

# copy the book to the shared folder in the host
cp -r _book_final/ ../share/
