#!/bin/sh

# Reduces the size from 173 kb to 118 kb.
# Rename the index_minified.html to index.html and copy to web hosting server.
#
# Call with bash
# Call example: ./minify_index_html.sh

cp index.html index_minified.html

echo "minify..."
sed -i "s/^[ \t]*//g" index_minified.html

echo "genreate pdfs..."
# https://github.com/yeokm1/docs-to-pdf-converter
java -jar docs-to-pdf-converter-1.8.jar -input Profil_Hopf.docx -output Profil_Web_Hopf.pdf
java -jar docs-to-pdf-converter-1.8.jar -input Profil_Hopf_engl.docx -output Profil_Web_Hopf_EN.pdf

echo "copy index.html + Profil_Web_Hopf*.pdf to D:/temp"

cp index_minified.html /D/temp/index.html
cp Profil_Web_Hopf_EN.pdf /D/temp/Profil_Web_Hopf_EN.pdf
cp Profil_Web_Hopf.pdf /D/temp/Profil_Web_Hopf.pdf
