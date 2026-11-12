;=================SUPER MOVES, here is all of the super and hyper moves=========
;Super moves, Hyper moves and killer moves (the killer moves are the ones that one shot your opponent)
;Consecutive Normal Punches-S
[Statedef 1400]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 11054
poweradd = -1000
sprpriority = 1

[State 3000, SuperPause FX]
type = Helper
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 17,-80
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = !Time
time = 50
moveTime = 50
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 210, 5]
type = ChangeState
trigger1 = Time >= 50
;trigger2 = Var(2) >= 36
value = 1401
ctrl = 1
;-------------------------------------------------------------------------------
;Helper ^
[Statedef 1401]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim = 11055
sprpriority = 1

; [State 0, NotHitBy]
; type = NotHitBy
; trigger1 = 1
; value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
; time = 1

[State 2000, 0]
type = helper
trigger1 = (GameTime%4) = 0 ;timemod = 2,0
id = 1108
removetime = 100
persistent = 1
name = "Consecutive-normal-punches"
pos = 50,0
stateno = 1108
helpertype = normal
postype = p1

[State 0, Dust Medium FX]
type = Explod
trigger1 = timemod = 9,0
anim = 6020
ID = 6020
pos = 20,0;*Helper(999999),Fvar(16),1*Helper(999999),Fvar(16)
;scale = .25*Helper(999999),Fvar(16),.25*Helper(999999),Fvar(16)
scale = .5,.5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -9
;ontop = 1
ownpal = 1
removeongethit = 1

[State 210, Punch dust]
type = Explod
trigger1 = timemod = 3,0
anim = 8105
; id = 8105
scale = .5,.5
shadow = -1
postype = p1
pos = 95+random%40,-50+random%40
sprpriority = 2+Random%6
pausemovetime = 9999
ownpal = 1
ontop = 1
removetime = -2

[State 210, Punch dust2]
type = Explod
trigger1 = timemod = 3,0
anim = 8105
scale = .5,.5
; id = 1001
shadow = -1
postype = p1
pos = 95+random%40,-100+random%40
sprpriority = -3+Random%6
pausemovetime = 9999
ownpal = 1
removetime = -2

;----------------------------------------
[State 210, Behind Left fist]
type = Explod
trigger1 = timemod = 3,0
anim = 10011
id = 1001
shadow = -1
postype = p1
pos = -20+random%40,-40+random%40
sprpriority = 3;-3+Random%6
pausemovetime = 9999
ownpal = 1
removetime = -2


[State 210, On top right fist]
type = Explod
trigger1 = timemod = 3,0
anim = 10022
id = 1001
shadow = -1
postype = p1
pos = -20+random%40,-10+random%40
sprpriority = 3;2+Random%6
pausemovetime = 9999
ownpal = 1
;ontop = 1
removetime = -2

[State 230]
type = VarAdd
trigger1 = movehit = 1
trigger1 = var(5) = 1
trigger1 = timemod = 6,0
ignorehitpause = 1
var(10) = 4

[State 200, 1]
type = velset
trigger1 = time >= 0
x = .8

[State 200, 1]
type = PlaySnd
trigger1 = time = 0
value = 190, 2
channel = 1

;punch sound
[State 200, 1]
type = PlaySnd
trigger1 = (animelem = 1)
value = s1000, 3
channel = 3
volume	= 255
freqmul	= 1.0
loop	= 1
; pan		        = 0
; abspan		 = 0


; [State 200, 1]
; type = PlaySnd
; trigger1 = timemod = 5,0
; value = s1000, 2
; channel = 1

[State Var(2)]
type = VarSet
trigger1 = Time = 0
var(2) = 0

[State Var(2)]
type = VarAdd
trigger1 = 1
var(2) = 1

; [State Var(2)]
; type = VarAdd
; trigger1 = Command = "x"
; trigger2 = Command = "y"
; trigger3 = Command = "z"
; ignorehitpause = 1
; var(2) = -8

[State 210, 5]
type = ChangeState
trigger1 = Time >= 120
;trigger2 = Var(2) >= 36
value = 1402
ctrl = 1

;---------------------------------------------------------------------------
;End ^
[Statedef 1402]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 11056
sprpriority = 2

[State 0, StopSnd]
type = StopSnd
trigger1 = Time >= 20
channel = 3

[State 200, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = S0,3

[State 0, Dust FX]
type = Explod
trigger1 = animelem = 4
anim = 6010
ID = 6010
pos = 50,0;*Helper(999999),Fvar(16),1*Helper(999999),Fvar(16)
;scale = .25*Helper(999999),Fvar(16),.25*Helper(999999),Fvar(16)
scale = .5,.5
postype = p1
facing = -1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -9
;ontop = 1
ownpal = 1
removeongethit = 1

[State 11101]
type = helper
trigger1 = animelem = 3
id = 1107
persistent = 9
name = "Normal_punch"
pos = 0,-70
postype = P1
stateno = 1105
helpertype = normal
keyctrl = 0
ownpal = 1

[State 0, Dust FX]
type = Explod
trigger1 = animelem = 2
anim = 6010
ID = 6010
pos = -30,0;*Helper(999999),Fvar(16),1*Helper(999999),Fvar(16)
;scale = .25*Helper(999999),Fvar(16),.25*Helper(999999),Fvar(16)
scale = .5,.5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -9
ontop = 1
ownpal = 1
removeongethit = 1

[State 2000,]
type = Posset
trigger1 = time = 0
y = 0

[State 2000,]
type = Velset
trigger1 = time = 0
x = 0
y = 0

[State 210, 5]
type = ChangeState
trigger1 = Time >= 20
value = 0
ctrl = 1
;=================================KILLER MOVES==================================
;Killer_Move_Sideway Jumps
[StateDef 1500]
type = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1500
poweradd = -3000
sprpriority = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 1501, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S190,0
volume = 255
channel = 9

[State 3300, Super Pause FX]
type = Helper
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8520;7510
ID = 8520;7510
name = "Superpause FX"
posType = p1
pos = 5, -88
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, Super Pause]
type = SuperPause
trigger1 = !Time
time = 56
moveTime = 56
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 210, 5]
type = ChangeState
trigger1 = Time >= 80
;trigger2 = Var(2) >= 36
value = 1501
ctrl = 1

;-------------------------------------------------------------------------------
;Helper ^
[StateDef 1501]
type        = S
movetype    = A
physics     = S
juggle      = 5
poweradd    = 50
ctrl        = 0
velset      = 0,0
anim        = 1501
sprPriority = 1
facep2      = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 1501, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S190,1
volume = 255

;--------------------------------------------------
[State explod, Medium Dust1]
type = Explod
trigger1 = (GameTime%2)
anim = 6020
id = 6020
postype = p1
pos = -85+random%-35,-10+random%2
bindtime = 1
ownpal = 1
scale = 0.5,0.5
facing = 1
vfacing = 1
removetime = -2
sprpriority = -9

[State explod, Medium Dust2]
type = Explod
trigger1 = (GameTime%2)
anim = 6020
id = 6020
postype = p1
pos = 85+random%35,-10+random%2
bindtime = 1
ownpal = 1
scale = 0.5,0.5
facing = -1
vfacing = 1
removetime = -2
sprpriority = -9

;-------------
[State explod, Small Dust1]
type = Explod
trigger1 = (GameTime%2)
anim = 6010
id = 6010
postype = p1
pos = -25+random%-35,2+random%2
bindtime = 1
ownpal = 1
scale = .3,.3
facing = 1
vfacing = 1
removetime = -2
sprpriority = 7

[State explod, Small Dust2]
type = Explod
trigger1 = (GameTime%2)
anim = 6010
id = 6010
postype = p1
pos = 25+random%35,2+random%2
bindtime = 1
ownpal = 1
scale = .3,.3
facing = -1
vfacing = 1
removetime = -2
sprpriority = 7
;------------------------------------------

[State 200, PlaySnd]
type = PlaySnd
trigger1 = timemod = 5,0
value = S0,3
volume = 255

[State 11101]
type = helper
trigger1 = (GameTime%4) = 0
id = 1109
persistent = 1
name = "Serious"
pos = -30,0
postype = P1
stateno = 1109
helpertype = normal
keyctrl = 0
ownpal = 1

[State 11101]
type = helper
trigger1 = (GameTime%4) = 0
id = 1109
persistent = 1
name = "Serious"
pos = 30,0
postype = P1
stateno = 1109
helpertype = normal
keyctrl = 0
ownpal = 1

;----------------------------
[State 0, VelSet]
type = VelSet
;triggerall = time = [10,200]
trigger1 = animelem = 4
x =ifelse(prevstateno=10,50,50) ;50;31

[State 0, VelSet]
type = VelSet
;triggerall = time = [10,200]
trigger1 = animelem = 7
x =ifelse(prevstateno=10,-30,-30); -30;31


[State 1501,afterimage]
type = AfterImage
trigger1 = Time = 0
time = 100
trans = add1
TimeGap  = 1
FrameGap = 1
length = 6
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =   1,  1,  1


[State 715, end]
type = ChangeState
trigger1 = Time = 100
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;NOT USED
[Statedef 1600]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0,0
poweradd = -2000   ;Abstract Reordered: 2 bars
sprpriority = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 195, a]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1600
value = 1600
;---------------------------------------
[State 200, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S190,0
volume = 255
;channel = 9

[State 3300, Super Pause FX]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 7, -35
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, Super Pause]
type = SuperPause
trigger1 = AnimElem = 2;!Time
time = 56
moveTime = 56
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0
;----------------------------------------

[State 56, 10]
type = turn
triggerall = p2dist x < -35
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
trigger8 = AnimElem = 8
persistent = 0



; [State 1000, Explod]
; type = Explod
; trigger1 = AnimElem = 3, = 1
; anim = 8300
; id = 8300
; supermove = 1
; sprpriority = 4
; ownpal = 1
; removeongethit = 1

; [state 700, 2]
; type = PlaySnd
; trigger1 = Animelem = 2
; value = 0, 7

; [state 700, 2]
; type = PlaySnd
; trigger1 = Animelem = 9
; value = 0, 2

[State 1600, VarSet]
type = VarSet
trigger1 = animelem = 2
var(29) = 1

[State 1600, VarSet]
type = VarSet
trigger1 = animelem = 15
var(29) = 0


[State 220, Helper]
type = Helper
trigger1 = animelem = 8
pos = 80, 80
Stateno = 1601
id = 1000

[State 220, Helper]
type = Helper
trigger1 = Time = 58
pos = 160, 80
Stateno = 1601
id = 1000

[State 220, Helper]
type = Helper
trigger1 = Time = 68
pos = 240, 80
Stateno = 1601
id = 1000

[State 220, Helper]
type = Helper
trigger1 = Time = 78
pos = 320, 80
Stateno = 1601
id = 1000

[State 220, Helper]
type = Helper
trigger1 = Time = 88
pos = 380, 80
Stateno = 1601
id = 1000

[State 220, Helper]
type = Helper
trigger1 = Time = 98
pos = 460, 80
Stateno = 1601
id = 1000

[State 520, Helper]
type = Helper
trigger1 = Time = 108
pos = 540, 80
Stateno = 1601
id = 1000

[State 220, Helper]
type = Helper
trigger1 = Time = 118
pos = 620, 80
Stateno = 1601
id = 1000

[State 220, Helper]
type = Helper
trigger1 = Time = 128
pos = 680, 80
Stateno = 1601
id = 1000

[State 220, Helper]
type = Helper
trigger1 = Time = 138
pos = 760, 80
Stateno = 1601
id = 1000

[State 220, Helper]
type = Helper
trigger1 = Time = 148
pos = 840, 80
Stateno = 1601
id = 1000

[State 220, Helper]
type = Helper
trigger1 = Time = 158
pos = 920, 80
Stateno = 1601
id = 1000

[State 1600, Width]
type = Width
trigger1 = 1
edge = 32,0

[State 1601, Envshake]
type = EnvShake
trigger1 = animelem = 9
ampl = 14
time = 10

[State 5400, 2]
type = ScreenBound
trigger1 = animelemtime(8)>0 && anim=1600&&p2movetype=H&&(p2stateno!=[120,155])
trigger2=anim=0
value = 0

[State 250, 5]
type = ChangeState
trigger1 = BackEdgeDist < 0
trigger1 = P2StateNo = 5110
value = 100;111

[State 250, 5]
type = ChangeState
triggerall = Animtime = 0
trigger1 = BackEdgeDist >= -10
trigger2 = Helper(1000), MoveGuarded
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;NOT USED
[Statedef 1601]
type    = A
movetype= A
physics = N
juggle  = 5
;poweradd= ifelse(PrevStateNo = 9000, 0, 60)
ctrl = 0
velset = 0,-18
anim = 1601
sprpriority = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 1601, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = S3,3
channel = 12
freqmul = 51.0
pan = 5

[State 1601, Earth goin going FX]
type = Explod
trigger1 = time = 0;timemod = 9,0
anim = 6210
ID = 6210
pos = 0,0
;scale = .5,.5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -9
;ontop = 1
ownpal = 1

[State 1601, VelAdd]
type = VelAdd
trigger1 = 1
y = .39

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
y = 5

[State 1601, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SAC

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = S1,2
channel = 12
freqmul = 51.0
pan = 5
;abspan =

[State 1601, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,HP
damage = floor(24 * ifelse(root,fvar(22), 1.3, 1)), 2
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 5,Hit
pausetime = 0, 5
guard.pausetime = 0,5
sparkno =  2
guard.sparkno = 40
sparkxy = -10,-83
guardsound = S2,1
ground.type = Low
ground.slidetime = 20
ground.hittime = 25
ground.velocity = -9,-4
guard.velocity = -3
airguard.velocity = -3,-3
air.type = low
air.velocity = -12.4,-5
air.hittime = 20
yaccel = 1.27
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
;fall.recovertime = 40
sprpriority = 3
getpower=0

[State 250, 5]
type = DestroySelf
trigger1 = Animtime = 0
;-------------------------------------------------------------------------------
;LV2 Consecutive Punches
[Statedef 1700]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1700
poweradd = -2000
sprpriority = 2

;---------------------------------
;LEVEL 2
[State 3000, SuperPause FX]
type = Helper
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8510
ID = 8510
name = "Superpause FX"
posType = P1
pos = 17,-80
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = !Time
time = 50
moveTime = 50
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0
;---------------------------------
[State 0, PosSet]
type = Posadd
trigger1 = animelem = 4 ;time = 0
x = p2bodydist x + 10

[State 0, Explod]
type = Explod
trigger1 = animelem=4
anim = 6020
ID = 6020
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 0;1
removetime = -2
scale = .3,.3;*Helper(999999),Fvar(16),.5*Helper(999999),Fvar(16)
sprpriority = 3;1
ontop = 0
ownpal = 1
removeongethit = 0;1
ignorehitpause=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 35
value = S1500,1
volume = 999
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 35
value = S1500,1
volume = 999
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 35
value = S1500,1
volume = 999
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 35
value = S1500,1
volume = 999

[State 3000, VarSet]
type = Varset
trigger1 = time = 0
v = 12
value = -100

[State 3000, VarSet]
type = Varset
trigger1 = time = 30
v = 12
value = 0

[State 3000, VarAdd]
type = VarAdd
trigger1 = time >= 20 && Var(12) < 0
v = 12
value = 6

[State 0, Vacuum]
type = Explod
trigger1 = time = 30
anim = 6010;1303
ID = 6010;1230
postype = p1
pos = 0,0;*Helper(999999),Fvar(16),0*Helper(999999),Fvar(16)
scale = .4,.4;*Helper(999999),Fvar(16),.8*Helper(999999),Fvar(16)
sprpriority = 2
;ontop = 0
ownpal = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 30
x = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 30
value = s1000,0;S5,9
volume = 50

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 30
time = 10

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Unguardable

[State 1105, Projectile]
type = Projectile
trigger1 = animelem = 4;!time ;= 0
projanim = 21000
Projhitanim = -1
Projremanim = -1
projcancelanim = -1
projremovetime = 3
offset = 0, 0
projpriority = 7
projsprpriority = 4
velocity = 0
attr = S, NA
animtype  = Hard
damage = floor(60 * ifelse(fvar(22), 1.3, 1)), 6
guardflag = MA
pausetime = 12, 12
hitsound = s1,5;random % 2
guardsound = s2,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = -6
airguard.velocity = -6
air.type = High
air.velocity = -6
air.hittime = 14
air.fall = 1
sparkno =  2
guard.sparkno = 40
sparkxy = 20,-10
envshake.time = 15
envshake.ampl = 8
envshake.freq = 125
envshake.phase = 125
id = 1107

; [State 200, 1]
; type = HitDef
; triggerall = !movecontact
; trigger1 = 1
; attr = A, SA
; animtype = Heavy
; damage = 50
; Hitflag = MAFDE
; guardflag = MA
; pausetime = 12,30
; sparkno = -1
; guard.sparkno = s7000
; sparkxy = -8,-25
; hitsound   = S2,4
; guardsound = S4,1
; ground.type = High
; ground.slidetime = 12
; ground.hittime  = 15
; ground.velocity = -6,-4
; air.velocity = 0,0
; Fall = 0
; Envshake.time = 35
; Getpower = 0,0

; [State 200, Spark CVS]
; type = Explod
; triggerall = Numexplod(7001) = 0
; trigger1 = Movehit = 1
; anim = 7013
; ID = 7001
; postype = P2
; pos = -10,-30
; facing = -1
; sprpriority = 2
; supermove = 1
; removetime = -2
; bindtime = 1
; ownpal = 1
; scale = .15*Helper(999999),Fvar(16),.15*Helper(999999),Fvar(16)
; removeongethit = 1
; ontop = 1
; supermovetime 	= 999
; ignorehitpause  = 1

[State 0, ChangeState]
type = ChangeState
Trigger1 = animelem = 6
value = 1701;111401

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;Helper ^
[Statedef 1701]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1701
poweradd = 0
sprpriority = -2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = animelem = 1
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = -1;s8500,0
darken = 0

[State 1015, Cape FX]
type = Explod
trigger1 = timemod = 8,0
anim = 6001
ID = 6001
pos = -22,-24
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
sprpriority = 2
;ontop = 1
ownpal = 1
removeongethit = 1

[State 210, background with fists]
type = Explod
trigger1 = animelem = 1
anim = 7531
id = 7531
postype = back
supermove = 1
pos = 0,0;-20+random%40,-40+random%40
sprpriority = 20;-3+Random%6
pausemovetime = 9999
scale = .4,.6
ontop = 1
ownpal = 1
removetime = -2
ignorehitpause  = 1

[State 2000, 0]
type = helper
trigger1 = animelem = 4
trigger2 = animelem = 6
trigger3 = animelem = 10
;trigger1 = (GameTime%4) = 4
id = 1118
removetime = 100
persistent = 1
name = "Consecutive-normal-punches"
pos = 40,0
stateno = 1118
helpertype = normal
postype = p1



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1000,4
volume = 999
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1000,4
volume = 999

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3;||animelem = 8
value = S190,5
volume = 50

;-----------------------------------
[State 210, Behind Left fist]
type = Explod
;triggerall = animelem = 7
trigger1 = animelem = 7 || timemod = 3,0 ;||time = 34
anim = 10011
id = 10011
shadow = -1
postype = p1
pos = -20+random%40,-40+random%40
sprpriority = 7;-3+Random%6
pausemovetime = 9999
ownpal = 1
removetime = -2


[State 210, On top right fist]
type = Explod
;triggerall = animelem = 7
trigger1 = animelem = 7 || timemod = 3,0
anim = 10022
id = 10022
shadow = -1
postype = p1
pos = -20+random%40,-10+random%40
sprpriority = 7;2+Random%6
pausemovetime = 9999
ownpal = 1
;ontop = 1
removetime = -2
;-------------------------------------------
[State 210, Punch dust]
type = Explod
trigger1 = timemod = 3,0
anim = 8105
; id = 8105
scale = .5,.5
shadow = -1
postype = p1
pos = 95+random%40,-50+random%40
sprpriority = 2+Random%6
pausemovetime = 9999
ownpal = 1
removetime = -2

[State 210, Punch dust2]
type = Explod
trigger1 = timemod = 3,0
anim = 8105
scale = .5,.5
; id = 1001
shadow = -1
postype = p1
pos = 95+random%40,-100+random%40
sprpriority = -3+Random%6
pausemovetime = 9999
ownpal = 1
removetime = -2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 30||time = 36
value = S40,2
volume = 50

; [State 0, PosSet]
; type = Posadd
; trigger1 = time = 30
; x = p2bodydist x + 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3;||animelem = 8
value = S1000,1
volume = 50

[State 0, Medium Dust]
type = Explod
trigger1 = animelem = 6;||animelem = 8
anim = 6020
ID = 6020
pos = 10,0;*Helper(999999),Fvar(16),0
postype = p1
scale = .5,.5;*Helper(999999),Fvar(16),.3*Helper(999999),Fvar(16)
sprpriority = -9
;ontop = 1
ownpal = 1
vel = -2;*Helper(999999),Fvar(16)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Unguardable

; [State 200, 1]
; type = HitDef
; trigger1 = animelem = 6;||animelem = 8
; attr = A, SA
; animtype  = heavy
; damage  = 20
; Hitflag = MAFDE
; guardflag = MA
; pausetime = 1,2
; sparkno = -1
; guard.sparkno = s7000
; sparkxy = -8,-25
; hitsound   = S1,6
; guardsound = S4,1
; ground.type = low
; ground.slidetime = 12
; ground.hittime  = 15
; ground.velocity = 0
; air.velocity = 0,0
; Fall = 0
; Envshake.time = 10
; Getpower = 0,0

;------------------------------------------
[State 0, rocks/rocas]
type = Explod
trigger1 = time = 10
anim = 6210
ID = 926
pos = 90,10;*Helper(999999),Fvar(16),10*Helper(999999),Fvar(16)
postype = p1
bindtime = -1
removetime = -1
supermovetime = 95
supermove = 95
;scale = 1*Helper(999999),Fvar(16),1*Helper(999999),Fvar(16)
sprpriority = 2
;ontop = 1
ownpal = 1
removeongethit = 1
vel = 5,-2.5
random = 10,0

[State 0, rocks/rocas2]
type = Explod
trigger1 = time = 10
anim = 6210
ID = 926
pos = -60,10;*Helper(999999),Fvar(16),10*Helper(999999),Fvar(16)
postype = p1
bindtime = -1
removetime = -1
supermovetime = 95
supermove = 95
;scale = 1,1;*Helper(999999),Fvar(16),1*Helper(999999),Fvar(16)
sprpriority = 9
;ontop = 1
ownpal = 1
removeongethit = 1
vel = 5,-2.5
random = 10,0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 200
id = 926
;-----------------------------------------------------------
; [State 0, Circulo]
; type = Explod
; trigger1 = time = 30
; anim = 1302
; ID = 927
; pos = 0*Helper(999999),Fvar(16),-90*Helper(999999),Fvar(16)
; postype = p1
; bindtime = -1
; removetime = -1
; supermovetime = 95
; supermove = 95
; scale = 1*Helper(999999),Fvar(16),1*Helper(999999),Fvar(16)
; sprpriority = 2
; ontop = 1
; ownpal = 1
; removeongethit = 1
; 
; [State 0, RemoveExplod]
; type = RemoveExplod
; trigger1 = time = 140
; id = 927

; [State 0, Circulo]
; type = Explod
; trigger1 = time = 30
; anim = 1303
; ID = 928
; pos = 0*Helper(999999),Fvar(16),0*Helper(999999),Fvar(16)
; postype = p1
; bindtime = -1
; removetime = -1
; supermovetime = 95
; supermove = 95
; scale = 1*Helper(999999),Fvar(16),1*Helper(999999),Fvar(16)
; sprpriority = 2
; ontop = 1
; ownpal = 1
; removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 140
id = 928

[State 0, BIG dust FX]
type = Explod
trigger1 = timemod = 9,0
anim = 6030
ID = 6030
pos = 40,0
;scale = .5,.5
postype = p1
facing = -1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -9
;ontop = 1
ownpal = 1
removeongethit = 1

; [State 0, Explod, grietas/cracked floor]
; type = Explod
; trigger1 = time%4=0 && time > 5 && pos y = 0
; anim = 8240
; ID = 7022
; pos = 0,0*Helper(999999),Fvar(16);-5,0
; postype = p1
; facing = 1
; vfacing = 1
; bindtime = 0;1
; removetime = -2
; scale = .9*Helper(999999),Fvar(16),.9*Helper(999999),Fvar(16)
; sprpriority = 1
; ontop = 0
; ownpal = 1
; removeongethit = 0;1
; ignorehitpause=1


; [State 0,Explod Lineas negras]
; type=Explod
; TriggerALL=AnimElemTime(2)>=0
; trigger1=Time%5=0
; anim=76
; ID=7025
; pos=-5*Helper(999999),Fvar(16),(-35+Random%30)*Helper(999999),Fvar(16)
; postype=p1
; facing=1
; vfacing=Cond(Random<500,1,-1)
; bindtime=2
; removetime=-2
; scale=.25*Helper(999999),Fvar(16),.1*Helper(999999),Fvar(16)
; sprpriority=3
; ontop=0
; ownpal=1
; removeongethit=1
; ignorehitpause=1
; vel=-1,0
; ;Trans=Sub
; Angle=90

; [State 200, End]
; type = ChangeState
; trigger1 = movehit && time = 150
; value = 400

[State 200, End]
type = ChangeState
trigger1 = time = 220
value = 1702
;-------------------------------------------------------------------------------
;End ^
[Statedef 1702]
type    = S
movetype= I
physics = S
juggle  = 1
ctrl = 0
anim = 1051
sprpriority = 2

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;Killer_Move Serious Punch
[StateDef 3100]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 113000
poweradd = -3000
sprpriority = 1

[State 0, StopSnd]
type = StopSnd
trigger1 =time=0
channel = -1

[State 3300, Super Pause FX]
type = Helper
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 7, -35
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, Super Pause]
type = SuperPause
trigger1 = !Time
time = 56
moveTime = 56
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0
;-------------------------------------------------------------------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = S190,0
volume = 999

; [State 3000, SuperPause]
; type = SuperPause
; trigger1 = time = 0
; time = 300
; movetime = 100
; anim = -1
; sound = -1
; pos = 32,-80
; darken = 0
; unhittable = 1
;---------------------

; [State 3000, VarSet]
; type = Varset
; trigger1 = time = 0
; v = 12
; value = -100
; 
; [State 3000, VarAdd]
; type = VarAdd
; trigger1 = time >= 20 && Var(12) < 0
; v = 12
; value = 6


[State 815, end]
type = ChangeState
trigger1 = Time = 10
value = 3101
ctrl = 1

;-------------------------------------------------------------------------------
;Helper ^
[StateDef 3101]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 113001
poweradd = 0
sprpriority = 2

[State 1500, Turn]
type = Turn
triggerall = time >= 200
Trigger1 = P2Dist X < 0

; [State 0, AssertSpecial]
; type = AssertSpecial
; trigger1 = time >= 210
; flag = nobardisplay
; flag2 = timerfreeze

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 290
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 742, end]
type = ChangeState
trigger1 = Time = 100
value = 3102
ctrl = 1
;-------------------------------------------------------------------------------
;Helper ^
[Statedef 3102]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 113002
poweradd = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S190,3
volume = 999

; [State 0, AssertSpecial]
; type = AssertSpecial
; trigger1 = 1
; flag = nobardisplay
; flag2 = timerfreeze

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, Dust FX behind]
type = Explod
trigger1 = timemod = 9,0
anim = 6010
ID = 6010
pos = -20,0;*Helper(999999),Fvar(16),1*Helper(999999),Fvar(16)
;scale = .25*Helper(999999),Fvar(16),.25*Helper(999999),Fvar(16)
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 1

[State 1, Dust FX in front]
type = Explod
trigger1 = timemod = 9,0
anim = 6010
ID = 6010
pos = 70,0;*Helper(999999),Fvar(16),1*Helper(999999),Fvar(16)
;scale = .25*Helper(999999),Fvar(16),.25*Helper(999999),Fvar(16)
postype = p1
facing = -1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 1
;--------------------------------------------------------------
[State 2, Dust FX]
type = Explod
trigger1 = timemod = 9,0
anim = 8108
ID = 8108
pos = 140,0;*Helper(999999),Fvar(16),1*Helper(999999),Fvar(16)
scale = .5,.5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 1

[State 3, Dust FX BIG]
type = Explod
trigger1 = timemod = 9,0
anim = 8118
ID = 8118
pos = 300,0;*Helper(999999),Fvar(16),1*Helper(999999),Fvar(16)
;scale = .5,.5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 1
;------------------------------------------------------------
[State 200, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S5,45
volume = 255
channel = -1

[State 200, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = S3000,1
volume = 255
channel = 10

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal
name = "Helper"
ID = 3103
stateno = 3103
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
pausemovetime = 60


; [State 0, Serious Punch Activado]
; type = Helper
; trigger1 = time = 530
; helpertype = Normal
; name = "Serious Punch Activado"
; ID = 3190
; stateno = 3190
; pos = 999,999
; postype = p1
; facing = 1
; keyctrl = 0
; ownpal = 1

[State 200, End]
type = ChangeState
trigger1 = time = 200
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;Serious Damage
[Statedef 3103]
;Abstract Reordered: Serious Punch hit. Was an instant kill (damage 10^46, TargetLifeAdd); now one big blockable punch.
type    = S
movetype= A
physics = N
ctrl = 0
poweradd= 0
velset = 0,0
anim = 100000
juggle = 0
sprpriority = 1

[State 3103, Sound]
type = PlaySnd
trigger1 = Time = 5
value = S1,6
channel = 12
volumescale = 130

[State 3103, Punch]
type = Projectile
trigger1 = Time = 5
projanim = 100000
projid = 100000
projhitanim = -1
projremanim = -1
projcancelanim = -1
projremovetime = 1
projpriority = 9
offset = 0,0
postype = p1
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Heavy
damage = floor(350 * ifelse(root,fvar(22), 1.15, 1)), 35
pausetime = 0, 30
sparkno = -1
guard.sparkno = -1
hitsound = -1
guardsound = S2,0
ground.type = High
ground.slidetime = 20
ground.hittime = 30
ground.velocity = -14, -8
air.velocity = -14, -8
guard.velocity = -14
fall = 1
fall.recover = 0
envshake.time = 30
envshake.ampl = 8
getpower = 0, 0
givepower = 0, 0

[State 3103, End]
type = DestroySelf
trigger1 = Time = 60

[Statedef 23000000]
type    = A
movetype= H
physics = N
velset = 0,0

[State 20000]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 20000]
type = NotHitBy
trigger1 = 1
value2 = SCA
ignorehitpause = 1

[state a]
type = removeexplod
trigger1 = 1
ignorehitpause = 1

[state a]
type=posset
trigger1=ishelper
x = 0
y = 0
ignorehitpause=1

[state a]
type = changestate
triggerall = !ishelper
trigger1 = name !="Rare Akuma"
trigger1 = !alive
value = 5150
ignorehitpause = 1

[State 20000]
type = ChangeState
triggerall = name = "Rare Akuma"
triggerall = ishelper = 0
trigger1 = 1
value = 50
ignorehitpause = 1

[State 20000]
type = DestroySelf
triggerall = name = "Rare Akuma"
triggerall = ishelper
trigger1 = 1
ignorehitpause = 1

[State 20000]
type = LifeSet
triggerall = name != "Rare Akuma"
trigger1 = 1
value = 0
ignorehitpause = 1

[State 20000]
type = PowerSet
triggerall = name != "Rare Akuma"
trigger1 = 1
value = 0
ignorehitpause = 1

[State 20000]
type = AssertSpecial
trigger1 = name != "Rare Akuma"
trigger1 = ishelper
flag = invisible
ignorehitpause = 1

[State 20000]
type = BindToTarget
triggerall = name != "Rare Akuma"
triggerall = ishelper
trigger1 = time = 0
ignorehitpause = 1

[State 20000]
type = BindToParent
triggerall = name != "Rare Akuma"
triggerall = ishelper
trigger1 = time = 0
ignorehitpause = 1

[State 20000]
type = BindToRoot
triggerall = name != "Rare Akuma"
triggerall = ishelper
trigger1 = time = 0
ignorehitpause = 1

[State 20000]
type = VelSet
triggerall = name != "Rare Akuma"
triggerall = ishelper
trigger1 = 1
x = 0
y = 0
ignorehitpause = 1

[State 20000]
type = PosSet
triggerall = name != "Rare Akuma"
trigger1 = 1
x = 0
y = 2500
ignorehitpause = 1

[State 20000]
type = Projectile
triggerall = name != "Rare Akuma"
trigger1 = root,numprojid(30668966295921773838) <= 0
projanim = anim
projid = 30668966295921773838
projremove = 1
projremovetime = -1
projpriority = 99999
projedgebound = 99999
projstagebound = 99999
projheightbound = -99999,99999
offset = 0,2500
attr = C,SA
hitflag = MAFPD
sparkno = -1
numhits = 0
p1stateno = prevstateno
persistent = 0
ignorehitpause = 1

[State 20000]
type = Projectile
triggerall = name != "Rare Akuma"
trigger1 = root,numprojid(30668966295921773838) <= 0
projanim = anim
projid = 30668966295921773838
projremove = 1
projremovetime = -1
projpriority = 99999
projedgebound = 99999
projstagebound = 99999
projheightbound = -99999,99999
attr = C,SA
hitflag = MAFPD
sparkno = -1
numhits = 0
p1stateno = 50
persistent = 0
ignorehitpause = 1

[State 20000]
type = DestroySelf
triggerall = name != "Rare Akuma"
trigger1 = root,numprojid(30668966295921773838) <= 0
ignorehitpause = 1

[state 1]
type = Null
triggerall = name != "Rare Akuma"
trigger1 = 1
ignorehitpause = 1

;-------------------------------------------------------------------------------
[Statedef 25000000]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 5050
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = -.1
y = -.1

[State 0, VelSet]
type = VelSet
trigger1 = time = 80
x = -.3
y = -.3

[State 20000]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1
pausemovetime = 9999999
supermovetime = 9999999

[State 20000]
type = NotHitBy
trigger1 = 1
value2 = SCA
ignorehitpause = 1
pausemovetime = 999999
supermovetime = 999999

[State 20000]
type = ChangeState
triggerall = name = "Rare Akuma"
trigger1 = 1
value = 50
ignorehitpause = 1

[state a]
type = removeexplod
trigger1 = 1
ignorehitpause = 1

[State 20000]
type = DestroySelf
triggerall = name = "Rare Akuma"
triggerall = ishelper
trigger1 = 1
ignorehitpause = 1


[state 20000]
type = lifeset
triggerall = name != "Rare Akuma"
trigger1 = 1
value = 0
absolute = 1
ignorehitpause = 1

[state 20000]
type = selfstate
trigger1 = alive = 0
value = 5150
ignorehitpause = 1

[State 20000]
type = DestroySelf
triggerall = name != "Rare Akuma"
triggerall = ishelper
trigger1 = 1
ignorehitpause = 1

; [State 0, VelSet]
; type = VelSet
; triggerall = !alive
; trigger1 = time >= 0
; x = 0
; y = 0

; [State 810, SelfState]
; type = SelfState
; triggerall = alive
; trigger1 = time = 91
; value = 5050
; 
; [State 810, SelfState]
; type = SelfState
; triggerall = !alive
; trigger1 = time = 191
; value = 5150
;-------------------------------------------------------------------------------
