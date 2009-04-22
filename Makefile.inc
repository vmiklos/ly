all: $(NAME).html $(NAME).midi $(NAME).pdf $(NAME).png $(NAME).ps $(NAME).ogg

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

upload:
	rsync -avP ./ vmiklos.hu:/home/vmiklos/ftp/vmiklos.hu/htdocs/ly/$(NAME)/
