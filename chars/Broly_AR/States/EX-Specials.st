; ________________________
;| Broly by Mr.Ansatsuken |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;==================================< EX SPECIAL STATES >=====================================
;============================================================================================

;======================< EX ERASER SHOT >=============================
; EX Eraser Shot
[Statedef 1010]
type = S
physics = S
movetype = A
anim = 1010
ctrl = 0
velset = 0, 0
poweradd = -500 * !var(53)
sprpriority = 1
facep2 = 1

[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,1,10)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,4,11)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,4,11)

[State 1000, Strength]
type = varset
trigger1 = !time
var(10) = 4
[State 1230, Custom Combo Reset]
type = PalFX
trigger1 = !Time && var(20)
trigger1 = var(20) := -1
time = 1

[State 1330, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -333

[State 3000, width]
type = width
trigger1 = !time
value = floor(35 * const(size.xscale))

[State 1000, Stop voice from previous move]
type = stopSnd
trigger1 = !time
channel = 3
[State 1000, Voice]
type = playsnd
trigger1 = !time
value = 3, 4
channel = 0
[State 1260, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1260, ExFX]
type = playsnd
trigger1 = !time
value = 7, 6
[State 1260, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 95*const(size.xscale),-135*const(size.yscale)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1000, Snd]
type = playsnd
trigger1 = !time
value = 5, 32

[State 1000, width]
type = width
trigger1 = animelemtime(4) = 0
value = floor(40 * const(size.xscale))

[State 1000, Strength]
type = varset
trigger1 = animelemtime(3) = 0
var(10) = 1

[State 1000, Strength]
type = varset
trigger1 = animelemtime(5) = 0
var(10) = 2

[State 1000, Strength]
type = varset
trigger1 = animelemtime(7) = 0
var(10) = 3

[State 1000, Eraser Shot]
type = helper
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(5) = 0
trigger3 = animelemtime(7) = 0
helpertype = normal
stateno = 1015
ID = 1015
name = "EX Eraser Shot"
postype = p1
pos = 86*const(size.xscale),-135*const(size.yscale)
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 0]
type = Explod
trigger1 = !time
ID = 1000
anim = 1095
postype = p1
pos = 95*const(size.xscale),-135*const(size.yscale)
bindtime = 99999
removetime = 5
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0]
type = Explod
trigger1 = !time
ID = 1000
anim = 1096
postype = p1
pos = 95*const(size.xscale),-135*const(size.yscale)
bindtime = 99999
removetime = 5
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <=3
value = , NA, NP, NT
time = 1 

[State 1000, Snd]
type = playsnd
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(5) = 0
trigger3 = animelemtime(7) = 0
value = 5, 18
persistent = 1

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< EX BLASTER SHOT >=============================
; EX Blaster Shot
[Statedef 1060]
type = A
physics = A
movetype = A
anim = 1060
ctrl = 0
poweradd = -500 * !var(53)
juggle = 8
sprpriority = 1
facep2 = 0

[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,1,10)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,4,11)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,4,11)

[State 1000, Stop voice from previous move]
type = stopSnd
trigger1 = !time
channel = 3
[State 1000, Voice]
type = playsnd
trigger1 = !time
value = 3, 3
channel = 0

[State 1000, Strength]
type = varset
trigger1 = !time
var(10) = 4

[State 1230, Custom Combo Reset]
type = PalFX
trigger1 = !Time && var(20)
trigger1 = var(20) := -1
time = 1

[State 1330, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -333

[State 1260, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1260, ExFX]
type = playsnd
trigger1 = !time
value = 7, 6
[State 1260, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = -34*const(size.xscale),-223*const(size.yscale)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <=3
value = , NA, NP, NT
time = 1 

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(11)= vel x
[State 0, VarSet]
type = VarSet
trigger1 = !time
var(12)= vel y
[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(5)<0
x = (0.2*var(11))-var(11)*0.005*time
y = (0.2*var(11))-var(11)*0.005*time
ignorehitpause = 1
persistent = 1
[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(5)=0
x = var(11)
y = var(12)
ignorehitpause = 1
persistent = 1

[State 0]
type = Explod
trigger1 = !time
ID = 1000
anim = 1095
postype = p1
pos = -34*const(size.xscale),-223*const(size.yscale)
bindtime = -1
removetime = 5
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0]
type = Explod
trigger1 = !time
ID = 1000
anim = 1096
postype = p1
pos = -34*const(size.xscale),-223*const(size.yscale)
bindtime = -1
removetime = 5
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = animelemtime(2)>=0
ID = 1000
postype = p1
pos = -3*const(size.xscale),-228*const(size.yscale)


[State 1000, Snd]
type = playsnd
trigger1 = !time
value = 5, 32

[State 1000, Snd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 5, 18

[State 1000, Blaster Shot]
type = helper
trigger1 = animelemtime(3) = 0
helpertype = normal
stateno = 1065
ID = 1065
name = "Blaster Shot"
postype = p1
pos = 57*const(size.xscale),-78*const(size.yscale)
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

;======================< EX GIGANTIC STRIKE >=============================
; EX Gigantic Strike
[Statedef 1110]
type = S
physics = S
movetype = A
anim = 1100
ctrl = 0
velset = ifelse(pos y = 0, 0,vel x), ifelse(pos y = 0, 0,vel y)
poweradd = -500 * !var(53)
juggle = 0
sprpriority = 1
;facep2 = 1

[State 1000, Strength]
type = varset
trigger1 = !time
var(10) = 4

[State 1230, Custom Combo Reset]
type = PalFX
trigger1 = !Time && var(20)
trigger1 = var(20) := -1
time = 1

[State 1330, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -333

[State 1260, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1260, ExFX]
type = playsnd
trigger1 = !time
value = 7, 6
[State 1260, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 45*const(size.xscale),-135*const(size.yscale)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 0, Aerial or ground?]
type = VarSet
trigger1 = !time
var(37)= ifelse(pos y < 0,1,0)
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = !time && var(37)
statetype = A
physics = A
[State 0, StateTypeSet]
type = changeanim
trigger1 = !time && var(37)
value = 1103

[State 1900, Turn]
type = turn
trigger1 = !time && !var(37)
trigger1 = p2dist x < 0

[State 1100, nothitby]
type = nothitby
trigger1 = (anim = 1100 || anim = 1103) && animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1
[State 1100, Vel]
type = velset
trigger1 = (anim = 1100 || anim = 1103) && pos y >-20 && animelemtime(3)<0
y = 0
[State 1100, Vel]
type = velset
trigger1 = (anim = 1100 || anim = 1103) && animelem = 3
x = 16
y = -13
[State 1100, Vel]
type = velmul
trigger1 = 1
x = 0.9
[State 1100, Vel]
type = velmul
trigger1 = vel y > 0
x = 0

[State 1100, Snd]
type = playsnd
trigger1 = (anim = 1100 || anim = 1103) && animelem = 3
value = 5, 43
[State 1100, Dust]
type = helper
trigger1 = (anim = 1100 || anim = 1103) && animelem = 3 && !var(37)
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1000, Stop voice from previous move]
type = stopSnd
trigger1 = !time
channel = 3
[State 1000, Voice]
type = playsnd
trigger1 = (anim = 1100 || anim = 1103) && animelem = 2
value = 3, 2
channel = 0
ignorehitpause = 1
persistent = 0

[State 1100, Hit]
type = hitdef
trigger1 = !time && !var(20)
attr = A, ST
damage = 45, 6
animtype = Back
guardflag = H
hitflag = MAF
priority = 4, Hit
pausetime = 0, 0
sparkNo = -1; + 0 * (var(43) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -82
hitsound = s0, 800
p2facing = 1
guardsound = s2, 0
ground.type = High
kill = 0
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -1.5 -(var(10) / 2), -6 -var(10)
air.type = Low
air.velocity = -1.5 -(var(10) / 2), -6 -var(10)
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0, 0;ifelse(p2movetype = H, 72, 144) * !var(20), 36 * !var(20)
givepower = 36, 36
envshake.time = 16
P2FACING = 1
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
ID = 1110
fall.recovertime = 120
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 1
airguard.cornerpush.veloff = 0

[State 1100, Hit]
type = hitdef
trigger1 = !time && var(20)
attr = A, ST
damage = 45, 6
animtype = Back
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 0, 0
sparkNo = -1; + 0 * (var(43) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -82
hitsound = s0, 800
p2facing = 1
guardsound = s2, 0
ground.type = High
kill = 0
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -1.5 -(var(10) / 2), -6 -var(10)
air.type = Low
air.velocity = -1.5 -(var(10) / 2), -6 -var(10)
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0, 0;ifelse(p2movetype = H, 72, 144) * !var(20), 36 * !var(20)
givepower = 36, 36
envshake.time = 16
P2FACING = 1
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
ID = 1110
fall.recovertime = 120
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 1
airguard.cornerpush.veloff = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit = 1 && numtarget(1110)
value = 1111
ctrl = 0
ignorehitpause = 1

[State 1230, Custom Combo Reset]
type = PalFX
trigger1 = !Time && var(20)
trigger1 = var(20) := -1
time = 1

[State 1100, statetype]
type = statetypeset
trigger1 = (anim = 1100 || anim = 1103) && animelemtime(3) >= 0
statetype = A
physics = A
[State 1100, Anim]
type = changeanim
trigger1 = (anim = 1100 || anim = 1103) && animelemtime(3) > 0 && vel y > -3
value = 1101

[State Idle]
type = statetypeset
trigger1 = anim != 1100 && anim != 1103
movetype = I

[Statedef 1111]
type = A
physics = A
movetype = A
ctrl = 0
velset = 1.5, -11
;poweradd = 72 * !var(20)
juggle = 0
sprpriority = 1
;facep2 = 1
;[State 0, StateTypeSet]
;type = StateTypeSet
;trigger1 = time = 20
;physics = A
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3,27
channel = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3,27
channel = 3
[State 0, TargetState]
type = TargetState
triggerall = numtarget(1110)
trigger1 = !time
value = 1111955
ID = 1110
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S0,800
[State 0, VelAdd]
type = VelAdd
trigger1 = anim = 1102
trigger1 = animelemtime(3)=0
y = -9

[State 1100, Anim]
type = changeanim
trigger1 = time = 10
value = 1102
[State 0, Turn]
type = Turn
trigger1 = time = 10
[State 0, NotHitBy]
type = NotHitBy
trigger1 = anim = 1100
trigger2 = anim = 1102 && animelemtime(7)<0
value = SCA
time = 1

;[State 0, VarSet]
;type = VarSet
;trigger1 = !time
;var(11)= vel x
;[State 0, VarSet]
;type = VarSet
;trigger1 = !time
;var(12)= vel y
;[State 0, VelSet]
;type = VelSet
;trigger1 = animelemtime(4)<0
;x = (var(11))-var(11)*0.025*time
;y = (var(12))-var(12)*0.025*time
;ignorehitpause = 1
;persistent = 1
[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = anim = 1102
trigger1 = animelemtime(3)=0
value = (-100)*(target, const(data.defence)*0.01)*(const(data.attack)*0.01)*fvar(12)
ID = 1110
kill = 1
[State 0, HitAdd]
type = HitAdd
trigger1 = anim = 1102
trigger1 = animelemtime(3)=0
value = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 1102
trigger1 = animelemtime(3)=0
value = S0, 41
;value = s1, 3
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 1102
trigger1 = animelemtime(3)=0
value = s1, 3


[State 52, Dust]
type = explod
trigger1 = anim = 1102
trigger1 = animelemtime(3)=0
anim = 8133
ID = 8133
sprpriority = 2
postype = p1
scale = 0.5, 0.5
ownpal = 1
pos = 30, -80
persistent = 1
pausemovetime = -1
supermovetime = -1

[State 52, Dust]
type = explod
trigger1 = anim = 1102
trigger1 = animelemtime(3)=3
anim = 8133
ID = 8133
sprpriority = 2
postype = p1
scale = 0.25, 0.25
ownpal = 1
pos = 50, -20
persistent = 1
pausemovetime = -1
supermovetime = -1

[State 0, TargetBind]
type = TargetBind
trigger1 = (anim = 1100 || anim = 1103)
time = 1
id = 1110
pos = 6*const(size.xscale),-220*const(size.yscale)
ignorehitpause = 1
persistent = 1

[State 0, TargetBind]
type = TargetBind
trigger1 = anim = 1102
trigger1 = animelemtime(1)>=0 && animelemtime(2)<0
time = 1
id = 1110
pos = -34*const(size.xscale),-223*const(size.yscale)
ignorehitpause = 1
persistent = 1

[State 0, TargetBind]
type = TargetBind
trigger1 = anim = 1102
trigger1 = animelemtime(2)>=0 && animelemtime(3)<0
time = 1
id = 1110
pos = -3*const(size.xscale),-228*const(size.yscale)
ignorehitpause = 1
persistent = 1
[State 0, TargetBind]
type = TargetBind
trigger1 = anim = 1102
trigger1 = animelemtime(3)=0
time = 1
id = 1110
pos = 57*const(size.xscale),-78*const(size.yscale)
ignorehitpause = 1
persistent = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 1102
trigger1 = animelemtime(3)=0
value = S5,46

[State 0, HitAdd]
type = HitAdd
trigger1 = target(1110), stateno = 5100
trigger1 = target(1110), pos y = 0
value = 1
persistent = 0

[State 805, Impact Dust]
type = Helper
trigger1 = anim = 1102
trigger1 = animelemtime(3)>=0
trigger1 = target(1110), stateno = 1111955
trigger1 = target(1110), pos y >= 0
trigger1 = !numhelper(8110)
ignorehitpause = 1
helperType = Normal
stateNo = 8110
persistent = 0
ID = 8110
name = "Impact Dust"
postype = p2
facing = -1
pos = 0, 0
ownPal = 1



;Abstract Reordered: the EX slam ground-bounces them (7715/7716) and gives Broly control back
[State 1111, AR ground bounce]
type = TargetState
trigger1 = anim = 1102
trigger1 = animelemtime(3) = 1
value = 7715
ID = 1110
ignorehitpause = 1

[State 1111, AR follow up]
type = ChangeState
trigger1 = anim = 1102
trigger1 = animelemtime(3) >= 10
value = ifelse(pos y < -5, 50, 0)
ctrl = 1

;======================< EX LARIAT EXPRESS >=============================
; EX Lariat Express
[Statedef 1210]
type = S
physics = S
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
poweradd = -500 * !var(53)
juggle = 0;ifelse(p2movetype = A, 8, ifelse(numtarget, 15, 8))
sprpriority = 1
facep2 = 1

[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,1,10)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,4,11)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,4,11)

[State 1000, Strength]
type = varset
trigger1 = !time
var(10) = 4

[State 1230, Custom Combo Reset]
type = PalFX
trigger1 = !Time && var(20)
trigger1 = var(20) := -1
time = 1

[State 1330, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -333

[State 1260, ExFX]
type = playsnd
trigger1 = !time
value = 4, 36
channel = 0
[State 1260, ExFX]
type = playsnd
trigger1 = !time
value = 4, 36
channel = 3
[State 1260, ExFX]
type = varset
trigger1 = !time
var(25) = 45
[State 1260, ExFX]
type = playsnd
trigger1 = !time
value = 7, 6
[State 1260, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 35*const(size.xscale),-95*const(size.yscale)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1200;|| anim = 3203 && animelemtime(4)<0
x = ifelse(animelemtime(2)>=0,15,0)
y = 0

[State 740, Rushing Aura]
type = helper
trigger1 = anim = 1200 && animelemtime(3)>=-4 && !numhelper(6002)
helpertype = normal
stateno = 6002
ID = 6002
name = "LSSJ Aura"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
;pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 0, DUSTO]
type = Explod
trigger1 = anim = 1200 && vel x
trigger1 = time && !(time%6)
trigger2 = anim = 1200 && animelemtime(2)=0
ID = 8130
anim = 8130
postype = p1
pos = 45, 10
persistent = 1
removetime = -2
supermovetime = 0
sprpriority = 4
ownpal = 1
scale = 0.25,0.125
removeongethit = 1
[State 101, Dust]
type = explod
trigger1 = anim = 1201 && vel x && !(time%2)
anim = 8104
sprpriority = 3
postype = p1
pos = 40, 10
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 101, Dust]
type = explod
trigger1 = anim = 1201 && vel x && !(time%2)
anim = 8104
sprpriority = 3
postype = p1
pos = -30, 10
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 100, Dust]
type = playsnd
trigger1 = anim = 1201
value = s0, 101
persistent = 0
;[State 0, PlayerPush]
;type = PlayerPush
;trigger1 = anim = 1200 && animelemtime(2)>=0
;value = 0
;ignorehitpause = 0
[State 100, Dust]
type = playsnd
trigger1 = anim = 1200 && animelemtime(2)=0
value = s5, 43
persistent = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time<=1
value = ,NA,NP,NT
time = 1
[State 1600, Reversal]
type = reversaldef
trigger1 = !time
reversal.attr = SA, NA, SA
pausetime = 5, 17
hitsound = s2, 0
sparkNo = -1 + 0*(var(33) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -90
numhits = 0
[State 3005, Hit]
type = hitdef
trigger1 = time = 6
priority = 4, Hit
attr = S, HA
damage = ceil(90 * (fvar(12))), 4
animtype = Hard
hitflag = MAF
guardflag = M
pausetime = 0, 0
hitSound = -1 + 0 * (var(31) := 3)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 73), var(36) := -101
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -6, -6
yaccel = 0.5
ground.cornerpush.veloff = 0
air.velocity = -6, -6
guard.velocity = -10.52
p2facing = 1
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
ID = 1200
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
yaccel = 0.5

[State 1200,1]
type = changestate
trigger1 = anim = 1200 && movehit=1 && numtarget(1200)
value = 1211
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 1200 && time = 5 + var(10)*5 && ifelse(var(10)=3, !(movehit && numtarget),1)
value = 1201
[State 0, End]
type = changestate
trigger1 = anim = 1201 && !animtime
value = 0
ctrl = 1


[Statedef 1211]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 1260, ExFX]
type = varset
trigger1 = !time ;&& prevstateno = 1210
var(25) = 150
;[State 7650, bound]
;type = screenbound
;trigger1 = prevstateno = 1212
;value = 0
;movecamera = 0, 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !time && prevstateno = 1212
value = 1200
elem = 2
[State 0, ChangeAnim]
type = turn
trigger1 = !time && prevstateno = 1212
[State 0, playsnd]
type = playsnd
trigger1 = time = 1 && prevstateno = 1212
value = s0, 800
persistent = 1

[State 100, Dust]
type = playsnd
trigger1 = time = 1 && prevstateno = 1212
value = s5, 43
persistent = 1
[State 740, Rushing Aura]
type = helper
trigger1 = !time && prevstateno = 1212
helpertype = normal
stateno = 6002
ID = 6002
name = "LSSJ Aura"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
;pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1200 && time >5;|| anim = 3203 && animelemtime(4)<0
x = ifelse(animelemtime(2)>=0,16,0)
y = 0

[State 0, DUSTO]
type = Explod
trigger1 = anim = 1200 && vel x
trigger1 = !(time%6)
ID = 8130
anim = 8130
postype = p1
pos = 45, 10
persistent = 1
removetime = -2
supermovetime = 0
sprpriority = 4
ownpal = 1
scale = 0.25,0.125
removeongethit = 1

[State 1200,1]
type = Targetstate
trigger1 = !time
value = 1207
[State 1200,1]
type = TargetBind
trigger1 = anim = 1200
pos = -40, 0
time = 1
[State 0, ChangeAnim]
type = Changestate
triggerall = anim = 1200
trigger1 = FrontEdgeBodyDist <= 10
trigger2 = Time = 150
value = ifelse(prevstateno=1212,1213,1212)
ctrl = 0


[Statedef 1212]
type = S
physics = S
movetype = A
ctrl = 0
anim = 1202
velset = 0, 0
sprpriority = 1
[State 1260, ExFX]
type = varset
trigger1 = !time
var(25) = 64

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3005, Hit]
type = hitdef
trigger1 = anim = 1202 && animelemtime(2)=0
priority = 4, Hit
attr = S, HA
damage = ceil(45 * (fvar(12))), 4
animtype = Hard
hitflag = MAF
guardflag = M
pausetime = 6, 6
hitSound = -1 + 0 * (var(31) := 10)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 73), var(36) := -101
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -6, -6
yaccel = 0.5
ground.cornerpush.veloff = 0
air.velocity = -6, -6
guard.velocity = -10.52
p2facing = 1
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
ID = 1201
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2stateno = 1111302
yaccel = 0.5
palfx.color = ifelse((var(44)=2),50,128)
palfx.sinadd=ifelse(var(44)=2,50,ifelse(var(44)=1||var(44)=3,64,0)),ifelse(var(44)=2,25,ifelse(var(44)=1,0,64)),ifelse(var(44)=2,80,ifelse(var(44)=1,64,0)),ifelse(var(44)=2,8,4)
palfx.mul = ifelse((var(44)=[2,3]),192,ifelse(var(44)=1,192,0)), ifelse((var(44)=2),256,ifelse(var(44)=1,0,ifelse(var(44)=3,128,192))), ifelse(var(44)=3,0,ifelse((var(44)=2),512,96))
palfx.time = 180

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget(1201) && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1000, Explod]
type = helper
trigger1 = movehit = 1 && numtarget(1201)
helpertype = normal
stateno = 1006
ID = 813
name = "Explod"
postype = p1
pos = 55,-135
ignorehitpause = 1
persistent = 0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1200,1]
type = TargetBind
trigger1 = anim = 1202 && animelemtime(2)<0
pos = -10, 0
time = 1
[State 0, End]
type = changestate
trigger1 = anim = 1202 && !animtime
value = 1211
ctrl = 0


[Statedef 1213]
type = S
physics = S
movetype = A
ctrl = 0
anim = 1202
velset = 0, 0
sprpriority = 1
[State 1260, ExFX]
type = varset
trigger1 = !time ;&& prevstateno = 1210
var(25) = 0

[State 1260, ExFX]
type = playsnd
trigger1 = !time
value = 3, 5
channel = 0

[State 3005, Hit]
type = hitdef
trigger1 = anim = 1202 && animelemtime(2)=0
priority = 4, Hit
attr = S, HA
damage = ceil(45 * (fvar(12))), 4
animtype = Hard
hitflag = MAF
guardflag = M
pausetime = 6, 6
hitSound = -1 + 0 * (var(31) := 11)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 73), var(36) := -101
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -6, -6
yaccel = 0.5
ground.cornerpush.veloff = 0
air.velocity = -6, -6
guard.velocity = -10.52
p2facing = 1
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
ID = 1201
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2stateno = 1111302
yaccel = 0.5
palfx.color = ifelse((var(44)=2),50,128)
palfx.sinadd=ifelse(var(44)=2,50,ifelse(var(44)=1||var(44)=3,64,0)),ifelse(var(44)=2,25,ifelse(var(44)=1,0,64)),ifelse(var(44)=2,80,ifelse(var(44)=1,64,0)),ifelse(var(44)=2,8,4)
palfx.mul = ifelse((var(44)=[2,3]),192,ifelse(var(44)=1,192,0)), ifelse((var(44)=2),256,ifelse(var(44)=1,0,ifelse(var(44)=3,128,192))), ifelse(var(44)=3,0,ifelse((var(44)=2),512,96))
palfx.time = 48

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget(1201) && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1000, Explod]
type = helper
trigger1 = movehit = 1 && numtarget(1201)
helpertype = normal
stateno = 1006
ID = 813
name = "Explod"
postype = p1
pos = 55,-135
ignorehitpause = 1
persistent = 0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1200,1]
type = TargetBind
trigger1 = anim = 1202 && animelemtime(2)<0
pos = -10, 0
time = 1
[State 0, End]
type = changestate
trigger1 = anim = 1202 && !animtime
value = 0
ctrl = 1

;======================< EX ERASER BLOW >=============================
; EX Eraser Blow
[Statedef 1310]
type = S
physics = S
movetype = A
anim = 1302
ctrl = 0
velset = 0, 0
poweradd = -500 * !var(53)
juggle = ifelse(AIlevel,0,8);ifelse(p2movetype = A, 8, ifelse(numtarget, 15, 8))
sprpriority = 1
facep2 = 1

[State 1100, Strength]
type = varset
trigger1 = !time
var(10) = 4

[State 1230, Custom Combo Reset]
type = PalFX
trigger1 = !Time && var(20)
trigger1 = var(20) := -1
time = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = !time
value = SCA
time = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time>=1 && time<4
value = , NP, SP, NT, ST
time = 1

[State 1000, Snd]
type = playsnd
trigger1 = !time
value = 3, 0
channel = 0

[State 1000, Snd]
type = playsnd
trigger1 = !time
value = 3, 0
channel = 3

[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,3,16)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,6,13)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,6,13)

[State 1330, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -333

[State 1260, ExFX]
type = varset
trigger1 = !time
var(25) = 45
[State 1260, ExFX]
type = playsnd
trigger1 = !time
value = 7, 6
[State 1260, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = -35*const(size.xscale),-148*const(size.yscale)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 1302 && !animtime
value = 1300

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1300
x = 7

[State 3000, width]
type = width
trigger1 = anim = 1300 || anim = 1301
value = floor(35 * const(size.xscale))

[State 100, steps]
type = playsnd
trigger1 = anim = 1300 && animelemtime(1)=0
value = 0, 105
persistent = 0
[State 105, Dust]
type = helper
trigger1 = anim = 1300 && animelemtime(1)=0
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = 1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 0, ModifyExplod]
type = removeexplod
trigger1 = !time
trigger2 = anim = 1301 && animelemtime(2)=0
ID = 3999

[State 0]
type = Explod
trigger1 = anim = 1300 && animelemtime(1)=0
trigger2 = anim = 1301 && animelemtime(2)=0
ID = 3999
anim = 1095+((anim=1301)*2)
postype = p1
pos = -35*const(size.xscale),-148*const(size.yscale)
bindtime = 99999
removetime = ifelse(anim=1301,3,6+7*var(10))
sprpriority = -1
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
ignorehitpause = 0
[State 0, Explod]
type = Explod
trigger1 = anim = 1300 && animelemtime(1)=0
trigger2 = anim = 1301 && animelemtime(2)=0
anim = 1307;3205
ID = 3999
scale = 0.125, 0.125
pos = -35*const(size.xscale),-148*const(size.yscale)
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
ownpal = ifelse(var(44),1,0)
ignorehitpause = 0
removetime = ifelse(anim=1301,3,6+7*var(10))
sprpriority = 4
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = anim = 1300 && animelemtime(1)=0
trigger2 = anim = 1301 && animelemtime(2)=0
anim = 1305;-(root,var(44)=3||root,var(44)=1)*8
ID = 3999
scale = 0.125, 0.125
pos = -35*const(size.xscale),-148*const(size.yscale)
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
ownpal = ifelse(var(44),1,0)
ignorehitpause = 0
removetime = ifelse(anim=1301,3,6+7*var(10))
sprpriority = 3
removeongethit = 1

[State 0]
type = Explod
trigger1 = anim = 1300 && animelemtime(1)=0
trigger2 = anim = 1301 && animelemtime(2)=0
ID = 3999
anim = 1096+((anim=1301)*2)
postype = p1
pos = -35*const(size.xscale),-148*const(size.yscale)
bindtime = 99999
removetime = ifelse(anim=1301,3,6+7*var(10))
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
ignorehitpause = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = anim = 1301 && animelemtime(1)=0
ID = 3999
postype = p1
pos = -47*const(size.xscale),-142*const(size.yscale)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = anim = 1301 && animelemtime(2)=0
ID = 3999
postype = p1
pos = 50*const(size.xscale),-64*const(size.yscale)

[State 3005, Hit]
type = hitdef
trigger1 = anim = 1301 && animelemtime(2)=0
priority = 4, Hit
attr = S, SA
damage = 50, 4
animtype = Medium
hitflag = MAF
guardflag = M
pausetime = 18, 20
hitSound = -1 + 0 * (var(31) := 12)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 45), var(36) := -64
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ID = 1310
ground.velocity = -8, 0
yaccel = 0.3
ground.cornerpush.veloff = 0
air.velocity = -8, 0
guard.velocity = -10.52
fall = 0
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
yaccel = 0.5
forcestand = 0
[State 3005, Hit]
type = hitdef
trigger1 = anim = 1301 && animelemtime(2)=1
priority = 4, Hit
attr = S, SA
damage = 45, 4
animtype = hard
hitflag = MAF
guardflag = M
pausetime = 18, 19
hitSound = -1 + 0 * (var(31) := 12)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 45), var(36) := -64
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -8, -6
yaccel = 0.3
ground.cornerpush.veloff = 0
air.velocity = -8, -6
guard.velocity = -10.52
fall = 0
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
yaccel = 0.5
forcestand = 0
;palfx.color = ifelse((var(44)=2),50,128)
;palfx.sinadd=ifelse(var(44)=2,50,ifelse(var(44)=1||var(44)=3,64,0)),ifelse(var(44)=2,25,ifelse(var(44)=1,0,64)),ifelse(var(44)=2,80,ifelse(var(44)=1,64,0)),ifelse(var(44)=2,8,4)
;palfx.mul = ifelse((var(44)=[2,3]),192,ifelse(var(44)=1,192,0)), ifelse((var(44)=2),256,ifelse(var(44)=1,0,ifelse(var(44)=3,128,192))), ifelse(var(44)=3,0,ifelse((var(44)=2),512,96))
;palfx.time = 48
;
;[State 1405, flames]
;type = helper
;trigger1 = movehit && numtarget && numhelper(7180) < 1
;trigger1 = !(target, time) && (target, movetype = H)
;helpertype = normal
;stateno = 7180
;ID = 7180
;name = "flames"
;postype = p2
;ownpal = 1
;facing = -1
;size.ground.front = 0
;size.ground.back = 0
;ignorehitpause = 1


[State 1000, Snd]
type = playsnd
trigger1 = anim = 1300 && animelemtime(1)=0
value = 5, 32

[State 1600, Reversal]
type = reversaldef
trigger1 = !time
reversal.attr = SA, AA
pausetime = 0, 17
ID = 1311
hitsound = s2, 0
sparkNo = -1 + 0*(var(33) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -90
numhits = 0
[State 800, Hit]
type = hitdef
trigger1 = time = 4
attr = S, SA
hitflag = M
guardflag = M
priority = 1, Miss
numhits = 0
ground.hittime= 4
guardsound = s2, 0
sparkNo = -1 + 0 * (var(33) := -1)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
hitSound = -1 + 0 * (var(31) := -1)
p2facing = 1
guard.dist = 0
fall = 0
air.fall = 0
fall.recover = 0
forcestand = 1
fall.recovertime = 120

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 1300
trigger1 = time = 4+7*var(10)
trigger2 = numtarget && movehit ;= 3
trigger3 = p2dist x <=80
trigger4 = enemynear, movetype = H && enemynear, statetype != L && p2dist x <=100
value = 1301

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 1301 && movehit && numtarget && animelemtime(3)=0
value = 1303
elem = 3

[State 0, ModifyExplod]
type = removeexplod
trigger1 = (anim = 1301||anim=1303) && animelemtime(3)=0
ID = 3999

[State 1000, Snd]
type = playsnd
trigger1 = (anim = 1301 || anim = 1303) && animelemtime(3)=0
value = 5, 18

[State 1000, Eraser Blow]
type = helper
trigger1 = (anim = 1301 || anim = 1303) && animelemtime(3)=0
helpertype = normal
stateno = 1315
ID = 1315
name = "Eraser Blow"
postype = p1
pos = 114*const(size.xscale),-101*const(size.yscale)
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact
trigger1 = (anim = 1301 || anim = 1303) && animelemtime(3)=0
value = S3,42
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact
trigger1 = (anim = 1301 || anim = 1303) && animelemtime(3)=0
value = S3,42
channel = 3

[State 0, ChangeState]
type = ChangeState
trigger1 = (anim = 1301 || anim = 1303) && !animtime
value = 0
ctrl = 1


;======================< EX BLOODY SMASH >=============================
; EX Bloody Smash
[Statedef 1410]
type = A
physics = N
movetype = I
anim = 1400
ctrl = 0
poweradd = -500 * !var(53)
velset = 0, 0
sprpriority = 1
facep2 = 1

[State 1300, Accel]
type = gravity
trigger1 = animelemtime(1) > 1
[State 1300, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = 4

[State 1230, Custom Combo Reset]
type = PalFX
trigger1 = !Time && var(20)
trigger1 = var(20) := -1
time = 1

[State 1330, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -333

[State 1260, ExFX]
type = varset
trigger1 = !time
var(25) = 45
[State 1260, ExFX]
type = playsnd
trigger1 = !time
value = 7, 6
[State 1260, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 35*const(size.xscale),-148*const(size.yscale)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1300, Snd]
type = playsnd
trigger1 = !time
value = s0, 41
[State 1300, Snd]
type = playsnd
trigger1 = !time
value = s5, 43
[State 1000, Stop voice from previous move]
type = stopSnd
trigger1 = !time
channel = 3
[State 1000, Voice]
type = playsnd
trigger1 = !time
value = 3, 2
channel = 0
[State 1300, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1300, Vel]
type = velset
trigger1 = animelem = 1
x =  4 + (0.076 * p2bodydist x / 2.5)
y = -10

[State 0, VelMul]
type = Veladd
trigger1 = vel y > 0
y = 0.2

[State 1300, goujin]
type = changestate
trigger1 = time = 20
value = 1460

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time < 2
value = , NA, NT
time = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 2
value = , NA, NP, SP, NT
time = 1


; EX Bloody Stomp
[Statedef 1460]
type = A
movetype = A
physics = N
juggle = 0
anim = 1400
poweradd = ifelse(prevstateno=1410,0,-500 * !var(53))
sprpriority = 1
ctrl = 0

[State 1100, Strength]
type = varset
trigger1 = !time
var(10) = 4

[State 1230, Custom Combo Reset]
type = PalFX
trigger1 = !Time && var(20)
trigger1 = var(20) := -1
time = 1

[State 1000, Stop voice from previous move]
type = stopSnd
trigger1 = !time && prevstateno != 1410
channel = 3
[State 1000, Voice]
type = playsnd
trigger1 = !time && prevstateno != 1410
value = s3, 2
channel = 0

[State 1330, MAX Timer Drain]
type = VarAdd
trigger1 = !Time && prevstateno != 1410
trigger1 = var(53) > 0
var(53) = -333

[State 1260, ExFX]
type = varset
trigger1 = !time && prevstateno != 1410
var(25) = 45
[State 1260, ExFX]
type = playsnd
trigger1 = !time && prevstateno != 1410
value = 7, 6
[State 1260, ExFX]
type = explod
trigger1 = !time && prevstateno != 1410
anim = 8210
sprpriority = 3
postype = p1
pos = 10*const(size.xscale),-50*const(size.yscale)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = prevstateno = 1410 && !movecontact
value = , NP, SP
time = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = prevstateno != 1410 && time <=5
value = , NA, NP, NT
time = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 1401

[State 0, VelSet]
type = VelSet
trigger1 = !time
y = -4
[State 1303, Accel]
type = gravity
trigger1 = 1
[State 1304, Pos]
type = playerpush
trigger1 = !movecontact
value = 0
[State 1300, Snd]
type = playsnd
trigger1 = animelem = 3
value = s1, 6

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(3)>=0
y = 15
x = ifelse(prevstateno=1410,0,ifelse(vel x<0,-1.5,4.5))

[State 1303, Hit]
type = hitdef
trigger1 = animelem = 3
attr = A, SA
damage = 80, 8
animtype = Hard
guardflag = H
hitflag = MAF
ID = 1401
priority = 4, Hit
pausetime = ifelse(var(20), 3, 6), ifelse(var(20), 2, 4)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkxy = -10+ 0 * (var(35) := 0), var(36) := -30
hitSound = -1 + 0 * (var(31) := 6)
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -vel x, 10
air.type = Low
air.velocity = -vel x, 12
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
fall.yvelocity = 0
givePower = 0.5 * 200
p2facing = 1
envshake.time = 12
envshake.freq = 120
envshake.ampl = 5
fall = 1
fall.recover = 0
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 1
airguard.cornerpush.veloff = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = movehit && numtarget
value = 0
ignorehitpause = 1

[State 1303, End]
type = changestate
trigger1 = pos y >= 0 && vel y > 0
value = 1461

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = , NP, SP
time = 1

;--Stomp--
[Statedef 1461]
type = C
movetype = A
anim = 1404
physics = C
velset = 0, 0
juggle = 0
ctrl = 0
sprpriority = 1

[State 1304, Pos]
type = posset
trigger1 = 1
y = 0
[State 1304, Snd]
type = playsnd
trigger1 = !time
value = s5, 0
ignorehitpause = 1
[State 52, Snd]
type = playsnd
trigger1 = !time
value = s5, 4
ignorehitpause = 1
[State 1304, Hit]
type = hitdef
trigger1 = animelem = 1
attr = C, SA
damage = ifelse(prevstateno=1463,60,ifelse(numtarget(1401),40,120)), 11
animtype = Hard
guardflag = M
hitflag = FD
priority = 4, Hit
pausetime = 24, 24
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkxy = -10+ 0 * (var(35) := 0), var(36) := 0
hitSound = -1 + 0 * (var(31) := ifelse(prevstateno=1460,6,11))
guardsound = s2, 0
ground.type = High
ground.slidetime = 12
ID = 1461
ground.slidetime = 16
ground.hittime = 16
air.type = Low
air.velocity = -7, 7
down.velocity = 0, 0
down.bounce = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0
givePower = 0.5 * 36, 36
envshake.time = 12
envshake.freq = 120
envshake.ampl = 6
fall = 1
fall.recover = 0
forcestand = 1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
airguard.velocity = -8, -1.5

[State 0, TargetState]
type = TargetState
triggerall = prevstateno = 1460
trigger1 = movehit = 1 && numtarget(1461)
value = 1111190
ID = 1461
ignorehitpause = 0
persistent = 1
[State 0, PlayerPush]
type = PlayerPush
trigger1 = numtarget(1461)
value = 0
ignorehitpause = 1
[State 0, TargetState]
type = TargetBind
trigger1 = movehit = 1 && numtarget(1461)
pos = 0,0
ID = 1461
ignorehitpause = 1
persistent = 1

[State 1800, Dust]
type = explod
trigger1 = animelem = 1
anim = 8112;7107
ID = 7160
sprpriority = 0
postype = p1
pos = 0, 0
scale = 0.5, 0.5;0.38, 0.2
ownpal = 1
[State 1800, Dust]
type = explod
trigger1 = animelem = 1
anim = 8106;7107
ID = 7240
sprpriority = -1
postype = p1
pos = 0, 0
scale = 1, 1;0.38, 0.2
ownpal = 1
[State 1304, End]
type = changestate
trigger1 = movehit = 1 && prevstateno = 1463
value = 1464
ctrl = 0
ignorehitpause = 0

[State 1304, Shake]
type = envshake
trigger1 = !time
time = 18
freq = 120
ampl = 6
[State 1304, End]
type = changestate
trigger1 = !animtime
value = ifelse(prevstateno=1460&&movehit&&numtarget(1461),1462,0)
ctrl = ifelse(prevstateno=1460&&movehit&&numtarget(1461),0,1)

[Statedef 1462]
type = A
physics = N
movetype = I
anim = 1400
ctrl = 0
poweradd = 0
velset = 0, 0
sprpriority = 1
facep2 = 0

[State 1300, Accel]
type = gravity
trigger1 = animelemtime(1) > 1
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
[State 1111150, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 1
[State 1300, Snd]
type = playsnd
trigger1 = !time
value = s0, 41
[State 1300, Snd]
type = playsnd
trigger1 = !time
value = 3, 2
channel = 0
[State 1300, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1300, Vel]
type = velset
trigger1 = animelem = 1
y = -12.5

[State 0, VelMul]
type = Veladd
trigger1 = vel y > 0
y = 0.2

[State 1300, goujin]
type = changestate
trigger1 = time = 20
value = 1463


; 
[Statedef 1463]
type = A
movetype = A
physics = N
juggle = 8
anim = 1400
poweradd = 0
sprpriority = 1
ctrl = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 1403

[State 0, VelSet]
type = VelSet
trigger1 = !time
y = -4
[State 1303, Accel]
type = gravity
trigger1 = 1
[State 1304, Pos]
type = playerpush
trigger1 = !movecontact
value = 0
[State 1300, Snd]
type = playsnd
trigger1 = animelem = 3
value = s1, 6

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(3)>=0
y = 15

[State 1303, End]
type = changestate
trigger1 = pos y >= 0 && vel y > 0
value = 1461

[Statedef 1464]
type = A
movetype = I
physics = N
velset = 0, 0
anim = 105
ctrl = 0
sprpriority = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
[State 105, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = -1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 105, Vel]
type = velset
trigger1 = animelem = 2
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)
[State 105, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
statetype = A
physics = A

[State 105, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 105

[State 105, End]
type = changestate
trigger1 = vel y > 0 && pos y >= -4
value = 52

;======================< EX GIGANTIC SPIKE >=============================
; EX Gigantic Spike
[Statedef 1510]
type = S
physics = S
movetype = A
anim = 1500
ctrl = 0
poweradd = -500 * !var(53)
juggle = ifelse(AIlevel,0,4);ifelse(p2movetype = A, 8, ifelse(numtarget, 15, 8))
sprpriority = 1
facep2 = 0

[State 1000, Strength]
type = varset
trigger1 = !time
var(10) = 4

[State 1230, Custom Combo Reset]
type = PalFX
trigger1 = !Time && var(20)
trigger1 = var(20) := -1
time = 1

[State 100, voice]
type = playsnd
trigger1 = !time
value = 3, 41
channel = 0
[State 100, voice]
type = playsnd
trigger1 = !time
value = 3, 41
channel = 3

[State 1330, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -333

[State 1260, ExFX]
type = varset
trigger1 = !time
var(25) = 45
[State 1260, ExFX]
type = playsnd
trigger1 = !time
value = 7, 6
[State 1260, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 22*const(size.xscale),-158*const(size.yscale)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 0, Aerial or ground?]
type = VarSet
trigger1 = !time
var(37)= ifelse(pos y < 0,1,0)
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = !time && var(37)
statetype = A
physics = A
[State 1900, Turn]
type = turn
trigger1 = !time && !var(37)
trigger1 = p2dist x < 0
[State 0, VelSet]
type = VelSet
trigger1 = !time && !var(37)
x = 0
y = 0
[State 1100, Vel]
type = velset
trigger1 = anim = 1500 && var(37) && animelemtime(2)<0 && pos y >=-20
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1500 && animelemtime(2)>=0
x = 7
[State 0, VelSet]
type = VelSet
trigger1 = anim = 1500 && animelemtime(2)=0 && var(37)
y = -7

[State 3000, width]
type = width
trigger1 = anim = 1500
value = floor(50 * const(size.xscale))

[State 100, steps]
type = playsnd
trigger1 = anim = 1500 && animelemtime(2)=0 && !var(43)
value = 0, 105
[State 100, steps]
type = playsnd
trigger1 = anim = 1500 && animelemtime(2)=0
value = 5, 43
[State 105, Dust]
type = explod
trigger1 = anim = 1500 && animelemtime(2)=0 && !var(37)
ID = 8130
anim = 8130
postype = p1
pos = 45, 10
persistent = 1
removetime = -2
supermovetime = 0
sprpriority = 4
ownpal = 1
scale = 0.25,0.125
removeongethit = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time>=0 && time<5
value = , NP, NT
time = 1

[State 1600, Reversal]
type = reversaldef
trigger1 = time = 1
reversal.attr = SA, NA, SA
pausetime = 5, 17
hitsound = s2, 0
sparkNo = -1 + 0*(var(33) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -90
numhits = 0

[State 800, Hit]
type = hitdef
trigger1 = time >= 5 && p2dist x >= 0 && p2bodydist x <= 60 && !var(37) && (enemynear, movetype != H || enemynear, stateno = [120,155])
attr = S, ST
hitflag = MF
priority = 6, Miss
numhits = 1
ground.hittime= 4
guardsound = s2, 0
sparkNo = -1 + 0 * (var(33) := -1)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
hitsound = s0, 800
p2facing = 1
guard.dist = 0
fall = 0
ID = 1501
air.fall = 0
fall.recover = 0
forcestand = 1
fall.recovertime = 120

[State 800, Hit]
type = hitdef
trigger1 = time = 5 && var(37)
attr = A, ST
hitflag = AF
priority = 4, Hit
numhits = 1
ground.hittime= 4
guardsound = s2, 0
sparkNo = -1 + 0 * (var(33) := -1)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
hitsound = s0, 800
p2facing = 1
ID = 1501
guard.dist = 0
fall = 0
air.fall = 0
fall.recover = 0
forcestand = 1
fall.recovertime = 120

[State 800, Hit]
type = hitdef
trigger1 = time = 5 && !var(37) && enemynear, movetype = H && enemynear, stateno != [120,155]
attr = S, ST
hitflag = MAF
priority = 4, Hit
numhits = 1
ground.hittime= 4
guardsound = s2, 0
sparkNo = -1 + 0 * (var(33) := -1)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
hitsound = s0, 800
p2facing = 1
ID = 1501
guard.dist = 0
fall = 0
air.fall = 0
fall.recover = 0
forcestand = 1
fall.recovertime = 120

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit && numtarget(1501)
value = 1511
ctrl = 0

[State 1500, Missed]
type = ChangeAnim
trigger1 = anim = 1500 && animelemtime(2) >= 5*var(10)
value = ifelse(var(37),1505,1504)

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 1505 || anim = 1504
trigger1 = animelem = 1
movetype = I
[State 800, misssnd]
type = playsnd
trigger1 = anim = 1504
trigger1 = animelem = 1
value = 4, 31
channel = 0
[State 800, misssnd]
type = playsnd
trigger1 = anim = 1504
trigger1 = animelem = 1
value = 4, 31
channel = 2

[State 0, VelMul]
type = VelMul
trigger1 = anim = 1505
x = 0.95
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 1500 && var(37)
value = 15
[State 101, Dust]
type = explod
trigger1 = anim = 1504 && vel x && !(time%2)
anim = 8104
sprpriority = 3
postype = p1
pos = 40, 10
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 100, Dust]
type = playsnd
trigger1 = anim = 1504
value = s0, 101
persistent = 0
[State 0, ChangeState]
type = ChangeState
trigger1 = anim = 1504 && !animtime
value = 0
ctrl = 1

[Statedef 1511]
type = S;A
physics = N
movetype = A
anim = 1501
ctrl = 0
velset = 2, -8
poweradd = 0
sprpriority = -2
facep2 = 0
[State 0, Gravity]
type = Gravity
trigger1 = anim = 1501
[State 1260, ExFX]
type = varset
trigger1 = !time
var(25) = 150

[State 0, Hand]
type = Explod
trigger1 = !time
ID = 3999
anim = 1511
postype = p1
pos = 0,0
bindtime = -1
removetime = -1
sprpriority = 2
supermovetime = -1
ownpal = 0
scale = const(size.xscale),const(size.xscale)
removeongethit = 1
[State 0, TargetBind]
type = Targetstate
trigger1 = !time
value = 1507
[State 0, TargetBind]
type = TargetBind
trigger1 = anim = 1501
time = 1
pos = 112*const(size.xscale),-119*const(size.yscale)+80;*target,const(size.yscale)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 1501 && vel y > 0 && pos y >=0
value = 1502
elem = 1
[State 0, TargetBind]
type = Targetlifeadd
trigger1 = anim = 1502 && animelemtime(1)=0
value = (-85*const(data.attack)*0.01)*(target, const(data.defence)*0.01)*(const(data.attack)*0.01)*(const(data.attack)*0.01)*fvar(12)*fvar(12)*fvar(12)
[State 1260, ExFX]
type = varset
trigger1 = anim = 1502 && animelemtime(1)=0
var(25) = 84
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 6 ;anim = 1502 && animelemtime(1) = 0
value = S3, 26
channel = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 6 ;anim = 1502 && animelemtime(1) = 0
value = S3, 26
channel = 3
[State 195, Shake]
type = envshake
trigger1 = anim = 1502 && animelemtime(1)>=18
trigger1 = !(animelemtime(1) % 6)
time = 6
freq = 120
ampl = 3; -ceil(animelemtime(1) * 0.1)
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 1502
trigger1 = !(animelemtime(1) % 12)
value = S5,50
channel = 5
[State 0, HitAdd]
type = HitAdd
trigger1 = anim = 1502
trigger1 = !(animelemtime(1) % 12)
value = 1
[State 0, HitAdd]
type = statetypeset
trigger1 = anim = 1502 && animelemtime(1) = 0
statetype = S

[State 1800, Dust]
type = explod
trigger1 = anim = 1502 && animelemtime(1) = 0
anim = 8112;7107
ID = 7160
sprpriority = 0
postype = p1
pos = 73*const(size.xscale),-pos y
scale = 0.5, 0.5;0.38, 0.2
ownpal = 1
[State 1800, Dust]
type = explod
trigger1 = anim = 1502 && animelemtime(1) = 0
anim = 8113;7107
ID = 7160
sprpriority = 0
postype = p1
pos = 0,-pos y
scale = 0.5, 0.5;0.38, 0.2
ownpal = 1
;[State 101, Dust]
;type = explod
;trigger1 = anim = 1502 && !(animelemtime(1)%3)
;anim = 8104
;sprpriority = 1
;postype = p1
;pos = 73*const(size.xscale), -pos y
;vel = 0, 0
;scale = 0.5, 0.5
;pausemovetime = -1
;supermovetime = -1
;ownpal = 1
[State 1800, Dust]
type = explod
trigger1 = anim = 1502 && animelemtime(1) = 0
anim = 8106;7107
ID = 7240
sprpriority = -1
postype = p1
pos = 73*const(size.xscale),-pos y
scale = 1, 1;0.38, 0.2
ownpal = 1

[State 1304, Shake]
type = envshake
trigger1 = anim = 1502 && animelemtime(1) = 0
time = 18
freq = 120
ampl = 6
[State 1405, flames]
type = helper
trigger1 = anim = 1502 && numhelper(7181) < 1
helpertype = normal
stateno = 7181
ID = 7181
name = "flames"
postype = p2
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = anim = 1502 && animelemtime(1)=0
value = 2
[State 0, TargetBind]
type = Targetstate
trigger1 = anim = 1502 && animelemtime(1)=0
value = 1508
[State 1304, Snd]
type = playsnd
trigger1 = anim = 1502 && animelemtime(1)>=0
value = s5, 0
ignorehitpause = 1
persistent = 0
channel = 4
[State 1304, Snd]
type = playsnd
trigger1 = anim = 1502 && animelemtime(1)>=0
value = s5, 4
ignorehitpause = 1
persistent = 0
[State 0, TargetBind]
type = TargetBind
trigger1 = anim != 1501
time = 1
pos = 53*const(size.xscale),-18*const(size.yscale)+80;*target,const(size.yscale)
[State 0, VelSet]
type = Velset
trigger1 = anim != 1501
x = 6.5
y = 0
[State 0, PosSet]
type = PosSet
trigger1 = anim= 1502
y = -10
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
[State 1000, width]
type = width
trigger1 = 1
value = floor(ifelse(anim=1501,80,50) * const(size.xscale))

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = anim != 1501 && numexplod(3999)
id = 3999

[State 0, ChangeAnim]
type = Changeanim
trigger1 = anim = 1502 && animelemtime(1)>=(var(10)*22)-4
value = 1503

[State 0, TargetBind]
type = Targetlifeadd
trigger1 = anim = 1502 || anim = 1503
value = -1

[State 1511, AR hold C: launcher follow-up]
type = ChangeState
trigger1 = anim = 1503 && animelemtime(2)>=0
trigger1 = !AIlevel && command = "holdc"   ;Abstract Reordered: keep holding C after 214C
value = 7760

[State 0, ChangeAnim]
type = Changestate
trigger1 = anim = 1503 && animelemtime(2)>=0
value = 1502
ctrl = 0