#!/bin/sh
detex ca.tex | grep -o -E '\w+' | tr '[A-Z]' '[a-z]' | sort | uniq -c | sort -nr
