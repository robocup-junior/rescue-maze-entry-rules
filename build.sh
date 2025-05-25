rm -R build
mkdir build
cp *.adoc build
cp -R media build
cp -R pdfstyle build
cp *.css build
cp *.py build
cd build
python3 criticmarkup_to_adoc.py
asciidoctor-pdf -a pdf-themesdir=pdfstyle -n -a pdf-theme=rescue rule.adoc -D ../