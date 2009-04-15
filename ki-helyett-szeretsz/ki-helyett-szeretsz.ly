\version "2.12.1"

\header {
	title = "Ki helyett szeretsz?"
	subtitle = "Zene és szöveg: Ákos"
	tagline = "Engraved by LilyPond - http://vmiklos.hu/ly"
}

#(set-global-staff-size 14.5)

replaceCN =  #(define-music-function (parser location new) (markup?) #{\once \override ChordNames.ChordName #'stencil =    #(lambda (grob) (grob-interpret-markup grob $new)) #})
BmsusA = \markup {Hm \super "omit3"/A}
EmsusNine = \markup {E \super "sus9"}
CaddNine = \markup {C \super "add9"}

\score {
	<<
	\chords {
		\germanChords
		e1:sus4 g e:m \replaceCN \BmsusA b:m
		e:sus4 g e:m \replaceCN \BmsusA b:m
		e:sus4 \replaceCN \EmsusNine e:sus9 a:m9 \replaceCN \EmsusNine e:sus9
		\replaceCN \CaddNine c a:sus4 b a:m9 a:m9
		e:sus4 g e:m \replaceCN \BmsusA b:m
		e:sus4 g e:m \replaceCN \BmsusA b:m
		e:sus4 \replaceCN \EmsusNine e:sus9 a:m9 \replaceCN \EmsusNine e:sus9
		\replaceCN \CaddNine c a:sus4 b a:m9 a2:m9 e:m
	}
	\tempo 4 = 85
	\relative c'
	{
		\key g \major
		\time 4/4
		e8.
		^\markup \fret-diagram #"f:2;6-o;5-o;4-2-2;3-2-3;2-o;1-o;"
		e16( e8) e8 e16 d e8 r4 | e8 e e16 e8 e16 e8 e( b'4) |
		b8 a g16 g8 fis16 fis g e8 r8. e16 | fis8
		^\markup \fret-diagram #"f:2;5-o;4-4-3;3-4-4;2-o;1-2-1;"
		fis16 e fis8 g16 fis( fis4) g16( fis e fis) |
		e16 e8. e16 e d e( e16) e8. r4 | e16 e8. e16 d8. e8 b'4 b8 |
		b16 g8. g16 fis8. fis8 g16 fis( fis8) e | fis fis16 fis( fis8) fis16 fis( fis) fis8. r4 |
		e16 e e8 e16 e8 e16 e8 e4 r8 | r4 e4
		^\markup \fret-diagram #"f:2;6-o;5-o;4-4-2;3-4-3;2-o;1-o;"
		\times 2/3 {e8 e8. e16} e16 e8. |
		r4
		^\markup \fret-diagram #"f:2;6-o;5-o;4-4-2;3-4-3;2-o;1-o;"
		g16 g8 e16 g16 g8. g16 g8. | r4 g16 fis e fis( fis) fis8. g16 fis e fis |
		\repeat volta 2 {
			e2.
			^\markup \fret-diagram #"f:2;6-x;5-3-2;4-2-1;3-o;2-3-3;1-x;"
			g16 fis e fis | e2.
			^\markup \fret-diagram #"f:2;4-o;3-2-1;2-3-2;1-o;"
			g16 fis e fis |
			d4 dis8 b( b4) g'16 fis e fis |
		}
		\alternative {
			{ e4 d8 b8( b4) g'16 fis e fis }
			{ e4 d8 b8( b4) r4 }
		} \bar "||"
		r8. e16 e8 e e e16 d e4 | e8 e e16 e8. d8 e b'4 |
		b8 a16 g( g8) g a16 g8 g16 g8 g | fis16 fis8 fis16 fis8 e16 fis( fis) fis8. r4 |
		e8 e16 e( e8) e e e r4 | e8 e \times 2/3 { e e d } e8. b'16( b4) |
		b16 g8 g16( g8) g g g g g16 g | fis8 fis fis e16 fis( fis) fis8. r4 |
		e16 e e8 e16 e8 e16 e8 e4 r8 | r4 e4 \times 2/3 { e8 e8. e16 } e16 e8. |
		r4 g16 g8 e16 g g8. g16 g8. | r4 g16 fis e fis( fis) fis8. g16 fis e fis |
		\repeat volta 2 {
			e2. g16 fis e fis | e2. g16 fis e fis |
			e4 dis8 b( b4) g'16 fis e fis |
		}
		\alternative {
			{ e4 d8 b8( b4) g'16 fis e fis }
			{ e4 d8 b8( b4) r4 }
		} \bar "|."
	}
	\addlyrics {
		Lágy vagy és i- de- gen. Hoz- zám re- pülsz a szél- lel.
		Á- lom te- rem a sze- me- den, Ha mel- let- tem al- szol el. ó
		Le- szek ne- ked az ég- bolt. Le- szek ne- ked bár- mi, Ha
		le- hunyt sze- med en- ge- di a tes- te- det cso- dál- ni.
		Ki he- lyett sze- retsz te en- gem? Modd, kit látsz te ben- nem?
		Le- het, hogy nem az va- gyok, a- ki- re vár- tál: Nem az a- ki
		hív Nem az, a- ki vár Nem az, ki- vel
		éb- red- tél Nem az, ki- vel ál- mod- tál Nem az, a- ki ál- mod- tál...

		U- tol- sót lob- ban a nyár. Az- tán ki- al- szik vég- képp.
		Ar- co- don most fa- kó a bá- nat a- kár egy ré- gi tér- kép.
		Mit sze- ret- nél jo- ban? An- gyal le- gyek vagy fér- fi?
		Sza- vak nél- kül szó- lok hoz- zád. A szí- ved biz- tos ér- ti.
		Ki he- lyett sze- retsz te en- gem? Mondd, kit látsz te ben- nem?
		Le- het, hogy nem az va- gyok, a- ki- re vár- tál: Nem az a- ki
		hív Nem az a- ki vár Nem az, ki- vel
		éb- red- tél Nem az, ki- vel ál- mod- tál... Nem az, a- ki ál- mod- tál...
	}
	>>
	\midi{}
	% avoid the indent in the first line
	\layout{indent = 0\cm}
}
