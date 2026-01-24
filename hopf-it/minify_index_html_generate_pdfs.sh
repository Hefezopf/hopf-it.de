<<<<<<< HEAD
#!/bin/bash
cp ./index.html ./index_minified.html
echo "minify..."
sed -i "s/^[ \t]*//g" index_minified.html
echo "generate pdfs..."
java -jar docs-to-pdf-converter-1.8.jar -input Profil_Hopf.docx -output Profil_Web_Hopf.pdf
java -jar docs-to-pdf-converter-1.8.jar -input Profil_Hopf_engl.docx -output Profil_Web_Hopf_EN.pdf
echo "copy index.html + Profil_Web_Hopf*.pdf to ~/tmp"
echo "If warnings, close WORD Docs!"
echo "Now: Upload with WinSCP..."
cp "index_minified.html" ~/tmp/index.html
cp Profil_Web_Hopf_EN.pdf ~/tmp/Profil_Web_Hopf_EN.pdf
cp Profil_Web_Hopf.pdf ~/tmp/Profil_Web_Hopf.pdf

=======
#!/bin/bash
cp ./index.html ./index_minified.html
echo "minify..."
sed -i "s/^[ \t]*//g" index_minified.html
echo "generate pdfs..."
java -jar docs-to-pdf-converter-1.8.jar -input Profil_Hopf.docx -output Profil_Web_Hopf.pdf
java -jar docs-to-pdf-converter-1.8.jar -input Profil_Hopf_engl.docx -output Profil_Web_Hopf_EN.pdf
echo "copy index.html + Profil_Web_Hopf*.pdf to ~/tmp"
echo "If warnings, close WORD Docs!"
echo "Now: Upload with WinSCP..."
cp "index_minified.html" ~/tmp/index.html
cp Profil_Web_Hopf_EN.pdf ~/tmp/Profil_Web_Hopf_EN.pdf
cp Profil_Web_Hopf.pdf ~/tmp/Profil_Web_Hopf.pdf

>>>>>>> 6a249dac57c673143110a249d5eaec77fd7af5e2
