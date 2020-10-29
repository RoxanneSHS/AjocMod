// creator  : C:\ARCHIV~1\BLACKI~1\BGII-S~1\WEIDU.EXE (version 125)
// argument : AGBADGUY.DLG
// game     : .
// source   : ./override/AGBADGUY.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~AGBADGUY~

IF ~NumberOfTimesTalkedTo(0)
!Global("AGCaveVisit","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Loron! This meeting is over! Your coming with us! We knew you would leave the protection of the Cowled Wizards at some time.~ #62768 */
  IF ~~ THEN DO ~~ EXTERN ~AGLORON2~ 0
END

IF ~!NumberOfTimesTalkedTo(0)
!Global("AGVillageHeld","GLOBAL",4)
!Global("AGCaveVisit","GLOBAL",1)
!AreaCheck("AG1500")
~ THEN BEGIN 1 // from:
  SAY @2 /* ~That is it! Mages! Curse this dump! Take the worm to OUR domain. We'll get our answers there.~ #62769 */
  IF ~~ THEN DO ~SetGlobal("AGVillageHeld","GLOBAL",1)
~ EXIT
END

IF ~Global("AGVillageHeld","GLOBAL",4)
!Global("AGCaveVisit","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~How's that Loron? Your precious domain is frozen, your followers are no more.~ #62770 */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @4 /* ~Your are powerless.~ #62771 */
  IF ~~ THEN DO ~StartCutScene("AGBadGo")
StartCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @5 /* ~<NO TEXT>~ #2419 */
  IF ~~ THEN DO ~~ EXTERN ~AGLORON2~ 0
END

IF ~Global("AGCaveVisit","GLOBAL",1)
~ THEN BEGIN 5 // from:
  SAY @6 /* ~Still you follow me? Why do you wish to be involved in Loron and I's dispute?~ #62772 */
  IF ~~ THEN REPLY @7 /* ~You are a crook Corpae. I will destroy your followers and your power.~ #62773 */ GOTO 6
  IF ~~ THEN REPLY @8 /* ~You froze Loron's shrine, and kidnapped him. That is good enough reason to try and catch you.~ #62774 */ GOTO 6
  IF ~~ THEN REPLY @9 /* ~I am becoming involved because I want my reward from Loron!~ #62775 */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.1 5.0
  SAY @10 /* ~You don't know about Loron's past, and what he did to *me*. Leave now and live, or else I shall unleash the rest of the Oak Fist on you!~ #62776 */
  IF ~~ THEN REPLY @11 /* ~Set your dwarfs on me, I will slay my way through them to your vile presence.~ #62777 */ GOTO 7
  IF ~~ THEN REPLY @12 /* ~Then maybe I should leave...~ #62778 */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 8.0 6.1 6.0
  SAY @13 /* ~Have fun trying! Followers, release the dwarfs and allow me to escape!~ #62779 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("agcoolco")
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @14 /* ~You are willing to kill an old man for money? You will die by the Oak Fist!~ #62780 */
  IF ~~ THEN REPLY @15 /* ~Not if I kill you first!~ #62781 */ GOTO 7
END
