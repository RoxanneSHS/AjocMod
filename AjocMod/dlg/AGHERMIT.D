// creator  : C:\ARCHIV~1\BLACKI~1\BGII-S~1\WEIDU.EXE (version 125)
// argument : AGHERMIT.DLG
// game     : .
// source   : ./override/AGHERMIT.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~AGHERMIT~

IF ~True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Wanna see something amazing?~ #62818 */
  IF ~~ THEN REPLY @2 /* ~What?~ #62819 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~No thanks, bye!~ #62820 */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~I can control the Squirrels. *Uncontrolled laughter*.~ #62821 */
  IF ~~ THEN REPLY @5 /* ~You lie.~ #62822 */ GOTO 2
  IF ~~ THEN REPLY @6 /* ~Prove it.~ #62823 */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY @7 /* ~HehahEheHAHiheHEhoHehE....watch this!~ #62824 */
  IF ~~ THEN DO ~SetGlobal("AGSquirrelQuest","GLOBAL",9)
CreateCreatureObject("AGSQUIR",Player1,12,0,0)
CreateCreatureObject("AGSQUIR",Player1,12,0,0)
CreateCreatureObject("AGSQUIR",Player1,12,0,0)
CreateCreatureObject("AGSQUIR",Player1,12,0,0)
SetGlobal("NukeSquirrel","GLOBAL",1)
EscapeArea()
~ EXIT
END
