all: greenfields.html greenfields.midi greenfields.pdf greenfields.png greenfields.ps greenfields.ogg

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
