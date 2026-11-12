;Helpers, FX, hit-states
;===============================================================================
;Normal-atack hitbox
[Statedef 1105]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 9741
sprpriority = 4

[State 0, BindToRoot]
type = BindToRoot
trigger1 = !time
time = 100
facing = 0
pos = 0,0
;ignorehitpause =
;persistent =

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 7000, VarSet]
type = Null
trigger1 = time = 0
trigger1 = 1 || var(5) := root,var(5)
trigger1 = 1 || var(12) := root,var(12)

[State 7000, VarSet]
type = Null
trigger1 = 1 || var(15) := root,var(15)
trigger1 = 1 || var(16) := root,var(16)
trigger1 = 1 || var(17) := root,var(17)
trigger1 = 1 || var(24) := root,var(24)
trigger1 = 1 || fvar(10) := root,fvar(10)

[State 1105, Projectile]
type = Projectile
trigger1 = !time
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
animtype  = Light
damage = floor(ifelse(root,stateno = 1402, 60, 30) * ifelse(root,fvar(22), 1.3, 1)), 0
guardflag = MA
pausetime = 8, 8
hitsound = s1,0;random % 2
guardsound = s2,0
ground.type = high
air.type = low
ground.slidetime = 8;+(((var(0)&2**12)/2**12)*2)
ground.hittime = 8;+(((var(0)&2**12)/2**12)*2)
air.hittime = 8;+(((var(0)&2**12)/2**12)*2)
guard.ctrltime = 9
ground.velocity = -6;*(2-(var(16)>0))/2
air.velocity = -4, -5.25
airguard.velocity = -4,-1
ground.cornerpush.veloff = -8.4;*(2-(var(16)>0))/2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sparkno =  0
guard.sparkno = 40
sparkxy = 20,-10
air.fall = 1
pausemovetime = 100
; envshake.time = 15
; envshake.ampl = 5
; envshake.freq = 120
; envshake.phase = 120
id = 1105

[State 1105, AR hit]
;Abstract Reordered: normal HIT -> chains and cancels open (var(44))
type = ParentVarSet
trigger1 = ProjHit = 1
var(44) = 1
ignorehitpause = 1

[State 1105, AR blocked]
;Abstract Reordered: normal was BLOCKED -> Saitama is at least -8 (var(46))
type = ParentVarSet
trigger1 = ProjGuarded = 1
trigger1 = parent, var(46) = 0
var(46) = 1
ignorehitpause = 1

[State 1105, DS]
type = DestroySelf
triggerall = ishelper
trigger1 = time = 3
;---------------------------------------------------------------------------
;Medium-atack
[Statedef 1106]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 9741
sprpriority = 4

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 7000, VarSet]
type = Null
trigger1 = time = 0
trigger1 = 1 || var(5) := root,var(5)
trigger1 = 1 || var(12) := root,var(12)

[State 7000, VarSet]
type = Null
trigger1 = 1 || var(15) := root,var(15)
trigger1 = 1 || var(16) := root,var(16)
trigger1 = 1 || var(17) := root,var(17)
trigger1 = 1 || var(24) := root,var(24)
trigger1 = 1 || fvar(10) := root,fvar(10)

[State 1105, Projectile]
type = Projectile
trigger1 = !time ;= 0
projanim = 21000
Projhitanim = -1
Projremanim = -1
projcancelanim = -1
projremovetime = 3
offset = 0, 0
projpriority = 7
projsprpriority = 4
velocity = 0
guardflag = MA
attr = S, NA
animtype = Medium
damage = floor(50 * ifelse(root,fvar(22), 1.3, 1)), 0
guardflag = MA
pausetime = 14, 13
hitsound = s1,2;random % 2
guardsound = s2,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = -6
airguard.velocity = -6
air.type = High
air.velocity = -6
air.hittime = 14
air.fall = 1
sparkno =  1
guard.sparkno = 40
sparkxy = 20,-10
envshake.time = 10
envshake.ampl = 5
envshake.freq = 120
envshake.phase = 120
id = 1106


[State 1106, AR hit]
;Abstract Reordered: normal HIT -> chains and cancels open (var(44))
type = ParentVarSet
trigger1 = ProjHit = 1
var(44) = 1
ignorehitpause = 1

[State 1106, AR blocked]
;Abstract Reordered: normal was BLOCKED -> Saitama is at least -8 (var(46))
type = ParentVarSet
trigger1 = ProjGuarded = 1
trigger1 = parent, var(46) = 0
var(46) = 1
ignorehitpause = 1

[State 1105, DS]
type = DestroySelf
triggerall = ishelper
trigger1 = time = 3
;------------------------------------------------------------------------------
;Strong-atack
[Statedef 1107]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 9741
sprpriority = 4

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 7000, VarSet]
type = Null
trigger1 = time = 0
trigger1 = 1 || var(5) := root,var(5)
trigger1 = 1 || var(12) := root,var(12)

[State 7000, VarSet]
type = Null
trigger1 = 1 || var(15) := root,var(15)
trigger1 = 1 || var(16) := root,var(16)
trigger1 = 1 || var(17) := root,var(17)
trigger1 = 1 || var(24) := root,var(24)
trigger1 = 1 || fvar(10) := root,fvar(10)

[State 1105, Projectile]
type = Projectile
trigger1 = !time ;= 0
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
damage = floor(70 * ifelse(root,fvar(22), 1.3, 1)), 0
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

[State 1107, AR hit]
;Abstract Reordered: normal HIT -> chains and cancels open (var(44))
type = ParentVarSet
trigger1 = ProjHit = 1
var(44) = 1
ignorehitpause = 1

[State 1107, AR blocked]
;Abstract Reordered: normal was BLOCKED -> Saitama is at least -8 (var(46))
type = ParentVarSet
trigger1 = ProjGuarded = 1
trigger1 = parent, var(46) = 0
var(46) = 1
ignorehitpause = 1

[State 1105, DS]
type = DestroySelf
triggerall = ishelper
trigger1 = time = 3
;------------------------------------------------------------------------------
;Consecutive normal punches
[Statedef 1108]
type    = S
movetype= A
physics = S
ctrl = 0
poweradd= 0
anim =9741
sprpriority = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1


[State 1108, Projectile]
type = Projectile
trigger1     = !time;mod = 5,0;time = 0
attr         = S,HA
;projID       = 1107
projanim     = 20000
projremove   = 1
projscale    = 1,1;.6,.6
projpriority = 7
projhitanim  = 1011
projremovetime = 1
getpower = 80,10
ownpal = 1
offset = 0,0
projshadow = -1
velocity = 0
attr = A, HA
animtype = heavy
hitflag = MAFP
guardflag = M
damage = floor(2 * ifelse(root,fvar(22), 1.3, 1)), 0
sparkno = 0
guard.sparkno = 40
sparkxy = 30+random%30,-120+random%80
hitsound   = S3,2
guardsound = s2,1
pausetime = 1,2
ground.type = high
ground.slidetime = 13
ground.hittime  = 13
guard.ctrltime = 26
air.hittime = 40
ground.velocity = -11,0
guard.velocity = -10.5
air.velocity = -5, -5.5
air.juggle = 15
air.fall = 1
air.animtype = diagup
p2facing = 1
guard.kill = 0
fall = 0
envshake.time = 15
envshake.ampl = 5
envshake.freq = 120
envshake.phase = 120


[State 1105, DS]
type = DestroySelf
triggerall = ishelper
trigger1 = time = 1
;-------------------------------------------------------------------------------
;LV2 Consecutive normal punches
[Statedef 1118]
type    = S
movetype= A
physics = S
ctrl = 0
poweradd= 0
anim =9741
sprpriority = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1015, 1]
type = Projectile;HitDef
trigger1 = timemod = 5,0
attr = S, NA
Projhitanim = -1
projcancelanim = -1
projremovetime = 1
projanim     = 20000
projremove   = 1
;projscale    = .6,.6
projpriority = 1
projsprpriority = 4
getpower = 0,0
ownpal = 1
offset = 30,0
projshadow = -1
velocity = 3
animtype  = heavy
damage    = floor(12 * ifelse(root,fvar(22), 1.3, 1)), 1
getpower = 40*var(7),10*var(7)
givepower = 5*var(7),5*var(7)
guardflag = MA
pausetime = 2,3
sparkno = 0
sparkxy = 25+random%30,-80+random%85
hitsound   = -1;S1,5
guard.sparkno = 2
guardsound = S2,0
ground.type = low
ground.slidetime = 5
ground.hittime  = 15
ground.velocity = 1
air.velocity = 1,1
Fall = 0
Envshake.time = 10
; juggle = 10
; airguard.velocity = -1.9,-.8
; air.type = low
; air.velocity = -1.4,-3
; p2facing = 1
guard.kill = 0

[State 1015, 2]
type = Projectile;HitDef
trigger1 = timemod = 6,0
attr = S, NA
Projhitanim = -1
projcancelanim = -1
projremovetime = 1
projanim     = 20000
projremove   = 1
;projscale    = .6,.6
projpriority = 1
projsprpriority = 4
getpower = 0,0
ownpal = 1
offset = 30,0
projshadow = -1
velocity = 3
attr = S, NA
animtype  = Heavy
damage    = floor(12 * ifelse(root,fvar(22), 1.3, 1)), 1
getpower = 40*var(7),10*var(7)
givepower = 5*var(7),5*var(7)
guardflag = MA
pausetime = 2,3
sparkno = 0
sparkxy = 25+random%30,-80+random%85
hitsound   = -1;S1,5
guard.sparkno = 2
guardsound = S2,0
ground.type = high
ground.slidetime = 5
ground.hittime  = 15
ground.velocity = -1
air.velocity = -1,-1
Fall = 0
Envshake.time = 10
; juggle = 10
; airguard.velocity = -1.9,-.8
; air.type = High
; air.velocity = -1.4,-3
; p2facing = 1
guard.kill = 0

[State 1105, DS]
type = DestroySelf
triggerall = ishelper
trigger1 = time = 1
;-------------------------------------------------------------------------------
;Serious-atack
[Statedef 1109]
type    = S
movetype= A
physics = S
ctrl = 0
poweradd= 0
velset = 0,0
anim = 9741
juggle = 0
sprpriority = 1

[State 7000, VarSet]
type = Null
trigger1 = time = 0
trigger1 = 1 || var(5) := root,var(5)
trigger1 = 1 || var(12) := root,var(12)

[State 7000, VarSet]
type = Null
trigger1 = 1 || var(15) := root,var(15)
trigger1 = 1 || var(16) := root,var(16)
trigger1 = 1 || var(17) := root,var(17)
trigger1 = 1 || var(24) := root,var(24)
trigger1 = 1 || fvar(10) := root,fvar(10)

[State 1108,1]
type = Projectile
trigger1 = !time
projanim = 20000
projremove = 1
projpriority = 9
projhits = 1
projremovetime = 3
getpower = 100,10
ownpal = 1
offset = 0,0
velocity = 0
attr = A, HA ;attr              = S, NA
damage = floor(150 * ifelse(root,fvar(22), 1.3, 1)), 15
animtype          = Up
; affectteam        = B
getpower          = 30,30
guardflag         = M
pausetime         = 15,15
priority          = 6
sparkno           = -1;s2110
sparkxy           = 0,0
guard.sparkno     = 40
hitsound          = s3,1
guardsound        = s2,1
ground.type       = Low
ground.slidetime  = 14
ground.hittime    = 14
ground.velocity   = -1.5,-13
air.velocity      = -1.3,-8.7
fall              = 1
yaccel            = 0.6
envshake.time    = 12
envshake.ampl    = 6
envshake.freq    = 120
Fall.Recover = 0
P2stateno = 666
envshake.time    = 12
envshake.ampl    = 6
envshake.freq    = 120


[State 1105, DS]
type = DestroySelf
triggerall = ishelper
trigger1 = time = 1
;-------------------------------------------------------------------------------
;Ground going up
[Statedef 1111]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 6210
sprpriority = 4

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 7000, VarSet]
type = Null
trigger1 = time = 0
trigger1 = 1 || var(5) := root,var(5)
trigger1 = 1 || var(12) := root,var(12)

[State 7000, VarSet]
type = Null
trigger1 = 1 || var(15) := root,var(15)
trigger1 = 1 || var(16) := root,var(16)
trigger1 = 1 || var(17) := root,var(17)
trigger1 = 1 || var(24) := root,var(24)
trigger1 = 1 || fvar(10) := root,fvar(10)

[State 1105, Projectile]
type = Projectile
trigger1 = !time ;= 0
projanim = 202
Projhitanim = -1
Projremanim = -1
projcancelanim = -1
projremovetime = 3
offset = 0, 0
projpriority = 1
projsprpriority = 4
velocity = 0,-15
attr = S, NA
animtype  = Hard
damage = 50, 5
guardflag = MA
pausetime = ceil(9*(2-(Var(30)>0))/2),ceil(9*(2-(Var(30)>0))/2)
hitsound = s1,2;random % 2
guardsound = s2,1
ground.type       = Low
ground.slidetime  = 14
ground.hittime    = 14
ground.velocity   = -1.5,-20
air.velocity      = -1.3,-10.5
fall              = 1
yaccel            = 0.6
envshake.time    = 12
envshake.ampl    = 6
envshake.freq    = 120
Fall.Recover = 0
envshake.time    = 12
envshake.ampl    = 6
envshake.freq    = 120
id = 1111

[State 1105, DS]
type = DestroySelf
triggerall = ishelper
trigger1 = time = 50
;-------------------------------------------------------------------------------
;Fullscreen
[Statedef 1112]
type    = S
movetype= A
physics = S
ctrl = 0
poweradd= 0
velset = 0,0
anim = 9741
juggle = 0
sprpriority = 1

[State 1108,1]
type = Projectile
trigger1 = time = 0
projanim = 1604
projremove = 1
projpriority = 9
projhits = 1
projremovetime = 20
getpower = 100,10
ownpal = 1
offset = 0,-350
velocity = 0
attr = A, HA ;attr              = S, NA
damage = floor(150 * ifelse(root,fvar(22), 1.3, 1)), 15
animtype          = Up
; affectteam        = B
getpower          = 30,30
guardflag         = M
pausetime         = 15,15
priority          = 6
sparkno           = -1;s2110
sparkxy           = 0,0
guard.sparkno     = -1;40
hitsound          = s3,1
guardsound        = s3,1
ground.type       = low
ground.slidetime  = 14
ground.hittime    = 14
ground.velocity   = -1.5,-80
air.velocity      = -1.3,-80.7
fall              = 1
yaccel            = 0.6
envshake.time    = 12
envshake.ampl    = 6
envshake.freq    = 120
Fall.Recover = 1
envshake.time    = 220
envshake.ampl    = 6
envshake.freq    = 120


[State 1105, DS]
type = DestroySelf
triggerall = ishelper
trigger1 = time = 20
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;Serious knockout
[Statedef 666]
type    = A
movetype= H
physics = N
ctrl = 0

[State 666,]
type = velset
triggerall = time = 0
trigger1 = Pos Y != 0
trigger2 = (statetype = L)
trigger3 = Pos Y = 0
trigger3 = (prevstateno = [5080,5090])
x = -2
y = -20

[State 666,]
type = velset
triggerall = (statetype != L)
triggerall = Pos Y = 0
triggerall = (prevstateno != [5080,5090])
trigger1 = time = 0
x = 0.75
y = -22.5;12

[State 666, アニメ変更]
type = ChangeAnim2
trigger1 = time = 0
value = 666

[State 666, 角度]
type = AngleAdd
trigger1 = 1
value = 40

[State 666, 角度]
type = AngleDraw
trigger1 = 1

[State 666, 重力]
type = VelAdd
trigger1 = 1
y = .6

[State 666, ダメージ]
type = LifeAdd
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = -5

[State 666, 相手ステートに戻す]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;****************************************************
;knockout helper ^
[Statedef 667]
type    = A
movetype= H
physics = N
anim = 666
ctrl = 0

[State 667, 押し判定]
type = PlayerPush
trigger1 = 1
value = 0
IgnoreHitPause = 1
Persistent = 1

[State 667, アニメ変更]
type = ChangeAnim2
trigger1 = time = 0
value = 666

[State 667,]
type = posset
trigger1 = time = 0
y = -50

[State 667,画面ゆれ]
type = EnvShake
trigger1 = time = 0
time = 50
freq = 120
ampl = -3
phase = 0

[State 667,ストップ]
type = SuperPause
trigger1 = time = 0
time = 50
anim = -1
sound = -1
pos = 0,-50
movetime = 0
darken = 0
p2defmul = 1
unhittable = 1

[State 667,]
type = velset
trigger1 = time = 0
x = -9
y = -1


[State 667, 角度]
type = AngleAdd
trigger1 = 1
value = 40

[State 667, 角度]
type = AngleDraw
trigger1 = 1

[State 667, 重力]
type = VelAdd
trigger1 = 1
y = .05

[State 667, ステート変更]
type = ChangeState
triggerall = Pos y < -1
trigger1 = BackEdgeBodyDist <= 5
trigger2 = FrontEdgeBodyDist <= 5
trigger3 = time >= 50
value = 1028
;-------------------------------------------------------------------------------
;========================<SUPER PAUSE FX>=============================
;Level 1 Super FX
[StateDef 8500]
type = A
velSet = 0,0
anim = 8500
sprPriority = 5

[State 8500, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8500, BGPalFX]
type = BGPalFX
trigger1 = Time < 39 + (Root, StateNo = 3000 || Root, StateNo = 3100) * 11
time = 1
color = 0
mul = 0,0,256

[State 8500, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8500, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8500, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8500, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5,0.5
ignoreHitPause = 1

[State 8500, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8500, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8501
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8500, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8500, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8502
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 32
superMoveTime = -1

[State 8500, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8500, End]
type = DestroySelf
trigger1 = Time >= 40
;-------------------------------------------------------------------------------
;Level 2 Super FX
[StateDef 8510]
type = A
velSet = 0,0
anim = 8510
sprPriority = 5

[State 8510, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8510, BGpalFX]
type = BGPalFX
trigger1 = Time < 39 + (Root, StateNo = 3050 || Root, StateNo = 3150) * 11
time = 1
color = 0
mul = 192,0,256

[State 8510, Rotate]
type = AngleSet
trigger1 = !Time
value =6 * (Random % 60)

[State 8510, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8510, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8510, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8510, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8510, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8511
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8510, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8510, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8510, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8510, Scale Lines Explod 4]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 -(0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8510, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8512
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500,-1,1)
vFacing = ifElse(Random < 500,-1,1)
removeTime = 32
superMoveTime = -1

[State 8510, Scale]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24)<4, 64 * (Time - 24), 256), 256

[State 8510, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8510, End]
type = DestroySelf
trigger1 = Time >= 40

;-------------------------------------------------------------------------------
;Level 3 Super FX
[Statedef 8520]
type = A
velset = 0, 0
anim = 8520
sprpriority = 5

[State 8520, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8520, Assert]
type = assertspecial
trigger1 = time < 40
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 8520, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)

[State 8520, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8520, Scale]
type = angledraw
trigger1 = time < 16
scale = (0.03125 * time), (0.03125 * time)
ignoreHitPause = 1

[State 8520, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8520, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignoreHitPause = 1

[State 8520, Portrait]
type = explod
trigger1 = !time
anim = 8525
ID = 20
sprpriority = -16
postype = back
removetime = 40
supermovetime = -1

[State 8520, Portrait]
type = explod
trigger1 = !time
anim = 8525
ID = 21
sprpriority = -16
postype = back
removetime = 40
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && time < 16
ID = 20
postype = back
pos = GameWidth / 2, floor((1.3333333 * gameheight / gamewidth) * 121)
scale = 1 - (0.03125 * time), 1 - (0.03125 * time)
trans = addalpha
alpha = (8 * time), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(21) && time < 16
ID = 21
postype = back
pos = GameWidth / 2, floor((1.3333333 * gameheight / gamewidth) * 121)
scale = 2 - (0.09375 * time), 2 - (0.09375 * time)
trans = addalpha
alpha = (8 * time), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && (time = [16, 32])
ID = 20
postype = back
pos = GameWidth / 2, floor((1.3333333 * gameheight / gamewidth) * 121)
scale = 0.5, 0.5
trans = addalpha
alpha = 256, 256

[State 8520, Scale Portrait 2b]
type = ModifyExplod
trigger1 = NumExplod(21) && (Time = [16,32])
ID = 21
scale = 0,0

[State 8520, Scale Portrait 1c]
type = ModifyExplod
trigger1 = NumExplod(20) && Time >= 32
ID = 20
posType = Back
pos = 160 + (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Scale Portrait 2c]
type = ModifyExplod
trigger1 = NumExplod(21) && Time >= 32
ID = 21
posType = Back
pos = 160 - (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8521
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8520, Circle]
type = explod
trigger1 = time = 24
anim = 8522
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 32
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8520, Safety]
type = removeexplod
trigger1 = time >= 40

[State 8520, End]
type = destroyself
trigger1 = time >= 40

;---------------------------------------------------------------
;Super Portrait Adjust
[StateDef 8525]
type=A
velset=0,0
anim=9741
sprPriority=5

[State 8520, Assert: NoShadow]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignoreHitPause=1

[State 8520, Assert: NoBarDisplay, NoBG, NoFG]
type=null;AssertSpecial
trigger1=Time < 40
flag=NoBarDisplay
flag2=NoBG
flag3=NoFG

[State 8520, Rotate]
type=AngleSet
trigger1=!Time
value=6 * (Random % 60)

[State 8520, Rotate]
type=AngleAdd
trigger1=1
value=-6

[State 8520, Scale]
type=AngleDraw
trigger1=Time < 16
scale=(0.03125 * Time), (0.03125 * Time)
ignoreHitPause=1

[State 8520, Scale]
type=AngleDraw
trigger1=Time >= 16
scale=0.5, 0.5
ignoreHitPause=1

[State 8520, Transparency]
type=Trans
trigger1=1
trans=AddAlpha
alpha=256,256
ignoreHitPause=1

[State 8520, Portrait 1]
type=Explod
trigger1=!Time
anim=8525 + Root, var(41)
ID=20
sprPriority=-16
posType=Back
removeTime=40
superMoveTime=-1

[State 8520, Portrait 2]
type=Explod
trigger1=!Time
anim=8525 + Root, var(41)
ID=21
sprPriority=-16
posType=Back
removeTime=40
superMoveTime=-1

[State 8520, Scale Portrait 1a]
type=ModifyExplod
trigger1=NumExplod(20) && Time < 16
ID=20
posType=Back
pos=160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale=1 - (0.03125 * Time), 1 - (0.03125 * Time)
trans=AddAlpha
alpha=(8 * Time), 256

[State 8520, Scale Portrait 2a]
type=ModifyExplod
trigger1=NumExplod(21) && Time < 16
ID=21
posType=Back
pos=160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale=2 - (0.09375 * Time), 2 - (0.09375 * Time)
trans=AddAlpha
alpha=(8 * Time), 256

[State 8520, Scale Portrait 1b]
type=ModifyExplod
trigger1=NumExplod(20) && (Time=[16,32])
ID=20
posType=Back
pos=160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale=0.5, 0.5
trans=AddAlpha
alpha=256, 256

[State 8520, Scale Portrait 2b]
type=ModifyExplod
trigger1=NumExplod(21) && (Time=[16,32])
ID=21
scale=0,0

[State 8520, Scale Portrait 1c]
type=ModifyExplod
trigger1=NumExplod(20) && Time >= 32
ID=20
posType=Back
pos=160 + (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale=0.5, 0.5
trans=AddAlpha
alpha=128 - 16 * (Time - 32), 256

[State 8520, Scale Portrait 2c]
type=ModifyExplod
trigger1=NumExplod(21) && Time >= 32
ID=21
posType=Back
pos=160 - (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale=0.5, 0.5
trans=AddAlpha
alpha=128 - 16 * (Time - 32), 256

[State 8520, Remove Explods]
type=RemoveExplod
trigger1=Time >= 40
trigger2=root,stateno!=[3060,3510]

[State 8520, End]
type=DestroySelf
trigger1=Time >= 40
trigger2=root,stateno!=[3060,3510]
;-------------------------------------------------------------------------------
;SUPER FINISH>=========================================
[StateDef 8600]
type = A
velSet = 0,0
anim = 1

[State 8600, Super Finish Sound]
type = PlaySnd
trigger1 = !Time
value = s3,1
channel = 0

[State 8600, SndPan]
type = SndPan
trigger1 = Time <= 80
channel = 1
absPan = ceil(sin(GameTime / 20.0 * pi) * 160)

[State 8600, BG PalFX]
type = BGpalFX
trigger1 = Time < 16
time = 1
mul = 0, 0, 0

[State 8600, BG PalFX]
type = BGpalFX
trigger1 = Time = [16,24)
time = 1
mul = 32 * (Time - 16), 32 * (Time - 16), 32 * (Time - 16)

[State 8600, Move Name: Custom Combo]
type = VarSet
trigger1= !Time && Root, var(23) = 900
var(0) = 1

[State 8600, Move Name: Crazy Train]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3000,3050])
var(0) = 2

[State 8600, Move Name: Flame Breath]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3100,3150])
var(0) = 3

[State 8600, Move Name: Destruction Drop]
type = VarSet
trigger1 = !Time && Root, var(23) = [3200,3251]
var(0) = 4

[State 8600, Move Name: Raiden Bomber]
type = VarSet
trigger1= !Time && Root, var(23) = 3300
var(0) = 5

[State 8600, Super Finish Explod]
type = Explod
trigger1 = !Time
anim = 8600
ID = 8600
ontop = 1
postype = Left
pos = GameWidth / 2, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Super Finish Explod Fade]
type = ModifyExplod
trigger1 = NumExplod(8600)
ID = 8600
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), 256

[State 8600, Text 1]
type = Explod
trigger1 = !Time && var(0)
anim = 8610 + var(0)
ID = 10
onTop = 1
posType = Left
pos = GameWidth / 2, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 2]
type = Explod
trigger1 = !Time && var(0)
anim = 8610 + var(0)
ID = 11
onTop = 1
posType = left
pos = GameWidth / 2, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 1 Fade]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), ifElse(Time < 16, 0, 32 * (Time - 16))

[State 8600, Text 2 Fade]
type = ModifyExplod
trigger1 = NumExplod(11)
ID = 11
scale = 0.5 + (0.0625 * Time), 0.5 + (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time), 32 * Time

[State 8600, Circle Explod]
type = Explod
trigger1 = !Time
anim = 8601
ID = 8601
under = 1
posType = Left
pos = GameWidth / 2, floor((1.3333333 * GameHeight / GameWidth) * 120)
bindTime = -1
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Circle Fade]
type = ModifyExplod
trigger1 = NumExplod(8601)
ID = 8601
scale = (0.25 * time) * (1.3333333 * GameHeight / GameWidth), (0.25 * time) * (1.3333333 * GameHeight / GameWidth)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8600, Assert: NoFG]
type = AssertSpecial
trigger1 = Time < 16
flag = NoFG

[State 8600, Assert: NoBarDisplay]
type = AssertSpecial
trigger1 = Time < 24
flag = NoBarDisplay

[State 8600, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 24
trigger2 = RoundState < 3

[State 8600, End]
type = DestroySelf
trigger1 = RoundState < 3



;CAMERA CONTROL>=============================
[StateDef 8999]
type = S
velSet = 0,0
anim = 1

[State 8999, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1

[State 8999, End]
type = DestroySelf
trigger1 = RoundState = 2



;EXPLODSIVE BUFFERING HELPER>=============================
[StateDef 90000005]
type = A
physics = N
moveType = I
anim = 1
velSet = 0,0
ctrl = 0
 
[State 90000005, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "by JustMorphPointman"
ignoreHitPause = 1
;===============================================================================
;===============================================================================
