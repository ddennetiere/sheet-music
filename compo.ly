\sourcefilename "en/included/display-predefined-fretboards.ly"
\sourcefileline 0
\include "predefined-guitar-fretboards.ly"
\version "2.22.0"
\header {
  title = "Compo #1"
  composer = "by: CALMAD"
}
mychords = \chordmode {
  d1:m a1:m  f1 c bes ees f:7
}

chordsline = {
  \mychords
}
%{Block comment
%}

intro = {d4 d8 d8 r8 d8 d8 d8| a'4 a8 a8 r8 a8 a8 a8}
verse = {d4 d8 d8 r8 d8 d8 d8 | f4 f8 f8 r8 f8 f8 f8 | c4 c8 c8 r8 c8 c8 c8 | c4 c8 c8 r8 c8 c8 c8}
chorus = {bes4 bes8 bes8 r8 bes8 bes8 bes8 | ees4 ees8 ees8 r8 ees8 ees8 ees8 | 
          f4 f8 f8 r8 f8 f8 f8 | a4 a8 a8 r8 a8 a8 a8} 
outro = {a8 a8 b g a f d4}

\score{
<<
\new ChordNames {
    \chordsline
  }
  \new FretBoards {
    \chordsline
  }
>>
}

\score {
  <<
  \chords{
    \set chordChanges = ##t 
    \repeat unfold 2 {a1:m d1:m} 
    \repeat unfold 2 {
      \repeat unfold 2 {d1:m f1 c1 c1} 
      \repeat unfold 2 {bes1 es f1:7/a f1:7/a} 
    }
  }
  \new Staff {
    \fixed  c'{
  \tempo 4 = 90
      \key d \minor
      %\sectionLabel "Intro"
      \mark \markup{"Intro"}
      \repeat volta 2 { 
      \repeat unfold 2 {\intro}
      }
      %\sectionLabel "Verse"
      \repeat volta 2 {
      \bar ":|.|:"
      \mark \markup{"Verse"}
      \repeat unfold 2 {\verse}
      }
      %\sectionLabel "Chorus"
      \repeat volta 2 {
      \bar ":|.|:"
      \mark \markup{"Chorus"}
      \repeat unfold 2 {\chorus}
      }
      %\sectionLabel "Verse"
      \repeat volta 2 {
      \bar ":|.|:"
      \mark \markup{"Verse"}
      \repeat unfold 2 {\verse}
      }
      %\sectionLabel "Chorus"
      \repeat volta 2 {
      \bar ":|.|:"
      \mark \markup{"Chorus"}
      \repeat unfold 2 {\chorus}
      }
      \mark \markup{"Outro"}
      \outro
    }
  }
  \new Staff {
    \relative {
    \clef bass
    \key d \minor
    \repeat unfold 2 {d4 f a4 e4 | a, c a' f} 
	\repeat unfold 2{
		\repeat unfold 2 {d4 f a4 e4 | f, c' a f | c' c a' f | c c a' f} 
		\repeat unfold 2 {bes,4 bes bes4 bes4 | ees ees ees ees | a, a a a | a a a a} 
	}
    d1
    }
  }
  >>
    \layout {}
    \midi {}
}
