// creator  : C:\ARCHIV~1\BLACKI~1\BGII-S~1\WEIDU.EXE (version 125)
// argument : AGBOSS.DLG
// game     : .
// source   : ./override/AGBOSS.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~AGBOSS~

IF ~True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You know, I have killed a lot of people.~ #62782 */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2 /* ~A lot of fools, like you. What do you think makes you special?~ #62783 */
  IF ~~ THEN REPLY @3 /* ~Stop trying to intimidate me.~ #62784 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~Will you fight this time? Or are you going slip out through that portal?~ #62785 */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5 /* ~I don't even need to try. You *are* pathetic.~ #62786 */
  IF ~~ THEN REPLY @6 /* ~That's it, arm yourself old fool!~ #62787 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7 /* ~Most amusing. Why would I need to arm myself, when I can slay you in a few spells time?~ #62788 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("agminion")
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @8 /* ~Don't you worry. I'm going to fight alright.~ #62789 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("agbossgo")
~ EXIT
END
