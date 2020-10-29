// creator  : C:\ARCHIV~1\BLACKI~1\BGII-S~1\WEIDU.EXE (version 125)
// argument : AGDEANO.DLG
// game     : .
// source   : ./override/AGDEANO.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~AGDEANO~

IF ~True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Stop there Deimos. Your thievery has gone too far. It's smackin' time!~ #62802 */
  IF ~~ THEN EXTERN ~AGDEIMOS~ 7
END

IF ~~ THEN BEGIN 1 // from:
  SAY @2 /* ~<NO TEXT>~ #2419 */
  IF ~~ THEN EXTERN ~AGDEIMOS~ 7
END

IF ~False()
~ THEN BEGIN 2 // from:
  SAY @3 /* ~You, my friend, are a fool.~ #62803 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("agridie")
~ EXIT
END
