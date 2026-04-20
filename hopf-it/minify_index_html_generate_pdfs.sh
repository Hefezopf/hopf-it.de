#!/bin/bash
# Call: . minify_index_html_generate_pdfs.sh
cp ./index.html ./index_minified.html
echo "minify..."
sed -i "s/^[ \t]*//g" index_minified.html
echo "generate pdfs..."
java -jar docs-to-pdf-converter-1.8.jar -input Profil_Hopf.docx -output Profil_Web_Hopf.pdf
java -jar docs-to-pdf-converter-1.8.jar -input Profil_Hopf_engl.docx -output Profil_Web_Hopf_EN.pdf

echo "If warnings, close WORD Docs!"
echo "Now: Upload with WinSCP or FileZilla..."

echo "Operating System: $OSTYPE"
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # ...
        echo "TODO: fix"
        exit 0
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
        echo "TODO: fix"
        exit 0
elif [[ "$OSTYPE" == "cygwin" ]]; then
        # POSIX compatibility layer and Linux environment emulation for Windows
        echo "TODO: fix"
        exit 0
elif [[ "$OSTYPE" == "msys" ]]; then
        # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
        echo "copy index.html + Profil_Web_Hopf*.pdf to C:\temp"
        cp "index_minified.html" C:\\temp\\index.html
        cp Profil_Web_Hopf_EN.pdf C:\\temp\\Profil_Web_Hopf_EN.pdf
        cp Profil_Web_Hopf.pdf C:\\temp\\Profil_Web_Hopf.pdf

elif [[ "$OSTYPE" == "win32" ]]; then
        # I'm not sure this can happen.
        echo "TODO: fix"
        exit 0
elif [[ "$OSTYPE" == "freebsd"* ]]; then
        # ...
        echo "TODO: fix"
        exit 0
else
        # Unknown.
        echo "TODO: fix"
        exit 0
fi
#echo "copy index.html + Profil_Web_Hopf*.pdf to ~/tmp"
#cp "index_minified.html" ~/tmp/index.html
#cp Profil_Web_Hopf_EN.pdf ~/tmp/Profil_Web_Hopf_EN.pdf
#cp Profil_Web_Hopf.pdf ~/tmp/Profil_Web_Hopf.pdf
