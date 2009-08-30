index.html: index.txt
	asciidoc --conf-file=../layout.conf -a numbered -a sectids index.txt
