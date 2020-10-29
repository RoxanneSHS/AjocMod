// creator  : C:\ARCHIV~1\BLACKI~1\BGII-S~1\WEIDU.EXE (version 125)
// argument : AGOAKBOS.DLG
// game     : .
// source   : ./override/AGOAKBOS.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~AGOAKBOS~

IF ~True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~So, you killed the scouts at the cave entrance, and the team of elite fighters I sent through the portal, and you still struggle through? How impressive.~ #62885 */
  IF ~~ THEN REPLY @2 /* ~You are impressed by me slaying your brothers? How disturbing!~ #62886 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~More dwarfs! Must I kill the entire Oak Fist clan?!~ #62887 */ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Disturbing? Their corpses will be fed to the great fire pit in Corpae's name, and he will grow stronger.~ #62888 */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5 /* ~His strength feeds us. He supports us and we support him. Fair no?~ #62889 */
  IF ~~ THEN REPLY @6 /* ~You support a crook. He will betray you in the end.~ #62890 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 8.0 2.0
  SAY @7 /* ~Oh no, we have already betrayed *him*.~ #62891 */
  IF ~~ THEN REPLY @8 /* ~How? Maybe we could work together?~ #62892 */ GOTO 4
  IF ~~ THEN REPLY @9 /* ~Ah, you truthfully dislike Corpae? That is good news.~ #62893 */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.0
  SAY @10 /* ~Haha, no, because *you* are part of the plan already!~ #62894 */
  IF ~~ THEN REPLY @11 /* ~This is going to be bad right?~ #62895 */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @12 /* ~For you yes. We have inside information. We know of your Godly heritage.~ #62896 */
  IF ~~ THEN REPLY @13 /* ~Must my father always come into to this?!~ #62897 */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @14 /* ~Yes, because our sources have informed us that if we kill you and throw you into Corpae's fiery pit of sacrafice, he will be overcome by your godly essence and will perish.~ #62898 */
  IF ~~ THEN REPLY @15 /* ~There must be another way...~ #62899 */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @16 /* ~Oh no, we have looked into other options. Brothers, slay them!~ #62900 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.1
  SAY @17 /* ~No you mustn't. Our support for Corpae must endure.~ #62901 */
  IF ~~ THEN REPLY @6 /* ~You support a crook. He will betray you in the end.~ #62890 */ GOTO 3
END
