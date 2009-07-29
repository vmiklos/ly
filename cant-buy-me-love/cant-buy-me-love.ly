\version "2.12.1"

\header {
	title = "Can't Buy Me Love"
	subtitle = "The Beatles (A Hard Day's Night - 1964)"
	composer = "John Lennon-Paul McCartney"
	tagline = "Engraved by LilyPond - http://vmiklos.hu/ly"
}

#(set-global-staff-size 17)

% a bit complex macro, writing '5.15' after a chord displays an arpeggio
% next to it
% the \override removes vertical space between lines
arpeggioGuitar = \markup \override #'(baseline-skip . -2 ) {
	\musicglyph #"space"
	\center-column {
		\center-column {
			\musicglyph #"scripts.arpeggio"
			\musicglyph #"scripts.arpeggio"
			\musicglyph #"scripts.arpeggio"
		}
		\musicglyph #"scripts.arpeggio.arrow.M1"
	}
}

chExceptionMusic = {
	<c ees g c''>1-\markup {m \super \arpeggioGuitar }
	<c e g c''>1-\markup { \super \arpeggioGuitar }
}

chExceptions = #( append
	(sequential-music-to-chord-exceptions chExceptionMusic #t)
	ignatzekExceptions)

\score {
	<<
	\chords {
		\germanChords
		\set chordNameExceptions = #chExceptions
		c1:5.15 e:m a:m e:m a:m d:m g
		c2 c:7 c1 c c f:7
		f:7 c c g f:5.15
		g c c c c
		c f:7 f:7 c c
		g f:5.15 g c e:m
		a:m c c e:m a:m
		d:m g c c c
		c f:7 f:7 c c
		g f:5.15 g c c
	}
	\tempo 4 = 144
	{
		\clef "G_8"
		\time 4/4
		r4 c'4 e'8 g'4. | g'1( | e'2) r | g'1( | e'4) c' e'8 g'4. | g'1( | e'4) r r r8 c' |
		g'4 g'8 g' f'4 es'8 d'( | d') c'4 c'4. c'8 bes | c'4 g bes8 c'4 c'8( | c'4) r r r8 c'| g'4 g' f'8 es'4 d'8(|
		d') c'4 c'4. c'8 bes | c'4 g bes8 c'4 c'8( | c'4) r r r8 c' | g'4 g' g' g' | r8 f'4 es'8 f' es' r4 |
		g'8 g' g'4 f'8 es'4 c'8( | c'2) r4 r8 c'8 | g'4 g' f' es'8 d'( | d') c'4 c'4. c'8 bes | c'4 g bes8 c'4 c'8(|
		c'4) r r r8 c' | g'4 g' f' es'8 d'( | d') c'4 c' c'8 c' bes | c'4 g bes c'8 c'( | c'4) r r2 |
		g'4 g' g' g' | r8 f'4 es'8 f' es' r4 | g'8 g' g'4 f' es'8 c'( | c'4) c' e'8 g'4. | g'1( |
		e'4) r r2 | e'8. e'16 d'8. c'16 d'4 c' | c' c' e'8 g'4. | g'1( | e'2) r |
		d'8 d'4 f'8( f'2) | g' r | g'8. g'16 g'4 f' es' | d'8 c'4 c'4. r8 c' | c'4 g bes8 c'4 c'8( |
		c'4) r r2 | g'8 g' g' g' f'4 es' | d'8 c'4 c'4. r8 c' | c' g4 bes c' c'8( | c'4) r r2 |
		g'4 g' g' g' | r8 f'4 es'8 f' es'4. | g'8 g' g'4 f'8 es'4 c'8( | c'1) | r1 \bar "|."
	}
	\addlyrics {
		Can't buy me love, love, can't buy me love I'll
		buy you a dia- mond ring my friend if it makes you feel al- right I'll get you an- y- thing
		my friend if it makes you feel al- right 'Cause I don't care too much for mon- ey,
		mon- ey can't buy me love I'll give you all I got to give if you say you love me too
		I may not have a lot to give but what I got I'll give to you
		I don't care too much for mon- ey, mon- ey can't buy me love Can't buy me love,
		eve- ry- bod- y tells me so can't buy me love,
		no, no, no, no Say you don't need no dia- mond rings and I'll be sat- is- fied
		Tell me that you want the kind of things that mon- ey just can't buy
		I don't care too much for mon- ey, mon- ey can't buy me love
	}
	>>
	\midi{}
	% avoid the indent in the first line
	\layout{indent = 0\cm}
}
