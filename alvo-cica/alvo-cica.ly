\version "2.12.1"

\header {
	title = "Alvó cica"
	tagline = "Engraved by LilyPond - https://vmiklos.hu/ly"
}

\score {
	<<
	\relative c'
	{
		\time 2/4
		e8 e8 d8 d8 | e8 e8 d8 d8 |
		\repeat volta 2 {
			e4 d8 d8
		}
		e8 e8 d8 d8 | c8 c8 c4
	}
	\addlyrics {
		El- a- ludt az ö- reg ci- ca
		játsz- ha- tunk
		de ha föl- kel fut- ha- tunk!
	}
	>>
}
