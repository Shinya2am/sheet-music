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
}\version "2.24.0"

\header {
  title = "M0"
  tagline = ##f
}

% --- コードネームの定義 ---
chordsList = \chordmode {
  % Aパート (Cm x 8小節)
  \repeat unfold 8 { c1:m }
  
  % Bパート (Cm x 12小節)
  \repeat unfold 12 { c1:m }
}

% --- 譜面（リズム＆セクション表示） ---
melody = {
  \clef treble
  \time 4/4
  
  % --- Aパート ---
  \mark \default % 記号 A を自動表示
  R1*8
  \break % Bパートの直前で改行して見やすく
  
  % --- Bパート ---
  \mark \default % 記号 B を自動表示
  R1*12
  \bar "|." % 楽曲の終わりを示す終条線
}

% --- 出力構造 ---
\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f % 同じCmが続いても各小節にコード名を表示
      \chordsList
    }
    \new Staff {
      \melody
    }
  >>
  \layout {
    indent = 0\mm % 1行目のインデントを解除
  }
}