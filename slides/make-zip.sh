#!/bin/sh
echo Building

for n in *.tex ; do
	echo =============================
	p=`basename $n .tex`".pdf"
	echo $n '-->' $p
	if test '!' -e $p ; then
		echo Missing, will rebuild
		pdflatex $n
		pdflatex $n
		pdflatex $n
	elif test $n -nt $p ; then
		echo Old, will rebuild
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

