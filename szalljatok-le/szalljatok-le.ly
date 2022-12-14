\version "2.12.1"

\header {
	title = "Szálljatok le"
	tagline = "Engraved by LilyPond - https://vmiklos.hu/ly"
}

\score {
	<<
	\relative c''
	{
		\time 4/4
		g4. f8 e4 e4 | e4. d8 c4 c4 | a'8 a4. g8 f4. | e4. f8 g4 r4 |
		g4 f4 e8 e4. | e4. d8 c4 c4 | a'4 a4 g8 f4. | e4. f8 g4 r4 |
		f4 f4 e4 d4 | e4 e4 d4 c4 | d4 d4 c4 b4 | c4 d4 e4 r4 |
                d4 c4 b4 c8( b8) | a4 a4 a4 r4
	}
	\addlyrics {
		Száll- ja- tok le, száll- j- tok le ka- rá- cso- nyi an- gya- lok,
		Zör- ges- se- tek má- ma es- te min- den pi- ciny ab- la- kot.
		Pa- lo- tá- ba és kuny- hó- ba nagy ö- rö- met vi- gye- tek,
		Bol- dog- sá- gos ün- ne- pet.
	}
	>>
	% avoid the indent in the first line
	\layout{indent = 0\cm}
}
