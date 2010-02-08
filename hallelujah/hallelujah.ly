\version "2.12.1"

\header {
	title = "Hallelujah"
	subtitle = "Shrek 2001 (Leonard Cohen - 1984)"
	composer = "Leonard Cohen"
	tagline = #(ly:export
		(format "Music engraving by LilyPond ~a~ahttp://vmiklos.hu/ly"
			(lilypond-version)
			(ly:wide-char->utf-8 #x2014)
		)
	)
}

%#(set-global-staff-size 15)

\score {
	<<
	\chords {
		\germanChords
		g2. e:m g e:m g e:m g
		e:m c d g
		d g c4. d e2.:m
		c d b:7 e:m
		e:m7 c c e:m e:m c c
		g d g e:m g e:m
	}
	\tempo 4 = 120
	\relative c'
	{
		\clef "G_8"
		\key g \major
		\time 6/8
		r2. | r | r | r4. r4 b8 | d4 d8 d4 d8 | e8 e e4. b8 | d4 d8 d d d |
		e4 e8 e4 d8 | e4 e8 e4 e8 | e4 d8 d4 c8 | d4 d4. r8 |
		r4. r4 b16 b | d4 d8 d4 d8 | e4 e8 fis4 fis8 | g4 g8 g4 g16 g |
		g4 g8 a4 g8 | a4 a8 a4 a8 | b4 b8 b4 a8 | a4 g8( g4.) |
		r4. r8 b, d | e4. e | r e4 d8 | b4. b | r b4 d8 | e4. e | r e4 d8 |
		b4.( b8 c b | a2.) | g | r | r | r4. r4 b8 \bar "|."
	}
	\addlyrics {
		I heard there was a sec- ret chord that Da- vid played and it
		pleased the Lord But you don't real- ly care for mu- sic, do ya?
		Well it goes like this: the fourth, the fifth The mi- nor fall and the
		ma- jor lift The baff- led king com- po- sing Hal- le- lu- jah
		Hal- le- lu- jah Hal- le- lu- jah Hal- le- lu- jah, Hal- le
		lu jah Well
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
			\line {Well baby I've been here before}
			\line {I've seen this room and I've walked this floor}
			\line {I used to live alone before I knew ya}
			\line {I've seen your flag on the marble arch}
			\line {A love is not a victory march}
			\line {It's a cold and it's a broken Hallelujah}
			\line {Hallelujah Hallelujah Hallelujah Hallelujah}
		}
		\hspace #2
		\column {
			\line {Well maybe there's a God above}
			\line {But all I've ever learned from love}
			\line {Was how to shoot somebody who'd out drew ya}
			\line {And it's not a cry that you hear at night}
			\line {It's not somebody who's seen the light}
			\line {It's a cold and it's a broken Hallelujah}
			\line {Hallelujah Hallelujah Hallelujah Hallelujah}
		}
		\hspace #1.0
	}
}
