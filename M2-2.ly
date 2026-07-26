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
  title = \markup \fontsize #5 \bold "M2 後半"
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

% --- Part 2 (Cm x 36) ---
musicPartLatter = {
  \key c \minor
  \time 4/4
  \mark \markup \box "Section 1"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \bar "|."
  \improvisationOff
}

chordsPartLatter = \chordmode {
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
  c1:m | c:m | c:m | c:m |
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
      \chordsPartLatter
    }
    \new Staff {
      \musicPartLatter
    }
  >>
  \layout {
    \context {
      \Score
      \override RehearsalMark.self-alignment-X = #LEFT
    }
  }
}
