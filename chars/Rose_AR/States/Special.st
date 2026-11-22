; ________________________________________________
;| Rose by KarmaCharmeleon			|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;========================<SOUL SPARK>=============================
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
var(10) = ifElse((Random < 500 && P2BodyDist x >= 100), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1010, 1020))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 0
channel = 0

[State 1000, Soul Spark Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 1
channel = 1

[State 1000, Aura Explod 1]
type = Explod
trigger1 = AnimElem = 4
anim = 11000 + var(10) * 10
ID = 11000
sprPriority = 3
bindtime = -1
posType = P1
pos = -10, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(2) = IfElse(var(10) = 2, 6, ifElse(var(10) = 1, 5, 4))
value = 45, 0

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 1005
ID = 1005
name = "Soul Spark Projectile"
posType = P1
pos = 60, -65
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX SOUL SPARK>=============================
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
var(25) = 20

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 4, -80
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1030, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1030, 0
channel = 0

[State 1030, Soul Spark Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 1
channel = 3

[State 1030, Aura Explod 1]
type = Explod
trigger1 = AnimElem = 4
anim = 11020
ID = 11000
sprPriority = 3
bindtime = -1
posType = P1
pos = -10, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1030, Width]
type = Width
trigger1 = AnimElemTime(2) = 4
value = 45, 0

[State 1030, Projectile]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 1005
ID = 1035
name = "EX Soul Spark Projectile"
posType = P1
pos = 60, -65
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SOUL SPIRAL>=============================
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
;ifElse((command = "a" || command = "rlsa"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1120, ifElse(var(10) = 1, 1110, 1100))

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100, 0
channel = 0

[State 1100, Soul Spiral Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1100, 1
channel = 1

[State 1100, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, 0
channel = 1

[State 1100, Dust Helper]
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

[State 1100, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 3

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = ifElse(var(10) = 2, 6.25, ifElse(var(10) = 1, 3.75, 2.5))

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 0 && vel x > 0
x = -0.25

[State 1100, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1100, Aura Explod]
type = Explod
trigger1 = AnimElem = 1
anim = ifElse(var(10) = 2, 11120, ifElse(var(10) = 1, 11110, 11100))
ID = 11100
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1100, HitDef]
type = HitDef
trigger1 = !var(16) && ((var(15) < 1 + var(10)) || var(20))
ID = 1100
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 35, ifElse(var(10) = 1, 49, 91)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 35, ifElse(var(10) = 1, 49, 91)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5, -3.3203125
ground.cornerPush.velOff = 0
guard.velocity = -8.125
guard.cornerPush.velOff = 0
air.velocity = -5, -3.3203125
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
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -55
palFX.time = 30
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Contact Detect]
type = VarAdd
trigger1 = MoveContact = 1 && NumTarget && !var(20)
var(12) = 1

[State 1100, ChangeAnimElem]
type = ChangeAnim
trigger1 = !var(10) && var(12) = 1
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(9) <= 0
trigger2 = var(10) = 1 && var(12) = 2
trigger2 = AnimElemTime(7) >= 0 && AnimElemTime(11) <= 0
trigger3 = var(10) = 2 && var(12) = 3
trigger3 = AnimElemTime(8) >= 0 && AnimElemTime(13) <= 0
value = ifElse(var(10) = 2, 1120, ifElse(var(10) = 1, 1110, 1100))
elem = ifElse(var(10) = 2, 14, IfElse(var(10) = 1, 12, 10))
ignoreHitPause = 1

[State 1100, Flame Particle Timer Set]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
var(44) = 30
ignoreHitPause = 1
persistent = 0

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

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = !var(10)
trigger1 = AnimElemTime(10) >= 0
trigger2 = var(10) = 1
trigger2 = AnimElemTime(12) >= 0
trigger3 = var(10) = 2
trigger3 = AnimElemTime(14) >= 0
moveType = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX SOUL SPIRAL>=============================
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
var(25) = 16

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -30, -70
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1130, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
value = SCA
time = 1

[State 1130, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1130, 0
channel = 0

[State 1130, Soul Spiral Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1100, 1
channel = 3

[State 1130, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, 0
channel = 4

[State 1130, Dust Helper]
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

[State 1130, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 5

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 6.25

[State 1130, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 0 && vel x > 0
x = -0.25

[State 1130, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1130, Aura Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 11130
ID = 11100
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1130, HitDef]
type = HitDef
trigger1 = !var(16) && ((var(15) < 5) || var(20))
ID = 1100
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 12
guard.pauseTime = 4, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5, -3.3203125
ground.cornerPush.velOff = 0
guard.velocity = -8.125
guard.cornerPush.velOff = 0
air.velocity = -5, -3.3203125
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
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -55
palFX.time = 30
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Contact Detect]
type = VarAdd
trigger1 = MoveContact = 1 && NumTarget && !var(20)
var(12) = 1

[State 1130, ChangeAnimElem]
type = ChangeAnim
trigger1 = var(12) = 5
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(13) <= 0
value = 1130
elem = 14
ignoreHitPause = 1

[State 1130, Flame Particle Timer Set]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
var(44) = 30
ignoreHitPause = 1
persistent = 0

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

[State 1130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(14) >= 0
moveType = I

[State 1130, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SOUL REFLECT>=============================
[StateDef 1200]
type = S
physics = S
moveType = A
anim = 1200
ctrl = 0
velset = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "x" || command = "rlsx"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 2

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1200, ifElse(var(10) = 1, 1210, 1220))

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200, 0
channel = 0

[State 1200, Soul Reflect Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200, 1
channel = 1

[State 1200, LP Aura Explod]
type = Explod
trigger1 = !var(10)
trigger1 = !Time
anim = 11200
ID = 11200
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1200, MP/HP Aura Explod]
type = Explod
trigger1 = var(10)
trigger1 = AnimElem = 2
anim = ifElse(var(10) = 2, 11220, 11210)
ID = 11200
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1200, Projectile Reflector]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1205
ID = 1205
name = "Projectile Reflector"
posType = P1
pos = 0, 0
size.xScale = 0.5
size.yScale = 0.5
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1200, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 4
trigger1 = NumHelper(1205)
value = SCA, NP, SP, HP

[State 1200, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
ID = 1200
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10), 77, 70)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10), 77, 70)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = High
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5, -6.5625
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -5, -6.5625
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -38
palFX.time = 30
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(11) && NumTarget(1200)
var(15) = 0

[State 1200, VarAdd]
type = VarAdd
trigger1 = MoveHit && NumTarget(1200)
var(11) = 1
persistent = 0

[State 1200, Juggle Flag]
type = VarSet
trigger1 = var(11) = 2
var(16) = 1

[State 1200, Flame Particle Timer Set]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
var(44) = 30
ignoreHitPause = 1
persistent = 0

[State 1200, Flame Particles]
type = Helper
trigger1 = !NumHelper(8151)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8151
ID = 8151
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX SOUL REFLECT>=============================
[StateDef 1230]
type = S
physics = S
moveType = A
anim = 1230
ctrl = 0
velset = 0,0
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
var(25) = 15

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 5, -80
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1230, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1230, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1230, 0
channel = 0

[State 1230, Soul Reflect Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200, 1
channel = 3

[State 1230, EX Aura Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 11230
ID = 11200
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1230, Projectile Reflector]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1205
ID = 1235
name = "Projectile Reflector"
posType = P1
pos = 0, 0
size.xScale = 0.5
size.yScale = 0.5
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1230, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA, NP, SP, HP

[State 1230, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
ID = 1200
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 10, 12
guard.pauseTime = 10, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = High
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -1.875, -7.1875
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -1.875, -7.1875
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -38
palFX.time = 30
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(11) && NumTarget(1200)
var(15) = 0

[State 1230, VarAdd]
type = VarAdd
trigger1 = MoveHit && NumTarget(1200)
var(11) = 1
persistent = 0

[State 1230, Juggle Flag]
type = VarSet
trigger1 = var(11) = 2
var(16) = 1

[State 1230, Flame Particle Timer Set]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
var(44) = 30
ignoreHitPause = 1
persistent = 0

[State 1230, Flame Particles]
type = Helper
trigger1 = !NumHelper(8151)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8151
ID = 8151
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1230, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1230, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<SOUL THROW>==========================
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
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 1

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1320, ifElse(var(10) = 1, 1310, 1300))

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1300, 0
channel = 0

[State 1300, Soul Throw Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1300, 1
channel = 1

[State 1300, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 1300, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Soul Throw Dust"
posType = P1
ownPal = 1

[State 1300, Star FX]
type = Explod
trigger1 = GameTime % 10 = 0
vel = -1 + (Random < 500), 0
accel = 0, 0.05
anim = 11300
sprpriority = Random % 4
postype = P1
random = 20, 20
removetime = -2
scale = 0.5, 0.5
ignorehitpause = 1

[State 1300, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 40,0
channel = 4

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = ifElse(var(10) = 2, 15, ifElse(var(10) = 1, 12.5, 10))
y = ifElse(var(10) = 2, -10.78125, ifElse(var(10) = 1, -10.625, -10))

[State 1300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && vel x >= 0
x = -0.78125

[State 1300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0
y = 0.5859375

[State 1300, VelSet]
type = VelSet
trigger1 = Vel X < 0
x = 0

[State 1300, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !var(37)
attr = A, ST
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
P1StateNo = 1305

[State 1300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = !var(10)
trigger1 = AnimElemTime(10) >= 0
trigger2 = var(10) = 1
trigger2 = AnimElemTime(11) >= 0
trigger3 = var(10) = 2
trigger3 = AnimElemTime(12) >= 0
moveType = I

[State 1300, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1301



;Landing
[StateDef 1301]
type = S
anim = 1301
physics = N
moveType = I
velSet = 0,0

[State 1301, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1301, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1301, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 1

[State 1301, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Throw
[Statedef 1305]
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

[State 1305, Grab Sound]
type = PlaySnd
trigger1 = !Time
value = 2, 800
channel = 5

[State 1305, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) > 0 && vel x >= 0
x = -0.78125

[State 1305, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) > 0
y = 0.5859375

[State 1305, VelSet]
type = VelSet
trigger1 = Vel X < 0
x = 0

[State 1305, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 51
ctrl = 1

[State 1305, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 1306

[State 1305, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 4
channel = 6

[State 1305, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 7

[State 1305, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 24, -13

[State 1305, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 15, -18

[State 1305, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(3) < 7
pos = -40, 12

[State 1305, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) = 7
pos = -58, 46

[State 1305, Damage]
type = TargetLifeAdd
trigger1 = PrevStateNo != 1330
trigger1 = AnimElemTime(3) = 7 && NumTarget
value = floor(ifElse(ifElse(var(10) = 2, 154, ifElse(var(10) = 1, 147, 140)) * fvar(11) < 7, -7, -ifElse(var(10) = 2, 154, ifElse(var(10) = 1, 147, 140)) * fvar(11)))

[State 1305, Damage]
type = TargetLifeAdd
trigger1 = PrevStateNo = 1330
trigger1 = AnimElemTime(3) = 7 && NumTarget
value = floor(ifElse(168 * fvar(11) < 7, -7, -168 * fvar(11)))

[State 1305, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElemTime(3) = 7 && NumTarget
value = 36

[State 1305, Power]
type = PowerAdd
trigger1 = PrevStateNo != 1330
trigger1 = AnimElemTime(3) = 7 && NumTarget
value = 72

[State 1305, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(3) = 7 && NumTarget
value = 1

[State 1305, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(3) = 7 && NumTarget
var(13) = 1

[State 1305, Juggle]
type = VarAdd
trigger1 = AnimElemTime(3) = 7 && NumTarget
var(15) = 1
ignoreHitPause = 1

[State 1305, Juggle]
type = VarSet
trigger1 = AnimElemTime(3) = 7 && NumTarget
var(16) = 1
ignoreHitPause = 1

[State 1305, Throw]
type = TargetState
trigger1 = AnimElemTime(3) = 7 && NumTarget
value = 1307

[State 1305, Turn]
type = Turn
trigger1 = AnimElem = 4
ignoreHitPause = 1

[State 1305, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1301



;===========<SOUL THROW (TARGET)>==========
;Being Thrown
[StateDef 1306]
type = A
moveType = H
physics = N
velSet = 0, 0
sprPriority = 2

[State 1306, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1306

[State 1306, Turn]
type = Turn
trigger1 = AnimElemTime(1) = 6
ignoreHitPause = 1

[State 1306, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(2) > 0
value = 0

[State 1306, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1


;After Throw
[StateDef 1307]
type = A
movetype = H
physics = N
velSet = -3.125, 0.9765625
ctrl = 0

[State 1307, ChangeAnim]
type = ChangeAnim2
trigger1 = !Time
value = 1307

[State 1307, PalFX]
type = PalFX
trigger1 = !Time && PrevStateNo = 3106
time = 31
mul = 128, 128, 128
sinAdd = 96, 96, 96, 4

[State 1307, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 1307, VelAdd]
type = VelAdd
trigger1 = 1
y = 1.220703125

[State 1307, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 1307, VelSet]
type = VelSet
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
x = -3.125

[State 1307, End]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5100



;=====================<EX SOUL THROW>==========================
[StateDef 1330]
type = S
physics = N
moveType = A
anim = 1320
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
var(25) = 25

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 13, -42
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1330, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1

[State 1330, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1300, 0
channel = 0

[State 1330, Soul Throw Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1300, 1
channel = 3

[State 1330, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 1330, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Soul Throw Dust"
posType = P1
ownPal = 1

[State 1330, Star FX]
type = Explod
trigger1 = GameTime % 10 = 0
vel = -1 + (Random < 500), 0
accel = 0, 0.05
anim = 11300
sprpriority = Random % 4
postype = P1
random = 20, 20
removetime = -2
scale = 0.5, 0.5
ignorehitpause = 1

[State 1330, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 40,0
channel = 4

[State 1330, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 16.25
y = -10.78125

[State 1330, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && vel x >= 0
x = -0.78125

[State 1330, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0
y = 0.5859375

[State 1330, VelSet]
type = VelSet
trigger1 = Vel X < 0
x = 0

[State 1330, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !var(37)
attr = A, ST
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
P1StateNo = 1305

[State 1330, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 1330, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1301



;========================<PUNCH ZERO COUNTER>=============================
[StateDef 2900]
type = S
physics = N
moveType = A
anim = 2900
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1300, 0
channel = 0

[State 2900, Soul Throw Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1300, 1
channel = 1

[State 2900, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 2900, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Soul Throw Dust"
posType = P1
ownPal = 1

[State 2900, Star FX]
type = Explod
trigger1 = GameTime % 10 = 0
vel = -1 + (Random < 500), 0
accel = 0, 0.05
anim = 11300
sprpriority = Random % 4
postype = P1
random = 20, 20
removetime = -2
scale = 0.5, 0.5
ignorehitpause = 1

[State 2900, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 40,0
channel = 3

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 10
y = -10

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && vel x >= 0
x = -0.78125

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0
y = 0.5859375

[State 2900, VelSet]
type = VelSet
trigger1 = Vel X < 0
x = 0

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = !var(37)
trigger1 = AnimElem = 1 || AnimElem = 2
attr = S, ST
hitFlag = MAF
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
P1StateNo = 2905

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = !var(37)
trigger1 = AnimElem = 1 || AnimElem = 2
attr = A, ST
hitFlag = MAF
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
P1StateNo = 2905

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 2900, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 2901


;Landing
[StateDef 2901]
type = S
anim = 2901
physics = N
moveType = I
velSet = 0,0

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
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2901, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 3

[State 2901, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Throw
[Statedef 2905]
type = A
physics = N
moveType = A
anim = 2905
ctrl = 0
sprPriority = 1

[State 2905, VelSet]
type = VelSet
trigger1 = !Time
x = 2.5
y = -7.03125

[State 2905, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) > 0
y = 0.5859375

[State 2905, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 51
ctrl = 1

[State 2905, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 2906

[State 2905, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 4
channel = 4

[State 2905, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 5

[State 2905, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 24, -13

[State 2905, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 15, -18

[State 2905, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = -40, 12

[State 2905, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElemTime(4) = 0 && NumTarget
value = 36

[State 2905, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(4) = 0 && NumTarget
value = 1

[State 2905, VarAdd]
type = VarAdd
trigger1 = AnimElemTime(4) = 0 && NumTarget
var(13) = 1

[State 2905, Throw]
type = TargetState
trigger1 = AnimElemTime(4) = 0 && NumTarget
value = 2907

[State 2905, Throw]
type = TargetState
trigger1 = Enemy, StateNo = 2907 && Enemy, pos y > -vel y
value = 2908

[State 2905, Turn]
type = Turn
trigger1 = AnimElem = 4
ignoreHitPause = 1

[State 2905, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 2901



;===========<PUNCH ZERO COUNTER (TARGET)>==========
;Being Thrown
[StateDef 2906]
type = A
physics = N
moveType = H
velSet = 0, 0
sprPriority = 2

[State 2906, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 2906

[State 2906, Turn]
type = Turn
trigger1 = AnimElem = 2
ignoreHitPause = 1

[State 2906, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1


;After Throw
[StateDef 2907]
type = A
movetype = H
physics = N
velSet = -3.75, -1.40625
sprPriority = 0
ctrl = 0

[State 2907, PosSet]
type = PosSet
trigger1 = !Time
y = const(movement.down.bounce.offset.y)

[State 2907, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 2907, VelAdd]
type = VelAdd
trigger1 = 1
x = -0.78125



;After After Thrown
[StateDef 2908]
type = S
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 2901, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 2908, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 2908

[State 2908, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(1) = 0
x = -3

[State 2908, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(1) = 1
x = -2

[State 2908, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(1) = 2
x = -1

[State 2908, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1

[State 2908, SelfState]
type = SelfState
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

[State 2910, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 2
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 1

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
ground.velocity = -5.54, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.54, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 107), var(36) := -7
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(4) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
