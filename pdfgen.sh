#!/bin/sh -e

in=""
for i in $(grep link: index.txt |grep -v ly.pdf |sed 's|.*:\(.*\)/.*|\1|')
do
	in="$in $i/$i.pdf"
done
pdftk $in cat output ly.pdf
