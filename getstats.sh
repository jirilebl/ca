#!/bin/sh

echo
echo -e "Chapters (including intro):    \t"`grep '^[\]chapter\**{.*label{ch:' ca.tex | wc -l`
echo -e "Appendices:                    \t"`grep '^[\]chapter{.*label{ap:' ca.tex | wc -l`
echo -e "Sections:                      \t"`grep '^[\]section\**{' ca.tex | wc -l`
echo -e "Sections (excluding appendix): \t"`cat ca.tex | sed '/^[\]appendix/q' | grep '^[\]section\**{' | wc -l`
echo
echo -e "Figures:                       \t"`grep '^[\]begin{myfig' ca.tex | wc -l`
echo -e "Figures (excluding appendix):  \t"`cat ca.tex | sed '/^[\]appendix/q' | grep '^[\]begin{myfig' | wc -l`
echo
echo -e "Exercises:                     \t"`grep '^[\]begin{exercise' ca.tex | wc -l`
echo -e "Exercises (excluding appendix):\t"`cat ca.tex | sed '/^[\]appendix/q' | grep '^[\]begin{exercise' | wc -l`
echo
echo -e "Footnotes:                     \t"`grep '[\]footnote{' ca.tex | wc -l`
echo -e "Footnotes (excluding appendix):\t"`cat ca.tex | sed '/^[\]appendix/q' | grep '[\]footnote{' | wc -l`

echo
