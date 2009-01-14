all: lemon-tree.html lemon-tree.midi lemon-tree.pdf lemon-tree.png lemon-tree.ps lemon-tree.ogg

%.ogg: %.midi
	timidity -o $@ -Ov $<

%.midi: %.pdf

%.ps: %.pdf

%.png: %.ly
	lilypond --png $<

%.pdf: %.ly
	lilypond --pdf $<

%.html: %.txt %.png
	asciidoc $<

clean:
	rm -f *.html *.midi *.pdf *.png *.ps *.ogg
