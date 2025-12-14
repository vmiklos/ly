\version "2.12.1"

\header {
	title = "Mennyből az angyal"
	tagline = "Engraved by LilyPond - https://vmiklos.hu/ly"
}

\score {
	<<
	\relative c'
	{
		\time 4/4
		% original: https://csecsy.hu/system/files/2019-04/mennybol_az_angyal.pdf
		% this is tweaked to be nicer on a trumpet
		\key c \major
		c4 c8 b8 c4 g4 | e'4 e8 d8 e4 c4 | e4 a4 g2 | e4 a4 g2 |
		g4 g8 a8 g4 e4 | f4 f8 g8 f4 d4 | e4 d4 c2 | e4 d4 c2
	}
	\addlyrics {
	  	Menny- ből az an- gyal el- jött hoz- zá- tok, pász- to- rok, pász- to- rok!
		Hogy Bet- le- hem- be si- et- ve men- vén lás- sá- tok, lás- sá- tok.
	}
	>>
	% avoid the indent in the first line
	\layout{indent = 0\cm}
	%\midi{}
}
