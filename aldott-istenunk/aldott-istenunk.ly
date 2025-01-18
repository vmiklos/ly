\version "2.12.1"

\header {
	title = "Áldott Istenünk"
	tagline = "Engraved by LilyPond - https://vmiklos.hu/ly"
}

\score {
	<<
	\relative c'
	{
		\time 4/4
		g'2_\markup { \italic Solo } e2 | f8 g8 f8 e8 d8 e8 f8 d8 |
		e4 g4 c,4. d8 | e8 f8 g8 e8 d2 | c1
	}
	>>
}
