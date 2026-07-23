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
  title = \markup \fontsize #5 \bold "M5ab"
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

% --- Intro (前奏) ---
musicIntro = {
  \key e \minor
  \time 4/4
  \mark \markup \box "Intro"
  \improvisationOn
  b4 b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsIntro = \chordmode {
  e1:m |
  e1:m | e:m | b:7 | e:m |
  e1:m | e:m | b2:7 e:m |
}

% --- 歌1 ---
musicSongOne = {
  \key e \minor
  \time 4/4
  \mark \markup \box "歌1"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsSongOne = \chordmode {
  e1:m | e:m | e:m | b2:7 e:m |
  e1:m | e:m | e:m | b2:7 e:m |
}

% --- 間奏 (Interlude) ---
musicInterlude = {
  \key e \minor
  \time 4/4
  \mark \markup \box "間奏"
  \improvisationOn
  % Em x8
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  % Gm x4
  \key g \minor
  b4 b b b | b b b b | b b b b | b b b b | \break
  % Fm x4
  \key f \minor
  b4 b b b | b b b b | b b b b | b b b b | \break
  % Gm x4
  \key g \minor
  b4 b b b | b b b b | b b b b | b b b b | \break
  % Fm x4
  \key f \minor
  b4 b b b | b b b b | b b b b | b b b b | \break
  % Gm x4
  \key g \minor
  b4 b b b | b b b b | b b b b | b b b b | \break
  % Fm x4
  \key f \minor
  b4 b b b | b b b b | b b b b | b b b b | \break
  % Gm x4
  \key g \minor
  b4 b b b | b b b b | b b b b | b b b b | \break
  % Fm x4
  \key f \minor
  b4 b b b | b b b b | b b b b | b b b b | \break
  % Gm x4
  \key g \minor
  b4 b b b | b b b b | b b b b | b b b b | \break
  % Dm x3 + Dm,Gm
  \key d \minor
  b4 b b b | b b b b | b b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsInterlude = \chordmode {
  e1:m | e:m | e:m | e:m | e:m | e:m | e:m | e:m |
  g1:m | g:m | g:m | g:m |
  f1:m | f:m | f:m | f:m |
  g1:m | g:m | g:m | g:m |
  f1:m | f:m | f:m | f:m |
  g1:m | g:m | g:m | g:m |
  f1:m | f:m | f:m | f:m |
  g1:m | g:m | g:m | g:m |
  f1:m | f:m | f:m | f:m |
  g1:m | g:m | g:m | g:m |
  d1:m | d:m | d:m | d2:m g:m |
}

% --- 歌2 ---
musicSongTwo = {
  \key g \minor
  \time 4/4
  \mark \markup \box "歌2"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | \bar "|."
  \improvisationOff
}

chordsSongTwo = \chordmode {
  g1:m | g:m | g:m | d2:7 g:m |
  g1:m | g:m | g:m | d2:7 g:m |
  g1:m | d2:7 g:m |
}

% --- 全体出力 ---
\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \chordsIntro
      \chordsSongOne
      \chordsInterlude
      \chordsSongTwo
    }
    \new Staff {
      \musicIntro
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