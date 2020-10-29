// creator  : C:\ARCHIV~1\BLACKI~1\BGII-S~1\WEIDU.EXE (version 125)
// argument : AGOAKINT.DLG
// game     : .
// source   : ./override/AGOAKINT.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~AGOAKINT~

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~<NO TEXT>~ #2419 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1 /* ~<NO TEXT>~ #2419 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @1 /* ~<NO TEXT>~ #2419 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @1 /* ~<NO TEXT>~ #2419 */
  IF ~~ THEN EXIT
END

IF ~True()
~ THEN BEGIN 4 // from:
  SAY @2 /* ~Look! Look! It is those who aid Loron! Slay them!~ #62902 */
  IF ~~ THEN EXIT
END
