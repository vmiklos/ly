\version "2.12.1"

\header {
	title = "Lemon Tree"
	subtitle = "Fool's Garden"
	composer = "P. Freudentaler-V. Hinkel"
	tagline = "Engraved by LilyPond - http://vmiklos.hu/ly"
}

#(set-global-staff-size 15)

% a bit complex macro, writing '5.15' after a chord displays an arpeggio
% next to it
% the \override removes vertical space between lines
arpeggioGuitar = \markup \override #'(baseline-skip . -2 ) {
	\musicglyph #"space"
	\center-column {
		\center-column {
			\musicglyph #"scripts.arpeggio"
			\musicglyph #"scripts.arpeggio"
			\musicglyph #"scripts.arpeggio"
		}
		\musicglyph #"scripts.arpeggio.arrow.M1"
	}
}

chExceptionMusic = {
	<c ees g c''>1-\markup {m \super \arpeggioGuitar }
	<c e g c''>1-\markup { \super \arpeggioGuitar }
}

chExceptions = #( append
	(sequential-music-to-chord-exceptions chExceptionMusic #t)
	ignatzekExceptions)

\score {
	<<
	\chords {
		\germanChords
		\set chordNameExceptions = #chExceptions
		e2:m b:m e1:m5.15 e2:m e:m b:m b:m e:m e:m
		b:m b:m e:m e:m b:m b:m e:m e:m
		b:m b:m e:m e:m b:m b:m e1:m
		e1:m5.15 e1:m5.15 g2 g2 d2 d2 e:m e:m
		b:m b:m c c d d g g d d
		g g d d e:m e:m
		b:m b:m c c a:7 a:7 d d d d
		e:m e:m b:m b:m e:m e:m b:m b:m a:m a:m b:m b:m e:m e:m
		b:7 b:7 b:7 b:7 e:m e:m e:m e:m d d d d g g
		b:7 b:7 c c d d c c
		d d c c d1 g1
	}
	\tempo 4 = 144
	{
		\clef "G_8"
		\key g \major
		\time 4/4
		\repeat volta 2 {
			\teeny e'4 <g' b'>4 b4 <d' fis' a'>4 | <e' g' b'>4 r4 r4 \normalsize b4 |
			b8 b4. e'4 e'8 e'8 | a4 a8 d'4. r8 b8 | b8 b8 b8 b8 b8 a8 g8 g8 |
			a4 a8 b4. r8 b8 | b8 b8 b8 e'4 e'8 e'4 | a8 a8 a8 d'4. r8 a8 | a8 a8 g8 a4. a4 |
			a8 a8 g8 a4. b4 | a8 g8 a8 g8 a8 b4. | r2 r8 b8 b4 | a8 g8( e4) r2 |
		}
		\alternative {
			{ r2 r4 b4 }
			{ r2_\markup { \italic Refrén } r4 b4 }
		}
		b4 c'8 d'4. r8 b8 | d'4 e'8 a4. r4 | g8 g g g g g g a |
		b8 d'4 b4. b4 | a4 g8 g4. g4 | a4 r8 a g g g g | a8 b4. b2 | r2 r4 r8 b8 |
		b8 b c' d'4. r4 | d'8 e'4 a4. r8 a | g g g g g g g a |
		b8 b d' b4. d'4 | d' c'8 c'4. b4 | b4. a8 a a a g | b g4. b4 r | r1 | \bar "||"
		b4 r r2 | r8 b c' d'4. c'4 | b8 e'4 b4. r4 |
		r8 b c' d'4 c'8 b4 | e'8 b4 a4. r4 | r b a g8 e8( e4) r4 r2 | \bar "||"
		r4 b2 c'4 | c'2 b | b4 a a g8 e8( e4) r r2 | r4 a2 b4 | b2 a | g4 g a g |
		r8 b8 b a b a b4 \bar "||" d'4 c'8 c'4. b4 | a r r d' | e' d'8 d'4. b4 |
		a4 r r d' | e' d'8 g'4. b4 | a2 <a c'>8 <a c'> <a c'> <b d'> | <a c'> <g b>4. <g b>2 \bar "|."
	}
	\addlyrics {
		% workaround because \skip 5 won't work
		\skip 1 \skip 1 \skip 1 \skip 1 \skip 1
		I'm sit- ting here in the bor- ing room It's just an- oth- er rain- y Sun- day
		af- ter- noon I'm wast- ing my time I got noth- ing to do I'm hang- ing a- round I'm
		wait- ing for you But noth- ing ev- er hap- pens And I won- der
		I'm I wond- der how I won- der why Yes- ter- day you told me 'bout the
		blue blue sky And all that I can see is just a yel- low lem- on tree I'm
		turn- ing my head up and down I'm turn- ing turn- ing turn- ing turn- ing
		turn- ing a- round And all that I can see is just an- oth- er lem- on tree
		Da  da da da da da da da  da da da da da da da da  da da da da
		I- so- la- tion is not good for me I- so- la- tion I don't want to
		sit on the lem- on tree All that I can see, and all that I can
		see, and all that I can see Just a yel- low lem- on tree
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
			\line {(2. versszak) I'm driving around in my car}
			\line {I'm driving too fast, I'm driving too far}
			\line {I'd like to change my point of view}
			\line {I feel so lonely, I'm waiting for you}
			\line {But nothing ever happens and I wonder}
			\line {(refrén) I wonder how, I wonder why...}
			\line { \musicglyph #"space" }
			\line {I'm sitting here, I miss the power}
			\line {I'd like to go out taking a shower}
			\line {But there's a veavy cloud in my head}
			\line {I feel so tired, Put myself into bed}
			\line {While nothing ever happens and I wonder}
		}
		\hspace #2
		\column {
			\line {Isolation is not good for me...}
			\line { \musicglyph #"space" }
			\line {(3. vszak) I'm steppin' around in the desert of joy}
			\line {Baby anyhow I'll get another toy}
			\line {And everything will happen and you wonder}
			\line { \musicglyph #"space" }
			\line {I wonder how, I wonder why}
			\line {Yesterday you told me 'bout the blue blue sky}
			\line {And all that I can see, and all that I can see,}
			\line {and all that I can see}
			\line {Is just a yellow lemon-tree}
		}
		\hspace #1.0
	}
}
