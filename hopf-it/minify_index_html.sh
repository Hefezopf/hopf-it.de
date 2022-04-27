#!/bin/sh

# Reduces the size from 162 kb to 100 kb.
# Rename the index_minified.html to index.html and copy to web hosting server.
#
# Call with bash
# Call example: ./minify_index_html.sh

cp index.html index_minified.html
sed -i "s/^[ \t]*//g" index_minified.html
