\version "2.12.1"

\header {
	title = "I Just Called to Say I Love You"
	composer = "Stevie Wonder"
	tagline = "Engraved by LilyPond - http://vmiklos.hu/ly"
}

#(set-global-staff-size 19)

replaceCN =  #(define-music-function (parser location new) (markup?) #{\once \override ChordNames.ChordName #'stencil =    #(lambda (grob) (grob-interpret-markup grob $new)) #})
EmmajSeven = \markup {Emmaj \super "7"}

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
		d:5.15 d d d d d
		d e:m \replaceCN \EmmajSeven e:m e:m \replaceCN \EmmajSeven e:m e:m
		\replaceCN \EmmajSeven e:m e:m a d d:5.15 d
		d d d d d e:m
		\replaceCN \EmmajSeven e:m e:m \replaceCN \EmmajSeven e:m e:m \replaceCN \EmmajSeven e:m e:m
		a d d:5.15 g a d d
		g a b:m b:m g a b:m
		b:m e:m a d
	}
	\tempo 4 = 144
	{
		\clef "G_8"
		\key d \major
		\time 4/4
		r4 r8 a cis'4. d'8 | d'2 r | r4 r8 a8 cis'4. d'8 | d'2 r | r4 r8 a cis'4. d'8 | d'4 cis'8 d'4 e' fis'8( |
		fis'4) r8 e' d'4 cis'4 | b2 r | r4
			^\markup \fret-diagram #"f:2;5-2;4-1;"
			r8 b dis'4 e' | e'1( | dis'4) r8 b d'4 d' | b2 r |
		r4 r8 b dis'4 r8 e' | e'4. d'8 d'4 e' | fis' e'8 d'4 cis'4. | a2 r | r4 r8 a cis'4. d'8 | d'2 r |
		r4 r8 a cis'4. d'8 | e'( d'4.) r2 | r4 r8 a cis'4. d'8 | d'4 cis'8 d'( d'4.) e'8| fis'4. e'8 d'4 cis'| b2 r|
		r4 r8 b dis'4. e'8 | e'2.( fis'8 e' | dis'4) r8 b d' d'4. | b2 r | r4 r8 b dis'4. e'8 | e'4. d'8 d'4. e'8 |
		fis'4 e'8 d'4 cis'4.| d'2 r| r d'8 d'4 b8(| b4) r2 d'8 cis'8(| cis'4) r2 a8 cis'(| cis'4) d' r2|
			r2 d'8 d'4.|
		b4 r2 d'8 cis'( | cis'4) b8 a4 b4. | fis2 r | r d'8 d'4. | b2. d'8 cis'( | cis'4) r2 a4 | e'4.( fis'8) d'2 |
		r d'8 d'4. | b4 a8 g4. d4 | fis4 e8 fis4 fis8( e4) | d2 r \bar "|."
	}
	\addlyrics {
		No New Years Day to cel- e- brate No choco- late cov- ered can- dy hearts
		to give a- way No first of spring, no song to sing
		In fact here's just an- oth- er or- di- na- ry day No A- pril rain,
		no flow- er's bloom No wed- ding Sat- ur- day with- in the month of June
		But what it is is some- thing true Made up of these three words that
		I must say to you I just called to say I love you I just
		called to say how much I care I just called to say I love you
		And I mean it from the bot- tom of my hart
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
			\line {No summer's high, no warm July}
			\line {No harvest moon to light one tender August night}
			\line {No autumn breeze, no falling leaves}
			\line {Not even time for birds to fly to southern skies}
		}
		\hspace #2
		\column {
			\line {No Libra sun, no Halloween}
			\line {No giving thanks to all the Christmas joy you bring}
			\line {But what it is, though old so new}
			\line {To fill your heart like no three words could ever do}
		}
		\hspace #1.0
	}
}
