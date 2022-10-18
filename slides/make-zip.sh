#!/bin/sh
echo Building

for n in *.tex ; do
	echo =============================
	p=`basename $n .tex`".pdf"
	echo $n '-->' $p
	# Just always rebuild rubber is smart
	rubber -d $n
	#if test '!' -e $p ; then
	#	echo Missing, will rebuild
	#	rubber -d $n
	#elif test $n -nt $p ; then
	#	echo Old, will rebuild
	#	rubber -d $n
	#else
	#	echo No need to rebuild
	#fi
done

echo =============================
echo Packaging

rm -f slides.zip
zip slides.zip *.pdf

