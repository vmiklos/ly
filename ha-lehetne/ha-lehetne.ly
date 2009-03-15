\version "2.12.1"

\header {
	title = "Ha lehetne"
	% subtitle = ""
	composer = "Sillye Jenő (szöveg) - Pirositz György (zene)"
	tagline = "Engraved by LilyPond - http://vmiklos.hu/ly"
}

% modify suspended 4th chords (so that a:4 displays A^4 as expected)
% Exception music is chords with markups
chExceptionMusic = {
	<c e f>1-\markup { \super 4 }
}

% Convert music to list and prepend to existing exceptions.
chExceptions = #( append
	( sequential-music-to-chord-exceptions chExceptionMusic #t)
	ignatzekExceptions)

\score {
	<<
	\chords {
		\germanChords
		\set chordNameExceptions = #chExceptions
		d2 g:6 a:6 g:6
		d g:6 a:6 g:6
		d e:m a \skip 2
		d e:m a:4 a
	}
	\tempo 4 = 95
	\relative c''
	{
		\key d \major
		\time 2/4
		r4 a8 a8 | g4 a4 | r4 a4 | g8( a8) r4
		r4 a8 a8 | g8 a4. | r4 a4 | g8( a8) r4 \break
		r4 fis8 fis8 | g8 fis8 d8( e8) | e4 r4 | r2
		r4 fis8 fis8 | g8 fis8 d8( e8) | e4 r4 | r2 | \bar "||" \break
		r4_\markup { \italic Solo } fis'8 g8 | a4 g8 fis8 | e8 fis8 e8 d8 | e4 r4
		fis8 g8 a4 | b4 a4 | cis,4 d4 | e4 r4 \break
		d4 d'4 | cis4 b4 | a4 b8 a8 | g4 e4
		fis8 g8 a4 | b4 a4 | cis,4 d4 | e4 r4
	}
	\addlyrics {
		Ha le- het- ne, men- nék,
		visz- sza so- sem jön- nék,
		ad- dig ke- res- né- lek,
		a- med- dig csak é- lek.
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
			\line {Ha lehetne, mennék,}
			\line {Vissza sosem jönnék,}
			\line {addig keresnélek,}
			\line {ameddig csak élek.}
			\line { \musicglyph #"space" }
			\line {Ha lehetne, szállnék,}
			\line {vissza sosem vágynék,}
			\line {felszállnék az égbe,}
			\line {csillagok fényébe.}
		}
		\hspace #2
		\column {
			\line {Megkereslek Téged,}
			\line {elmondom majd Néked,}
			\line {Te vagy az egyetlen}
			\line {egész életemben.}
			\line { \musicglyph #"space" }
			\line {Hogyha Veled járnék,}
			\line {másra sosem vágynék,}
			\line {Rád nevetnék szépen,}
			\line {boldog legyél vélem.}
		}
		\hspace #1.0
	}
}
