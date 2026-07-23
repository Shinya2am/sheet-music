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
  title = \markup \fontsize #5 \bold "M4bc"
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

% --- 歌1 ---
musicSongOne = {
  \key e \minor
  \time 4/4
  \mark \markup \box "歌1"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | b b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsSongOne = \chordmode {
  e1:m | e:m | e:m | e:m | a2:m b:7 |
  e1:m | e:m | a:m | b:7 | a:m | b:7 |
}

% --- 間奏 (Interlude) ---
musicInterlude = {
  \key e \minor
  \time 4/4
  \mark \markup \box "Interlude"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsInterlude = \chordmode {
  e1:m | e:m | e:m | e:m |
  e1:m | b:7 | b:7 |
}

% --- 歌2 ---
musicSongTwo = {
  \key e \minor
  \time 4/4
  \mark \markup \box "歌2"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \bar "|."
  \improvisationOff
}

chordsSongTwo = \chordmode {
  e1:m | e:m | e:m | b:7 |
  e1:m | e:m | a:m | b:7 | a:m | b:7 |
  a1:m | b:7 | a:m | b:7 | a:m | b:7 |
  a1:m | b:7 |
  e1:m | e:m | e:m | e:m |
}

% --- 全体出力 ---
\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \chordsSongOne
      \chordsInterlude
      \chordsSongTwo
    }
    \new Staff {
      \musicSongOne
      \musicInterlude
      \musicSongTwo
    }
  >>
  \layout {
    \context {
      \Score
      \override RehearsalMark.self-alignment-X = #LEFT
    }
  }
}