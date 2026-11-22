; ________________________________________________
;| Iori Yagami by KarmaCharmeleon		|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;========================<108 SHIKI: YAMI BARAI>=============================
[StateDef 1000]
type = S
physics = N
moveType = A
anim = 1000 + 10000 * (var(40) = 1)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 0, ifElse(Random < 500, 1, 2))

[State 1000, Voice]
type = PlaySnd
trigger1 = !Time
value = 1000, 0 + 10 * (var(40) = 1)
channel = 0

[State 1000, Yami Barai Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 1
channel = 3

[State 1000, Yami Barai Visual Effect]
type = Explod
trigger1 = AnimElem = 3
ID = 1005
anim = 1003
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1005
ID = 1005
name = "Yami Barai Projectile"
posType = P1
pos = 43, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<108 SHIKI: YAMI BARAI (EX)>=============================
[StateDef 1030]
type = S
physics = N
moveType = A
anim = ifElse(var(40) = 2, 1040, 1000)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1030, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1030, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = ifElse(var(40) = 2, 24, 19)

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -14, -98
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1030, Voice]
type = PlaySnd
trigger1 = !Time
value = 1000, 0
channel = 0

[State 1030, Yami Barai Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 1
channel = 1

[State 1030, Yami Barai Visual Effect]
type = Explod
trigger1 = AnimElem = 3
ID = 1005
anim = 1003
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1030, Projectile]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = ifElse(var(40) = 2, 1035, 1005)
ID = 1035
name = "Yami Barai Projectile"
posType = P1
pos = 43, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<100 SHIKI: ONIYAKI>==========================
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100 + 10000 * (var(40) = 1)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2MoveType = H, 2, 0)

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1120, ifElse(var(10) = 1, 1110, 1100)) + 10000 * (var(40) = 1)

[State 1100, Voice]
type = PlaySnd
trigger1 = !Time && var(40) != 1
value = 1100, 0
channel = 0

[State 1100, Voice (Orochi)]
type = PlaySnd
trigger1 = !Time && var(40) = 1
value = 4, 12
channel = 0

[State 1100, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 1100, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1100, 1
channel = 3

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40, 0
channel = 4

[State 1100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
x = 14.3016759777

[State 1100, Oniyaki Fire]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1105
ID = 1105
name = "Oniyaki Fire"
posType = P1
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1
ignoreHitPause = 0

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oniyaki Dust"
posType = P1
ownPal = 1

[State 1100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0 && !var(10)
trigger2 = AnimElemTime(4) < 0 && var(10)
value = SCA
time = 1

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = ifElse(var(10) = 2, 2.234636872, ifElse(var(10) = 1, 1.675977654, 1.117318436))
y = ifElse(var(10) = 2, -11.25, ifElse(var(10) = 1, -8.75, -6.25))

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1 && vel x >= 0
x = -0.1745810056

[State 1100, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1
y = 0.5859375

[State 1100, Ground Hit 1 (Normal)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20)) && var(40) != 1
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 28, ifElse(var(10) = 1, 49, 119)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 28, ifElse(var(10) = 1, 49, 119)))), ifElse(var(10) = 2, 7, ifElse(var(10) = 1, 7, ifElse(var(20), 7, 17)))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.234636872, -10
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 42), var(36) := -56
palFX.time = 54
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Ground Hit 1 (Orochi)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20)) && var(40) = 1
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 21, ifElse(var(10) = 1, 42, 98)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 21, ifElse(var(10) = 1, 42, 98)))), ifElse(var(10), 7, ifElse(var(20), 7, 14))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.234636872, -10
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 42), var(36) := -56
palFX.time = 54
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Flame Particles]
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

[State 1100, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(4) < 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 54, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1100, Ground Hit 2 (Normal)]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20)) && var(40) != 1
trigger1 = AnimElem = 4 && !var(10) && !MoveContact && !MoveReversed
trigger2 = AnimElem = 4 && var(10)
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 42, 77) < 7, 7, fvar(11) * ifElse(var(10) = 2, 42, 77))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.234636872, -10
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -72
palFX.time = 56
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Ground Hit 2 (Orochi)]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20)) && var(40) = 1
trigger1 = AnimElem = 4 && !var(10) && !MoveContact && !MoveReversed
trigger2 = AnimElem = 4 && var(10)
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 35, ifElse(var(10) = 1, 70, 63)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 35, ifElse(var(10) = 1, 70, 63)))), ifElse(var(10) = 2, 7, ifElse(var(10) = 1, 10, 9))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.234636872, -10
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -72
palFX.time = 56
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 56, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1100, Air Hit (Normal)]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20)) && var(40) != 1
trigger1 = AnimElem = 5 && var(10) != 2 && !MoveContact && !MoveReversed
trigger2 = AnimElem = 5 && var(10) = 2
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 1, 70, 63) < 7, 7, fvar(11) * ifElse(var(10) = 1, 70, 63))), ifElse(var(10) = 1, 10, 9)
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.234636872, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -100
palFX.time = 56
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Air Hit (Orochi)]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20)) && var(40) = 1
trigger1 = AnimElem = 5 && var(10) != 2 && !MoveContact && !MoveReversed
trigger2 = AnimElem = 5 && var(10) = 2
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10) = 1, 56, 49)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10) = 1, 56, 49)))), ifElse(var(10) = 2, 9, ifElse(var(10) = 1, 8, 7))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.234636872, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -100
palFX.time = 56
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(5) >= 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 56, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1100, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101


;Landing
[StateDef 1101]
type = S
anim = 1101 + 10000 * (var(40) = 1)
physics = N
moveType = I
velSet = 0,0

[State 1101, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1101, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1101, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 1101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX 100 SHIKI: ONIYAKI>==========================
[StateDef 1130]
type = S
physics = N
moveType = A
anim = 1130
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1130, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1130, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1130, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 24

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -52
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1130, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100, 0
channel = 0

[State 1130, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 1130, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1100, 1
channel = 4

[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40, 0
channel = 5

[State 1130, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
x = 14.3016759777

[State 1130, Oniyaki Fire]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1105
ID = 1130
name = "Oniyaki Fire"
posType = P1
size.xScale = 0.55
size.yScale = 0.55
ownPal = 1
ignoreHitPause = 0

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oniyaki Dust"
posType = P1
ownPal = 1

[State 1130, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = 2.79329608939
y = -12.5

[State 1130, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1 && vel x >= 0
x = -0.1745810056

[State 1130, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1130, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1
y = 0.5859375

[State 1130, Ground Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.234636872, -10
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 42), var(36) := -56
palFX.time = 54
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Flame Particles]
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

[State 1130, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(4) < 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 54, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1130, Ground Hit 2]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.234636872, -10
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -72
palFX.time = 48
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 48, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1130, Air Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 5
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.234636872, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -100
palFX.time = 47
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(5) >= 0 && AnimElemTime(8) < 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 47, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1130, Air Hit 2]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.234636872, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -100
palFX.time = 51
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(8) >= 0 && AnimElemTime(11) < 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 51, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1130, Final Air Hit]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 11
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 10
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.234636872, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -100
palFX.time = 65
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(11) >= 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 65, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 1130, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101



;=====================<EX 100 SHIKI: ONIYAKI (EX MODE)>==========================
[StateDef 1140]
type = S
physics = N
moveType = A
anim = 1140
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1140, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1140, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1140, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 32

[State 1140, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -52
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1140, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1140, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100, 0
channel = 0

[State 1140, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 13
value = 1, 2
channel = 1

[State 1140, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110,0
channel = 5

[State 1140, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Oniyaki Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3350, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 8.93854748603

[State 3350, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(10) < 0 && vel x >= 0
x = -0.69832402234

[State 1140, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5 || AnimElem = 15
value = 40, 0
channel = 5

[State 1140, Dust Helper]
type = Helper
trigger1 = AnimElem = 5 || AnimElem = 15
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oniyaki Dust"
posType = P1
ownPal = 1

[State 1140, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 10
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 12
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.68937069644
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 42), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1140, Ground Hit 2]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 12
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.68937069644
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1140, Ground Hit 3]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 5 && !MoveContact && !MoveReversed
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 12
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.68937069644
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1140, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 52, 0
channel = 5

[State 1140, PosAdd]
type = PosAdd
trigger1 = AnimElem = 13 || AnimElem = 14
x = 14.3016759777

[State 1140, Ground Hit 4]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 13
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 12
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.68937069644
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 42), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1140, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 14
value = 1100, 1
channel = 4

[State 1140, Oniyaki Fire]
type = Helper
trigger1 = AnimElem = 14
helperType = Normal
stateNo = 1105
ID = 1140
name = "Oniyaki Fire"
posType = P1
size.xScale = 0.55
size.yScale = 0.55
ownPal = 1
ignoreHitPause = 0

[State 1140, Ground Hit 5]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 14
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 12
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.68937069644
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -72
palFX.time = 33
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1140, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(14) >= 0
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1140, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(14) >= 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 33, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1140, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 15
stateType = A
physics = N

[State 1140, VelSet]
type = VelSet
trigger1 = AnimElemTime(15) = 1
x = 2.234636872
y = -11.25

[State 1140, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(15) > 1 && vel x >= 0
x = -0.1745810056

[State 1140, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1140, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(15) > 1
y = 0.5859375

[State 1130, Final Air Hit]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 15
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 10
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.234636872, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -100
palFX.time = 65
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(15) >= 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 65, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1140, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(16) >= 0
moveType = I

[State 1140, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101



;========================<127 SHIKI: AOIHANA (1st)>=============================
[StateDef 1200]
type = S
physics = N
moveType = A
anim = 1200 + 10000 * (var(40) = 1)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1200, Reset QCF Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010006)
ID = 90010006

[State 1200, Reset QCB Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010104)
ID = 90010104

[State 1200, Reset QCFx2 Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030006)
ID = 90030006

[State 1200, Reset QCFx2 Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030104)
ID = 90030104

[State 1200, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 0 + 10 * (var(40) = 1)
channel = 0

[State 1200, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, 0
channel = 1

[State 1200, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 1
x = ifElse(var(10) = 2, 10.0558659218, ifElse(var(10) = 1, 8.37988826816, 6.70391061453))

[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1 && AnimElemTime(5) < 0
x = -ifElse(var(10) = 2, 0.39280726257, ifElse(var(10) = 1, 0.32733938547, 0.26187150838))

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
x = 0

[State 1200, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(40) = 1, 21, 28) < 7, 7, fvar(11) * ifElse(var(40) = 1, 21, 28))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1200 + 10000 * (var(40) = 1)
elem = 5
ignoreHitPause = 1

[State 1200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 8)
value = 1200 + 10000 * (var(40) = 1)
elem = 6
ignoreHitPause = 1

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1200, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1200, 127 Shiki: Aoibana 2nd]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(5) >= 0 && AnimElemTime(8) < 0
trigger1 = !AILevel
;command = "QCB"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010104)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010006))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
trigger2 = AILevel && (EnemyNear, Alive)
trigger2 = MoveHit
var(14) = 1210

[State 1200, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(7) >= 1 && AnimElemTime(8) < 0
value = var(14)

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<127 SHIKI: AOIHANA (2nd)>==========================
[StateDef 1210]
type = S
physics = N
moveType = A
velSet = 0, 0
anim = 1210 + 10000 * (var(40) = 1)
ctrl = 0
sprPriority = 1
hitCountPersist = 1

[State 1210, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1210, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1210, Reset QCF Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010006)
ID = 90010006

[State 1210, Reset QCB Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010104)
ID = 90010104

[State 1210, Reset QCFx2 Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030006)
ID = 90030006

[State 1210, Reset QCFx2 Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030104)
ID = 90030104

[State 1210, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 1 + 10 * (var(40) = 1)
channel = 0

[State 1210, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, 0
channel = 1

[State 1210, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 1210, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 1
x = ifElse(var(10) = 2, 10.0558659218, ifElse(var(10) = 1, 8.37988826816, 6.70391061453))

[State 1210, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1 && AnimElemTime(5) < 0
x = -ifElse(var(10) = 2, 0.39280726257, ifElse(var(10) = 1, 0.32733938547, 0.26187150838))

[State 1210, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
x = 0

[State 1210, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 4
ID = 1210
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(40) = 1, 21, 28) < 7, 7, fvar(11) * ifElse(var(40) = 1, 21, 28))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 18 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -4.46927374302, -6.5625
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1210, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(11) && NumTarget(1210) && var(40) = 1
var(15) = 0

[State 1210, 127 Shiki: Aoibana Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1210) && var(40) = 1
var(11) = 1
persistent = 0

[State 1210, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1210 + 10000 * (var(40) = 1)
elem = 5
ignoreHitPause = 1

[State 1210, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 8)
value = 1210 + 10000 * (var(40) = 1)
elem = 6
ignoreHitPause = 1

[State 1210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1210, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1210, 127 Shiki: Aoibana 3rd]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(5) >= 0 && AnimElemTime(8) < 0
trigger1 = !AILevel
;command = "QCB"
trigger1 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010104)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010006))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
trigger2 = AILevel && (EnemyNear, Alive)
trigger2 = MoveHit && var(40) != 1
trigger3 = AILevel && (EnemyNear, Alive) && AnimElemTime(7) >= 3 && AnimElemTime(8) < 0
trigger3 = MoveHit && var(40) = 1 && (P2BodyDist X > 25 || Power < 500)
var(14) = 1220

[State 1210, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(7) >= 1 && AnimElemTime(8) < 0
value = var(14)

[State 1210, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<127 SHIKI: AOIHANA (3rd)>==========================
[StateDef 1220]
type = A
physics = N
moveType = A
velSet = 0, 0
anim = 1220 + 10000 * (var(40) = 1)
ctrl = 0
sprPriority = 1
hitCountPersist = 1

[State 1220, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1220, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1220, Reset QCFx2 Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030006)
ID = 90030006

[State 1220, Reset QCFx2 Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030104)
ID = 90030104

[State 1220, Voice]
type = PlaySnd
trigger1 = !Time && var(40) != 1
value = 4, 3
channel = 0

[State 1220, Voice]
type = PlaySnd
trigger1 = !Time && var(40) = 1
value = 4, 12
channel = 0

[State 1220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 1220, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 40, 0

[State 1220, Dust Helper]
type = Helper
trigger1 = AnimElemTime(1) = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1220, VelSet]
type = VelSet
trigger1 = AnimElemTime(1) = 2
x = ifElse(var(10) = 2, 7.82122905028, ifElse(var(10) = 1, 6.98324022346, 6.14525139665))
y = -5

[State 1220, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) > 2
y = 0.5859375

[State 1220, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = ifElse(!var(13), 72, 36) * !var(20), 18 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -3.35195530726, -7.34375
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = ifElse(var(40) = 1, 0, 1)
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -66
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1220, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1221


;Landing
[StateDef 1221]
type = S
anim = 1221 + 10000 * (var(40) = 1)
physics = N
moveType = I
velSet = 0, 0

[State 1221, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1221, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1221, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 1221, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX 127 SHIKI: AOIHANA (1st)>=============================
[StateDef 1230]
type = S
physics = N
moveType = A
anim = 1230
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1230, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1230, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1230, EX Flash]
type = VarAdd
trigger1 = !Time
var(25) = 24

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -52
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1230, Reset QCF Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010006)
ID = 90010006

[State 1230, Reset QCB Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010104)
ID = 90010104

[State 1230, Reset QCFx2 Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030006)
ID = 90030006

[State 1230, Reset QCFx2 Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030104)
ID = 90030104

[State 1230, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 0
channel = 0

[State 1230, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, 0
channel = 1

[State 1230, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 1
x = 10.0558659218

[State 1230, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1 && AnimElemTime(5) < 0
x = -0.39280726257

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
x = 0

[State 1230, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -5.25
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= 10
value = 1230
elem = 5
ignoreHitPause = 1

[State 1230, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= 8
value = 1230
elem = 6
ignoreHitPause = 1

[State 1230, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1230, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1230, EX 127 Shiki: Aoibana 2nd]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(5) >= 0 && AnimElemTime(8) < 0
trigger1 = !AILevel
;command = "QCB"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010104)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010006))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
trigger2 = AILevel && (EnemyNear, Alive)
trigger2 = MoveHit
var(14) = 1240

[State 1230, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(7) >= 1 && AnimElemTime(8) < 0
value = var(14)

[State 1230, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX 127 SHIKI: AOIHANA (2nd)>==========================
[StateDef 1240]
type = S
physics = N
moveType = A
velSet = 0, 0
anim = 1240
ctrl = 0
sprPriority = 1
hitCountPersist = 1

[State 1240, EX Flash]
type = VarAdd
trigger1 = !Time
var(25) = 26

[State 1240, Reset QCF Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010006)
ID = 90010006

[State 1240, Reset QCB Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010104)
ID = 90010104

[State 1240, Reset QCFx2 Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030006)
ID = 90030006

[State 1240, Reset QCFx2 Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030104)
ID = 90030104

[State 1240, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 1
channel = 0

[State 1240, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, 0
channel = 1

[State 1240, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 1240, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 1
x = 10.0558659218

[State 1240, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1 && AnimElemTime(5) < 0
x = -0.39280726257

[State 1240, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
x = 0

[State 1240, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -4.46927374302, -6.5625
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1240, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= 10
value = 1240
elem = 5
ignoreHitPause = 1

[State 1240, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= 8
value = 1240
elem = 6
ignoreHitPause = 1

[State 1240, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1240, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1240, EX 127 Shiki: Aoibana 3rd]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(5) >= 0 && AnimElemTime(8) < 0
trigger1 = !AILevel
;command = "QCB"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010104)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010006))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
trigger2 = AILevel && (EnemyNear, Alive)
trigger2 = MoveHit
var(14) = 1250

[State 1240, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(7) >= 1 && AnimElemTime(8) < 0
value = var(14)

[State 1240, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX 127 SHIKI: AOIHANA (3rd)>==========================
[StateDef 1250]
type = S
physics = N
moveType = A
velSet = 0, 0
anim = 1250
ctrl = 0
sprPriority = 1
hitCountPersist = 1

[State 1250, EX Flash]
type = VarAdd
trigger1 = !Time
var(25) = 12

[State 1000, Reset QCFx2 Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030006)
ID = 90030006

[State 1000, Reset QCFx2 Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030104)
ID = 90030104

[State 1250, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 3
channel = 0

[State 1250, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, 0
channel = 1

[State 1250, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 1250, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 1
x = 10.0558659218

[State 1250, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1 && AnimElemTime(5) < 0
x = -0.39280726257

[State 1250, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
x = 0

[State 1250, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 4
ID = 1250
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -0.27932960893, -13.75
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -0.27932960893, -13.75
air.cornerPush.velOff = 0
yAccel = 0.78125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1250, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(11) && NumTarget(1250)
var(15) = 0

[State 1250, 127 Shiki: Aoibana Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1250)
var(11) = 1
persistent = 0

[State 1250, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= 10
value = 1250
elem = 5
ignoreHitPause = 1

[State 1250, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= 8
value = 1250
elem = 6
ignoreHitPause = 1

[State 1250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1250, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<212 SHIKI: KOTOTSUKI IN>==========================
;Startup
[StateDef 1300]
type = S
physics = N
moveType = A
anim = 1300 + 10000 * (var(40) = 1)
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 2

[State 1300, Voice]
type = PlaySnd
trigger1 = !Time
value = 1300, 0 + 10 * (var(40) = 1)
channel = 0

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 2
x = 6.703910615

[State 1300, Step Sound]
type = PlaySnd
trigger1 = (AnimElem = 4 || AnimElem = 7)
value = 100, ifElse((AnimElem = 4), 0, 1)

[State 1300, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, 0
channel = 1

[State 1300, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1300, ChangeState]
type = ChangeState
trigger1 = P2BodyDist x <= 36 && AnimElemTime(2) >= 2
value = 1310

[State 1300, End]
type = ChangeState
trigger1 = !var(10) && Time > 28
trigger2 = var(10) = 1 && Time > 40
trigger3 = var(10) = 2 && Time > 52
value = 1301


;End
[StateDef 1301]
type = S
physics = N
moveType = I
velSet = 0, 0
anim = 1301 + 10000 * (var(40) = 1)
ctrl = 0
sprPriority = 1

[State 1301, Stopping Sound]
type = PlaySnd
trigger1 = !Time
value = 101, 0

[State 1301, Skid Dust]
type = Explod
trigger1 = !Time
anim = 8104
sprPriority = 3
posType = P1
pos = 0, 0
vel = 0, 0
scale = 0.5, 0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 1301, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Grab attempt
[StateDef 1310]
type = S
physics = N
moveType = A
velSet = 0, 0
anim = 1310 + 10000 * (var(40) = 1)
ctrl = 0
sprPriority = 1

[State 1310, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 1310, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
ID = 1310
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(40) = 1, 21, 14) < 7, 7, fvar(11) * ifElse(var(40) = 1, 21, 14))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
yaccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
p2Facing = 1

[State 1310, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1310) > 1
ID = 1310
keepOne = 1
excludeID = 1310
ignoreHitPause = 1

[State 1310, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1310)
value = 1325
ID = 1310
ignoreHitPause = 1
persistent = 0

[State 1310, Success]
type = ChangeState
trigger1 = MoveHit && NumTarget(1310)
value = 1320
ignoreHitPause = 1

[State 1310, Blocked]
type = ChangeState
trigger1 = MoveGuarded
value = 1311

[State 1310, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1310, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Blocked
[StateDef 1311]
type = S
physics = N
moveType = A
velSet = 0, 0
anim = 1311 + 10000 * (var(40) = 1)
ctrl = 0
sprPriority = 1

[State 1311, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 1311, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 112 < 7, 7, fvar(11) * 112)), 16
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -6.70391061453, -5
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yaccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1311, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1311, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Throw
[Statedef 1320]
type = S
physics = N
moveType = A
anim = 1320 + 10000 * (var(40) = 1)
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 1320, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1320, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(6) < 0
edge = 64, 0

[State 1320, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) < 0
pos = 44, 0

[State 1320, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 80, -56

[State 1320, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(7) < 0
pos = 68, -8

[State 1320, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) = 0
pos = 26, 0

[State 4300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 10

[State 1320, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 7 && var(40) != 1
value = floor(ifElse(ifElse(var(10) = 2, 126, ifElse(var(10) = 1, 119, 112)) * fvar(11) < 7, -7, -ifElse(var(10) = 2, 126, ifElse(var(10) = 1, 119, 112)) * fvar(11)))

[State 1320, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 7 && var(40) = 1
value = floor(ifElse(ifElse(var(10) = 2, 112, ifElse(var(10) = 1, 98, 84)) * fvar(11) < 7, -7, -ifElse(var(10) = 2, 112, ifElse(var(10) = 1, 98, 84)) * fvar(11)))

[State 1320, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 7
value = 36

[State 1320, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 7 && !var(20)
value = 72

[State 1320, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 7
value = 1

[State 1320, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 7
var(13) = 1

[State 1320, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 7
var(15) = 1
ignoreHitPause = 1

[State 1320, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 7
value = 1326

[State 1320, Grab sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2, 800
channel = 3

[State 1320, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1320, 0 + 10 * (var(40) = 1)
channel = 0

[State 1320, Slam Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1320, 1
channel = 1

[State 1320, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 2, 6
channel = 2

[State 1320, Explosion Sound]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8
trigger3 = AnimElem = 9
value = 1320, 2
channel = 4

[State 1320, EnvShake]
type = EnvShake
trigger1 = AnimElem = 7
time = 14
ampl = -4
freq = 120

[State 1320, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = NumTarget && AnimElem = 7
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1320, Flame Particles Timer Set]
type = Null
trigger1 = NumTarget && AnimElem = 7
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 19, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1320, Kototsuki In: Explosion Effect 1]
type = Explod
trigger1 = AnimElem = 7
anim = 1321
sprPriority = 3
posType = P1
pos = 68, -8
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 1320, Kototsuki In: Explosion Effect 2]
type = Explod
trigger1 = AnimElem = 8
anim = 1321
sprPriority = 4
posType = P1
pos = 96, -25
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 1320, Kototsuki In: Explosion Effect 3]
type = Explod
trigger1 = AnimElem = 9
anim = 1321
sprPriority = 5
posType = P1
pos = 40, -40
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 1320, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(11) >= 0
moveType = I

[State 1320, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<212 SHIKI: KOTOTSUKI YO (TARGET)>==========
;Being Thrown
[StateDef 1325]
type = A
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 1325, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 1325, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1325

[State 1325, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 1325, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 1326]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 1326, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030

[State 1326, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 1326, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 1326, PalFX]
type = PalFX
trigger1 = !Time
time = 19
mul = 128, 128, 128
sinAdd = 96, 96, 96, 4

[State 1326, VelSet]
type = VelSet
trigger1 = Time = 1
x = -6.70391061453
y = -5

[State 1326, VelAdd]
type = VelAdd
Trigger1 = Time >= 1
y = 0.5126953125

[State 1326, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 1326, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 1326, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;=====================<EX 212 SHIKI: KOTOTSUKI IN>==========================
[StateDef 1330]
type = S
physics = N
moveType = A
anim = 1330
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1330, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1330, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1330, EX Flash]
type = VarAdd
trigger1 = !Time
var(25) = 22

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -52
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1330, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 1330, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
ID = 1330
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
p2Facing = 1

[State 1330, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1330) > 1
ID = 1330
keepOne = 1
excludeID = 1330
ignoreHitPause = 1

[State 1330, Success]
type = ChangeState
trigger1 = MoveHit && NumTarget(1330)
value = 1340

[State 1330, HitDef]
type = HitDef
trigger1 = !var(16) && !NumTarget(1330)
trigger1 = AnimElem = 5
ID = 1331
attr = S, SA
hitFlag = FD
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -8
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
p2Facing = 1

[State 1330, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1331) > 1
ID = 1331
keepOne = 1
excludeID = 1331
ignoreHitPause = 1

[State 1330, Success]
type = ChangeState
trigger1 = MoveHit && NumTarget(1331)
value = 1350

[State 1330, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1330, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Throw
[Statedef 1340]
type = S
physics = N
moveType = A
anim = 1340
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 1340, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1340, Width]
type = Width
trigger1 = AnimElemTime(3) < 0
edge = 64, 0

[State 1340, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1345

[State 1340, TargetBind 1]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = 80, -56

[State 1340, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
pos = 68, -8

[State 1340, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) = 0
pos = 26, 0

[State 1340, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 4
value = floor(ifElse(98 * fvar(11) < 7, -7, -98 * fvar(11)))

[State 1340, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 4
value = 36

[State 1340, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 4
value = 1

[State 1340, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 4
var(13) = 1

[State 1340, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 4
var(15) = 1
ignoreHitPause = 1

[State 1340, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 4
value = 1326

[State 1340, Grab sound]
type = PlaySnd
trigger1 = !Time
value = 2, 800
channel = 3

[State 1340, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1320, 0
channel = 0

[State 1340, Slam Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1320, 1
channel = 1

[State 1340, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2, 6
channel = 2

[State 1340, Explosion Sound]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
value = 1320, 2
channel = 4

[State 1340, EnvShake]
type = EnvShake
trigger1 = AnimElem = 4
time = 14
ampl = -4
freq = 120

[State 1340, Kototsuki In: Explosion Effect 1]
type = Explod
trigger1 = AnimElem = 4
anim = 1321
sprPriority = 3
posType = P1
pos = 68, -8
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 1340, Kototsuki In: Explosion Effect 2]
type = Explod
trigger1 = AnimElem = 5
anim = 1321
sprPriority = 4
posType = P1
pos = 96, -25
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 1340, Kototsuki In: Explosion Effect 3]
type = Explod
trigger1 = AnimElem = 6
anim = 1321
sprPriority = 5
posType = P1
pos = 40, -40
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 1340, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = NumTarget && AnimElem = 4
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1340, Flame Particles Timer Set]
type = Null
trigger1 = NumTarget && AnimElem = 4
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 19, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1340, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1340, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<212 SHIKI: KOTOTSUKI YO (TARGET)>==========
;Being Thrown
[StateDef 1345]
type = A
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 1345, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 1345, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1345

[State 1345, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 1345, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 1345, PalFX]
type = PalFX
trigger1 = Time = 24
time = 19
mul = 128, 128, 128
sinAdd = 96, 96, 96, 4


;OTG Throw
[Statedef 1350]
type = S
physics = N
moveType = A
anim = 1350
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 1350, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1350, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(3) < 1
edge = 30, 0

[State 1350, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1355

[State 1340, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(3) < 0
pos = 68, -8

[State 1350, TargetBind 2]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(3) = 0
pos = 26, 0

[State 1350, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 3
value = floor(ifElse(70 * fvar(11) < 7, -7, -70 * fvar(11)))

[State 1350, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 3
value = 36

[State 1350, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 3
value = 1

[State 1350, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 3
var(13) = 1

[State 1350, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 3
var(15) = 1
ignoreHitPause = 1

[State 1350, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(3) = 1
value = 1326

[State 1350, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1320, 0 + 10 * (var(40) = 1)
channel = 0

[State 1350, Slam Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1320, 1
channel = 1

[State 1350, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2, 6
channel = 2

[State 1350, Explosion Sound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
value = 1320, 2
channel = 4

[State 1350, EnvShake]
type = EnvShake
trigger1 = AnimElem = 3
time = 14
ampl = -4
freq = 120

[State 1350, Kototsuki In: Explosion Effect 1]
type = Explod
trigger1 = AnimElem = 3
anim = 1321
sprPriority = 3
posType = P1
pos = 68, -8
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 1350, Kototsuki In: Explosion Effect 2]
type = Explod
trigger1 = AnimElem = 4
anim = 1321
sprPriority = 4
posType = P1
pos = 96, -25
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 1350, Kototsuki In: Explosion Effect 3]
type = Explod
trigger1 = AnimElem = 5
anim = 1321
sprPriority = 5
posType = P1
pos = 40, -40
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 1350, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = NumTarget && AnimElem = 3
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1350, Flame Particles Timer Set]
type = Null
trigger1 = NumTarget && AnimElem = 3
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 19, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1350, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1350, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<212 SHIKI: KOTOTSUKI YO (TARGET)>==========
;Being Thrown
[StateDef 1355]
type = A
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 1355, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 1355, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1355

[State 1355, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 1355, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 1355, PalFX]
type = PalFX
trigger1 = Time = 20
time = 19
mul = 128, 128, 128
sinAdd = 96, 96, 96, 4



;========================<KUZUKAZE>=============================
[StateDef 1400]
type = S
physics = N
moveType = A
anim = 1400 + 10000 * (var(40) = 1)
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1400, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0 && var(40) = 1
value = SCA
time = 1

[State 1400, HitDef: Throw]
type = HitDef
trigger1 = AnimElem = 3
trigger1 = P2BodyDist x < 33
trigger1 = !var(38)
attr = S, ST
hitFlag = M-
priority = 7, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 1410

[State 1400, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 800, 0 + 10 * (var(40) = 1)
channel = 0

[State 1400, Whoosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 1
channel = 1

[State 1400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1400, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<KUZUKAZE (SUCCESS)>==========
[Statedef 1410]
type = S
physics = N
moveType = A
anim = ifElse(PrevStateNo = 1430, 1440, 1410) + 10000 * (var(40) = 1)
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 1410, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1410, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 1415

[State 1410, Voice]
type = PlaySnd
trigger1 = !Time && var(40) != 1
value = 4, 3
channel = 0

[State 1410, Voice]
type = PlaySnd
trigger1 = !Time && var(40) = 1
value = 4, 12
channel = 0

[State 1410, Slide Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 101, 0
channel = 1

[State 1410, Skid Dust]
type = Explod
trigger1 = AnimElem = 8
anim = 8104
sprPriority = 3
posType = P2
scale = 0.5, 0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 1410, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(7) >= 0
value = -1

[State 1410, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
edge = 0, 18

[State 1410, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
edge = 0, 28

[State 1410, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(9) < 1
edge = 0, 70

[State 1410, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 60, 0

[State 1410, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 40.5, 0

[State 1410, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 22.5, 0

[State 1410, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 14, 0

[State 1410, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 11, 0

[State 1410, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 5.5, 0

[State 1410, TargetBind 7]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = -17, 0

[State 1410, TargetBind 8]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = -27.5, 0

[State 1410, TargetBind 9]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(9) < 1
pos = -39.5, 0

[State 1410, VelSet]
type = TargetVelSet
trigger1 = NumTarget && AnimElemTime(9) = 1
x = -5

[State 1410, VelAdd]
type = TargetVelAdd
trigger1 = NumTarget
trigger1 = AnimElemTime(9) > 1 && (EnemyNear, vel x < 0)
x = 0.537109375

[State 1410, VelSet]
type = TargetVelSet
trigger1 = NumTarget && (EnemyNear, vel x >= 0)
x = 0

[State 1410, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(9) = 1
value = 1

[State 1410, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(9) = 1
var(13) = 1

[State 1410, Turn]
type = Turn
trigger1 = AnimElem = 15

[State 1410, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<KUZUKAZE (TARGET)>==========
;Being Thrown
[StateDef 1415]
type = S
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 1415, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1415

[State 1415, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
trigger2 = AnimElem = 7
ignoreHitPause = 1

[State 1415, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1

[State 1415, End]
type = SelfState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX KUZUKAZE>=============================
[StateDef 1430]
type = S
physics = N
moveType = A
anim = 1430
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1430, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1430, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1430, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 8

[State 1430, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 24, -60
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1430, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1430, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
value = SCA
time = 1

[State 1430, HitDef: Throw]
type = HitDef
trigger1 = AnimElem = 3
trigger1 = P2BodyDist x < 37
trigger1 = !var(38)
attr = S, ST
hitFlag = M-
priority = 7, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 1410

[State 1430, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 800, 0
channel = 0

[State 1430, Whoosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 1
channel = 1

[State 1430, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1430, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<311 SHIKI: TSUMA KUSHI>==========================
[StateDef 1500]
type = S
physics = N
moveType = A
anim = 1500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1500, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1500, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 0

[State 1500, Voice]
type = PlaySnd
trigger1 = !Time
value = 1500, 0
channel = 0

[State 1500, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40, 0
channel = 4

[State 1500, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
x = 11

[State 1500, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tsuma Kushi Dust"
posType = P1
ownPal = 1

[State 1500, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) >= 0
value = , AP
time = 1

[State 1500, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 1500, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = 5.58659217877
y = ifElse(var(10) = 2, -5, ifElse(var(10) = 1, -4.375, -3.75))

[State 1500, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1
y = 0.5859375

[State 1500, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1501


;Landing
[StateDef 1501]
type = S
physics = N
moveType = A
velSet = 0, 0
anim = 1501
ctrl = 0
sprPriority = 1

[State 1501, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1501, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1, 2
channel = 1

[State 1501, Fire Sound]
type = PlaySnd
trigger1 = !Time
value = 1100, 1
channel = 3

[State 1501, Tsuma Kushi Visual Effect]
type = Explod
trigger1 = !Time
ID = 1505
anim = 1505
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 1501, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 4

[State 1501, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1501, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 1
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)))), ifElse(var(10) = 2, 14, ifElse(var(10) = 1, 13, 12))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yaccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -45
palFX.time = 28
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1501, Flame Particles]
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

[State 1501, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 28, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1501, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 5, 10)
value = 1501
elem = 2
ignoreHitPause = 1

[State 1501, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 8)
value = 1501
elem = 3
ignoreHitPause = 1

[State 1501, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 6)
value = 1501
elem = 4
ignoreHitPause = 1

[State 1501, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
moveType = I

[State 1501, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1501, 127 Shiki: Aoibana]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(7) < 0
trigger1 = !AILevel
;command = "QCB"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010104)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010006))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
trigger2 = AILevel && (EnemyNear, Alive)
trigger2 = MoveHit
var(14) = 1200

[State 1501, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(5) >= 1 && AnimElemTime(7) < 0
value = var(14)

[State 1501, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX 311 SHIKI: TSUMA KUSHI>==========================
[StateDef 1530]
type = S
physics = N
moveType = A
anim = 1500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1530, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1530, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1530, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 28

[State 1530, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -14, -98
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1530, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1530, Voice]
type = PlaySnd
trigger1 = !Time
value = 1500, 0
channel = 0

[State 1530, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40, 0
channel = 4

[State 1530, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
x = 11

[State 1530, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tsuma Kushi Dust"
posType = P1
ownPal = 1

[State 1530, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0
value = , AP
time = 1

[State 1530, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 1530, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = 8.93854748603
y = -3.75

[State 1530, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1
y = 0.5859375

[State 1530, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1531


;Landing
[StateDef 1531]
type = S
physics = N
moveType = A
velSet = 0, 0
anim = 1531
ctrl = 0
sprPriority = 1

[State 1531, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1531, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1, 2
channel = 1

[State 1531, Fire Sound]
type = PlaySnd
trigger1 = !Time
value = 1100, 1
channel = 3

[State 1531, Tsuma Kushi Visual Effect]
type = Explod
trigger1 = !Time
ID = 1505
anim = 1505
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 1531, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 4

[State 1531, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1531, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 1
ID = 1530
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 12
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
ground.velocity = -3.35195530726, 5
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, 5
air.cornerPush.velOff = 0
yaccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -45
palFX.time = 54
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1531, Flame Particles]
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

[State 1531, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 54, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1531, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(12) && NumTarget(1530)
var(15) = 0

[State 1531, EX 311 Shiki: Tsuma Kushi Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1530)
var(12) = 1
persistent = 0

[State 1531, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1530) > 1
ID = 1530
keepOne = 1
excludeID = 1530
ignoreHitPause = 1

[State 1531, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1530)
trigger1 = !(Target(1530), Time)
value = ifElse(Target(1530), StateType = A, 5425, 5420)
ID = 1530
ignoreHitPause = 1

[State 1531, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) <= 0
trigger1 = HitPauseTime <= 10
value = 1531
elem = 2
ignoreHitPause = 1

[State 1531, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= 8
value = 1531
elem = 3
ignoreHitPause = 1

[State 1531, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= 6
value = 1531
elem = 4
ignoreHitPause = 1

[State 1531, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1531, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<104 SHIKI: NUEUCHI>==========================
[StateDef 1600]
type = S
physics = N
moveType = A
anim = 1600
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1600, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1600, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(((EnemyNear, GetHitVar(HitTime) >= 10) && !var(28)) || (EnemyNear, StateNo = 1917), 2, 1)

[State 1600, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1620, ifElse(var(10) = 1, 1610, 1600))

[State 1600, Voice]
type = PlaySnd
trigger1 = !Time
value = 1600, 0
channel = 0

[State 1600, Slash Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 2 && !var(10)
trigger2 = AnimElemTime(2) = 2 && var(10) = 1
trigger3 = AnimElemTime(2) = 4 && var(10) = 2
value = 1600, 1
channel = 1

[State 1600, Nueuchi Visual Effect]
type = Explod
trigger1 = AnimElem = 2 && !var(10)
trigger2 = AnimElemTime(2) = 2 && var(10) = 1
trigger3 = AnimElemTime(2) = 4 && var(10) = 2
ID = 1603
anim = 1603
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1600, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
ID = 1600
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)))), ifElse(var(10) = 2, 12, ifElse(var(10) = 1, 11, 10))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -ifElse(var(10) = 2, 3.35195530726, ifElse(var(10) = 1, 2.79329608939, 2.23463687151)), -ifElse(var(10) = 2, 10, ifElse(var(10) = 1, 8.125, 6.25))
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -ifElse(var(10) = 2, 3.35195530726, ifElse(var(10) = 1, 2.79329608939, 2.23463687151)), -ifElse(var(10) = 2, 10, ifElse(var(10) = 1, 8.125, 6.25))
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -92
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1600, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(27) && NumTarget(1600)
var(15) = 0

[State 1600, 104 Shiki: Nueuchi Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1600)
var(27) = 1
persistent = 0

[State 1600, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 2, 1620, ifElse(var(10) = 1, 1610, 1600))
elem = 4
ignoreHitPause = 1

[State 1600, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1600, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX 104 SHIKI: NUEUCHI>==========================
[StateDef 1630]
type = S
physics = N
moveType = A
anim = 1630
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1630, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1630, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1630, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 21

[State 1630, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = -32, -50
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1630, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1630, Voice]
type = PlaySnd
trigger1 = !Time
value = 1600, 0
channel = 0

[State 1630, Slash Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1600, 1
channel = 1

[State 1630, Nueuchi Visual Effect]
type = Explod
trigger1 = AnimElem = 2
ID = 1603
anim = 1633
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1630, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 1630, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 8, 8
guard.pauseTime = 8, 8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -4.46927374302, -6.25
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.25
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -92
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1630, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 5
ID = 1630
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -3.35195530726, -10
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -92
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1630, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(27) && NumTarget(1630)
var(15) = 0

[State 1630, 104 Shiki: Nueuchi Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1630)
var(27) = 1
persistent = 0

[State 1630, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1630, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<401 SHIKI: SHOGETSU>==========================
[StateDef 1700]
type = S
physics = N
moveType = A
anim = 1700
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1700, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1700, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((EnemyNear, GetHitVar(HitTime) >= 16) && P2Dist y > -130, 2, ifElse(((EnemyNear, GetHitVar(HitTime) >= 14) || var(27) = 1), 1, 0))

[State 1700, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1720, ifElse(var(10) = 1, 1710, 1700))

[State 1700, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1700, 0
channel = 0

[State 1700, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 1700, Slash Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(7) = 2
value = 1700, 1
channel = 1

[State 1700, Shogetsu Visual Effect]
type = Explod
trigger1 = AnimElemTime(7) = 2
ID = 1703
anim = 1703
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1700, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 28

[State 1700, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 11
x = 12

[State 1700, PosAdd]
type = PosAdd
trigger1 = AnimElem = 12
x = 15

[State 1700, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1700, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 8
ID = 1700
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10) = 1, 63, 56)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10) = 1, 63, 56)))), ifElse(var(10) = 2, 10, ifElse(var(10) = 1, 9, 8))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -ifElse(var(10) = 2, 3.35195530726, ifElse(var(10) = 1, 4.46927374302, 5.58659217877)), -ifElse(var(10) = 2, 6.25, ifElse(var(10) = 1, 5, 3.75))
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -ifElse(var(10) = 2, 3.35195530726, ifElse(var(10) = 1, 4.46927374302, 5.58659217877)), -ifElse(var(10) = 2, 6.25, ifElse(var(10) = 1, 5, 3.75))
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1700, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(28) && NumTarget(1700)
var(15) = 0

[State 1700, 104 Shiki: Nueuchi Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1700)
var(28) = 1
persistent = 0

[State 1700, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 2, 1720, ifElse(var(10) = 1, 1710, 1700))
elem = 9
ignoreHitPause = 1

[State 1700, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1700, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX 401 SHIKI: SHOGETSU>==========================
[StateDef 1730]
type = S
physics = N
moveType = A
anim = 1730
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1730, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1730, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1730, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 33

[State 1730, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -28, -72
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1730, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1730, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1700, 0
channel = 0

[State 1730, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 1730, Slash Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1700, 1
channel = 1

[State 1730, Shogetsu Visual Effect]
type = Explod
trigger1 = AnimElemTime(7) = 2
ID = 1703
anim = 1703
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1730, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 1
x = 6.70391061453

[State 1730, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1 && AnimElemTime(8) < 0
x = -0.26187150838

[State 1730, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 1730, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 11
x = 12

[State 1730, PosAdd]
type = PosAdd
trigger1 = AnimElem = 12
x = 15

[State 1730, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 8, 8
guard.pauseTime = 8, 8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1730, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 8
ID = 1700
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -3.35195530726, -6.25
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -6.25
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1730, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(28) && NumTarget(1700)
var(15) = 0

[State 1730, 104 Shiki: Nueuchi Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1700)
var(28) = 1
persistent = 0

[State 1730, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) <= 0
trigger1 = HitPauseTime <= 10
value = 1730
elem = 9
ignoreHitPause = 1

[State 1730, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1730, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<129 SHIKI: AKEGARASU>==========================
;Startup
[StateDef 1800]
type = S
physics = N
moveType = A
anim = 1800
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1800, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1800, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 0

[State 1800, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1802, ifElse(var(10) = 1, 1801, 1800))

[State 1800, Voice]
type = PlaySnd
trigger1 = !Time
value = 1800, 0
channel = 0

[State 1800, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110, 0
channel = 1

[State 1800, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1800, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 1
x = 8.93854748603

[State 1800, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) > 1
x = -0.17458100558

[State 1800, ChangeState]
type = ChangeState
trigger1 = P2BodyDist x <= 90 && AnimElemTime(4) > 1
value = 1810

[State 1800, End]
type = ChangeState
trigger1 = !AnimTime
value = 1805


;End
[StateDef 1805]
type = S
physics = N
moveType = I
anim = 1805
ctrl = 0
sprPriority = 1

[State 1805, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1807, ifElse(var(10) = 1, 1806, 1805))

[State 1805, Stopping Sound]
type = PlaySnd
trigger1 = !Time
value = 101, 0

[State 1805, Skid Dust]
type = Explod
trigger1 = !Time
anim = 8104
sprPriority = 3
posType = P1
pos = 0, 0
vel = 0, 0
scale = 0.5, 0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 1805, VelAdd]
type = VelAdd
trigger1 = Time > 0 && AnimElemTime(2) < 0
x = -0.17458100558

[State 1805, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 0

[State 1805, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Attack
[StateDef 1810]
type = S
physics = N
moveType = A
anim = 1810
ctrl = 0
sprPriority = 1

[State 1810, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1810, 0
channel = 0

[State 1810, Slash Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1810, 1
channel = 1

[State 1810, Akegarasu Visual Effect]
type = Explod
trigger1 = !Time
ID = 1813
anim = 1813
bindTime = -1
sprPriority = 3
posType = P1
pos = 0,0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1810, VelAdd]
type = VelAdd
trigger1 = Time > 0 && AnimElemTime(4) < 0
x = -0.17458100558

[State 1810, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 1810, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + var(13)) || var(20))
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 10
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 12
guard.slideTime = 12
air.hitTime = 120
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -62
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1810, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1810, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<129 SHIKI: AKEGARASU>==========================
;Startup
[StateDef 1830]
type = S
physics = N
moveType = A
anim = 1830
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1830, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1830, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1830, EX Flash]
type = VarAdd
trigger1 = !Time
var(25) = 21

[State 1830, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -52
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1830, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1830, Voice]
type = PlaySnd
trigger1 = !Time
value = 1800, 0
channel = 0

[State 1830, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110, 0
channel = 1

[State 1830, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1830, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 1
x = 8.93854748603

[State 1830, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) > 1
x = -0.17458100558

[State 1830, ChangeState]
type = ChangeState
trigger1 = P2BodyDist x <= 90 && AnimElemTime(4) > 1
value = 1840

[State 1830, End]
type = ChangeState
trigger1 = !AnimTime
value = 1805


;Attack
[StateDef 1840]
type = S
physics = N
moveType = A
anim = 1840
ctrl = 0
sprPriority = 1

[State 1840, EX Flash]
type = VarAdd
trigger1 = !Time
var(25) = 10

[State 1840, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1810, 0
channel = 0

[State 1840, Slash Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1810, 1
channel = 1

[State 1840, Akegarasu Visual Effect]
type = Explod
trigger1 = !Time
ID = 1813
anim = 1813
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1840, VelAdd]
type = VelAdd
trigger1 = Time > 0 && AnimElemTime(4) < 0
x = -0.17458100558

[State 1840, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 1840, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + var(13))
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 12
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 12
guard.slideTime = 12
air.hitTime = 120
ground.velocity = -6.70391061453, -5
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -62
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1840, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1840, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<203 SHIKI: TSUCHITSUBAKI>=============================
[StateDef 1900]
type = S
physics = N
moveType = A
anim = 1900
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1900, HitDef: Throw]
type = HitDef
trigger1 = AnimElem = 4
trigger1 = P2BodyDist x < 37
trigger1 = !var(38)
attr = S, ST
hitFlag = M-
priority = 7, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 1910

[State 1900, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 800, 0
channel = 0

[State 1900, Whoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 1
channel = 1

[State 1900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1900, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<TSUCHITSUBAKI (SUCCESS)>==========
;Throw
[Statedef 1910]
type = S
physics = N
moveType = A
anim = 1910
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 1910, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1910, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 1915

[State 1910, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1910, 0
channel = 0

[State 1910, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(8) < 0
edge = 52, 0

[State 1910, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
edge = 0, 78

[State 1910, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 35, -126

[State 1910, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(6) < 0
pos = 30, -126

[State 1910, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 38, -125

[State 1910, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 35, -115

[State 1910, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 1
pos = -78, 0

[State 1910, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(9) = 0
value = floor(ifElse(56 * fvar(11) < 7, -7, -56 * fvar(11)))

[State 1910, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(9) = 0
value = 36

[State 1910, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElemTime(9) = 0 && !var(20)
value = 72

[State 1910, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(9) = 0
value = 1

[State 1910, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(9) = 0
var(13) = 1

[State 1910, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(9) = 0
var(15) = 0
ignoreHitPause = 1

[State 1910, Slam Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(9) = 0
value = 1320, 1
channel = 1

[State 1910, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(9) = 0
time = 14
ampl = -4
freq = 120

[State 1910, Impact Dust]
type = Helper
trigger1 = NumTarget && AnimElemTime(9) = 0
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
facing = -1
pos = -78, 0
ownPal = 1

[State 1910, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(9) = 1
value = 1916

[State 1910, Turn]
type = Turn
trigger1 = AnimElem = 13

[State 1910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<TSUCHITSUBAKI (TARGET)>==========
;Being Thrown
[StateDef 1915]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 1

[State 1915, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1915

[State 1915, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
trigger2 = !AnimTime
ignoreHitPause = 1

[State 1915, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;Hitting the Ground
[StateDef 1916]
type = A
moveType = H
physics = N
velSet = 0, 0

[State 1916, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5100

[State 1916, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1916, HitFallDamage]
type = HitFallDamage
trigger1 = !Time

[State 1916, EnvShake]
type = EnvShake
trigger1 = !Time
time = 14
ampl = -4
freq = 120

[State 1916, End]
type = ChangeState
trigger1 = !AnimTime
trigger2 = Anim = 5100
trigger2 = Time > 5
value = 1917


;Bouncing Back
[StateDef 1917]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 1.11731843575, -10
sprPriority = 0

[State 1917, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5061

[State 1917, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 1917, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5126953125

[State 1917, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 1917, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<EX 203 SHIKI: TSUCHITSUBAKI>=============================
[StateDef 1930]
type = S
physics = N
moveType = A
anim = 1930
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1930, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1930, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1930, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 15

[State 1930, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 50, -72
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1930, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1930, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1

[State 1930, HitDef: Throw]
type = HitDef
trigger1 = AnimElem = 4
trigger1 = P2BodyDist x < 37
trigger1 = !var(38)
attr = S, ST
hitFlag = M-
priority = 7, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 1940

[State 1930, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 800, 0
channel = 0

[State 1930, Whoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 1
channel = 1

[State 1930, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1930, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<EX TSUCHITSUBAKI (SUCCESS)>==========
;Throw
[Statedef 1940]
type = S
physics = N
moveType = A
anim = 1910
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 1940, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1940, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 1915

[State 1940, EX Flash]
type = VarAdd
trigger1 = !Time
var(25) = 52

[State 1940, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1910, 0
channel = 0

[State 1940, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(8) < 0
edge = 52, 0

[State 1940, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
edge = 0, 78

[State 1940, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 35, -126

[State 1940, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(6) < 0
pos = 30, -126

[State 1940, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 38, -125

[State 1940, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 35, -115

[State 1940, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 1
pos = -78, 0

[State 1940, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(9) = 0
value = floor(ifElse(70 * fvar(11) < 7, -7, -70 * fvar(11)))

[State 1940, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(9) = 0
value = 36

[State 1940, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(9) = 0
value = 1

[State 1940, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(9) = 0
var(13) = 1

[State 1940, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(9) = 0
var(15) = 0
ignoreHitPause = 1

[State 1940, Slam Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(9) = 0
value = 1320, 1
channel = 1

[State 1940, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(9) = 0
time = 14
ampl = -4
freq = 120

[State 1940, Impact Dust]
type = Helper
trigger1 = NumTarget && AnimElemTime(9) = 0
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
facing = -1
pos = -78, 0
ownPal = 1

[State 1940, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(9) = 1
value = 1946

[State 1940, Turn]
type = Turn
trigger1 = AnimElem = 13

[State 1940, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Hitting the Ground
[StateDef 1946]
type = A
moveType = H
physics = N
velSet = 0, 0

[State 1946, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5100

[State 1946, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1946, HitFallDamage]
type = HitFallDamage
trigger1 = !Time

[State 1946, EnvShake]
type = EnvShake
trigger1 = !Time
time = 14
ampl = -4
freq = 120

[State 1946, End]
type = ChangeState
trigger1 = !AnimTime
trigger2 = Anim = 5100
trigger2 = Time > 5
value = 1947


;Bouncing Back
[StateDef 1947]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 1.11731843575, -11.25
sprPriority = 0

[State 1947, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5061

[State 1947, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 1947, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5126953125

[State 1947, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 1947, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<PUNCH ZERO COUNTER>=============================
[StateDef 2900]
type = S
physics = N
moveType = A
anim = 2900
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 0

[State 2900, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100, 0
channel = 0

[State 2900, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 2900, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1100, 1
channel = 3

[State 2900, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40, 0
channel = 4

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
x = 14.3016759777

[State 2900, Oniyaki Fire]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1105
ID = 1105
name = "Oniyaki Fire"
posType = P1
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1
ignoreHitPause = 0

[State 2900, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oniyaki Dust"
posType = P1
ownPal = 1

[State 2900, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = 1.67597765363
y = -8.75

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1 && vel x >= 0
x = -0.1745810056

[State 2900, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1
y = 0.5859375

[State 2900, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.234636872, -10
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 42), var(36) := -56
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, Flame Particles]
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

[State 2900, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(4) < 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 52, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 2900, Air Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.234636872, -10
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -72
palFX.time = 54
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 54, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 2900, Air Hit 2]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.234636872, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -100
palFX.time = 54
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(5) >= 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 54, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 2900, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 2901


;Landing
[StateDef 2901]
type = S
anim = 1101
physics = N
moveType = I
velSet = 0, 0

[State 2901, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 2901, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2901, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 4

[State 2901, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<PUNCH ZERO COUNTER (OROCHI)>=============================
[StateDef 2905]
type = S
physics = N
moveType = A
anim = 2905
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2905, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, ifElse(Random < 500, 11, 12)
channel = 0

[State 2905, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 2
channel = 1

[State 2905, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2905, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0, 0
givepower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -7.96875
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -7.96875
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2905, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= 10
value = 2905
elem = 3
ignoreHitPause = 1

[State 2905, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3 && !MoveReversed && !MoveContact
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0, 0
givepower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -7.96875
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -7.96875
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 32), var(36) := -128
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2905, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= 8
value = 2905
elem = 4
ignoreHitPause = 1

[State 2905, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(4) >= 0
moveType = I

[State 2905, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<PUNCH ZERO COUNTER (CLAW)>=============================
[StateDef 2907]
type = S
physics = N
moveType = A
anim = 2907
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2907, Voice]
type = PlaySnd
trigger1 = !Time
value = 1600, 0
channel = 0

[State 2907, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 2907, Nueuchi Visual Effect]
type = Explod
trigger1 = AnimElemTime(2) = 1
ID = 1603
anim = 1603
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 2907, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2907, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0, 0
givepower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -7.96875
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -7.96875
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -92
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2907, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= 10
value = 2907
elem = 4
ignoreHitPause = 1

[State 2907, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 2907, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<KICK ZERO COUNTER>=============================
[StateDef 2910]
type = S
physics = N
moveType = A
anim = 2910
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, ifElse(Random < 500, 1, 2) + 10 * (var(40) = 1)
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 5
channel = 1

[State 2910, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
x = 14.3016759777

[State 2910, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0, 0
givepower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.58659217877, -5.3125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.3125
air.cornerPush.velOff = 0
yAccel = 0.59814453125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 66), var(36) := -52
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(5) >= 0
moveType = I

[State 2910, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 52, 1
channel = 3

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1