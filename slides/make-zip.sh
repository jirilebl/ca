#!/bin/sh
echo Building

for n in *.tex ; do
	echo =============================
	p=`basename $n .tex`".pdf"
	echo $n '-->' $p
	if test $n -nt $p ; then
		echo Will rebuild
		pdflatex $n
		pdflatex $n
		pdflatex $n
	else
		echo No need to rebuild
	fi
done

echo =============================
echo Packaging

rm -f slides.zip
zip slides.zip *.pdf

