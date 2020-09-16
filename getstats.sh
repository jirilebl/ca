#!/bin/sh

echo
echo "Chapters (including intro):    \t"`grep '^[\]chapter\**{.*label{ch:' ca.tex | wc -l`
echo "Appendices:                    \t"`grep '^[\]chapter{.*label{ap:' ca.tex | wc -l`
echo "Sections:                      \t"`grep '^[\]section\**{' ca.tex | wc -l`
echo "Sections (excluding appendix): \t"`cat ca.tex | sed '/^[\]appendix/q' | grep '^[\]section\**{' | wc -l`
echo
echo "Figures:                       \t"`grep '^[\]begin{myfig' ca.tex | wc -l`
echo "Figures (excluding appendix):  \t"`cat ca.tex | sed '/^[\]appendix/q' | grep '^[\]begin{myfig' | wc -l`
echo
echo "Exercises:                     \t"`grep '^[\]begin{exercise' ca.tex | wc -l`
echo "Exercises (excluding appendix):\t"`cat ca.tex | sed '/^[\]appendix/q' | grep '^[\]begin{exercise' | wc -l`
echo
echo "Footnotes:                     \t"`grep '[\]footnote{' ca.tex | wc -l`
echo "Exercises (excluding appendix):\t"`cat ca.tex | sed '/^[\]appendix/q' | grep '[\]footnote{' | wc -l`

echo
