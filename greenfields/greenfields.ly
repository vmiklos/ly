\version "2.12.1"

\header {
	title = "Greenfields"
	subtitle = "The Brothers Four"
	composer = "Terry Gilkyson - Rich Dehr - Frank Miller"
	tagline = "Engraved by LilyPond - http://vmiklos.hu/ly"
}

#(set-global-staff-size 16)

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
		a2.:m d:m a:m e a4.:m a:m d:m d:m a:m a:m e e
		a:m a:m d:m d:m a:m a: e e f f
		g g c c a a d:m d:m g g
		c c e e a:m a:m d:m d:m a:m a:m
		e e f f a:m a:m d:m d:m e e f f f f
		f f c c f f f f f f c c
		a:m a:m a:m a:m d:m d:m d:m d:m a:m a:m d:m d:m
		f f e e a:m a:m d:m d:m a:m a:m e e
		a:m a:m d:m d:m a:m a:m e e f f g g
		c c a a d:m d:m g g a:m a:m e e
		a:m a:m d:m d:m a:m a:m e e a:m a:m d:m d:m a:m a:m e e a:m5.15
	}
	\tempo 4. = 120
	{
		\clef "G_8"
		\time 6/8
		r2. r r r
		\repeat volta 2 {
			a4.( a8) b a | e' d'4 r4. | r4. c'8 a c' | b4 r8 r4. |
			a4.( a8) b a | g' f'4( f') f'8 | e'8 c'4. d'8 e'8 | d'4 r8 r4. | a'4.( a'8) b' a' |
			b' b'4( b') a'8 | g' g'4. a'8 g' | a'4. r | f'4.( f'8) g' f' | g' g'4 r f'8 |
			e' d' c'4. d'8 | e'4. r | a r8 g'8 fis' | f'8 a4 r b8 | c'2.( |
			e4.) d'4 b8 | a2.( | a) | r | r
		}
		r4 a'8 a'4 g'8 | a'4.( a'4) g'8 |
		a'4 g'8( g') f' g' | e'4. r | a'4 a'8 a'4 g'8 | a'8 a'4( a') g'8 | a'4 g'8( g') f' g' | e'4. r |
		r4 b'8 c''4 b'8 | c''4. r4 b'8 | c''8 b' a'4. g'8 | f'4. r | e'8 c'4. d'8 e' | d' d'4 r4. |
		d'8 b4. c'8 d' | e'4. r4 e8 | a4.( a8) b a | e' d'4 r4. | r c'8 a c' | b4. r |
		a4.( a8) b a | g'8 f'4 r f'8 | e'8 c'4. d'8 e' | d'4. r | r4 a'8( a') b' a' | b' b'4 r a'8 |
		g'8 g'4. a'8 g'8 | a'4. r | r4 f'8( f') g' f' | g' g'4 r f'8 | e'8 d'4. c'8 d' | e'4. r |
		a4. r8 g' fis' | f' a4( a) b8 | c'2.( | e4.) d'4 b8 | a4. r | r2. | r | r | r \bar "|."
	}
	\addlyrics {
		Once there were green- fields, kissed by the sun
		Once there were val- leys where riv- ers used to run Once there were
		blue skies with white clouds high a- bove Once they were part of an
		ev- er- last- ing love We were the lov- ers who strolled
		through green- fields I'll nev- er know what
		made you run a- way How can I keep search- ing when dark clouds hide the day
		I on- ly know there's noth- ing here for me Noth- ing in this wild word
		left for me to see But I'll keep on wait- ing 'til you re- turne
		I'll keep on wait- ing un- til the day you learn You can't be hap- py while
		your heart's on a roam You can't be hap- py un- til you bring it home
		Home to the green- fields and me once a- gain
	}
	\addlyrics {
		Green- fields are gone now, parched by the sun
		Gone from the val- leys where riv- ers used to run Gone with the
		cold wind that swept in- to my heart Gone with the lov- ers who
		let their dreams de- part Where are the green- fields that we
		used to roam
	}
	>>
	\midi{}
	% avoid the indent in the first line
	\layout{indent = 0\cm}
}
