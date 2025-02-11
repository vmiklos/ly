\version "2.12.1"

\header {
	title = "Béke napja"
	tagline = "Engraved by LilyPond - https://vmiklos.hu/ly"
}

\score {
	<<
	\relative c'
	\tempo 4 = 144
	{
		\time 4/4
		% flute
	  	%\key f \major
		%a'2 a2 | g2 a4 g4 f1( | f1) |
		%a2 a2 | bes2 c4 d4 | c1( | c1) |
		%c2 c2 | cis2 a4 g4 | f2 f4 g4 | a2 g2 |
		%a2 a2 | g2 a4 g4 f1( | f1)
		% trumpet
	  	\key g \major
		b'2 b'2 | a'2 b'4 a'4 g'1( | g'1) |
		b'2 b'2 | c''2 d''4 e''4 | d''1( | d''1) |
		d''2 d''2 | dis''2 b'4 a'4 | g'2 g'4 a'4 | b'2 a'2 |
		b'2 b'2 | a'2 b'4 a'4 g'1( | g'1)
	}
	>>
	%\midi{}
}
