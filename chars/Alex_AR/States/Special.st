; ________________________________________________
;| Alex by KarmaCharmeleon			|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;=====================<FLASH CHOP>==========================
[StateDef 1000]
type = S
physics = N
moveType = A
anim = 1000
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
trigger1 = !Time && AILevel && P2MoveType != H
var(10) = ifElse(P2BodyDist x > 72, 2, ifElse(P2BodyDist x > 56, 1, 0))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel && P2MoveType = H
var(10) = ifElse((EnemyNear, GetHitVar(HitTime) >= ifElse((EnemyNear, StateNo = [120, 155]), 17, 19)) || (EnemyNear, StateNo = 55300), 2, ifElse((EnemyNear, GetHitVar(HitTime) >= ifElse((EnemyNear, StateNo = [120, 155]), 12, 14)), 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1001, 1002))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 0
channel = 0

[State 1000, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 1

[State 1000, Flash Chop Energy]
type = Explod
trigger1 = AnimElem = 3
anim = ifElse(var(10) = 0, 1010, ifElse(var(10) = 1, 1011, 1012))
ID = 1010
bindTime = -1
sprPriority = 3
posType = P1
scale = const(size.xScale) * 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1000, Projectile Shield]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1003
ID = 1003
name = "Flash Chop Projectile Shield"
posType = P1
pos = 0, 0
ownPal = 1

[State 1000, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = ifElse(var(10) = 2, 7.82122905028, ifElse(var(10) = 1, 6.70391061453, 4.46927374302))

[State 1000, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 1000, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
ID = 1000
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
ground.type = Low
air.type = Low
ground.hitTime = ifElse(var(10) = 2, 24, ifElse(var(10) = 1, 21, 18))
ground.slideTime = 18
guard.hitTime = 15
guard.slideTime = 15
air.hitTime = 120
ground.velocity = -4.2503630888, 0
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
sparkXY = -10 + 0 * (var(35) := 115), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1000, TargetFacing]
type = TargetFacing
trigger1 = MoveHit && NumTarget(1000)
trigger1 = Target(1000), StateType != A
ID = 1000
value = 1
ignoreHitPause = 1

[State 1000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1000, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1000, EX Power Drop]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(6) > 0 && MoveHit && var(10) = 2
triggerAll = Power >= 500 && var(20) <= 60
trigger1 = !AILevel
;command = "HCB"
trigger1 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010504)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010406))
;x + y / x + z / y + z
trigger1 = (ifElse(NumExplod(90000200), 1, 0) + ifElse(NumExplod(90000210), 1, 0) + ifElse(NumExplod(90000220), 1, 0) >= 2) || (ifElse(NumExplod(90000205), 1, 0) + ifElse(NumExplod(90000215), 1, 0) + ifElse(NumExplod(90000225), 1, 0) >= 2)
trigger2 = AILevel && !var(14) && MoveHit && Random < (250 * (AILevel ** 2 / 64.0))
var(14) = 1480

[State 1000, Power Drop]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(6) > 0 && MoveHit && var(10) = 2
trigger1 = !AILevel
;command = "HCB"
trigger1 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010504)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010406))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
trigger2 = AILevel && !var(14) && MoveHit
var(14) = 1450

[State 1000, Sleeper Hold]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(6) > 0 && MoveHit && var(10) = 2
trigger1 = !AILevel
;command = "holdback" && command = "z"
trigger1 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
trigger1 = NumExplod(90000220) || command = "z"
;trigger2 = AILevel && !var(14) && MoveHit
var(14) = 300

[State 1000, Followup]
type = ChangeState
trigger1 = var(14) = 300 || var(14) = 1450 || var(14) = 1480
trigger1 = AnimElemTime(12) > 0
value = var(14)

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX FLASH CHOP>==========================
[StateDef 1030]
type = S
physics = N
moveType = A
anim = 1030
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

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
var(25) = 11

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -ceil(50 * const(size.xScale)), -58
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
trigger1 = AnimElem = 3
value = 1000, 0
channel = 0

[State 1030, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 1

[State 1030, Flash Chop Energy]
type = Explod
trigger1 = AnimElem = 3
anim = 1040
ID = 1010
bindTime = -1
sprPriority = 3
posType = P1
scale = const(size.xScale) * 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1030, Projectile Shield]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1003
ID = 1003
name = "Flash Chop Projectile Shield"
posType = P1
pos = 0, 0
ownPal = 1

[State 1030, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 8.93854748603

[State 1030, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 1030, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
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
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 15
guard.slideTime = 15
air.hitTime = 120
ground.velocity = -7.65065355984, 0
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
sparkXY = -10 + 0 * (var(35) := 115), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1030, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 7
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
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
ground.velocity = -3.35195530726, -7.34375
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 115), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1030, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1030, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<SLASH ELBOW>==========================
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2BodyDist x >= 100 || (EnemyNear, GetHitVar(HitTime) >= ifElse((EnemyNear, StateNo = [120, 155]), 14, 16)), 2, ifElse(P2BodyDist x >= 75 || (EnemyNear, GetHitVar(HitTime) >= ifElse((EnemyNear, StateNo = [120, 155]), 11, 14)), 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1100, ifElse(var(10) = 1, 1101, 1102))

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1100, 0
channel = 0

[State 1100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1, 2
channel = 1

[State 1100, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110, 0

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Slash Elbow Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1100, Slash Elbow Energy]
type = Explod
trigger1 = AnimElem = 9
anim = ifElse(var(10) = 0, 1110, ifElse(var(10) = 1, 1111, 1112))
ID = 1110
bindTime = -1
sprPriority = 3
posType = P1
scale = const(size.xScale) * 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 13.4078212291

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 1100, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20)) && !var(10)
trigger1 = AnimElem = 10
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 13
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 21
ground.slideTime = 21
guard.hitTime = 18
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -11.3689709948, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -6.25
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
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20)) && var(10) = 1
trigger1 = AnimElem = 10
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 14
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 21
ground.slideTime = 21
guard.hitTime = 18
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -3.35195530726, -7.5
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20)) && var(10) = 2
trigger1 = AnimElem = 10
ID = 1102
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 15
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 21
ground.slideTime = 21
guard.hitTime = 18
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -3.35195530726, -8.75
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -8.75
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(52) && NumTarget(1102)
var(15) = 0

[State 1100, Slash Elbow Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1102)
var(52) = 1
persistent = 0

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(13) >= 0
moveType = I

[State 1100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX SLASH ELBOW>==========================
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

[State 1130, VarSet]
type = VarSet
trigger1 = 1
var(10) = AnimElemNo(0)

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
pos = -ceil(25 * const(size.xScale)), -45
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
trigger1 = AnimElem = 16
value = 1100, 0
channel = 0

[State 1130, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 19
value = 1, 2
channel = 1

[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 41, 0
channel = 5

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Slash Elbow Dust"
posType = P1
ownPal = 1

[State 1130, Slash Elbow Energy]
type = Explod
trigger1 = AnimElem = 19
anim = 1140
ID = 1110
bindTime = -1
sprPriority = 3
posType = P1
scale = const(size.xScale) * 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(16) < 0
x = 13.4078212291

[State 1130, HitOverride]
type = HitOverride
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(20) < 0
attr = SCA, AA, AP
stateNo = 1131

[State 1130, ChangeAnim]
type = ChangeAnim
trigger1 = AnimElemTime(10) > 0 && AnimElemTime(16) < 0 && P2BodyDist x < 24
value = 1130
elem = 16

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElem = 16
x = 0

[State 1130, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 20
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -11.0509440309, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -5
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
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 21
ID = 1130
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 10
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 21
ground.slideTime = 21
guard.hitTime = 18
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -3.35195530726, -9.375
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -9.375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(52) && NumTarget(1130)
var(15) = 0

[State 1130, EX Slash Elbow Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1130)
var(52) = 1
persistent = 0

[State 1130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(23) >= 0
moveType = I

[State 1130, EX Flash]
type = VarSet
trigger1 = AnimElemTime(23) >= 0
var(25) = 0

[State 1130, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Broken Armor
[StateDef 1131]
type = S
physics = N
moveType = A
anim = 1130
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1131, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 24

[State 1131, Pause]
type = Pause
trigger1 = !Time
time = 8

[State 1131, Armor Flash]
type = PalFX
trigger1 = !Time
time = 1
color = 128
mul = 256, 256, 256
add = -128, 56, 56
ignoreHitPause = 1

[State 1131, Armor Sound]
type = PlaySnd
trigger1 = !Time
value = 3, 10
channel = 2
ignoreHitPause = 1

[State 1131, Armor Spark]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8025
ID = 8000
name = "Spark"
postype = P1
pos = ceil(45 * const(size.xScale)), -58
facing = 1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1131, LifeAdd]
type = LifeAdd
trigger1 = !Time
value = -(GetHitVar(Damage))
kill = 0

[State 1131, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1130
elem = var(10)

[State 1131, Voice]
type = PlaySnd
trigger1 = AnimElem = 16
value = 1100, 0
channel = 0

[State 1131, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 19
value = 1, 2
channel = 1

[State 1131, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 41, 0
channel = 5

[State 1131, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Slash Elbow Dust"
posType = P1
ownPal = 1

[State 1131, Slash Elbow Energy]
type = Explod
trigger1 = AnimElem = 19
anim = 1140
ID = 1110
bindTime = -1
sprPriority = 3
posType = P1
scale = const(size.xScale) * 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1131, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(16) < 0
x = 13.4078212291

[State 1131, ChangeAnim]
type = ChangeAnim
trigger1 = AnimElemTime(10) > 0 && AnimElemTime(16) < 0 && P2BodyDist x < 24
value = 1130
elem = 16

[State 1131, VelSet]
type = VelSet
trigger1 = AnimElem = 16
x = 0

[State 1131, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 20
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -11.0509440309, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -5
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
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1131, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 21
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 10
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 21
ground.slideTime = 21
guard.hitTime = 18
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -3.35195530726, -9.375
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -9.375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1131, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(52) && NumTarget(1130)
var(15) = 0

[State 1131, EX Slash Elbow Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1130)
var(52) = 1
persistent = 0

[State 1131, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(23) >= 0
moveType = I

[State 1131, EX Flash]
type = VarSet
trigger1 = AnimElemTime(23) >= 0
var(25) = 0

[State 1131, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<AIR STAMPEDE>==========================
[StateDef 1200]
type = S
physics = N
moveType = A
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 0

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1200, ifElse(var(10) = 1, 1201, 1202))

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1200, 0
channel = 0

[State 1200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 1
value = 40, 0
channel = 4

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElemTime(4) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Air Stampede Dust"
posType = P1
ownPal = 1

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 1
x = ifElse(var(10) = 2, 6.70391061453, ifElse(var(10) = 1, 4.46927374302, 2.23463687151))
y = -ifElse(var(10) = 2, 10, ifElse(var(10) = 1, 9.375, 8.75))

[State 1200, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) > 1
y = 0.78125

[State 1200, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1205


;Landing
[StateDef 1205]
type = S
physics = N
moveType = A
anim = 1205
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1205, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1205, Impact Dust]
type = Explod
trigger1 = !Time
anim = 8105
sprPriority = -3
posType = P1
pos = 0, 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1205, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 3

[State 1205, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 5
channel = 1

[State 1205, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 1
ID = 1205
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 122, ifElse(var(10) = 1, 98, 84)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 122, ifElse(var(10) = 1, 98, 84)))), ifElse(var(10) = 2, 16, ifElse(var(10) = 1, 14, 12))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 0, 3.125
air.cornerPush.velOff = 0
yAccel = 0.78125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 12), var(36) := -2
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1205, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1205) > 1
ID = 1205
keepOne = 1
excludeID = 1205
ignoreHitPause = 1

[State 1205, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1205)
trigger1 = !(Target(1205), Time)
value = 5425
ID = 1205
ignoreHitPause = 1

[State 1205, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
moveType = I

[State 1205, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX AIR STAMPEDE>==========================
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
type = VarSet
trigger1 = !Time
var(25) = 31

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -ceil(18 * const(size.xScale)), -75
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1230, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1200, 0
channel = 0

[State 1230, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1230, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 1
value = 40, 0
channel = 4

[State 1230, Dust Helper]
type = Helper
trigger1 = AnimElemTime(4) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Air Stampede Dust"
posType = P1
ownPal = 1

[State 1230, NotHitBy]
type = NotHitBy
trigger1 = 1
value = , AP
time = 1

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 1
x = 4.46927374302
y = -9.375

[State 1230, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) > 1
y = 0.78125

[State 1230, VelSet]
type = VelSet
triggerAll = AnimElemTime(4) > 1
;command != "holdfwd"
trigger1 = !((ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004)))
;command != "holdback"
trigger1 = !((ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006)))
x = 4.46927374302

[State 1230, VelSet]
type = VelSet
triggerAll = AnimElemTime(4) > 1
trigger1 = !AILevel
;command = "holdfwd"
trigger1 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
trigger2 = AILevel && P2BodyDist x >= 38
x = 6.70391061453

[State 1230, VelSet]
type = VelSet
triggerAll = AnimElemTime(4) > 1
trigger1 = !AILevel
;command = "holdback"
trigger1 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
trigger2 = AILevel && P2BodyDist x < 38
x = 2.23463687151

[State 1230, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1235


;Landing
[StateDef 1235]
type = S
physics = N
moveType = A
anim = 1235
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1235, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1235, Impact Dust]
type = Explod
trigger1 = !Time
anim = 8105
sprPriority = -3
posType = P1
pos = 0, 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1235, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 3

[State 1235, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 5
channel = 1

[State 1235, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 1
ID = 1205
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 126 < 7, 7, fvar(11) * 126)), 18
getPower = 0, 0
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
ground.velocity = 0, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 0, 3.125
air.cornerPush.velOff = 0
yAccel = 0.78125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 12), var(36) := -2
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1235, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1205) > 1
ID = 1205
keepOne = 1
excludeID = 1205
ignoreHitPause = 1

[State 1235, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1205)
trigger1 = !(Target(1205), Time)
value = 5425
ID = 1205
ignoreHitPause = 1

[State 1235, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
moveType = I

[State 1235, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<AIR KNEE SMASH>==========================
[StateDef 1300]
type = S
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
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
var(10) = 0

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1300, ifElse(var(10) = 1, 1301, 1302))

[State 1300, Voice]
type = PlaySnd
trigger1 = !Time
value = 1300, 0
channel = 0

[State 1300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 5
channel = 1

[State 1300, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1300, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40, 0
channel = 4

[State 1300, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Air Knee Smash Dust"
posType = P1
ownPal = 1

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = ifElse(var(10) = 2, 7.82122905028, ifElse(var(10) = 1, 6.70391061453, 5.58659217877))
y = -12.5

[State 1300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && vel x >= 0
x = -0.17458100558

[State 1300, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = 0.78125

[State 1300, HitDef: Throw]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
trigger1 = !var(37)
attr = A, ST
hitFlag = AF
priority = 7, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 +0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -68
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 1310

[State 1300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1300, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1305


;Landing
[StateDef 1305]
type = S
anim = 1305
physics = N
moveType = I
velSet = 0, 0

[State 1305, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1305, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1305, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 1305, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Throw
[StateDef 1310]
type = A
physics = N
moveType = A
anim = 1310
ctrl = 0
sprPriority = 1

[State 1310, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 51
ctrl = 1

[State 1310, EX Flash]
type = VarSet
trigger1 = var(10) = 3
var(25) = 2

[State 1310, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 5.58659217877

[State 1310, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = 0.78125

[State 1310, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1315

[State 1310, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(6) < 0
edge = ceil(56 * const(size.xScale)), 0

[State 1310, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
edge = ceil(48 * const(size.xScale)), 0

[State 1310, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0
edge = ceil(36 * const(size.xScale)), 0

[State 1310, TargetBind 1]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = ceil(64 * const(size.xScale)), -72

[State 1310, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(6) < 0
pos = ceil(58 * const(size.xScale)), -58

[State 1310, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = ceil(56 * const(size.xScale)), -32

[State 1310, TargetBind 4]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(7) >= 0
pos = ceil(38 * const(size.xScale)), -24

[State 1310, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1311


;Crashing
[StateDef 1311]
type = S
anim = 1311
physics = N
moveType = I
velSet = 0, 0
sprPriority = 1

[State 1311, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1311, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1311, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 1311, EX Flash]
type = VarSet
trigger1 = !Time && var(10) = 3
var(25) = 18

[State 1311, Voice]
type = PlaySnd
trigger1 = !Time
value = 1311, 0
channel = 0

[State 1311, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 1
x = 16 * const(size.xScale)

[State 1311, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElem = 1
pos = ceil(16 * const(size.xScale)), 0

[State 1311, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 1
value = floor(ifElse(ifElse(NumTarget(2900), 42, ifElse(var(10) = 3, 105, ifElse(var(10) = 2, 126, ifElse(var(10) = 1, 119, 112)))) * fvar(11) * fvar(12) < 7, -7, -ifElse(NumTarget(2900), 42, ifElse(var(10) = 3, 105, ifElse(var(10) = 2, 126, ifElse(var(10) = 1, 119, 112)))) * fvar(11) * fvar(12)))
kill = ifElse(NumTarget(2900), 0, 1)

[State 1311, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 1
value = 36

[State 1311, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 1 && !var(20) && var(10) != 3 && !NumTarget(2900)
value = 72

[State 1311, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 1
value = 1

[State 1311, HitCount]
type = VarAdd
trigger1 = NumTarget && AnimElem = 1
var(13) = 1

[State 1311, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 1
var(15) = 1
ignoreHitPause = 1

[State 1311, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 1
var(16) = 1
ignoreHitPause = 1

[State 1311, TargetState]
type = TargetState
trigger1 = NumTarget && AnimElem = 1
value = ifElse(NumTarget(2900), 1318, 1316)

[State 1311, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 1
value = 2, 5
channel = 2

[State 1311, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 1
value = 2, 810
channel = 4

[State 1311, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 1
value = 810, 0
channel = 5

[State 1311, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 1
time = 14
ampl = -4
freq = 120

[State 1311, Impact Dust 1]
type = Helper
trigger1 = NumTarget && AnimElem = 1
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = ceil(16 * const(size.xScale)), 0
facing = -1
ownPal = 1

[State 1311, Impact Dust 2]
type = Explod
trigger1 = NumTarget && AnimElem = 1
anim = 8105
sprPriority = -3
posType = P1
pos = ceil(16 * const(size.xScale)), 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1311, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<AIR KNEE SMASH (TARGET)>==========
;In Air
[StateDef 1315]
type = A
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 1315, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1315

[State 1315, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 1315, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1


;Finish
[Statedef 1316]
type = L
moveType = H
physics = N
velSet = 0,0

[State 1316, ChangeAnim]
type = ChangeAnim
trigger1 = Time < 4
value = 5080

[State 1316, ChangeState]
type = SelfState
trigger1 = Time > 24
value = ifElse(Alive, 5120, 5150)


;After Throw
[StateDef 1318]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 1318, ChangeAnim2]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 1318, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 1318, VelSet]
type = VelSet
trigger1 = Time = 0
x = -5.58659217877
y = -5.78125

[State 1318, VelAdd]
type = VelAdd
Trigger1 = Time > 0
y = 0.5126953125

[State 1318, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 1318, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 1318, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;=====================<EX AIR KNEE SMASH>==========================
[StateDef 1330]
type = S
physics = N
moveType = A
anim = 1330
ctrl = 0
velSet = 0,0
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
type = VarSet
trigger1 = !Time
var(25) = 18

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(70 * const(size.xScale)), -20
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1330, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1330, Voice]
type = PlaySnd
trigger1 = !Time
value = 1300, 0
channel = 0

[State 1330, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 5
channel = 1

[State 1330, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1330, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40, 0
channel = 4

[State 1330, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Air Knee Smash Dust"
posType = P1
ownPal = 1

[State 1330, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 6.70391061453
y = -12.5

[State 1330, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && vel x >= 0
x = -0.17458100558

[State 1330, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1330, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = 0.78125

[State 1330, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
value = SCA
time = 1

[State 1330, Air Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
ID = 1330
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
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
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 1330, ChangeState]
type = ChangeState
trigger1 = MoveHit
trigger1 = NumTarget(1330) && Target, Alive
value = 1310

[State 1330, HitDef: Throw]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
trigger1 = !var(37)
attr = A, ST
hitFlag = AF
priority = 7, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 +0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -68
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 1310

[State 1330, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1330, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1305



;========================<POWER BOMB>=============================
[StateDef 1400]
type = S
physics = N
moveType = A
anim = 1400
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1400, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1400, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2BodyDist x >= 56 || (EnemyNear, GetHitVar(HitTime) = 5), 0, ifElse(P2BodyDist x >= 52 || (EnemyNear, GetHitVar(HitTime) = 4), 1, 2))

[State 1400, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1400, ifElse(var(10) = 1, 1401, 1402))

[State 1400, HitDef]
type = HitDef
triggerAll = AnimElem = 2 && !var(38)
trigger1 = P2BodyDist x < 60 && !var(10)
trigger2 = P2BodyDist x < 57 && var(10) = 1
trigger3 = P2BodyDist x < 54 && var(10) = 2
attr = S, ST
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
p1StateNo = ifElse((Facing != EnemyNear, Facing), 1410, 1420)

[State 1400, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 800, 0
channel = 0

[State 1400, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 1400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1400, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<POWER BOMB (SUCCESS)>==========
;Throw
[Statedef 1410]
type = S
physics = N
moveType = A
anim = 1410
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 1410, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1410, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1410, EX Flash]
type = VarSet
trigger1 = var(10) = 3
var(25) = 2

[State 1410, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1415

[State 1410, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(4) < 0
edge = ceil(88 * const(size.xScale)), 0

[State 1410, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
edge = ceil(48 * const(size.xScale)), 0

[State 1410, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(9) >= 0
edge = ceil(56 * const(size.xScale)), 0

[State 1410, TargetBind 1]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = ceil(100 * const(size.xScale)), 0

[State 1410, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil(89 * const(size.xScale)), 0

[State 1410, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(92 * const(size.xScale)), 0

[State 1410, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil(19 * const(size.xScale)), 0

[State 1410, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = ceil(3 * const(size.xScale)), 0

[State 1410, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = ceil(48 * const(size.xScale)), -64

[State 1410, TargetBind 7]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = ceil(32 * const(size.xScale)), -144

[State 1410, TargetBind 8]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = ceil(24 * const(size.xScale)), -150

[State 1410, TargetBind 9]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = ceil(3 * const(size.xScale)), -160

[State 1410, TargetBind 10]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(10) >= 0
pos = ceil(11 * const(size.xScale)), -143

[State 1410, Voice]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1410, 0
channel = 0

[State 1410, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 9
stateType = A
physics = N

[State 1410, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = 41, 0
channel = 4

[State 1410, Dust Helper]
type = Helper
trigger1 = AnimElemTime(9) = 0
helperType = Normal
stateNo = 8100
ID = 8100
name = "Power Bomb Dust"
posType = P1
ownPal = 1

[State 1410, VelSet]
type = VelSet
trigger1 = AnimElemTime(9) = 0
x = 4.46927374302
y = -10

[State 1410, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(9) > 0
y = 0.78125

[State 1410, End]
type = ChangeState
trigger1 = AnimElemTime(9) > 0
trigger1 = pos y > -vel y
value = 1411


;Crashing
[StateDef 1411]
type = S
anim = 1411
physics = N
moveType = I
velSet = 0, 0
sprPriority = 1

[State 1411, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1411, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1411, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 1411, EX Flash]
type = VarSet
trigger1 = !Time && var(10) = 3
var(25) = 28

[State 1411, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(2) < 0
edge = ceil(64 * const(size.xScale)), 0

[State 1411, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4) < 1
edge = ceil(78 * const(size.xScale)), 0

[State 1411, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = ceil(75 * const(size.xScale)), -133

[State 1411, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil(84 * const(size.xScale)), -50

[State 1411, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(84 * const(size.xScale)), 0

[State 1411, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 3
value = floor(ifElse(ifElse(var(10) = 3, 154, ifElse(var(10) = 2, 140, ifElse(var(10) = 1, 133, 126))) * fvar(11) * fvar(12) < 7, -7, -ifElse(var(10) = 3, 154, ifElse(var(10) = 2, 140, ifElse(var(10) = 1, 133, 126))) * fvar(11) * fvar(12)))

[State 1411, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 3
value = 36

[State 1411, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 3 && !var(20) && var(10) != 3
value = 72

[State 1411, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 3
value = 1

[State 1411, HitCount]
type = VarAdd
trigger1 = NumTarget && AnimElem = 3
var(13) = 1

[State 1411, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 3
var(15) = 1
ignoreHitPause = 1

[State 1411, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 3
var(16) = 1
ignoreHitPause = 1

[State 1411, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 3
value = 2, 810
channel = 4

[State 1411, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 3
value = 810, 0
channel = 5

[State 1411, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 3
time = 14
ampl = -4
freq = 120

[State 1411, Impact Dust 1]
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

[State 1411, Impact Dust 2]
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

[State 1411, Throw]
type = TargetState
trigger1 = AnimElemTime(6) = 1
value = 1416

[State 1413, End]
type = ChangeState
trigger1 = AnimElemTime(6) = 1
value = 1412

[State 1411, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Jumping
[StateDef 1412]
type = S
anim = 1412
physics = N
moveType = I
velSet = 0, 0
sprPriority = 1

[State 0, VarSet]
type = VarSet
trigger1 = !Time && (PrevStateNo = 3011 || PrevStateNo = 3311)
var(10) = 3

[State 1412, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1412, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 1
stateType = A
physics = N

[State 1412, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40, 0
channel = 6

[State 1412, Dust Helper]
type = Helper
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1412, VelAdd]
type = VelSet
trigger1 = AnimElemTime(1) = 1
x = -ifElse(var(10) = 3, 3.35195530726, ifElse(var(10) = 2, 5.02793296089, ifElse(var(10) = 1, 4.46927374302, 3.91061452514)))
y = -7.5

[State 1412, VelAdd]
type = VelAdd
trigger1= AnimElemTime(1) > 1
y = 0.78125

[State 1412, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1413


;Landing
[StateDef 1413]
type = S
anim = 1413
physics = N
moveType = I
velSet = 0, 0

[State 1413, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1413, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1413, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 1413, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<POWER BOMB (TARGET)>==========
;Being Thrown
[StateDef 1415]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 1415, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1415, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1415

[State 1415, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 1415, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 1416]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 1416, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1416

[State 1416, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 1416, VelSet]
type = VelSet
trigger1 = Time = 0
x = -5.58659217877
y = -5.78125

[State 1416, VelAdd]
type = VelAdd
Trigger1 = Time > 0
y = 0.5126953125

[State 1416, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 1416, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100


;===========<POWER DROP (SUCCESS)>==========
;Throw
[Statedef 1420]
type = S
physics = N
moveType = A
anim = 1420
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 1420, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1420, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1420, EX Flash]
type = VarSet
trigger1 = !Time && var(10) = 3
var(25) = 45

[State 1420, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1425

[State 1420, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(4) < 0
edge = ceil(108 * const(size.xScale)), 0

[State 1420, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
edge = ceil(72 * const(size.xScale)), 0

[State 1420, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
edge = ceil(56 * const(size.xScale)), ceil(18 * const(size.xScale))

[State 1420, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
edge = ceil(38 * const(size.xScale)), ceil(18 * const(size.xScale))

[State 1420, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
edge = ceil(38 * const(size.xScale)), ceil(24 * const(size.xScale))

[State 1420, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
edge = ceil(38 * const(size.xScale)), ceil(32 * const(size.xScale))

[State 1420, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
edge = ceil(38 * const(size.xScale)), ceil(38 * const(size.xScale))

[State 1420, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
edge = 0, ceil(48 * const(size.xScale))

[State 1420, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
edge = 0, ceil(96 * const(size.xScale))

[State 1420, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(15) < 0
edge = 0, ceil(64 * const(size.xScale))

[State 1420, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 3
x = -ceil(32 * const(size.xScale))

[State 1420, PosAdd]
type = PosAdd
trigger1 = NumTarget && (AnimElem = 4 || AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20)
x = -ceil(16 * const(size.xScale))

[State 1420, PosAdd]
type = PosAdd
trigger1 = NumTarget && (AnimElem = 7 || AnimElem = 8 || AnimElem = 11 || AnimElem = 16)
x = -ceil(8 * const(size.xScale))

[State 1420, PosAdd]
type = PosAdd
trigger1 = NumTarget && (AnimElem = 9 || AnimElem = 14)
x = -ceil(4 * const(size.xScale))

[State 1420, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 15
x = -ceil(12 * const(size.xScale))

[State 1420, TargetBind 1]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = ceil(110 * const(size.xScale)), 0

[State 1420, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil(120 * const(size.xScale)), 0

[State 1420, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(136 * const(size.xScale)), 0

[State 1420, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil(78 * const(size.xScale)), -64

[State 1420, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = ceil(57 * const(size.xScale)), -53

[State 1420, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = ceil(50 * const(size.xScale)), -60

[State 1420, TargetBind 7]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = ceil(48 * const(size.xScale)), -64

[State 1420, TargetBind 8]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = ceil(44 * const(size.xScale)), -72

[State 1420, TargetBind 9]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = ceil(27 * const(size.xScale)), -96

[State 1420, TargetBind 10]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = -ceil(56 * const(size.xScale)), -98

[State 1420, TargetBind 11]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
pos = -ceil(112 * const(size.xScale)), 0

[State 1420, Voice]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1420, 0
channel = 0

[State 1420, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 11
value = floor(ifElse(ifElse(var(10) = 3, 168, ifElse(var(10) = 2, 154, ifElse(var(10) = 1, 147, 140))) * fvar(11) * fvar(12) < 7, -7, -ifElse(var(10) = 3, 168, ifElse(var(10) = 2, 154, ifElse(var(10) = 1, 147, 140))) * fvar(11) * fvar(12)))

[State 1420, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 11
value = 36

[State 1420, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 11 && !var(20) && var(10) != 3
value = 72

[State 1420, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 11
value = 1

[State 1420, HitCount]
type = VarAdd
trigger1 = NumTarget && AnimElem = 11
var(13) = 1

[State 1420, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 11
var(15) = 1
ignoreHitPause = 1

[State 1420, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 11
var(16) = 1
ignoreHitPause = 1

[State 1420, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 11
value = 2, 810
channel = 4

[State 1420, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 11
value = 810, 0
channel = 5

[State 1420, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 11
time = 14
ampl = -4
freq = 120

[State 1420, Impact Dust 1]
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

[State 1420, Impact Dust 2]
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

[State 1420, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 12
value = 1426

[State 1420, Turn]
type = Turn
trigger1 = AnimElem = 20

[State 1420, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<POWER DROP (TARGET)>==========
;Being Thrown
[StateDef 1425]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 1425, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1425, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1425

[State 1425, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing != EnemyNear, Facing
ignoreHitPause = 1

[State 1425, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 1426]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 1426, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1416

[State 1426, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 1426, VelSet]
type = VelSet
trigger1 = Time = 0
x = -5.58659217877
y = -5.78125

[State 1426, VelAdd]
type = VelAdd
Trigger1 = Time > 0
y = 0.5126953125

[State 1426, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 1426, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<EX POWER BOMB>=============================
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
var(25) = 23

[State 1430, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(32 * const(size.xScale)), -70
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1430, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1430, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1430, HitDef]
type = HitDef
trigger1 = AnimElem = 2 && !var(38)
trigger1 = P2BodyDist x < 57
attr = S, ST
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
p1StateNo = ifElse((Facing != EnemyNear, Facing), 1410, 1420)

[State 1430, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 800, 0
channel = 0

[State 1430, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 1430, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1430, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<POWER BOMB (COMBO)>=============================
[StateDef 1450]
type = S
physics = N
moveType = A
anim = 1400
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1450, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1450, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2BodyDist x >= 45, 0, ifElse(P2BodyDist x >= 30, 1, 2))

[State 1450, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1400, ifElse(var(10) = 1, 1401, 1402))

[State 1450, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2 && !var(37)
attr = S, ST
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
numHits = 0
p1StateNo = ifElse((Facing != EnemyNear, Facing), 1410, 1420)

[State 1450, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 800, 0
channel = 0

[State 1450, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 1450, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1450, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX POWER BOMB (COMBO)>=============================
[StateDef 1480]
type = S
physics = N
moveType = A
anim = 1430
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1480, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1480, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1480, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 23

[State 1480, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(32 * const(size.xScale)), -70
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1480, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1480, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1480, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 2 && !var(37)
attr = S, ST
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
p1StateNo = ifElse((Facing != EnemyNear, Facing), 1410, 1420)

[State 1480, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 800, 0
channel = 0

[State 1480, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 1480, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1480, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<SPIRAL DDT>==========================
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

[State 1500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1500, ifElse(var(10) = 1, 1501, 1502))

[State 1500, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 1500, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 1500, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1
value = 41, 0
channel = 5

[State 1500, Dust Helper]
type = Helper
trigger1 = AnimElemTime(2) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Spiral DDT Dust"
posType = P1
ownPal = 1

[State 1500, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 1
x = ifElse(var(10) = 2, 5.58659217877, ifElse(var(10) = 1, 4.46927374302, 3.35195530726))
y = -3.75

[State 1500, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1
y = 0.390625

[State 1500, HitDef]
type = HitDef
trigger1 = AnimElem = 5 && !var(38)
trigger1 = P2BodyDist x < 39
attr = S, ST
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
p1StateNo = 1510

[State 1500, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1500, 0
channel = 0

[State 1500, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1500, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1505


;Landing
[StateDef 1505]
type = S
anim = 1505
physics = N
moveType = I
velSet = 0, 0

[State 1505, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1505, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1505, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 1505, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;===========<SPIRAL DDT (SUCCESS)>==========
;Throw
[StateDef 1510]
type = S
physics = N
moveType = A
anim = 1510
ctrl = 0
velSet = 0, 0
sprPriority = -1

[State 1510, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1510, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1510, EX Flash]
type = VarSet
trigger1 = !Time && var(10) = 3
var(25) = 48

[State 1510, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1515

[State 1510, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(3) < 0
edge = ceil(32 * const(size.xScale)), 0

[State 1510, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
edge = ceil(56 * const(size.xScale)), 0

[State 1510, BindToTarget]
type = BindToTarget
trigger1 = NumTarget && AnimElemTime(9) < 0
pos = ceil(0 * const(size.xScale)), 0, Head

[State 1510, SprPriority]
type = SprPriority
trigger1 = NumTarget && AnimElem = 6
value = 1

[State 1510, PosSet]
type = PosSet
trigger1 = NumTarget && AnimElem = 9
y = 0

[State 1510, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = ceil(36 * const(size.xScale)), -78

[State 1510, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = ceil(32 * const(size.xScale)), -72

[State 1510, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
pos = ceil(28 * const(size.xScale)), -20

[State 1510, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(13) < 0
pos = ceil(32 * const(size.xScale)), -24

[State 1510, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(13) < 1
pos = 0, 0

[State 1510, Spiral DDT Arm]
type = Explod
trigger1 = NumTarget && AnimElem = 1
ID = 11510
anim = 11510
bindTime = -1
sprPriority = 1
posType = P1
scale = const(size.xScale), 1
ownPal = 0

[State 1510, Spiral DDT Arm]
type = ModifyExplod
trigger1 = NumTarget && AnimElem = 9
ID = 11510
anim = 11510
bindTime = -1
sprPriority = -1
posType = P1
scale = const(size.xScale), 1
ownPal = 0

[State 1510, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 11
value = floor(ifElse(ifElse(var(10) = 3, 154, ifElse(var(10) = 2, 140, ifElse(var(10) = 1, 133, 126))) * fvar(11) * fvar(12) < 7, -7, -ifElse(var(10) = 3, 154, ifElse(var(10) = 2, 140, ifElse(var(10) = 1, 133, 126))) * fvar(11) * fvar(12)))

[State 1510, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 11
value = 36

[State 1510, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 11 && !var(20) && var(10) != 3
value = 72

[State 1510, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 11
value = 1

[State 1510, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 11
var(13) = 1

[State 1510, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 11
var(15) = 1
ignoreHitPause = 1

[State 1510, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 11
var(16) = 1
ignoreHitPause = 1

[State 1410, Voice]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 3
value = 1510, 0
channel = 0

[State 1510, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 11
value = 2, 2
channel = 2

[State 1510, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 11
value = 2, 810
channel = 4

[State 1510, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 11
value = 810, 0
channel = 5

[State 1510, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 11
time = 14
ampl = -4
freq = 120

[State 1510, Impact Dust 1]
type = Helper
trigger1 = NumTarget && AnimElem = 11
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
facing = -1
ownPal = 1

[State 1510, Impact Dust 2]
type = Explod
trigger1 = NumTarget && AnimElem = 11
anim = 8105
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1510, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 13
value = 1516

[State 1510, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 17
x = ceil(32 * const(size.xScale))

[State 1510, Turn]
type = Turn
trigger1 = !AnimTime

[State 1510, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<SPIRAL DDT (TARGET)>==========
;Being Thrown
[StateDef 1515]
type = S
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 1515, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1515

[State 1515, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 1515, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1


;Finish
[Statedef 1516]
type = L
moveType = H
physics = N
velSet = 0,0

[State 1516, ChangeAnim]
type = ChangeAnim
trigger1 = Time < 6
value = 5080

[State 1516, ChangeState]
type = SelfState
trigger1 = Time > 32
value = ifElse(Alive, 5120, 5150)



;=====================<EX SPIRAL DDT>==========================
[StateDef 1530]
type = S
physics = N
moveType = A
anim = 1530
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
var(25) = 16

[State 1530, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(5 * const(size.xScale)), -52
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1530, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1530, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1530, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 1530, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 1530, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1
value = 41, 0
channel = 5

[State 1530, Dust Helper]
type = Helper
trigger1 = AnimElemTime(2) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Spiral DDT Dust"
posType = P1
ownPal = 1

[State 1530, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 1
x = 5.58659217877
y = -3.75

[State 1530, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1
y = 0.390625

[State 1530, HitDef]
type = HitDef
trigger1 = AnimElem = 5 && !var(38)
trigger1 = P2BodyDist x < 39
attr = S, ST
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
p1StateNo = 1510

[State 1530, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1500, 0
channel = 0

[State 1530, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1530, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1505



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
value = 1300, 0
channel = 0

[State 2900, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 5
channel = 1

[State 2900, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 2900, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40, 0
channel = 4

[State 2900, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Air Knee Smash Dust"
posType = P1
ownPal = 1

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 6.70391061453
y = -12.5

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && vel x >= 0
x = -0.17458100558

[State 2900, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = 0.78125

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Air Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
ID = 2900
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 0, 0
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, ChangeState]
type = ChangeState
trigger1 = MoveHit
trigger1 = NumTarget(2900) && Target, Alive
value = 1310

[State 2900, HitDef: Throw]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
trigger1 = !var(37)
ID = 2900
attr = A, ST
hitFlag = AF
priority = 7, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 +0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -68
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 1
numHits = 0
p1StateNo = 1310

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 2900, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1305



;========================<KICK ZERO COUNTER>=============================
[StateDef 2910]
type = S
physics = N
moveType = A
anim = 2910
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 0

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 5
channel = 1

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
getPower = 0,0
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
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -15
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

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1