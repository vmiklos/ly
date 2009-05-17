\version "2.12.1"

\header {
	title = "Keresd meg a lányt"
	composer = "Zene és szöveg: Ákos"
	tagline = "Engraved by LilyPond - http://vmiklos.hu/ly"
}

#(set-global-staff-size 15)

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
		a2:m a:m g g c c e:sus4 e:sus4 a:m a:m
		g g c c d d a:m a:m g g
		c c e:sus4 e:sus4 a:m a:m g g c c
		d d a:m a:m g g c c e:sus4 e:sus4
		a:m a:m g g c c d d a:m a:m g g
		c c e:sus4 e:sus4 a:m a:m g g c c d d
		a:m a:m a:m a:m a:m a:m a:m a:m g g g g g g g g
		f f f f d:m d:m d: d:m e e e e e e e1:m5.15
		a2:m a:m a:m a:m a:m a:m a:m a:m
		g g g g g g g g f f
		f f d:m d:m d:m d:m e e e1:5.15 e2 e e1:5.15
		g2 g c d c g:5.15
	}
	\tempo 4 = 144
	{
		\clef "G_8"
		\time 4/4
		c'4 c' c' c' | b8 g r4 r r8 g8 | e' d'4. c'4 e'8 d'( | d') b r4 r a8 b | c' a4 a4. a8 b8 |
		b4 g r8 a4 g8 | g4 r4 r2 | r2 r4 r8 e8 | c'4 c' c'8 b c' b( | b4.) g8 r4 g |
		e' d' c' e'8 d'( | d') b r4 r b8 b | c'4 a8 a4. c'4 | b g r8 a4 g8 | g4 r r2 |
		r r4 a | c' c' c'8 c' b c' | b2 g4 g8 g | e'4 d'8 c'4. e'4 | d'4. b8 r4 b |
		c'8 a a a4. c'4 | b g r a8 g | g4 r r fis8( g | a4) r r e8 e | c' c' c'4 r r8 c' | b4 g g g |
		e'8 d' c' c'4. e'8 d'( | d'4) b8 b b b4. | c'4 a8 a a c'4. | b4 g r8 a4 g8 | g4 r r fis8( g | a4) r r2 |
		c'2 c' | c'4 r r2 | c'8( b4.) c'2 | c'4 r8 c' e'4 d'8 c' | d'2 b4 r | r1 | r1 | r2 r4 b |
		c'8( b4.) c'8( b4.) | c'4 r r2 | c'8( b4.) c'8( b4.) | c'4 r r c'8 a| b2 b2(| b2.)( gis4)| e2 r| r r4 r8 a|
		c' c' c' b c'4 r | r1 | c'8 c' c' b c'4 r | r r8 c' c'4 e' |
		d' b8 b4. b4 | r1 | r1 | r2 r4 c'8 b | c' c' c' b c'( b4.) |
		c'4 r r2 | c'4.( c'8)( c'2) | r c'8 c' a( b) | r1 | r2 r8 gis4 gis8 | e4 r4 r2 | r1 | \bar "||"
		b4 g r8 a4 g8 | g4 r r2 | r1
	}
	\addlyrics {
		Em- lék- szel még u- gye A ka- masz é- ve- ink- re A- hogy e- gyütt volt az a
		né- hány jó- ba- rát De nosz- tal- gi- kus a nó- ta, mert
		szét- szé- ledt a- zó- ta Az a szép- re- mé- nyű, jó kis tár- sa- ság
		És em- lék- szel, u- gye a lány- ra A- ki oly so- ká- ig vár- ta Hogy
		be- le- sze- res- sen vég- re va- la- ki A-ha-a Shogy a va- la- ki te let- tél Ar- ról
		nem is i- gen te- het- tél De a- zért nem kel- lett ne- ked két- szer mond- da- ni- i-i-i
		El- men- tek, el- men- tek a ré- gi ba- rá- tok És
		nem jön- nek, nem jön- nek so- ha visz- sza már Te
		ke- resd meg a lányt, ke- resd meg a lányt T- duom, hogy
		meg- ta- lá- lod Ki- csit ha- rag- szik u-gyan
		rád, rá- ád De a- zért visz- sza- vár
		né- hány jó- ba- rát
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
			\line {(2. versszak) Értsd meg, kérlek}
			\line {Szeret valóban téged}
			\line {Pedig furcsa vagy néha igazán}
			\line {Színjátékot ne tervezz}
			\line {Nem kell semmilyen jelmez}
			\line {Csak menj már, mert vár rád}
			\line {Az a lány!}
			\line { \musicglyph #"space" }
			\line {Elmentek, elmentek a régi barátok...}
			\line { \musicglyph #"space" }
			\line {Emlékszel még ugye...}
		}
		\hspace #1.0
	}
}
