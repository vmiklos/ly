\version "2.12.1"

\header {
	title = "Közeli helyeken"
	subtitle = "Bikini"
	composer = "Németh Alajos - Dévényi Ádám"
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
		a:m g d:m a:m a:m g
		d:m a:m f g a:m
		g d:m g a:m g d:m
		a:m f g a:m g d:m
		g f g d:m a:m
		f g d:m
		a:m f g d:m
		a:m f g d:m
		a:m5.15 a:m g d:m a:m5.15
	}
	\tempo 4 = 144
	\relative c'
	{
		\clef "G_8"
		\time 4/4
		\repeat volta 2 {
			r1 | r1 | r1 | r1 |
		}
		r2 r8 e8 e e | d e d4 r2 |
		r4 r8 e4 d8 c4 | e8 g8 e4 r2 | r2 c8 c c c | b4 c b b8 g | a4 a r2 |
		r1 | r1 | r1 | r2 r8 e'8 e e | d e d4 r2 | r4 r8 e4 d8 c4 |
		e8 g8 e4 r2 | r2 c4 c | b c b4. g8 | a4 a r2 | r1 | r1 |
		r1 | a'4 a8 a a a4 a8 | g a g4 r2 | e8 d d d4. c8 e8( | e) e f e r2 |
		a4 a8 a a a4 a8 | g8 g a g r4 r8 d | e4 d8 d4 d c8 |
		e f e4 e g | a a8 g a4 a8 a( | a) g g a g4 r8 d | d4 d d c |
		e8 e4 f8 e2 | a4 a a a | a8 g4 a8 g4 r4 | d d r d8 c |
		a4 a8 c a4 r | r1 | r1 | r1 | r1 \bar "|."
	}
	\addlyrics {
		Kö- ze- li he- lye- ken,
		dom- bo- kon, he- gye- ken Ki- be- le- zett kő- bá- nyák ü- re- gé- ben
		Kö- ze- li he- lye- ken, dom- bo- kon,
		he- gye- ken Most is vissz- hang- zik a lép- tem
		Itt ül az i- dő a nya- ka- mon Ki- fogy az út a lá- bam a- lól
		Ak- kor is me- gyek, ha nem a- ka- rok Ha nem kí- sér sen- ki
		u- ta- mon Ar- com mos- sa e- ső, és szá- rít- ja a szél Az em- ber min- dig
		job- bat re- mél Por- ból let- tem, "s por-" rá le- szek Fé. lek, hogy a
		köd- be ve- szek
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
                        \line {Közeli helyeken, dombokon, hegyeken,}
			\line {kibelezett kőbányák üregében.}
			\line {Közeli helyeken, dombokon, hegyeken,}
			\line {Most is visszhangzik a léptem.}
			\line {Itt ül az idő a nyakamon,}
			\line {Kifogy az út a lábam alól.}
			\line {Akkor is megyek, ha nem akarok!}
			\line {Ha nem kísér senki utamon.}
			\line {Arcom mossa eső és szárítja a szél.}
			\line {Az ember mindig jobbat remél.}
			\line {Porból lettem s porrá leszek,}
			\line {Félek, hogy a ködbe veszek.}
                        \line { \musicglyph #"space" }
                        \line {Közeli helyeken, dombokon, hegyeken,}
			\line {kibelezett kőbányák üregében.}
			\line {Közeli helyeken, dombokon, hegyeken,}
			\line {Most is visszhangzik a léptem.}
			\line {Itt ül az idő a nyakamon,}
			\line {Kifogy az út a lábam alól.}
			\line {Akkor is megyek, ha nem akarok!}
			\line {Ha nem kísér senki utamon.}
			\line {Arcom mossa eső és szárítja a szél.}
			\line {Az ember mindig jobbat remél.}
			\line {Porból lettem s porrá leszek,}
			\line {Félek, hogy a ködbe veszek.}
                }
                \hspace #2
                \column {
			\line {Itt ül az idő a nyakamon,}
			\line {Kifogy az út a lábam alól.}
			\line {Akkor is megyek, ha nem akarok!}
			\line {Ha nem kísér senki utamon.}
			\line {Arcom mossa eső és szárítja a szél.}
			\line {Az ember mindig jobbat remél.}
			\line {Porból lettem s porrá leszek,}
			\line {Félek, hogy a ködbe veszek.}
                }
                \hspace #1.0
        }
}
