\version "2.18.2"

\header {
  title = "A Lovely Night"
  subtitle = "From “La La Land”"
  instrument = "For 2 Voices, 2 Pianos"
  arranger = "Arranged by Benson"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \minor
  \time 4/4
  \tempo 4=60
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.
  
}

verseSopranoVoice = \lyricmode {
  % Lyrics follow here.
  
}

bassVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  
}

verseBassVoice = \lyricmode {
  % Lyrics follow here.
  
}

rightPianoI = \relative c'' {
  \global
  % Music follows here.
  
}

leftPianoI = \relative c' {
  \global
  % Music follows here.
  
}

rightPianoII = \relative c'' {
  \global
  % Music follows here.
  
}

leftPianoII = \relative c' {
  \global
  % Music follows here.
  
}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  midiInstrument = "choir aahs"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "choir aahs"
} { \clef bass \bassVoice }
\addlyrics { \verseBassVoice }

pianoIPart = \new PianoStaff \with {
  instrumentName = "Piano I"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \rightPianoI
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \leftPianoI }
>>

pianoIIPart = \new PianoStaff \with {
  instrumentName = "Piano II"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \rightPianoII
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \leftPianoII }
>>

\score {
  <<
    \sopranoVoicePart
    \bassVoicePart
    \pianoIPart
    \pianoIIPart
  >>
  \layout { }
  \midi { }
}
