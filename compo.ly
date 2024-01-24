\sourcefilename "en/included/display-predefined-fretboards.ly"
\sourcefileline 0
\include "predefined-guitar-fretboards.ly"
\version "2.16.0"
\header {
  title = "Compo #1"
  composer = "by: CALMAD"
}
mychords = \chordmode {
  d1:m f1:7  
}

chordsline = {
  \mychords
  }
}
\score {
  
  <<

  \new ChordNames {
    \chordsline
  }
  \new FretBoards {
    \chordsline
  }
  \chords{
    d1:m f1:7 d1:m f1:7
  }
  %\fixed c'' {
  %  \repeat volta 2 { c2 f }
  %  R1
  %  \repeat volta 2 { g2 c }
  %}
  \new Staff {
    \relative c' {
      \key d \minor
  %  \repeat volta 2 {
    %  c2 c4 c4 f2 f4 f4 c2 c4 c4 
    % \alternative {
      %  \volta 1 { f2 f4 f4 }
      % \volta 2 { f2 f4 f4 }
      % }
      %}
      \repeat volta 2 {
      \bar ".|:"
      c2 c4 c4 f2 f4 f4 c2 c4 c4 f2 f4 f4 
      }
    %  \bar ":|."
    }
  }
  \new Staff {
    \relative {
    \clef bass
    c4 e g8 b a c 
    c4 g b' c,,
    }
  }
  >>
    \layout {}
    \midi {}
}
