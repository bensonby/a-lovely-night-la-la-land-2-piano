\version "2.18.2"
\language "english"

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
  \tempo 4=70
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.
  R1 R1 R1 \tempo 4=60 R1 R1 R1 R1 R1 R1 R1
}

verseSopranoVoice = \lyricmode {
  % Lyrics follow here.
  
}

bassVoice = \relative c' {
  \global
  \dynamicUp
  \clef treble
  % Music follows here.
  R1 r2 r4 r8 c8
  ef,8 g b16 c b8~ b4 r8
  c8 f, af~ af b16 c b4 r8 r16
  c16 g8 b16 d~ d8 c ef16 d8. f16 ef g8~
  g2 r4 r8 ef,8
  ef8 g b16 c b8~ b4
  c4 f,8 af b8 c16 b~ b4 r
  g16 g g8~ g g ef'16 d8. f16 ef g8~
  g2 r4\fermata
  c,4
}

verseBassVoice = \lyricmode {
  % Lyrics follow here.
  The sun is near -- ly gone
  No lights are turn -- ing on
  A sil -- ver shine that stretch -- es to the sea
  
  We've stum -- bled on a view
  That's tai -- lor -- made for two
  What a shame those two are you and me
}

introRPI = \relative c''' {
  r4 a16 f d bf gs' e cs a g' ef c af
  <g' af, c d>2\arpeggio f
}

introLPI = \relative c' {
  r4 <g bf f'> <fs a e'> <f af ef'>
  bf,1
}

introRPII = \relative c {
  R1 R1
}

introLPII = \relative c {
  R1 R1
}

slowVerseRPI = \relative c' {
  r4 <ef g b>2.\arpeggio
  r4 <f af b>2.\arpeggio
  <g b d>1\arpeggio <g bf d>\arpeggio
  r4 <ef g b>2.\arpeggio
  r4 <f af b>2.\arpeggio
  <g b d>1\arpeggio <g bf d>\arpeggio\fermata
}

slowVerseLPI = \relative c, {
  <ef ef' g c>1 <f f' af c> g2~ g8 c4 bf8
  ef,1
  <ef ef' g c>1 <f f' af c> g2~ g8 c4 bf8
  ef,1\fermata
}

slowVerseRPII = \relative c'' {
  r4 b2.
  f8~ <f af>~ <f af b>2.
  g'8\( b d c ef d f ef
  g4\) r4 r2
  r4 b,,8 c b2
  f8 af b c b2
  g'8\( b d c ef d~ d16 f ef8
  g4\) r4 r2\fermata
}

slowVerseLPII = \relative c {
  R1 R1 R1 r4 ef16\( g bf d g bf8.~ bf4\)
  R1 R1 R1 r4 \clef treble g'16\( d bf g d bf'8.\)\fermata r4
}

rightPianoI = \relative c'' {
  \global
  % Music follows here.
  \introRPI
  \slowVerseRPI
}

leftPianoI = \relative c' {
  \global
  % Music follows here.
  \introLPI
  \slowVerseLPI
}

rightPianoII = \relative c'' {
  \global
  % Music follows here.
  \introRPII
  \slowVerseRPII
}

leftPianoII = \relative c' {
  \global
  % Music follows here.
  \introLPII
  \slowVerseLPII
}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  midiInstrument = "flute"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "flute"
} { \clef bass \bassVoice }
\addlyrics { \verseBassVoice }

pianoIPart = \new PianoStaff \with {
  instrumentName = "Piano I"
  \accidentalStyle Score.modern-voice-cautionary
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
