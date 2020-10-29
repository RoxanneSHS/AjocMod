// creator  : C:\ARCHIV~1\BLACKI~1\BGII-S~1\WEIDU.EXE (version 125)
// argument : AGLORON2.DLG
// game     : .
// source   : ./override/AGLORON2.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~AGLORON2~

IF ~False()
!Global("CorpaeDead","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~So you finally caught up with me, but i am in my domain. My followers here will protect me.~ #62853 */
  IF ~~ THEN EXTERN ~AGBADGUY~ 1
END

IF ~Global("AGLoronArrived","GLOBAL",1)
!Global("AGCaveVisit","GLOBAL",1)
!Global("CorpaeDead","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~I have returned! Your leader is back!~ #62854 */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3 /* ~Ah, it is great to be home, I thank you and your friends greatly.~ #62855 */
  IF ~~ THEN REPLY @4 /* ~It was nothing.~ #62856 */ GOTO 3
  IF ~~ THEN REPLY @5 /* ~I sweated to get you here Loron, there had better be a reward!~ #62857 */ GOTO 3
  IF ~~ THEN REPLY @6 /* ~Doesn't look much like a "village" to me!~ #62858 */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 4.0 2.1 2.0
  SAY @7 /* ~Fear not, you shall be rewarded, what do y-~ #62859 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("agbadari")
SetGlobal("AGLoronArrived","GLOBAL",2)
SetGlobal("AGVillageHeld","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @8 /* ~Sorry for the...lie...I thought I would scare you from escorting me if I said Adilthora was a shrine in the middle of this forest.~ #62860 */
  IF ~~ THEN REPLY @9 /* ~I guess it doesn't matter that much, assuming I get a reward!~ #62861 */ GOTO 3
END

IF ~Global("LoronSpeak","GLOBAL",1)
!Global("AGKillCorpaeCave","GLOBAL",1)
!Global("CorpaeDead","GLOBAL",1)
~ THEN BEGIN 5 // from:
  SAY @10 /* ~You...you came after me! You are a true friend!~ #62862 */
  IF ~~ THEN REPLY @11 /* ~Well, we got kind of worried. It's thanks to Ademoth we found you!~ #62863 */ GOTO 6
  IF ~~ THEN REPLY @12 /* ~We didn't REALLY care about you really, it was the reward, which I think you still owe me that attracted me here.~ #62864 */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1 5.0
  SAY @13 /* ~I know, I know you want your reward. I could see it in your eyes. But...~ #62865 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @14 /* ~...I can't. Not until my shrine is uncursed. I am so weak, I have no one to worship me.  I am barely able to stand.~ #62866 */
  IF ~~ THEN REPLY @15 /* ~Looks like I'm going to have to follow Corpae and his cronies through the portal!~ #62867 */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @16 /* ~You will? Thank you! I feel weak...restore my followers if you suceed in defeating Corpae, and I will be replenished.~ #62868 */
  IF ~~ THEN REPLY @17 /* ~What can you tell me about the enemy?~ #62869 */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @18 /* ~Well, he seems to have escaped deep within these caves, but alas I have not been further than this level.~ #62870 */
  IF ~~ THEN REPLY @19 /* ~Pity, what else do you know?~ #62871 */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @20 /* ~He also seems to have a lot of followers, and is very powerful. Be careful.~ #62872 */
  IF ~~ THEN DO ~SetGlobal("AGKillCorpaeCave","GLOBAL",1)
SetGlobal("LoronSpeak","GLOBAL",2)
~ GOTO 14
END

IF ~~ THEN BEGIN 11 // from:
  SAY @21 /* ~<NO TEXT>~ #2419 */
  IF ~~ THEN EXTERN ~AGBADGUY~ 1
END

IF ~~ THEN BEGIN 12 // from:
  SAY @21 /* ~<NO TEXT>~ #2419 */
  IF ~~ THEN EXTERN ~AGBADGUY~ 1
END

IF ~Global("AGKillCorpaeCave","GLOBAL",1)
!Global("CorpaeDead","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY @22 /* ~Please destroy Corpae soon. He is getting stronger, I feel it.~ #62873 */
  IF ~~ THEN REPLY @23 /* ~I am trying, sorry.~ #62874 */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.0
  SAY @24 /* ~Oh and beware of the Oak Fist. They are ancient Clan of Battle Dwatves, and I am not sure why they aid Corpae.~ #62875 */
  IF ~~ THEN REPLY @25 /* ~Well, thanks for the information. I will return as soon as possible.~ #62876 */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @26 /* ~Please return soon! I feel myself getting weaker, and Corpae getting stronger!~ #62877 */
  IF ~~ THEN EXIT
END

IF ~Global("CorpaeDead","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY @27 /* ~I feel strength returning...Corpae must be dead!~ #62878 */
  IF ~~ THEN REPLY @28 /* ~We tore him apart!~ #62879 */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @29 /* ~Excellent work. I will be forever in your debt. Maybe this reward can compensate for your troubles.~ #62880 */
  IF ~~ THEN REPLY @30 /* ~Thank you!~ #62881 */ DO ~GiveGoldForce(6500)
AddXPObject(Player1,25000)
AddXPObject(Player2,25000)
AddXPObject(Player3,25000)
AddXPObject(Player4,25000)
AddXPObject(Player5,25000)
AddXPObject(Player6,25000)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @31 /* ~Until next time, <CHARNAME>.~ #62882 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
