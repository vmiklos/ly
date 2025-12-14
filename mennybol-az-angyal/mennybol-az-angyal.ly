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
		\key f \major
		f4 f8 e8 f4 c4 | a'4 a8 g8 a4 f4 | a4 d4 c2 | a4 d4 c2 |
		c4 c8 d8 c4 a4 | bes4 bes8 c8 bes4 g4 | a4 g4 f2 | a4 g4 f2
	}
	\addlyrics {
	  	Menny- ből az an- gyal el- jött hoz- zá- tok, pász- to- rok, pász- to- rok!
		Hogy Bet- le- hem- be si- et- ve men- vén lás- sá- tok, lás- sá- tok.
	}
	>>
	% avoid the indent in the first line
	\layout{indent = 0\cm}
}
