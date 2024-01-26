\sourcefilename "en/included/display-predefined-fretboards.ly"
\sourcefileline 0
\include "predefined-guitar-fretboards.ly"
\version "2.23.0"
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

intro = {d2 d4 d4 | a'2 a4 a4}
verse = {d,2 d4 d4 | f2 f4 f4 | c2 c4 c4}
chorus = {bes'2 bes4 bes4 | f2 f4 f4 | es2 es4 es4 | a2 a4 a4} 
outro = {d1}

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
    \repeat unfold 2 {d1:m a1:m} 
    \repeat unfold 2 {d1:m f1 c1} 
    \repeat unfold 2 {bes1 f1/a es a:m} 
  }
  \new Staff {
    \relative  c'{
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
    }
  }
  \new Staff {
    \relative {
    \clef bass
    \repeat unfold 2 {d4 f a4 e4 | a, c a' f} 
    \repeat unfold 3 {d4 f a4 e4 | a, c a' f} 
    \repeat unfold 4 {d4 f a4 e4 | a, c a' f} 
    }
  }
  >>
    \layout {}
    \midi {}
}
