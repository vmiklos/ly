\version "2.12.1"

\header {
	title = "Mivel én vagyok"
	tagline = "Engraved by LilyPond - https://vmiklos.hu/ly"
}

\score {
	<<
	\relative c'
	{
		\time 4/4
		% flute
	  	% \key g \major
		% g'4 e8 b4 e8 g8 e8 | a4 fis8 b,4 fis'8 a8 fis8 |
		% b4 g8 e4 g8 b8 g8 | c4 a8 fis4 a8 b8 a8 |
		% b2. b8 a8 | b2. b8 a8 | b1
		% trumpet
	  	\key a \major
		a'4_\markup { \italic Trombita } fis8 cis4 fis8 a8 fis8 | b4 gis8 cis,4 gis'8 b8 gis8 |
		cis4 a8 fis4 a8 cis8 a8 | d4 b8 gis4 b8 cis8 b8 |
		cis2. cis8 b8 | cis2. cis8 b8 | cis1
	}
	>>
	%\midi{}
}
