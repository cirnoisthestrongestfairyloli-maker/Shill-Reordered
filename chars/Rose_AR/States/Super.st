; ________________________________________________
;| Rose by KarmaCharmeleon			|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<AURA SOUL SPARK>=============================
[StateDef 3000]
type = S
physics = N
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, Width]
type = Width
trigger1 = AnimElemTime(4) < 0
value = 55, 0

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 43

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 4, -80
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 0
channel = 0

[State 3000, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3000, 1
channel = 0

[State 3000, Soul Spark Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 1
channel = 1

[State 3000, Aura Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 13000
ID = 13000
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3000, Aura Soul Spark Projectile]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 3005
ID = 3005
name = "Aura Soul Spark"
posType = P1
pos = 60, -65
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX AURA SOUL SPARK>=============================
[StateDef 3050]
type = S
physics = S
moveType = A
anim = 3050
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "SuperPause FX"
posType = P1
pos = 4, -80
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3050, Width]
type = Width
trigger1 = AnimElem = 8
value = 50, 0

[State 3050, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 0
channel = 0

[State 3050, Soul Reflect Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200, 1
channel = 1

[State 3050, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 9
value = 3000, 1
channel = 0

[State 3050, Soul Spark Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1000, 1
channel = 1

[State 3050, Aura Explod 1]
type = Explod
trigger1 = AnimElem = 2
anim = 13050
ID = 13050
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3050, Aura Explod 2]
type = Explod
trigger1 = AnimElem = 10
anim = 13051
ID = 13051
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3050, MAX Projectile Reflector]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 3065
ID = 3065
name = "MAX Projectile Reflector"
posType = P1
pos = 0, 0
size.xScale = 0.5
size.yScale = 0.5
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 3050, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
ID = 3050
attr = S, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 10, 12
guard.pauseTime = 10, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -10
ground.cornerPush.velOff = 0
guard.velocity = -10
guard.cornerPush.velOff = 0
air.velocity = -5, -6.15234375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050 Juggle Reset]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget(3050)
var(15) = 0
ignoreHitPause = 1

[State 3050, Aura Soul Spark Projectile]
type = Helper
trigger1 = AnimElem = 9
helperType = Normal
stateNo = 3005
ID = 3055
name = "Aura Soul Spark"
posType = P1
pos = 60, -65
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3050, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 3050, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<AURA SOUL THROW>=============================
[StateDef 3100]
type = S
physics = N
moveType = A
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3100, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3100, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3100, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3100, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3100, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 43

[State 3100, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3100, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3100, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 33, -44
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3000, 0
channel = 0

[State 3100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 12
channel = 1

[State 3100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1300, 0
channel = 0

[State 3100, Soul Throw Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1300, 1
channel = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, Aura Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 13100
ID = 13100
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3100, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
ID = 3100
attr = S, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2, 4
guard.pauseTime = 2, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.25, -7.6953125
ground.cornerPush.velOff = 0
guard.velocity = -8.125
guard.cornerPush.velOff = 0
air.velocity = -3.75, -7.6953125
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 34), var(36) := -92
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100 Juggle Reset]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget(3100)
var(15) = 0
ignoreHitPause = 1

[State 3100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 10
stateType = A
physics = N

[State 3100, Dust Helper]
type = Helper
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 8100
ID = 8100
name = "Soul Throw Dust"
posType = P1
ownPal = 1

[State 3100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 41, 0
channel = 4

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 13.75
y = -9.6875

[State 3100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(10) > 0 && vel x >= 0
x = -0.78125

[State 3100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(10) > 0
y = 0.5859375

[State 3100, VelSet]
type = VelSet
trigger1 = Vel X < 0
x = 0

[State 3100, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = !var(37)
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(18) < 0
attr = A, HT
hitFlag = AF
priority = 7, Miss
getPower = 0, 0
givePower = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -60
numHits = 0
P1StateNo = 3105

[State 3100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(18) >= 0
moveType = I

[State 3100, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3101



;Landing
[StateDef 3101]
type = S
anim = 3101
physics = N
moveType = I
velSet = 0,0

[State 3101, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3101, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3101, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 1

[State 3101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Throw
[Statedef 3105]
type = A
physics = N
moveType = A
anim = 1305
ctrl = 0
sprPriority = 1

[State 1305, PosFreeze]
type = PosFreeze
trigger1 = AnimElemTime(1) < 3
value = 1

[State 3105, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) > 0 && vel x >= 0
x = -0.78125

[State 3105, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) > 0
y = 0.5859375

[State 3105, VelSet]
type = VelSet
trigger1 = Vel X < 0
x = 0

[State 3105, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 51
ctrl = 1

[State 3105, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3106

[State 3105, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 4
channel = 0

[State 3105, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 860, 1
channel = 1

[State 3105, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 24, -13

[State 3105, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 15, -18

[State 3105, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(3) < 7
pos = -40, 12

[State 3105, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) = 7
pos = -58, 46

[State 3105, Damage]
type = TargetLifeAdd
trigger1 = AnimElemTime(3) = 7 && NumTarget
value = floor(ifElse(154 * fvar(11) < 7, -7, -154 * fvar(11)))

[State 3105, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElemTime(3) = 7 && NumTarget
value = 36

[State 3105, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(3) = 7 && NumTarget
value = 1

[State 3105, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(3) = 7 && NumTarget
var(13) = 1

[State 3105, Juggle]
type = VarAdd
trigger1 = AnimElemTime(3) = 7 && NumTarget
var(15) = 1
ignoreHitPause = 1

[State 3105, Juggle]
type = VarSet
trigger1 = AnimElemTime(3) = 7 && NumTarget
var(16) = 1
ignoreHitPause = 1

[State 3105, Throw]
type = TargetState
trigger1 = AnimElemTime(3) = 7 && NumTarget
value = 1307

[State 3105, Flame Particle Timer Set]
type = VarSet
trigger1 = AnimElemTime(3) = 7 && NumTarget
var(44) = 31
ignoreHitPause = 1
persistent = 0

[State 3105, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = AnimElemTime(3) = 7 && NumTarget
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3105, Turn]
type = Turn
trigger1 = AnimElem = 4
ignoreHitPause = 1

[State 3105, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3101



;===========<AURA SOUL THROW (TARGET)>==========
;Being Thrown
[StateDef 3106]
type = A
physics = N
moveType = H
velSet = 0, 0
sprPriority = 2

[State 3106, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1306

[State 3106, Turn]
type = Turn
trigger1 = AnimElem = 2
ignoreHitPause = 1

[State 3106, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(3) > 0
value = 0

[State 3106, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1



;========================<MAX AURA SOUL THROW>=============================
[StateDef 3150]
type = S
physics = S
moveType = A
anim = 3150
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3150, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3150, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3150, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3150, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

[State 3150, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3150, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3150, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "SuperPause FX"
posType = P1
pos = 40, -65
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3150, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3000, 0
channel = 0

[State 3150, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 12
channel = 1

[State 3150, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 12
channel = 1

[State 3150, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1300, 0
channel = 0

[State 3150, Soul Throw Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1300, 1
channel = 1

[State 3150, Aura Explod]
type = Explod
trigger1 = !Time
anim = 13150
ID = 13150
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3150, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElemTime(3) >= 0
ID = 13150

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElemTime(1) = 44
x = 7.34375

[State 0, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) > 44 && AnimElemTime(3) < 0
x = 0.9765625

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x = 0

[State 3150, HitDef 1]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 2
ID = 3150
attr = S, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.25, -1.2109375
ground.cornerPush.velOff = 0
guard.velocity = -8.125
guard.cornerPush.velOff = 0
air.velocity = -1.25, -1.2109375
air.cornerPush.velOff = 0
yAccel = 0.048828125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 73), var(36) := -66
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150 Juggle Reset]
type = ChangeAnim
trigger1 = MoveHit = 1 && NumTarget(3150)
value = 3150
elem = 3

[State 3150, Aura Explod 2]
type = Explod
trigger1 = AnimElem = 4
anim = 13100
ID = 13100
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3150, HitDef 2]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
ID = 3151
attr = S, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2, 4
guard.pauseTime = 2, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.25, -7.6953125
ground.cornerPush.velOff = 0
guard.velocity = -8.125
guard.cornerPush.velOff = 0
air.velocity = -3.75, -7.6953125
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 34), var(36) := -92
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150 Juggle Reset]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget(3150)
trigger2 = MoveHit = 1 && NumTarget(3151)
var(15) = 0
ignoreHitPause = 1

[State 3150, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 10
stateType = A
physics = N

[State 3150, Dust Helper]
type = Helper
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 8100
ID = 8100
name = "Soul Throw Dust"
posType = P1
ownPal = 1

[State 3150, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 41, 0
channel = 4

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 17.5
y = -11.25

[State 3150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(10) > 0 && vel x >= 0
x = -0.78125

[State 3150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(10) > 0
y = 0.5859375

[State 3150, VelSet]
type = VelSet
trigger1 = Vel X < 0
x = 0

[State 3150, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = !var(37)
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(18) < 0
attr = A, HT
hitFlag = AF
priority = 7, Miss
getPower = 0, 0
givePower = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -60
numHits = 0
P1StateNo = 3105

[State 3150, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(18) >= 0
moveType = I

[State 3150, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3101



;========================<ILLUSION SPARK>=============================
[StateDef 3200]
type = S
physics = N
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -5000
faceP2 = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3200, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 47

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3200, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 18, -98
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3200, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3200, 0
channel = 0

[State 3200, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3200, 1
channel = 0

[State 3200, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 3200, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
ID = 3200
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 0, 0
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 16
ground.slideTime = 16
guard.hitTime = 16
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 120), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
numHits = 0

[State 3200, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3200)
value = 3215
ID = 3200
ignoreHitPause = 1
persistent = 0

[State 3200, ChangeState]
type = ChangeState
trigger1 = NumTarget(3200)
trigger1 = MoveHit && Target, Alive
value = 3210

[State 3200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Success
[StateDef 3210]
type = S
anim = 3210
physics = N
moveType = A
velSet = 0, 0

[State 3210, Width]
type = Width
trigger1 = !Time
value = 270, 0

[State 3210, Scarf overlay]
type = Explod
trigger1 = !Time
anim = 13210
bindTime = -1
sprPriority = 3
posType = P1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3210, Aura Explod]
type = Explod
trigger1 = !Time
anim = 13211
ID = 13211
sprPriority = 4
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3210, Aura Sound Effect]
type = PlaySnd
trigger1 = NumTarget && !Time
value = 3200, 2
channel = 2

[State 3210, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = 275, 0

[State 3210, Hit Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = Time = 9 || Time = 18 ||  Time = 27
trigger2 = Time = 36 || Time = 45 || Time = 54
trigger3 = Time = 63 || Time = 72 || Time = 81
trigger4 = Time = 90 || Time = 99 || Time = 108
trigger5 = Time = 117 || Time = 126 || Time = 135
trigger6 = Time = 144 || Time = 153 || Time = 162
trigger7 = Time = 171
value = 2, 7
channel = 3

[State 3210, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && Time = 180
value = 2, 6
channel = 3

[State 3210, Hit Spark]
type = Helper
triggerAll = NumTarget
trigger1 = Time = 9 || Time = 18 ||  Time = 27
trigger2 = Time = 36 || Time = 45 || Time = 54
trigger3 = Time = 63 || Time = 72 || Time = 81
trigger4 = Time = 90 || Time = 99 || Time = 108
trigger5 = Time = 117 || Time = 126 || Time = 135
trigger6 = Time = 144 || Time = 153 || Time = 162
trigger7 = Time = 171 || Time = 180
helperType = Normal
stateNo = 8014
ID = 8001
name = "Spark"
posType = P2
pos = -5 + Random%10, -55 - Random%10
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3210, Damage]
type = TargetLifeAdd
trigger1 = NumTarget
triggerAll = NumTarget
trigger1 = Time = 9 || Time = 18 ||  Time = 27
trigger2 = Time = 36 || Time = 45 || Time = 54
trigger3 = Time = 63 || Time = 72 || Time = 81
trigger4 = Time = 90 || Time = 99 || Time = 108
trigger5 = Time = 117 || Time = 126 || Time = 135
trigger6 = Time = 144 || Time = 153 || Time = 162
trigger7 = Time = 171
value = floor(ifElse(14 * fvar(11) < 7, -7, -14 * fvar(11)))
kill = 0

[State 3210, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && Time = 180
value = floor(ifElse(119 * fvar(11) < 7, -7, -119 * fvar(11)))

[State 3210, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && Time = 180
value = 36

[State 3210, HitAdd]
type = HitAdd
triggerAll = NumTarget
triggerAll = NumTarget
trigger1 = Time = 9 || Time = 18 ||  Time = 27
trigger2 = Time = 36 || Time = 45 || Time = 54
trigger3 = Time = 63 || Time = 72 || Time = 81
trigger4 = Time = 90 || Time = 99 || Time = 108
trigger5 = Time = 117 || Time = 126 || Time = 135
trigger6 = Time = 144 || Time = 153 || Time = 162
trigger7 = Time = 171 || Time = 180
value = 1

[State 3210, HitAdd]
type = VarAdd
triggerAll = NumTarget
triggerAll = NumTarget
trigger1 = Time = 9 || Time = 18 ||  Time = 27
trigger2 = Time = 36 || Time = 45 || Time = 54
trigger3 = Time = 63 || Time = 72 || Time = 81
trigger4 = Time = 90 || Time = 99 || Time = 108
trigger5 = Time = 117 || Time = 126 || Time = 135
trigger6 = Time = 144 || Time = 153 || Time = 162
trigger7 = Time = 171 || Time = 180
var(13) = 1

[State 3210, Juggle]
type = VarAdd
triggerAll = NumTarget
triggerAll = NumTarget
trigger1 = Time = 9 || Time = 18 ||  Time = 27
trigger2 = Time = 36 || Time = 45 || Time = 54
trigger3 = Time = 63 || Time = 72 || Time = 81
trigger4 = Time = 90 || Time = 99 || Time = 108
trigger5 = Time = 117 || Time = 126 || Time = 135
trigger6 = Time = 144 || Time = 153 || Time = 162
trigger7 = Time = 171 || Time = 180
var(15) = 1
ignoreHitPause = 1

[State 3210, EnvShake]
type = EnvShake
triggerAll = NumTarget
triggerAll = NumTarget
trigger1 = Time = 9 || Time = 18 ||  Time = 27
trigger2 = Time = 36 || Time = 45 || Time = 54
trigger3 = Time = 63 || Time = 72 || Time = 81
trigger4 = Time = 90 || Time = 99 || Time = 108
trigger5 = Time = 117 || Time = 126 || Time = 135
trigger6 = Time = 144 || Time = 153 || Time = 162
trigger7 = Time = 171 || Time = 180
time = 37
ampl = -4
freq = 120

[State 3210, Shock Particles Timer Set]
type = VarSet
trigger1 = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
trigger1 = NumTarget && !Time
var(44) = 240
ignoreHitPause = 1
persistent = 0

[State 3210, Shock Particles]
type = Helper
trigger1 = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
trigger1 = !NumHelper(8155)
trigger1 = !Time && NumTarget
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8155
ID = 8155
name = "Shock Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3210, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 2
value = 3216

[State 3210, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Target
[StateDef 3215]
type = S
moveType = H
physics = N
velSet = 0, 0

[State 3215, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
ignoreHitPause = 1

[State 3215, PosSet]
type = PosSet
trigger1 = !Time
y = 0
x = 0

[State 3215, ChangeAnim]
type = ChangeAnim2
trigger1 = !(SelfAnimExist(7696)) && !(SelfAnimExist(9010))
trigger1 = !Time
value = 3215

[State 3215, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(7696) || SelfAnimExist(9010)
value = ifElse(SelfAnimExist(7696), 7696, 9010)

[State 3215, PalFX]
type = PalFX
trigger1 = !(SelfAnimExist(7696)) && !(SelfAnimExist(9010))
trigger1 = !Time
time = 180
mul = 192, 192, 192
sinAdd = 128, 128, 128, 4



;After Throw
[StateDef 3216]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -6.25, -5.78125
sprPriority = 0

[State 3216, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3216, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030

[State 3216, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030
trigger1 = !AnimTime
value = 5050

[State 3216, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = [5050, 5059]
trigger1 = vel y >= ifElse(Anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(Anim + 10)
value = Anim + 10
persistent = 0

[State 3216, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 3215, PalFX]
type = PalFX
trigger1 = !(SelfAnimExist(7696)) && !(SelfAnimExist(9010))
trigger1 = !Time
time = 54
mul = 192, 192, 192
sinAdd = 128, 128, 128, 4

[State 3216, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5126953125

[State 3216, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3216, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100