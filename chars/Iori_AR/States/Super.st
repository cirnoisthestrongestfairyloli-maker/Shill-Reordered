; ________________________________________________
;| Iori Yagami by KarmaCharmeleon		|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<KIN 1211 SHIKI: YA OTOME>=============================
[StateDef 3000]
type = S
physics = N
moveType = A
anim = 3000 + 10000 * (var(40) = 1)
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

[State 3000, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 8, -122
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
sound = s8500,0
darken = 0

[State 3000, Voice]
type = PlaySnd
trigger1 = !Time
value = 3000, 0 + (var(40) = 1) * 10
channel = 0

[State 3000, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41, 0
channel = 1

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 7.82122905028

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(10) < 0
x = 3.35195530726

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 3000, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
ID = 3000
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 0, 0
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
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
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -30
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3000) > 1
ID = 3000
keepOne = 1
excludeID = 3000
ignoreHitPause = 1

[State 3000, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3000)
value = 3015
ID = 3000
ignoreHitPause = 1
persistent = 0

[State 3000, ChangeState]
type = ChangeState
trigger1 = NumTarget(3000)
trigger1 = MoveHit && Target, Alive
value = ifElse(var(40) = 3, 3040, 3010)

[State 3000, ChangeAnim]
type = ChangeAnim
trigger1 = MoveGuarded
value = 3000 + 10000 * (var(40) = 1)
elem = 7
persistent = 0

[State 3000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 3000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3010]
type = S
anim = 3010 + 10 * var(40)
physics = N
moveType = A
velSet = 0, 0

[State 3010, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(51) < 1
pos = 19 + (Target, const(size.ground.front)), 0

[State 3010, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(51) < 1
edge = 19 + (Target, const(size.ground.front)), 0

[State 3010, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3010, 0 + (var(40) = 1) * 10
channel = 0

[State 3010, Voice 2]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(47) = 2
value = 3010, 1 + (var(40) = 1) * 10
channel = 0

[State 3010, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 5 || AnimElem = 10 || AnimElem = 18 || AnimElem = 26 || AnimElem = 32 || AnimElem = 40
value = 1, 5
channel = 1

[State 3010, Hit Sound]
type = Null
triggerAll = var(40) != 2
trigger1 = AnimElem = 6 
trigger1 = var(31) := 7
trigger2 = AnimElem = 17 || AnimElem = 33
trigger2 = var(31) := 8
trigger3 = AnimElem = 3 || AnimElem = 11 || AnimElem = 27 || AnimElem = 41
trigger3 = var(31) := 9

[State 3010, Hit Sound]
type = Null
triggerAll = var(40) = 2
trigger1 = AnimElem = 6 
trigger1 = var(31) := 0
trigger2 = AnimElem = 3 
trigger2 = var(31) := 2
trigger3 = AnimElem = 17 || AnimElem = 33
trigger3 = var(31) := 8
trigger4 = AnimElem = 11 || AnimElem = 27 || AnimElem = 41
trigger4 = var(31) := 9

[State 3010, SparkNo]
type = Null
triggerAll = var(40) != 2
trigger1 = AnimElem = 3 || AnimElem = 6 || AnimElem = 17 || AnimElem = 33 || AnimElem = 11 || AnimElem = 27 || AnimElem = 41
trigger1 = var(33) := 8019

[State 3010, SparkNo]
type = Null
triggerAll = var(40) = 2
trigger1 = AnimElem = 3 || AnimElem = 6
trigger1 = var(33) := 8014
trigger2 = AnimElem = 17 || AnimElem = 33 || AnimElem = 11 || AnimElem = 27 || AnimElem = 41
trigger2 = var(33) := 8019

[State 3010, Spark XY]
type = Null
trigger1 = AnimElem = 3
trigger1 = var(35) := 48 || var(36) := -64
trigger2 = AnimElem = 6
trigger2 = var(35) := 72 || var(36) := -60
trigger3 = AnimElem = 11
trigger3 = var(35) := 57 || var(36) := -89
trigger4 = AnimElem = 17 || AnimElem = 33
trigger4 = var(35) := 42 || var(36) := -60
trigger5 = AnimElem = 27 || AnimElem = 41
trigger5 = var(35) := 86 || var(36) := -53

[State 3010, HitDef: Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3 || AnimElem = 11 || AnimElem = 27 || AnimElem = 41
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3010, HitDef: High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6 || AnimElem = 17 || AnimElem = 33
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3010, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(45) >= 0 && AnimElemTime(54) < 0
time = 1
value = SCA

[State 3010, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(45) >= 0 && AnimElemTime(54) < 0
value = 2

[State 3010, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 47
value = 3016

[State 3010, Grab Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 47
value = 2, 800
channel = 2

[State 3010, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 54
value = floor(ifElse(56 * fvar(11) < 7, -7, -56 * fvar(11)))

[State 3010, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 54
value = 36

[State 3010, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 54
value = 1

[State 3010, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 54
var(13) = 1

[State 3010, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 54
var(15) = 1
ignoreHitPause = 1

[State 3010, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 54
time = 18
ampl = -6
freq = 120

[State 3010, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 54
value = 3017

[State 3010, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 54
value = 2, 6
channel = 2

[State 3010, Explosion Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 54
trigger2 = NumTarget && AnimElem = 55
trigger3 = NumTarget && AnimElem = 57
value = 1320, 2
channel = 4

[State 3010, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = NumTarget && AnimElem = 54
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3010, Flame Particles Timer Set]
type = Null
trigger1 = NumTarget && AnimElem = 54
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 21, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3010, Kototsuki In Explosion Effect 1]
type = Explod
trigger1 = NumTarget && AnimElem = 54
anim = 1321
sprPriority = 3
posType = P1
pos = 27, -77
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3010, Kototsuki In Explosion Effect 2]
type = Explod
trigger1 = AnimElem = 55
anim = 1321
sprPriority = 3
posType = P1
pos = 55, -93
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3010, Kototsuki In Explosion Effect 3]
type = Explod
trigger1 = AnimElem = 57
anim = 1321
sprPriority = 3
posType = P1
pos = -2, -109
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3010, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 3010, Ura 316 Shiki: Saika]
type = VarSet
triggerAll = (!var(14) || AILevel) && Power >= 1000
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && var(40) != 1
triggerAll = AnimElemTime(46) >= 0 && AnimElemTime(54) < 4
trigger1 = !AILevel
;command = "QCF, QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90030016)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90030114))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
trigger2 = AnimElemTime(54) >= 1
trigger2 = AILevel && (EnemyNear, Alive)
var(14) = 3220

[State 3010, Followup]
type = ChangeState
trigger1 = var(14) = 3220
trigger1 = AnimElemTime(54) >= 1 && AnimElemTime(54) < 4
value = var(14)

[State 3010, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Target
[StateDef 3015]
type = S
moveType = H
physics  = N
velSet = 0, 0

[State 3015, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3015, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3015, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5002

[State 3015, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim


;Throw Target
[StateDef 3016]
type = S
moveType = H
physics = N
velSet = 0, 0
sprPriority = 1

[State 3016, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3016

[State 3016, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 3016, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 3017]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3017, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3017, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030

[State 3017, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 3017, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3017, PalFX]
type = PalFX
trigger1 = !Time
time = 22
mul = 128, 128, 128
sinAdd = 96, 96, 96, 4

[State 3017, VelSet]
type = VelSet
trigger1 = Time = 1
x = -6.70391061453
y = -5

[State 3017, VelAdd]
type = VelAdd
Trigger1 = Time >= 1
y = 0.5126953125

[State 3017, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3017, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100


;Success
[StateDef 3040]
type = S
anim = 3040
physics = N
moveType = A
velSet = 0, 0

[State 3040, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(52) < 0
pos = 19 + (Target, const(size.ground.front)), 0

[State 3040, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(52) < 0
edge = 19 + (Target, const(size.ground.front)), 0

[State 3040, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3010, 0
channel = 0

[State 3040, Voice 2]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(47) = 2
value = 3010, 1
channel = 0

[State 3040, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 5 || AnimElem = 10 || AnimElem = 18 || AnimElem = 26 || AnimElem = 32 || AnimElem = 40
value = 1, 5
channel = 1

[State 3040, Hit Sound]
type = Null
trigger1 = AnimElem = 6 
trigger1 = var(31) := 7
trigger2 = AnimElem = 17 || AnimElem = 33
trigger2 = var(31) := 8
trigger3 = AnimElem = 3 || AnimElem = 11 || AnimElem = 27 || AnimElem = 41
trigger3 = var(31) := 9

[State 3040, SparkNo]
type = Null
trigger1 = AnimElem = 3 || AnimElem = 6 || AnimElem = 17 || AnimElem = 33 || AnimElem = 11 || AnimElem = 27 || AnimElem = 41
trigger1 = var(33) := 8019

[State 3040, Spark XY]
type = Null
trigger1 = AnimElem = 3
trigger1 = var(35) := 48 || var(36) := -64
trigger2 = AnimElem = 6
trigger2 = var(35) := 72 || var(36) := -60
trigger3 = AnimElem = 11
trigger3 = var(35) := 57 || var(36) := -89
trigger4 = AnimElem = 17 || AnimElem = 33
trigger4 = var(35) := 42 || var(36) := -60
trigger5 = AnimElem = 27 || AnimElem = 41
trigger5 = var(35) := 86 || var(36) := -53

[State 3040, HitDef: Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3 || AnimElem = 11 || AnimElem = 27 || AnimElem = 41
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3040, HitDef: High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6 || AnimElem = 17 || AnimElem = 33
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3040, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(45) >= 0 && AnimElemTime(54) < 0
time = 1
value = SCA

[State 3040, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(45) >= 0 && AnimElemTime(54) < 0
value = 2

[State 3040, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 48
value = 3046

[State 3040, Grab Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 48
value = 2, 800
channel = 2

[State 3040, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(48) >= 0 && AnimElemTime(49) < 0
pos = 35, -108

[State 3040, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(49) >= 0 && AnimElemTime(52) < 0
pos = 40, -120

[State 3040, Slash Visual Effect 1]
type = Explod
trigger1 = NumTarget && AnimElem = 52
ID = 3040
anim = 3043
sprPriority = 3
posType = P1
pos = -48, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3040, Slash Visual Effect 2]
type = Explod
trigger1 = NumTarget && AnimElem = 52
ID = 3040
anim = 3044
sprPriority = -3
posType = P1
pos = -48, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3040, TargetBind 4]
type = TargetBind
trigger1 = NumTarget && AnimElem = 53
pos = 19 + (Target, const(size.ground.front)), 0

[State 3040, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 53
value = floor(ifElse(56 * fvar(11) < 7, -7, -56 * fvar(11)))

[State 3040, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 53
value = 36

[State 3040, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 53
value = 1

[State 3040, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 53
var(13) = 1

[State 3040, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 53
var(15) = 1
ignoreHitPause = 1

[State 3040, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 53
time = 18
ampl = -6
freq = 120

[State 3040, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 53
value = 3047

[State 3040, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 53
value = 2, 9
channel = 2

[State 3040, Slash Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 53
value = 3040, 2
channel = 4

[State 3040, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 3040, Ura 316 Shiki: Saika]
type = VarSet
triggerAll = (!var(14) || AILevel) && Power >= 1000
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = AnimElemTime(46) >= 0 && AnimElemTime(53) < 6
trigger1 = !AILevel
;command = "QCF, QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90030016)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90030114))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
trigger2 = AnimElemTime(54) >= 1
trigger2 = AILevel && (EnemyNear, Alive)
var(14) = 3240

[State 3040, Followup]
type = ChangeState
trigger1 = var(14) = 3240
trigger1 = AnimElemTime(53) >= 1 && AnimElemTime(53) < 6
value = var(14)

[State 3040, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Throw Target
[StateDef 3046]
type = S
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 3046, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3046

[State 3046, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 3046, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 3047]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3047, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3047, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030

[State 3047, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 3047, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3047, VelSet]
type = VelSet
trigger1 = Time = 1
x = -6.70391061453
y = -5

[State 3047, VelAdd]
type = VelAdd
Trigger1 = Time >= 1
y = 0.5126953125

[State 3047, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3047, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<MAX KIN 1211 SHIKI: YA OTOME>=============================
[StateDef 3050]
type = S
physics = N
moveType = A
anim = 3050 + 10000 * (var(40) = 1)
ctrl = 0
velSet = 0,0
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
var(17) = 43

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
trigger1 = AnimElemTime(3) < 0
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
pos = 8, -122
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3050, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, 0
darken = 0

[State 3050, Voice]
type = PlaySnd
trigger1 = !Time
value = 3000, 0 + (var(40) = 1) * 10
channel = 0

[State 3050, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41, 0
channel = 1

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 7.82122905028

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(10) < 0
x = 3.35195530726

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 3050, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
ID = 3050
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 0, 0
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
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
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -30
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3050) > 1
ID = 3050
keepOne = 1
excludeID = 3050
ignoreHitPause = 1

[State 3050, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3050)
value = 3065
ID = 3050
ignoreHitPause = 1
persistent = 0

[State 3050, ChangeState]
type = ChangeState
trigger1 = NumTarget(3050)
trigger1 = MoveHit && Target, Alive
value = ifElse(var(40) = 3, 3090, ifElse(var(40) = 2, 3080, ifElse(var(40) = 1, 3070, 3060)))

[State 3050, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveGuarded
value = 3050
elem = 7
persistent = 0

[State 3050, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 3050, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3060]
type = S
anim = 3060 + 10 * (var(40) = 1)
physics = N
moveType = A
velSet = 0, 0

[State 3060, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(49) < 0
pos = 19 + (Target, const(size.ground.front)), 0

[State 3060, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(49) < 0
edge = 19 + (Target, const(size.ground.front)), 0

[State 3060, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(51) >= 0 && AnimElemTime(74) < 0
edge = 0, 40

[State 3060, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3010, 0 + (var(40) = 1) * 10
channel = 0

[State 3060, Voice 2]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 48
value = 4, 3
channel = 0

[State 3060, Voice 3]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 69
value = 3010, 1 + (var(40) = 1) * 10
channel = 0

[State 3060, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 5 || AnimElem = 10 || AnimElem = 18 || AnimElem = 26 || AnimElem = 32 || AnimElem = 40
value = 1, 5
channel = 1

[State 3060, Hit Sound]
type = Null
trigger1 = AnimElem = 6
trigger1 = var(31) := 7
trigger2 = AnimElem = 17 || AnimElem = 33
trigger2 = var(31) := 8
trigger3 = AnimElem = 3 || AnimElem = 11 || AnimElem = 27 || AnimElem = 41
trigger3 = var(31) := 9

[State 3060, SparkNo]
type = Null
trigger1 = AnimElem = 3 || AnimElem = 6 || AnimElem = 17 || AnimElem = 33 || AnimElem = 11 || AnimElem = 27 || AnimElem = 41
trigger1 = var(33) := 8019

[State 3060, Spark XY]
type = Null
trigger1 = AnimElem = 3
trigger1 = var(35) := 48 || var(36) := -64
trigger2 = AnimElem = 6
trigger2 = var(35) := 72 || var(36) := -60
trigger3 = AnimElem = 11
trigger3 = var(35) := 57 || var(36) := -89
trigger4 = AnimElem = 17 || AnimElem = 33
trigger4 = var(35) := 42 || var(36) := -60
trigger5 = AnimElem = 27 || AnimElem = 41
trigger5 = var(35) := 86 || var(36) := -53

[State 3060, HitDef: Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3 || AnimElem = 11 || AnimElem = 27 || AnimElem = 41
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3060, HitDef: High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6 || AnimElem = 17 || AnimElem = 33
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3060, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(45) >= 0 && AnimElemTime(80) < 0
time = 1
value = SCA

[State 3060, Grab Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 47
value = 2, 800
channel = 2

[State 3060, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 47
value = 3066

[State 3060, Slide Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 49
value = 101, 0
channel = 4

[State 3060, PowerAdd]
type = PosAdd
trigger1 = AnimElem = 50
trigger2 = AnimElem = 51
trigger3 = AnimElem = 52
x = -14.3016759777

[State 3060, PowerAdd]
type = PosAdd
trigger1 = AnimElem = 78
trigger2 = AnimElem = 79
trigger3 = AnimElem = 80
x = 14.3016759777

[State 3060, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(49) >= 0 && AnimElemTime(50) < 0
pos = 24, 0

[State 3060, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(50) >= 0 && AnimElemTime(51) < 0
pos = 18, 0

[State 3060, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(51) >= 0 && AnimElemTime(52) < 0
pos = -30, 20

[State 3060, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(52) >= 0 && AnimElemTime(74) < 0
pos = -30, 0

[State 3060, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 52
value = 3067

[State 3060, Throw]
type = TargetState
triggerAll  = NumTarget
trigger1 = AnimElem = 58
trigger2 = AnimElem = 61
trigger3 = AnimElem = 64
trigger4 = AnimElem = 67
value = 3068

[State 3060, Damage]
type = TargetLifeAdd
triggerAll  = NumTarget
trigger1 = AnimElem = 58
trigger2 = AnimElem = 61
trigger3 = AnimElem = 64
trigger4 = AnimElem = 67
value = floor(ifElse(35 * fvar(11) < 7, -7, -35 * fvar(11)))
kill = 0

[State 3060, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 74
value = floor(ifElse(70 * fvar(11) < 7, -7, -70 * fvar(11)))

[State 3060, TargetPowerAdd]
type = TargetPowerAdd
triggerAll  = NumTarget
trigger1 = AnimElem = 58
trigger2 = AnimElem = 61
trigger3 = AnimElem = 64
trigger4 = AnimElem = 67
trigger5 = AnimElem = 74
value = 36

[State 3060, HitAdd]
type = HitAdd
triggerAll  = NumTarget
trigger1 = AnimElem = 58
trigger2 = AnimElem = 61
trigger3 = AnimElem = 64
trigger4 = AnimElem = 67
trigger5 = AnimElem = 74
value = 1

[State 3060, HitAdd]
type = VarAdd
triggerAll  = NumTarget
trigger1 = AnimElem = 58
trigger2 = AnimElem = 61
trigger3 = AnimElem = 64
trigger4 = AnimElem = 67
trigger5 = AnimElem = 74
var(13) = 1

[State 3060, Juggle]
type = VarAdd
triggerAll  = NumTarget
trigger1 = AnimElem = 58
trigger2 = AnimElem = 61
trigger3 = AnimElem = 64
trigger4 = AnimElem = 67
trigger5 = AnimElem = 74
var(15) = 1
ignoreHitPause = 1

[State 3060, EnvShake]
type = EnvShake
triggerAll  = NumTarget
trigger1 = AnimElem = 58
trigger2 = AnimElem = 61
trigger3 = AnimElem = 64
trigger4 = AnimElem = 67
trigger5 = AnimElem = 74
time = 18
ampl = -6
freq = 120

[State 3060, Hit Sound]
type = PlaySnd
triggerAll  = NumTarget
trigger1 = AnimElem = 58
trigger2 = AnimElem = 61
trigger3 = AnimElem = 64
trigger4 = AnimElem = 67
trigger5 = AnimElem = 74
value = 2, 6
channel = 2

[State 3060, Flame Effect]
type = PlaySnd
triggerAll  = NumTarget
trigger1 = AnimElem = 58
trigger2 = AnimElem = 61
trigger3 = AnimElem = 64
trigger4 = AnimElem = 67
trigger5 = AnimElem = 74
trigger6 = AnimElem = 76
trigger1 = AnimElemTime(76) = 6
value = 1320, 2
channel = 4

[State 3060, Kototsuki In Explosion Effect 1]
type = Explod
triggerAll  = NumTarget
trigger1 = AnimElem = 58
trigger2 = AnimElem = 61
trigger3 = AnimElem = 64
trigger4 = AnimElem = 67
trigger5 = AnimElem = 74
anim = 1321
sprPriority = 1
posType = P1
pos = -25, -14
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3060, Impact Dust]
type = Helper
triggerAll  = NumTarget
trigger1 = AnimElem = 58
trigger2 = AnimElem = 61
trigger3 = AnimElem = 64
trigger4 = AnimElem = 67
trigger5 = AnimElem = 74
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
facing = -1
pos = -30, 0
ownPal = 1

[State 3060, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = NumTarget && AnimElem = 74
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3060, Flame Particles Timer Set]
type = Null
trigger1 = NumTarget && AnimElem = 74
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 22, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3060, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 74
value = 3069

[State 3060, Kototsuki In Explosion Effect 2]
type = Explod
trigger1 = NumTarget && AnimElem = 76
anim = 1321
sprPriority = 1
posType = P1
pos = -4, -47
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3060, Kototsuki In Explosion Effect 3]
type = Explod
trigger1 = NumTarget && AnimElemTime(76) = 6
anim = 1321
sprPriority = 1
posType = P1
pos = -53, -31
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3060, Turn]
type = Turn
trigger1 = !AnimTime

[State 3060, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Target
[StateDef 3065]
type = S
moveType = H
physics  = N
velSet = 0, 0

[State 3065, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3065, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3065, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5002

[State 3065, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim



;Throw Target
[StateDef 3066]
type = S
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 3066, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3066

[State 3066, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 3066, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1



;Throw Target
[StateDef 3067]
type = S
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 3067, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5080

[State 3067, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3067, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 3067, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1



;Throw Target
[StateDef 3068]
type = S
moveType = H
physics = N
anim = 5170
velSet = 0, 0
sprPriority = 0

[State 3068, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5080

[State 3068, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
value = 5150

[State 3068, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3068, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 3068, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1



;After Throw
[StateDef 3069]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3069, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3069, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030

[State 3069, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 3069, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3069, PalFX]
type = PalFX
trigger1 = !Time
time = 22
mul = 128, 128, 128
sinAdd = 96, 96, 96, 4

[State 3069, VelSet]
type = VelSet
trigger1 = Time = 1
x = 5.58659217877
y = -5.78125

[State 3069, VelAdd]
type = VelAdd
Trigger1 = Time >= 1
y = 0.5126953125

[State 3069, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3069, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100


;Success
[StateDef 3070]
type = S
anim = 3070
physics = N
moveType = A
velSet = 0, 0

[State 3070, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(45) < 0
pos = 19 + (Target, const(size.ground.front)), 0

[State 3070, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(45) < 0
edge = 19 + (Target, const(size.ground.front)), 0

[State 3070, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3010, 0 + (var(40) = 1) * 10
channel = 0

[State 3070, Voice 2]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 59
value = 3010, 1 + (var(40) = 1) * 10
channel = 0

[State 3070, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 5 || AnimElem = 10 || AnimElem = 18 || AnimElem = 26 || AnimElem = 32 || AnimElem = 40
value = 1, 5
channel = 1

[State 3070, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 46
value = 1, 2
channel = 1

[State 3070, Hit Sound]
type = Null
trigger1 = AnimElem = 6 
trigger1 = var(31) := 7
trigger2 = AnimElem = 17 || AnimElem = 33
trigger2 = var(31) := 8
trigger3 = AnimElem = 3 || AnimElem = 11 || AnimElem = 27 || AnimElem = 41
trigger3 = var(31) := 9

[State 3070, SparkNo]
type = Null
trigger1 = AnimElem = 3 || AnimElem = 6 || AnimElem = 17 || AnimElem = 33 || AnimElem = 11 || AnimElem = 27 || AnimElem = 41
trigger1 = var(33) := 8019

[State 3070, Spark XY]
type = Null
trigger1 = AnimElem = 3
trigger1 = var(35) := 48 || var(36) := -64
trigger2 = AnimElem = 6
trigger2 = var(35) := 72 || var(36) := -60
trigger3 = AnimElem = 11
trigger3 = var(35) := 57 || var(36) := -89
trigger4 = AnimElem = 17 || AnimElem = 33
trigger4 = var(35) := 42 || var(36) := -60
trigger5 = AnimElem = 27 || AnimElem = 41
trigger5 = var(35) := 86 || var(36) := -53

[State 3070, HitDef: Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3 || AnimElem = 11 || AnimElem = 27 || AnimElem = 41
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3070, HitDef: High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6 || AnimElem = 17 || AnimElem = 33
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3070, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 47
attr = S, HA
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
yaccel = 0.58
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3070, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(49) >= 0 && AnimElemTime(64) < 0
time = 1
value = SCA

[State 3070, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(49) >= 0 && AnimElemTime(60) < 0
edge = 64, 0

[State 3070, TargetState]
type = TargetState
trigger1 = NumTarget && AnimElem = 49
value = 3075

[State 3070, Grab Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 50
value = 2, 800
channel = 2

[State 3070, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(51) >= 0 && AnimElemTime(52) < 0
pos = 80, -56

[State 3070, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(52) >= 0 && AnimElemTime(60) < 0
pos = 68, -8

[State 3070, TargetBind 4]
type = TargetBind
trigger1 = NumTarget && AnimElem = 60
pos = 26, 0

[State 3070, Damage]
type = TargetLifeAdd
triggerAll = NumTarget
trigger1 = AnimElem = 54
trigger2 = AnimElem = 57
value = floor(ifElse(42 * fvar(11) < 7, -7, -42 * fvar(11)))
kill = 0

[State 3070, Final Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 60
value = floor(ifElse(84 * fvar(11) < 7, -7, -84 * fvar(11)))

[State 3070, TargetPowerAdd]
type = TargetPowerAdd
triggerAll = NumTarget
trigger1 = AnimElem = 54
trigger2 = AnimElem = 57
trigger3 = AnimElem = 60
value = 36

[State 1320, HitAdd]
type = HitAdd
triggerAll = NumTarget
trigger1 = AnimElem = 54
trigger2 = AnimElem = 57
trigger3 = AnimElem = 60
value = 1

[State 3070, HitAdd]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 54
trigger2 = AnimElem = 57
trigger3 = AnimElem = 60
var(13) = 1

[State 3070, Juggle]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 54
trigger2 = AnimElem = 57
trigger3 = AnimElem = 60
var(15) = 1
ignoreHitPause = 1

[State 3070, Slam Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElem = 52
trigger2 = AnimElem = 55
trigger3 = AnimElem = 58
value = 1320, 1
channel = 1

[State 3070, Hit Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElem = 54
trigger2 = AnimElem = 57
trigger3 = AnimElem = 60
value = 2, 6
channel = 2

[State 3070, Explosion Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElem = 54
trigger2 = AnimElem = 57
trigger3 = AnimElem = 60
value = 1320, 2
channel = 4

[State 3070, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = AnimElem = 54
trigger2 = AnimElem = 57
trigger3 = AnimElem = 60
time = 18
ampl = -6
freq = 120

[State 3070, Kototsuki In: Explosion Effect 1]
type = Explod
triggerAll = NumTarget
trigger1 = AnimElem = 54
trigger2 = AnimElem = 57
trigger3 = AnimElem = 60
anim = 1321
sprPriority = 3
posType = P1
pos = 68, -8
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3070, Impact Dust]
type = Helper
triggerAll = NumTarget
trigger1 = AnimElem = 54
trigger2 = AnimElem = 57
trigger3 = AnimElem = 60
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
facing = -1
pos = 70, 0
ownPal = 1

[State 3070, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = NumTarget && AnimElem = 60
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3070, Flame Particles Timer Set]
type = Null
trigger1 = NumTarget && AnimElem = 60
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 19, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3070, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 60
value = 3076

[State 3070, Kototsuki In: Explosion Effect 2]
type = Explod
trigger1 = AnimElem = 62
anim = 1321
sprPriority = 4
posType = P1
pos = 96, -25
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3070, Kototsuki In: Explosion Effect 3]
type = Explod
trigger1 = AnimElem = 64
anim = 1321
sprPriority = 5
posType = P1
pos = 40, -40
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3070, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<212 SHIKI: KOTOTSUKI YO (TARGET)>==========
;Being Thrown
[StateDef 3075]
type = A
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 3075, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 3075, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3075

[State 3075, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 3075, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 3076]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3076, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030

[State 3076, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 3076, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3076, VelSet]
type = VelSet
trigger1 = Time = 1
x = -6.70391061453
y = -5

[State 3076, VelAdd]
type = VelAdd
Trigger1 = Time >= 1
y = 0.5126953125

[State 3076, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3076, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100


;Success
[StateDef 3080]
type = S
anim = 3080
physics = N
moveType = A
velSet = 0, 0

[State 3080, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(75) < 0
pos = 19 + (Target, const(size.ground.front)), 0

[State 3080, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(75) < 0
edge = 19 + (Target, const(size.ground.front)), 0

[State 3080, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3010, 0
channel = 0

[State 3080, Voice 2]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 72
value = 3010, 1
channel = 0

[State 3080, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 5 || AnimElem = 10 || AnimElem = 18 || AnimElem = 26 || AnimElem = 32 || AnimElem = 40
value = 1, 5
channel = 1

[State 3080, Hit Sound]
type = Null
trigger1 = AnimElem = 6 
trigger1 = var(31) := 0
trigger2 = AnimElem = 3 
trigger2 = var(31) := 2
trigger3 = AnimElem = 17 || AnimElem = 33
trigger3 = var(31) := 8
trigger4 = AnimElem = 11 || AnimElem = 27 || AnimElem = 41
trigger4 = var(31) := 9

[State 3080, SparkNo]
type = Null
trigger1 = AnimElem = 3 || AnimElem = 6
trigger1 = var(33) := 8014
trigger2 = AnimElem = 17 || AnimElem = 33 || AnimElem = 11 || AnimElem = 27 || AnimElem = 41
trigger2 = var(33) := 8019

[State 3080, Spark XY]
type = Null
trigger1 = AnimElem = 3
trigger1 = var(35) := 48 || var(36) := -64
trigger2 = AnimElem = 6
trigger2 = var(35) := 72 || var(36) := -60
trigger3 = AnimElem = 11
trigger3 = var(35) := 57 || var(36) := -89
trigger4 = AnimElem = 17 || AnimElem = 33
trigger4 = var(35) := 42 || var(36) := -60
trigger5 = AnimElem = 27 || AnimElem = 41
trigger5 = var(35) := 86 || var(36) := -53

[State 3080, HitDef: Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3 || AnimElem = 11 || AnimElem = 27 || AnimElem = 41
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3080, HitDef: High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6 || AnimElem = 17 || AnimElem = 33
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3080, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(45) >= 0 && AnimElemTime(78) < 0
time = 1
value = SCA

[State 3080, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(45) >= 0 && AnimElemTime(78) < 0
value = 2

[State 3080, Grab Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 47
value = 2, 800
channel = 2

[State 3080, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 47
value = 3086

[State 3080, Damage]
type = TargetLifeAdd
triggerAll = NumTarget
trigger1 = AnimElem = 53
trigger2 = AnimElem = 59
trigger3 = AnimElem = 65
trigger4 = AnimElem = 71
value = floor(ifElse(35 * fvar(11) < 7, -7, -35 * fvar(11)))
kill = 0

[State 3080, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 78
value = floor(ifElse(70 * fvar(11) < 7, -7, -70 * fvar(11)))

[State 3080, TargetPowerAdd]
type = TargetPowerAdd
triggerAll = NumTarget
trigger1 = AnimElem = 53
trigger2 = AnimElem = 59
trigger3 = AnimElem = 65
trigger4 = AnimElem = 71
trigger5 = AnimElem = 78
value = 36

[State 3080, HitAdd]
type = HitAdd
triggerAll = NumTarget
trigger1 = AnimElem = 53
trigger2 = AnimElem = 59
trigger3 = AnimElem = 65
trigger4 = AnimElem = 71
trigger5 = AnimElem = 78
value = 1

[State 3080, HitAdd]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 53
trigger2 = AnimElem = 59
trigger3 = AnimElem = 65
trigger4 = AnimElem = 71
trigger5 = AnimElem = 78
var(13) = 1

[State 3080, Juggle]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 53
trigger2 = AnimElem = 59
trigger3 = AnimElem = 65
trigger4 = AnimElem = 71
trigger5 = AnimElem = 78
var(15) = 1
ignoreHitPause = 1

[State 3080, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = AnimElem = 53
trigger2 = AnimElem = 59
trigger3 = AnimElem = 65
trigger4 = AnimElem = 71
trigger5 = AnimElem = 78
time = 18
ampl = -6
freq = 120

[State 3080, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 78
value = 3017

[State 3080, Hit Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElem = 53
trigger2 = AnimElem = 59
trigger3 = AnimElem = 65
trigger4 = AnimElem = 71
trigger5 = AnimElem = 78
value = 2, 6
channel = 2

[State 3080, Explosion Sound Effect]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElem = 53
trigger2 = AnimElem = 59
trigger3 = AnimElem = 65
trigger4 = AnimElem = 71
trigger5 = AnimElem = 78
trigger6 = AnimElem = 79
trigger7 = AnimElem = 81
value = 1320, 2
channel = 4

[State 3080, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = NumTarget && AnimElem = 53
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3080, Flame Particles Timer Set]
type = Null
trigger1 = NumTarget && AnimElem = 53
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 109, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3080, Kototsuki In Explosion Effect 1]
type = Explod
triggerAll = NumTarget
trigger1 = AnimElem = 53
trigger2 = AnimElem = 59
trigger3 = AnimElem = 65
trigger4 = AnimElem = 71
trigger5 = AnimElem = 78
anim = 1321
sprPriority = 3
posType = P1
pos = 27, -77
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3080, Kototsuki In Explosion Effect 2]
type = Explod
trigger1 = AnimElem = 79
anim = 1321
sprPriority = 3
posType = P1
pos = 55, -93
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3080, Kototsuki In Explosion Effect 3]
type = Explod
trigger1 = AnimElem = 81
anim = 1321
sprPriority = 3
posType = P1
pos = -2, -109
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3080, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Throw Target
[StateDef 3086]
type = S
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 3086, PalFX]
type = PalFX
trigger1 = Time = 27
time = 138
mul = 128, 128, 128
sinAdd = 96, 96, 96, 4

[State 3086, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3086

[State 3086, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 3086, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1



;Success
[StateDef 3090]
type = S
anim = 3090
physics = N
moveType = A
velSet = 0, 0

[State 3090, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(70) < 0
pos = 19 + (Target, const(size.ground.front)), 0

[State 3090, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(70) < 0
edge = 19 + (Target, const(size.ground.front)), 0

[State 3090, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3010, 0
channel = 0

[State 3090, Voice 2]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(74) = 2
value = 3010, 1
channel = 0

[State 3090, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 5 || AnimElem = 10 || AnimElem = 18 || AnimElem = 26 || AnimElem = 32 || AnimElem = 40
trigger2 = AnimElem = 45 || AnimElem = 54 || AnimElem = 57 || AnimElem = 64
value = 1, 5
channel = 1

[State 3090, Hit Sound]
type = Null
trigger1 = AnimElem = 6 
trigger1 = var(31) := 0
trigger2 = AnimElem = 3 || AnimElem = 55
trigger2 = var(31) := 2
trigger3 = AnimElem = 17 || AnimElem = 33 || AnimElem = 46 || AnimElem = 58
trigger3 = var(31) := 8
trigger4 = AnimElem = 11 || AnimElem = 27 || AnimElem = 41 || AnimElem = 65
trigger4 = var(31) := 9

[State 3090, SparkNo]
type = Null
trigger1 = AnimElem = 3 || AnimElem = 6 || AnimElem = 55
trigger1 = var(33) := 8014
trigger2 = AnimElem = 11 || AnimElem = 17 || AnimElem = 33 || AnimElem = 27 || AnimElem = 41 || AnimElem = 46 || AnimElem = 58 || AnimElem = 65
trigger2 = var(33) := 8019

[State 3090, Spark XY]
type = Null
trigger1 = AnimElem = 3
trigger1 = var(35) := 48 || var(36) := -64
trigger2 = AnimElem = 6
trigger2 = var(35) := 72 || var(36) := -60
trigger3 = AnimElem = 11
trigger3 = var(35) := 57 || var(36) := -89
trigger4 = AnimElem = 17 || AnimElem = 33 || AnimElem = 46
trigger4 = var(35) := 42 || var(36) := -60
trigger5 = AnimElem = 27 || AnimElem = 41
trigger5 = var(35) := 86 || var(36) := -53
trigger6 = AnimElem = 55
trigger6 = var(35) := 46 || var(36) := -56
trigger7 = AnimElem = 65
trigger7 = var(35) := 60 || var(36) := -70

[State 3090, HitDef: Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3 || AnimElem = 11 || AnimElem = 27 || AnimElem = 41
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3090, HitDef: High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6 || AnimElem = 17 || AnimElem = 33 || AnimElem = 44 || AnimElem = 46
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3090, HitDef: Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 55
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 4, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3090, HitDef: High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 58
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 4, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3090, HitDef: High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 65
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 4, fvar(11) * 56)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 36
ground.slideTime = 36
guard.hitTime = 36
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3090, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(69) >= 0 && AnimElemTime(78) < 0
time = 1
value = SCA

[State 3090, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 72
value = 3046

[State 3090, Grab Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 72
value = 2, 800
channel = 2

[State 3090, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(72) >= 0 && AnimElemTime(73) < 0
pos = 35, -108

[State 3090, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(73) >= 0 && AnimElemTime(76) < 0
pos = 40, -120

[State 3090, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(76) >= 0 && AnimElemTime(78) < 0
time = 1
add = 64 * (Time - 208), -64 * (Time - 208), -64 * (Time - 208)

[State 3090, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(78) >= 0 && AnimElemTime(79) < 2
time = 1
add = 255 - 32 * (Time - 234), -255 + 32 * (Time - 234), -255 + 32 * (Time - 234)

[State 3090, Slash Visual Effect 1]
type = Explod
trigger1 = NumTarget && AnimElem = 76
ID = 3040
anim = 3043
sprPriority = 3
posType = P1
pos = -48, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3090, Slash Visual Effect 2]
type = Explod
trigger1 = NumTarget && AnimElem = 76
ID = 3040
anim = 3044
sprPriority = -3
posType = P1
pos = -48, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3090, TargetBind 4]
type = TargetBind
trigger1 = NumTarget && AnimElem = 77
pos = 19 + (Target, const(size.ground.front)), 0

[State 3090, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 77
value = floor(ifElse(70 * fvar(11) < 7, -7, -70 * fvar(11)))

[State 3090, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 77
value = 36

[State 3090, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 77
value = 1

[State 3090, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 77
var(13) = 1

[State 3090, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 77
var(15) = 1
ignoreHitPause = 1

[State 3090, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 77
time = 18
ampl = -6
freq = 120

[State 3090, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 77
value = 3047

[State 3090, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 77
value = 2, 9
channel = 2

[State 3090, Slash Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 77
value = 3040, 2
channel = 4

[State 3090, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<URA 108 SHIKI: YA SAKAZUKI>=============================
;Startup
[StateDef 3100]
type = S
physics = N
moveType = A
anim = 3100 + 10000 * (var(40) = 1)
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

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
trigger1 = !Time
time = 43
value = SCA

[State 3100, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -ifElse(var(40) = 1, 8, 24), -85
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

[State 3100, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3100, 0 + (var(40) = 1) * 10
channel = 0

[State 3100, Fire Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3100, 1
channel = 1

[State 3100, Fire Effect]
type = Explod
trigger1 = AnimElem = 3
ID = 3105
anim = 3105
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = -ifElse(var(40) = 1, 8, 24), -85
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3100, End]
type = ChangeState
triggerAll = !AnimTime && !AILevel
trigger1 = !var(10) && command = "holdx"
trigger2 = var(10) = 1 && command = "holdy"
trigger3 = var(10) = 2 && command = "holdz"
value = 3101

[State 3100, End]
type = ChangeState
trigger1 = !AnimTime
value = 3110


;Holding
[StateDef 3101]
type = S
anim = 3101 + 10000 * (var(40) = 1)
physics = N
moveType = A
velSet = 0,0

[State 3101, End]
type = ChangeState
trigger1 = Time = 48
trigger2 = !var(10) && command != "holdx"
trigger3 = var(10) = 1 && command != "holdy"
trigger4 = var(10) = 2 && command != "holdz"
value = 3110


;Attack
[StateDef 3110]
type = S
anim = 3110 + 10000 * (var(40) = 1)
physics = N
moveType = A
velSet = 0,0

[State 3110, Stop Ya Sakazuki Fire Sound]
type = StopSnd
trigger1 = !Time
channel = 1
ignoreHitPause = 1

[State 3110, RemoveExplod]
type = RemoveExplod
trigger1 = !Time & NumExplod(3105)
ID = 3105

[State 3110, Ya Sakazuki Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 1
channel = 3

[State 3110, Ya Sakazuki Visual Effect]
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

[State 3110, Projectile]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 3115
ID = 3115
name = "Ya Sakazuki Projectile"
posType = P1
pos = 43, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3110, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX URA 108 SHIKI: YA SAKAZUKI>=============================
;Startup
[StateDef 3150]
type = S
physics = N
moveType = A
anim = 3100 + 10000 * (var(40) = 1)
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3150, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)) && (NumExplod(90000210) || NumExplod(90000215)), 2, ifElse((NumExplod(90000220) || NumExplod(90000225)) && (NumExplod(90000200) || NumExplod(90000205)), 1, 0))

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
trigger1 = !Time
time = 45
value = SCA

[State 3150, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -ifElse(var(40) = 1, 8, 24), -85
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3150, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, 0
darken = 0

[State 3150, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3100, 0 + (var(40) = 1) * 10
channel = 0

[State 3150, Fire Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3100, 1
channel = 1

[State 3150, Fire effect]
type = Explod
trigger1 = AnimElem = 3
ID = 3105
anim = 3105
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = -ifElse(var(40) = 1, 8, 24), -85
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3150, End]
type = ChangeState
triggerAll = !AnimTime && !AILevel
trigger1 = !var(10) && command = "holdx" && command = "holdy"
trigger2 = var(10) = 1 && command = "holdx" && command = "holdz"
trigger3 = var(10) = 2 && command = "holdy" && command = "holdz"
value = 3151

[State 3150, End]
type = ChangeState
trigger1 = !AnimTime
value = 3160


;Holding
[StateDef 3151]
type = S
anim = 3101 + 10000 * (var(40) = 1)
physics = N
moveType = A
velSet = 0,0

[State 3151, End]
type = ChangeState
trigger1 = Time = 96
trigger2 = !var(10) && command != "holdx" && command != "holdy"
trigger3 = var(10) = 1 && command != "holdx" && command != "holdz"
trigger4 = var(10) = 2 && command != "holdy" && command != "holdz"
value = 3160


;Attack
[StateDef 3160]
type = S
anim = 3110 + 10000 * (var(40) = 1)
physics = N
moveType = A
velSet = 0,0

[State 3160, Stop Ya Sakazuki Fire Sound]
type = StopSnd
trigger1 = !Time
channel = 1
ignoreHitPause = 1

[State 3160, RemoveExplod]
type = RemoveExplod
trigger1 = !Time & NumExplod(3105)
ID = 3105

[State 3160, Ya Sakazuki Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 1
channel = 3

[State 3160, Ya Sakazuki Visual Effect]
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

[State 3160, Projectile]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 3115
ID = 3165
name = "MAX Ya Sakazuki Projectile"
posType = P1
pos = 43, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3160, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<URA 316 SHIKI: SAIKA>=============================
[StateDef 3200]
type = S
physics = N
moveType = A
anim = 3200
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -1000
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
var(17) = 43

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
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -14, -84
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3200, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3200, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 730, 1
channel = 0

[State 3200, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 10
value = 3200, 0
channel = 0

[State 3200, Saika Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 12
value = 3200, 1
channel = 1

[State 3200, Projectile]
type = Helper
trigger1 = AnimElem = 12
helperType = Normal
stateNo = 3205
ID = 3205
name = "Saika Projectile"
posType = P1
pos = 38, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<URA 316 SHIKI: SAIKA (YA OTOME'S)>=============================
[StateDef 3220]
type = S
physics = N
moveType = A
anim = 3220
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3220, Super Cancel Flash]
type = PalFX
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3220, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 30, -110
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3220, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3220, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3220, 0
channel = 0

[State 3220, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3220, 1
channel = 0

[State 3220, Saika Hit 1]
type = TargetState
trigger1  = NumTarget && AnimElem = 8
value = 3225

[State 3220, Saika Hit 2-5]
type = TargetState
triggerAll  = NumTarget
trigger1 = AnimElem = 12
trigger2 = AnimElem = 14
trigger3 = AnimElemTime(14) = 4
trigger4 = AnimElemTime(14) = 8
value = 3226

[State 3220, Saika Hit 6]
type = TargetState
trigger1  = NumTarget && AnimElemTime(14) = 12
value = 3227

[State 3220, Damage]
type = TargetLifeAdd
triggerAll  = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
trigger3 = AnimElem = 14
trigger4 = AnimElemTime(14) = 4
trigger5 = AnimElemTime(14) = 8
trigger6 = AnimElemTime(14) = 12
value = floor(ifElse(14 * fvar(11) < 7, -7, -14 * fvar(11)))
kill = 0

[State 3220, TargetPowerAdd]
type = TargetPowerAdd
triggerAll  = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
trigger3 = AnimElem = 14
trigger4 = AnimElemTime(14) = 4
trigger5 = AnimElemTime(14) = 8
trigger6 = AnimElemTime(14) = 12
value = 36

[State 3220, HitAdd]
type = HitAdd
triggerAll  = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
trigger3 = AnimElem = 14
trigger4 = AnimElemTime(14) = 4
trigger5 = AnimElemTime(14) = 8
trigger6 = AnimElemTime(14) = 12
value = 1

[State 3220, HitAdd]
type = VarAdd
triggerAll  = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
trigger3 = AnimElem = 14
trigger4 = AnimElemTime(14) = 4
trigger5 = AnimElemTime(14) = 8
trigger6 = AnimElemTime(14) = 12
var(13) = 1

[State 3220, Juggle]
type = VarAdd
triggerAll  = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
trigger3 = AnimElem = 14
trigger4 = AnimElemTime(14) = 4
trigger5 = AnimElemTime(14) = 8
trigger6 = AnimElemTime(14) = 12
var(15) = 1
ignoreHitPause = 1

[State 3220, EnvShake]
type = EnvShake
triggerAll  = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
trigger3 = AnimElem = 14
trigger4 = AnimElemTime(14) = 4
trigger5 = AnimElemTime(14) = 8
trigger6 = AnimElemTime(14) = 12
time = 18
ampl = -6
freq = 120

[State 3220, Hit Sound]
type = PlaySnd
triggerAll  = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
trigger3 = AnimElem = 14
trigger4 = AnimElemTime(14) = 4
trigger5 = AnimElemTime(14) = 8
trigger6 = AnimElemTime(14) = 12
value = 2, 9
channel = 2

[State 3220, Hit Spark]
type = Helper
triggerAll  = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
trigger3 = AnimElem = 14
trigger4 = AnimElemTime(14) = 4
trigger5 = AnimElemTime(14) = 8
trigger6 = AnimElemTime(14) = 12
helperType = Normal
stateNo = 8019
ID = 8001
name = "Spark"
posType = P2
pos = 0, (EnemyNear, const(size.mid.pos.y))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
facing = -1
ignoreHitPause = 1

[State 3220, BGPalFX]
type = BGPalFX
trigger1 = AnimElem = 21
time = 32
sinAdd = 255, -255, -255, 64

[State 3220, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(21) >= 0 && AnimElemTime(26) < 0
time = 1
add = 28 * (Time - 119), -28 * (Time - 119), -28 * (Time - 119)

[State 3220, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(26) >= 0 && AnimElemTime(29) < 0
time = 1
add = 255 - 32 * (Time - 151), -255 + 32 * (Time - 151), -255 + 32 * (Time - 151)

[State 3200, Saika Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 29
value = 3200, 1
channel = 1

[State 3220, Projectile]
type = Helper
trigger1 = AnimElem = 29
helperType = Normal
stateNo = 3205
ID = 3225
name = "Saika Projectile"
posType = P1
pos = 38, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3220, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(30) < 0
time = 1
value = SCA

[State 3220, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Saika Hit 1
[StateDef 3225]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3225, ChangeAnim]
type = ChangeAnim
trigger1 = Time <= 24
value = 5030

[State 3225, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 3225, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3225, VelSet]
type = VelSet
trigger1 = Time = 24
x = -0.27932960893
y = -6.875

[State 3225, VelAdd]
type = VelAdd
Trigger1 = Time > 24
y = 0.5126953125

[State 3225, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3225, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100


;Saika Hit 2-5
[StateDef 3226]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3226, ChangeAnim: Back]
type = ChangeAnim
trigger1 = Time <= 2 && !SelfAnimExist(5051)
value = 5030

[State 3226, ChangeAnim: Up/DiagUp]
type = ChangeAnim
trigger1 = Time <= 2 && SelfAnimExist(5051)
value = 5051

[State 3226, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
trigger2 = !SelfAnimExist(5061)
trigger2 = Anim = 5051 && !AnimTime
value = 5050

[State 3226, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5061)
trigger1 = Anim = 5051 && !AnimTime
value = 5061

[State 3226, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3226, VelSet]
type = VelSet
trigger1 = Time = 2
x = -0.27932960893
y = -10.3125

[State 3226, VelAdd]
type = VelAdd
Trigger1 = Time > 2
y = 0.5126953125

[State 3226, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3226, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100


;Saika Hit 6
[StateDef 3227]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3227, ChangeAnim: Back]
type = ChangeAnim
trigger1 = Time <= 12 && !SelfAnimExist(5051)
value = 5030

[State 3227, ChangeAnim: Up/DiagUp]
type = ChangeAnim
trigger1 = Time <= 12 && SelfAnimExist(5051)
value = 5051

[State 3227, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
trigger2 = !SelfAnimExist(5061)
trigger2 = Anim = 5051 && !AnimTime
value = 5050

[State 3227, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5061)
trigger1 = Anim = 5051 && !AnimTime
value = 5061

[State 3227, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3227, VelSet]
type = VelSet
trigger1 = Time = 12
x = -0.27932960893
y = -11.25

[State 3227, VelAdd]
type = VelAdd
Trigger1 = Time > 12
y = 0.5126953125

[State 3227, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3227, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<URA 316 SHIKI: SAIKA (YA OTOME'S, CLAW)>=============================
[StateDef 3240]
type = S
physics = N
moveType = A
anim = 3240
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3240, Super Cancel Flash]
type = PalFX
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3240, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 30, -110
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3240, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3240, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3220, 0
channel = 0

[State 3240, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3220, 1
channel = 0

[State 3240, Saika Hit 1]
type = TargetState
trigger1  = NumTarget && AnimElem = 8
value = 3225

[State 3240, Saika Hit 2-5]
type = TargetState
triggerAll  = NumTarget
trigger1 = AnimElem = 12
trigger2 = AnimElem = 14
trigger3 = AnimElemTime(14) = 4
trigger4 = AnimElemTime(14) = 8
value = 3226

[State 3240, Saika Hit 6]
type = TargetState
trigger1  = NumTarget && AnimElemTime(14) = 12
value = 3227

[State 3240, Damage]
type = TargetLifeAdd
triggerAll  = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
trigger3 = AnimElem = 14
trigger4 = AnimElemTime(14) = 4
trigger5 = AnimElemTime(14) = 8
trigger6 = AnimElemTime(14) = 12
value = floor(ifElse(14 * fvar(11) < 7, -7, -14 * fvar(11)))
kill = 0

[State 3240, TargetPowerAdd]
type = TargetPowerAdd
triggerAll  = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
trigger3 = AnimElem = 14
trigger4 = AnimElemTime(14) = 4
trigger5 = AnimElemTime(14) = 8
trigger6 = AnimElemTime(14) = 12
value = 36

[State 3240, HitAdd]
type = HitAdd
triggerAll  = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
trigger3 = AnimElem = 14
trigger4 = AnimElemTime(14) = 4
trigger5 = AnimElemTime(14) = 8
trigger6 = AnimElemTime(14) = 12
value = 1

[State 3240, HitAdd]
type = VarAdd
triggerAll  = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
trigger3 = AnimElem = 14
trigger4 = AnimElemTime(14) = 4
trigger5 = AnimElemTime(14) = 8
trigger6 = AnimElemTime(14) = 12
var(13) = 1

[State 3240, Juggle]
type = VarAdd
triggerAll  = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
trigger3 = AnimElem = 14
trigger4 = AnimElemTime(14) = 4
trigger5 = AnimElemTime(14) = 8
trigger6 = AnimElemTime(14) = 12
var(15) = 1
ignoreHitPause = 1

[State 3240, EnvShake]
type = EnvShake
triggerAll  = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
trigger3 = AnimElem = 14
trigger4 = AnimElemTime(14) = 4
trigger5 = AnimElemTime(14) = 8
trigger6 = AnimElemTime(14) = 12
time = 18
ampl = -6
freq = 120

[State 3240, Hit Sound]
type = PlaySnd
triggerAll  = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
trigger3 = AnimElem = 14
trigger4 = AnimElemTime(14) = 4
trigger5 = AnimElemTime(14) = 8
trigger6 = AnimElemTime(14) = 12
value = 2, 9
channel = 2

[State 3240, Hit Spark]
type = Helper
triggerAll  = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
trigger3 = AnimElem = 14
trigger4 = AnimElemTime(14) = 4
trigger5 = AnimElemTime(14) = 8
trigger6 = AnimElemTime(14) = 12
helperType = Normal
stateNo = 8019
ID = 8001
name = "Spark"
posType = P2
pos = 0, (EnemyNear, const(size.mid.pos.y))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
facing = -1
ignoreHitPause = 1

[State 3240, BGPalFX]
type = BGPalFX
trigger1 = AnimElem = 21
time = 32
sinAdd = 255, -255, -255, 64

[State 3240, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(21) >= 0 && AnimElemTime(26) < 0
time = 1
add = 28 * (Time - 119), -28 * (Time - 119), -28 * (Time - 119)

[State 3240, Voice]
type = PlaySnd
trigger1 = AnimElem = 26
value = 3510, 0
channel = 0

[State 3240, Woosh]
type = PlaySnd
trigger1 = AnimElem = 29
value = 1, 2
channel = 1

[State 3240, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 28
value = 40, 0

[State 3240, Dust Helper]
type = Helper
trigger1 = AnimElem = 27
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3240, VelSet]
type = VelSet
trigger1 = AnimElem = 27
x = 6.14525139665;ifElse(var(10) = 2, 7.82122905028, ifElse(var(10) = 1, 6.98324022346, 6.14525139665))
y = -5

[State 3240, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(27) > 0
y = 0.5859375

[State 3240, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) <  (1 + var(13))
trigger1 = AnimElem = 30
ID = 3240
attr = A, HA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
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
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3240, Slash Visual Effect 1]
type = Explod
trigger1 = NumTarget && AnimElem = 30
ID = 3240
anim = 3043
sprPriority = 3
posType = P1
pos = 0, 36
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3240, Slash Visual Effect 2]
type = Explod
trigger1 = NumTarget && AnimElem = 30
ID = 3243
anim = 3044
sprPriority = 2
posType = P1
pos = 0, 36
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3240, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 30
value = 2, 9
channel = 2

[State 3240, Slash Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 30
value = 3040, 2
channel = 4

[State 3240, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3241


;Landing
[StateDef 3241]
type = S
anim = 3241
physics = N
moveType = I
velSet = 0, 0

[State 3241, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3241, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3241, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 3241, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<URA 100 SHIKI: ONI HOMURA>==========================
[StateDef 3300]
type = S
physics = N
moveType = A
anim = 3300 + 10000 * (var(40) = 1)
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -1000
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
var(17) = 43

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
trigger1 = AnimElemTime(6) < 0
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 14, -52
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3300, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3300, Voice]
type = PlaySnd
trigger1 = !Time
value = 730, 1 + 10 * (var(40) = 1)
channel = 0

[State 3300, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 2 + 10 * (var(40) = 1)
channel = 0

[State 3300, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Oni Homura Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3300, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 8.93854748603

[State 3300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(12) < 0 && vel x >= 0
x = -0.69832402234

[State 3300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 3300, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = AnimElem = 4
attr = S, HA
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
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 42), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3300, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40, 0
channel = 4

[State 3300, Ground Hit 2]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = AnimElem = 5
attr = S, HA
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
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3300, Ground Hit 3]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = AnimElem = 6 && !MoveContact && !MoveReversed
attr = S, HA
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
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3300, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 52, 0
channel = 5

[State 3300, Voice]
type = PlaySnd
trigger1 = AnimElem = 12
value = 1320, 0 + 10 * (var(40) = 1)
channel = 0

[State 3300, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 13
value = 1, 2
channel = 1

[State 3300, Ground Hit 4]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = AnimElem = 14
attr = S, HA
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
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 42), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3300, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 15
value = 1100, 1
channel = 3

[State 3300, Oni Homura Fire]
type = Helper
trigger1 = AnimElem = 15
helperType = Normal
stateNo = 1105
ID = 1105
name = "Oni Homura Fire"
posType = P1
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1
ignoreHitPause = 0

[State 3300, PosAdd]
type = VelSet
trigger1 = AnimElem = 15
x = 8.93854748603

[State 3300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(15) > 0 && vel x >= 0
x = -0.69832402234

[State 3300, Ground Hit 5]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = AnimElem = 15
attr = S, HA
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
ground.velocity = -4.46927374302, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -72
palFX.time = 33
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3300, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(15) >= 0
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3300, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(15) >= 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 33, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3300, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 16
value = 40, 0
channel = 4

[State 3300, Dust Helper]
type = Helper
trigger1 = AnimElem = 16
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oniyaki Dust"
posType = P1
ownPal = 1

[State 3300, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 16
stateType = A
physics = N

[State 3300, VelSet]
type = VelSet
trigger1 = AnimElemTime(16) = 1
y = -10

[State 3300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(16) > 1
y = 0.5859375

[State 3300, Air Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 16
attr = A, HA
hitFlag = MAF
guardFlag = MA
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
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -100
palFX.time = 33
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(17) >= 0
moveType = I

[State 3300, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3301


;Landing
[StateDef 3301]
type = S
anim = 3301 + 10000 * (var(40) = 1)
physics = N
moveType = I
velSet = 0,0

[State 3301, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3301, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3301, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 3301, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX URA 100 SHIKI: ONI HOMURA>=============================
[StateDef 3350]
type = S
physics = N
moveType = A
anim = 3350 + 10000 * (var(40) = 1)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
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
var(17) = 43

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
trigger1 = AnimElemTime(6) < 0
time = 1
value = SCA

[State 3350, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 14, -52
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3350, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, 0
darken = 0

[State 3350, Voice]
type = PlaySnd
trigger1 = !Time
value = 730, 1 + 10 * (var(40) = 1)
channel = 0

[State 3350, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 12
value = 4, 2 + 10 * (var(40) = 1)
channel = 0

[State 3350, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
trigger2 = AnimElem = 12
helperType = Normal
stateNo = 8103
ID = 8100
name = "Oni Homura Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3350, VelSet]
type = VelSet
trigger1 = AnimElem = 3
trigger2 = AnimElem = 12
x = 8.93854748603

[State 3350, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(22) < 0 && vel x >= 0
x = -0.69832402234

[State 3350, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 14
value = 1, 2
channel = 1

[State 3350, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = AnimElem = 4 || AnimElem = 14
attr = S, HA
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
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 42), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3350, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 15
value = 40, 0
channel = 4

[State 3350, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = AnimElem = 5 || AnimElem = 15
attr = S, HA
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
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3350, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = (AnimElem = 6 || AnimElem = 16) && !MoveContact && !MoveReversed
attr = S, HA
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
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3350, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 11
trigger2 = AnimElem = 21
value = 52, 0
channel = 5

[State 3350, Voice]
type = PlaySnd
trigger1 = AnimElem = 22
value = 1320, 0 + 10 * (var(40) = 1)
channel = 0

[State 3350, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 23
value = 1, 2
channel = 1

[State 3350, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = AnimElem = 24
attr = S, HA
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
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 42), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3350, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 25
value = 1100, 1
channel = 3

[State 3350, Oni Homura Fire]
type = Helper
trigger1 = AnimElem = 25
helperType = Normal
stateNo = 1105
ID = 1105
name = "Oni Homura Fire"
posType = P1
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1
ignoreHitPause = 0

[State 3350, PosAdd]
type = VelSet
trigger1 = AnimElem = 25
x = 13.4078212291

[State 3350, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(25) > 0 && vel x >= 0
x = -0.69832402234

[State 3350, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = AnimElem = 25
attr = S, HA
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
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -72
palFX.time = 33
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3350, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(25) >= 0
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3350, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(25) >= 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 33, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3350, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 26
value = 40, 0
channel = 4

[State 3350, Dust Helper]
type = Helper
trigger1 = AnimElem = 26
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oniyaki Dust"
posType = P1
ownPal = 1

[State 3350, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 26
stateType = A
physics = N

[State 3350, VelSet]
type = VelSet
trigger1 = AnimElemTime(26) = 1
y = -12.5

[State 3350, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(26) > 1
y = 0.5859375

[State 3350, Final Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 26
attr = A, HA
hitFlag = MAF
guardFlag = MA
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
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -100
palFX.time = 33
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3350, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(27) >= 0
moveType = I

[State 3350, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3301



;========================<URA 311 SHIKI: SAKU TSUMA KUSHI>=============================
[StateDef 3400]
type = S
physics = N
moveType = A
anim = 3400
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3400, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3400, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3400, 4999]) && var(8)

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
var(17) = 43

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
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3400, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 38, -52
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3400, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
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

[State 3400, Super Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 41, 0
channel = 4

[State 3400, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
x = 11

[State 3400, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Saku Tsuma Kushi Dust"
posType = P1
ownPal = 1

[State 3400, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) >= 0
value = , AP
time = 1

[State 3400, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = 8.93854748603
y = -3.75

[State 3400, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1
y = 0.5859375

[State 3400, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3401


;Landing
[StateDef 3401]
type = S
physics = N
moveType = A
velSet = 0, 0
anim = 3401
ctrl = 0
sprPriority = 1

[State 3401, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3401, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1, 2
channel = 1

[State 3401, Fire Sound]
type = PlaySnd
trigger1 = !Time
value = 1100, 1
channel = 3

[State 3401, Tsuma Kushi Visual Effect]
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

[State 3401, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 4

[State 3401, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3401, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 1
ID = 3400
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
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
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yaccel = 0.5126953125
fall = 0
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3401, Flame Particles]
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

[State 3401, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 28, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3401, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3400) > 1
ID = 3400
keepOne = 1
excludeID = 3400
ignoreHitPause = 1

[State 3401, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3400)
value = 3415
ID = 3400
ignoreHitPause = 1
persistent = 0

[State 3401, ChangeState]
type = ChangeState
trigger1 = NumTarget(3400)
trigger1 = MoveHit && Target, Alive
value = 3410

[State 3401, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) <= 0
trigger1 = HitPauseTime <= 10
value = 3401
elem = 2
ignoreHitPause = 1

[State 3401, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= 8
value = 3401
elem = 3
ignoreHitPause = 1

[State 3401, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= 6
value = 3401
elem = 4
ignoreHitPause = 1

[State 3401, End]
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
velSet = 0,0

[State 3410, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3410, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0

[State 3410, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3410, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(20) < 0
pos = 50, 0

[State 3410, TargetBind 1]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = 82, -65

[State 3410, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 24, -8

[State 3410, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 32, -2

[State 3410, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
pos = 40, -12

[State 3410, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 12, -22

[State 3410, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 30, -82

[State 3410, TargetBind 7]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = 42, -132

[State 3410, TargetBind 7]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = -12, -144

[State 3410, TargetBind 7]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = -28, -138

[State 3410, TargetBind 7]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
pos = -30, -122

[State 3410, TargetBind 7]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(13) < 0
pos = -8, -108

[State 3410, TargetBind 7]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
pos = 18, -100

[State 3410, TargetBind 8]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(14) = 0
pos = 42, -12

[State 3410, Slam Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 2
value = 1320, 1
channel = 1

[State 3410, Impact Dust]
type = Helper
trigger1 = NumTarget && AnimElem = 2
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
facing = -1
pos = 32, 0
ownPal = 1

[State 3410, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 2
time = 18
ampl = -6
freq = 120

[State 3410, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3410, 0
channel = 0

[State 3410, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
x = 14.3016759777

[State 3410, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 41, 0
channel = 4

[State 3410, Dust Helper]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 8100
ID = 8100
name = "Saku Tsuma Kushi Dust"
posType = P1
ownPal = 1

[State 3410, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 8
stateType = A
physics = N

[State 3410, VelSet]
type = VelSet
trigger1 = AnimElemTime(8) = 1
y = -4.0625

[State 3410, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 1 && vel y < 0
y = 0.09765625

[State 3410, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 1 && vel y >= 0
y = 0.29296875

[State 3410, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 12
value = 1100, 1
channel = 3

[State 3410, Saku Tsuma Kushi Fire]
type = Helper
trigger1 = AnimElem = 12
helperType = Normal
stateNo = 1105
ID = 1140
name = "Saku Tsuma Kushi Fire"
posType = P1
size.xScale = 0.55
size.yScale = 0.55
ownPal = 1
ignoreHitPause = 0

[State 3410, Damage]
type = TargetLifeAdd
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22
value = floor(ifElse(21 * fvar(11) < 7, -7, -21 * fvar(11)))
kill = 0

[State 3410, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 24
value = floor(ifElse(70 * fvar(11) < 7, -7, -70 * fvar(11)))

[State 3410, TargetPowerAdd]
type = TargetPowerAdd
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
value = 36

[State 3410, HitAdd]
type = HitAdd
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
value = 1

[State 3410, HitAdd]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
var(13) = 1

[State 3410, Juggle]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
var(15) = 1
ignoreHitPause = 1

[State 3410, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 24
value = 3416

[State 3410, Hit Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
value = 2, 6
channel = 2

[State 3410, Explosion Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
value = 1320, 2
channel = 4

[State 3410, Kototsuki In Explosion]
type = Explod
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
anim = 1321
sprPriority = 3
posType = P1
pos = 42, -98
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3410, Hit Spark]
type = Helper
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
helperType = Normal
stateNo = 8014
ID = 8001
name = "Spark"
posType = P1
pos = 42, -98
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3410, Pause]
type = Pause
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
time = 2

[State 3410, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
time = 18
ampl = -6
freq = 120

[State 3410, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18 || AnimElem = 20 || AnimElem = 22 || AnimElem = 24
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3410, Flame Particles Timer Set]
type = Null
trigger1 = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18 || AnimElem = 20 || AnimElem = 22
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 6, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3410, Flame Particles Timer Set]
type = Null
trigger1 = NumTarget
trigger1 = AnimElem = 24
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 45, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3410, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101


;Target
[StateDef 3415]
type = A
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 3415, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3415

[State 3415, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 3415, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 3415, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(7) < 0
trigger2 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
value = 2

[State 3415, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
trigger2 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
value = 1

[State 3415, PalFX]
type = PalFX
trigger1 = AnimElem = 9
trigger2 = AnimElemTime(9) > 0 && Time % 4 = 0
time = 4
mul = 128, 128, 128
sinAdd = 96, 96, 96, 4


;After Throw
[StateDef 3416]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3416, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030

[State 3416, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 3416, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3416, PalFX]
type = PalFX
trigger1 = !Time
time = 45
mul = 128, 128, 128
sinAdd = 96, 96, 96, 4

[State 3416, VelSet]
type = VelSet
trigger1 = Time = 1
x = -2.234636872
y = -10

[State 3416, VelAdd]
type = VelAdd
Trigger1 = Time >= 1
y = 0.537109375

[State 3416, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3416, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<MAX URA 1207 SHIKI: YAMI SOGI>=============================
[StateDef 3450]
type = S
physics = N
moveType = A
anim = 3400
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3450, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3450, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3450, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3450, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3450, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

[State 3450, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3450, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3450, NotHitBy]
type = NotHitBy
trigger1 = !Time
time = 45
value = SCA

[State 3450, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 38, -52
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3450, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, 0
darken = 0

[State 3450, Voice]
type = PlaySnd
trigger1 = !Time
value = 3400, 0
channel = 0

[State 3450, Super Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 41, 0
channel = 4

[State 3450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
x = 11

[State 3450, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Saku Tsuma Kushi Dust"
posType = P1
ownPal = 1

[State 3450, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) >= 0
value = , AP
time = 1

[State 3450, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 3450, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = 11.1731843575
y = -3.75

[State 3450, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1
y = 0.5859375

[State 3450, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3451


;Landing
[StateDef 3451]
type = S
physics = N
moveType = A
velSet = 0, 0
anim = 3401
ctrl = 0
sprPriority = 1

[State 3451, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3451, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1, 2
channel = 1

[State 3451, Fire Sound]
type = PlaySnd
trigger1 = !Time
value = 1100, 1
channel = 3

[State 3451, Tsuma Kushi Visual Effect]
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

[State 3451, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 4

[State 3451, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3451, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 1
ID = 3450
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
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
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yaccel = 0.5126953125
fall = 0
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3451, Flame Particles]
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

[State 3451, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 28, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3451, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3450) > 1
ID = 3450
keepOne = 1
excludeID = 3450
ignoreHitPause = 1

[State 3451, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3450)
value = 3415
ID = 3450
ignoreHitPause = 1
persistent = 0

[State 3451, ChangeState]
type = ChangeState
trigger1 = NumTarget(3450)
trigger1 = MoveHit && Target, Alive
value = 3460

[State 3451, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) <= 0
trigger1 = HitPauseTime <= 10
value = 3401
elem = 2
ignoreHitPause = 1

[State 3451, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= 8
value = 3401
elem = 3
ignoreHitPause = 1

[State 3451, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= 6
value = 3401
elem = 4
ignoreHitPause = 1

[State 3451, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3460]
type = S
anim = 3460
physics = N
moveType = A
velSet = 0,0

[State 3460, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3460, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0

[State 3460, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3460, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(20) < 0
pos = 50, 0

[State 3460, TargetBind 1]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = 82, -65

[State 3460, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 24, -8

[State 3460, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 32, -2

[State 3460, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
pos = 40, -12

[State 3460, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 12, -22

[State 3460, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 30, -82

[State 3460, TargetBind 7]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = 42, -132

[State 3460, TargetBind 7]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = -12, -144

[State 3460, TargetBind 7]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = -28, -138

[State 3460, TargetBind 7]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
pos = -30, -122

[State 3460, TargetBind 7]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(13) < 0
pos = -8, -108

[State 3460, TargetBind 7]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
pos = 18, -100

[State 3460, TargetBind 8]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(14) = 0
pos = 42, -12

[State 3460, Slam Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 2
value = 1320, 1
channel = 1

[State 3460, Impact Dust]
type = Helper
trigger1 = NumTarget && AnimElem = 2
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
facing = -1
pos = 32, 0
ownPal = 1

[State 3460, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 2
time = 18
ampl = -6
freq = 120

[State 3460, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3410, 0
channel = 0

[State 3460, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
x = 14.3016759777

[State 3460, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 41, 0
channel = 4

[State 3460, Dust Helper]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 8100
ID = 8100
name = "Saku Tsuma Kushi Dust"
posType = P1
ownPal = 1

[State 3460, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 8
stateType = A
physics = N

[State 3460, VelSet]
type = VelSet
trigger1 = AnimElemTime(8) = 1
y = -5.625

[State 3460, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 1 && vel y < 0
y = 0.09765625

[State 3460, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 1 && vel y >= 0
y = 0.29296875

[State 3460, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 12
value = 1100, 1
channel = 3

[State 3460, Saku Tsuma Kushi Fire]
type = Helper
trigger1 = AnimElem = 12
helperType = Normal
stateNo = 1105
ID = 1140
name = "Saku Tsuma Kushi Fire"
posType = P1
size.xScale = 0.55
size.yScale = 0.55
ownPal = 1
ignoreHitPause = 0

[State 3460, Damage]
type = TargetLifeAdd
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
trigger3 = AnimElem = 26 || AnimElem = 28
value = floor(ifElse(28 * fvar(11) < 7, -7, -28 * fvar(11)))
kill = 0

[State 3460, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 30
value = floor(ifElse(105 * fvar(11) < 7, -7, -105 * fvar(11)))

[State 3460, TargetPowerAdd]
type = TargetPowerAdd
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
trigger3 = AnimElem = 26 || AnimElem = 28 || AnimElem = 30
value = 36

[State 3460, HitAdd]
type = HitAdd
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
trigger3 = AnimElem = 26 || AnimElem = 28 || AnimElem = 30
value = 1

[State 3460, HitAdd]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
trigger3 = AnimElem = 26 || AnimElem = 28 || AnimElem = 30
var(13) = 1

[State 3460, Juggle]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
trigger3 = AnimElem = 26 || AnimElem = 28 || AnimElem = 30
var(15) = 1
ignoreHitPause = 1

[State 3460, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 30
value = 3416

[State 3460, Hit Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
trigger3 = AnimElem = 26 || AnimElem = 28 || AnimElem = 30
value = 2, 6
channel = 2

[State 3460, Explosion Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
trigger3 = AnimElem = 26 || AnimElem = 28 || AnimElem = 30
value = 1320, 2
channel = 4

[State 3460, Kototsuki In Explosion]
type = Explod
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
trigger3 = AnimElem = 26 || AnimElem = 28 || AnimElem = 30
anim = 1321
sprPriority = 3
posType = P1
pos = 42, -98
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3460, Hit Spark]
type = Helper
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
trigger3 = AnimElem = 26 || AnimElem = 28 || AnimElem = 30
helperType = Normal
stateNo = 8014
ID = 8001
name = "Spark"
posType = P1
pos = 42, -98
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3460, Pause]
type = Pause
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
trigger3 = AnimElem = 26 || AnimElem = 28 || AnimElem = 30
time = 2

[State 3460, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18
trigger2 = AnimElem = 20 || AnimElem = 22 || AnimElem = 24
trigger3 = AnimElem = 26 || AnimElem = 28 || AnimElem = 30
time = 18
ampl = -6
freq = 120

[State 3460, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18 || AnimElem = 20 || AnimElem = 22 || AnimElem = 24 || AnimElem = 26 || AnimElem = 28 || AnimElem = 30
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3460, Flame Particles Timer Set]
type = Null
trigger1 = NumTarget
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18 || AnimElem = 20 || AnimElem = 22 || AnimElem = 24 || AnimElem = 26 || AnimElem = 28
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 6, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3460, Flame Particles Timer Set]
type = Null
trigger1 = NumTarget
trigger1 = AnimElem = 30
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 45, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3460, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101



;========================<URA 1207 SHIKI: YAMI SOGI>=============================
[StateDef 3500]
type = S
physics = N
moveType = A
anim = 3500
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -1000
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
var(17) = 43

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
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3500, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -18, -98
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3500, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3500, Voice]
type = PlaySnd
trigger1 = !Time
value = 3500, 0
channel = 0

[State 3500, Yami Sogi Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 10
value = 1000, 1
channel = 3

[State 3500, Yami Barai Visual Effect]
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

[State 3500, Yami Sogi Visual Effect]
type = Explod
trigger1 = AnimElem = 10
ID = 3505
anim = 3503
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3500, Projectile]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 3505
ID = 3505
name = "Yami Sogi Projectile"
posType = P1
pos = 54, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3500, ChangeState]
type = TargetBind
trigger1 = NumHelper(3505) && AnimElemTime(4) >= 0 && AnimElemTime(10) < 0
trigger1 = (Helper(3505), MoveHit)
pos = 38, 0

[State 3500, Projectile]
type = Helper
trigger1 = AnimElem = 11
helperType = Normal
stateNo = 3505
ID = 3510
name = "Yami Sogi Projectile"
posType = P1
pos = 65, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3500, ChangeState]
type = ChangeState
trigger1 = NumHelper(3510) && AnimElem = 16
trigger1 = (Helper(3510), NumTarget(3510)) && (Helper(3510), MoveHit)
value = 3510

[State 3500, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3510]
type = S
anim = 3510
physics = N
moveType = A
velSet = 0, 0

[State 3510, Voice]
type = PlaySnd
trigger1 = AnimElem = 12
value = 3510, 0
channel = 0

[State 3510, Yami Sogi Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 13
value = 3200, 1
channel = 3

[State 3510, Projectile]
type = Helper
trigger1 = AnimElem = 13
helperType = Normal
stateNo = 3205
ID = 3515
name = "Yami Sogi Projectile"
posType = P1
pos = 38, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3510, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX URA 1207 SHIKI: YAMI SOGI>=============================
[StateDef 3550]
type = S
physics = N
moveType = A
anim = 3500
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3550, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3550, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3550, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3550, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3550, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

[State 3550, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3550, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3550, NotHitBy]
type = NotHitBy
trigger1 = !Time
time = 45
value = SCA

[State 3550, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -18, -98
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3550, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, 0
darken = 0

[State 3550, Voice]
type = PlaySnd
trigger1 = !Time
value = 3500, 0
channel = 0

[State 3550, Yami Sogi Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 10
value = 1000, 1
channel = 3

[State 3550, Yami Barai Visual Effect]
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

[State 3550, Yami Sogi Visual Effect]
type = Explod
trigger1 = AnimElem = 10
ID = 3505
anim = 3503
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3550, Projectile]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 3505
ID = 3505
name = "Yami Sogi Projectile"
posType = P1
pos = 54, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3550, Projectile]
type = Helper
trigger1 = AnimElem = 11
helperType = Normal
stateNo = 3505
ID = 3560
name = "Yami Sogi Projectile"
posType = P1
pos = 65, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3550, ChangeState]
type = ChangeState
triggerAll = AnimElem = 16
triggerAll = NumHelper(3560)
trigger1 = (Helper(3560), NumTarget(3510))
trigger1 = (Helper(3560), MoveHit)
value = 3560

[State 3550, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3560]
type = S
anim = 3560
physics = N
moveType = A
velSet = 0, 0

[State 3560, Voice]
type = PlaySnd
trigger1 = AnimElem = 12
value = 3510, 0
channel = 0

[State 3560, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(10) < 0
time = 1
add = 28 * (Time - 15), -28 * (Time - 15), -28 * (Time - 15)

[State 3560, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(13) < 0
time = 1
add = 255 - 32 * (Time - 47), -255 + 32 * (Time - 47), -255 + 32 * (Time - 47)

[State 3560, Yami Sogi Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 13
trigger2 = AnimElem = 16
trigger3 = AnimElem = 19
value = 3200, 1
channel = 1

[State 3560, Projectile]
type = Helper
trigger1 = AnimElem = 13
helperType = Normal
stateNo = 3205
ID = 3565
name = "Yami Sogi Projectile"
posType = P1
pos = 38, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3560, Projectile]
type = Helper
trigger1 = AnimElem = 16
helperType = Normal
stateNo = 3205
ID = 3565
name = "Saika Projectile"
posType = P1
pos = 78, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3560, Projectile]
type = Helper
trigger1 = AnimElem = 19
helperType = Normal
stateNo = 3205
ID = 3575
name = "Saika Projectile"
posType = P1
pos = 118, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3560, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<CHI NO BOSO>=============================
[Statedef 3600]
type = S
physics = S
movetype = I
anim = 3600 + 10000 * (var(40) = 1)
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -3000
facep2 = 1

[State 3600, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3600, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3600, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3600, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3600, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 43

[State 3600, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3600, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3600, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 3600, 0
channel = 0

[State 3600, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 3600, 1
channel = 1

[State 3600, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(34) < 0
time = 1
value = , AA

[State 3600, ReversalDef]
type = ReversalDef
trigger1 = !MoveHit && var(26) <= 0
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(34) < 0
ID = 3600
attr = S, HT
reversal.attr = SCA, NA, SA, HA
pauseTime = 12, 12
sparkNo = -1
sparkXY = 0, 0
hitSound = S3, 0
fall = 1
fall.recover = 0
numHits = 0

[State 3600, Reversal Spark]
type = Helper
trigger1 = NumTarget(3600)
trigger1 = !(Target(3600), IsHelper) && MoveHit
helperType = Normal
stateNo = 8020
ID = 8000
name = "Spark"
postype = P1
pos = 5, -45
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
persistent = 0

[State 3600, TargetState]
type = TargetState
trigger1 = NumTarget(3600)
trigger1 = !(Target(3600), IsHelper) && MoveHit
value = 3615
ignoreHitPause = 1
persistent = 0

[State 3600, ChangeState]
type = ChangeState
trigger1 = NumTarget(3600)
trigger1 = !(Target(3600), IsHelper) && MoveHit
value = 3610

[State 3600, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3610]
type = S
anim = 3610 + 10000 * (var(40) = 1)
physics = N
moveType = A
velSet = 0, 0

[State 3610, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3610, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3615

[State 3610, SuperPause FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = -18, -78
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3610, SuperPause]
type = SuperPause
trigger1 = !Time
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500, 0
darken = 0

[State 3610, Voice Start]
type = PlaySnd
trigger1 = !Time
value = 3610, 0
channel = 0

[State 3610, AfterImage Off]
type = AfterImage
trigger1 = AnimElem = 28
trigger2 = AnimElem = 33
trigger3 = AnimElem = 38
trigger4 = AnimElem = 43
time = 0

[State 3610, AllPalFX]
type = AllPalFX
trigger1 = AnimElem = 24
time = 8
sinAdd = -255, -255, -255, 120

[State 3610, AllPalFX]
type = AllPalFX
trigger1 = AnimElemTime(28) >= 0 && AnimElemTime(29) < 0
trigger2 = AnimElemTime(33) >= 0 && AnimElemTime(34) < 0
trigger3 = AnimElemTime(38) >= 0 && AnimElemTime(39) < 0
trigger4 = AnimElemTime(43) >= 0 && AnimElemTime(44) < 0
time = 1
add = -255,-255,-255

[State 3610, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(29) >= 0 && AnimElemTime(33) < 0
trigger2 = AnimElemTime(34) >= 0 && AnimElemTime(38) < 0
trigger3 = AnimElemTime(39) >= 0 && AnimElemTime(43) < 0
time = 1
add = 255,-255,-255

[State 3610, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(28) >= 0 && AnimElemTime(44) < 0
flag = NoBarDisplay
flag2 = NoFG

[State 3610, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(28) >= 0 && AnimElemTime(44) < 0
flag = NoMusic

[State 3610, Throw]
type = TargetState
trigger1 = AnimElem = 28
value = 3616

[State 3610, Width]
type = Width
trigger1 = NumTarget && AnimElem = 28
edge = 80, 80

[State 3310, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(29) >= 0 && AnimElemTime(33) < 0
pos = -60, 0

[State 3310, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(34) >= 0 && AnimElemTime(38) < 0
pos = -40, 0

[State 3310, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(39) >= 0 && AnimElemTime(43) < 0
pos = 75, 0

[State 3610, Voice 1]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 29
value = 4, 10
channel = 0

[State 3610, Voice 2]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 34
value = 4, 11
channel = 0

[State 3610, Voice 3]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 39
value = 4, 12
channel = 0

[State 3610, Hit Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElem = 30
trigger2 = AnimElem = 35
trigger3 = AnimElem = 40
value = 2, 9
channel = 2

[State 3610, Hit Spark 1]
type = Helper
trigger1 = NumTarget && AnimElem = 30
helperType = Normal
stateNo = 8019
ID = 8001
name = "Spark"
posType = P1
pos = -60, -70
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3610, Hit Spark 2]
type = Helper
trigger1 = NumTarget && AnimElem = 35
helperType = Normal
stateNo = 8019
ID = 8001
name = "Spark"
posType = P1
pos = -40, -80
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3610, Hit Spark 3]
type = Helper
trigger1 = NumTarget && AnimElem = 40
helperType = Normal
stateNo = 8019
ID = 8001
name = "Spark"
posType = P1
pos = 75, -50
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3610, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = AnimElem = 30
trigger2 = AnimElem = 35
trigger3 = AnimElem = 40
trigger4 = AnimElem = 44
time = 18
ampl = -6
freq = 120

[State 3610, Damage]
type = TargetLifeAdd
triggerAll = NumTarget
trigger1 = AnimElem = 30
trigger2 = AnimElem = 35
trigger3 = AnimElem = 40
value = floor(ifElse(105 * fvar(11) < 7, -7, -105 * fvar(11)))
kill = 0

[State 3610, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 44
value = floor(ifElse(175 * fvar(11) < 7, -7, -175 * fvar(11)))

[State 3610, TargetPowerAdd]
type = TargetPowerAdd
triggerAll = NumTarget
trigger1 = AnimElem = 30
trigger2 = AnimElem = 35
trigger3 = AnimElem = 40
trigger4 = AnimElem = 44
value = 36

[State 3610, HitAdd]
type = HitAdd
triggerAll = NumTarget
trigger1 = AnimElem = 30
trigger2 = AnimElem = 35
trigger3 = AnimElem = 40
trigger4 = AnimElem = 44
value = 1

[State 3610, HitAdd]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 30
trigger2 = AnimElem = 35
trigger3 = AnimElem = 40
trigger4 = AnimElem = 44
var(13) = 1

[State 3610, Juggle]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 30
trigger2 = AnimElem = 35
trigger3 = AnimElem = 40
trigger4 = AnimElem = 44
var(15) = 1
ignoreHitPause = 1

[State 3610, Voice Final]
type = PlaySnd
trigger1 = AnimElem = 44
value = 185, 10
channel = 0

[State 3610, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 44
value = 3617

[State 3610, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<HIT BY CHI NO BOSO>=============================
;Target
[StateDef 3615]
type = S
moveType = H
physics  = N
velSet = 0, 0

[State 3615, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3615, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3615, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = Anim
elem = AnimElemNo(0)


;Target 2
[StateDef 3616]
type = S
moveType = H
physics  = N
velSet = 0, 0

[State 3616, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3616, Turn]
type = Turn
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6

[State 3616, ChangeAnim]
type = ChangeAnim2
trigger1 = !Time
value = 3615


;Target 3
[StateDef 3617]
type = L
movetype = H
physics = N

[State 5110, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5110

[State 5110, ChangeState]
type = SelfState
trigger1 = Alive && Time >= 64
value = 5120

[State 5110, ChangeState]
type = SelfState
trigger1 = !Alive && !AnimTime
trigger2 = !Alive && Time >= 24
value = 5150



;========================<SANJINGI NO NI>=============================
[StateDef 3700]
type = S
physics = S
moveType = A
anim = 3700 + 10000 * (var(40) = 1)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -5000
faceP2 = 1

[State 3700, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3700, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3700, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3700, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3700, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 47

[State 3700, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3700, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3700, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) < 0
time = 1
value = SCA

[State 3700, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 30, -65
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3700, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3700, Voice]
type = PlaySnd
trigger1 = !Time
value = 3700, 0 + 10 * (var(40) = 1)
channel = 0

[State 3700, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 7 && P2BodyDist x < 51 && !var(37)
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
p1StateNo = 3710

[State 3700, Voice]
type = PlaySnd
trigger1 = AnimElem = 9
value = 800, 0 + 10 * (var(40) = 1)
channel = 0

[State 3700, Whoosh]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1, 2
channel = 1

[State 3700, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SANJINGI NO NI (SUCCESS)>=============================
[Statedef 3710]
type = S
physics = N
moveType = A
anim = 3710 + 10000 * (var(40) = 1)
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 3710, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3710, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3715

[State 3710, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(7) < 0
edge = 65, 0

[State 3710, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
edge = 85, 0

[State 3710, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(37) < 0
edge = 90, 0

[State 3710, TargetBind 1]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = 80, -56

[State 3710, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
pos = 68, -8

[State 3710, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 48, -30

[State 3710, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 76, -66

[State 3710, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 84, -102

[State 3710, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = 29.4972067039

[State 3710, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(33) < 0
pos = 90, -125

[State 3710, TargetBind 6]
type = TargetBind
trigger1 = NumTarget && AnimElem = 35
pos = 90, 0

[State 3710, Slam Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 2
value = 1320, 1
channel = 1

[State 3710, Impact Dust]
type = Helper
trigger1 = NumTarget && AnimElem = 2
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
facing = -1
pos = 70, 0
ownPal = 1

[State 3710, Sanjingi no Ni Visual Effect 1]
type = Explod
trigger1 = NumTarget && AnimElem = 2
ID = 3711
anim = 3711
bindTime = -1
sprPriority = 3
posType = P1
pos = 70, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3710, Voice]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 6
value = 3710, 0 + 10 * (var(40) = 1)
channel = 0

[State 3710, Sanjingi no Ni Visual Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 8
value = 3710, 2
channel = 3

[State 3710, Sanjingi no Ni Pillar Effect (Back)]
type = Explod
trigger1 = NumTarget && AnimElem = 8
ID = 3712
anim = 3712
bindTime = -1
sprPriority = -3
posType = P1
pos = 75, 0
scale = 0.25, 0.25
ownPal = 1

[State 3710, Sanjingi no Ni Pillar Effect (Front)]
type = Explod
trigger1 = NumTarget && AnimElem = 8
ID = 3712
anim = 3712
bindTime = -1
sprPriority = 3
posType = P1
pos = 75, 0
scale = 0.25, 0.25
ownPal = 1

[State 3710, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = AnimElem = 2
trigger2 = AnimElem = 35
time = 18
ampl = -6
freq = 120

[State 3710, Starting Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 2
value = floor(ifElse(56 * fvar(11) < 7, -7, -56 * fvar(11)))
kill = 0

[State 3710, Damage]
type = TargetLifeAdd
triggerAll = NumTarget
trigger1 = AnimElem = 11
trigger2 = AnimElem = 14
trigger3 = AnimElem = 17
trigger4 = AnimElem = 20
trigger5 = AnimElem = 23
trigger6 = AnimElem = 26
trigger7 = AnimElem = 29
trigger8 = AnimElem = 32
value = floor(ifElse(35 * fvar(11) < 7, -7, -35 * fvar(11)))
kill = 0

[State 3710, Final Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 35
value = floor(ifElse(105 * fvar(11) < 7, -7, -105 * fvar(11)))

[State 3710, TargetPowerAdd]
type = TargetPowerAdd
triggerAll = NumTarget
trigger1 = AnimElem = 2
trigger2 = AnimElem = 11
trigger3 = AnimElem = 14
trigger4 = AnimElem = 17
trigger5 = AnimElem = 20
trigger6 = AnimElem = 23
trigger7 = AnimElem = 26
trigger8 = AnimElem = 29
trigger9 = AnimElem = 32
trigger10 = AnimElem = 35
value = 36

[State 3710, HitAdd]
type = HitAdd
triggerAll = NumTarget
trigger1 = AnimElem = 2
trigger2 = AnimElem = 11
trigger3 = AnimElem = 14
trigger4 = AnimElem = 17
trigger5 = AnimElem = 20
trigger6 = AnimElem = 23
trigger7 = AnimElem = 26
trigger8 = AnimElem = 29
trigger9 = AnimElem = 32
trigger10 = AnimElem = 35
value = 1

[State 3710, HitAdd]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 2
trigger2 = AnimElem = 11
trigger3 = AnimElem = 14
trigger4 = AnimElem = 17
trigger5 = AnimElem = 20
trigger6 = AnimElem = 23
trigger7 = AnimElem = 26
trigger8 = AnimElem = 29
trigger9 = AnimElem = 32
trigger10 = AnimElem = 35
var(13) = 1

[State 3710, Juggle]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 2
trigger2 = AnimElem = 11
trigger3 = AnimElem = 14
trigger4 = AnimElem = 17
trigger5 = AnimElem = 20
trigger6 = AnimElem = 23
trigger7 = AnimElem = 26
trigger8 = AnimElem = 29
trigger9 = AnimElem = 32
trigger10 = AnimElem = 35
var(15) = 1
ignoreHitPause = 1

[State 3710, Juggle]
type = VarSet
triggerAll = NumTarget
trigger1 = AnimElem = 2
trigger2 = AnimElem = 11
trigger3 = AnimElem = 14
trigger4 = AnimElem = 17
trigger5 = AnimElem = 20
trigger6 = AnimElem = 23
trigger7 = AnimElem = 26
trigger8 = AnimElem = 29
trigger9 = AnimElem = 32
trigger10 = AnimElem = 35
var(16) = 1
ignoreHitPause = 1

[State 3070, Hit Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElem = 11
trigger2 = AnimElem = 14
trigger3 = AnimElem = 17
trigger4 = AnimElem = 20
trigger5 = AnimElem = 23
trigger6 = AnimElem = 26
trigger7 = AnimElem = 29
trigger8 = AnimElem = 32
trigger9 = AnimElem = 35
value = 2, 6
channel = 2

[State 3070, Explosion Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElem = 11
trigger2 = AnimElem = 14
trigger3 = AnimElem = 17
trigger4 = AnimElem = 20
trigger5 = AnimElem = 23
trigger6 = AnimElem = 26
trigger7 = AnimElem = 29
trigger8 = AnimElem = 32
trigger9 = AnimElem = 35
value = 1320, 2
channel = 4

[State 3710, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = AnimElem = 11
trigger2 = AnimElem = 14
trigger3 = AnimElem = 17
trigger4 = AnimElem = 20
trigger5 = AnimElem = 23
trigger6 = AnimElem = 26
trigger7 = AnimElem = 29
trigger8 = AnimElem = 32
time = 18
ampl = -6
freq = 120

[State 3710, Hit Spark]
type = Helper
triggerAll = NumTarget
trigger1 = AnimElem = 11
trigger2 = AnimElem = 14
trigger3 = AnimElem = 17
trigger4 = AnimElem = 20
trigger5 = AnimElem = 23
trigger6 = AnimElem = 26
trigger7 = AnimElem = 29
trigger8 = AnimElem = 32
trigger9 = AnimElem = 35
helperType = Normal
stateNo = 8014
ID = 8001
name = "Spark"
posType = P1
pos = 75 + (Random % 30), -125 + (Random % 50)
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3710, Explosion Effect]
type = Explod
triggerAll = NumTarget
trigger1 = AnimElem = 11
trigger2 = AnimElem = 14
trigger3 = AnimElem = 17
trigger4 = AnimElem = 20
trigger5 = AnimElem = 23
trigger6 = AnimElem = 26
trigger7 = AnimElem = 29
trigger8 = AnimElem = 32
trigger9 = AnimElem = 35
anim = 1321
sprPriority = 3
posType = P1
pos = 75 + (Random % 30), -125 + (Random % 60)
scale = 0.5, 0.5
ownPal = 1

[State 3710, Sanjingi no Ni Explosion Effect (Back)]
type = Explod
trigger1 = NumTarget && AnimElem = 32
ID = 3713
anim = 3713
bindTime = -1
sprPriority = -3
posType = P1
pos = 75, 0
scale = 0.625, 0.625
ownPal = 1

[State 3710, Sanjingi no Ni Explosion Effect (Front)]
type = Explod
trigger1 = NumTarget && AnimElem = 32
ID = 3713
anim = 3713
bindTime = -1
sprPriority = 3
posType = P1
pos = 75, 0
scale = 0.625, 0.625
ownPal = 1

[State 3710, Voice]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 35
value = 3710, 1 + 10 * (var(40) = 1)
channel = 0

[State 3710, Sanjingi no Ni Final Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 35
value = 3200, 1
channel = 3

[State 3710, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = NumTarget && AnimElem = 35
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3710, Flame Particles Timer Set]
type = Null
trigger1 = NumTarget && AnimElem = 35
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 46, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3710, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 35
value = 3716

[State 3710, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SANJINGI NO NI (TARGET)>=============================
;Being Thrown
[StateDef 3715]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 3715, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3715

[State 3715, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 3715, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 3716]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3716, ChangeAnim: DiagUp]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5052)
value = 5052

[State 3716, ChangeAnim: Back]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5052)
value = 5030

[State 3716, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 3716, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3716, PalFX]
type = PalFX
trigger1 = !Time
time = 46
mul = 128, 128, 128
sinAdd = 96, 96, 96, 4

[State 3716, VelSet]
type = VelSet
trigger1 = Time = 1
x = -2.23463687151
y = -12.5

[State 3716, VelAdd]
type = VelAdd
Trigger1 = Time >= 1
y = 0.537109375

[State 3716, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3716, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<URA 1029 SHIKI: HOMURA HOTOGI>=============================
[StateDef 3800]
type = S
physics = S
moveType = A
anim = 3800 + 10000 * (var(40) = 1)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3800, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3800, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3800, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3800, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3800, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 47

[State 3800, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3800, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3800, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA

[State 3800, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 8, -74
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3800, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3800, Voice]
type = PlaySnd
trigger1 = !Time
value = 3800, 0 + 10 * (var(40) = 1)
channel = 0

[State 3800, Fire Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 3100, 1
channel = 1

[State 3800, Fire Effect]
type = Explod
trigger1 = !Time
ID = 3803
anim = 3803
bindTime = -1
removeTime = 45
sprPriority = 3
posType = P1
pos = 0, 0
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5, 0.5
ownPal = 1

[State 3800, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) >= 0
value = SCA
time = 1

[State 3800, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 41, 0

[State 3800, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Homura Hotogi Dust"
posType = P1
ownPal = 1

[State 3800, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 3800, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = ifElse((P2Dist x / 20) > 12, 12, P2Dist x / 20)
y = -15

[State 3800, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1
y = 1.5625

[State 3800, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3801


;Landing
[StateDef 3801]
type = S
physics = N
moveType = A
velSet = 0, 0
anim = 3801 + 10000 * (var(40) = 1)
ctrl = 0
sprPriority = 1

[State 3801, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3801, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 4

[State 3801, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3801, HitDef: Throw]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 1 && P2BodyDist x < 69 && !var(37)
attr = S, HT
hitFlag = M-
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
p1StateNo = 3810

[State 3801, Whoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 3801, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<URA 1029 SHIKI: HOMURA HOTOGI (SUCCESS)>=============================
[Statedef 3810]
type = S
physics = N
moveType = A
anim = 3810 + 10000 * (var(40) = 1)
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 3810, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3810, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3815

[State 3810, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(5) < 0
edge = 65, 0

[State 3810, Slam Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1320, 1
channel = 1

[State 3810, Explosion Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3810, 1
channel = 3

[State 3810, Homura Hotogi Visual Effect 1]
type = Explod
trigger1 = AnimElem = 2
anim = 3813
sprPriority = 3
posType = P1
pos = 68, 0
scale = 0.875,0.875
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3810, Homura Hotogi Visual Effect 2]
type = Explod
trigger1 = AnimElem = 5
anim = 3814
sprPriority = 4
posType = P1
pos = 68, 0
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3810, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 80, -56

[State 3810, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
pos = 68, -8

[State 3810, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(5) < 0
time = 1
add = 64 * (Time + 1), -64 * (Time + 1), -64 * (Time + 1)

[State 3810, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(7) < 8
time = 1
add = 255 - 15 * (Time - 66), -255 + 15 * (Time - 66), -255 + 15 * (Time - 66)

[State 3810, TargetBind 4]
type = TargetBind
trigger1 = NumTarget && AnimElem = 5
pos = 26, 0

[State 3810, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 5
value = floor(ifElse(455 * fvar(11) < 7, -7, -455 * fvar(11)))

[State 3810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 5
value = 36

[State 3810, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 5
value = 1

[State 3810, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 5
var(13) = 1

[State 3810, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 5
var(15) = 1
ignoreHitPause = 1

[State 3810, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 5
time = 18
ampl = -6
freq = 120

[State 3810, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = NumTarget && AnimElem = 5
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3810, Flame Particles Timer Set]
type = Null
trigger1 = NumTarget && AnimElem = 5
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 19, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3810, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 5
value = 3816

[State 3810, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SANJINGI NO NI (TARGET)>=============================
;Being Thrown
[StateDef 3815]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 3815, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3815

[State 3815, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 3815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 3816]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3816, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030

[State 3816, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 3816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3816, VelSet]
type = VelSet
trigger1 = Time = 1
x = -5.58659217877
y = -6.25

[State 3816, VelAdd]
type = VelAdd
Trigger1 = Time >= 1
y = 0.78125

[State 3816, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3816, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<URA 108 SHIKI: YA SHIORI>=============================
;Startup
[StateDef 3900]
type = S
physics = N
moveType = A
anim = 3900
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3900, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 3900, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3900, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3900, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3900, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3900, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 43

[State 3900, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255, 255, 255
ignoreHitPause = 1

[State 3900, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3900, NotHitBy]
type = NotHitBy
trigger1 = !Time
time = 43
value = SCA

[State 3900, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -12, -100
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3900, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, 0
darken = 0

[State 3900, Voice]
type = PlaySnd
trigger1 = !Time
value = 730, 1
channel = 0

[State 3900, Fire Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3100, 1
channel = 1

[State 3900, Fire Effect]
type = Explod
trigger1 = AnimElem = 2
ID = 3905
anim = 3105
bindTime = -1
removeTime = -1
sprPriority = -3
posType = P1
pos = -12, -82
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3900, End]
type = ChangeState
triggerAll = !AnimTime && !AILevel
trigger1 = !var(10) && command = "holdx"
trigger2 = var(10) = 1 && command = "holdy"
trigger3 = var(10) = 2 && command = "holdz"
value = 3901

[State 3900, End]
type = ChangeState
trigger1 = !AnimTime
value = 3910


;Holding
[StateDef 3901]
type = S
anim = 3901
physics = N
moveType = A
velSet = 0,0

[State 3901, End]
type = ChangeState
trigger1 = Time = 48
trigger2 = !var(10) && command != "holdx"
trigger3 = var(10) = 1 && command != "holdy"
trigger4 = var(10) = 2 && command != "holdz"
value = 3910


;Attack
[StateDef 3910]
type = S
anim = 3910
physics = N
moveType = A
velSet = 0,0

[State 3910, Stop Ya Shiori Fire Sound]
type = StopSnd
trigger1 = AnimElem = 2
channel = 1
ignoreHitPause = 1

[State 3910, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 2 & NumExplod(3905)
ID = 3905

[State 3910, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3910, 0
channel = 0

[State 3910, Ya Shiori Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3910, 1
channel = 3

[State 3910, Projectile]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 3915
ID = 3915
name = "Ya Shiori Projectile"
posType = P1
pos = 64, -56
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX URA 108 SHIKI: YA SHIORI>=============================
;Startup
[StateDef 3950]
type = S
physics = N
moveType = A
anim = 3900
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3950, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)) && (NumExplod(90000210) || NumExplod(90000215)), 2, ifElse((NumExplod(90000220) || NumExplod(90000225)) && (NumExplod(90000200) || NumExplod(90000205)), 1, 0))

[State 3950, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3950, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3950, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3950, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3950, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

[State 3950, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3950, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3950, NotHitBy]
type = NotHitBy
trigger1 = !Time
time = 45
value = SCA

[State 3950, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -12, -100
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3950, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, 0
darken = 0

[State 3950, Voice]
type = PlaySnd
trigger1 = !Time
value = 730, 1
channel = 0

[State 3950, Fire Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3100, 1
channel = 1

[State 3950, Fire effect]
type = Explod
trigger1 = AnimElem = 2
ID = 3905
anim = 3105
bindTime = -1
removeTime = -1
sprPriority = -3
posType = P1
pos = -12, -82
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3950, End]
type = ChangeState
triggerAll = !AnimTime && !AILevel
trigger1 = !var(10) && command = "holdx" && command = "holdy"
trigger2 = var(10) = 1 && command = "holdx" && command = "holdz"
trigger3 = var(10) = 2 && command = "holdy" && command = "holdz"
value = 3951

[State 3950, End]
type = ChangeState
trigger1 = !AnimTime
value = 3960


;Holding
[StateDef 3951]
type = S
anim = 3901
physics = N
moveType = A
velSet = 0,0

[State 3951, End]
type = ChangeState
trigger1 = Time = 96
trigger2 = !var(10) && command != "holdx" && command != "holdy"
trigger3 = var(10) = 1 && command != "holdx" && command != "holdz"
trigger4 = var(10) = 2 && command != "holdy" && command != "holdz"
value = 3960


;Attack
[StateDef 3960]
type = S
anim = 3910
physics = N
moveType = A
velSet = 0,0

[State 3960, Stop Ya Shiori Fire Sound]
type = StopSnd
trigger1 = AnimElem = 2
channel = 1
ignoreHitPause = 1

[State 3960, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 2 & NumExplod(3905)
ID = 3905

[State 3960, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3910, 0
channel = 0

[State 3960, Ya Shiori Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3910, 1
channel = 3

[State 3960, Projectile]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 3915
ID = 3965
name = "MAX Ya Shiori Projectile"
posType = P1
pos = 64, -56
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3960, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<URA 1131 SHIKI: HOZUKI>=============================
[StateDef 4000]
type = S
physics = N
moveType = A
anim = 4000
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 4000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 4000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 4000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 4000, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 4000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 47

[State 4000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 4000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 4000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) < 0
time = 1
value = SCA

[State 4000, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = -12, -98
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 4000, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 4000, Voice]
type = PlaySnd
trigger1 = !Time
value = 4000, 0
channel = 0

[State 4000, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41, 0
channel = 1

[State 4000, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 11.1731843575

[State 4000, VelSet]
type = VelSet
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(10) < 0
x = 3.35195530726

[State 4000, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 4000, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
ID = 4000
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 0, 0
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
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
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -30
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 4000, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(4000) > 1
ID = 4000
keepOne = 1
excludeID = 4000
ignoreHitPause = 1

[State 4000, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(4000)
value = 4015
ID = 4000
ignoreHitPause = 1
persistent = 0

[State 4000, ChangeState]
type = ChangeState
trigger1 = NumTarget(4000)
trigger1 = MoveHit && Target, Alive
value = 4010

[State 4000, ChangeAnim]
type = ChangeAnim
trigger1 = MoveGuarded
value = 4000
elem = 7
persistent = 0

[State 4000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 4000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 4010]
type = S
anim = 4010
physics = N
moveType = A
velSet = 0, 0

[State 4010, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(6) < 0
edge = 45 + (Target, const(size.ground.front)), 0

[State 4010, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(44) < 0
edge = 23, 56

[State 4010, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 18, -122

[State 4010, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = -65, -95

[State 4010, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = -76, -56

[State 4010, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(44) < 1
pos = -68, -8

[State 4010, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(44) = 1
pos = -26, 0

[State 4010, Voice]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 10
value = 4010, 0
channel = 0

[State 4010, Voice]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 18
value = 4010, 1
channel = 0

[State 4010, Hozuki Flame Pillar Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 18
value = 3810, 1
channel = 3

[State 4010, Hozuki Moon Visual Effect]
type = Explod
trigger1 = NumTarget && AnimElem = 6
ID = 4011
anim = 4011
bindTime = -1
sprPriority = -3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 4010, Hozuki Slam Visual Effect]
type = Explod
trigger1 = NumTarget && AnimElem = 9
ID = 3711
anim = 3711
bindTime = -1
sprPriority = 3
posType = P1
pos = -70, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 4010, Hozuki Flame Pillar Visual Effect (Back)]
type = Explod
trigger1 = NumTarget && AnimElem = 18
ID = 4013
anim = 4013
bindTime = -1
sprPriority = -3
posType = P1
pos = -70, 0
scale = 0.875, 0.875
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 4010, Hozuki Flame Pillar Visual Effect (Front)]
type = Explod
trigger1 = NumTarget && AnimElem = 18
ID = 4013
anim = 4013
bindTime = -1
sprPriority = 3
posType = P1
pos = -70, 0
scale = 0.875, 0.875
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 4010, Woosh Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 5
value = 1, 5
channel = 1

[State 4010, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 6
value = 4016

[State 4010, Grab Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 6
value = 2, 800
channel = 3

[State 4010, Damage]
type = TargetLifeAdd
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
value = floor(ifElse(42 * fvar(11) < 7, -7, -42 * fvar(11)))
kill = 0

[State 4010, Damage]
type = TargetLifeAdd
triggerAll = NumTarget
trigger1 = AnimElem = 18
trigger2 = AnimElem = 20
trigger3 = AnimElem = 22
trigger4 = AnimElem = 24
trigger5 = AnimElem = 26
trigger6 = AnimElem = 28
trigger7 = AnimElem = 30
trigger8 = AnimElem = 32
trigger9 = AnimElem = 34
trigger10 = AnimElem = 36
trigger11 = AnimElem = 38
trigger12 = AnimElem = 40
trigger13 = AnimElem = 42
value = floor(ifElse(14 * fvar(11) < 7, -7, -14 * fvar(11)))
kill = 0

[State 4010, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 44
value = floor(ifElse(84 * fvar(11) < 7, -7, -84 * fvar(11)))

[State 4010, TargetPowerAdd]
type = TargetPowerAdd
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 20
trigger6 = AnimElem = 22
trigger7 = AnimElem = 24
trigger8 = AnimElem = 26
trigger9 = AnimElem = 28
trigger10 = AnimElem = 30
trigger11 = AnimElem = 32
trigger12 = AnimElem = 34
trigger13 = AnimElem = 36
trigger14 = AnimElem = 38
trigger15 = AnimElem = 40
trigger16 = AnimElem = 42
trigger17 = AnimElem = 44
value = 36

[State 4010, HitAdd]
type = HitAdd
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 20
trigger6 = AnimElem = 22
trigger7 = AnimElem = 24
trigger8 = AnimElem = 26
trigger9 = AnimElem = 28
trigger10 = AnimElem = 30
trigger11 = AnimElem = 32
trigger12 = AnimElem = 34
trigger13 = AnimElem = 36
trigger14 = AnimElem = 38
trigger15 = AnimElem = 40
trigger16 = AnimElem = 42
trigger17 = AnimElem = 44
value = 1

[State 4010, HitAdd]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 20
trigger6 = AnimElem = 22
trigger7 = AnimElem = 24
trigger8 = AnimElem = 26
trigger9 = AnimElem = 28
trigger10 = AnimElem = 30
trigger11 = AnimElem = 32
trigger12 = AnimElem = 34
trigger13 = AnimElem = 36
trigger14 = AnimElem = 38
trigger15 = AnimElem = 40
trigger16 = AnimElem = 42
trigger17 = AnimElem = 44
var(13) = 1

[State 4010, Juggle]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 20
trigger6 = AnimElem = 22
trigger7 = AnimElem = 24
trigger8 = AnimElem = 26
trigger9 = AnimElem = 28
trigger10 = AnimElem = 30
trigger11 = AnimElem = 32
trigger12 = AnimElem = 34
trigger13 = AnimElem = 36
trigger14 = AnimElem = 38
trigger15 = AnimElem = 40
trigger16 = AnimElem = 42
trigger17 = AnimElem = 44
var(15) = 1
ignoreHitPause = 1

[State 4010, Slam Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 20
trigger6 = AnimElem = 22
trigger7 = AnimElem = 24
trigger8 = AnimElem = 26
trigger9 = AnimElem = 28
trigger10 = AnimElem = 30
trigger11 = AnimElem = 32
trigger12 = AnimElem = 34
trigger13 = AnimElem = 36
trigger14 = AnimElem = 38
trigger15 = AnimElem = 40
trigger16 = AnimElem = 42
trigger17 = AnimElem = 44
value = 1320, 1
channel = 1

[State 4010, Hit Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 20
trigger6 = AnimElem = 22
trigger7 = AnimElem = 24
trigger8 = AnimElem = 26
trigger9 = AnimElem = 28
trigger10 = AnimElem = 30
trigger11 = AnimElem = 32
trigger12 = AnimElem = 34
trigger13 = AnimElem = 36
trigger14 = AnimElem = 38
trigger15 = AnimElem = 40
trigger16 = AnimElem = 42
trigger17 = AnimElem = 44
value = 2, 6
channel = 2

[State 4010, Explosion Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 20
trigger6 = AnimElem = 22
trigger7 = AnimElem = 24
trigger8 = AnimElem = 26
trigger9 = AnimElem = 28
trigger10 = AnimElem = 30
trigger11 = AnimElem = 32
trigger12 = AnimElem = 34
trigger13 = AnimElem = 36
trigger14 = AnimElem = 38
trigger15 = AnimElem = 40
trigger16 = AnimElem = 42
trigger17 = AnimElem = 44
value = 1320, 2
channel = 4

[State 4010, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 20
trigger6 = AnimElem = 22
trigger7 = AnimElem = 24
trigger8 = AnimElem = 26
trigger9 = AnimElem = 28
trigger10 = AnimElem = 30
trigger11 = AnimElem = 32
trigger12 = AnimElem = 34
trigger13 = AnimElem = 36
trigger14 = AnimElem = 38
trigger15 = AnimElem = 40
trigger16 = AnimElem = 42
trigger17 = AnimElem = 44
time = 18
ampl = -6
freq = 120

[State 4010, Kototsuki In: Explosion Effect 1]
type = Explod
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 20
trigger6 = AnimElem = 22
trigger7 = AnimElem = 24
trigger8 = AnimElem = 26
trigger9 = AnimElem = 28
trigger10 = AnimElem = 30
trigger11 = AnimElem = 32
trigger12 = AnimElem = 34
trigger13 = AnimElem = 36
trigger14 = AnimElem = 38
trigger15 = AnimElem = 40
trigger16 = AnimElem = 42
trigger17 = AnimElem = 44
anim = 1321
sprPriority = 3
posType = P1
pos = -68, -8
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 4010, Impact Dust]
type = Helper
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 20
trigger6 = AnimElem = 22
trigger7 = AnimElem = 24
trigger8 = AnimElem = 26
trigger9 = AnimElem = 28
trigger10 = AnimElem = 30
trigger11 = AnimElem = 32
trigger12 = AnimElem = 34
trigger13 = AnimElem = 36
trigger14 = AnimElem = 38
trigger15 = AnimElem = 40
trigger16 = AnimElem = 42
trigger17 = AnimElem = 44
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
facing = -1
pos = -70, 0
ownPal = 1

[State 4010, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = NumTarget && AnimElem = 44
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 4010, Flame Particles Timer Set]
type = Null
trigger1 = NumTarget && AnimElem = 44
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 37, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 4010, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(44) = 1
value = 4017

[State 4010, Turn]
type = Turn
trigger1 = !AnimTime

[State 4010, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Target
[StateDef 4015]
type = S
moveType = H
physics  = N
velSet = 0, 0

[State 4015, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 4015, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 4015, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5012

[State 4015, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim


;Throw Target
[StateDef 4016]
type = A
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 4016, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 4015

[State 4016, Turn]
type = Turn
trigger1 = !Time
trigger2 = !Time
trigger2 = NumEnemy
trigger2 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 4016, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 4017]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 4017, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 4017, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030

[State 4017, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 4017, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 4017, PalFX]
type = PalFX
trigger1 = !Time
time = 37
mul = 128, 128, 128
sinAdd = 96, 96, 96, 4

[State 4017, VelSet]
type = VelSet
trigger1 = Time = 1
x = -2.234636872
y = -10

[State 4017, VelAdd]
type = VelAdd
Trigger1 = Time >= 1
y = 0.537109375

[State 4017, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 4017, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<URA 127 SHIKI: AOI HANATABA>=============================
[StateDef 4100]
type = S
physics = N
moveType = A
anim = 4100
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 4100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 4100, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [4100, 4999]) && var(8)

[State 4100, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 4100, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 4100, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 43

[State 4100, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 4100, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 4100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 4100, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 12, -40
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 4100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 4100, Voice]
type = PlaySnd
trigger1 = !Time
value = 4100, 0
channel = 0

[State 4100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 16
value = 4, 0
channel = 0

[State 4100, Voice]
type = PlaySnd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 23
value = 4, 1
channel = 0

[State 4100, Voice]
type = PlaySnd
trigger1 = AnimElem = 30
value = 4, 2
channel = 0

[State 4100, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 10
trigger3 = AnimElem = 17
trigger4 = AnimElem = 24
trigger5 = AnimElem = 31
value = 1, 2
channel = 1

[State 4100, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 9
trigger3 = AnimElem = 16
trigger4 = AnimElem = 23
trigger5 = AnimElem = 30
value = 110, 0
channel = 1

[State 4100, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 1
trigger2 = AnimElemTime(9) = 1
trigger3 = AnimElemTime(16) = 1
trigger4 = AnimElemTime(23) = 1
trigger5 = AnimElemTime(30) = 1
x = 8.37988826816

[State 4100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1 && AnimElemTime(5) < 0
trigger2 = AnimElemTime(9) > 1 && AnimElemTime(12) < 0
trigger3 = AnimElemTime(16) > 1 && AnimElemTime(19) < 0
trigger4 = AnimElemTime(23) > 1 && AnimElemTime(26) < 0
trigger5 = AnimElemTime(30) > 1 && AnimElemTime(33) < 0
x = -0.32733938547

[State 4100, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(9) < 0
trigger2 = AnimElemTime(12) >= 0 && AnimElemTime(16) < 0
trigger3 = AnimElemTime(19) >= 0 && AnimElemTime(23) < 0
trigger4 = AnimElemTime(26) >= 0 && AnimElemTime(30) < 0
trigger5 = AnimElemTime(33) >= 0
x = 0

[State 4100, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 4
trigger2 = AnimElem = 11
trigger3 = AnimElem = 18
trigger4 = AnimElem = 25
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((AnimElem = 4 || AnimElem = 18), 21, 28) < 7, 7, fvar(11) * ifElse((AnimElem = 4 || AnimElem = 18), 21, 28))), 7
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
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 4100, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= 6
value = 4100
elem = 5
ignoreHitPause = 1

[State 4100, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= 4
value = 4100
elem = 6
ignoreHitPause = 1

[State 4100, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) <= 0
trigger1 = HitPauseTime <= 6
value = 4100
elem = 12
ignoreHitPause = 1

[State 4100, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(13) <= 0
trigger1 = HitPauseTime <= 4
value = 4100
elem = 13
ignoreHitPause = 1

[State 4100, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(18) >= 0 && AnimElemTime(19) <= 0
trigger1 = HitPauseTime <= 6
value = 4100
elem = 19
ignoreHitPause = 1

[State 4100, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(19) >= 0 && AnimElemTime(20) <= 0
trigger1 = HitPauseTime <= 4
value = 4100
elem = 20
ignoreHitPause = 1

[State 4100, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(25) >= 0 && AnimElemTime(26) <= 0
trigger1 = HitPauseTime <= 6
value = 4100
elem = 26
ignoreHitPause = 1

[State 4100, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(26) >= 0 && AnimElemTime(27) <= 0
trigger1 = HitPauseTime <= 4
value = 4100
elem = 27
ignoreHitPause = 1

[State 4100, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 32
attr = S, HA
hitFlag = MAF
guardFlag = M
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
ground.velocity = -2.234636872, -10
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 4100, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(32) >= 0 && AnimElemTime(33) <= 0
trigger1 = HitPauseTime <= 10
value = 4100
elem = 33
ignoreHitPause = 1

[State 4100, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(33) >= 0 && AnimElemTime(34) <= 0
trigger1 = HitPauseTime <= 8
value = 4100
elem = 34
ignoreHitPause = 1

[State 4100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(33) >= 0
moveType = I

[State 4100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX URA 127 SHIKI: AOI HANATABA>=============================
[StateDef 4150]
type = S
physics = N
moveType = A
anim = 4150
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 4150, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 4150, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 4150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 4150, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 4150, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 43

[State 4150, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 4150, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 4150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 4150, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 12, -40
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 4150, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, 0
darken = 0

[State 4150, Voice]
type = PlaySnd
trigger1 = !Time
value = 4150, 0
channel = 0

[State 4150, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 16
trigger3 = AnimElem = 30
value = 4, 0
channel = 0

[State 4150, Voice]
type = PlaySnd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 23
trigger3 = AnimElem = 37
value = 4, 1
channel = 0

[State 4150, Voice]
type = PlaySnd
trigger1 = AnimElem = 44
value = 4, 2
channel = 0

[State 4150, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 10
trigger3 = AnimElem = 17
trigger4 = AnimElem = 24
trigger5 = AnimElem = 31
trigger6 = AnimElem = 38
trigger7 = AnimElem = 45
value = 1, 2
channel = 1

[State 4150, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 9
trigger3 = AnimElem = 16
trigger4 = AnimElem = 23
trigger5 = AnimElem = 30
trigger6 = AnimElem = 37
trigger7 = AnimElem = 44
value = 110, 0
channel = 1

[State 4150, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 1
trigger2 = AnimElemTime(9) = 1
trigger3 = AnimElemTime(16) = 1
trigger4 = AnimElemTime(23) = 1
trigger5 = AnimElemTime(30) = 1
trigger6 = AnimElemTime(37) = 1
trigger7 = AnimElemTime(44) = 1
x = 8.37988826816

[State 4150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1 && AnimElemTime(5) < 0
trigger2 = AnimElemTime(9) > 1 && AnimElemTime(12) < 0
trigger3 = AnimElemTime(16) > 1 && AnimElemTime(19) < 0
trigger4 = AnimElemTime(23) > 1 && AnimElemTime(26) < 0
trigger5 = AnimElemTime(30) > 1 && AnimElemTime(33) < 0
trigger6 = AnimElemTime(37) > 1 && AnimElemTime(40) < 0
trigger7 = AnimElemTime(44) > 1 && AnimElemTime(47) < 0
x = -0.32733938547

[State 4150, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(9) < 0
trigger2 = AnimElemTime(12) >= 0 && AnimElemTime(16) < 0
trigger3 = AnimElemTime(19) >= 0 && AnimElemTime(23) < 0
trigger4 = AnimElemTime(26) >= 0 && AnimElemTime(30) < 0
trigger5 = AnimElemTime(33) >= 0 && AnimElemTime(37) < 0
trigger6 = AnimElemTime(40) >= 0 && AnimElemTime(44) < 0
trigger7 = AnimElemTime(47) >= 0 && AnimElemTime(51) < 0
x = 0

[State 4150, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 4
trigger2 = AnimElem = 11
trigger3 = AnimElem = 18
trigger4 = AnimElem = 25
trigger5 = AnimElem = 32
trigger6 = AnimElem = 39
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((AnimElem = 4 || AnimElem = 18 || AnimElem = 32), 21, 28) < 7, 7, fvar(11) * ifElse((AnimElem = 4 || AnimElem = 18 || AnimElem = 32), 21, 28))), 7
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
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -6.25
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 4150, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= 6
value = 4150
elem = 5
ignoreHitPause = 1

[State 4150, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= 4
value = 4150
elem = 6
ignoreHitPause = 1

[State 4150, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) <= 0
trigger1 = HitPauseTime <= 6
value = 4150
elem = 12
ignoreHitPause = 1

[State 4150, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(13) <= 0
trigger1 = HitPauseTime <= 4
value = 4150
elem = 13
ignoreHitPause = 1

[State 4150, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(18) >= 0 && AnimElemTime(19) <= 0
trigger1 = HitPauseTime <= 6
value = 4150
elem = 19
ignoreHitPause = 1

[State 4150, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(19) >= 0 && AnimElemTime(20) <= 0
trigger1 = HitPauseTime <= 4
value = 4150
elem = 20
ignoreHitPause = 1

[State 4150, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(25) >= 0 && AnimElemTime(26) <= 0
trigger1 = HitPauseTime <= 6
value = 4150
elem = 26
ignoreHitPause = 1

[State 4150, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(26) >= 0 && AnimElemTime(27) <= 0
trigger1 = HitPauseTime <= 4
value = 4150
elem = 27
ignoreHitPause = 1

[State 4150, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(32) >= 0 && AnimElemTime(33) <= 0
trigger1 = HitPauseTime <= 6
value = 4150
elem = 33
ignoreHitPause = 1

[State 4150, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(33) >= 0 && AnimElemTime(34) <= 0
trigger1 = HitPauseTime <= 4
value = 4150
elem = 34
ignoreHitPause = 1

[State 4150, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(39) >= 0 && AnimElemTime(40) <= 0
trigger1 = HitPauseTime <= 6
value = 4150
elem = 40
ignoreHitPause = 1

[State 4150, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(40) >= 0 && AnimElemTime(41) <= 0
trigger1 = HitPauseTime <= 4
value = 4150
elem = 41
ignoreHitPause = 1

[State 4150, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 46
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
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
ground.velocity = -4.46927374302, -6.5625
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 4150, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(46) >= 0 && AnimElemTime(47) <= 0
trigger1 = HitPauseTime <= 6
value = 4150
elem = 47
ignoreHitPause = 1

[State 4150, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(47) >= 0 && AnimElemTime(48) <= 0
trigger1 = HitPauseTime <= 4
value = 4150
elem = 48
ignoreHitPause = 1

[State 4150, Voice]
type = PlaySnd
trigger1 = AnimElem = 51
value = 4, 3
channel = 0

[State 4150, Woosh]
type = PlaySnd
trigger1 = AnimElem = 53
value = 1, 2
channel = 1

[State 4150, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 52
value = 40, 0

[State 4150, Dust Helper]
type = Helper
trigger1 = AnimElemTime(51) = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 4150, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(51) = 2
stateType = A
physics = N

[State 4150, VelSet]
type = VelSet
trigger1 = AnimElemTime(51) = 2
x = 6.98324022346
y = -5

[State 4150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(51) > 2
y = 0.5859375

[State 4150, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 54
attr = A, HA
hitFlag = MAF
guardFlag = HA
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
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -66
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 8
envShake.freq = 120

[State 4150, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1221



;========================<KIN 1218 SHIKI: YATAGARASU>=============================
[StateDef 4300]
type = S
physics = N
moveType = A
anim = 4300
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 4300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 4300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 4300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 4300, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 4300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 47

[State 4300, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 4300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 4300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(10) < 0
time = 1
value = SCA

[State 4300, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 4, 0
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 4300, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 4300, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4300, 0
channel = 0

[State 4300, Slash Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4300, 1
channel = 1

[State 4300, Yatagarasu Visual Effect]
type = Explod
trigger1 = AnimElem = 5
ID = 4303
anim = 4303
bindTime = -1
sprPriority = 3
posType = P1
pos = 36, 0
scale = 0.5, 0.5
pauseMovetime = -1
superMoveTime = -1
ownPal = 1

[State 4300, Yatagarasu Slash]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 4305
ID = 4305
name = "Yatagarasu Slash"
posType = P1
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 4300, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(13) < 0
time = 1
add = 22 * (Time - 46), -22 * (Time - 46), -22 * (Time - 46)

[State 4300, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(15) < 0
time = 1
add = 255 - 22 * (Time - 80), -255 + 22 * (Time - 80), -255 + 22 * (Time - 80)

[State 4300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
x = 10

[State 4300, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
ID = 4300
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 10
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
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
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -45
palFX.time = 19
palFX.add = -255, -255, -255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 4300, HitDef]
type = HitDef
trigger1 = NumTarget(4300)
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
ID = 4300
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
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
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := ceil(P2Dist x)), var(36) := ceil(P2Dist y - 64)
palFX.time = 13
palFX.add = -255, -255, -255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 4300, BGPalFX]
type = PalFX
trigger1 = MoveHit && NumTarget(4300)
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(13) < 0
time = 1
add = -255, -255, -255

[State 4300, HitDef]
type = HitDef
trigger1 = !NumTarget(4300)
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
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
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := ceil(P2Dist x)), var(36) := ceil(P2Dist y - 64)
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 4300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(11) >= 0
moveType = I

[State 4300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1