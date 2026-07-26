\version "2.26.0"

\header {
  title = "Untitled"
  composer = "Composer"
}

\score {
  \relative c' {
    c4
  }

  \layout {}
  \midi {}
}\version "2.22.0"

\header {
  title = \markup \fontsize #5 \bold "M7 4"
  tagline = ##f
}

\paper {
  paper-width = 210\mm
  paper-height = 297\mm
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 15\mm
  right-margin = 15\mm
  indent = 0\mm
}

% --- Section A (Cm x 16) ---
musicA = {
  \key c \minor
  \time 4/4
  \mark \markup \box "A"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsA = \chordmode {
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
}

% --- Section B (Cm x 16) ---
musicB = {
  \key c \minor
  \time 4/4
  \mark \markup \box "B"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsB = \chordmode {
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
}

% --- Section C (Cm x 8) ---
musicC = {
  \key c \minor
  \time 4/4
  \mark \markup \box "C"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsC = \chordmode {
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
}

% --- Section D (Cm x 8) ---
musicD = {
  \key c \minor
  \time 4/4
  \mark \markup \box "D"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsD = \chordmode {
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
}

% --- Section E (Cm x 8) ---
musicE = {
  \key c \minor
  \time 4/4
  \mark \markup \box "E"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsE = \chordmode {
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
}

% --- Section F (Cm x 16) ---
musicF = {
  \key c \minor
  \time 4/4
  \mark \markup \box "F"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \bar "|."
  \improvisationOff
}

chordsF = \chordmode {
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
}

% --- 全体出力 ---
\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \chordsA
      \chordsB
      \chordsC
      \chordsD
      \chordsE
      \chordsF
    }
    \new Staff {
      \musicA
      \musicB
      \musicC
      \musicD
      \musicE
      \musicF
    }
  >>
  \layout {
    \context {
      \Score
      \override RehearsalMark.self-alignment-X = #LEFT
    }
  }
}
