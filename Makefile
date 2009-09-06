index.html: index.txt ../layout.conf
	asciidoc --conf-file=../layout.conf -a numbered -a sectids index.txt
