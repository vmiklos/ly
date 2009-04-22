\version "2.12.1"

\header {
	title = "I Only Want To Be With You"
	subtitle = "The Bay City Rollers"
	composer = "Mike Hawker - Ivor Raymonde"
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
		d1 b:m d b:m
		d b:m g2 a2 e:m7 a
		d1 b:m e2:m g a1
		e2:m a d1 b:m bes
		bes d2 g d1 a
		a b2:m e a4 a:7 d2
		d1 e2:m g a1 e2:m a d4 g d2:5.15
	}
	\tempo 4 = 110
	{
		\clef "G_8"
		\key d \major
		\repeat volta 2 { r1 | r2 r4 r8 a8 | } \repeat volta 2 { fis'8 e' e' d' d' cis' cis' b | b fis4 fis4. r8 a |
		fis' e' e' d' d' cis' cis' b | b fis4 fis4. fis8 fis | g4 d'8 cis'4 cis'4. | a8 fis'4 e'4. r8 a |
		fis' e' e' d' d' cis' d' e' | fis' b4 b4. r8 b | g'4 fis' e'8 d'4 fis'8( | e'2) r4 r8 fis' |
		g' fis' e' d' e' e'4 d'8( |
			d'2_\markup { \italic {(ide jön a 2. vszak)} }) r2 | r2 r4 r8 a | } r4 d' c' bes8. d'16( |
		d'8) d'4 c'4( bes4.) | a8 a a a b4 d'8 a( | a2) r2 | e8 e e a4 a cis'8( |
		cis') cis'4 e'4. r4 | r8 e' d' d' cis'4 d'8 e'8( | e'4) r8 e' fis' e' d' e' | \bar "||"
		d'4 r r r8 b8 | g'4 fis' e'8 d'4 fis'8( | e'2) r4 r8 fis' | g' fis' e' d' e' e'4 d'8( | d'4) r4 r2 \bar "|."
	}
	\addlyrics {
		I don't know what it is that makes me love you so I
		on- ly know I nev- er want to let you go 'cause you start- ed some- thing can't you see That
		ev- er since we met you've had a hold on me It hap- pens to be true I
		on- ly wan- na be with you It You stopped and smiled
		at me Asked me if I'd care to dance I fell in- to your op-
		en arms I did- n't stand a chance Now, lis- ten ho- ney
		you No mat- ter what you do I on- ly wan- na be with you
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
			\line {(2. versszak) It / doesn't matter where you go or what you do}
			\line {I / want to spend each moment of the day with you}
			\line {Look what has happened with just one kiss}
			\line {I / never knew that I could be in love like this}
			\line {It's / crazy but it's true, I only wanna be with you}
			\line { \musicglyph #"space" }
			\line {You stopped and smiled at me}
			\line {Asked me if I'd care to dance}
			\line {I fell into your open arms}
			\line {I didn't stand a chance}
		}
		\hspace #2
		\column {
			\line {Now, listen, honey,}
			\line {(3. vszak) I just wanna be beside you everywhere}
			\line {As / long as we're together, honey, I don't care}
			\line {'Cause you / started something, can't you see}
			\line {That / ever since we met you've had a hold on me}
			\line {It's / crazy but it's true, I only want to be with you}
			\line { \musicglyph #"space" }
			\line {You stopped and smiled at me...}
			\line {Now, listen, honey...}
			\line { \musicglyph #"space" }
			\line {No matter what you do, I only wanna be with you.}
		}
		\hspace #1.0
	}
}
