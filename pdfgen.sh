#!/bin/sh -e

in=""
for i in $(git ls-files|grep ly$|sed 's|/.*||')
do
	if [ $i == i-just-called-to-say-i-love-you -o $i == ki-helyett-szeretsz ]; then
		# FIXME
		continue;
	fi
	in="$in $i/$i.pdf"
	cd $i
	make $i.pdf
	cd -
done
pdftk $in cat output ly.pdf
