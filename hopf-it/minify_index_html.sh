#!/bin/sh

# Reduces the size from 173 kb to 118 kb.
# Rename the index_minified.html to index.html and copy to web hosting server.
#
# Call with bash
# Call example: ./minify_index_html.sh

cp index.html index_minified.html
sed -i "s/^[ \t]*//g" index_minified.html

cp index_minified.html /D/temp/index.html
cp Profil_Web_Hopf_EN.pdf /D/temp/Profil_Web_Hopf_EN.pdf
cp Profil_Web_Hopf.pdf /D/temp/Profil_Web_Hopf.pdf
