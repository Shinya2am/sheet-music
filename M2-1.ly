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
  title = \markup \fontsize #5 \bold "M2 前半"
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

% --- Part 1 (Cm x 22) ---
musicPartOne = {
  \key c \minor
  \time 4/4
  \mark \markup \box "Section 1"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsPartOne = \chordmode {
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
  c1:m | c:m |
}

% --- Part 2 (Cm 上昇 x 8) ---
musicPartTwo = {
  \key c \minor
  \time 4/4
  \mark \markup \box "Cm (上昇)"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsPartTwo = \chordmode {
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
}

% --- Part 3 (Cm x 8) ---
musicPartThree = {
  \key c \minor
  \time 4/4
  \mark \markup \box "Section 3"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsPartThree = \chordmode {
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
}

% --- Outro (Cm x 8) ---
musicOutro = {
  \key c \minor
  \time 4/4
  \mark \markup \box "outro"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \bar "|."
  \improvisationOff
}

chordsOutro = \chordmode {
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
}

% --- 全体出力 ---
\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \chordsPartOne
      \chordsPartTwo
      \chordsPartThree
      \chordsOutro
    }
    \new Staff {
      \musicPartOne
      \musicPartTwo
      \musicPartThree
      \musicOutro
    }
  >>
  \layout {
    \context {
      \Score
      \override RehearsalMark.self-alignment-X = #LEFT
    }
  }
}