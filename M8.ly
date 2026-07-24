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
  title = \markup \fontsize #5 \bold "M8"
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

% --- A セクション ---
musicA = {
  \key c \major
  \time 4/4
  \mark \markup \box "A"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsA = \chordmode {
  c2 c:1/b | a1:m | f2 c | g1 |
  c2 e:m | a2:m f:maj7 | c2 g | a1:m |
}

% --- B セクション ---
musicB = {
  \key c \major
  \time 4/4
  \mark \markup \box "B"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsB = \chordmode {
  e1:m | a:m | e:m | a:m |
  f1 | c | c2 g | a1:m |
}

% --- C セクション ---
musicC = {
  \key c \major
  \time 4/4
  \mark \markup \box "C"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsC = \chordmode {
  c1 | f | f2 g | c1 |
  c1 | f | g4 a:m g2 | c1 |
}

% --- D セクション ---
musicD = {
  \key c \major
  \time 4/4
  \mark \markup \box "D"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \bar "|."
  \improvisationOff
}

chordsD = \chordmode {
  c2 g | a2:m g | f2 g | c1 |
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
    }
    \new Staff {
      \musicA
      \musicB
      \musicC
      \musicD
    }
  >>
  \layout {
    \context {
      \Score
      \override RehearsalMark.self-alignment-X = #LEFT
    }
  }
}