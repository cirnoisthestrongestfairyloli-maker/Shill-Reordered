; ________________________________________________
;| Alex by KarmaCharmeleon			|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<BOOMERANG RAID>=============================
[StateDef 3000]
type = S
physics = N
moveType = A
anim = 3000
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

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
add = 255, 255, 255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
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
pos = ceil(-12 * const(size.xScale)), -64
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
unHittable = 0
anim = -1
sound = s8500, 0
darken = 0

[State 3000, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3000, 0
channel = 0

[State 3000, Voice]
type = PlaySnd
trigger1 = AnimElem = 22
value = 4, 1
channel = 0

[State 3000, Voice]
type = PlaySnd
trigger1 = AnimElem = 30
value = 4, 2
channel = 0

[State 3000, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6 || AnimElem = 14 || AnimElem = 22 || AnimElem = 30
value = 1, 2
channel = 1

[State 3000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5 || AnimElem = 6 || AnimElem = 7
trigger2 = AnimElem = 13 || AnimElem = 14 || AnimElem = 15
trigger3 = AnimElem = 21 || AnimElem = 22 || AnimElem = 23
trigger4 = AnimElem = 29 || AnimElem = 30 || AnimElem = 31
x = 12 * const(size.xScale)

[State 3000, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 7 || AnimElem = 23
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 36
ground.slideTime = 18
guard.hitTime = 15
guard.slideTime = 15
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.40734669781
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 110), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 15 || AnimElem = 31
ID = 3000
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 36
ground.slideTime = 18
guard.hitTime = 15
guard.slideTime = 15
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.40734669781
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 110), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, TargetFacing]
type = TargetFacing
trigger1 = MoveHit && NumTarget(3000)
trigger1 = Target(3000), StateType != A
ID = 3000
value = 1
ignoreHitPause = 1

[State 3000, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 40 && !var(37)
attr = S, HT
hitFlag = M
priority = 7, Miss
getPower = 0,0
givePower = 0,0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -70
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = ifElse((Facing != EnemyNear, Facing), 3010, 3020)

[State 3000, Voice]
type = PlaySnd
trigger1 = AnimElem = 42
value = 800, 0
channel = 0

[State 3000, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 42
value = 1, 2
channel = 1

[State 3000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(42) >= 0
moveType = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<POWER BOMB (SUCCESS)>==========
;Throw
[Statedef 3010]
type = S
physics = N
moveType = A
anim = 1410
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 3010, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3010, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3010, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1415

[State 3010, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(4) < 0
edge = ceil(88 * const(size.xScale)), 0

[State 3010, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
edge = ceil(48 * const(size.xScale)), 0

[State 3010, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(9) >= 0
edge = ceil(56 * const(size.xScale)), 0

[State 3010, TargetBind 1]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = ceil(100 * const(size.xScale)), 0

[State 3010, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil(89 * const(size.xScale)), 0

[State 3010, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(92 * const(size.xScale)), 0

[State 3010, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil(19 * const(size.xScale)), 0

[State 3010, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = ceil(3 * const(size.xScale)), 0

[State 3010, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = ceil(48 * const(size.xScale)), -64

[State 3010, TargetBind 7]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = ceil(32 * const(size.xScale)), -144

[State 3010, TargetBind 8]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = ceil(24 * const(size.xScale)), -150

[State 3010, TargetBind 9]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = ceil(3 * const(size.xScale)), -160

[State 3010, TargetBind 10]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(10) >= 0
pos = ceil(11 * const(size.xScale)), -143

[State 3010, Voice]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1410, 0
channel = 0

[State 3010, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 9
stateType = A
physics = N

[State 3010, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = 40, 0
channel = 4

[State 3010, Dust Helper]
type = Helper
trigger1 = AnimElemTime(9) = 0
helperType = Normal
stateNo = 8100
ID = 8100
name = "Power Bomb Dust"
posType = P1
ownPal = 1

[State 3010, VelSet]
type = VelSet
trigger1 = AnimElemTime(9) = 0
x = 4.46927374302
y = -10

[State 3010, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(9) > 0
y = 0.78125

[State 3010, End]
type = ChangeState
trigger1 = AnimElemTime(9) > 0
trigger1 = pos y > -vel y
value = 3011


;Crashing
[StateDef 3011]
type = S
anim = 1411
physics = N
moveType = I
velSet = 0, 0
sprPriority = 1

[State 3011, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3011, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3011, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 3011, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(2) < 0
edge = ceil(64 * const(size.xScale)), 0

[State 3011, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4) < 1
edge = ceil(78 * const(size.xScale)), 0

[State 3011, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = ceil(75 * const(size.xScale)), -133

[State 3011, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil(84 * const(size.xScale)), -50

[State 3011, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(84 * const(size.xScale)), 0

[State 3011, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 3
value = floor(ifElse(ifElse(NumTarget(3050), 224, 140) * fvar(11) * fvar(12) < 7, -7, -ifElse(NumTarget(3050), 224, 140) * fvar(11) * fvar(12)))

[State 3011, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 3
value = 36

[State 3011, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 3
value = 1

[State 3011, HitCount]
type = VarAdd
trigger1 = NumTarget && AnimElem = 3
var(13) = 1

[State 3011, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 3
var(15) = 1
ignoreHitPause = 1

[State 3011, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 3
var(16) = 1
ignoreHitPause = 1

[State 3011, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 3
value = 2, 810
channel = 4

[State 3011, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 3
value = 810, 0
channel = 5

[State 3011, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 3
time = 18
ampl = -6
freq = 120

[State 3011, Impact Dust 1]
type = Helper
trigger1 = NumTarget && AnimElem = 3
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = ceil(78 * const(size.xScale)), 0
facing = -1
ownPal = 1

[State 3011, Impact Dust 2]
type = Explod
trigger1 = NumTarget && AnimElem = 3
anim = 8105
sprPriority = -3
posType = P1
pos = ceil(78 * const(size.xScale)), 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3011, Throw]
type = TargetState
trigger1 = AnimElemTime(6) = 1
value = 1416

[State 3011, End]
type = ChangeState
trigger1 = AnimElemTime(6) = 1
value = 1412

[State 3011, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;===========<POWER DROP (SUCCESS)>==========
;Throw
[Statedef 3020]
type = S
physics = N
moveType = A
anim = 1420
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 3020, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3020, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3020, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1425

[State 3020, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(4) < 0
edge = ceil(108 * const(size.xScale)), 0

[State 3020, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
edge = ceil(72 * const(size.xScale)), 0

[State 3020, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
edge = ceil(56 * const(size.xScale)), ceil(18 * const(size.xScale))

[State 3020, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
edge = ceil(38 * const(size.xScale)), ceil(18 * const(size.xScale))

[State 3020, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
edge = ceil(38 * const(size.xScale)), ceil(24 * const(size.xScale))

[State 3020, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
edge = ceil(38 * const(size.xScale)), ceil(32 * const(size.xScale))

[State 3020, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
edge = ceil(38 * const(size.xScale)), ceil(38 * const(size.xScale))

[State 3020, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
edge = 0, ceil(48 * const(size.xScale))

[State 3020, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
edge = 0, ceil(96 * const(size.xScale))

[State 3020, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(15) < 0
edge = 0, ceil(64 * const(size.xScale))

[State 3020, PosAdd]
type = PosAdd
trigger1 = NumTarget
trigger1 = AnimElem = 3
x = -ceil(32 * const(size.xScale))

[State 3020, PosAdd]
type = PosAdd
trigger1 = NumTarget
trigger1 = AnimElem = 4 || AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20
x = -ceil(16 * const(size.xScale))

[State 3020, PosAdd]
type = PosAdd
trigger1 = NumTarget
trigger1 = AnimElem = 7 || AnimElem = 8 || AnimElem = 11 || AnimElem = 16
x = -ceil(8 * const(size.xScale))

[State 3020, PosAdd]
type = PosAdd
trigger1 = NumTarget
trigger1 = AnimElem = 9 || AnimElem = 14
x = -ceil(4 * const(size.xScale))

[State 3020, PosAdd]
type = PosAdd
trigger1 = NumTarget
trigger1 = AnimElem = 15
x = -ceil(12 * const(size.xScale))

[State 3020, TargetBind 1]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = ceil(110 * const(size.xScale)), 0

[State 3020, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil(120 * const(size.xScale)), 0

[State 3020, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(136 * const(size.xScale)), 0

[State 3020, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil(78 * const(size.xScale)), -64

[State 3020, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = ceil(57 * const(size.xScale)), -53

[State 3020, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = ceil(50 * const(size.xScale)), -60

[State 3020, TargetBind 7]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = ceil(48 * const(size.xScale)), -64

[State 3020, TargetBind 8]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = ceil(44 * const(size.xScale)), -72

[State 3020, TargetBind 9]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = ceil(27 * const(size.xScale)), -96

[State 3020, TargetBind 10]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = -ceil(56 * const(size.xScale)), -98

[State 3020, TargetBind 11]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
pos = -ceil(112 * const(size.xScale)), 0

[State 3020, Voice]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1420, 0
channel = 0

[State 3020, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 11
value = floor(ifElse(ifElse(NumTarget(3050), 70, 56) * fvar(11) * fvar(12) < 7, -7, -ifElse(NumTarget(3050), 70, 56) * fvar(11) * fvar(12)))

[State 3020, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 11
value = 36

[State 3020, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 11
value = 1

[State 3020, HitCount]
type = VarAdd
trigger1 = NumTarget && AnimElem = 11
var(13) = 1

[State 3020, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 11
var(15) = 1
ignoreHitPause = 1

[State 3020, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 11
var(16) = 1
ignoreHitPause = 1

[State 3020, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 11
value = 2, 810
channel = 4

[State 3020, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 11
value = 810, 0
channel = 5

[State 3020, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 11
time = 18
ampl = -6
freq = 120

[State 3020, Impact Dust 1]
type = Helper
trigger1 = NumTarget && AnimElem = 11
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = -ceil(114 * const(size.xScale)), 0
facing = -1
ownPal = 1

[State 3020, Impact Dust 2]
type = Explod
trigger1 = NumTarget && AnimElem = 11
anim = 8105
sprPriority = -3
posType = P1
pos = -ceil(114 * const(size.xScale)), 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3020, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 12
value = 1426

[State 3020, Turn]
type = Turn
trigger1 = AnimElem = 20

[State 3020, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX BOOMERANG RAID>=============================
[StateDef 3050]
type = S
physics = N
moveType = A
anim = 3050
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

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
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255, 255, 255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) < 0
time = 1
value = SCA

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-12 * const(size.xScale)), -64
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
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3050, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3000, 0
channel = 0

[State 3050, Voice]
type = PlaySnd
trigger1 = AnimElem = 22 || AnimElem = 38
value = 4, 1
channel = 0

[State 3050, Voice]
type = PlaySnd
trigger1 = AnimElem = 30
value = 4, 2
channel = 0

[State 3050, Voice]
type = PlaySnd
trigger1 = AnimElem = 38
value = 3050, 1
channel = 0

[State 3050, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6 || AnimElem = 14 || AnimElem = 22 || AnimElem = 30 || AnimElem = 38 || AnimElem = 46
value = 1, 2
channel = 1

[State 3050, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5 || AnimElem = 6 || AnimElem = 7
trigger2 = AnimElem = 13 || AnimElem = 14 || AnimElem = 15
trigger3 = AnimElem = 21 || AnimElem = 22 || AnimElem = 23
trigger4 = AnimElem = 29 || AnimElem = 30 || AnimElem = 31
trigger5 = AnimElem = 37 || AnimElem = 38 || AnimElem = 39
trigger6 = AnimElem = 45 || AnimElem = 46 || AnimElem = 47
x = 12 * const(size.xScale)

[State 3050, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 7 || AnimElem = 23 || AnimElem = 39
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 36
ground.slideTime = 18
guard.hitTime = 15
guard.slideTime = 15
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.40734669781
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 110), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 15 || AnimElem = 31 || AnimElem = 47
ID = 3000
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 36
ground.slideTime = 18
guard.hitTime = 15
guard.slideTime = 15
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.40734669781
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 110), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, TargetFacing]
type = TargetFacing
trigger1 = MoveHit && NumTarget(3000)
trigger1 = Target(3000), StateType != A
ID = 3000
value = 1
ignoreHitPause = 1

[State 3050, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 56 && !var(37)
ID = 3050
attr = S, HT
hitFlag = M
priority = 7, Miss
getPower = 0,0
givePower = 0,0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -70
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = ifElse((Facing != EnemyNear, Facing), 3010, 3020)

[State 3050, Voice]
type = PlaySnd
trigger1 = AnimElem = 58
value = 800, 0
channel = 0

[State 3050, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 58
value = 1, 2
channel = 1

[State 3050, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(58) >= 0
moveType = I

[State 3050, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<STUN GUN HEADBUTT>=============================
[StateDef 3100]
type = S
physics = N
moveType = A
anim = 3100
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 3100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2BodyDist x >= 150, 2, ifElse(P2BodyDist x >= 100, 1, 0))

[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3100, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

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
add = 255, 255, 255
ignoreHitPause = 1

[State 3100, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
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
pos = ceil(24 * const(size.xScale)), -52
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, 0
darken = 0

[State 3100, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3100, 0
channel = 0

[State 3100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 3100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41, 0
channel = 4

[State 3100, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Stun Gun Headbutt Dust"
posType = P1
ownPal = 1

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 1
x = ifElse(var(10) = 2, 7.82122905028, ifElse(var(10) = 1, 5.58659217877, 3.35195530726))
y = -7.5

[State 3100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 1
y = 0.5859375

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) >= 0
value = , AP
time = 1

[State 3100, HitDef]
type = HitDef
trigger1 = AnimElemTime(13) >= 0 && !var(38)
trigger1 = P2BodyDist x < 39
attr = S, HT
hitFlag = M
priority = 7, Miss
getPower = 0,0
givePower = 0,0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -70
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 3110

[State 3100, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3105


;Landing
[StateDef 3105]
type = S
anim = 3105
physics = N
moveType = I
velSet = 0, 0

[State 3105, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3105, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3105, Voice]
type = PlaySnd
trigger1 = !Time
value = 3105, 0
channel = 0

[State 3105, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 3105, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Throw
[StateDef 3110]
type = S
physics = N
moveType = A
anim = 3110
ctrl = 0
velSet = 0, 0
sprPriority = -1

[State 3110, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3110, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3110, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 3115

[State 3110, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(2) < 0
edge = ceil(72 * const(size.xScale)), 0

[State 3110, TargetBind 1]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = ceil(96 * const(size.xScale)), 0

[State 3110, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
pos = ceil(93 * const(size.xScale)), 0

[State 3110, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil(31 * const(size.xScale)), 0

[State 3110, TargetBind 4]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
trigger2 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
trigger3 = AnimElemTime(21) >= 0 && AnimElemTime(22) < 0
trigger4 = AnimElemTime(29) >= 0 && AnimElemTime(30) < 0
pos = ceil(12 * const(size.xScale)), 0

[State 3110, TargetBind 5]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
trigger2 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
trigger3 = AnimElemTime(22) >= 0 && AnimElemTime(23) < 0
trigger4 = AnimElemTime(30) >= 0 && AnimElemTime(31) < 0
pos = ceil(16 * const(size.xScale)), 0

[State 3110, TargetBind 6]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
trigger2 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
trigger3 = AnimElemTime(23) >= 0 && AnimElemTime(24) < 0
trigger4 = AnimElemTime(31) >= 0 && AnimElemTime(32) < 0
pos = ceil(49 * const(size.xScale)), 0

[State 3110, TargetBind 7]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger2 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
trigger3 = AnimElemTime(24) >= 0 && AnimElemTime(25) < 0
trigger4 = AnimElemTime(32) >= 0 && AnimElemTime(33) < 0
pos = ceil(51 * const(size.xScale)), 0

[State 3110, TargetBind 8]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
trigger2 = AnimElemTime(17) >= 0 && AnimElemTime(18) < 0
trigger3 = AnimElemTime(25) >= 0 && AnimElemTime(26) < 0
trigger4 = AnimElemTime(33) >= 0 && AnimElemTime(34) < 0
pos = ceil(53 * const(size.xScale)), 0

[State 3110, TargetBind 9]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(13) < 0
trigger2 = AnimElemTime(18) >= 0 && AnimElemTime(19) < 0
trigger3 = AnimElemTime(26) >= 0 && AnimElemTime(27) < 0
pos = ceil(32 * const(size.xScale)), 0

[State 3110, TargetBind 10]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(34) >= 0 && AnimElemTime(34) < 1
pos = ceil(67 * const(size.xScale)), 0

[State 3110, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && (AnimElem = 9 || AnimElem = 17 || AnimElem = 25)
value = floor(ifElse(35 * fvar(11) * fvar(12) < 7, -7, -35 * fvar(11) * fvar(12)))
kill = 0

[State 3110, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 33
value = floor(ifElse(56 * fvar(11) * fvar(12) < 7, -7, -56 * fvar(11) * fvar(12)))

[State 3110, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && (AnimElem = 9 || AnimElem = 17 || AnimElem = 25 || AnimElem = 33)
value = 36

[State 3110, HitAdd]
type = HitAdd
trigger1 = NumTarget && (AnimElem = 9 || AnimElem = 17 || AnimElem = 25 || AnimElem = 33)
value = 1

[State 3110, HitAdd]
type = VarAdd
trigger1 = NumTarget && (AnimElem = 9 || AnimElem = 17 || AnimElem = 25 || AnimElem = 33)
var(13) = 1

[State 3110, Juggle]
type = VarAdd
trigger1 = NumTarget && (AnimElem = 9 || AnimElem = 17 || AnimElem = 25 || AnimElem = 33)
var(15) = 1
ignoreHitPause = 1

[State 3110, Juggle]
type = VarSet
trigger1 = NumTarget && (AnimElem = 9 || AnimElem = 17 || AnimElem = 25 || AnimElem = 33)
var(16) = 1
ignoreHitPause = 1

[State 3110, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 34
value = 3116

[State 3110, Voice 1]
type = PlaySnd
trigger1 = NumTarget && (AnimElem = 8 || AnimElem = 16 || AnimElem = 24)
value = 4, 1
channel = 0

[State 3110, Voice 2]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 32
value = 3110, 0
channel = 0

[State 3110, Woosh Sound]
type = PlaySnd
trigger1 = NumTarget && (AnimElem = 8 || AnimElem = 16 || AnimElem = 24 || AnimElem = 32)
value = 1, 2
channel = 1

[State 3110, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && (AnimElem = 9 || AnimElem = 17 || AnimElem = 25 || AnimElem = 33)
value = 2, 2
channel = 2

[State 3110, Hit Spark]
type = Helper
trigger1 = NumTarget && (AnimElem = 9 || AnimElem = 17 || AnimElem = 25 || AnimElem = 33)
helperType = Normal
stateNo = 8014
ID = 8001
name = "Spark"
posType = P1
pos = ceil(52 * const(size.xScale)), -75
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3110, EnvShake]
type = EnvShake
trigger1 = NumTarget && (AnimElem = 9 || AnimElem = 17 || AnimElem = 25 || AnimElem = 33)
time = 18
ampl = -6
freq = 120

[State 3110, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(34) >= 0
moveType = I

[State 3110, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<STUN GUN HEADBUTT (TARGET)>==========
;Being Thrown
[StateDef 3115]
type = S
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 3115, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3115

[State 3115, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 3115, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1


;After Throw
[StateDef 3116]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3116, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 3116, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3116, VelSet]
type = VelSet
trigger1 = Time = 1
x = -4.46927374302
y = -6.5625

[State 3116, VelAdd]
type = VelAdd
Trigger1 = Time > 1
y = 0.5126953125

[State 3116, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3116, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<MAX STUN GUN HEADBUTT>=============================
[StateDef 3150]
type = S
physics = N
moveType = A
anim = 3150
ctrl = 0
velSet = 0, 0
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
add = 255, 255, 255
ignoreHitPause = 1

[State 3150, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3150, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(24 * const(size.xScale)), -52
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
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3150, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3100, 0
channel = 0

[State 3150, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 3150, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41, 0
channel = 4

[State 3150, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Stun Gun Headbutt Dust"
posType = P1
ownPal = 1

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 1
x = 5.5865921787
y = -7.5

[State 3150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 1
y = 0.5859375

[State 3150, VelSet]
type = VelSet
triggerAll = AnimElemTime(3) > 1
trigger1 = !AILevel
;command = "holdfwd"
trigger1 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
trigger2 = AILevel && P2BodyDist x >= 50
x = 7.82122905028

[State 3150, VelSet]
type = VelSet
triggerAll = AnimElemTime(3) > 1
trigger1 = !AILevel
;command = "holdback"
trigger1 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
trigger2 = AILevel && P2BodyDist x < 50
x = 3.35195530726

[State 3150, VelSet]
type = VelSet
triggerAll = AnimElemTime(3) > 1
trigger1 = !AILevel
;command != "holdfwd"
trigger1 = !((ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004)))
;command != "holdback"
trigger1 = !((ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006)))
x = 5.58659217877

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) >= 0
value = , AP
time = 1

[State 3150, HitDef]
type = HitDef
trigger1 = AnimElemTime(13) >= 0 && !var(38)
trigger1 = P2BodyDist x < 39
attr = S, HT
hitFlag = M
priority = 7, Miss
getPower = 0,0
givePower = 0,0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -70
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 3160

[State 3150, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3105


;Throw
[StateDef 3160]
type = S
physics = N
moveType = A
anim = 3160
ctrl = 0
velSet = 0, 0
sprPriority = -1

[State 3160, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3160, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3160, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 3165

[State 3160, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(2) < 0
edge = ceil(72 * const(size.xScale)), 0

[State 3160, TargetBind 1]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = ceil(96 * const(size.xScale)), 0

[State 3160, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
pos = ceil(93 * const(size.xScale)), 0

[State 3160, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil(31 * const(size.xScale)), 0

[State 3160, TargetBind 4]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
trigger2 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
trigger3 = AnimElemTime(21) >= 0 && AnimElemTime(22) < 0
trigger4 = AnimElemTime(29) >= 0 && AnimElemTime(30) < 0
trigger5 = AnimElemTime(37) >= 0 && AnimElemTime(38) < 0
trigger6 = AnimElemTime(45) >= 0 && AnimElemTime(46) < 0
trigger7 = AnimElemTime(53) >= 0 && AnimElemTime(54) < 0
pos = ceil(12 * const(size.xScale)), 0

[State 3160, TargetBind 5]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
trigger2 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
trigger3 = AnimElemTime(22) >= 0 && AnimElemTime(23) < 0
trigger4 = AnimElemTime(30) >= 0 && AnimElemTime(31) < 0
trigger5 = AnimElemTime(38) >= 0 && AnimElemTime(39) < 0
trigger6 = AnimElemTime(46) >= 0 && AnimElemTime(47) < 0
trigger7 = AnimElemTime(54) >= 0 && AnimElemTime(55) < 0
pos = ceil(16 * const(size.xScale)), 0

[State 3160, TargetBind 6]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
trigger2 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
trigger3 = AnimElemTime(23) >= 0 && AnimElemTime(24) < 0
trigger4 = AnimElemTime(31) >= 0 && AnimElemTime(32) < 0
trigger5 = AnimElemTime(39) >= 0 && AnimElemTime(40) < 0
trigger6 = AnimElemTime(47) >= 0 && AnimElemTime(48) < 0
trigger7 = AnimElemTime(55) >= 0 && AnimElemTime(56) < 0
pos = ceil(49 * const(size.xScale)), 0

[State 3160, TargetBind 7]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger2 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
trigger3 = AnimElemTime(24) >= 0 && AnimElemTime(25) < 0
trigger4 = AnimElemTime(32) >= 0 && AnimElemTime(33) < 0
trigger5 = AnimElemTime(40) >= 0 && AnimElemTime(41) < 0
trigger6 = AnimElemTime(48) >= 0 && AnimElemTime(49) < 0
trigger7 = AnimElemTime(56) >= 0 && AnimElemTime(57) < 0
pos = ceil(51 * const(size.xScale)), 0

[State 3160, TargetBind 8]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
trigger2 = AnimElemTime(17) >= 0 && AnimElemTime(18) < 0
trigger3 = AnimElemTime(25) >= 0 && AnimElemTime(26) < 0
trigger4 = AnimElemTime(33) >= 0 && AnimElemTime(34) < 0
trigger5 = AnimElemTime(41) >= 0 && AnimElemTime(42) < 0
trigger6 = AnimElemTime(49) >= 0 && AnimElemTime(50) < 0
trigger7 = AnimElemTime(57) >= 0 && AnimElemTime(58) < 0
pos = ceil(53 * const(size.xScale)), 0

[State 3160, TargetBind 9]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(13) < 0
trigger2 = AnimElemTime(18) >= 0 && AnimElemTime(19) < 0
trigger3 = AnimElemTime(26) >= 0 && AnimElemTime(27) < 0
trigger4 = AnimElemTime(34) >= 0 && AnimElemTime(35) < 0
trigger5 = AnimElemTime(42) >= 0 && AnimElemTime(43) < 0
trigger6 = AnimElemTime(50) >= 0 && AnimElemTime(51) < 0
pos = ceil(32 * const(size.xScale)), 0

[State 3160, TargetBind 10]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(58) >= 0 && AnimElemTime(58) < 1
pos = ceil(67 * const(size.xScale)), 0

[State 3160, Damage]
type = TargetLifeAdd
triggerAll = NumTarget
trigger1 = (AnimElem = 9 || AnimElem = 17 || AnimElem = 25)
trigger2 = (AnimElem = 33 || AnimElem = 41 || AnimElem = 49)
value = floor(ifElse(28 * fvar(11) * fvar(12) < 7, -7, -28 * fvar(11) * fvar(12)))
kill = 0

[State 3160, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 57
value = floor(ifElse(70 * fvar(11) * fvar(12) < 7, -7, -70 * fvar(11) * fvar(12)))

[State 3160, TargetPowerAdd]
type = TargetPowerAdd
triggerAll = NumTarget
trigger1 = (AnimElem = 9 || AnimElem = 17 || AnimElem = 25)
trigger2 = (AnimElem = 33 || AnimElem = 41 || AnimElem = 49 || AnimElem = 57)
value = 36

[State 3160, HitAdd]
type = HitAdd
triggerAll = NumTarget
trigger1 = (AnimElem = 9 || AnimElem = 17 || AnimElem = 25)
trigger2 = (AnimElem = 33 || AnimElem = 41 || AnimElem = 49 || AnimElem = 57)
value = 1

[State 3160, HitAdd]
type = VarAdd
triggerAll = NumTarget
trigger1 = (AnimElem = 9 || AnimElem = 17 || AnimElem = 25)
trigger2 = (AnimElem = 33 || AnimElem = 41 || AnimElem = 49 || AnimElem = 57)
var(13) = 1

[State 3160, Juggle]
type = VarAdd
triggerAll = NumTarget
trigger1 = (AnimElem = 9 || AnimElem = 17 || AnimElem = 25)
trigger2 = (AnimElem = 33 || AnimElem = 41 || AnimElem = 49 || AnimElem = 57)
var(15) = 1
ignoreHitPause = 1

[State 3160, Juggle]
type = VarSet
triggerAll = NumTarget
trigger1 = (AnimElem = 9 || AnimElem = 17 || AnimElem = 25)
trigger2 = (AnimElem = 33 || AnimElem = 41 || AnimElem = 49 || AnimElem = 57)
var(16) = 1
ignoreHitPause = 1

[State 3160, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 58
value = ifElse(var(55), 3116, 3166)

[State 3160, Stun Gun Headbutt Stun Flag]
type = VarSet
trigger1 = NumTarget && AnimElem = 58
var(55) = 1

[State 3160, Voice 1]
type = PlaySnd
triggerAll = NumTarget
trigger1 = (AnimElem = 8 || AnimElem = 16 || AnimElem = 24)
trigger2 = (AnimElem = 32 || AnimElem = 40 || AnimElem = 48)
value = 4, 1
channel = 0

[State 3160, Voice 2]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 56
value = 3110, 0
channel = 0

[State 3160, Woosh Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = (AnimElem = 8 || AnimElem = 16 || AnimElem = 24)
trigger2 = (AnimElem = 32 || AnimElem = 40 || AnimElem = 48 || AnimElem = 56)
value = 1, 2
channel = 1

[State 3160, Hit Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = (AnimElem = 9 || AnimElem = 17 || AnimElem = 25)
trigger2 = (AnimElem = 33 || AnimElem = 41 || AnimElem = 49 || AnimElem = 57)
value = 2, 2
channel = 2

[State 3160, Hit Spark]
type = Helper
triggerAll = NumTarget
trigger1 = (AnimElem = 9 || AnimElem = 17 || AnimElem = 25)
trigger2 = (AnimElem = 33 || AnimElem = 41 || AnimElem = 49 || AnimElem = 57)
helperType = Normal
stateNo = 8014
ID = 8001
name = "Spark"
posType = P1
pos = ceil(52 * const(size.xScale)), -75
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3160, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = (AnimElem = 9 || AnimElem = 17 || AnimElem = 25)
trigger2 = (AnimElem = 33 || AnimElem = 41 || AnimElem = 49 || AnimElem = 57)
time = 18
ampl = -6
freq = 120

[State 3160, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(58) >= 0
moveType = I

[State 3160, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<MAX STUN GUN HEADBUTT (TARGET)>==========
;Being Thrown
[StateDef 3165]
type = S
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 3165, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3165

[State 3165, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 3165, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1


;After Throw
[StateDef 3166]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3166, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 3166, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3166, VelSet]
type = VelSet
trigger1 = Time = 1
x = -4.46927374302
y = -6.5625

[State 3166, VelAdd]
type = VelAdd
Trigger1 = Time > 1
y = 0.5126953125

[State 3166, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3166, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 55100



;========================<HYPER BOMB>=============================
[StateDef 3300]
type = S
physics = N
moveType = A
anim = 3300
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -5000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 47

[State 3300, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(32 * const(size.xScale)), -70
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3300, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3300, Voice]
type = PlaySnd
trigger1 = !Time
value = 3000, 0
channel = 0

[State 3300, HitDef]
type = HitDef
trigger1 = AnimElem = 2 && !var(38)
trigger1 = P2BodyDist x < 71
attr = S, HT
hitFlag = M
priority = 7, Miss
getPower = 0,0
givePower = 0,0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -70
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = ifElse((Facing != EnemyNear, Facing), 3310, 3320)

[State 3300, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 800, 0
channel = 0

[State 3300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 3300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 3300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<HYPER BOMB (SUCCESS)>==========
;Throw
[Statedef 3310]
type = S
physics = N
moveType = A
anim = 3310
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 3310, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3310, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3310, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 3315

[State 3310, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(4) < 0
edge = ceil(108 * const(size.xScale)), 0

[State 3310, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
trigger2 = AnimElemTime(19) >= 0 && AnimElemTime(20) < 0
edge = ceil(72 * const(size.xScale)), 0

[State 3310, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
trigger2 = AnimElemTime(20) >= 0 && AnimElemTime(21) < 0
edge = ceil(56 * const(size.xScale)), ceil(18 * const(size.xScale))

[State 3310, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
trigger2 = AnimElemTime(21) >= 0 && AnimElemTime(22) < 0
edge = ceil(38 * const(size.xScale)), ceil(18 * const(size.xScale))

[State 3310, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
trigger2 = AnimElemTime(22) >= 0 && AnimElemTime(23) < 0
edge = ceil(38 * const(size.xScale)), ceil(24 * const(size.xScale))

[State 3310, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger2 = AnimElemTime(23) >= 0 && AnimElemTime(24) < 0
edge = ceil(38 * const(size.xScale)), ceil(32 * const(size.xScale))

[State 3310, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
trigger2 = AnimElemTime(24) >= 0 && AnimElemTime(25) < 0
edge = ceil(38 * const(size.xScale)), ceil(38 * const(size.xScale))

[State 3310, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
trigger2 = AnimElemTime(25) >= 0 && AnimElemTime(26) < 0
edge = 0, ceil(48 * const(size.xScale))

[State 3310, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
trigger2 = AnimElemTime(26) >= 0 && AnimElemTime(27) < 0
edge = 0, ceil(96 * const(size.xScale))

[State 3310, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(15) < 0
trigger2 = AnimElemTime(27) >= 0 && AnimElemTime(30) < 0
edge = 0, ceil(64 * const(size.xScale))

[State 3310, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
trigger2 = AnimElemTime(30) >= 0 && AnimElemTime(31) < 0
edge = 0, ceil(48 * const(size.xScale))

[State 3310, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(16) >= 0 && AnimElemTime(19) < 0
trigger2 = AnimElemTime(31) >= 0 && AnimElemTime(34) < 0
edge = 0, ceil(64 * const(size.xScale))

[State 3310, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 3
x = -ceil(32 * const(size.xScale))

[State 3310, PosAdd]
type = PosAdd
triggerAll = NumTarget
trigger1 = AnimElem = 4 || AnimElem = 17 || AnimElem = 18
trigger2 = AnimElem = 19 || AnimElem = 32 || AnimElem = 33
x = -ceil(16 * const(size.xScale))

[State 3310, PosAdd]
type = PosAdd
triggerAll = NumTarget
trigger1 = AnimElem = 7 || AnimElem = 8 || AnimElem = 11 || AnimElem = 16
trigger2 = AnimElem = 22 || AnimElem = 23 || AnimElem = 26 || AnimElem = 31
x = -ceil(8 * const(size.xScale))

[State 3310, PosAdd]
type = PosAdd
triggerAll = NumTarget
trigger1 = AnimElem = 9 || AnimElem = 14
trigger2 = AnimElem = 24 || AnimElem = 29
x = -ceil(4 * const(size.xScale))

[State 3310, PosAdd]
type = PosAdd
triggerAll = NumTarget
trigger1 = AnimElem = 15
trigger2 = AnimElem = 30
x = -ceil(12 * const(size.xScale))

[State 3310, TargetBind 1]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = ceil(110 * const(size.xScale)), 0

[State 3310, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil(120 * const(size.xScale)), 0

[State 3310, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(136 * const(size.xScale)), 0

[State 3310, TargetBind 4]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
trigger2 = AnimElemTime(19) >= 0 && AnimElemTime(20) < 0
pos = ceil(78 * const(size.xScale)), -64

[State 3310, TargetBind 5]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
trigger2 = AnimElemTime(20) >= 0 && AnimElemTime(21) < 0
pos = ceil(57 * const(size.xScale)), -53

[State 3310, TargetBind 6]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
trigger2 = AnimElemTime(21) >= 0 && AnimElemTime(22) < 0
pos = ceil(50 * const(size.xScale)), -60

[State 3310, TargetBind 7]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
trigger2 = AnimElemTime(22) >= 0 && AnimElemTime(23) < 0
pos = ceil(48 * const(size.xScale)), -64

[State 3310, TargetBind 8]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger2 = AnimElemTime(23) >= 0 && AnimElemTime(24) < 0
pos = ceil(44 * const(size.xScale)), -72

[State 3310, TargetBind 9]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
trigger2 = AnimElemTime(24) >= 0 && AnimElemTime(25) < 0
pos = ceil(27 * const(size.xScale)), -96

[State 3310, TargetBind 10]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
trigger2 = AnimElemTime(25) >= 0 && AnimElemTime(26) < 0
pos = -ceil(56 * const(size.xScale)), -98

[State 3310, TargetBind 11]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
trigger2 = AnimElemTime(26) >= 0 && AnimElemTime(27) < 0
pos = -ceil(98 * const(size.xScale)), -20

[State 3310, TargetBind 12]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(14) < 0
trigger2 = AnimElemTime(27) >= 0 && AnimElemTime(29) < 0
pos = -ceil(88 * const(size.xScale)), -24

[State 3310, TargetBind 14]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
trigger2 = AnimElemTime(29) >= 0 && AnimElemTime(30) < 0
pos = -ceil(64 * const(size.xScale)), -12

[State 3310, TargetBind 15]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
trigger2 = AnimElemTime(30) >= 0 && AnimElemTime(31) < 0
pos = -ceil(32 * const(size.xScale)), -12

[State 3310, TargetBind 16]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
trigger2 = AnimElemTime(31) >= 0 && AnimElemTime(32) < 0
pos = -ceil(18 * const(size.xScale)), -4

[State 3310, TargetBind 17]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(17) >= 0 && AnimElemTime(18) < 0
trigger2 = AnimElemTime(32) >= 0 && AnimElemTime(33) < 0
pos = -ceil(4 * const(size.xScale)), -4

[State 3310, TargetBind 18]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(18) >= 0 && AnimElemTime(19) < 0
trigger2 = AnimElemTime(33) >= 0 && AnimElemTime(34) < 0
pos = ceil(12 * const(size.xScale)), -4

[State 3310, TargetBind 19]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(34) >= 0 && AnimElemTime(35) < 0
pos = ceil(19 * const(size.xScale)), 0

[State 3310, TargetBind 20]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(35) >= 0 && AnimElemTime(36) < 0
pos = ceil(3 * const(size.xScale)), 0

[State 3310, TargetBind 21]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(36) >= 0 && AnimElemTime(37) < 0
pos = ceil(48 * const(size.xScale)), -64

[State 3310, TargetBind 22]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(37) >= 0 && AnimElemTime(38) < 0
pos = ceil(32 * const(size.xScale)), -144

[State 3310, TargetBind 23]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(38) >= 0 && AnimElemTime(39) < 0
pos = ceil(24 * const(size.xScale)), -150

[State 3310, TargetBind 24]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(39) >= 0 && AnimElemTime(40) < 0
pos = ceil(3 * const(size.xScale)), -160

[State 3310, TargetBind 25]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(40) >= 0
pos = ceil(11 * const(size.xScale)), -143

[State 3310, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26)
value = floor(ifElse(105 * fvar(11) * fvar(12) < 7, -7, -105 * fvar(11) * fvar(12)))
kill = 0

[State 3310, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26)
value = 36

[State 3310, HitAdd]
type = HitAdd
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26)
value = 1

[State 3310, HitCount]
type = VarAdd
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26)
var(13) = 1

[State 3310, Juggle]
type = VarAdd
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26)
var(15) = 1
ignoreHitPause = 1

[State 3310, Juggle]
type = VarSet
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26)
var(16) = 1
ignoreHitPause = 1

[State 3310, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26)
value = 2, 810
channel = 4

[State 3310, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26)
value = 810, 0
channel = 5

[State 3310, EnvShake]
type = EnvShake
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26)
time = 18
ampl = -6
freq = 120

[State 3310, Impact Dust 1]
type = Helper
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26)
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = -ceil(114 * const(size.xScale)), 0
facing = -1
ownPal = 1

[State 3310, Impact Dust 2]
type = Explod
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26)
anim = 8105
sprPriority = -3
posType = P1
pos = -ceil(114 * const(size.xScale)), 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3310, Voice]
type = PlaySnd
trigger1 = AnimElem = 11
value = 4, 1
channel = 0

[State 3310, Voice]
type = PlaySnd
trigger1 = AnimElem = 26
value = 4, 2
channel = 0

[State 3310, Voice]
type = PlaySnd
trigger1 = AnimElem = 40
value = 3310, 0
channel = 0

[State 3310, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 39
stateType = A
physics = N

[State 3310, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 39
value = 41, 0
channel = 4

[State 3310, Dust Helper]
type = Helper
trigger1 = AnimElem = 39
helperType = Normal
stateNo = 8100
ID = 8100
name = "Power Bomb Dust"
posType = P1
ownPal = 1

[State 3310, VelSet]
type = VelSet
trigger1 = AnimElem = 39
x = 4.46927374302
y = -15

[State 3310, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(39) > 0
y = 0.78125

[State 3310, End]
type = ChangeState
trigger1 = AnimElemTime(39) > 0
trigger1 = pos y > -vel y
value = 3311


;Crashing
[StateDef 3311]
type = S
anim = 3311
physics = N
moveType = I
velSet = 0, 0
sprPriority = 1

[State 3311, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3311, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3311, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 3311, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(2) < 0
edge = ceil(64 * const(size.xScale)), 0

[State 3311, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4) < 1
edge = ceil(78 * const(size.xScale)), 0

[State 3311, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = ceil(75 * const(size.xScale)), -133

[State 3311, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil(84 * const(size.xScale)), -50

[State 3311, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(84 * const(size.xScale)), 0

[State 3311, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 3
value = floor(ifElse(224 * fvar(11) * fvar(12) < 7, -7, -224 * fvar(11) * fvar(12)))

[State 3311, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 3
value = 36

[State 3311, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 3
value = 1

[State 3311, HitCount]
type = VarAdd
trigger1 = NumTarget && AnimElem = 3
var(13) = 1

[State 3311, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 3
var(15) = 1
ignoreHitPause = 1

[State 3311, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 3
var(16) = 1
ignoreHitPause = 1

[State 3311, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 3
value = 2, 810
channel = 4

[State 3311, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 3
value = 3311, 0
channel = 5

[State 3311, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 3
time = 18
ampl = -6
freq = 120

[State 3311, Impact Dust 1]
type = Helper
trigger1 = NumTarget && AnimElem = 3
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = ceil(78 * const(size.xScale)), 0
facing = -1
ownPal = 1

[State 3311, Impact Dust 2]
type = Explod
trigger1 = NumTarget && AnimElem = 3
anim = 8105
sprPriority = -3
posType = P1
pos = ceil(78 * const(size.xScale)), 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3311, Hyper Bomb Impact Dust]
type = Explod
trigger1 = NumTarget && AnimElem = 3
anim = 3313
ID = 3313
sprPriority = 3
posType = P1
pos = ceil(78 * const(size.xScale)), 0
scale = 0.5,0.5
ownPal = 1

[State 3311, Throw]
type = TargetState
trigger1 = AnimElemTime(6) = 1
value = 1416

[State 3311, End]
type = ChangeState
trigger1 = AnimElemTime(6) = 1
value = 1412

[State 3311, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<HYPER BOMB (TARGET)>==========
;Being Thrown
[StateDef 3315]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 3315, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3315, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3315

[State 3315, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing != EnemyNear, Facing
trigger2 = AnimElem = 24
ignoreHitPause = 1

[State 3315, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 3316]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3316, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3316

[State 3316, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3316, VelSet]
type = VelSet
trigger1 = Time = 0
x = -5.58659217877
y = -5.78125

[State 3316, VelAdd]
type = VelAdd
Trigger1 = Time > 0
y = 0.5126953125

[State 3316, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3316, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;===========<HYPER DROP (SUCCESS)>==========
;Throw
[Statedef 3320]
type = S
physics = N
moveType = A
anim = 3320
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 3320, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3320, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3320, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 3325

[State 3320, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(4) < 0
edge = ceil(108 * const(size.xScale)), 0

[State 3320, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
trigger2 = AnimElemTime(19) >= 0 && AnimElemTime(20) < 0
trigger3 = AnimElemTime(34) >= 0 && AnimElemTime(35) < 0
trigger4 = AnimElemTime(49) >= 0 && AnimElemTime(50) < 0
trigger5 = AnimElemTime(64) >= 0 && AnimElemTime(65) < 0
edge = ceil(72 * const(size.xScale)), 0

[State 3320, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
trigger2 = AnimElemTime(20) >= 0 && AnimElemTime(21) < 0
trigger3 = AnimElemTime(35) >= 0 && AnimElemTime(36) < 0
trigger4 = AnimElemTime(50) >= 0 && AnimElemTime(51) < 0
trigger5 = AnimElemTime(65) >= 0 && AnimElemTime(66) < 0
edge = ceil(56 * const(size.xScale)), ceil(18 * const(size.xScale))

[State 3320, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
trigger2 = AnimElemTime(21) >= 0 && AnimElemTime(22) < 0
trigger3 = AnimElemTime(36) >= 0 && AnimElemTime(37) < 0
trigger4 = AnimElemTime(51) >= 0 && AnimElemTime(52) < 0
trigger5 = AnimElemTime(66) >= 0 && AnimElemTime(68) < 0
edge = ceil(38 * const(size.xScale)), ceil(18 * const(size.xScale))

[State 3320, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
trigger2 = AnimElemTime(22) >= 0 && AnimElemTime(23) < 0
trigger3 = AnimElemTime(37) >= 0 && AnimElemTime(38) < 0
trigger4 = AnimElemTime(52) >= 0 && AnimElemTime(53) < 0
trigger5 = AnimElemTime(67) >= 0 && AnimElemTime(68) < 0
edge = ceil(38 * const(size.xScale)), ceil(24 * const(size.xScale))

[State 3320, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger2 = AnimElemTime(23) >= 0 && AnimElemTime(24) < 0
trigger3 = AnimElemTime(38) >= 0 && AnimElemTime(39) < 0
trigger4 = AnimElemTime(53) >= 0 && AnimElemTime(54) < 0
trigger5 = AnimElemTime(68) >= 0 && AnimElemTime(69) < 0
edge = ceil(38 * const(size.xScale)), ceil(32 * const(size.xScale))

[State 3320, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
trigger2 = AnimElemTime(24) >= 0 && AnimElemTime(25) < 0
trigger3 = AnimElemTime(39) >= 0 && AnimElemTime(40) < 0
trigger4 = AnimElemTime(54) >= 0 && AnimElemTime(55) < 0
trigger5 = AnimElemTime(69) >= 0 && AnimElemTime(70) < 0
edge = ceil(38 * const(size.xScale)), ceil(38 * const(size.xScale))

[State 3320, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
trigger2 = AnimElemTime(25) >= 0 && AnimElemTime(26) < 0
trigger3 = AnimElemTime(40) >= 0 && AnimElemTime(41) < 0
trigger4 = AnimElemTime(55) >= 0 && AnimElemTime(56) < 0
trigger5 = AnimElemTime(70) >= 0 && AnimElemTime(71) < 0
edge = 0, ceil(48 * const(size.xScale))

[State 3320, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
trigger2 = AnimElemTime(26) >= 0 && AnimElemTime(27) < 0
trigger3 = AnimElemTime(41) >= 0 && AnimElemTime(42) < 0
trigger4 = AnimElemTime(56) >= 0 && AnimElemTime(57) < 0
trigger5 = AnimElemTime(71) >= 0 && AnimElemTime(72) < 0
edge = 0, ceil(96 * const(size.xScale))

[State 3320, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(15) < 0
trigger2 = AnimElemTime(27) >= 0 && AnimElemTime(30) < 0
trigger3 = AnimElemTime(42) >= 0 && AnimElemTime(45) < 0
trigger4 = AnimElemTime(57) >= 0 && AnimElemTime(60) < 0
trigger5 = AnimElemTime(72) >= 0 && AnimElemTime(75) < 0
edge = 0, ceil(64 * const(size.xScale))

[State 3320, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
trigger2 = AnimElemTime(30) >= 0 && AnimElemTime(31) < 0
trigger3 = AnimElemTime(45) >= 0 && AnimElemTime(46) < 0
trigger4 = AnimElemTime(60) >= 0 && AnimElemTime(61) < 0
trigger5 = AnimElemTime(75) >= 0 && AnimElemTime(76) < 0
edge = 0, ceil(48 * const(size.xScale))

[State 3320, Width]
type = Width
triggerAll = NumTarget
trigger1 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
trigger2 = AnimElemTime(31) >= 0 && AnimElemTime(32) < 0
trigger3 = AnimElemTime(46) >= 0 && AnimElemTime(47) < 0
trigger4 = AnimElemTime(61) >= 0 && AnimElemTime(62) < 0
trigger5 = AnimElemTime(76) >= 0 && AnimElemTime(77) < 0
edge = 0, ceil(64 * const(size.xScale))

[State 3320, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 3
x = -ceil(32 * const(size.xScale))

[State 3320, PosAdd]
type = PosAdd
triggerAll = NumTarget
trigger1 = AnimElem = 4 || AnimElem = 17 || AnimElem = 18
trigger2 = AnimElem = 19 || AnimElem = 32 || AnimElem = 33
trigger3 = AnimElem = 34 || AnimElem = 47 || AnimElem = 48
trigger4 = AnimElem = 49 || AnimElem = 62 || AnimElem = 63
trigger5 = AnimElem = 64 || AnimElem = 77 || AnimElem = 78
x = -ceil(16 * const(size.xScale))

[State 3320, PosAdd]
type = PosAdd
triggerAll = NumTarget
trigger1 = AnimElem = 7 || AnimElem = 8 || AnimElem = 11 || AnimElem = 16
trigger2 = AnimElem = 22 || AnimElem = 23 || AnimElem = 26 || AnimElem = 31
trigger3 = AnimElem = 37 || AnimElem = 38 || AnimElem = 41 || AnimElem = 46
trigger4 = AnimElem = 52 || AnimElem = 53 || AnimElem = 56 || AnimElem = 61
trigger5 = AnimElem = 67 || AnimElem = 68 || AnimElem = 71 || AnimElem = 76
x = -ceil(8 * const(size.xScale))

[State 3320, PosAdd]
type = PosAdd
triggerAll = NumTarget
trigger1 = AnimElem = 9 || AnimElem = 14
trigger2 = AnimElem = 24 || AnimElem = 29
trigger3 = AnimElem = 39 || AnimElem = 44
trigger4 = AnimElem = 54 || AnimElem = 59
trigger5 = AnimElem = 69 || AnimElem = 74
x = -ceil(4 * const(size.xScale))

[State 3320, PosAdd]
type = PosAdd
triggerAll = NumTarget
trigger1 = AnimElem = 15
trigger2 = AnimElem = 30
trigger3 = AnimElem = 45
trigger4 = AnimElem = 60
trigger5 = AnimElem = 75
x = -ceil(12 * const(size.xScale))

[State 3320, TargetBind 1]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = ceil(110 * const(size.xScale)), 0

[State 3320, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil(120 * const(size.xScale)), 0

[State 3320, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(136 * const(size.xScale)), 0

[State 3320, TargetBind 4]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
trigger2 = AnimElemTime(19) >= 0 && AnimElemTime(20) < 0
trigger3 = AnimElemTime(34) >= 0 && AnimElemTime(35) < 0
trigger4 = AnimElemTime(49) >= 0 && AnimElemTime(50) < 0
trigger5 = AnimElemTime(64) >= 0 && AnimElemTime(65) < 0
pos = ceil(78 * const(size.xScale)), -64

[State 3320, TargetBind 5]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
trigger2 = AnimElemTime(20) >= 0 && AnimElemTime(21) < 0
trigger3 = AnimElemTime(35) >= 0 && AnimElemTime(36) < 0
trigger4 = AnimElemTime(50) >= 0 && AnimElemTime(51) < 0
trigger5 = AnimElemTime(65) >= 0 && AnimElemTime(66) < 0
pos = ceil(57 * const(size.xScale)), -53

[State 3320, TargetBind 6]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
trigger2 = AnimElemTime(21) >= 0 && AnimElemTime(22) < 0
trigger3 = AnimElemTime(36) >= 0 && AnimElemTime(37) < 0
trigger4 = AnimElemTime(51) >= 0 && AnimElemTime(52) < 0
trigger5 = AnimElemTime(66) >= 0 && AnimElemTime(68) < 0
pos = ceil(50 * const(size.xScale)), -60

[State 3320, TargetBind 7]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
trigger2 = AnimElemTime(22) >= 0 && AnimElemTime(23) < 0
trigger3 = AnimElemTime(37) >= 0 && AnimElemTime(38) < 0
trigger4 = AnimElemTime(52) >= 0 && AnimElemTime(53) < 0
trigger5 = AnimElemTime(67) >= 0 && AnimElemTime(68) < 0
pos = ceil(48 * const(size.xScale)), -64

[State 3320, TargetBind 8]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger2 = AnimElemTime(23) >= 0 && AnimElemTime(24) < 0
trigger3 = AnimElemTime(38) >= 0 && AnimElemTime(39) < 0
trigger4 = AnimElemTime(53) >= 0 && AnimElemTime(54) < 0
trigger5 = AnimElemTime(68) >= 0 && AnimElemTime(69) < 0
pos = ceil(44 * const(size.xScale)), -72

[State 3320, TargetBind 9]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
trigger2 = AnimElemTime(24) >= 0 && AnimElemTime(25) < 0
trigger3 = AnimElemTime(39) >= 0 && AnimElemTime(40) < 0
trigger4 = AnimElemTime(54) >= 0 && AnimElemTime(55) < 0
trigger5 = AnimElemTime(69) >= 0 && AnimElemTime(70) < 0
pos = ceil(27 * const(size.xScale)), -96

[State 3320, TargetBind 10]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
trigger2 = AnimElemTime(25) >= 0 && AnimElemTime(26) < 0
trigger3 = AnimElemTime(40) >= 0 && AnimElemTime(41) < 0
trigger4 = AnimElemTime(55) >= 0 && AnimElemTime(56) < 0
trigger5 = AnimElemTime(70) >= 0 && AnimElemTime(71) < 0
pos = -ceil(56 * const(size.xScale)), -98

[State 3320, TargetBind 11]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
trigger2 = AnimElemTime(26) >= 0 && AnimElemTime(27) < 0
trigger3 = AnimElemTime(41) >= 0 && AnimElemTime(42) < 0
trigger4 = AnimElemTime(56) >= 0 && AnimElemTime(57) < 0
trigger5 = AnimElemTime(71) >= 0 && AnimElemTime(72) < 0
pos = -ceil(98 * const(size.xScale)), -20

[State 3320, TargetBind 12]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(14) < 0
trigger2 = AnimElemTime(27) >= 0 && AnimElemTime(29) < 0
trigger3 = AnimElemTime(42) >= 0 && AnimElemTime(44) < 0
trigger4 = AnimElemTime(57) >= 0 && AnimElemTime(59) < 0
pos = -ceil(88 * const(size.xScale)), -24

[State 3320, TargetBind 14]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
trigger2 = AnimElemTime(29) >= 0 && AnimElemTime(30) < 0
trigger3 = AnimElemTime(44) >= 0 && AnimElemTime(45) < 0
trigger4 = AnimElemTime(59) >= 0 && AnimElemTime(60) < 0
pos = -ceil(64 * const(size.xScale)), -12

[State 3320, TargetBind 15]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
trigger2 = AnimElemTime(30) >= 0 && AnimElemTime(31) < 0
trigger3 = AnimElemTime(45) >= 0 && AnimElemTime(46) < 0
trigger4 = AnimElemTime(60) >= 0 && AnimElemTime(61) < 0
pos = -ceil(32 * const(size.xScale)), -12

[State 3320, TargetBind 16]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
trigger2 = AnimElemTime(31) >= 0 && AnimElemTime(32) < 0
trigger3 = AnimElemTime(46) >= 0 && AnimElemTime(47) < 0
trigger4 = AnimElemTime(61) >= 0 && AnimElemTime(62) < 0
pos = -ceil(18 * const(size.xScale)), -4

[State 3320, TargetBind 17]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(17) >= 0 && AnimElemTime(18) < 0
trigger2 = AnimElemTime(32) >= 0 && AnimElemTime(33) < 0
trigger3 = AnimElemTime(47) >= 0 && AnimElemTime(48) < 0
trigger4 = AnimElemTime(62) >= 0 && AnimElemTime(63) < 0
pos = -ceil(4 * const(size.xScale)), -4

[State 3320, TargetBind 18]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(18) >= 0 && AnimElemTime(19) < 0
trigger2 = AnimElemTime(33) >= 0 && AnimElemTime(34) < 0
trigger3 = AnimElemTime(48) >= 0 && AnimElemTime(49) < 0
trigger4 = AnimElemTime(63) >= 0 && AnimElemTime(64) < 0
pos = ceil(12 * const(size.xScale)), -4

[State 3320, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26 || AnimElem = 41 || AnimElem = 56)
value = floor(ifElse(70 * fvar(11) * fvar(12) < 7, -7, -70 * fvar(11) * fvar(12)))
kill = 0

[State 3320, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 71
value = floor(ifElse(168 * fvar(11) * fvar(12) < 7, -7, -168 * fvar(11) * fvar(12)))

[State 3320, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26 || AnimElem = 41 || AnimElem = 56 || AnimElem = 71)
value = 36

[State 3320, HitAdd]
type = HitAdd
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26 || AnimElem = 41 || AnimElem = 56 || AnimElem = 71)
value = 1

[State 3320, HitCount]
type = VarAdd
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26 || AnimElem = 41 || AnimElem = 56 || AnimElem = 71)
var(13) = 1

[State 3320, Juggle]
type = VarAdd
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26 || AnimElem = 41 || AnimElem = 56 || AnimElem = 71)
var(15) = 1
ignoreHitPause = 1

[State 3320, Juggle]
type = VarSet
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26 || AnimElem = 41 || AnimElem = 56 || AnimElem = 71)
var(16) = 1
ignoreHitPause = 1

[State 3320, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26 || AnimElem = 41 || AnimElem = 56 || AnimElem = 71)
value = 2, 810
channel = 4

[State 3320, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26 || AnimElem = 41 || AnimElem = 56)
value = 810, 0
channel = 5

[State 3311, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 71
value = 3311, 0
channel = 5

[State 3320, EnvShake]
type = EnvShake
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26 || AnimElem = 41 || AnimElem = 56 || AnimElem = 71)
time = 18
ampl = -6
freq = 120

[State 3320, Impact Dust 1]
type = Helper
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26 || AnimElem = 41 || AnimElem = 56 || AnimElem = 71)
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = -ceil(114 * const(size.xScale)), 0
facing = -1
ownPal = 1

[State 3320, Impact Dust 2]
type = Explod
trigger1 = NumTarget && (AnimElem = 11 || AnimElem = 26 || AnimElem = 41 || AnimElem = 56 || AnimElem = 71)
anim = 8105
sprPriority = -3
posType = P1
pos = -ceil(114 * const(size.xScale)), 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3320, Hyper Drop Impact Dust]
type = Explod
trigger1 = NumTarget && AnimElem = 71
anim = 3313
ID = 3313
sprPriority = 3
posType = P1
pos = -ceil(114 * const(size.xScale)), 0
scale = 0.5,0.5
ownPal = 1

[State 3320, Voice]
type = PlaySnd
trigger1 = AnimElem = 8 || AnimElem = 23 || AnimElem = 38 || AnimElem = 53
value = 4, 2
channel = 0

[State 3320, Voice]
type = PlaySnd
trigger1 = AnimElem = 64
value = 3320, 0
channel = 0

[State 3320, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 72
value = 3326

[State 3320, Turn]
type = Turn
trigger1 = AnimElem = 80

[State 3320, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<HYPER DROP (TARGET)>==========
;Being Thrown
[StateDef 3325]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 3325, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3325, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3325

[State 3325, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing != EnemyNear, Facing
ignoreHitPause = 1

[State 3325, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 3326]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3326, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1416

[State 3326, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3326, VelSet]
type = VelSet
trigger1 = Time = 0
x = -5.58659217877
y = -5.78125

[State 3326, VelAdd]
type = VelAdd
Trigger1 = Time > 0
y = 0.5126953125

[State 3326, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3326, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<HYPER BOMB (COMBO)>=============================
[StateDef 3350]
type = S
physics = N
moveType = A
anim = 3300
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -5000
faceP2 = 1

[State 3350, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3350, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3350, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3350, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3350, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 47

[State 3350, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3350, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3350, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3350, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(32 * const(size.xScale)), -70
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3350, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3350, Voice]
type = PlaySnd
trigger1 = !Time
value = 3000, 0
channel = 0

[State 3350, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 2 && !var(37)
attr = S, HT
hitFlag = M
priority = 7, Miss
getPower = 0,0
givePower = 0,0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 32), var(36) := -68
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = ifElse((Facing != EnemyNear, Facing), 3310, 3320)

[State 3350, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 800, 0
channel = 0

[State 3350, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 3350, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 3350, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1