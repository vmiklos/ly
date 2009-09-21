\version "2.12.1"

\header {
	title = "Ha itt lennél velem"
	subtitle = "Republic"
	composer = "Bódi László"
	tagline = "Engraved by LilyPond - http://vmiklos.hu/ly"
}

#(set-global-staff-size 18)

\score {
	<<
	\chords {
		\germanChords
		d2 d d a
		b:m b:m g d a b:m
		g d a b:m fis:7 fis:7 g g
		g g d d a a d d g g
		d d g g d d a a
		d d a a d d g g
		d d g g d d a a d d a d
	}
	\tempo 4 = 144
	{
		\clef "G_8"
		\key d \major
		\time 4/4
		r2 r4 r8 a | fis' fis'4 e'8 e'4 e'8 fis' |
		e' d' cis' d' r4 r8 d' | b'4 b'8 b' a'4 d'8 d' | a'4 g'8 fis'4 d'8 d' d' |
		b'4 b'8 a'4. d'8 a'( | a') a' g' fis'( fis'4.) fis'8 | fis'4 g' fis' e'8 d'( | d'4) r2 r8 d' \bar "||"
		r2 r4 r8 a8 | d'4 d' d' a8 e' | r2 r4 r8 e' | fis' fis'4 fis'8 fis'4 d'8 g' | r2 r4 r8 g'8 |
		fis' a'4. a'4 a'| a'8( d'4) r8 r2 | fis'4 a' g' fis'8 e' | r2 r4 r8 e'8 |
		d'4 d' d' a8 e'8 | r2 r4 r8 e' | fis'8 fis'4 fis'8 fis'4 d'8 g'8 | r2 r4 r8 g' |
		fis' a'4. a'4 a' | a'8( d'8) r4 r2 | fis'4 a' g' fis'8 e' | r2 d'4 cis'8 d'8 | r1 | r2 r4 r8 a8 \bar "|."
	}
	\addlyrics {
		Én men- nék ve- led, de te
		nem a- ka- rod Csak né- zek u tá- nad az ab- la- kon A- hogy egy
		kis- fi- ú, ha nem hi- szi- el Hogy most- már men- ni kell A
		Ha itt len- nél ve- lem, és fog- nád a két ke- zem Én
		nem en- ged- ném el töb- bé már so- sem Ha
		itt len- nél ve- lem, és fog- nád a két ke- zem Én
		nem en- ged- ném el töb- bé már so- sem, ked- ve- sem A
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
			\line {Én mennék veled, de te nem akarod,}
			\line {Csak nézek utánad az ablakon,}
			\line {Ahogy egy kisfiú, ha nem hiszi el,}
			\line {Hogy most már menni kell}
			\line { \musicglyph #"space" }
			\line {A mesének vége, és álmodom,}
			\line {Hogy virág nílik a domboldalon}
			\line {A felhők fölött ragyok a nap,}
			\line {Ha itt lennél velem}
			\line { \musicglyph #"space" }
			\line {Én letörölném a könnyeidet}
			\line {És elmondanám, hogy szép lehet}
			\line {A holnap, hogyha elhiszed,}
			\line {Ha itt lennél velem}
			\line { \musicglyph #"space" }
			\line {Ha itt lennél velem, és fognád a két kezem}
			\line {Én nem engedném el többé már sosem}
			\line {Ha itt lennél velem, és fognád a két kezem}
			\line {Én nem engedném el többé már sosem,}
			\line {kedvesem}
		}
		\hspace #2
		\column {
			\line {A mesének vége és álmodom,}
			\line {Hogy reggel újra felkel a nap}
			\line {Igazat mond és megsimogat}
			\line {Ha itt lennél velem}
			\line { \musicglyph #"space" }
			\line {Mennék vele, de te nem akarod}
			\line {Nézek utánad az ablakon}
			\line {Ahogy egy kisfiú, ha nem hiszi el}
			\line {Hogy most már menni kell}
			\line { \musicglyph #"space" }
			\line {Ha itt lennél velem, és fognád a két kezem}
			\line {Én nem engedném el többé már sosem}
			\line {Ha itt lennél velem, és fognád a két kezem}
			\line {Én azt kérem megint, hogy hazudj még nekem,}
			\line {kedvesem}
			\line { \musicglyph #"space" }
			\line {Ha itt lennél velem, és fognád a két kezem}
			\line {Én nem engedném el többé már sosem}
			\line {Ha itt lennél velem, és fognád a két kezem}
			\line {Én nem engedném el!}
		}
		\hspace #1.0
	}
}
