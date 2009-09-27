#!/bin/sh -e

cwd=$(pwd)
wd=$(mktemp -d)
parts=$(grep link: index.txt |sed 's|.*:\(.*\)/.*|\1|')
( echo '\documentclass[a4paper]{article}'
echo '\usepackage[a4paper,left=0cm, right=0cm, top=0cm, bottom=0cm]{geometry}'
echo '\usepackage{graphicx}'
echo '\begin{document}'
first=0
for i in $parts
do
	if [ $first = 0 ]; then
		first=1
	else
		echo '\clearpage'
	fi
	echo "\includegraphics{$i.eps}"
	ln -s $cwd/$i/$i.ps $wd/$i.eps
done
echo '\end{document}') > $wd/ly.tex
cd $wd
ln -s ~/git/vmexam/tex/Makefile
make ly.pdf
mv ly.pdf $cwd
cd $cwd
rm -rf $wd
