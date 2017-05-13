\version "2.18.2"
\language "english"

\header {
  title = "A Lovely Night"
  subtitle = "From “La La Land”"
  instrument = "For 2 Voices, 2 Pianos and drums"
  arranger = "Arranged by Benson"
}

\paper {
  #(set-paper-size "a4")
}

#(load "swing.scm")

global = {
  \key c \minor
  \time 4/4
  \tempo 4=70
}

sopranoVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  R1 R1 R1 \tempo 4=60 R1 R1 R1 R1 R1 R1 R1
  \tempo 4=134 \repeat unfold 11 { R1 }
  r4 c8\pp c r2
  \repeat unfold 5 { R1 }
  r2 r4 r8 g\mf \key g \major \tempo 4 = 144
  g8 b ds e ds4 r8 e a, c ds e ds4 r8 e
  b ds \times 2/3 { fs e g~} g8 fs a g~ g b4. r4 r8
  g,8 g b ds e ds4 e8 e a, c ds e ds4 r8 e
  b4 r16 ds fs e g8 fs a g b2 r4 r8 d,
  c'8 b c2 e,8 fs~ fs2 r4 r8 d b'4 a b8 d,4 e8~ e4 r fs g
  c8 b c2 e,8 fs~ fs2 r4 r8 d d4 b' r r8 c, b4 b'2 r4
  e,4 r8 fs8 g a g fs e4 d r2 r4 e8 fs g a g fs e4 d r2
  R1 r4 e a r4
  d,4 c e c8 c b4 a d2
}

verseSopranoVoice = \lyricmode {
  % Lyrics follow here.
  Real -- ly?
  You say there's no -- thing here?
  Well, let's make some -- thing clear
  I think I'll be the one to make that call
  And though you look so cute
  In your po -- ly -- es -- ter suit
  You're right, I'd ne -- ver fall for you at all

  And may -- be this ap -- peals
  To some -- one not in heels
  Or to a -- ny girl who feels
  There's some chance for ro -- mance
  But, I'm frank -- ly fee -- ling no -- thing

  Or it could be less than no -- thing
  That's right
  What a waste of a love -- ly night
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
  c,4 af'8 g af2 c,8 d~ d2 r4 r8 bf g'4 f g8 bf,4 c8~ c2 d4 ef
  af8 g af2 c,8 d~ d2 r4 r8 bf bf4 g' r2 g,4 g' r2
  c4 r8 bf c c,4 d8~ d2 r4 r8 a' bf4 a8 bf~ bf4 bf,8 c~ c4 r d ef
  af8 g af2 c,8 d~ d2 r2 bf4 g'2. af,4 f'8 ef f( ef) d ef~ ef1 R1
  \key g \major
  R1 R1 R1 r4 r8 g\pp g g r4 R1 r2 r8 a a r R1 R1 R1
  r4 \ottava #1 d'\mf^\markup{"whistle"} e fs g2 \ottava #0 r R1
  \ottava #1 a2. c4 d2 fs4 d d2 r4 d ds2 \ottava #0 r2
  R1 r2 d,,4 b e, r r2 r2 e'4 b a g c g fs r4 r2 d4 c e c8 c b4 a d2
}

verseBassVoice = \lyricmode {
  % Lyrics follow here.
  The sun is near -- ly gone
  No lights are turn -- ing on
  A sil -- ver shine that stretch -- es to the sea

  We've stum -- bled on a view
  That's tai -- lor -- made for two
  What a shame those two are you and me

  Some o -- ther girl and guy
  Would love this swirl -- ing sky
  But there's on -- ly you and I
  And we've got no shot

  This could ne -- ver be
  You're not the type for me
  And there's not a spark in sight
  What a waste of a love -- ly night

  But you'll call?
  It's wool

  \repeat unfold 12 { \skip 4 }

  Is that so?
  Good to know
  So you a -- gree?
  What a waste of a love -- ly night
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

sebRPI = \relative c' {
  \tripletFeel 8 {
    r8 <ef af>~ q4 r c8 d~
    d4 r8 <d f g bf>4 q8~ q4
    <d g bf>2 r2 r4 } \times 2/3 { c8 e g } \tripletFeel 8 {
    c8 <bf e,>~ q4
    r8 <ef, af>~ q4 r \appoggiatura { af16 ef } c8 d~
    d4 r8 <f af d>4 q8~ q4
    <ef g ef'>4 r8 ef <bf g'>4 r <d g c>4
  } \times 2/3 { d8 g c d f g b d g }
  \tripletFeel 8 {
    r8 <ef,, g c>~ q2.
    r8 <d g c>~ q4 bf'8 <d, g bf>~ q4
    R1
    r8 f8 } \times 4/5 { c'16 af g f e } \tripletFeel 8 {
      ef8 c' <c, ef>4
      <c ef af>2 r8 <c' ef g af> r4
      r4 \appoggiatura g16 <af, d af'>2 <af d g>4
      r8 <bf d g>8~ q2.
      c8 af f'4 r8 <af, c f>~ q4
      r8 ef' d d c c bf bf a <c g'> e c <e fs b> <d fs b d>4.
  }

}

sebRPII = \relative c' {
  <af c ef>1 r4 bf'' c d ef1
  r4 c d ef f1
  r4 d ef f g2 d c b
  <g,, c ef>1 R1 <bf d a'> R1 R1
  r2 bf''4 b d2 g
  R1 R1
  r4 <g,, c e> \tripletFeel 8 { <b b'>8 <d d'>4. }
}

bassPartI = \relative c, {
  \clef bass
  f4 g af a bf f d bf
  ef g bf b c g e c
  f, c' f, af bf f' bf d
  ef d ef d g, g a b
  af bf ef, af, bf d f bf
  g a bf g af bf c af
  f g af f bf bf, c d
  ef c' bf af af g f bf,
  ef bf ef bf' a a, d d
}

bassPartII = \relative c {
  \key g \major
  g4 a b g a e a, a e' e d d g e d b
  g b d g a e a, a e' e d a' g b a g
  a b c cs d c b a g d g b, c e g c
  a e c a d a d fs, g b d g b fs b, ds
  c e g c, d b' a d, c d e c d b' a d,
  c e g c d c b a g e c g' d a' d2
}

rightPianoI = \relative c'' {
  \global
  % Music follows here.
  \introRPI
  \slowVerseRPI
  \sebRPI
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
  \sebRPII
}

leftPianoII = \relative c' {
  \global
  % Music follows here.
  \introLPII
  \slowVerseLPII
  \bassPartI
  \bassPartII
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
