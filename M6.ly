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
  \key e \major
  \time 4/4
  \mark \markup \box "intro"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsIntro = \chordmode {
  e1 | cis:m | fis2:m b | cis1:m |
}

% --- A1 ---
musicAone = {
  \key e \major
  \time 4/4
  \mark \markup \box "A1"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \bar "||"
  \improvisationOff
}

chordsAone = \chordmode {
  e1 | gis:m | cis:m | fis2:m b |
  e1 | gis:m | cis2:m fis:m | b2 e |
}

% --- B1 ---
musicBone = {
  \key e \major
  \time 4/4
  \mark \markup \box "B1"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | \break
  b4 b b b | \bar "||"
  \improvisationOff
}

chordsBone = \chordmode {
  cis2:m gis:m | a b | cis2:m gis:m | a b |
  cis2:m gis:m | a b | cis2:m gis:m |
  a4 b cis2:m |
}

% --- C1 ---
musicCone = {
  \key e \major
  \time 4/4
  \mark \markup \box "C1"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | \bar "||"
  \improvisationOff
}

chordsCone = \chordmode {
  e1 | cis:m | fis:m | e |
  gis:m | cis:m | a | b |
  b1 |
}

% --- A2 ---
musicAtwo = {
  \key e \major
  \time 4/4
  \mark \markup \box "A2"
  \improvisationOn
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \break
  b4 b b b | b b b b | b b b b | b b b b | \bar "|."
  \improvisationOff
}

chordsAtwo = \chordmode {
  e1 | gis:m | cis:m | fis2:m b |
  e1 | gis:m | cis2:m fis:m | b4 fis:m e2 |
  e1 | gis:m | cis2:m fis:m | b4 fis:m e2 |
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