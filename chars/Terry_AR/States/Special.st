; ________________________________________________
;| Terry Bogard by KarmaCharmeleon		|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;========================<POWER WAVE>=============================
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
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1001, 1002))

[State 1000, Voice]
type = PlaySnd
trigger1 = !Time
value = 1000, 0
channel = 0

[State 1000, Power Wave Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1000, 1
channel = 1

[State 1000, Power Wave Energy]
type = Explod
trigger1 = AnimElem = 4
anim = 1003
ID = 1003
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 1005
ID = 1005
name = "Power Wave Projectile"
posType = P1
pos = 50, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(7) = -1
value = 30, 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<ROUND WAVE>=============================
[StateDef 1020]
type = S
physics = N
moveType = A
anim = 1020
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1020, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1020, 0
channel = 0

[State 1020, Round Wave Sound Effect 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1000, 1
channel = 1

[State 1020, Round Wave Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 820, 0
channel = 4

[State 1020, Round Wave Energy]
type = Explod
trigger1 = AnimElem = 4
anim = 1003
ID = 1003
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1

[State 1020, Projectile]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 1025
ID = 1025
name = "Round Wave Projectile"
posType = P1
pos = 70, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1020, Width]
type = Width
trigger1 = AnimElemTime(7) = -1
value = 30, 0

[State 1020, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX POWER WAVE>=============================
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
var(25) = 41

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 3, -105
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
trigger1 = AnimElem = 4
value = 1000, 0
channel = 0

[State 1030, Power Wave Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1000, 1
channel = 1

[State 1030, Power Wave Energy]
type = Explod
trigger1 = AnimElem = 4
anim = 1003
ID = 1003
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1

[State 1030, Impact Dust]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = p1
facing = -1
ownPal = 1

[State 1030, Projectile]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 1035
ID = 1035
name = "Power Wave Projectile"
posType = P1
pos = 50, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, Width]
type = Width
trigger1 = AnimElemTime(7) = -1
value = 30, 0

[State 1030, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<POWER WAVE>=============================
[StateDef 1050]
type = S
physics = N
moveType = A
anim = 1050
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1050, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1050, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1050, ifElse(var(10) = 1, 1051, 1052))

[State 1050, Voice]
type = PlaySnd
trigger1 = !Time
value = 1000, 0
channel = 0

[State 1050, Power Wave Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1000, 1
channel = 1

[State 1050, Power Wave Energy]
type = Explod
trigger1 = AnimElem = 4
anim = 1003
ID = 1003
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1

[State 1050, Projectile]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 1055
ID = 1055
name = "Power Wave Projectile"
posType = P1
pos = 55, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1050, Width]
type = Width
trigger1 = AnimElemTime(7) = -1
value = 30, 0

[State 1050, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX POWER WAVE>=============================
[StateDef 1080]
type = S
physics = N
moveType = A
anim = 1080
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1080, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1080, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1080, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 36

[State 1080, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 3, -105
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1080, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1080, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1080, Voice]
type = PlaySnd
trigger1 = !Time
value = 1000, 0
channel = 0

[State 1080, Power Wave Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1000, 1
channel = 1

[State 1080, Power Wave Energy]
type = Explod
trigger1 = AnimElem = 4
anim = 1003
ID = 1003
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1

[State 1080, Projectile]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 1055
ID = 1055
name = "Power Wave Projectile"
posType = P1
pos = 55, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1080, Width]
type = Width
trigger1 = AnimElemTime(7) = -1
value = 30, 0

[State 1080, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1




;=====================<BURN KNUCKLE>==========================
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
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((var(52) || var(54)), ifElse((P2BodyDist x < 50), 2, ifElse(P2BodyDist x < 75, 1, 0)), ifElse((EnemyNear, GetHitVar(HitTime) >= 17), 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1100, ifElse(var(10) = 1, 1101, 1102))

[State 1100, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100, 0
channel = 0

[State 1100, Burn Knuckle Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1100, 1
channel = 1

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(8) = -1
value = 41, 0
channel = 5

[State 1100, Burn Knuckle Energy 1]
type = Explod
trigger1 = AnimElem = 8
ID = 1103
anim = 1103
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1100, Burn Knuckle Energy 2]
type = Explod
trigger1 = AnimElem = 8
ID = 1104
anim = 1104
bindTime = 1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 8
stateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 8103
ID = 8100
name = "Burn Knuckle Dust"
posType = P1
ownPal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElemTime(8) = 1
x = 13.4078212291
y = -ifElse(var(10) = 2, 0.78125, ifElse(var(10) = 1, 0.5859375, 0.390625))

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 1
y = 0.09765625

[State 1100, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(10) = 2, 126, ifElse(var(10) = 1, 112, 98)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 126, ifElse(var(10) = 1, 112, 98)))), ifElse(var(10) = 2, 18, ifElse(var(10) = 1, 16, 14))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
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
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1105


;Landing
[StateDef 1105]
type = S
anim = 1105
physics = N
moveType = I
velSet = 0,0

[State 1105, Remove Burn Knuckle Energy]
type = RemoveExplod
trigger1 = NumExplod(1103)
ID = 1103

[State 1105, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1105, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1105, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 5

[State 1105, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<QUICK BURN>=============================
[StateDef 1120]
type = S
physics = N
moveType = A
anim = 1120
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1120, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1120, 0
channel = 0

[State 1120, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 8
value = 1, 2
channel = 1

[State 1120, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8 || AnimElem = 9
x = 11.1731843575

[State 1120, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
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
ground.velocity = -4.40734669781, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.40734669781
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -5
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
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1120, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 9
ID = 1120
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
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
guard.hitTime = 12
guard.slideTime = 12
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, 3.125
air.cornerPush.velOff = 0
yAccel = 0.78125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -42
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1120, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1120) > 1
ID = 1120
keepOne = 1
excludeID = 1120
ignoreHitPause = 1

[State 1120, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1120)
trigger1 = !(Target(1120), Time) && (Target(1120), StateType = A)
value = 5425
ID = 1120
ignoreHitPause = 1

[State 1120, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
movetype = I

[State 1120, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX BURN KNUCKLE>==========================
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
var(25) = 28

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 4, -88
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

[State 1130, Burn Knuckle Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1100, 1
channel = 1

[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(8) = -1
value = 41, 0
channel = 5

[State 1130, Burn Knuckle Energy 1]
type = Explod
trigger1 = AnimElem = 8
ID = 1103
anim = 1103
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1130, Burn Knuckle Energy 2]
type = Explod
trigger1 = AnimElem = 8
ID = 1104
anim = 1104
bindTime = 1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 8
stateType = A
physics = N

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 8103
ID = 8100
name = "Burn Knuckle Dust"
posType = P1
ownPal = 1

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElemTime(8) = 1
x = 13.4078212291
y = -0.78125

[State 1130, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 1
y = 0.09765625

[State 1130, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 154 < 7, 7, fvar(11) * 154)), 22
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
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
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1105



;=====================<RISING TACKLE>==========================
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
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 2

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1200, ifElse(var(10) = 1, 1201, 1202))

[State 1200, Voice]
type = PlaySnd
trigger1 = !Time
value = 1200, 0
channel = 0

[State 1200, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2

[State 1200, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 7 || AnimElem = 9
trigger2 = (AnimElem = 11 || AnimElem = 13 || AnimElem = 15) && var(10)
trigger3 = AnimElem = 17 && var(10) = 2
value = 1, 5

[State 1200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 6
stateType = A
physics = N

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(6) = 1
value = 40, 0
channel = 4

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Rising Tackle Dust"
posType = P1
ownPal = 1

[State 1200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1 || AnimElemTime(1) = 1
x = 7

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElemTime(6) = 1
x = ifElse(var(10) = 2, 1.11731843575, ifElse(var(10) = 1, 0.55865921787, 0))
y = -ifElse(var(10) = 2, 11.25, ifElse(var(10) = 1, 8.75, 6.25))

[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 1
y = 0.5859375

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 16 && var(10) = 1
trigger2 = AnimElem = 18 && var(10) = 2
x = 0

[State 1200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 1200, Ground Hit (LP)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5 && !var(10)
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
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.46927374302, -6.5625
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
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
sparkXY = -10 + 0 * (var(35) := 42), var(36) := -28
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, Air Hit (LP)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6 && !MoveContact && !MoveReversed && !var(10)
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.46927374302, -6.5625
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, Ground Hit (MP/HP)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5 && var(10)
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -0.55865921787, -8.125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -0.55865921787, -8.125
air.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 42), var(36) := -28
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, Air Hit (MP/HP)]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = (AnimElem = 6 || AnimElem = 8 || AnimElem = 10 || AnimElem = 12 || AnimElem = 14) && var(10)
trigger2 = AnimElem = 16 && var(10) = 2
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 18 * !var(20)
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
ground.velocity = -0.55865921787, -8.125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -0.55865921787, -8.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0 && !var(10)
trigger2 = AnimElemTime(16) >= 0 && var(10) = 1
trigger3 = AnimElemTime(18) >= 0 && var(10) = 2
moveType = I

[State 1200, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1205


;Landing
[StateDef 1205]
type = S
anim = 1205
physics = N
moveType = I
velSet = 0,0

[State 1205, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1205, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1205, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 1205, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<RISING TACKLE (FOLLOW-UP)>==========================
[StateDef 1210]
type = S
physics = N
moveType = A
anim = 1210
ctrl = 0
velSet = 0,0
sprPriority = 1
hitCountPersist = 1

[State 1210, Voice]
type = PlaySnd
trigger1 = !Time
value = 1200, 0
channel = 0

[State 1210, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2

[State 1210, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 7 || AnimElem = 9 || AnimElem = 11 || AnimElem = 13 || AnimElem = 15 || AnimElem = 17
value = 1, 5

[State 1210, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 6
stateType = A
physics = N

[State 1210, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(6) = 1
value = 40, 0
channel = 4

[State 1210, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Rising Tackle Dust"
posType = P1
ownPal = 1

[State 1210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1 || AnimElemTime(1) = 1
x = 7

[State 1210, VelSet]
type = VelSet
trigger1 = AnimElemTime(6) = 1
x = 2.23463687151
y = -11.25

[State 1210, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 1
y = 0.5859375

[State 1210, VelSet]
type = VelSet
trigger1 = AnimElem = 18
x = 0

[State 1210, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 6 || AnimElem = 8 || AnimElem = 10 || AnimElem = 12 || AnimElem = 14 || AnimElem = 16
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 18 * !var(20)
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
ground.velocity = ifElse((AnimElem = 16), -0.55865921787, 0.55865921787), -8.125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = ifElse((AnimElem = 16), -0.55865921787, 0.55865921787), -8.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(18) >= 0
moveType = I

[State 1210, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1205



;=====================<EX RISING TACKLE>==========================
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
var(25) = 28

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 6, -54
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
trigger1 = !Time
value = 1200, 0
channel = 0

[State 1230, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2

[State 1230, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 7 || AnimElem = 9 || AnimElem = 11 || AnimElem = 13 || AnimElem = 15 || AnimElem = 17 || AnimElem = 19
value = 1, 5

[State 1230, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 6
stateType = A
physics = N

[State 1230, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(6) = 1
value = 40, 0
channel = 4

[State 1230, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Rising Tackle Dust"
posType = P1
ownPal = 1

[State 1230, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1 || AnimElemTime(1) = 1
x = 7

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElemTime(6) = 1
x = 1.67597765363
y = -13.75

[State 1230, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 1
y = 0.5859375

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElem = 20
x = 0

[State 1230, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
value = SCA
time = 1

[State 1230, Ground Hit]
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
ground.velocity = -0.55865921787, -8.125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -0.55865921787, -8.125
air.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 42), var(36) := -28
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, Air Hit]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 6 || AnimElem = 8 || AnimElem = 10 || AnimElem = 12 || AnimElem = 14 || AnimElem = 16 || AnimElem = 18
attr = A, SA
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
ground.velocity = -0.55865921787, -8.125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -0.55865921787, -8.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(20) >= 0
moveType = I

[State 1230, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1205



;=====================<CRACK SHOOT>==========================
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
var(10) = ifElse(P2MoveType = H || P2Dist x > 110 || Random < 333, 2, ifElse(Random < 500 || P2Dist x > 65, 1, 0))

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
trigger1 = AnimElem = 6
value = 1, 5
channel = 1

[State 1300, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41, 0
channel = 5

[State 1300, Crack Shoot Blur]
type = Explod
trigger1 = AnimElem = 3
ID = 1310
anim = ifElse(var(10) = 2, 1312, ifElse(var(10) = 1, 1311, 1310))
bindTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 1, 1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1300, ModifyExplod: Crack Shoot Blur]
type = ModifyExplod
trigger1 = AnimElem = 6
ID = 1310
posType = P1
pos = 0, 0
removeOnGetHit = 1
ignoreHitPause = 1

[State 1300, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Crack Shoot Dust"
posType = P1
ownPal = 1

[State 1300, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 1
x = 4.46927374302
y = -ifElse(var(10) = 2, 10, ifElse(var(10) = 1, 8.75, 7.5))

[State 1300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 1
y = 0.78125

[State 1300, HitDef (First)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)))), ifElse(var(10) = 2, 14, ifElse(var(10) = 1, 13, 12))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -11.0509440309, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 12), var(36) := -98
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, HitDef (Second)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(10) = 2, 91, ifElse(var(10) = 1, 84, 77)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 91, ifElse(var(10) = 1, 84, 77)))), ifElse(var(10) = 2, 13, ifElse(var(10) = 1, 12, 11))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -11.0509440309, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, HitDef (Third)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)))), ifElse(var(10) = 2, 12, ifElse(var(10) = 1, 11, 10))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -11.0509440309, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -68
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, HitDef (Third)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 7 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)))), ifElse(var(10) = 2, 12, ifElse(var(10) = 1, 11, 10))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -11.0509440309, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1305


;Landing
[StateDef 1305]
type = S
anim = ifElse(PrevStateNo = 1340, 1345, 1305)
physics = N
moveType = I
velSet = 0, 0

[State 1305, Remove Crack Shoot Blur]
type = RemoveExplod
trigger1 = NumExplod(1310)
ID = 1310

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



;=====================<EX CRACK SHOOT (CLASSIC MODE)>==========================
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
var(25) = 24

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = -25, -40
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1330, Voice]
type = PlaySnd
trigger1 = !Time
value = 1300, 0
channel = 0

[State 1330, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 5
channel = 1

[State 1330, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41, 0
channel = 5

[State 1330, Crack Shoot Blur]
type = Explod
trigger1 = AnimElem = 3
ID = 1310
anim = 1313
bindTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 1, 1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1330, ModifyExplod: Crack Shoot Blur]
type = ModifyExplod
trigger1 = AnimElem = 6
ID = 1310
posType = P1
pos = 0, 0
removeOnGetHit = 1
ignoreHitPause = 1

[State 1330, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Crack Shoot Dust"
posType = P1
ownPal = 1

[State 1330, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 1330, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 1
x = 6.70391061453
y = -6.25

[State 1330, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 1
y = 0.78125

[State 1330, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
ID = 1330
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 15
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.58659217877, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, 3.125
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
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -68
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1330, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 7 && !MoveContact && !MoveReversed
ID = 1330
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 15
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.58659217877, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, 3.125
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
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1330, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1330) > 1
ID = 1330
keepOne = 1
excludeID = 1330
ignoreHitPause = 1

[State 1330, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1330)
trigger1 = !(Target(1330), Time)
value = ifElse(Target(1330), StateType = A, 5425, 5420)
ID = 1330
ignoreHitPause = 1

[State 1330, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1305



;=====================<EX CRACK SHOOT (EX MODE)>==========================
[StateDef 1340]
type = S
physics = N
moveType = A
anim = 1340
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1340, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1340, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1340, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 21

[State 1340, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = -25, -40
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1340, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1340, Voice]
type = PlaySnd
trigger1 = !Time
value = 1300, 0
channel = 0

[State 1340, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 5
channel = 1

[State 1340, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41, 0
channel = 5

[State 1340, Crack Shoot Blur]
type = Explod
trigger1 = AnimElem = 3
ID = 1310
anim = 1310
bindTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 1, 1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1340, ModifyExplod: Crack Shoot Blur]
type = ModifyExplod
trigger1 = AnimElem = 6
ID = 1310
posType = P1
pos = 0, 0
removeOnGetHit = 1
ignoreHitPause = 1

[State 1340, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Crack Shoot Dust"
posType = P1
ownPal = 1

[State 1340, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 1340, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 1
x = 2.23463687151
y = -6.25

[State 1340, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 1
y = 0.78125

[State 1340, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
ID = 1340
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 12
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.58659217877, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, 3.125
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
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -68
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1340, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 7 && !MoveContact && !MoveReversed
ID = 1340
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 12
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.58659217877, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, 3.125
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
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1340, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(51) && NumTarget(1340)
var(15) = 0

[State 1340, EX Crack Shoot Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1340)
var(51) = 1
persistent = 0

[State 1340, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1340) > 1
ID = 1340
keepOne = 1
excludeID = 1340
ignoreHitPause = 1

[State 1340, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1340)
trigger1 = !(Target(1340), Time)
value = ifElse(Target(1340), StateType = A, 5425, 5420)
ID = 1340
ignoreHitPause = 1

[State 1340, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1305



;=====================<POWER DUNK>==========================
[StateDef 1400]
type = S
physics = N
moveType = A
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1400, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1400, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2MoveType = H, 2, ifElse(Random < 500, 1, 0))

[State 1400, Button Detect (Target Comb)]
type = VarSet
trigger1 = !Time && PrevStateNo = 248
var(10) = 0

[State 1400, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1400, ifElse(var(10) = 1, 1401, 1402))

[State 1400, PosAdd (Target Combo)]
type = PosAdd
trigger1 = Time > 0 && AnimElemTime(4) < 0 && PrevStateNo = 248
x = 8.93854748603

[State 1400, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1400, 0
channel = 0

[State 1400, Power Dunk Sound Effect 1]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1100, 1
channel = 1

[State 1400, Power Dunk Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1400, 1
channel = 4

[State 1400, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41, 0
channel = 5

[State 1400, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1400, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Power Dunk Dust"
posType = P1
ownPal = 1

[State 1400, Power Dunk Energy 1]
type = Explod
trigger1 = AnimElem = 9
ID = 1403
anim = 1403
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1400, Power Dunk Energy 2]
type = Explod
trigger1 = AnimElem = 10
ID = 1404
anim = 1404
bindTime = 1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1400, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 4.46927374302
y = -ifElse(var(10) = 2, 9.375, ifElse(var(10) = 1, 8.4375, 7.5))

[State 1400, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 1 && vel y < -2.8125
y = 0.390625

[State 1400, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) > 1 && vel y >= -2.8125
x = 5.58659217877
y = -2.45722765363
persistent = 0

[State 1400, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 1 && vel y >= -2.8125
y = 0.78125

[State 1400, Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(PrevStateNo = 248, 21, 28) < 7, 7, fvar(11) * ifElse(PrevStateNo = 248, 21, 28))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.23463687151, -ifElse(var(10) = 2, 10, 8.125)
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -ifElse(var(10) = 2, 10, 8.125)
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
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -54
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, Air Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(PrevStateNo = 248, 14, 21) < 7, 7, fvar(11) * ifElse(PrevStateNo = 248, 14, 21))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.23463687151, -ifElse(var(10) = 2, 10, 8.125)
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -ifElse(var(10) = 2, 10, 8.125)
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
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, Air Hit: Final]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 11
ID = 1400
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(PrevStateNo = 248, 35, ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84))) < 7, 7, fvar(11) * ifElse(PrevStateNo = 248, 35, ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84))))), ifElse(PrevStateNo = 248, 7, ifElse(var(10) = 2, 14, ifElse(var(10) = 1, 13, 12)))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -5.58659217877, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, 3.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.78125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -26
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1400) > 1
ID = 1400
keepOne = 1
excludeID = 1400
ignoreHitPause = 1

[State 1400, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1400)
trigger1 = !(Target(1400), Time)
value = ifElse(Target(1400), StateType = A, 5425, 5420)
ID = 1400
ignoreHitPause = 1

[State 1400, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1405


;Landing
[StateDef 1405]
type = S
anim = 1405
physics = N
moveType = I
velSet = 0,0

[State 1405, Remove Power Dunk Energy]
type = RemoveExplod
trigger1 = NumExplod(1403)
ID = 1403

[State 1405, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1405, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1405, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 5

[State 1405, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<POWER DUNK (FOLLOW-UP)>==========================
[StateDef 1410]
type = S
physics = N
moveType = A
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
hitCountPersist = 1

[State 1410, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1400, 0
channel = 0

[State 1410, Power Dunk Sound Effect 1]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1100, 1
channel = 1

[State 1410, Power Dunk Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1400, 1
channel = 4

[State 1410, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41, 0
channel = 5

[State 1410, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1410, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Power Dunk Dust"
posType = P1
ownPal = 1

[State 1410, Power Dunk Energy 1]
type = Explod
trigger1 = AnimElem = 9
ID = 1403
anim = 1403
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1410, Power Dunk Energy 2]
type = Explod
trigger1 = AnimElem = 10
ID = 1404
anim = 1404
bindTime = 1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1410, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 4.46927374302
y = -7.5

[State 1410, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 1 && vel y < -2.8125
y = 0.390625

[State 1410, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) > 1 && vel y >= -2.8125
x = 5.58659217877
y = -2.45722765363
persistent = 0

[State 1410, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 1 && vel y >= -2.8125
y = 0.78125

[State 1410, Air Hit: Final]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 11
ID = 1400
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -5.58659217877, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, 3.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.78125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -26
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1410, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1400) > 1
ID = 1400
keepOne = 1
excludeID = 1400
ignoreHitPause = 1

[State 1410, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1400)
trigger1 = !(Target(1400), Time)
value = ifElse(Target(1400), StateType = A, 5425, 5420)
ID = 1400
ignoreHitPause = 1

[State 1410, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1405



;=====================<EX POWER DUNK>==========================
[StateDef 1430]
type = S
physics = N
moveType = A
anim = 1430
ctrl = 0
velSet = 0,0
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
var(25) = 32

[State 1430, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 24, -72
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1430, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1430, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1400, 0
channel = 0

[State 1430, Power Dunk Sound Effect 1]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1100, 1
channel = 1

[State 1430, Power Dunk Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1400, 1
channel = 4

[State 1430, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41, 0
channel = 5

[State 1430, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1430, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Power Dunk Dust"
posType = P1
ownPal = 1

[State 1430, Power Dunk Energy 1]
type = Explod
trigger1 = AnimElem = 9
ID = 1403
anim = 1403
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1430, Power Dunk Energy 2]
type = Explod
trigger1 = AnimElem = 10
ID = 1404
anim = 1404
bindTime = 1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 1430, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 4.46927374302
y = -7.5

[State 1430, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 1 && vel y < -2.8125
y = 0.390625

[State 1430, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) > 1 && vel y >= -2.8125
x = 5.58659217877
y = -2.45722765363
persistent = 0

[State 1430, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 1 && vel y >= -2.8125
y = 0.78125

[State 1430, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
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
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.23463687151, -8.125
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -8.125
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
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -54
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, Air Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.23463687151, -8.125
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -8.125
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
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, Air Hit: Final]
type = HitDef
trigger1 = !var(16)
trigger1 = AnimElem = 11
ID = 1430
attr = A, SA
hitFlag = MAFD
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 15
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
air.hitTime = 36
down.hitTime = 36
ground.velocity = -5.58659217877, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, 3.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
down.velocity = 0, 0
down.cornerpush.veloff = 0
yAccel = 0.78125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -26
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1430) > 1
ID = 1430
keepOne = 1
excludeID = 1430
ignoreHitPause = 1

[State 1430, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1430)
trigger1 = !(Target(1430), Time)
value = ifElse(Target(1430), StateType = L, 5410, ifElse(Target(1430), StateType = A, 5425, 5420))
ID = 1430
ignoreHitPause = 1

[State 1430, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1405



;========================<FIRE KICK>=============================
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
var(10) = ifElse((EnemyNear, GetHitVar(HitTime) >= 17), 2, ifElse((EnemyNear, GetHitVar(HitTime) >= 14), 1, 0))

[State 1500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1500, ifElse(var(10) = 1, 1501, 1502))

[State 1500, Voice]
type = PlaySnd
trigger1 = !Time
value = 1500, 0
channel = 0

[State 1500, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 4
channel = 1

[State 1500, Slide Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 1500
channel = 4

[State 1500, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Slide Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1500, StateTypeSet: Crouch, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = C
physics = N

[State 1500, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = ifElse(var(10) = 2, 13.4078212291, ifElse(var(10) = 1, 12.2905027933, 11.1731843575))

[State 1500, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && vel x > 0
x = -1.39664804469

[State 1500, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) > 0 && vel x <= 0
x = 0

[State 1500, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = C, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 56, ifElse(var(10) = 1, 49, 42)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 56, ifElse(var(10) = 1, 49, 42)))), ifElse(var(10) = 2, 8, 7)
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
ground.velocity = -4.40734669781, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.40734669781
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -8
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1500, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 0, 1500, ifElse(var(10) = 1, 1501, 1502))
elem = 6
ignoreHitPause = 1

[State 1500, ChangeState]
type = ChangeState
trigger1 = MoveHit
trigger1 = AnimElemTime(6) > 0 && AnimElemTime(7) < 0
value = 1510

[State 1500, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 1500, StateTypeSet: Stand, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 11
stateType = S
physics = N

[State 1500, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 1510]
type = S
physics = N
moveType = A
anim = 1510
ctrl = 0
velSet = 0, 0
sprPriority = 1
hitCountPersist = 1

[State 1510, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 5
channel = 1

[State 1510, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 8.37988826816

[State 1510, VelSet]
type = VelAdd
trigger1 = AnimElemTime(1) > 0 && AnimElemTime(4) < 0
x = -0.69832402234

[State 1510, VelSet]
type = VelSet
trigger1 = AnimElem  = 4
x = 0

[State 1510, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36
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
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
yaccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1510, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1510
elem = 5
ignoreHitPause = 1

[State 1510, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 1510
elem = 6
ignoreHitPause = 1

[State 1510, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 1, 6)
value = 1510
elem = 7
ignoreHitPause = 1

[State 1510, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1510, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1510, Rising Tackle]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(4) > 0 && AnimElemTime(9) < 0 && MoveContact
trigger1 = !AILevel
;command = "[special] D, U"
trigger1 = NumExplod(90012708)
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
trigger2 = AILevel && !var(14)
trigger2 = MoveHit && P2BodyDist x < 20
var(14) = 1210

[State 1510, Followup]
type = ChangeState
trigger1 = var(14) = 1210
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(9) < 0
value = var(14)

[State 1510, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX FIRE KICK>=============================
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
var(25) = 27

[State 1530, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 0, -38
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

[State 1530, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 4
channel = 1

[State 1530, Slide Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 1500
channel = 4

[State 1530, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Slide Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1530, StateTypeSet: Crouch, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = C
physics = N

[State 1530, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 13.4078212291

[State 1530, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && vel x > 0
x = -1.39664804469

[State 1530, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) > 0 && vel x <= 0
x = 0

[State 1530, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
attr = C, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
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
ground.velocity = -4.40734669781, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.40734669781
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -8
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1530, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= 10
value = 1530
elem = 6
ignoreHitPause = 1

[State 1530, ChangeState]
type = ChangeState
trigger1 = MoveHit
trigger1 = AnimElemTime(6) > 0 && AnimElemTime(7) < 0
value = 1540

[State 1530, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 1530, StateTypeSet: Stand, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 11
stateType = S
physics = N

[State 1530, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 1540]
type = S
physics = N
moveType = A
anim = 1510
ctrl = 0
velSet = 0, 0
sprPriority = 1
hitCountPersist = 1

[State 1540, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 24

[State 1540, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 5
channel = 1

[State 1540, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 8.37988826816

[State 1540, VelSet]
type = VelAdd
trigger1 = AnimElemTime(1) > 0 && AnimElemTime(4) < 0
x = -0.69832402234

[State 1540, VelSet]
type = VelSet
trigger1 = AnimElem  = 4
x = 0

[State 1540, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 4
ID = 1540
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
yaccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1540, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= 10
value = 1510
elem = 5
ignoreHitPause = 1

[State 1540, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= 8
value = 1510
elem = 6
ignoreHitPause = 1

[State 1540, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= 6
value = 1510
elem = 7
ignoreHitPause = 1

[State 1540, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(52) && NumTarget(1540)
var(15) = 0

[State 1540, EX Fire Kick Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1540)
var(52) = 1
persistent = 0

[State 1540, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1540, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<POWER CHARGE>=============================
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
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1600, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2MoveType = H && (EnemyNear, GetHitVar(HitTime) >= 14), 2, ifElse(P2MoveType = H, 1, 0))

[State 1600, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1600, ifElse(var(10) = 1, 1601, 1602))

[State 1600, Voice]
type = PlaySnd
trigger1 = !Time
value = 1600, 0
channel = 0

[State 1600, Slide Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 1500
channel = 1

[State 1600, Dust Helper]
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

[State 1600, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 11.1731843575

[State 1600, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(6) < 0
x = -0.69832402234

[State 1600, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1600, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
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
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -3.35195530726, -8.125
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -8.125
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
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -54
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1600, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 0, 1600, ifElse(var(10) = 1, 1601, 1602))
elem = 5
ignoreHitPause = 1

[State 1600, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 1600, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1600, Power Dunk]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(4) > 0 && AnimElemTime(7) < 0 && MoveContact
trigger1 = !AILevel
;command = "F, D, DF"
trigger1 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && (NumExplod(90010203) || NumExplod(90010253))) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && (NumExplod(90010301) || NumExplod(90010351)))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
trigger2 = AILevel && !var(14)
var(14) = 1410

[State 1600, Followup]
type = ChangeState
trigger1 = var(14) = 1410
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(7) < 0
value = var(14)

[State 1600, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX POWER CHARGE>=============================
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
var(25) = 20

[State 1630, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 4, -88
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

[State 1630, Slide Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 1500
channel = 1

[State 1630, Dust Helper]
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

[State 1630, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 13.4078212291

[State 1630, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(6) < 0
x = -0.69832402234

[State 1630, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1630, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
ID = 1630
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
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -8.93854748603, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -8.93854748603, -5.78125
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
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1630, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= 10
value = 1630
elem = 5
ignoreHitPause = 1

[State 1630, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(53) && NumTarget(1630)
var(15) = 0

[State 1630, EX Power Charge Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1630)
var(53) = 1
persistent = 0

[State 1630, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1630) > 1
ID = 1630
keepOne = 1
excludeID = 1630
ignoreHitPause = 1

[State 1630, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1630)
trigger1 = !(Target(1630), Time)
value = 1645
ID = 1630
ignoreHitPause = 1

[State 1630, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 1630, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<HIT BY EX POWER CHARGE>=============================
;Being Launched
[StateDef 1645]
type = A
moveType = H
physics = N
velSet = 0,0

[State 1645, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5012

[State 1645, End]
type = ChangeState
trigger1 = HitShakeOver
value = 1646


;Heading Towards Wall
[StateDef 1646]
type = A
moveType = H
physics = N

[State 1646, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 1646, Gravity]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel) * 0.67

[State 1646, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = (vel y < 0), 0
ignoreHitPause = 1

[State 1646, ScreenBound]
type = ScreenBound
triggerAll = NumEnemy
trigger1 = pos x > -40 && Enemy, pos x > -40
trigger2 = pos x < 40 && Enemy, pos x < 40
value = 1
moveCamera = 1, 0

[State 1646, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1646, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5900)
value = 5900

[State 1646, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5900)
trigger1 = AnimElemTime(AnimElemNo(0) + 1) = 0
value = 5012
elem = AnimElemNo(0)

[State 1646, Bounce Off Wall]
type = ChangeState
trigger1 = Time >= 4
trigger1 = BackEdgeBodyDist <= 0 || FrontEdgeBodyDist <= 0
value = 1647

[State 1646, End]
type = SelfState
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;Impacting Wall
[StateDef 1647]
type = A
moveType = H
physics = N

[State 1647, Turn]
type = Turn
trigger1 = !Time
trigger1 = FrontEdgeDist < BackEdgeDist

[State 1647, PosAdd]
type = PosAdd
trigger1 = 1
x = -BackEdgeBodyDist

[State 1647, PosFreeze]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1647, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

[State 1647, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1647, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5901)
value = 5901

[State 1647, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5901)
value = 5000

[State 1647, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,0

[State 1647, Hitting the Wall FX]
type = Explod
trigger1 = !Time
anim = F72
pos = 0, floor(ScreenPos y) - 50
posType = Back
sprPriority = 3

[State 1647, End]
type = ChangeState
trigger1 = Time >= 4
value = 1648


;Bouncing Off Wall
[Statedef 1648]
type = A
moveType = H
physics = N

[State 1648, Turn]
type = Turn
trigger1 = !Time

[State 1648, Gravity]
type = VelAdd
trigger1 = Time
y = 0.5

[State 1648, VelSet]
type = VelSet
trigger1 = !Time
x = ((EnemyNear, pos x - pos x) * Facing + 40) / 36.0
y = (pos y + 0.5 * 0.4850 * 36 ** 2) / -36.0

[State 1648, VelSet]
type = VelSet
trigger1 = !Time
trigger1 = vel x != [-9, 0]
x = ifElse(vel x < -9, -9, 0)

[State 1648, Turn]
type = Turn
trigger1 = !Time && AuthorName = "Moku"

[State 1648, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5902)
value = 5902

[State 1648, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5902)
value = ifElse(SelfAnimExist(5051), 5051, 5030)

[State 1648, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 1648, ChangeAnim]
type = ChangeAnim
trigger1 = vel y > -3 && Anim = 5051 && SelfAnimExist(5061)
value = 5061

[State 1648, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

[State 1648, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 1648, End]
type = SelfState
trigger1 = vel y > 0 && (pos y > -vel y)
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
value = 1200, 0
channel = 0

[State 2900, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2

[State 2900, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 7 || AnimElem = 9
value = 1, 5

[State 2900, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 6
stateType = A
physics = N

[State 2900, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(6) = 1
value = 40, 0
channel = 4

[State 2900, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Rising Tackle Dust"
posType = P1
ownPal = 1

[State 2900, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1 || AnimElemTime(1) = 1
x = 7

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElemTime(6) = 1
y = -6.25

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 1
y = 0.5859375

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 2900, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0,0
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
ground.velocity = -4.46927374302, -6.5625
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
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
sparkXY = -10 + 0 * (var(35) := 42), var(36) := -28
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, Air Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0,0
givePower = 36, 36
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
ground.velocity = -4.46927374302, -6.5625
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
moveType = I

[State 2900, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1105



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
sparkXY = -10 + 0 * (var(35) := 98), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= 10
value = 2910
elem = 5
ignoreHitPause = 1

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(7) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1