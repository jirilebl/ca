#!/bin/sh
echo Building

for n in *.tex ; do
	echo =============================
	p=`basename $n .tex`".pdf"
	echo $n '-->' $p
	rubber -d --synctex $n
done

echo =============================
echo Packaging

rm -f slides.zip
zip slides.zip *.pdf

