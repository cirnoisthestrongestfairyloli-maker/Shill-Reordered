; ________________________________________________
;| Ryu by KarmaCharmeleon			|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;========================<HADOKEN>=============================
[StateDef 1000]
type = S
physics = N
moveType = A
anim = 1000 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
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
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1001, 1002)) + 10000 * (var(40) = [1, 2])

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 0 + 10 * var(40)
channel = 0

[State 1000, Hadoken Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 1000, 1
channel = 1

[State 1000, Projectile]
type = Helper
trigger1 = AnimElemTime(5) = 1
helperType = Normal
stateNo = 1005
ID = 1005
name = "Hadoken Projectile"
posType = P1
pos = 78, -64
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 45, 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX HADOKEN>=============================
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
var(25) = 26

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -14, -68
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1030, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 1030, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 0 + 10 * var(40)
channel = 0

[State 1030, Hadoken Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 1000, 1
channel = 1

[State 1030, Projectile]
type = Helper
trigger1 = AnimElemTime(5) = 1
helperType = Normal
stateNo = 1035
ID = 1035
name = "Hadoken Projectile"
posType = P1
pos = 78, -64
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 45, 0

[State 1030, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SHAKUNETSU HADOKEN>=============================
[StateDef 1050]
type = S
physics = N
moveType = A
anim = 1050 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
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
value = ifElse(var(10) = 0, 1050, ifElse(var(10) = 1, 1051, 1052)) + 10000 * (var(40) = [1, 2])

[State 1050, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1050, 0 + 10 * var(40)
channel = 0

[State 1050, Shakunetsu Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1050, 1
channel = 5

[State 1050, Hadoken Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 1000, 1
channel = 1

[State 1050, Projectile]
type = Helper
trigger1 = AnimElemTime(5) = 1
helperType = Normal
stateNo = 1055
ID = 1055
name = "Shakunetsu Hadoken Projectile"
posType = P1
pos = 78, -64
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1050, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 45, 0

[State 1050, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX SHAKUNETSU HADOKEN>=============================
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
var(25) = 27

[State 1080, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -14, -68
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1080, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1030, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 1080, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1050, 0 + 10 * var(40)
channel = 0

[State 1080, Shakunetsu Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1050, 1
channel = 5

[State 1080, Hadoken Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 1000, 1
channel = 1

[State 1080, Projectile]
type = Helper
trigger1 = AnimElemTime(5) = 1
helperType = Normal
stateNo = 1085
ID = 1085
name = "Shakunetsu Hadoken Projectile"
posType = P1
pos = 78, -64
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1080, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 45, 0

[State 1080, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<SHORYUKEN>==========================
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2MoveType = H || P2Dist x > 110 || Random < 333, 2, ifElse(Random < 500 || P2Dist x > 65, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1100, ifElse(var(10) = 1, 1101, 1102))

[State 1100, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100, 0 + 10 * var(40)
channel = 0

[State 1100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 1
value = 40, 0
channel = 4

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElemTime(4) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 2
x = ifElse(var(10) = 2, 8.93854748603, ifElse(var(10) = 1, 6.70391061453, 4.46927374302))
y = ifElse(var(10) = 2, -11.25, ifElse(var(10) = 1, -8.75, -6.25))

[State 1100, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(4) > 2
x = -0.69832402234

[State 1100, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 2
y = 0.5859375

[State 1100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0 && !var(10)
trigger2 = AnimElemTime(4) < 0 && var(10)
value = SCA
time = 1

[State 1100, Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 126, ifElse(var(10) = 1, 119, 112)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 126, ifElse(var(10) = 1, 119, 112)))), ifElse(var(10) = 2, 18, ifElse(var(10) = 1, 17, 16))
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
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
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
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
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Air Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1100, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1105


;Landing
[StateDef 1105]
type = S
anim = 1105 + 10000 * (var(40) = [1, 2])
physics = N
moveType = I
velSet = 0,0

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
channel = 1

[State 1105, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<SHORYUKEN (EVIL)>==========================
[StateDef 1110]
type = S
physics = N
moveType = A
anim = 1110 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
faceP2 = 1

[State 1110, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1110, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2MoveType = H || P2Dist x > 110 || Random < 333, 2, ifElse(Random < 500 || P2Dist x > 65, 1, 0))

[State 1110, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1110, ifElse(var(10) = 1, 1111, 1112)) + 10000 * (var(40) = [1, 2])

[State 1110, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100, 0 + 10 * var(40)
channel = 0

[State 1110, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 1110, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1110, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 1
value = 40, 0
channel = 4

[State 1110, Dust Helper]
type = Helper
trigger1 = AnimElemTime(4) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1110, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 2
x = ifElse(var(10) = 2, 8.93854748603, ifElse(var(10) = 1, 6.70391061453, 4.46927374302))
y = ifElse(var(10) = 2, -11.25, ifElse(var(10) = 1, -8.75, -6.25))

[State 1110, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(4) > 2
x = -0.69832402234

[State 1110, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1110, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 2
y = 0.5859375

[State 1110, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0 && !var(10)
trigger2 = AnimElemTime(4) < 0 && var(10)
value = SCA
time = 1

[State 1110, Ground Hit 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 91, ifElse(var(10) = 1, 84, 77)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 91, ifElse(var(10) = 1, 84, 77)))), ifElse(var(10) = 2, 13, ifElse(var(10) = 1, 12, 11))
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
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
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
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
sparkXY = -10 + 0 * (var(35) := 22), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1110, Ground Hit 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
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
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
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
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1110, Air Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1110, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1110, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1105



;=====================<SHORYUKEN (SHADOW)>==========================
[StateDef 1120]
type = S
physics = N
moveType = A
anim = 1120 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
faceP2 = 1

[State 1120, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1120, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(var(15) < 1, 2, ifElse(var(15) < 2, 1, 0))

[State 1120, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1120, ifElse(var(10) = 1, 1121, 1122)) + 10000 * (var(40) = [1, 2])

[State 1120, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100, 0 + 10 * var(40)
channel = 0

[State 1120, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 1120, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1120, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 1
value = 40, 0
channel = 4

[State 1120, Dust Helper]
type = Helper
trigger1 = AnimElemTime(4) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1120, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 2
x = ifElse(var(10) = 2, 8.93854748603, ifElse(var(10) = 1, 6.70391061453, 4.46927374302))
y = ifElse(var(10) = 2, -11.25, ifElse(var(10) = 1, -8.75, -6.25))

[State 1120, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(4) > 2
x = -0.69832402234

[State 1120, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1120, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 2
y = 0.5859375

[State 1120, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1

[State 1120, Ground Hit (LP)]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20)) && !var(10)
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 1, 63, 112) < 7, 7, fvar(11) * ifElse(var(10) = 1, 63, 112))), ifElse(var(10) = 1, 9, 16)
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
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
ground.velocity = -4.46927374302, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
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
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1120, Ground Hit (MP)]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20)) && var(10) = 1
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 1, 63, 112) < 7, 7, fvar(11) * ifElse(var(10) = 1, 63, 112))), ifElse(var(10) = 1, 9, 16)
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
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
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
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
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1120, Air Hit (LP/MP)]
type = HitDef
triggerAll = !var(16) && (var(15) < 3 || var(20)) && var(10) != 2
trigger1 = AnimElem = 4 && !var(10) && !MoveContact && !MoveReversed
trigger2 = AnimElem = 4 && var(10) = 1
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1120, Ground Hit 1 (HP)]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20)) && var(10) = 2
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
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
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
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
sparkXY = -10 + 0 * (var(35) := 22), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1120, Ground Hit 2 (HP)]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20)) && var(10) = 2
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
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
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
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
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1120, Air Hit (HP)]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20)) && var(10) = 2
trigger1 = AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1120, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1120, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1125


;Landing
[StateDef 1125]
type = S
anim = 1125 + 10000 * (var(40) = [1, 2])
physics = N
moveType = I
velSet = 0,0

[State 1125, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1125, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1125, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 1125, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX SHORYUKEN>=============================
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
var(25) = 17

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 36, -85
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1130, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 1130, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100, 0 + 10 * var(40)
channel = 0

[State 1130, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 1
value = 40, 0
channel = 5

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElemTime(4) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 2
x = 11.1731843575
y = -13.75

[State 1130, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(4) > 2
x = -0.69832402234

[State 1130, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1130, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 2
y = 0.5859375

[State 1130, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 1130, Ground Hit]
type = HitDef
triggerAll = !var(16) && var(15) < 2
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
animType = Back
air.animType = Back
fall.animType = Back
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
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Air Hit]
type = HitDef
triggerAll = !var(16) && var(15) < 2
trigger1 = AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1130, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1105



;=====================<EX SHORYUKEN (SHADOW)>==========================
[StateDef 1150]
type = S
physics = N
moveType = A
anim = 1150 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1150, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1150, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 18

[State 1150, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 36, -85
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1150, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1150, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 1150, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100, 0 + 10 * var(40)
channel = 0

[State 1150, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 1150, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1150, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 1
value = 40, 0
channel = 4

[State 1150, Dust Helper]
type = Helper
trigger1 = AnimElemTime(4) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1150, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 2
x = 8.93854748603
y = -11.25

[State 1150, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(4) > 2
x = -0.69832402234

[State 1150, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 2
y = 0.5859375

[State 1150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1

[State 1150, Ground Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 13
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
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
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
sparkXY = -10 + 0 * (var(35) := 22), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, Ground Hit 2]
type = HitDef
trigger1 = !var(16) && var(15) < (3 + HitCount)
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
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, Air Hit]
type = HitDef
trigger1 = !var(16) && var(15) < (3 + HitCount)
trigger1 = AnimElem = 4
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1150, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1125



;=====================<TATSUMAKI SENPUKYAKU>==========================
[StateDef 1200]
type = S
physics = N
moveType = A
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2MoveType = H || P2Dist x > 110 || Random < 333, 2, ifElse(Random < 500 || P2Dist x > 65, 1, 0))

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1200, ifElse(var(10) = 1, 1201, 1202))

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1200, 0 + 10 * var(40)
channel = 0

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = !Time
value = 40, 0
channel = 1

[State 1200, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 9
trigger3 = AnimElem = 12 && var(10)
trigger4 = AnimElem = 15 && var(10)
trigger5 = AnimElem = 18 && var(10)
trigger6 = AnimElem = 21 && var(10)
trigger7 = AnimElem = 24 && var(10) = 2
trigger8 = AnimElem = 27 && var(10) = 2
value = 1, 5

[State 1200, Dust Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tatsumaki Senpukyaku Dust"
posType = P1
ownPal = 1

[State 1200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = !Time
stateType = A
physics = N

[State 1200, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(var(10) = 2, 4.18994413408, ifElse(var(10) = 1, 3.49162011173, 2.79329608939))
y = -5

[State 1200, VelAdd]
type = VelAdd
trigger1 = Time > 0 && AnimElemTime(6) < 0
trigger2 = AnimElemTime(12) > 0 && !var(10)
trigger3 = AnimElemTime(24) > 0 && var(10) = 1
trigger4 = AnimElemTime(30) > 0 && var(10) = 2
y = 0.5859375

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 6
y = 0

[State 1200, HitDef (Front)]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 7
trigger2 = (AnimElem = 13 || AnimElem = 19) && var(10)
trigger3 = AnimElem = 25 && var(10) = 2
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)))), ifElse(var(10) = 2, 14, ifElse(var(10) = 1, 13, 12))
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6.70391061453, -5
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef (Back)]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 10
trigger2 = (AnimElem = 16 || AnimElem = 22) && var(10)
trigger3 = AnimElem = 28 && var(10) = 2
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)))), ifElse(var(10) = 2, 14, ifElse(var(10) = 1, 13, 12))
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 6.70391061453, -5
ground.cornerPush.velOff = 0
guard.velocity = 11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 6.70391061453, -5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -45), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(11) >= 0 && !var(10)
trigger2 = AnimElemTime(23) >= 0 && var(10) = 1
trigger3 = AnimElemTime(29) >= 0 && var(10) = 2
moveType = I

[State 1200, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1205


;Landing
[StateDef 1205]
type = S
anim = 1205 + 10000 * (var(40) = [1, 2])
physics = N
moveType = I
velSet = 0, 0

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



;=====================<TATSUMAKI SENPUKYAKU (EVIL)>==========================
[StateDef 1210]
type = S
physics = N
moveType = A
anim = 1210 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
faceP2 = 1

[state 1210, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[state 1210, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 0

[state 1210, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1210, ifElse(var(10) = 1, 1211, 1212)) + 10000 * (var(40) = [1, 2])

[state 1210, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1200, 0 + 10 * var(40)
channel = 0

[state 1210, Jump Sound]
type = PlaySnd
trigger1 = !Time
value = 40, 0
channel = 1

[state 1210, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 9
trigger3 = AnimElem = 12 && var(10)
trigger4 = AnimElem = 15 && var(10)
trigger5 = AnimElem = 18 && var(10)
trigger6 = AnimElem = 21 && var(10)
trigger7 = AnimElem = 24 && var(10)
trigger8 = AnimElem = 27 && var(10)
trigger9 = AnimElem = 30 && var(10) = 2
trigger10 = AnimElem = 33 && var(10) = 2
value = 1, 5

[state 1210, Dust Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tatsumaki Senpukyaku Dust"
posType = P1
ownPal = 1

[state 1210, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = !Time
stateType = A
physics = N

[state 1210, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(var(10) = 2, 4.18994413408, ifElse(var(10) = 1, 3.49162011173, 2.79329608939))
y = -5

[state 1210, VelAdd]
type = VelAdd
trigger1 = Time > 0 && AnimElemTime(6) < 0
trigger2 = AnimElemTime(12) > 0 && !var(10)
trigger3 = AnimElemTime(30) > 0 && var(10) = 1
trigger4 = AnimElemTime(36) > 0 && var(10) = 2
y = 0.5859375

[state 1210, VelSet]
type = VelSet
trigger1 = AnimElem = 6
y = 0

[state 1210, HitDef (Front)]
type = HitDef
triggerAll = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 7
trigger2 = (AnimElem = 13 || AnimElem = 19 || AnimElem = 25) && var(10)
trigger3 = AnimElem = 31 && var(10) = 2
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.67597765363, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.67597765363, -7.1875
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[state 1210, HitDef (Back)]
type = HitDef
triggerAll = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 10
trigger2 = (AnimElem = 16 || AnimElem = 22 || AnimElem = 28) && var(10)
trigger3 = AnimElem = 34 && var(10) = 2
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 1.67597765363, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = 11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 1.67597765363, -7.1875
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -45), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[state 1210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(11) >= 0 && !var(10)
trigger2 = AnimElemTime(29) >= 0 && var(10) = 1
trigger3 = AnimElemTime(35) >= 0 && var(10) = 2
moveType = I

[state 1210, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1205



;=====================<EX TATSUMAKI SENPUKYAKU>==========================
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
var(25) = 30

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 6, -72
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1230, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 1230, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3200, 0 + 10 * var(40)
channel = 0

[State 1230, Jump Sound]
type = PlaySnd
trigger1 = !Time
value = 40, 0
channel = 1

[State 1230, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 9
trigger3 = AnimElem = 12
trigger4 = AnimElem = 15
trigger5 = AnimElem = 18
value = 1, 5

[State 1230, Dust Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tatsumaki Senpukyaku Dust"
posType = P1
ownPal = 1

[State 1230, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 3205
ID = 3205
name = "Shinku Tatsumaki Senpukyaku Dust"
posType = P1
pos = 0, -ceil(Pos Y)
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1230, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = !Time
stateType = A
physics = N

[State 1230, VelSet]
type = VelSet
trigger1 = !Time
x = 5.58659217877
y = -3.65234375

[State 1230, VelAdd]
type = VelAdd
trigger1 = Time > 0 && AnimElemTime(6) < 0
y = 0.48828125

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElem = 6
y = 0

[State 1230, VelAdd]
type = VelSet
trigger1 = AnimElem = 21
y = 0.15625

[State 1230, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(21) > 0
y = 0.5859375

[State 1230, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(21) < 0
value = 0
ignoreHitPause = 1

[State 1230, HitDef: Forwards]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 7 || AnimElem = 13
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 11.0509440309, 0
ground.cornerPush.velOff = 0
guard.velocity = 11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 4.46927374302, -2.5
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
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, HitDef: Backwards]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 10 || AnimElem = 16
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Hard
fall.animType = Hard
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
air.velocity = -4.46927374302, -2.5
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
sparkXY = -10 + 0 * (var(35) := -45), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, HitDef: Final]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 19
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
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
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -70
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
value = 1235


;Landing
[StateDef 1235]
type = S
anim = 1205 + 10000 * (var(40) = [1, 2])
physics = N
moveType = I
velSet = 0, 0

[State 1235, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1235, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1235, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 1235, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<AIRBORNE TATSUMAKI SENPUKYAKU>==========================
[StateDef 1250]
type = A
physics = N
moveType = A
anim = 1250 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)

[State 1250, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1250, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 2

[State 1250, VarAdd]
type = VarAdd
trigger1 = !Time && vel y > 0
var(10) = 10

[State 1250, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 2 + 10 * var(40)
channel = 0

[State 1250, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 10
trigger4 = AnimElem = 13
value = 1, 5

[State 1250, VelSet]
type = VelAdd
trigger1 = !Time && var(10) < 10
x = ifElse(var(10) % 10 = 2, 2.23463687151, ifElse(var(10) % 10 = 1, 1.67597765363, 1.11731843575)) * ifElse(vel x < 0, -1, 1)

[State 1250, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = ifElse(AnimElemTime(22) > 0 || var(10) >= 10, 0.48828125, 0.1953125)

[State 1250, HitDef (Front)]
type = HitDef
triggerAll = !var(16) && (var(15) < ifElse(var(40) = 1, 3, 1) || var(20))
trigger1 = AnimElem = 5 || AnimElem = 11
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(40) = 1, 42, 56) < 7, 7, fvar(11) * ifElse(var(40) = 1, 42, 56))), ifElse(var(40) = 1, 7, 8)
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -ifElse(var(40) = 1, 1.67597765363, 6.70391061453), -ifElse(var(40) = 1, 7.1875, 5)
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -ifElse(var(40) = 1, 1.67597765363, 6.70391061453), -ifElse(var(40) = 1, 7.1875, 5)
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = ifElse(var(40) = 1, 0.537109375, 0.5126953125)
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1250, HitDef (Back)]
type = HitDef
triggerAll = !var(16) && (var(15) < ifElse(var(40) = 1, 3, 1) || var(20))
trigger1 = AnimElem = 8 || AnimElem = 14
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(40) = 1, 42, 56) < 7, 7, fvar(11) * ifElse(var(40) = 1, 42, 56))), ifElse(var(40) = 1, 7, 9)
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(40) = 1, 1.67597765363, 6.70391061453), -ifElse(var(40) = 1, 7.1875, 5)
ground.cornerPush.velOff = 0
guard.velocity = 11.0509440309
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(40) = 1, 1.67597765363, 6.70391061453), -ifElse(var(40) = 1, 7.1875, 5)
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = ifElse(var(40) = 1, 0.537109375, 0.5126953125)
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -45), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(15) >= 0
moveType = I

[State 1250, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1255


;Landing
[StateDef 1255]
type = S
anim = 1255 + 10000 * (var(40) = [1, 2])
physics = N
moveType = I
velSet = 0, 0

[State 1255, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1255, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1255, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 4

[State 1255, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1



;=====================<AIRBORNE TATSUMAKI SENPUKYAKU (CLASSIC)>==========================
[StateDef 1260]
type = A
physics = N
moveType = A
anim = 1260 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)

[State 1260, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1260, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || P2Dist x > 235 || Random < 333), 2, ifElse(P2Dist x > 170, 1, 0))

[State 1260, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 2 + 10 * var(40)
channel = 0

[State 1260, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 10
value = 1, 5

[State 1260, VelSet]
type = VelAdd
trigger1 = AnimElem = 2
x = ifElse(sysvar(1) < 0, -5.58659217877, 5.58659217877)

[State 1260, VelAdd]
type = VelAdd
trigger1 = Time > 11 && !var(10)
trigger2 = Time > 19 && var(10) = 1
trigger3 = Time > 27 && var(10) = 2
y = 0.5859375

[State 1260, HitDef (Front)]
type = HitDef
trigger1 = !var(16) && (var(15) < ifElse(var(40) = 1, 3, 1) || var(20))
trigger1 = AnimElem = 5 || AnimElem = 11
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(40) = 1, 42, 56) < 7, 7, fvar(11) * ifElse(var(40) = 1, 42, 56))), ifElse(var(40) = 1, 7, 8)
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -ifElse(var(40) = 1, 1.67597765363, 6.70391061453), -ifElse(var(40) = 1, 7.1875, 5)
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -ifElse(var(40) = 1, 1.67597765363, 6.70391061453), -ifElse(var(40) = 1, 7.1875, 5)
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = ifElse(var(40) = 1, 0.537109375, 0.5126953125)
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1260, HitDef (Back)]
type = HitDef
trigger1 = !var(16) && (var(15) < ifElse(var(40) = 1, 3, 1) || var(20))
trigger1 = AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(40) = 1, 42, 56) < 7, 7, fvar(11) * ifElse(var(40) = 1, 42, 56))), ifElse(var(40) = 1, 7, 8)
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(40) = 1, 1.67597765363, 6.70391061453), -ifElse(var(40) = 1, 7.1875, 5)
ground.cornerPush.velOff = 0
guard.velocity = 11.0509440309
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(40) = 1, 1.67597765363, 6.70391061453), -ifElse(var(40) = 1, 7.1875, 5)
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = ifElse(var(40) = 1, 0.537109375, 0.5126953125)
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -45), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1260, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1265


;Landing
[StateDef 1265]
type = S
anim = 1265 + 10000 * (var(40) = [1, 2])
physics = N
moveType = I
velSet = 0, 0

[State 1265, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1265, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1265, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 4

[State 1265, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX AIRBORNE TATSUMAKI SENPUKYAKU>==========================
[StateDef 1280]
type = A
physics = N
moveType = A
anim = 1280
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500

[State 1280, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1280, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1280, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 24

[State 1280, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -80
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1280, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1280, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 1280, Voice]
type = PlaySnd
trigger1 = !Time
value = 3200, 0 + 10 * var(40)
channel = 0

[State 1280, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 10
trigger4 = AnimElem = 13
trigger5 = AnimElem = 16
value = 1, 5

[State 1280, VelSet]
type = VelSet
trigger1 = !Time
y = -4.6875

[State 1280, VelAdd]
type = VelAdd
trigger1 = Time > 0 && AnimElemTime(10) < 0
y = 0.390625

[State 1280, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(18) >= 0
y = 0.5859375

[State 1280, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(18) < 0
value = 0
ignoreHitPause = 1

[State 1280, HitDef: Forwards]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 5 || AnimElem = 11
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 4.46927374302, -2.5
ground.cornerPush.velOff = 0
guard.velocity = 11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 4.46927374302, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -71
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1280, HitDef: Backwards]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 8 || AnimElem = 14
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.46927374302, -2.5
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -45), var(36) := -71
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1280, HitDef: Final]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 17
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 8, 8
guard.pauseTime = 8, 8
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6.70391061453, -5
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -71
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1280, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(18) >= 0
moveType = I

[State 1280, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1255



;=====================<JODAN SOKUTO GERI>==========================
[StateDef 1300]
type = S
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
faceP2 = 1

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((EnemyNear, GetHitVar(HitTime) >= ifElse(P2MoveType = H, 17, 15)), 2, ifElse((EnemyNear, GetHitVar(HitTime) >= ifElse(P2MoveType = H, 14, 12)), 1, 0))

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1300, ifElse(var(10) = 1, 1301, 1302))

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, var(10) + 10 * var(40)
channel = 0

[State 1300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 5
channel = 1

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = ifElse(var(10) = 2, 7.82122905028, ifElse(var(10) = 1, 6.14525139665, 4.46927374302))

[State 1300, VelSet]
type = VelAdd
trigger1 = AnimElemTime(2) > 0 && vel x > 0
x = -0.52374301676

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 8

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
x = 12

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 11
x = 7

[State 1300, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 105, ifElse(var(10) = 1, 98, 91)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 105, ifElse(var(10) = 1, 98, 91)))), ifElse(var(10) = 2, 15, ifElse(var(10) = 1, 14, 13))
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
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
ground.velocity = -8.93854748603, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -7.65065355984
guard.cornerPush.velOff = 0
air.velocity = -8.93854748603, -5.78125
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 0, 1300, ifElse(var(10) = 1, 1301, 1302))
elem = 7
ignoreHitPause = 1

[State 1300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX JODAN SOKUTO GERI>==========================
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
var(25) = 21

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -7, -66
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1330, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 1330, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 2 + 10 * var(40)
channel = 0

[State 1330, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 5
channel = 3

[State 1330, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 7.82122905028

[State 1330, VelSet]
type = VelAdd
trigger1 = AnimElemTime(2) > 0 && vel x > 0
x = -0.52374301676

[State 1330, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 1330, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
x = 5

[State 1330, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 8

[State 1330, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
x = 12

[State 1330, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 11
x = 7

[State 1330, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
ID = 1330
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 13
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
ground.velocity = -8.93854748603, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -7.65065355984
guard.cornerPush.velOff = 0
air.velocity = -8.93854748603, -5.78125
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1330, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= 10
value = 1330
elem = 7
ignoreHitPause = 1

[State 1330, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(53) && NumTarget(1330)
var(15) = 0

[State 1330, EX Jodan Sokuto Geri Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1330)
var(53) = 1
persistent = 0

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
value = 1345
ID = 1330
ignoreHitPause = 1

[State 1330, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1330, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<HIT BY EX JODAN SOKUTO GERI>=============================
;Being Launched
[StateDef 1345]
type = A
moveType = H
physics = N
velSet = 0,0

[State 1715, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5012

[State 1715, End]
type = ChangeState
trigger1 = HitShakeOver
value = 1346


;Heading Towards Wall
[StateDef 1346]
type = A
moveType = H
physics = N

[State 1346, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 1346, Gravity]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel) * 0.67

[State 1346, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = (vel y < 0), 0
ignoreHitPause = 1

[State 1346, ScreenBound]
type = ScreenBound
triggerAll = NumEnemy
trigger1 = pos x > -40 && Enemy, pos x > -40
trigger2 = pos x < 40 && Enemy, pos x < 40
value = 1
moveCamera = 1, 0

[State 1346, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1346, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5900)
value = 5900

[State 1346, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5900)
trigger1 = AnimElemTime(AnimElemNo(0) + 1) = 0
value = 5012
elem = AnimElemNo(0)

[State 1346, Bounce Off Wall]
type = ChangeState
trigger1 = Time >= 4
trigger1 = BackEdgeBodyDist <= 0 || FrontEdgeBodyDist <= 0
value = 1347

[State 1346, End]
type = SelfState
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;Impacting Wall
[StateDef 1347]
type = A
moveType = H
physics = N

[State 1347, Turn]
type = Turn
trigger1 = !Time
trigger1 = FrontEdgeDist < BackEdgeDist

[State 1347, PosAdd]
type = PosAdd
trigger1 = 1
x = -BackEdgeBodyDist

[State 1347, PosFreeze]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1347, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

[State 1347, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1347, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5901)
value = 5901

[State 1347, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5901)
value = 5000

[State 1347, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,0

[State 1347, Hitting the Wall FX]
type = Explod
trigger1 = !Time
anim = F72
pos = 0, floor(ScreenPos y) - 50
posType = Back
sprPriority = 3

[State 1347, End]
type = ChangeState
trigger1 = Time >= 4
value = 1348


;Bouncing Off Wall
[Statedef 1348]
type = A
moveType = H
physics = N

[State 1348, Turn]
type = Turn
trigger1 = !Time

[State 1348, Gravity]
type = VelAdd
trigger1 = Time
y = 0.5

[State 1348, VelSet]
type = VelSet
trigger1 = !Time
x = ((EnemyNear, pos x - pos x) * Facing + 40) / 36.0
y = (pos y + 0.5 * 0.4850 * 36 ** 2) / -36.0

[State 1348, VelSet]
type = VelSet
trigger1 = !Time
trigger1 = vel x != [-9, 0]
x = ifElse(vel x < -9, -9, 0)

[State 1348, Turn]
type = Turn
trigger1 = !Time && AuthorName = "Moku"

[State 1348, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5902)
value = 5902

[State 1348, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5902)
value = ifElse(SelfAnimExist(5051), 5051, 5030)

[State 1348, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 1348, ChangeAnim]
type = ChangeAnim
trigger1 = vel y > -3 && Anim = 5051 && SelfAnimExist(5061)
value = 5061

[State 1348, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

[State 1348, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 1348, End]
type = SelfState
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100



;=====================<RYUSOKYAKU>==========================
[StateDef 1400]
type = S
physics = N
moveType = A
anim = 1400 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
faceP2 = 1

[State 1400, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1400, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2MoveType != H && EnemyNear, GetHitVar(HitTime) >= 15 && Random > 500, 2, 1)

[State 1400, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1400, ifElse(var(10) = 1, 1401, 1402)) + 10000 * (var(40) = [1, 2])

[State 1400, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, var(10) + 10 * var(40)
channel = 0

[State 1400, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1, 5
channel = 1

[State 1400, Slam Sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 196, 1
channel = 3

[State 1400, EnvShake]
type = EnvShake
trigger1 = AnimElem = 10
time = 14
ampl = -4
freq = 120

[State 1400, Impact Dust 1]
type = Null; Helper
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = 45, 0
facing = -1
ownPal = 1

[State 1400, Impact Dust 2]
type = Explod
trigger1 = AnimElem = 10
anim = 8105
sprPriority = -3
posType = P1
pos = 45, 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1400, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
x = 6

[State 1400, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
x = 8

[State 1400, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = 6

[State 1400, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 5.58659217877

[State 1400, VelSet]
type = VelAdd
trigger1 = AnimElemTime(6) > 0 && AnimElemTime(10) < 0
x = -0.17458100558

[State 1400, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 1400, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 10 && var(10) != 2
ID = 1400
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 1, 77, 70) < 7, 7, fvar(11) * ifElse(var(10) = 1, 77, 70))), ifElse(var(10) = 1, 11, 10)
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
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
ground.velocity = -7.65065355984, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.65065355984
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, 5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -2
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 10 && var(10) = 2
ID = 1400
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 12
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
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
ground.velocity = -1.11731843575, 5
ground.cornerPush.velOff = 0
guard.velocity = -7.65065355984
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, 5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -2
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
trigger1 = (Target(1400), StateType = A) || var(10) = 2
value = ifElse(Target(1400), StateType = A, 5425, 5420)
ID = 1400
ignoreHitPause = 1

[State 1400, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 0, 1400, ifElse(var(10) = 1, 1401, 1402)) + 10000 * (var(40) = [1, 2])
elem = 11
ignoreHitPause = 1

[State 1400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 1400, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<RYUSOKYAKU (SHADOW)>==========================
[StateDef 1410]
type = S
physics = N
moveType = A
anim = 1410 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
faceP2 = 1

[State 1410, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1410, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElsE(EnemyNear, GetHitVar(HitTime) >= ifElse(P2MoveType = H, 21, 17), 2, ifElse(EnemyNear, GetHitVar(HitTime) >= ifElse(P2MoveType = H, 17, 15), 1, 0))

[State 1410, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1410, ifElse(var(10) = 1, 1411, 1412)) + 10000 * (var(40) = [1, 2])

[State 1410, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1400, 0 + 10 * var(40)
channel = 0

[State 1410, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1, 5
channel = 1

[State 1410, Slam Sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 196, 1
channel = 3

[State 1410, EnvShake]
type = EnvShake
trigger1 = AnimElem = 10
time = 14
ampl = -4
freq = 120

[State 1410, Impact Dust 1]
type = Null; Helper
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = 45, 0
facing = -1
ownPal = 1

[State 1410, Impact Dust 2]
type = Explod
trigger1 = AnimElem = 10
anim = 8105
sprPriority = -3
posType = P1
pos = 45, 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1410, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
x = 6

[State 1410, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
x = 8

[State 1410, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = 6

[State 1410, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 4.46927374302

[State 1410, VelSet]
type = VelAdd
trigger1 = AnimElemTime(6) > 0 && AnimElemTime(10) < 0
x = -0.17458100558

[State 1410, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 1410, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 10
ID = 1410
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)))), ifElse(var(10) = 2, 12, ifElse(var(10) = 1, 11, 10))
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
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
guard.hitTime = 12
guard.slideTime  = 12
air.hitTime = 120
ground.velocity = -ifElse(var(10) = 2, 4.2503630888, ifElse(var(10) = 1, 7.65065355984, 11.0509440309)), 0
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, 5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -2
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1410, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1410) > 1
ID = 1410
keepOne = 1
excludeID = 1410
ignoreHitPause = 1

[State 1410, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1410)
trigger1 = !(Target(1410), Time)
trigger1 = (Target(1410), StateType = A)
value = 5425
ID = 1410
ignoreHitPause = 1

[State 1410, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 0, 1410, ifElse(var(10) = 1, 1411, 1412)) + 10000 * (var(40) = [1, 2])
elem = 11
ignoreHitPause = 1

[State 1410, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 1410, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX RYUSOKYAKU (SHADOW)>==========================
[StateDef 1440]
type = S
physics = N
moveType = A
anim = 1440 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1440, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1440, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1440, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 21

[State 1440, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -45, -70
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1440, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1440, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 1440, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1400, 0 + 10 * var(40)
channel = 0

[State 1440, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1, 5
channel = 1

[State 1440, Slam Sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 196, 1
channel = 5

[State 1440, EnvShake]
type = EnvShake
trigger1 = AnimElem = 10
time = 14
ampl = -4
freq = 120

[State 1440, Impact Dust 1]
type = Null; Helper
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = 45, 0
facing = -1
ownPal = 1

[State 1440, Impact Dust 2]
type = Explod
trigger1 = AnimElem = 10
anim = 8105
sprPriority = -3
posType = P1
pos = 45, 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1440, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
x = 6

[State 1440, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
x = 8

[State 1440, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = 6

[State 1440, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 4.46927374302

[State 1440, VelSet]
type = VelAdd
trigger1 = AnimElemTime(6) > 0 && AnimElemTime(10) < 0
x = -0.17458100558

[State 1440, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 1440, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 10
ID = 1440
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 15
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
guard.hitTime = 12
guard.slideTime  = 12
air.hitTime = 120
ground.velocity = -1.11731843575, 5
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, 5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -2
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1440, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1440) > 1
ID = 1440
keepOne = 1
excludeID = 1440
ignoreHitPause = 1

[State 1440, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1440)
trigger1 = !(Target(1440), Time)
value = ifElse(Target(1440), StateType = A, 5425, 5420)
ID = 1440
ignoreHitPause = 1

[State 1440, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) <= 0
trigger1 = HitPauseTime <= 10
value = 1440 + 10000 * (var(40) = [1, 2])
elem = 11
ignoreHitPause = 1

[State 1440, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 1440, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SHADOW HADOKEN>=============================
[StateDef 1500]
type = S
physics = N
moveType = A
anim = 1500 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
faceP2 = 1

[State 1500, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1500, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((EnemyNear, GetHitVar(HitTime) >= 16), 2, ifElse((EnemyNear, GetHitVar(HitTime) >= 14), 1, 0))

[State 1500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1500, ifElse(var(10) = 1, 1501, 1502)) + 10000 * (var(40) = [1, 2])

[State 1500, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 0 + 10 * var(40)
channel = 0

[State 1500, Hadoken Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 1000, 1
channel = 1

[State 1500, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 11.1731843575

[State 1500, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(5) < 0
x = -0.17458100558

[State 1500, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 1500, Projectile]
type = Helper
trigger1 = AnimElemTime(5) = 1 && !(var(50) && var(10) = 2)
helperType = Normal
stateNo = 1505
ID = 1505
name = "Shadow Hadoken Projectile"
posType = P1
pos = 78, -64
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1550, Projectile]
type = Helper
trigger1 = AnimElemTime(5) = 1 && var(50) && var(10) = 2
helperType = Normal
stateNo = 1555
ID = 1555
name = "Shadow Hadoken Projectile"
posType = P1
pos = 78, -64
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1500, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 30, 0

[State 1500, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SHADOW HADOKEN>=============================
[StateDef 1530]
type = S
physics = N
moveType = A
anim = 1530 + 10000 * (var(40) = [1, 2])
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
pos = -14, -68
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1530, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1530, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 1530, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 0 + 10 * var(40)
channel = 0

[State 1530, Hadoken Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 1000, 1
channel = 1

[State 1530, Projectile]
type = Helper
trigger1 = AnimElemTime(5) = 1
helperType = Normal
stateNo = 1585
ID = 1585
name = "Shadow Hadoken Projectile"
posType = P1
pos = 78, -64
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1530, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 30, 0

[State 1530, ChangeState]
type = ChangeAnim
trigger1 = NumHelper(1535)
trigger1 = (Helper(1535), NumTarget(1535)) && (Helper(1535), MoveHit)
value = 1540 + 10000 * (var(40) = [1, 2])
elem = AnimElemNo(0)
persistent = 0

[State 1530, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<AIRBORNE SHADOW HADOKEN>==========================
[StateDef 1550]
type = A
physics = N
moveType = A
anim = 1550 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)

[State 1550, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = 0

[State 1550, PosFreeze]
type = PosFreeze
trigger1 = AnimElemTime(8) < 4

[State 1550, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 0 + 10 * var(40)
channel = 0

[State 1550, Airborne Hadoken Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 1000, 1
channel = 1

[State 1550, Projectile]
type = Helper
trigger1 = AnimElemTime(5) = 1
helperType = Normal
stateNo = 1555
ID = 1555
name = "Airborne Hadoken Projectile"
posType = P1
pos = 78, -84
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1550, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 45, 0

[State 1550, Gravity]
type = Gravity
trigger1 = AnimElemTime(8) > 3

[State 1550, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1551


;Landing
[StateDef 1551]
type = S
anim = 1551 + 10000 * (var(40) = [1, 2])
physics = N
moveType = I
velSet = 0, 0

[State 1551, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1551, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1551, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 4

[State 1551, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1



;=====================<AIRBORNE SHADOW HADOKEN>==========================
[StateDef 1580]
type = A
physics = N
moveType = A
anim = 1550 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1
powerAdd = -500

[State 1580, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1580, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1580, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 21

[State 1580, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -14, -88
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1580, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1580, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 1580, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = 0

[State 1580, PosFreeze]
type = PosFreeze
trigger1 = AnimElemTime(8) < 4

[State 1580, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 0 + 10 * var(40)
channel = 0

[State 1580, Airborne Hadoken Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 1000, 1
channel = 1

[State 1580, Projectile]
type = Helper
trigger1 = AnimElemTime(5) = 1
helperType = Normal
stateNo = 1585
ID = 1585
name = "Airborne Hadoken Projectile"
posType = P1
pos = 78, -84
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1580, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 45, 0

[State 1580, Gravity]
type = Gravity
trigger1 = AnimElemTime(8) > 3

[State 1580, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1551



;========================<SEKIA GOSHOHA>=============================
[StateDef 1600]
type = S
physics = N
moveType = A
anim = 1600 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
faceP2 = 1

[State 1600, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1600, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1600, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1600, ifElse(var(10) = 1, 1601, 1602)) + 10000 * (var(40) = [1, 2])

[State 1600, Aura]
type = Explod
trigger1 = !Time
anim = 1603
ID = 1603
bindTime = -1
removeTime = -1
sprPriority = -1
posType = P1
pos = 0, 0
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5, 0.5
ownPal = 1

[State 1603, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 7
ID = 1603

[State 1600, Voice]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1050, 0 + 10 * var(40)
channel = 0

[State 1600, Sekia Goshoha Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1050, 1
channel = 5

[State 1600, Hadoken Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(11) = 1
value = 1000, 1
channel = 1

[State 1600, Projectile]
type = Helper
trigger1 = AnimElemTime(11) = 1
helperType = Normal
stateNo = 1605
ID = 1605
name = "Sekia Goshoha Projectile"
posType = P1
pos = 78, -64
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1600, Width]
type = Width
trigger1 = AnimElemTime(11) = 0
value = 45, 0

[State 1600, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX SEKIA GOSHOHA>=============================
[StateDef 1630]
type = S
physics = N
moveType = A
anim = 1630 + 10000 * (var(40) = [1, 2])
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
var(25) = 34

[State 1630, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -9, -56
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1630, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1630, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 1630, Aura]
type = Explod
trigger1 = !Time
anim = 1603
ID = 1603
bindTime = -1
removeTime = -1
sprPriority = -1
posType = P1
pos = 0, 0
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5, 0.5
ownPal = 1

[State 1630, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 7
ID = 1603

[State 1630, Voice]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1050, 0 + 10 * var(40)
channel = 0

[State 1630, Sekia Goshoha Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1050, 1
channel = 5

[State 1630, Hadoken Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(11) = 1
value = 1000, 1
channel = 1

[State 1630, Projectile]
type = Helper
trigger1 = AnimElemTime(11) = 1
helperType = Normal
stateNo = 1635
ID = 1635
name = "Sekia Goshoha Projectile"
posType = P1
pos = 78, -64
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1630, Width]
type = Width
trigger1 = AnimElemTime(11) = 0
value = 45, 0

[State 1630, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<KUREKIJIN>==========================
[StateDef 1700]
type = S
physics = N
moveType = A
anim = 1700 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
faceP2 = 1

[State 1700, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1700, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((EnemyNear, GetHitVar(HitTime) >= 16), 2, ifElse((EnemyNear, GetHitVar(HitTime) >= 14), 1, 0))

[State 1700, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1700, ifElse(var(10) = 1, 1701, 1702)) + 10000 * (var(40) = [1, 2])

[State 1700, Jump sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40, 0
channel = 5

[State 1700, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Kurekijin Dust"
posType = P1
ownPal = 1

[State 1700, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1700, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = ifElse(var(10) = 2, 6.70391061453, ifElse(var(10) = 1, 6.42458100559, 6.14525139665))
y = -3.75

[State 1700, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = 0.390625

[State 1700, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1700, 0 + 10 * var(40)
channel = 0

[State 1700, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 5
channel = 1

[State 1700, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 7
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10) = 1, 63, 56)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10) = 1, 63, 56)))), ifElse(var(10) = 2, 10, ifElse(var(10) = 1, 9, 8))
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.67597765363, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.67597765363, -7.1875
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1700, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1700, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1705


;Landing
[StateDef 1705]
type = S
anim = 1705 + 10000 * (var(40) = [1, 2])
physics = N
moveType = I
velSet = 0, 0

[State 1705, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1705, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1705, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 1705, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX KUREKIJIN>==========================
[StateDef 1730]
type = S
physics = N
moveType = A
anim = 1730 + 10000 * (var(40) = [1, 2])
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
var(25) = 12

[State 1730, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -72
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1730, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1730, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 1730, Jump sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40, 0
channel = 5

[State 1730, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Kurekijin Dust"
posType = P1
ownPal = 1

[State 1730, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1730, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 6.70391061453
y = -3.75

[State 1730, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = 0.390625

[State 1730, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1700, 0 + 10 * var(40)
channel = 0

[State 1730, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 5
channel = 1

[State 1730, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 = AnimElem = 7
ID = 1730
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 10
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
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
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1730, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(54) && NumTarget(1730)
var(15) = 0

[State 1730, EX Kurekijin Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1730)
var(54) = 1
persistent = 0

[State 1730, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1730, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1705



;=====================<AIRBORNE KUREKIJIN>==========================
[StateDef 1750]
type = A
physics = N
moveType = A
anim = 1750 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)

[State 1750, Voice]
type = PlaySnd
trigger1 = !Time
value = 1700, 0 + 10 * var(40)
channel = 0

[State 1750, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 5
channel = 1

[State 1750, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 3.35195530726
y = ifElse(vel y < -5, -5, vel y)

[State 1750, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 1.11731843575

[State 1750, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) > 0
y = 0.48828125

[State 1750, HitDef (Front)]
type = HitDef
triggerAll = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 5
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.67597765363, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.67597765363, -7.1875
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1750, HitDef (Back)]
type = HitDef
triggerAll = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.68937069644, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.67597765363, -7.1875
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
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
sparkXY = -10 + 0 * (var(35) := -45), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1750, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1750, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1755


;Landing
[StateDef 1755]
type = S
anim = 1755 + 10000 * (var(40) = [1, 2])
physics = N
moveType = I
velSet = 0, 0

[State 1755, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1755, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1755, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 4

[State 1755, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1



;=====================<EX AIRBORNE KUREKIJIN>==========================
[StateDef 1780]
type = A
physics = N
moveType = A
anim = 1750 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1
powerAdd = -500

[State 1780, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1780, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1780, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 16

[State 1780, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -72
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1780, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1780, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 1780, Voice]
type = PlaySnd
trigger1 = !Time
value = 1700, 0 + 10 * var(40)
channel = 0

[State 1780, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 5
channel = 1

[State 1780, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 5.58659217877
y = ifElse(vel y < -5, -5, vel y)

[State 1780, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 1.11731843575

[State 1780, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) > 0
y = 0.48828125

[State 1780, HitDef (Front)]
type = HitDef
triggerAll = !var(16) && var(15) < 3
trigger1 = AnimElem = 5
ID = 1780
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -8.93854748603, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -8.93854748603, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1780, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(54) && NumTarget(1780)
var(15) = 0

[State 1780, EX Kurekijin Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1780)
var(54) = 1
persistent = 0

[State 1780, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1780) > 1
ID = 1780
keepOne = 1
excludeID = 1780
ignoreHitPause = 1

[State 1780, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1780)
trigger1 = !(Target(1780), Time)
value = 1345
ID = 1780
ignoreHitPause = 1

[State 1780, HitDef (Back)]
type = HitDef
triggerAll = !var(16) && var(15) < 3
trigger1 = AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.68937069644, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.67597765363, -7.1875
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
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
sparkXY = -10 + 0 * (var(35) := -45), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1780, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1780, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1755



;========================<ASHURA SENKU (FORWARDS)>=============================
[StateDef 2000]
type = S
physics = N
moveType = I
anim = 2000 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 2000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "a" || command = "rlsa" || command = "b || command = "rlsb" || command = "c" || command = "rlsc"), 1, 0)
var(10) = ifElse((NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)), 1, 0)

[State 2000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(Random > 750, 1, 0)

[State 2000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 1, 2001, 2000) + 10000 * (var(40) = [1, 2])

[State 2000, Voice]
type = PlaySnd
trigger1 = !Time
value = 710, 0 + 10 * var(40)
channel = 0

[State 2000, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2000, 1
channel = 1

[State 2000, Movement AfterImage]
type = AfterImage
trigger1 = !Time
time = 2
timeGap = 1
frameGap = 4
length = 9
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.9,0.9,0.9
trans = Add1

[State 2000, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(1) = 1
trigger2 = AnimElemTime(2) = 0
x = 2.23463687151

[State 2000, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(3) = 1
x = 3.35195530726

[State 2000, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(2) = 1
trigger2 = AnimElemTime(3) = 0
x = 5.58659217877

[State 2000, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(5) = 1
trigger2 = AnimElemTime(8) = 0
x = -2.23463687151

[State 2000, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(6) = 0
trigger2 = AnimElemTime(7) = 1
x = -3.35195530726

[State 2000, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(6) = 1
trigger2 = AnimElemTime(7) = 0
x = -5.58659217877

[State 2000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(10) < 0
value = SCA
time = 1

[State 2000, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0 && BackEdgeBodyDist > 0
value = 0

[State 2000, Enable Cross-Up]
type = Width
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 2
edge = -1, -1

[State 2000, VelSet]
type = VelSet
trigger1 = AnimElemTime(9) = 1
x = ifElse(var(10) = 1, 8.93854748603, 12.8491620112)

[State 2000, VelMul]
type = VelAdd
trigger1 = AnimElemTime(9) > 1 && AnimElemTime(10) < 0
x = ifElse(vel x >= 0, -0.26187150838, 0.26187150838)

[State 2000, Turn]
type = Turn
trigger1 = AnimElemTime(9) > 1 && AnimElemTime(10) < 0 && P2Dist X < 0

[State 2000, ChangeAnim]
type = ChangeAnim
trigger1 = AnimElemTime(9) > 1 && AnimElemTime(10) < 0 && (FrontEdgeBodydist <= 0 || BackEdgeBodyDist <= 0)
value = Anim
elem = 10

[State 2000, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 2000, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 52, 0

[State 2000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<ASHURA SENKU (BACKWARDS)>=============================
[StateDef 2010]
type = S
physics = N
moveType = I
anim = 2000 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 2010, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "a" || command = "rlsa" || command = "b || command = "rlsb" || command = "c" || command = "rlsc"), 1, 0)
var(10) = ifElse((NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)), 1, 0)

[State 2010, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(Random > 500, 1, 0)

[State 2010, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 1, 2001, 2000) + 10000 * (var(40) = [1, 2])

[State 2010, Voice]
type = PlaySnd
trigger1 = !Time
value = 710, 0 + 10 * var(40)
channel = 0

[State 2010, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2000, 1
channel = 1

[State 2010, Movement AfterImage]
type = AfterImage
trigger1 = !Time
time = 2
timeGap = 1
frameGap = 4
length = 9
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.9,0.9,0.9
trans = Add1

[State 2010, VelSet]
type = PosAdd
trigger1 = AnimElemTime(1) = 1
trigger2 = AnimElemTime(2) = 0
x = -2.23463687151

[State 2010, VelSet]
type = PosAdd
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(3) = 1
x = -3.35195530726

[State 2010, VelSet]
type = PosAdd
trigger1 = AnimElemTime(2) = 1
trigger2 = AnimElemTime(3) = 0
x = -5.58659217877

[State 2010, VelSet]
type = PosAdd
trigger1 = AnimElemTime(5) = 1
trigger2 = AnimElemTime(8) = 0
x = 2.23463687151

[State 2010, VelSet]
type = PosAdd
trigger1 = AnimElemTime(6) = 0
trigger2 = AnimElemTime(7) = 1
x = 3.35195530726

[State 2010, VelSet]
type = PosAdd
trigger1 = AnimElemTime(6) = 1
trigger2 = AnimElemTime(7) = 0
x = 5.58659217877

[State 2010, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(10) < 0
value = SCA
time = 1

[State 2010, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0 && BackEdgeBodyDist > 0
value = 0

[State 2010, Enable Cross-Up]
type = Width
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 2
edge = -1, -1

[State 2010, VelSet]
type = VelSet
trigger1 = AnimElemTime(9) = 1
x = -ifElse(var(10) = 1, 8.93854748603, 12.8491620112)

[State 2010, VelMul]
type = VelAdd
trigger1 = AnimElemTime(9) > 1 && AnimElemTime(10) < 0
x = ifElse(vel x >= 0, -0.26187150838, 0.26187150838)

[State 2010, Turn]
type = Turn
trigger1 = AnimElemTime(9) > 1 && AnimElemTime(10) < 0 && P2Dist X < 0

[State 2010, ChangeAnim]
type = ChangeAnim
trigger1 = AnimElemTime(9) > 1 && AnimElemTime(10) < 0 && (FrontEdgeBodydist <= 0 || BackEdgeBodyDist <= 0)
value = Anim
elem = 10

[State 2010, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 2010, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 52, 0

[State 2010, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SHADOW ASHURA SENKU (FORWARDS)>=============================
[StateDef 2020]
type = S
physics = N
moveType = I
anim = 2020 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 2020, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "a" || command = "rlsa" || command = "b || command = "rlsb" || command = "c" || command = "rlsc"), 1, 0)
var(10) = ifElse((NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)), 1, 0)

[State 2020, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(Random > 750, 1, 0)

[State 2020, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 1, 2021, 2020) + 10000 * (var(40) = [1, 2])

[State 2020, Voice]
type = PlaySnd
trigger1 = !Time
value = 2000, 5 + (Random % 2) + 10 * var(40)
channel = 0

[State 2020, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2000, 1
channel = 1

[State 2020, Movement AfterImage]
type = AfterImage
trigger1 = !Time
time = 2
timeGap = 1
frameGap = 4
length = 9
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.9,0.9,0.9
trans = Add1

[State 2020, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1

[State 2020, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0 && BackEdgeBodyDist > 0
value = 0

[State 2020, Enable Cross-Up]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 2
edge = -1, -1

[State 2020, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 1
x = ifElse(var(10) = 1, 8.93854748603, 6.98324022346)

[State 2020, VelMul]
type = VelAdd
trigger1 = AnimElemTime(3) > 1 && AnimElemTime(4) < 0
x = ifElse(vel x >= 0, -0.26187150838, 0.26187150838)

[State 2020, Turn]
type = Turn
trigger1 = AnimElemTime(3) > 1 && AnimElemTime(4) < 0 && P2Dist X < 0

[State 2020, ChangeAnim]
type = ChangeAnim
trigger1 = AnimElemTime(3) > 1 && AnimElemTime(4) < 0 && (FrontEdgeBodydist <= 0 || BackEdgeBodyDist <= 0)
value = Anim
elem = 4

[State 2020, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 2020, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 52, 0

[State 2020, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SHADOW ASHURA SENKU (BACKWARDS)>=============================
[StateDef 2030]
type = S
physics = N
moveType = I
anim = 2020 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 2030, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "a" || command = "rlsa" || command = "b || command = "rlsb" || command = "c" || command = "rlsc"), 1, 0)
var(10) = ifElse((NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)), 1, 0)

[State 2030, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(Random > 750, 1, 0)

[State 2030, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 1, 2021, 2020) + 10000 * (var(40) = [1, 2])

[State 2030, Voice]
type = PlaySnd
trigger1 = !Time
value = 2000, 5 + (Random % 2) + 10 * var(40)
channel = 0

[State 2030, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2000, 1
channel = 1

[State 2030, Movement AfterImage]
type = AfterImage
trigger1 = !Time
time = 2
timeGap = 1
frameGap = 4
length = 9
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.9,0.9,0.9
trans = Add1

[State 2030, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1

[State 2030, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0 && BackEdgeBodyDist > 0
value = 0

[State 2030, Enable Cross-Up]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 2
edge = -1, -1

[State 2030, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 1
x = -ifElse(var(10) = 1, 8.93854748603, 6.98324022346)

[State 2030, VelMul]
type = VelAdd
trigger1 = AnimElemTime(3) > 1 && AnimElemTime(4) < 0
x = ifElse(vel x >= 0, -0.26187150838, 0.26187150838)

[State 2030, Turn]
type = Turn
trigger1 = AnimElemTime(3) > 1 && AnimElemTime(4) < 0 && P2Dist X < 0

[State 2030, ChangeAnim]
type = ChangeAnim
trigger1 = AnimElemTime(3) > 1 && AnimElemTime(4) < 0 && (FrontEdgeBodydist <= 0 || BackEdgeBodyDist <= 0)
value = Anim
elem = 4

[State 2030, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 2030, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 52, 0

[State 2030, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<AIRBORNE ASHURA SENKU (FORWARDS)>=============================
[StateDef 2050]
type = A
physics = N
moveType = I
anim = 2050 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1

[State 2050, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "a" || command = "rlsa" || command = "b || command = "rlsb" || command = "c" || command = "rlsc"), 1, 0)
var(10) = ifElse((NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)), 1, 0)

[State 2050, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(Random > 500, 1, 0)

[State 2050, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 1, 2051, 2050) + 10000 * (var(40) = [1, 2])

[State 2050, Voice]
type = PlaySnd
trigger1 = !Time
value = 2000, 5 + (Random % 2) + 10 * var(40)
channel = 0

[State 2050, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2000, 1
channel = 1

[State 2050, Movement AfterImage]
type = AfterImage
trigger1 = !Time
time = 2
timeGap = 1
frameGap = 4
length = 9
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.9,0.9,0.9
trans = Add1

[State 2050, PosFreeze]
type = PosFreeze
trigger1 = AnimElemTime(3) < 0

[State 2050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1

[State 2050, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0 && BackEdgeBodyDist > 0
value = 0

[State 2050, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 1
x = ifElse(var(10) = 1, 7.54189944134, 5.58659217877)
y = 0

[State 2050, VelMul]
type = VelAdd
trigger1 = AnimElemTime(3) > 1 && AnimElemTime(4) < 0
x = ifElse(vel x >= 0, -0.26187150838, 0.26187150838)

[State 2050, ChangeAnim]
type = ChangeAnim
trigger1 = AnimElemTime(3) > 1 && AnimElemTime(4) < 0 && (FrontEdgeBodydist <= 0 || BackEdgeBodyDist <= 0)
value = Anim
elem = 4

[State 2050, Turn]
type = Turn
trigger1 = AnimElem = 4 && P2Dist X < 0

[State 2050, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 2050, Gravity]
type = Gravity
trigger1 = AnimElemTime(4) > 0

[State 2050, CtrlSet]
type = CtrlSet
trigger1 = AnimElemTime(4) >= 0
value = 1

[State 2050, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;========================<AIRBORNE ASHURA SENKU (BACKWARDS)>=============================
[StateDef 2060]
type = A
physics = N
moveType = I
anim = 2050 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1

[State 2060, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "a" || command = "rlsa" || command = "b || command = "rlsb" || command = "c" || command = "rlsc"), 1, 0)
var(10) = ifElse((NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)), 1, 0)

[State 2060, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(Random > 750, 1, 0)

[State 2060, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 1, 2051, 2050) + 10000 * (var(40) = [1, 2])

[State 2060, Voice]
type = PlaySnd
trigger1 = !Time
value = 2000, 5 + (Random % 2) + 10 * var(40)
channel = 0

[State 2060, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2000, 1
channel = 1

[State 2060, Movement AfterImage]
type = AfterImage
trigger1 = !Time
time = 2
timeGap = 1
frameGap = 4
length = 9
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.9,0.9,0.9
trans = Add1

[State 2060, PosFreeze]
type = PosFreeze
trigger1 = AnimElemTime(3) < 0

[State 2060, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1

[State 2060, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0 && BackEdgeBodyDist > 0
value = 0

[State 2060, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 1
x = -ifElse(var(10) = 1, 7.54189944134, 5.58659217877)
y = 0

[State 2060, VelMul]
type = VelAdd
trigger1 = AnimElemTime(3) > 1 && AnimElemTime(4) < 0
x = ifElse(vel x >= 0, -0.26187150838, 0.26187150838)

[State 2060, ChangeAnim]
type = ChangeAnim
trigger1 = AnimElemTime(3) > 1 && AnimElemTime(4) < 0 && (FrontEdgeBodydist <= 0 || BackEdgeBodyDist <= 0)
value = Anim
elem = 4

[State 2060, Turn]
type = Turn
trigger1 = AnimElem = 4 && P2Dist X < 0

[State 2060, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 2060, Gravity]
type = Gravity
trigger1 = AnimElemTime(4) > 0

[State 2060, CtrlSet]
type = CtrlSet
trigger1 = AnimElemTime(4) >= 0
value = 1

[State 2060, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;========================<PUNCH ZERO COUNTER>=============================
[StateDef 2900]
type = S
physics = N
moveType = A
anim = 2900 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 0

[State 2900, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100, 0 + 10 * var(40)
channel = 0

[State 2900, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 2900, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 2900, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 1
value = 40, 0
channel = 4

[State 2900, Dust Helper]
type = Helper
trigger1 = AnimElemTime(4) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 2
x = 6.70391061453
y = -8.75

[State 2900, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(4) > 2
x = -0.69832402234

[State 2900, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 2
y = 0.5859375

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Ground Hit 1]
type = HitDef
triggerAll = !var(16) && var(15) < 3
trigger1 = AnimElem = 2 && var(40) = 1
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
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
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
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
sparkXY = -10 + 0 * (var(35) := 22), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, Ground Hit 2]
type = HitDef
triggerAll = !var(16) && var(15) < ifElse(var(40) = 1, 3, 1)
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(40) = 1, 14, 42) < 7, 7, fvar(11) * ifElse(var(40) = 1, 14, 42))), 0
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
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
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
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, Air Hit]
type = HitDef
triggerAll = !var(16) && var(15) < ifElse(var(40) = 1, 3, 1)
trigger1 = AnimElem = 4 && !MoveContact && !MoveReversed && !var(40)
trigger2 = AnimElem = 4 && var(40) = 1
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(40) = 1, 14, 42) < 7, 7, fvar(11) * ifElse(var(40) = 1, 14, 42))), 0
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
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
anim = 2910 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 0

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 1

[State 2910, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
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
sparkXY = -10 + 0 * (var(35) := 73), var(36) := -5
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
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= 10
value = 2910 + 10000 * (var(40) = [1, 2])
elem = 4
ignoreHitPause = 1

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(5) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1