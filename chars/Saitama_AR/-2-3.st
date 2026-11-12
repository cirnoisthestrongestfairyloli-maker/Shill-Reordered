;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;-------------------------------------------------------------------------------
[Statedef -2]

;===============================================================================
;This CODE was taken from the original saitama char and rare akuma character, a good and old school mugen character
;Many thanks to "Phantom.of.the.Server" creator of rare akuma and many more
;for making these amazing codes, credits to him for the amazing work
;never forget to give credit to the original creators, they take a bunch of time
;to make stuff really good and funtional, this code was edited and change from the
;original code, so it works diferent on this character
;Don't touch anything if you don't know what are you doing.
;===============================================================================

[State -2, hitby]
type = hitby
triggerall = enemy,name != "Anpanman"
trigger1 = !(palno = [11,12])
value = SCA, AA
time = -1
ignorehitpause = 1
[State -2, hitby]
type = hitoverride
triggerall = enemy,name != "Anpanman"
trigger1 = !(palno = [11,12])
attr = SCA, AA, AP, AT
time = -1
[State -2, eye for an eye]
type = nothitby
triggerall = enemy,name != "Anpanman"
trigger1 = !(palno = [11,12])
trigger1 = var(35)
value = SCA, AA, AP, AT
time = -1
ignorehitpause = 1


[State -2, HandsOff]
type = NotHitBy
triggerall=(stateno!=[120,155])
triggerall=stateno!=[5000,5150]
triggerall = 1
trigger1 = !(palno = [11,12])
trigger1=movetype!=H&&var(13)<=5 && var(51) = 0&&var(50) = 0
trigger2=movetype!=H&&var(13)<=10 && var(51) > 0&&var(50) = 0
trigger3=movetype!=H&&var(13)<=20 && var(50) =1
value=  SCA,AA,NA,SA,HA,AP,NP,SP,HP,AT,NT,ST,HT
time=1
IgnoreHitPause = 1
;----------------------------------------------------------------
[State -2, Armor]
type = Helper
trigger1=!NumHelper(60100)
triggerall = !(palno = [11,12])
trigger1=Alive
name="Armor"
ID=60100
StateNo=60100
PauseMoveTime=9999999
SuperMoveTime=9999999

[State -2, VarSet]
type=VarSet
trigger1=stateno=[5000,5150]
triggerall = !(palno = [11,12])
trigger1=!animtime
var(13)=0
[State -2, VarSet]
type=VarSet
triggerall = !(palno = [11,12])
trigger1=var(20)
trigger2=var(13)=8
var(6)=0

[State -2, Damage]
type = LifeAdd
trigger1=var(20)&&StateNo!=[120,155]
triggerall = !(palno = [11,12])
value=-var(20)

[State -2, Armor Reset]
type = VarSet
triggerall = !(palno = [11,12])
trigger1=1
var(20)=0
;Basic:

[State -2, NoGuard]
type = AssertSpecial
trigger1 = 1
flag = NoStandGuard
flag2 = NoCrouchGuard
flag3 = NoAirGuard
ignorehitpause = 1
;Virtual insanity
[State -2, useless]
type = varadd
triggerall = (palno = [11,12])
trigger1 = var(35) > 0
var(35) = 1
[State -2, useless]
type = varset
triggerall = (palno = [11,12])
trigger1 = roundstate != 2 || movecontact
var(35) = 0
[State -2, useless]
type = varset
triggerall = (palno = [11,12])
trigger1 = 1
var(35) = -1
; 
; ;--------------------------------------------------
[state -2,]
type = nothitby
triggerall = numhelper(10015)>=1
trigger1 = stateno !=[120,159]
trigger1 = (palno = [11,12])
value = ,AA,AP,AT

[state -2,]
type = lifeadd
triggerall = numhelper(10015)>=1
triggerall = var(55)
trigger1 = stateno !=[120,159]
trigger1 = stateno !=[5000,5199]
trigger1 = (palno = [11,12])
value = -(Ceil(var(55)*0))
ignorehitpause = 1

;for the 11,12 pallete only
[state -2,]
type = varset
triggerall = (palno = [11,12])
trigger1 = var(55)
var(55) = 0
ignorehitpause = 1


;-------------------------------------------------------

;this helper works for the pallete 11 and 12, you can only activated by holding the start (enter) button and chose character
;wich makes the character inmune to everything
[state -2]
type = Helper
triggerall = numhelper(10015)<=0
triggerall = (palno = [11,12])
;trigger1 = stateno !=[120,159]
trigger1 = MoveType !=H
id = 10015
name = "armor2"
sprpriority = -1
pos = 0,0
postype = p1
stateno = 10015
helpertype = normal
pausemovetime = 0
bindtime = -1
keyctrl = 0
ownpal = 1

;This makes the character have the effect of being invulnerable to some types of protectiles attacks
;this state was taken from rare akuma and modified to work on this character
[State -2]
type = helper
trigger1 = !numhelper(75)
helpertype = normal
stateno = 75
ID = 75
name = "Holinessness"
postype = p1
pausemovetime = 65535
supermovetime = 65535
;-------------------------------------------------------------------------------
;-----------------------------------------------------
[State a]
type = TargetLifeAdd; one punch man
triggerall = NumTarget > 0
trigger1 = (palno = [11,12])
value = -99999999999
absolute = 1
kill = 0
ignorehitpause = 1

[State a]
type = TargetLifeAdd
triggerall = NumTarget > 0
trigger1 = (palno = [11,12])
value = -721438172649817238692179238197264817283712*10298309821098309810982
ID = -1
kill = 1
absolute = 1
ignorehitpause = 1
supermovetime = 9999999999
pausemovetime = 9999999999


; [State -2, Juggle]
; type = assertspecial
; trigger1 = 1
; flag = nojugglecheck
; ignorehitpause = 1
[State -2, ] ;posibility of break oponent guard
type = assertspecial
triggerall = (palno = [11,12])
trigger1 = random < 500
flag = unguardable
ignorehitpause = 1
; [State -2, ]
; type = assertspecial
; trigger1 = 1
; flag = nostandguard
; flag2 = nocrouchguard
; flag3 = noairguard
; ignorehitpause = 1

;No hitby mades by phamtom.of.the.server
[State -2]
type = assertspecial
trigger1 = gethitvar(damage) >= var(39)
flag = noko
ignorehitpause = 1


[State -2]
type = varset
trigger1 = var(39) < life
var(39) = life
ignorehitpause = 1
[State -2]
type = varset
trigger1 = roundstate != 2 && !alive
trigger2 = var(39) < 0
var(39) = 0
ignorehitpause = 1

[State -2, damage]
type = varadd
trigger1 = var(37)
var(39) = var(37)
ignorehitpause = 1
[State -2, damage]
type = varset
trigger1 = 1
var(37) = 0
ignorehitpause = 1

[State -2, damage]
type = varadd
trigger1 = gethitvar(damage) ;&& stateno != 700 && numenemy
var(37) = -gethitvar(damage) / ifelse(gethitvar(hitcount) <= 1, 1, gethitvar(hitcount))
ignorehitpause = 1
[State -2, damage]
type = varset
trigger1 = var(37) < -5
var(37) = -5
ignorehitpause = 1

[State -2, limit]
type = varset
trigger1 = p2movetype = H
var(36) = 0
[State -2, limit]
type = varadd
trigger1 = var(36) && hitshakeover
var(36) = ifelse(var(36) > 0, -1, 1)
[State -2, limit]
type = varadd
trigger1 = var(37)
var(36) = -var(37)
ignorehitpause = 1
[State -2, limit]
type = varset
trigger1 = var(36) > 500 || var(36) < 0 || movetype = A
var(36) = ifelse(var(36) > 10, 10, 0);500
ignorehitpause = 1

[State -2]
type = lifeset
trigger1 = 1
value = var(39)
ignorehitpause = 1
[State -2]
type = lifeset
trigger1 = var(35) = -1
value = lifemax
ignorehitpause = 1

;-------------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
; Mostly SND players for basic movement like jumping and runing and voice clips
;-------------------------------------------------------------------------------
[Statedef -3]

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52
trigger2 = stateno = 106
value = 40, 0

[State -3, Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 40
value = 40, 1

[State -3, sound]
type = PlaySnd
triggerall = time = 1
trigger1 = stateno = 105
trigger2 = stateno = 100
value = 40,2

[State -3, Voice]
type = PlaySnd
triggerall = Time = 1 && Random <= 50
trigger1 = stateno = 40
value = 40, 3
channel = 0

[State -3, Voice dashing]
type = PlaySnd
triggerall = Time = 1 && Random <= 600
trigger1 = stateno = 100
trigger2 = stateno = 105
value = 40, 4

;this will make the character teleport when he gets hit by a combo
[State -3, c -c -c -combo breaker]
type = changestate
value = 1042
trigger1 = movetype = H && alive
trigger1 = !hitshakeover && time = 1
trigger1 = gethitvar(hitcount) > 4 && random < (400 * gethitvar(hitcount))

; [State 40, Voice]
; type = PlaySnd
; triggerall = time = 1 && Random <= 500
; trigger1 = stateno = 42
; trigger2 = stateno = 43
; value = s40,3 ;(random%2) ;+var(12)
; channel = 0

; [State -3, GetHit Snd]
; type = playsnd
; triggerall = alive && time = 1  && Random <= 500
; triggerall = stateno = 5000 || stateno = 5010
; trigger1 = gethitvar(animtype) >= 2 && random < 500
; trigger2 = gethitvar(animtype) = 1 && random < 375
; trigger3 = gethitvar(animtype) = 0 && random < 250
; value = 5000, 0 + (random % 4)
; channel = 0
; ignorehitpause = 1
; 
; [State -3, GetHit Hard Snd]
; type = playsnd
; triggerall = alive && time = 1 && Random <= 500
; trigger1 = (stateno = 5000 || stateno = 5010) && numenemy
; trigger1 = gethitvar(fall) || (enemynear, hitdefattr = SCA, SA, HA)
; trigger2 = (stateno = 5020 || stateno = 5070 || stateno = 5080)
; trigger3 = (stateno = 5050 || stateno = 5100) && (prevstateno != [5000, 5199])
; value = 5001, 0 + (random % 3)
; channel = 0
; ignorehitpause = 1

; Gethit Sounds
[State -2, PlaySnd]
type = PlaySnd
triggerall = gethitvar(damage) <= 45
triggerall = alive
trigger1 = (stateno = 5000) || (stateno = 5010) ;|| (stateno = 5020) || (stateno = 5070)
trigger1 = time = 0
trigger2 = (stateno != 5000) && (stateno != 5010); && (stateno != 5020) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
trigger3 = movetype = H && time = 0
trigger3 = stateno != [120,160]
trigger3 = stateno != [0,51]
value = 5000, random%5
volumescale = 130
channel = 0

[State -2, PlaySnd]
type = PlaySnd
triggerall = gethitvar(damage) > 45
triggerall = gethitvar(damage) <= 109
triggerall = alive
trigger1 = (stateno = 5020) || (stateno = 5070)
trigger1 = time = 0
trigger2 = (stateno != 5020) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
trigger3 = movetype = H && time = 0
trigger3 = stateno != [120,160]
trigger3 = stateno != [0,51]
value = 5000, random%3;5
volumescale = 130
channel = 0

[State -2, PlaySnd]
type = PlaySnd
triggerall = gethitvar(damage) > 109
triggerall = alive
trigger1 = (stateno = 5000) || (stateno = 5010) || (stateno = 5020) || (stateno = 5070)
trigger1 = time = 0
trigger2 = (stateno != 5000) && (stateno != 5010) && (stateno != 5020) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
trigger3 = movetype = H && time = 0
trigger3 = stateno != [120,160]
trigger3 = stateno != [0,51]
value = 5001, random%3
volumescale = 130
channel = 0

[State -3, Auto Recover]
type = changestate
trigger1 = stateno = 5050
trigger1 = time && alive
value = 5040
ctrl = 1

;SND stops
[State -3]
type = StopSnd
trigger1 = stateno = [5000,5200]
channel = 3

;everytime you end your oponent with a supér move this will show up
[State -3, Super Finish]
type = Helper
triggerAll = WinKO
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = 1 && (StateNo = [1400,4999])
trigger1 = var(23) := StateNo
trigger2 = (StateNo = [1400,3099])
trigger2 = var(23) := 3000
trigger3 = (StateNo = [1500,3199])
trigger3 = var(23) := 3100
trigger4 = (StateNo = [1600,3299])
trigger4 = var(23) := 3200
trigger5 = (StateNo = [1701,3399])
trigger5 = var(23) := 3300
trigger6 = (StateNo = [3101,3499])
trigger6 = var(23) := 3400
helperType = Normal
stateNo = 8600
ID = 8600
name = "Super Finish"
posType = left
pos = 160,-120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State 8100, Floor Dust]
type = Explod
triggerall = Time = 1
trigger1 = stateno = 40
anim = 6040
sprPriority = -9
posType = P1
pos = 70, ceil(pos y)
scale = 0.4,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State -3, Landing Dust Explod]
type = Explod
triggerall = Time = 1
trigger1 = stateno = 52
;trigger2 = stateno = 106
anim = 6020
sprPriority = -3
posType = P1
scale = 0.3,0.3
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

;-------------------------------------------------------------------------------

;===============================================================================
;                             Armor controllers
;===============================================================================
[Statedef 10015]
Type = S
VelSet = 0,0
Sprpriority = 2
ctrl=0

[State a]
type=selfstate
trigger1=!ishelper
value=0
[State 1825]
type = assertspecial
trigger1 = 1
flag = invisible

[State a]
Type = Turn
trigger1 = Facing*(Parent,Facing) < 0
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State a]
type = posset
trigger1 = 1
x = root,pos x
y = root,pos y
ignorehitpause = 1

[State a]
type = changeanim
trigger1 = 1
value = root,anim
elem = root,animelemno(0)
ignorehitpause = 1

[State a]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 10016
time = 1
ignorehitpause = 1

[State a]
type = destroyself
;trigger1 = root,stateno=[120,159]
trigger1 = root,MoveType=H
;===============================================================================
[Statedef 10016]
Type = S
VelSet = 0,0
Sprpriority = 2
ctrl=0

[State a]
type=selfstate
trigger1=!ishelper
value=0
[State 1825]
type = assertspecial
trigger1 = 1
flag = invisible

[State a]
type = parentvarset
trigger1 = time = 0
var(55) = GetHitVar(damage)
ignorehitpause = 1

[State a]
Type = Turn
trigger1 = Facing*(Parent,Facing) < 0
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State a]
type = posset
trigger1 = 1
x = root,pos x
y = root,pos y
ignorehitpause = 1

[State a]
type = changeanim
trigger1 = 1
value = root,anim
elem = root,animelemno(0)
ignorehitpause = 1

[State a]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 10016
time = 1
ignorehitpause = 1

[State a]
type = ChangeState
trigger1 = time = 1
value = 10015
ctrl = 0

[State a]
type = destroyself
;trigger1 = root,stateno=[120,159]
trigger1 = root,MoveType=H
;-------------------------------------------------------------------------------
[StateDef 60100]
ctrl=0
physics=N
velset=0
sprpriority=-5

[State 6000, Bind]
type=BindToRoot
trigger1=1
facing=1
pos=0,0

[State 30401];No Bound
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value = 0

[State 0, PosSet]  ;Set the character way below the floor so when they go to there statedef 5150 they
                          ;won't reappear on screen.
type = PosSet
trigger1 = 1
x = -8000000
y = 8000000
ignorehitpause = 1

[State 6000, Hit]
type=ChangeAnim
trigger1=SelfAnimExist(Root,Anim)
value=Root,Anim
elem=Root,AnimElemNo(0)

[State 6000, STypsetS]
type=StateTypeSet
trigger1=Root,StateType=S
StateType=S
[State 6000, STypsetC]
type=StateTypeSet
trigger1=Root,StateType=C
StateType=C
[State 6000, STypsetA]
type=StateTypeSet
trigger1=Root,StateType=A
StateType=A
[State 6000, STypsetL]
type=StateTypeSet
trigger1=Root,StateType=L
StateType=L

[State 6000, MTypsetA]
type=StateTypeSet
trigger1=Root,MoveType=A
MoveType=A
[State 6000, MTypsetI]
type=StateTypeSet
trigger1=Root,MoveType=I
MoveType=I
[State 6000, MTypsetH]
type=StateTypeSet
trigger1=Root,MoveType=H
MoveType=H

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = noshadow

[State 6000, NotHitBy]
type = NotHitBy
trigger1 = parent, var(13)>5&& parent,var(51) = 0&&parent,var(50) = 0
trigger2 = parent, var(13)>10&& parent,var(51) > 0&&parent,var(50) = 0
trigger3 = parent, var(13)>20&& parent,var(50) =1
value = SCA
ignorehitpause = 1

[State 6000, HO]
type = HitOverride
trigger1 = 1
attr = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
time = -1
stateno = 60105
ignorehitpause = 1
[State 0, destroyself]
type = destroyself
trigger1 = parent, stateno = [120,155]
trigger2 = parent,stateno = [5000,5150]
ignorehitpause = 1
;-------------------------------------------------------------------------------
[StateDef 60105]
ctrl = 0
physics = N
velset = 0
sprpriority = -5

[State 30401];No Bound
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value = 0

[State 0, PosSet]  ;Set the character way below the floor so when they go to there statedef 5150 they                          ;won't reappear on screen.
type = PosSet
trigger1 = 1
x = -8000000
y = 8000000
ignorehitpause = 1

[State 6005, PVA]
type=ParentVarAdd
trigger1=!time
var(6)=1
ignorehitpause=1
[State 6005, PVA]
type=ParentVarAdd
trigger1=!time
var(13)=1
ignorehitpause=1
[State 6005, PVS]
type = ParentVarSet
triggerall=parent,var(13)<=10 &&var(51) > 0&&parent,var(50) = 0
trigger1=1
var(20)=IfElse(GetHitVar(damage)*.4<=lifemax*0.5,GetHitVar(damage)*.5,lifemax*0.5)
ignorehitpause=1
[State 6005, PVS]
type = ParentVarSet
triggerall=parent,var(13)<=5 &&var(51) = 0&&parent,var(50) = 0
trigger1=1
var(20)=IfElse(GetHitVar(damage)*.2<=lifemax*0.2,GetHitVar(damage)*.2,lifemax*0.2)
ignorehitpause=1

[State 6005, PVS]
type = ParentVarSet
triggerall=parent,var(13)<=20 &&parent,var(50) = 1
trigger1=1
var(20)=IfElse(GetHitVar(damage)*.02<=lifemax*0.02,GetHitVar(damage)*.02,lifemax*0.02)
ignorehitpause=1

[State 6005, Change]
type = ChangeState
trigger1 = 1
value = 60100
;-------------------------------------------------------------------------------
[Statedef 75]
type = A
physics = N
movetype = I
anim = 75
sprpriority = 2
ctrl = 0

[State 75, hitoverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 75
ignorehitpause = 1
[State 75, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1
; [State 75, snd]
; type = playsnd
; trigger1 = !time && prevstateno = 75
; value = 5, 24
; channel = 1

[State 75]
type = bgpalfx
trigger1 = movehit = [1, 10]
time = 1
add = (280 -25 * movehit), (280 -25 * movehit), (280 -25 * movehit)
[State 75, drop]
type = targetdrop
trigger1 = numtarget

[State 75, bind]
type = bindtoroot
trigger1 = 1
facing = 1
time = -1
[State 75, Anim]
type = changeanim
trigger1 = 1
value = 75
[State 75, noshadow]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = noshadow

[State 75, End]
type = destroyself
trigger1 = roundstate != 2
;-------------------------------------------------------------------------------
