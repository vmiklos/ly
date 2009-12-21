\version "2.12.1"

\header {
	title = "Boldog születésnapot!"
	subtitle = "Halász Judit"
	composer = "Bródy János"
	tagline = "Engraved by LilyPond - http://vmiklos.hu/ly"
}

#(set-global-staff-size 18)

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
		c1 c c g
		g g g c
		c c c:7 f
		f c g c2:5.15 g:5.15
		c1 f g c
		c f g c4:5.15 f:5.15 c4:5.15
	}
	\tempo 4 = 144
	\relative c'
	{
		\time 4/4
		e'8 e e4 e r | e e8 e4 e8 r e | e g4. f4 e8 d8( | d4) r r2 |
		d4 d d g, | d' d8 d d4 r8 d | d4 f e d8 e( | e4) r r2 |
		g8 g4. g4 e | g g g8 e4. | g4 bes a g8 f( | f4) r r2 |
		f8 a4. g4 f | f8 e4. e4 r | g8 g4. f4 d8 c( | c4) r r2 | \bar "||"
		g'2 e4 r | f2 a4 r | g2 g4 g8 f | e4 f8 g4. r4 |
		g g g e | f8 f4. a2 | g8 g f4 e d8 c( | c4) r r2 \bar "|."
	}
	\addlyrics {
		Ez a nap más, mint a töb- bi, ezt Te is jól tu- dod,
		más- ként kelt fel reg- gel a Nap, és más- ként jár a Hold.
		Kö- szön- tünk hát Té- ged ha már így e- gyütt va- gyunk,
		"S a-" ján- dé- kul fo- gadd el vi- dám kis da- lunk.
		Bol- dog, bol- dog, bol- dog szü- le- tés- na- pot!
		Kí- ván- juk, hogy le- gyen még sok i- lyen szép na- pod!
	}
	>>
	\midi{}
	% avoid the indent in the first line
	\layout{indent = 0\cm}
}
\markup {
	\fill-line {
		\hspace #1.0
		\column {
			\line {(2. versszak) Megint egy évvel öregebb lettél, s bölcsebb is talán}
			\line {Őrizd meg az emlékeid, s légy nagyon vidám}
			\line {Köszöntünk hát téged, ha már így együtt vagyunk}
			\line {S ajándékul fogadd el vidám kis dalunk}
		}
		\hspace #2
		\column {
			\line {Tavasz után eljön a nyár és ősz után a tél}
			\line {De minden évben eljön a nap, amikor születtél}
			\line {Köszöntünk hát téged, ha már így együtt vagyunk}
			\line {S ajándékul fogadd el vidám kis dalunk}
		}
		\hspace #1.0
	}
}
