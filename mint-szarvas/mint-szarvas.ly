\version "2.12.1"

\header {
	title = "Mint szarvas"
	tagline = "Engraved by LilyPond - https://vmiklos.hu/ly"
}

\score {
	<<
	\tempo 4 = 144
	\relative d'
	{
		\key g \major
		\time 4/4
		r4 d4 g4 a4 | b1 | r4 a4 g4 e8 d8( | d1) |
		r4 d4 g4 fis8 g8( | g1) | r4 a4 b4 c8 b8( | b8) a8( a2.) |
		r4 a4 b4 c4 | d1 | r8 c8 c8 b8 a4 g8 b8( | b1) |
		r4 r8 a8 g4 e4 | d1 | r4 d4 g4 fis8 g8( | g1)
	}
	\addlyrics {
	  	Mint szar- vas hűs for- rás u- tán,
		szí- vem e- ped, vá- gyik Hoz- zád,
		úgy men- nék én az é- lő Úr fe- lé,
		mi- kor jössz el, hogy el- vi- gyél?
	}
	>>
	\midi{}
	% avoid the indent in the first line
	\layout{indent = 0\cm}
}
