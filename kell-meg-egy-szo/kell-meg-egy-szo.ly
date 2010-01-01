\version "2.12.1"

\header {
	title = "Kell még egy szó"
	subtitle = "A Honfoglalás c. játékfilm főcímdala"
	composer = "Koltay Gergely - Demjén Ferenc"
	tagline = "Engraved by LilyPond - http://vmiklos.hu/ly"
}

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
		a1:m c d:m e
		a:m c d:m e
		a:m c d:m e
		f c d:m e
		a:m c f2 e:7 a1:m5.15
		f c f c
		f a:m f e:7
	}
	\tempo 4 = 144
	\relative c'
	{
		\time 4/4
		r1 | r1 | r1 | r2 r4 c' | a2. c8( d) | e2. a,8 b | c2. d4 | b2. c8( b) |
		a2 r8 a c d | e2. d8 e | f4. f8 e4 d8( e) | e2. r8 e |
		a4. a8 g( a4.) | g4 e2. | f4 e2 d8( e) | e2. c8 b |
		a2. c8 d | e2. r8 a, | c4 d b4. c8 | a1 | \bar "||"
		a'2 a | g4. f8 e4 e | c' c b8 a4. | e1 |
		c'2 d8( c4) c8 | b4. a8 e4 d8 f | g4. f8 e4 d8( e) | e1 \bar "|."
	}
	\addlyrics {
		Kell még egy szó mi- e- lőtt men- nél
		Kell még egy ö- le- lés a- mi vé- gig el- kí- sér
		Az ú- ton majd né- ha gon- dolj re- ám
		Ez a föld a ti- éd ha el- mész visz- sza vár
		Szállj szállj só- lyom szár- nyán
		Há- rom he- gyen túl
		Szállj szállj ott vá- rok rád
		A- hol vé- get ér az út
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
			\line {Kell még egy szó, mielőtt mennél}
			\line {Kell még egy ölelés, ami végig elkísér}
			\line {Az úton majd néha, gondolj reám}
			\line {Ez a föld a tiéd, ha elmész visszavár}
			\line { \musicglyph #"space" }
			\line {Nézz rám és lásd, csillagokra lépsz}
			\line {Nézz rám, hogy tova tűnt a régi szenvedés}
			\line {Hol a fák az égig érnek, ott megérint a vég}
			\line {Tudod jól, hogy hova mész, de végül hazaérsz}
			\line { \musicglyph #"space" }
			\line {Szállj, szállj...}
		}
		\hspace #2
		\column {
			\line {Úgy kell, hogy te is értsd, nem éltél hiába}
			\line {Az a hely, ahol élsz, világnak világa}
			\line {Az égigérő fának, ha nem nő újra ága}
			\line {Úgy élj, hogy te legyél virágnak virága}
			\line { \musicglyph #"space" }
			\line {Szállj, szállj...}
			\line { \musicglyph #"space" }
			\line {Nézz rám, s ne ígérj}
			\line {Nézz rám, sose félj}
			\line {Ha nincs hely, ahol élj}
			\line {Indulj hazafelé}
		}
		\hspace #1.0
	}
}
