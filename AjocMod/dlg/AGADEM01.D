// creator  : C:\ARCHIV~1\BLACKI~1\BGII-S~1\WEIDU.EXE (version 125)
// argument : AGADEM01.DLG
// game     : .
// source   : ./override/AGADEM01.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~AGADEM01~

IF ~NumberOfTimesTalkedTo(0)
!Global("AG1000FirstVisit","GLOBAL",1)
~ THEN BEGIN 0 // from: 7.1
  SAY @1 /* ~Haha, greetings smaller one. What would you be wanting of Ademoth?~ #62734 */
  IF ~~ THEN REPLY @2 /* ~How is it such a creature should reside in an inn?~ #62735 */ GOTO 1
  IF ~!Global("AGOgreSlag","GLOBAL",2)
~ THEN REPLY @3 /* ~Leave me be Ogre.~ #62736 */ DO ~SetGlobal("AGOgreSlag","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Why not? I am respected, for my kind, and I have never done anyone any harm who didn't deserve it.~ #62737 */
  IF ~~ THEN REPLY @5 /* ~I suppose. What brings you to Athkatla anyway?~ #62738 */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6 /* ~I am here looking after an old friend. He recently ran into some trouble.~ #62739 */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7 /* ~Actually, now I come to think of it, you could be the people he need. He needs escorting, to his home. He is incredibly rich and you may find this paying well.~ #62740 */
  IF ~~ THEN REPLY @8 /* ~Sounds interesting, where may I find your friend?~ #62741 */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 7.0 3.0
  SAY @9 /* ~Excellent. He is trying hard to find the strong adventuring type to protect him in the main Government Centre building.~ #62742 */
  IF ~~ THEN REPLY @10 /* ~Thank you, I'll be on my way.~ #62743 */ DO ~SetGlobal("AGTooManyFuckingGlobals","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1
  SAY @11 /* ~The people here are pathetic. So intolerant.~ #62744 */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @12 /* ~If it weren't for the cowled wizards, I would consider killing you. Speak to me if you feel less pathetic.~ #62745 */
  IF ~~ THEN EXIT
END

IF ~!NumberOfTimesTalkedTo(0)
!Global("AG1000FirstVisit","GLOBAL",1)
!Global("AGSaveLoronNo","GLOBAL",1)
!Global("AG1000FirstVisit","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY @13 /* ~You speak again?~ #62746 */
  IF ~Global("AGTooManyFuckingGlobals","GLOBAL",1)
~ THEN REPLY @14 /* ~Where is your friend again?~ #62747 */ GOTO 4
  IF ~Global("AGOgreSlag","GLOBAL",1)
~ THEN REPLY @15 /* ~Sorry for my insulting you earlier, I have changed my intolerant ways.~ #62748 */ DO ~SetGlobal("AGOgreSlag","GLOBAL",2)
~ GOTO 0
END

IF ~Global("AG1000FirstVisit","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY @16 /* ~Greetings.~ #62749 */
  IF ~!Global("AGTooManyFuckingGlobals","GLOBAL",1)
~ THEN REPLY @17 /* ~Are you Ademoth?~ #62750 */ GOTO 9
  IF ~Global("AGTooManyFuckingGlobals","GLOBAL",1)
~ THEN REPLY @18 /* ~Ademoth! Terrible news!~ #62751 */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @19 /* ~Yes, I am he. Why do you seek me?~ #62752 */
  IF ~~ THEN REPLY @20 /* ~I found a letter to Loron at his shrine, and it led me to you. I have some bad news...~ #62753 */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 8.1
  SAY @21 /* ~What has happened?~ #62754 */
  IF ~~ THEN REPLY @22 /* ~We were ambushed at your friend's shrine by Corpae.~ #62755 */ DO ~SetGlobal("AG1000FirstVisit","GLOBAL",2)
~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @23 /* ~Oh dear. I knew he shouldn't have left Athkatla.~ #62756 */
  IF ~~ THEN REPLY @24 /* ~Is there any way I can help?~ #62757 */ GOTO 12
  IF ~~ THEN REPLY @25 /* ~I was just letting you know so you could go rescue him.~ #62758 */ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 14.0 13.1 11.0
  SAY @26 /* ~If you wish, I could teleport you to Corpae's old shrine. I am certain he will be there.~ #62759 */
  IF ~~ THEN REPLY @27 /* ~Sure, It's the quickest and easiest way.~ #62760 */ DO ~SetGlobal("AGSaveLoronYes","GLOBAL",1)
~ GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @28 /* ~You do not want to help?~ #62761 */
  IF ~~ THEN REPLY @29 /* ~No, I am sick of Loron and his crap.~ #62762 */ DO ~SetGlobal("AGSaveLoronNo","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY @30 /* ~I suppose I will - I still have my payment to collect!~ #62763 */ GOTO 12
END

IF ~Global("AGSaveLoronNo","GLOBAL",1)
~ THEN BEGIN 14 // from:
  SAY @31 /* ~You are back. Are you willing to help save loron yet?~ #62764 */
  IF ~~ THEN REPLY @32 /* ~Ok, let's do it.~ #62765 */ DO ~SetGlobal("AGSaveLoronNo","GLOBAL",0)
SetGlobal("AGSaveLoronYes","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY @33 /* ~No not really, sorry.~ #62766 */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0
  SAY @34 /* ~Ok, get ready. I will try not to be *too* rough with you!~ #62767 */
  IF ~~ THEN DO ~StartCutScene("agcavar1")
StartCutSceneMode()
~ EXIT
END
