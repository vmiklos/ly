index.html: index.txt ../layout.conf
	./pdfgen.sh
	asciidoc --conf-file=../layout.conf -a numbered -a sectids --unsafe index.txt
