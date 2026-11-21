; ________________________________________________
;| Ash Crimson by KarmaCharmeleon && FeLo_Llop	|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<THERMIDOR>=============================
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
trigger1 = AnimElemTime(11) < 0
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
pos = 28, -92
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

[State 3000, Voice 1 (Normal)]
type = PlaySnd
trigger1 = !Time && !var(40)
value = 3000, 0
channel = 0

[State 3000, Voice 1 (Evil)]
type = PlaySnd
trigger1 = !Time && var(40)
value = 730, 11
channel = 0

[State 3000, Fire Sound Effect 1]
type = PlaySnd
trigger1 = AnimElem = 10
value = 3000, 2
channel = 1

[State 3000, Thermidor Visual Effect]
type = Explod
trigger1 = !Time
ID = 3002
anim = 3002 + 10000 * var(40)
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3000, Thermidor Visual Effect]
type = Explod
trigger1 = AnimElem = 10
ID = 3003
anim = 3003 + 10000 * var(40)
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3000, Thermidor Visual Effect]
type = Explod
trigger1 = AnimElem = 11
ID = 3004
anim = 3004 + 10000 * var(40)
bindTime = 1
sprPriority = 3
posType = P1
pos = 30, -130
vel = -7.5, 4
accel = 1.625, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3000, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 14
value = 3000, 1 + 10 * var(40)
channel = 0

[State 3000, Fire Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 14
value = 3000, 3
channel = 1

[State 3000, Projectile]
type = Helper
trigger1 = AnimElem = 14
helperType = Normal
stateNo = 3005
ID = 3005
name = "Thermidor Projectile"
posType = P1
pos = 45, -82
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX THERMIDOR>=============================
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
trigger1 = AnimElemTime(11) < 0
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
pos = 28, -92
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

[State 3050, Voice 1 (Normal)]
type = PlaySnd
trigger1 = !Time && !var(40)
value = 3000, 0
channel = 0

[State 3050, Voice 1 (Evil)]
type = PlaySnd
trigger1 = !Time && var(40)
value = 730, 11
channel = 0

[State 3050, Fire Sound Effect 1]
type = PlaySnd
trigger1 = AnimElem = 10
value = 3000, 2
channel = 1

[State 3050, Thermidor Visual Effect]
type = Explod
trigger1 = !Time
ID = 3002
anim = 3002 + 10000 * var(40)
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3050, Thermidor Visual Effect]
type = Explod
trigger1 = AnimElem = 10
ID = 3003
anim = 3053 + 10000 * var(40)
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3050, Thermidor Visual Effect]
type = Explod
trigger1 = AnimElem = 11
ID = 3004
anim = 3004 + 10000 * var(40)
bindTime = 1
sprPriority = 3
posType = P1
pos = 30, -130
vel = -7.5, 4
accel = 1.625, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3050, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 14
value = 3000, 1 + 10 * var(40)
channel = 0

[State 3050, Fire Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 14
value = 3000, 3
channel = 1

[State 3050, Projectile]
type = Helper
trigger1 = AnimElem = 14
helperType = Normal
stateNo = 3005
ID = 3055
name = "MAX Thermidor Projectile"
posType = P1
pos = 45, -82
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3050, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<PLUVIOSE>=============================
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
pos = 24, -2
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
trigger1 = AnimElem = 1 && !var(40)
value = 3100, 0
channel = 0

[State 3100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3100, 1 + 10 * var(40)
channel = 0

[State 3100, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 15
value = 3100, 2 + 10 * var(40)
channel = 0

[State 3100, Voice 4]
type = PlaySnd
trigger1 = AnimElem = 27
value = 3100, 3 + 10 * var(40)
channel = 0

[State 3100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 15 || AnimElem = 27
value = 1, 5
channel = 1

[State 3100, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 15 || AnimElem = 27
value = 1100, 1
channel = 3

[State 3100, Pluviose Visual Effect 1]
type = Explod
trigger1 = AnimElem = 3 || AnimElem = 15
ID = 3103
anim = 3103 + 10000 * var(40) + 10 * AnimElem = 15
bindTime = 1
sprPriority = 3
posType = P1
pos = 8, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3100, Pluviose Visual Effect 2]
type = Explod
trigger1 = AnimElem = 27
ID = 3103
anim = 3104 + 10000 * var(40)
bindTime = 1
sprPriority = 3
posType = P1
pos = 8, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3100, Pluviose Visual Effect 3]
type = Explod
trigger1 = AnimElem = 3 || AnimElem = 15 || AnimElem = 27
ID = 3105
anim = 1104 + 10000 * var(40)
bindTime = 1
sprPriority = 3
posType = P1
pos = 8, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 31
value = 41, 0

[State 3100, Dust Helper]
type = Helper
trigger1 = AnimElem = 31
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 31
stateType = A
physics = N

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 3 || AnimElem = 14 || AnimElem = 26
x = 5.58659217877

[State 3100, VelAdd]
type = VelAdd
triggerAll = vel x > 0
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(14) < 0
trigger2 = AnimElemTime(14) > 0 && AnimElemTime(26) < 0
trigger3 = AnimElemTime(26) > 0 && AnimElemTime(31) < 0
x = -0.17458100558

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElemTime(31) = 1
x = 11.1731843575
y = -10

[State 3100, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(31) > 1
x = -0.34916201117

[State 3100, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 3100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(31) > 1
y = 0.5859375

[State 3100, Ground Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 4 || AnimElem = 16 || AnimElem = 28
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(40), 35, 28) < 7, 7, fvar(11) * ifElse(var(40), 35, 28))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -5
palFX.time = 20
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, Ground Hit 2]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = (AnimElem = 5 || AnimElem = 17 || AnimElem = 29) && !MoveContact && !MoveReversed
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -68
palFX.time = 20
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, Ground Hit 3]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = (AnimElem = 6 || AnimElem = 18 || AnimElem = 30)
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -50
palFX.time = 20
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, Ground Hit 4]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = (AnimElem = 7 || AnimElem = 19) && !MoveContact && !MoveReversed
trigger2 = (AnimElem = 8 || AnimElem = 20)
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -98
palFX.time = 20
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3100, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(31) < 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 20, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3100, Final Hit]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 31 && !MoveContact && !MoveReversed
trigger2 = AnimElem = 32
ID = 3100
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.46927374302, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 32
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget(3100)
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 32, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(33) >= 0
moveType = I

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
velSet = 0,0

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



;========================<MAX PLUVIOSE>=============================
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
pos = 24, -2
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

[State 3150, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && !var(40)
value = 3100, 0
channel = 0

[State 3150, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3100, 1 + 10 * var(40)
channel = 0

[State 3150, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 15
value = 3100, 2 + 10 * var(40)
channel = 0

[State 3150, Voice 4]
type = PlaySnd
trigger1 = AnimElem = 27
value = 3100, 3 + 10 * var(40)
channel = 0

[State 3150, Voice 5]
type = PlaySnd
trigger1 = AnimElem = 39
value = 3100, 4 + 10 * var(40)
channel = 0

[State 3150, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 15 || AnimElem = 27 || AnimElem = 39
value = 1, 5
channel = 1

[State 3150, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 15 || AnimElem = 27 || AnimElem = 39
value = 1100, 1
channel = 3

[State 3150, Pluviose Visual Effect 1]
type = Explod
trigger1 = AnimElem = 3 || AnimElem = 15 || AnimElem = 27
ID = 3103
anim = 3103 + 10000 * var(40) + 10 * (AnimElem = 15 || AnimElem = 27)
bindTime = 1
sprPriority = 3
posType = P1
pos = 8, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3150, Pluviose Visual Effect 2]
type = Explod
trigger1 = AnimElem = 39
ID = 3103
anim = 3104 + 10000 * var(40)
bindTime = 1
sprPriority = 3
posType = P1
pos = 8, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3150, Pluviose Visual Effect 3]
type = Explod
trigger1 = AnimElem = 3 || AnimElem = 15 || AnimElem = 27 || AnimElem = 39
ID = 3105
anim = 1104 + 10000 * var(40)
bindTime = 1
sprPriority = 3
posType = P1
pos = 8, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3150, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 43
value = 41, 0

[State 3150, Dust Helper]
type = Helper
trigger1 = AnimElem = 43
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3150, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 43
stateType = A
physics = N

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 3 || AnimElem = 14 || AnimElem = 26 || AnimElem = 38
x = 5.58659217877

[State 3150, VelAdd]
type = VelAdd
triggerAll = vel x > 0
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(14) < 0
trigger2 = AnimElemTime(14) > 0 && AnimElemTime(26) < 0
trigger3 = AnimElemTime(26) > 0 && AnimElemTime(31) < 0
trigger4 = AnimElemTime(38) > 0 && AnimElemTime(43) < 0
x = -0.17458100558

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElemTime(43) = 1
x = 11.1731843575
y = -10

[State 3150, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(43) > 1
x = -0.34916201117

[State 3150, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 3150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(43) > 1
y = 0.5859375

[State 3150, Ground Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 4 || AnimElem = 16 || AnimElem = 28 || AnimElem = 40
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(40), 42, 35) < 7, 7, fvar(11) * ifElse(var(40), 42, 35))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -5
palFX.time = 20
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, Ground Hit 2]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = (AnimElem = 5 || AnimElem = 17 || AnimElem = 29 || AnimElem = 41) && !MoveContact && !MoveReversed
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -68
palFX.time = 20
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, Ground Hit 3]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = (AnimElem = 6 || AnimElem = 18 || AnimElem = 30 || AnimElem = 42)
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -50
palFX.time = 20
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, Ground Hit 4]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = (AnimElem = 7 || AnimElem = 19 || AnimElem = 31) && !MoveContact && !MoveReversed
trigger2 = (AnimElem = 8 || AnimElem = 20 || AnimElem = 32)
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -98
palFX.time = 20
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3150, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(31) < 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 20, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3150, Final Hit]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 43 && !MoveContact && !MoveReversed
trigger2 = AnimElem = 44
ID = 3150
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.46927374302, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 32
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget(3150)
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 32, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3150, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(45) >= 0
moveType = I

[State 3150, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3105



;========================<SANS-CULOTTES>=============================
[StateDef 3200]
type = S
physics = N
moveType = A
anim = 3200
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -2000
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
trigger1 = Time = 3
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255, 255, 255
ignoreHitPause = 1

[State 3200, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 0, -85
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3200, 0
channel = 0

[State 3200, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3200, 1
channel = 1

[State 3200, Sans-Culottes Visual Effect 1]
type = Explod
trigger1 = AnimElem = 4
ID = 3203
anim = 3203
bindTime = 1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3200, Sans-Culottes Visual Effect 2]
type = Explod
trigger1 = AnimElem = 4
ID = 3204
anim = 3204
bindTime = 1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3200, Sans-Culotte Time]
type = VarSet
trigger1 = AnimElemTime(4) >= 0
var(55) = 300

[State 3200, Power]
type = VarSet
trigger1 = AnimElem = 4
var(56) = Power

[State 3200, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 140 < 7, 7, fvar(11) * 140)), 14
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -0.55865921787, -12.5
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -0.55865921787, -12.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 28), var(36) := -85
palFX.time = 62
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= 10
value = 3200
elem = 6
ignoreHitPause = 1

[State 3200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= 8
value = 3200
elem = 7
ignoreHitPause = 1

[State 3200, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3200, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 62, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 3200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<GERMINAL>==========================
[StateDef 3250]
type = S
physics = N
moveType = A
anim = 3250
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 3250, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(55)
var(15) = 0
ignoreHitPause = 1

[State 3250, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(55) := -1
time = 1

[State 3250, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(10) < 0
time = 1
value = SCA

[State 3250, Pause]
type = Pause
trigger1 = Time = 3
time = 32
moveTime = 32

[State 3250, Fade Out Helper]
type = Helper
trigger1 = !Time && !NumHelper(3253)
helpertype = Normal
stateNo = 3253
ID = 3253
name = "Fade Out"
posType = P1
pauseMoveTime = 32
superMoveTime = 32

[state 3250, ChildVarSet]
type = Null
trigger1 = AnimElem = 1
trigger1 = Cond(NumHelper(3253), Helper(3253), Cond(1, Var(0) := 36, 0), 0)

[State 3250, Voice]
type = PlaySnd
trigger1 = !Time
value = 3250, 0
channel = 0

[State 3250, Fire Sound 1]
type = PlaySnd
trigger1 = !Time
value = 3250, 1
channel = 1

[State 3250, Fire Sound 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3250, 2
channel = 1

[State 3250, Germinal Startup Effect]
type = Explod
trigger1 = !Time
ID = 3255
anim = 3255
bindTime = 1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3250, Germinal Visual Effect]
type = Explod
trigger1 = AnimElem = 3
ID = 3256
anim = 3256
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 0
ignoreHitPause = 1

[State 3250, VarAdd]
type = VarSet
trigger1 = AnimElem = 3
var(10) = 256

[State 3250, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(3) > 0 && var(10) > 0
var(10) = -32

[State 3250, AllPalFX: Fade In]
type = PalFX
trigger1 = AnimElemTime(3) >= 0 && var(10)
time = 1
add = -var(10), -var(10), -var(10)

[State 3250, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 1
x = 22.3463687151

[State 3250, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) > 1 && AnimElemTime(6) < 0 && vel x > 0
x = -1.39664804469

[State 3250, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(6) < 0
value = 0

[State 3250, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
ID = 3250
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -50
palFX.time = 56
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3250, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3250, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 56, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3250, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3250) > 1
ID = 3250
keepOne = 1
excludeID = 3250
ignoreHitPause = 1

[State 3250, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3250)
value = 3265
ID = 3250
ignoreHitPause = 1
persistent = 0

[State 3250, ChangeState]
type = ChangeState
trigger1 = NumTarget(3250)
trigger1 = MoveHit
value = 3260

[State 3250, ChangeAnim]
type = ChangeAnim
trigger1 = MoveGuarded
value = 3250
elem = 5
persistent = 0

[State 3250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 3260, TargetBind]
type = BindToTarget
trigger1 = MoveGuarded && AnimElem = 5
pos = -36, 0, Foot

[State 3250, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 7.82122905028

[State 3250, VelSet]
type = VelAdd
trigger1 = AnimElemTime(6) > 0 && vel x > 0
x = -0.52374301676

[State 3250, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 3250, Germinal Visual Effect]
type = Explod
trigger1 = AnimElem = 7
ID = 3257
anim = 3257
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1

[State 3250, Special Turn]
type = ChangeState
trigger1 = AnimElem = 15 && (Facing = Enemy, Facing)
value = 3251

[State 3250, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Special Turn
[StateDef 3251]
type = S
anim = 3251
physics = N
moveType = I
velSet = 0, 0

[State 3251, Turn]
type = Turn
trigger1 = !AnimTime

[State 3251, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3260]
type = S
anim = 3260
physics = N
moveType = A
velSet = 0, 0

[State 3260, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(2) < 0
edge = 36, 0

[State 3260, TargetBind]
type = BindToTarget
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = -36, (EnemyNear, P2Dist y), Foot

[State 3260, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(1) > 0 && var(10) > 0
var(10) = -16

[State 3260, AllPalFX: Fade to Black]
type = PalFX
trigger1 = AnimElemTime(1) >= 0 && var(10)
time = 1
add = -var(10), -var(10), -var(10)

[State 3260, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 7.82122905028

[State 3260, VelSet]
type = VelAdd
trigger1 = AnimElemTime(2) > 0 && vel x > 0
x = -0.52374301676

[State 3260, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 3260, Germinal Visual Effect]
type = Explod
trigger1 = AnimElem = 3
ID = 3257
anim = 3257
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1

[State 3260, Germinal Success Visual Effect]
type = Explod
trigger1 = AnimElem = 8
ID = 3263
anim = 3263
bindTime = 1
sprPriority = 3
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5
ownPal = 1

[State 3260, Damage]
type = TargetLifeAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(8) = 10
trigger2 = AnimElemTime(8) = 18
trigger3 = AnimElemTime(8) = 26
trigger4 = AnimElemTime(8) = 34
trigger5 = AnimElemTime(8) = 42
value = floor(ifElse(14 * fvar(11) < 7, -7, -14 * fvar(11)))

[State 3260, TargetPowerAdd]
type = TargetPowerAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(8) = 10
trigger2 = AnimElemTime(8) = 18
trigger3 = AnimElemTime(8) = 26
trigger4 = AnimElemTime(8) = 34
trigger5 = AnimElemTime(8) = 42
value = 36

[State 3260, HitAdd]
type = HitAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(8) = 10
trigger2 = AnimElemTime(8) = 18
trigger3 = AnimElemTime(8) = 26
trigger4 = AnimElemTime(8) = 34
trigger5 = AnimElemTime(8) = 42
value = 1

[State 3260, HitAdd]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(8) = 10
trigger2 = AnimElemTime(8) = 18
trigger3 = AnimElemTime(8) = 26
trigger4 = AnimElemTime(8) = 34
trigger5 = AnimElemTime(8) = 42
var(13) = 1

[State 3260, Juggle]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(8) = 10
trigger2 = AnimElemTime(8) = 18
trigger3 = AnimElemTime(8) = 26
trigger4 = AnimElemTime(8) = 34
trigger5 = AnimElemTime(8) = 42
var(15) = 1
ignoreHitPause = 1

[State 3260, Juggle]
type = VarSet
triggerAll = NumTarget
trigger1 = AnimElemTime(8) = 10
trigger2 = AnimElemTime(8) = 18
trigger3 = AnimElemTime(8) = 26
trigger4 = AnimElemTime(8) = 34
trigger5 = AnimElemTime(8) = 42
var(16) = 1
ignoreHitPause = 1

[State 3260, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = AnimElemTime(8) = 10
trigger2 = AnimElemTime(8) = 18
trigger3 = AnimElemTime(8) = 26
trigger4 = AnimElemTime(8) = 34
trigger5 = AnimElemTime(8) = 42
time = 18
ampl = -6
freq = 120

[State 3260, Hit Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElemTime(8) = 10
trigger2 = AnimElemTime(8) = 18
trigger3 = AnimElemTime(8) = 26
trigger4 = AnimElemTime(8) = 34
trigger5 = AnimElemTime(8) = 42
value = 2, 6
channel = 2

[State 3260, Explosion Sound Effect]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElemTime(8) = 10
trigger2 = AnimElemTime(8) = 18
trigger3 = AnimElemTime(8) = 26
trigger4 = AnimElemTime(8) = 34
trigger5 = AnimElemTime(8) = 42
value = 810, 2
channel = 3

[State 3260, Hit Spark]
type = Helper
triggerAll = NumTarget
trigger1 = AnimElemTime(8) = 10
trigger2 = AnimElemTime(8) = 18
trigger3 = AnimElemTime(8) = 26
trigger4 = AnimElemTime(8) = 34
trigger5 = AnimElemTime(8) = 42
helperType = Normal
stateNo = 8014
ID = 8001
name = "Spark"
posType = P2
pos = 0, (EnemyNear, const(size.mid.pos.y))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3260, Throw]
type = TargetState
triggerAll = NumTarget
trigger1 = AnimElemTime(8) = 10
trigger2 = AnimElemTime(8) = 18
trigger3 = AnimElemTime(8) = 26
trigger4 = AnimElemTime(8) = 34
trigger5 = AnimElemTime(8) = 42
value = 3267

[State 3260, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = NumTarget && (AnimElemTime(8) = 10 || AnimElemTime(8) = 18 || AnimElemTime(8) = 26 || AnimElemTime(8) = 34 || AnimElemTime(8) = 42)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3260, Flame Particles Timer Set]
type = Null
trigger1 = NumTarget && (AnimElemTime(8) = 10 || AnimElemTime(8) = 18 || AnimElemTime(8) = 26 || AnimElemTime(8) = 34 || AnimElemTime(8) = 42)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 40, 0), 0)

[State 3260, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
moveType = I

[State 3260, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<HIT BY GERMINAL>==========================
;Hit Shake
[StateDef 3265]
type = S
movetype = H
physics = N
velset = 0, 0

[State 3265, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3265, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3265, ChangeAnim: Hard]
type = ChangeAnim
trigger1 = !Time
value = 5012

[State 3265, ChangeAnim: Freeze]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 3265, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 3266


;Falling down
[StateDef 3266]
type = S
physics = N
movetype = H
ctrl = 0
velSet = 0,0

[State 3265, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3266, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
trigger1 = !SelfAnimExist(5950) && !SelfAnimExist(5955)
value = 3266
ignoreHitPause = 1

[State 3266, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5950) || SelfAnimExist(5955)
value = ifElse(SelfAnimExist(5955), 5955, 5950)

[State 3266, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
trigger2 = AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse((Anim = 5950 || Anim = 5955) && SelfAnimExist(5112), 5112, 5110)
persistent = 0

[State 3266, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime && (Anim = 5110 || Anim = 5112)
value = Anim
elem = AnimElemNo(0)


;After Throw
[StateDef 3267]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3267, ChangeAnim]
type = ChangeAnim
trigger1 = Time < 5
value = 5030

[State 3267, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 3267, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3267, PalFX]
type = PalFX
trigger1 = !Time
time = 40
mul = 128, 128, 128
sinAdd = 96, 96, 96, 4

[State 3267, VelSet]
type = VelSet
trigger1 = Time = 5
x = -2.79329608939
y = -7.5

[State 3267, VelAdd]
type = VelAdd
Trigger1 = Time >= 5
y = 0.5126953125

[State 3267, Seal]
type = Projectile
trigger1 = Time = 8
projID = 131035
projAnim = 0
projHitAnim = -1
projRemAnim = -1
projRemoveTime = 384
projScale = 0, 0
projPriority = 0
velocity = 0, 0
posType = P1
offSet = 0, 300
persistent = 0
ignoreHitPause = 1

[State 3267, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3267, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;=====================<FRUCTIDOR>==========================
[StateDef 3300]
type = S
physics = N
moveType = A
anim = 3300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 3300, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(55)
var(15) = 0
ignoreHitPause = 1

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(55) := -1
time = 1

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3300, Pause]
type = Pause
trigger1 = Time = 3
time = 32
moveTime = 32

[State 3300, Fade Out Helper]
type = Helper
trigger1 = !Time && !NumHelper(3253)
helpertype = Normal
stateNo = 3253
ID = 3253
name = "Fade Out"
posType = P1
pauseMoveTime = 32
superMoveTime = 32

[state 3300, ChildVarSet]
type = Null
trigger1 = AnimElem = 1
trigger1 = Cond(NumHelper(3253), Helper(3253), Cond(1, Var(0) := 36, 0), 0)

[State 3300, Voice]
type = PlaySnd
trigger1 = !Time
value = 3300, 0
channel = 0

[State 3300, Fire Sound]
type = PlaySnd
trigger1 = !Time
value = 3200, 1
channel = 3

[State 3300, Fructidor Visual Effect 1]
type = Explod
trigger1 = !Time
ID = 3303
anim = 3303
bindTime = 34
sprPriority = 3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3300, Fructidor Visual Effect 2]
type = Explod
trigger1 = !Time
ID = 3303
anim = 3303
bindTime = 34
sprPriority = -1
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3300, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5 && P2BodyDist x < 28 && !var(37)
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
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 3310

[State 3300, Whoosh]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 2
channel = 1

[State 3300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 3300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<FRUCTIDOR (SUCCESS)>=============================
[Statedef 3310]
type = S
physics = N
moveType = A
anim = 3310
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 3310, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3310, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3315

[State 3310, Voice]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 11
value = 3310, 0
channel = 0

[State 3310, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(2) < 0
edge = 40, 0

[State 3310, TargetBind 1]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = 38, 0

[State 3310, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 36, -100

[State 3310, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 34, -104

[State 3310, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(48) < 0
pos = 32, -108

[State 3310, TargetBind 4]
type = TargetBind
trigger1 = NumTarget && AnimElem = 48
pos = 32, 0

[State 3310, Fructidor Visual Effect]
type = Explod
trigger1 = AnimElem = 10
ID = 3313
anim = 3313
bindTime = 1
sprPriority = 3
posType = P1
pos = 16, 0
scale = 0.5, 0.5
ownPal = 1

[State 3310, Damage]
type = TargetLifeAdd
triggerAll = NumTarget
trigger1 = AnimElem = 11 || AnimElem = 15 || AnimElem = 19
trigger2 = AnimElem = 23 || AnimElem = 27 || AnimElem = 31
trigger3 = AnimElem = 35 || AnimElem = 39
value = floor(ifElse(14 * fvar(11) < 7, -7, -14 * fvar(11)))
kill = 0

[State 3310, Final Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 48
value = floor(ifElse(56 * fvar(11) < 7, -7, -56 * fvar(11)))

[State 3310, TargetPowerAdd]
type = TargetPowerAdd
triggerAll = NumTarget
trigger1 = AnimElem = 11 || AnimElem = 15 || AnimElem = 19
trigger2 = AnimElem = 23 || AnimElem = 27 || AnimElem = 31
trigger3 = AnimElem = 35 || AnimElem = 39 || AnimElem = 48
value = 36

[State 3310, HitAdd]
type = HitAdd
triggerAll = NumTarget
trigger1 = AnimElem = 11 || AnimElem = 15 || AnimElem = 19
trigger2 = AnimElem = 23 || AnimElem = 27 || AnimElem = 31
trigger3 = AnimElem = 35 || AnimElem = 39 || AnimElem = 48
value = 1

[State 3310, HitAdd]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 11 || AnimElem = 15 || AnimElem = 19
trigger2 = AnimElem = 23 || AnimElem = 27 || AnimElem = 31
trigger3 = AnimElem = 35 || AnimElem = 39 || AnimElem = 48
var(13) = 1

[State 3310, Juggle]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 11 || AnimElem = 15 || AnimElem = 19
trigger2 = AnimElem = 23 || AnimElem = 27 || AnimElem = 31
trigger3 = AnimElem = 35 || AnimElem = 39 || AnimElem = 48
var(15) = 1
ignoreHitPause = 1

[State 3310, Juggle]
type = VarSet
triggerAll = NumTarget
trigger1 = AnimElem = 11 || AnimElem = 15 || AnimElem = 19
trigger2 = AnimElem = 23 || AnimElem = 27 || AnimElem = 31
trigger3 = AnimElem = 35 || AnimElem = 39 || AnimElem = 48
var(16) = 1
ignoreHitPause = 1

[State 3310, Hit Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElem = 11 || AnimElem = 15 || AnimElem = 19
trigger2 = AnimElem = 23 || AnimElem = 27 || AnimElem = 31
trigger3 = AnimElem = 35 || AnimElem = 39 || AnimElem = 48
value = 2, 6
channel = 2

[State 3310, Explosion Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElem = 11 || AnimElem = 15 || AnimElem = 19
trigger2 = AnimElem = 23 || AnimElem = 27 || AnimElem = 31
trigger3 = AnimElem = 35 || AnimElem = 39 || AnimElem = 48
value = 810, 2
channel = 4

[State 3310, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = AnimElem = 11 || AnimElem = 15 || AnimElem = 19
trigger2 = AnimElem = 23 || AnimElem = 27 || AnimElem = 31
trigger3 = AnimElem = 35 || AnimElem = 39 || AnimElem = 48
time = 18
ampl = -6
freq = 120

[State 3310, Hit Spark]
type = Helper
triggerAll = NumTarget
trigger1 = AnimElem = 11 || AnimElem = 15 || AnimElem = 19
trigger2 = AnimElem = 23 || AnimElem = 27 || AnimElem = 31
trigger3 = AnimElem = 35 || AnimElem = 39 || AnimElem = 48
helperType = Normal
stateNo = 8014
ID = 8001
name = "Spark"
posType = P1
pos = 12 + (Random % 36), -108 + (Random % 48)
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3310, Fructidor Visual Effect 1]
type = Explod
trigger1 = AnimElem = 43
ID = 3303
anim = 3303
bindTime = 1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3310, Fructidor Visual Effect 2]
type = Explod
trigger1 = AnimElem = 43
ID = 3303
anim = 3303
bindTime = 1
sprPriority = -1
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3310, Fructidor Final Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 48
value = 3200, 1
channel = 3

[State 3310, Flame Particles]
type = Helper
trigger1 = !NumHelper(8151)
trigger1 = NumTarget && AnimElem = 48
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8151
ID = 8151
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3310, Flame Particles Timer Set]
type = Null
trigger1 = NumTarget && AnimElem = 48
trigger1 = NumHelper(8151)
trigger1 = Cond(NumHelper(8151), Helper(8151), Cond(1, var(44) := 45, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3310, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 48
value = 3316

[State 3310, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(50) >= 0
moveType = I

[State 3310, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<FRUCTIDOR (TARGET)>=============================
;Being Thrown
[StateDef 3315]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 3315, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3315

[State 3315, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
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

[State 3316, ChangeAnim: DiagUp]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5052)
value = 5052

[State 3316, ChangeAnim: Back]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5052)
value = 5030

[State 3316, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 3316, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3316, PalFX]
type = PalFX
trigger1 = !Time
time = 45
mul = 128, 128, 128
sinAdd = 96, 96, 96, 4

[State 3316, VelSet]
type = VelSet
trigger1 = Time = 1
x = -2.23463687151
y = -12.5

[State 3316, VelAdd]
type = VelAdd
Trigger1 = Time >= 1
y = 0.533109375

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



;=====================<FRIMAIRE>==========================
[StateDef 3350]
type = S
physics = N
moveType = A
anim = 3350
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 3350, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(55)
var(15) = 0
ignoreHitPause = 1

[State 3350, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(55) := -1
time = 1

[State 3350, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) < 0
time = 1
value = SCA

[State 3350, Pause]
type = Pause
trigger1 = Time = 3
time = 32
moveTime = 32

[State 3350, Fade Out Helper]
type = Helper
trigger1 = !Time && !NumHelper(3253)
helpertype = Normal
stateNo = 3253
ID = 3253
name = "Fade Out"
posType = P1
pauseMoveTime = 32
superMoveTime = 32

[state 3350, ChildVarSet]
type = Null
trigger1 = AnimElem = 1
trigger1 = Cond(NumHelper(3253), Helper(3253), Cond(1, Var(0) := 36, 0), 0)

[State 3350, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 810, 0
channel = 0

[State 3350, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 11
value = 810, 1
channel = 0

[State 3350, Fire Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 3350, 1
channel = 1

[State 3350, Fire Fade Away Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3350, 2
channel = 1

[State 3350, Fire Pillar Sound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 3350, 3
channel = 3

[State 3350, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 23
trigger2 = AnimElem = 29
trigger3 = AnimElem = 35
value = 1, 5

[State 3350, Final Dokugami Flame Sound]
type = PlaySnd
trigger1 = AnimElem = 41
value = 3350, 5
channel = 1

[State 3350, Flame Effect]
type = Explod
trigger1 = !Time
ID = 13350
anim = 13350
removeTime = 10
sprPriority = 3
posType = P1
pos = 14, -76
scale = 0.25, 0.25
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3350, ModifyExplod 1]
type = ModifyExplod
trigger1 = Time = 1
ID = 13350
scale = 0.375, 0.375

[State 3350, ModifyExplod 2]
type = ModifyExplod
trigger1 = Time = 2
ID = 13350
scale = 0.5, 0.5

[State 3350, ModifyExplod 3]
type = ModifyExplod
trigger1 = AnimElem = 2
ID = 13350
posType = P1
pos = 19, -110

[State 3350, ModifyExplod 4]
type = ModifyExplod
trigger1 = AnimElem = 3
ID = 13350
posType = P1
pos = 18, -110

[State 3350, Flame Fade Away Effect]
type = Explod
trigger1 = AnimElem = 4
anim = 23350
sprPriority = 3
posType = P1
pos = 8, -100
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3350, Frimaire Startup Effect]
type = Explod
trigger1 = AnimElem = 11
anim = 3353
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3350, Fire Pillar]
type = Helper
trigger1 = AnimElem = 11
helperType = Normal
stateNo = 3355
ID = 3355
name = "Frimaire Fire Pillar"
posType = P1
pos = 50, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3350, Frimaire Effect]
type = Explod
trigger1 = AnimElem = 21
anim = 3354
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3350, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(38) < 0
value = 0
moveCamera = 1, 1
ignoreHitPause = 1

[State 3350, PosAdd]
type = PosAdd
trigger1 = AnimElem = 20 || AnimElem = 26 || AnimElem = 32 || AnimElem = 38
x = 11.1731843575

[State 3350, PosAdd]
type = PosAdd
trigger1 = AnimElem = 21 || AnimElem = 27 || AnimElem = 33 || AnimElem = 39
x = 30.1675977654

[State 3350, PosAdd]
type = PosAdd
trigger1 = AnimElem = 22 || AnimElem = 28 || AnimElem = 34 || AnimElem = 40
x = 16.7597765363

[State 3350, PosAdd]
type = PosAdd
trigger1 = AnimElem = 23 || AnimElem = 29 || AnimElem = 35 || AnimElem = 41
x = 12.2905027933

[State 3350, PosAdd]
type = PosAdd
trigger1 = AnimElem = 24 || AnimElem = 30 || AnimElem = 36 || AnimElem = 42
x = 1.11731843575

[State 3350, PosAdd]
type = PosAdd
trigger1 = AnimElem = 25
trigger2 = AnimElem = 31
trigger3 = AnimElem = 37
x = -71.5083798883

[State 3350, Hits 1-3 (High)]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 24 || AnimElem = 36
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 2
guard.pauseTime = 0, 2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 36
ground.slideTime = 36
guard.hitTime = 36
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -64
palFX.time = 38
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3350, Hits 1-3 (Low)]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 30
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 2
guard.pauseTime = 0, 2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 36
ground.slideTime = 36
guard.hitTime = 36
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -64
palFX.time = 38
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3350, Flame Particles]
type = Helper
trigger1 = !NumHelper(8152)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8152
ID = 8152
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3350, Flame Particle Timer Set 1]
type = Null
trigger1 = AnimElemTime(42) < 0
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8152)
trigger1 = Cond(NumHelper(8152), Helper(8152), Cond(1, var(44) := 48, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3350, Final Hit]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 42
ID = 3350
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 48, 48
guard.pauseTime = 48, 48
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -64
palFX.time = 74
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 54
envShake.ampl = 6
envShake.freq = 120

[State 3350, Flame Particle Timer Set 2]
type = Null
trigger1 = AnimElemTime(42) >= 0
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8152)
trigger1 = Cond(NumHelper(8152), Helper(8152), Cond(1, var(44) := 74, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3350, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(43) >= 0
moveType = I

[State 3350, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<ESPOIR>=============================
[StateDef 3400]
type = S
physics = N
moveType = A
anim = 3400
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3400, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3400, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3400, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3400, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3400, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 47

[State 3400, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3400, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3400, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) < 0
time = 1
value = SCA

[State 3400, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = -5, -112
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3400, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3400, Voice]
type = PlaySnd
trigger1 = !Time
value = 3400, 0
channel = 0

[State 3400, Fire Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(12) = 0
trigger2 = AnimElemTime(12) = 1
trigger3 = AnimElemTime(12) = 2
trigger4 = AnimElemTime(12) = 3
trigger5 = AnimElemTime(12) = 4
value = 3400, 1
channel = 1

[State 3400, Finger Visual Effect]
type = Explod
trigger1 = AnimElem = 7
ID = 3402
anim = 10730
bindTime = -1
removetime = 27
sprPriority = 3
posType = P1
pos = -12, -115
scale = 0.125, 0.125
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3400, Finger Visual Effect]
type = Explod
trigger1 = AnimElem = 7
ID = 3402
anim = 10730
bindTime = -1
removetime = 27
sprPriority = 3
posType = P1
pos = -11, -116
scale = 0.125, 0.125
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3400, Finger Visual Effect]
type = Explod
trigger1 = AnimElem = 7
ID = 3402
anim = 10730
bindTime = -1
removetime = 27
sprPriority = 3
posType = P1
pos = -8, -120
scale = 0.125, 0.125
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3400, Finger Visual Effect]
type = Explod
trigger1 = AnimElem = 7
ID = 3402
anim = 10730
bindTime = -1
removetime = 27
sprPriority = 3
posType = P1
pos = -4, -120
scale = 0.125, 0.125
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3400, Finger Visual Effect]
type = Explod
trigger1 = AnimElem = 7
ID = 3402
anim = 10730
bindTime = -1
removetime = 27
sprPriority = 3
posType = P1
pos = 4, -116
scale = 0.125, 0.125
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3400, Ventose Visual Effect]
type = Explod
trigger1 = AnimElem = 8
ID = 3403
anim = 3403
bindTime = -1
removetime = 27
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3400, Projectile]
type = Helper
trigger1 = AnimElemTime(12) = 0
helperType = Normal
stateNo = 3405
ID = 3405
name = "Espoir Projectile"
posType = P1
pos = 48, -72
size.xScale = 0.25
size.yScale = 0.25
ownPal = 1

[State 3400, Projectile]
type = Helper
trigger1 = AnimElemTime(12) = 1
helperType = Normal
stateNo = 3405
ID = 3415
name = "Espoir Projectile"
posType = P1
pos = 36, -90
size.xScale = 0.25
size.yScale = 0.25
ownPal = 1

[State 3400, Projectile]
type = Helper
trigger1 = AnimElemTime(12) = 2
helperType = Normal
stateNo = 3405
ID = 3425
name = "Espoir Projectile"
posType = P1
pos = 24, -108
size.xScale = 0.25
size.yScale = 0.25
ownPal = 1

[State 3400, Projectile]
type = Helper
trigger1 = AnimElemTime(12) = 3
helperType = Normal
stateNo = 3405
ID = 3435
name = "Espoir Projectile"
posType = P1
pos = 12, -126
size.xScale = 0.25
size.yScale = 0.25
ownPal = 1

[State 3400, Projectile]
type = Helper
trigger1 = AnimElemTime(12) = 4
helperType = Normal
stateNo = 3405
ID = 3445
name = "Espoir Projectile"
posType = P1
pos = 0, -144
size.xScale = 0.25
size.yScale = 0.25
ownPal = 1

[State 3400, ChangeState]
type = ChangeState
triggerAll = AnimElemTime(14) > 0 && AnimElemTime(15) < 0
trigger1 = NumHelper(3405)
trigger1 = (Helper(3405), NumTarget(3405)) && (Helper(3405), MoveHit)
trigger2 = NumHelper(3415)
trigger2 = (Helper(3415), NumTarget(3405)) && (Helper(3415), MoveHit)
trigger3 = NumHelper(3425)
trigger3 = (Helper(3425), NumTarget(3405)) && (Helper(3425), MoveHit)
trigger4 = NumHelper(3435)
trigger4 = (Helper(3435), NumTarget(3405)) && (Helper(3435), MoveHit)
trigger5 = NumHelper(3445)
trigger5 = (Helper(3445), NumTarget(3405)) && (Helper(3445), MoveHit)
value = 3410

[State 3400, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3410]
type = S
anim = 3410
physics = N
moveType = A
velSet = 0, 0

[State 3410, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3410, 0
channel = 0

[State 3410, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 8
value = 3410, 1
channel = 0

[State 3410, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 15
value = 3410, 2
channel = 0

[State 3410, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 20
value = 3410, 3
channel = 3

[State 3410, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 18
value = 1, 2
channel = 1

[State 3410, Espoir Visual Effect]
type = Explod
trigger1 = AnimElem = 14
ID = 3413
anim = 3413
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3410, Pillar]
type = Helper
trigger1 = AnimElem = 18
helperType = Normal
stateNo = 3455
ID = 3455
name = "Espoir Pillar"
posType = P1
pos = floor(P2Dist x), 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3410, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<ANCIEN REGIME>=============================
[StateDef 3500]
type = S
physics = N
moveType = A
anim = 3500
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3500, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3500, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3500, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3500, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3500, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 47

[State 3500, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3500, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3500, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(26) < 0
time = 1
value = SCA

[State 3500, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = 0, -85
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3500, Voice]
type = PlaySnd
trigger1 = !Time
value = 3500, 10
channel = 0

[State 3500, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3200, 1
channel = 1

[State 3500, Fire Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 16 || AnimElemTime(16) = 7 || AnimElemTime(16) = 14
trigger2 = AnimElemTime(16) = 21 || AnimElemTime(16) = 28 || AnimElemTime(16) = 35
trigger3 = AnimElemTime(16) = 42 || AnimElemTime(16) = 49 || AnimElemTime(16) = 56
trigger4 = AnimElemTime(16) = 63 || AnimElemTime(16) = 70 || AnimElemTime(16) = 77
trigger5 = AnimElemTime(16) = 84 || AnimElemTime(16) = 91 || AnimElemTime(16) = 98
value = 1000, 1
channel = 1

[State 3500, Ancien Regime Visual Effect 1]
type = Explod
trigger1 = AnimElem = 4
ID = 3203
anim = 3203 + 10000 * var(40)
bindTime = 1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3500, Ancien Regime Visual Effect 2]
type = Explod
trigger1 = AnimElem = 4
ID = 3204
anim = 3204 + 10000 * var(40)
bindTime = 1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3500, Ancien Regime Projectile]
type = Helper
trigger1 = AnimElem = 16 || AnimElemTime(16) = 7 || AnimElemTime(16) = 14
trigger2 = AnimElemTime(16) = 21 || AnimElemTime(16) = 28 || AnimElemTime(16) = 35
trigger3 = AnimElemTime(16) = 42 || AnimElemTime(16) = 49 || AnimElemTime(16) = 56
trigger4 = AnimElemTime(16) = 63 || AnimElemTime(16) = 70 || AnimElemTime(16) = 77
trigger5 = AnimElemTime(16) = 84 || AnimElemTime(16) = 91 || AnimElemTime(16) = 98
helperType = Normal
stateNo = 3505
ID = 3505
name = "Ancien Regime Projectile"
posType = P2
pos = 0, (EnemyNear, const(size.mid.pos.y))
size.xScale = 0.5
size.yScale = 0.5
facing = -1
ownPal = 1

[State 3500, Ancien Regime Fake Projectile]
type = Explod
trigger1 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
ID = 3505
anim = 3505
bindTime = 1
sprPriority = 3
postype = Right
pos = -320 + Random % 320, floor((1.3333333 * GameHeight / GameWidth) * 240) - Random % 240
scale = 0.5, 0.5
ownPal = 1

[State 3500, Ancien Regime Fake Projectile]
type = Explod
trigger1 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
ID = 3505
anim = 3505
bindTime = 1
sprPriority = 3
postype = Right
pos = -320 + Random % 320, floor((1.3333333 * GameHeight / GameWidth) * 240) - Random % 240
scale = 0.5, 0.5
ownPal = 1

[State 3500, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1