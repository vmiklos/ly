\version "2.12.1"

\header {
	title = "Keresd meg a lányt"
	composer = "Zene és szöveg: Ákos"
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
		%e2:m b:m e1:m5.15 e2:m e:m b:m b:m e:m e:m
		%b:m b:m e:m e:m b:m b:m e:m e:m
		%b:m b:m e:m e:m b:m b:m e1:m
		%e1:m5.15 e1:m5.15 g2 g2 d2 d2 e:m e:m
		%b:m b:m c c d d g g d d
		%g g d d e:m e:m
		%b:m b:m c c a:7 a:7 d d d d
		%e:m e:m b:m b:m e:m e:m b:m b:m a:m a:m b:m b:m e:m e:m
		%b:7 b:7 b:7 b:7 e:m e:m e:m e:m d d d d g g
		%b:7 b:7 c c d d c c
		%d d c c d1 g1
		a2:m a:m g g c c e:sus4 e:sus4 a:m a:m
		g g c c d d a:m a:m g g
		c c e:sus4 e:sus4 a:m a:m g g c c
		d d a:m a:m g g c c e:sus4 e:sus4
		a:m a:m g g c c d d a:m a:m g g
		c c e:sus4 e:sus4 a:m a:m g g c c d d
		a:m a:m a:m a:m a:m a:m a:m a:m g g g g g g g g
		f f f f d:m d:m d: d:m e e e e e e e1:m5.15
		a2:m a:m a:m a:m a:m a:m a:m a:m
		g g g g g g g g f f
		f f d:m d:m d:m d:m e e e1:5.15 e2 e e1:5.15
	}
	\tempo 4 = 144
	{
		\clef "G_8"
		\time 4/4
		c'4 c' c' c' | b8 g r4 r r8 g8 | e' d'4. c'4 e'8 d'( | d') b r4 r a8 b | c' a4 a4. a8 b8 |
		b4 g r8 a4 g8 | g4 r4 r2 | r2 r4 r8 e8 | c'4 c' c'8 b c' b( | b4.) g8 r4 g |
		e' d' c' e'8 d'( | d') b r4 r b8 b | c'4 a8 a4. c'4 | b g r8 a4 g8 | g4 r r2 |
		r r4 a | c' c' c'8 c' b c' | b2 g4 g8 g | e'4 d'8 c'4. e'4 | d'4. b8 r4 b |
		c'8 a a a4. c'4 | b g r a8 g | g4 r r fis8( g | a4) r r e8 e | c' c' c'4 r r8 c' | b4 g g g |
		e'8 d' c' c'4. e'8 d'( | d'4) b8 b b b4. | c'4 a8 a a c'4. | b4 g r8 a4 g8 | g4 r r fis8( g | a4) r r2 |
		c'2 c' | c'4 r r2 | c'8( b4.) c'2 | c'4 r8 c' e'4 d'8 c' | d'2 b4 r | r1 | r1 | r2 r4 b |
		c'8( b4.) c'8( b4.) | c'4 r r2 | c'8( b4.) c'8( b4.) | c'4 r r c'8 a| b2 b2(| b2.)( gis4)| e2 r| r r4 r8 a|
		c' c' c' b c'4 r | r1 | c'8 c' c' b c'4 r | r r8 c' c'4 e' |
		d' b8 b4. b4 | r1 | r1 | r2 r4 c'8 b | c' c' c' b c'( b4.) |
		c'4 r r2 | c'4.( c'8)( c'2) | r c'8 c' a( b) | r1 | r2 r8 gis4 gis8 | e4 r4 r2 | r1
	}
	%\addlyrics {
		% workaround because \skip 5 won't work
		%\skip 1 \skip 1 \skip 1 \skip 1 \skip 1
		%I'm sit- ting here in the bor- ing room It's just an- oth- er rain- y Sun- day
		%af- ter- noon I'm wast- ing my time I got noth- ing to do I'm hang- ing a- round I'm
		%wait- ing for you But noth- ing ev- er hap- pens And I won- der
		%I'm I wond- der how I won- der why Yes- ter- day you told me 'bout the
		%blue blue sky And all that I can see is just a yel- low lem- on tree I'm
		%turn- ing my head up and down I'm turn- ing turn- ing turn- ing turn- ing
		%turn- ing a- round And all that I can see is just an- oth- er lem- on tree
		%Da  da da da da da da da  da da da da da da da da  da da da da
		%I- so- la- tion is not good for me I- so- la- tion I don't want to
		%sit on the lem- on tree All that I can see, and all that I can
		%see, and all that I can see Just a yel- low lem- on tree
	%}
	>>
	\midi{}
	% avoid the indent in the first line
	\layout{indent = 0\cm}
}
%\markup {
%	\fill-line {
%		\hspace #1.0
%		\column {
%			\line {(2. versszak) I'm driving around in my car}
%			\line {I'm driving too fast, I'm driving too far}
%			\line {I'd like to change my point of view}
%			\line {I feel so lonely, I'm waiting for you}
%			\line {But nothing ever happens and I wonder}
%			\line {(refrén) I wonder how, I wonder why...}
%			\line { \musicglyph #"space" }
%			\line {I'm sitting here, I miss the power}
%			\line {I'd like to go out taking a shower}
%			\line {But there's a veavy cloud in my head}
%			\line {I feel so tired, Put myself into bed}
%			\line {While nothing ever happens and I wonder}
%		}
%		\hspace #2
%		\column {
%			\line {Isolation is not good for me...}
%			\line { \musicglyph #"space" }
%			\line {(3. vszak) I'm steppin' around in the desert of joy}
%			\line {Baby anyhow I'll get another toy}
%			\line {And everything will happen and you wonder}
%			\line { \musicglyph #"space" }
%			\line {I wonder how, I wonder why}
%			\line {Yesterday you told me 'bout the blue blue sky}
%			\line {And all that I can see, and all that I can see,}
%			\line {and all that I can see}
%			\line {Is just a yellow lemon-tree}
%		}
%		\hspace #1.0
%	}
%}
