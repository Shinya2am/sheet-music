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
  title = \markup \fontsize #5 \bold "M6"
  subtitle = \markup \fontsize #2 \italic "(Capo = 4f)"
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

% --- intro ---
musicIntro = {
  \key c \major
  \time 4/4
  \mark \markup \box "intro"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsIntro = \chordmode {
  c1 | a:m | d2:m g | a1:m |
}

% --- A1 ---
musicAone = {
  \key c \major
  \time 4/4
  \mark \markup \box "A1"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsAone = \chordmode {
  c1 | e:m | a:m | d2:m g |
  c1 | e:m | a2:m d:m | g2 c |
}

% --- B1 ---
musicBone = {
  \key c \major
  \time 4/4
  \mark \markup \box "B1"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | \break
  b4 b b b | \bar "||"
  \improvisationOff
}

chordsBone = \chordmode {
  a2:m e:m | f g | a2:m e:m | f g |
  a2:m e:m | f g | a2:m e:m |
  f4 g a2:m |
}

% --- C1 ---
musicCone = {
  \key c \major
  \time 4/4
  \mark \markup \box "C1"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | \bar "||"
  \improvisationOff
}

chordsCone = \chordmode {
  c1 | a:m | d:m | c |
  e:m | a:m | f | g |
  g1 |
}

% --- A2 ---
musicAtwo = {
  \key c \major
  \time 4/4
  \mark \markup \box "A2"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \bar "|."
  \improvisationOff
}

chordsAtwo = \chordmode {
  c1 | e:m | a:m | d2:m g |
  c1 | e:m | a2:m d:m | g4 d:m c2 |
  c1 | e:m | a2:m d:m | g4 d:m c2 |
}

% --- 全体出力 ---
\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \chordsIntro
      \chordsAone
      \chordsBone
      \chordsCone
      \chordsAtwo
    }
    \new Staff {
      \musicIntro
      \musicAone
      \musicBone
      \musicCone
      \musicAtwo
    }
  >>
  \layout {
    \context {
      \Score
      \override RehearsalMark.self-alignment-X = #LEFT
    }
  }
}