// creator  : C:\ARCHIV~1\BLACKI~1\BGII-S~1\WEIDU.EXE (version 125)
// argument : AGMAG01.DLG
// game     : .
// source   : ./override/AGMAG01.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~AGMAG01~

IF ~True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Well, look who we have here. Our old allies may have plotted to destroy Corpae, but thankfully you killed thembefore they could.~ #62883 */
  IF ~~ THEN DO ~SetGlobal("Anarchy","LOCALS",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2 /* ~Anyway, not to delay, meet our new allies. These cannot be swayed with words and they *will* destroy you. See you in hell.~ #62884 */
  IF ~~ THEN EXIT
END
