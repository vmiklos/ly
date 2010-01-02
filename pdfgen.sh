#!/bin/sh -e

in=""
for i in $(grep link: index.txt |grep -v ly.pdf |sed 's|.*:\(.*\)/.*|\1|')
do
	in="$in $i/$i.pdf"
	cd $i
	echo "DirectoryIndex $(pwd|sed 's|.*/||').html" > .htaccess
	cd - >/dev/null
done
pdftk $in cat output ly.pdf
