#!/bin/sh
echo Building

for n in *.tex ; do
	echo =============================
	echo $n
	pdflatex $n
	pdflatex $n
	pdflatex $n
done

echo =============================
echo Packaging

rm -f slides.zip
zip slides.zip *.pdf

