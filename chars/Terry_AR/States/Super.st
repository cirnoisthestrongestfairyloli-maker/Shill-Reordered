; ________________________________________________
;| Terry Bogard by KarmaCharmeleon		|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<POWER GEYSER>=============================
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
trigger1 = AnimElemTime(4) < 0
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
pos = 2, -105
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

[State 3000, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3000, 1
channel = 0

[State 3000, Power Geyser Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 3000, 2
channel = 1

[State 3000, Power Geyser Energy]
type = Explod
trigger1 = AnimElem = 4
anim = 3003
ID = 3003
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1

[State 3000, Impact Dust]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = p1
facing = -1
ownPal = 1

[State 3000, Explosion]
type = Explod
trigger1 = AnimElem = 7
anim = 8030
sprPriority = 5
scale = 0.5, 0.5
posType = P1
pos = 62, 0
facing = 1
vFacing = 1
ownPal = 1

[State 3000, Projectile]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 3005
ID = 3005
name = "Power Geyser Projectile"
posType = P1
pos = 79, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3000, Width]
type = Width
trigger1 = AnimElemTime(7) = -1
value = 45, 0

[State 3000, EnvShake]
type = EnvShake
trigger1 = AnimElem = 7
time = 18
ampl = -6
freq = 120

[State 3000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX SHINKU HADOKEN>=============================
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
trigger1 = AnimElemTime(4) < 0
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
pos = 2, -105
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

[State 3050, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3000, 1
channel = 0

[State 3050, Power Geyser Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7 || AnimElem = 17
value = 3000, 2
channel = 1

[State 3050, Power Geyser Energy]
type = Explod
trigger1 = AnimElem = 4
anim = 3003
ID = 3003
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1

[State 3050, Power Geyser Energy]
type = Explod
trigger1 = AnimElem = 14
anim = 3053
ID = 3003
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1

[State 3050, Impact Dust]
type = Helper
trigger1 = AnimElem = 7 || AnimElem = 17
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = p1
facing = -1
ownPal = 1

[State 3050, Explosion]
type = Explod
trigger1 = AnimElem = 7
anim = 8030
sprPriority = 5
scale = 0.5, 0.5
posType = P1
pos = 62, 0
facing = 1
vFacing = 1
ownPal = 1

[State 3050, Explosion]
type = Explod
trigger1 = AnimElem = 17
anim = 8030
sprPriority = 5
scale = 0.5, 0.5
posType = P1
pos = 12, 0
facing = 1
vFacing = 1
ownPal = 1

[State 3050, Projectile 1]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 3005
ID = 3055
name = "Power Geyser Projectile"
posType = P1
pos = 79, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3050, Projectile 2]
type = Helper
trigger1 = AnimELem = 17
helperType = Normal
stateNo = 3005
ID = 3065
name = "Power Geyser Projectile"
posType = P1
pos = 114, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3050, Width]
type = Width
trigger1 = AnimElemTime(7) = -1 || AnimElemTime(17) = -1
value = 45, 0

[State 3050, EnvShake]
type = EnvShake
trigger1 = AnimElem = 7 || AnimElem = 17
time = 18
ampl = -6
freq = 120

[State 3050, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX SHINKU HADOKEN>=============================
[StateDef 3060]
type = S
physics = N
moveType = A
anim = 3060
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3060, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3060, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3060, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3060, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3060, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

[State 3060, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255, 255, 255
ignoreHitPause = 1

[State 3060, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3060, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3060, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 2, -105
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3060, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3060, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3000, 0
channel = 0

[State 3060, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3000, 1
channel = 0

[State 3060, Power Geyser Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7 || AnimElem = 17 || AnimElem = 28
value = 3000, 2
channel = 1

[State 3060, Power Geyser Energy]
type = Explod
trigger1 = AnimElem = 4 || AnimElem = 25
anim = 3063
ID = 3003
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1

[State 3060, Power Geyser Energy]
type = Explod
trigger1 = AnimElem = 14
anim = 3064
ID = 3003
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1

[State 3060, Impact Dust]
type = Helper
trigger1 = AnimElem = 7 || AnimElem = 17 || AnimElem = 28
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = p1
facing = -1
ownPal = 1

[State 3060, Explosion]
type = Explod
trigger1 = AnimElem = 7 || AnimElem = 28
anim = 8030
sprPriority = 5
scale = 0.5, 0.5
posType = P1
pos = 62, 0
facing = 1
vFacing = 1
ownPal = 1

[State 3060, Explosion]
type = Explod
trigger1 = AnimElem = 17
anim = 8030
sprPriority = 5
scale = 0.5, 0.5
posType = P1
pos = 12, 0
facing = 1
vFacing = 1
ownPal = 1

[State 3060, Projectile 1]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 3005
ID = 3055
name = "Power Geyser Projectile"
posType = P1
pos = 79, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3060, Projectile 2]
type = Helper
trigger1 = AnimElem = 17
helperType = Normal
stateNo = 3005
ID = 3065
name = "Power Geyser Projectile"
posType = P1
pos = 114, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3060, Projectile 3]
type = Helper
trigger1 = AnimElem = 28
helperType = Normal
stateNo = 3005
ID = 3075
name = "Power Geyser Projectile"
posType = P1
pos = 150, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3060, Width]
type = Width
trigger1 = AnimElemTime(7) = -1 || AnimElemTime(17) = -1 || AnimElemTime(28) = -1
value = 45, 0

[State 3060, EnvShake]
type = EnvShake
trigger1 = AnimElem = 7 || AnimElem = 17 || AnimElem = 28
time = 18
ampl = -6
freq = 120

[State 3060, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<BUSTER WOLF>=============================
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
trigger1 = AnimElemTime(6) < 0
time = 1
value = SCA

[State 3100, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 2, -52
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
sound = s8500,0
darken = 0

[State 3100, Voice]
type = PlaySnd
trigger1 = !Time
value = 3100, 0
channel = 0

[State 3100, Buster Wolf Sound Effect 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1100, 1
channel = 1

[State 3100, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(9) = -1
value = 41, 0
channel = 3

[State 3100, Buster Wolf Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1400, 1
channel = 4

[State 3100, Buster Wolf Energy 1]
type = Explod
trigger1 = AnimElem = 7
ID = 3103
anim = 3103
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 3100, Buster Wolf Energy 2]
type = Explod
trigger1 = AnimElem = 9
ID = 3104
anim = 3104
bindTime = 1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 3100, Dust Helper]
type = Helper
trigger1 = AnimElem = 9
helperType = Normal
stateNo = 8103
ID = 8100
name = "Buster Wolf Dust"
posType = P1
ownPal = 1

[State 3100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 9
stateType = A
physics = N

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElemTime(9) = 1
x = 13.4078212291
y = -0.390625

[State 3100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(9) > 1
y = 0.09765625

[State 3100, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 8
ID = 3100
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 36
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3100, ChangeState]
type = ChangeState
trigger1 = NumTarget(3100)
trigger1 = MoveContact && Target, Alive
value = 3110

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

[State 3105, Remove Buster Wolf Energy]
type = RemoveExplod
trigger1 = NumExplod(3103)
ID = 3103

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
channel = 5

[State 3105, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3110]
type = S
anim = 3110
physics = N
moveType = A
velSet = 0, 0
sprPriority = 1

[State 3110, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3110, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 52, 0
channel = 5

[State 3110, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3110, 0
channel = 0

[State 3110, Buster Wolf Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3000, 2
channel = 1

[State 3110, Buster Wolf Energy]
type = Explod
trigger1 = AnimElem = 4
ID = 3113
anim = 3113
bindTime = 1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 3110, PosAdd]
type = PosAdd
trigger1 = !Time
x = 8.49162011173

[State 3110, VelSet]
type = VelSet
trigger1 = !Time
x = 2.23463687151

[State 3110, VelSet]
type = VelAdd
trigger1 = Time > 0 && AnimElemTime(5) < 0
x = -0.08729050279

[State 3110, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 3110, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
ID = 3110
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 12
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = -2.93296089385, -9.140625
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -2.93296089385, -9.140625
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := (ceil(P2Dist x) + 32)), var(36) := ceil(P2Dist Y - 72)
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3110, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(54) && NumTarget(3110)
var(15) = 0

[State 3110, Buster Wolf Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(3110)
var(54) = 1
persistent = 0

[State 3110, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(17) >= 0
moveType = I

[State 3110, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX BUSTER WOLF>=============================
[StateDef 3150]
type = S
physics = N
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
trigger1 = AnimElemTime(6) < 0
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
pos = 2, -52
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
trigger1 = !Time
value = 3100, 0
channel = 0

[State 3150, Buster Wolf Sound Effect 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1100, 1
channel = 1

[State 3150, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(9) = -1
value = 41, 0
channel = 3

[State 3150, Buster Wolf Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1400, 1
channel = 4

[State 3150, Buster Wolf Energy 1]
type = Explod
trigger1 = AnimElem = 7
ID = 3103
anim = 3103
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 3150, Buster Wolf Energy 2]
type = Explod
trigger1 = AnimElem = 9
ID = 3104
anim = 3104
bindTime = 1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5,0.5
ownPal = 1

[State 3150, Dust Helper]
type = Helper
trigger1 = AnimElem = 9
helperType = Normal
stateNo = 8103
ID = 8100
name = "Buster Wolf Dust"
posType = P1
ownPal = 1

[State 3150, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 9
stateType = A
physics = N

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElemTime(9) = 1
x = 13.4078212291
y = -0.625

[State 3150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(9) > 1
y = 0.09765625

[State 3150, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 8
ID = 3150
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 10
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 36
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3100, ChangeState]
type = ChangeState
trigger1 = NumTarget(3150)
trigger1 = MoveContact && Target, Alive
value = 3160

[State 3150, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3105


;Success
[StateDef 3160]
type = S
anim = 3110
physics = N
moveType = A
velSet = 0, 0
sprPriority = 1

[State 3160, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3160, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 52, 0
channel = 5

[State 3160, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3110, 0
channel = 0

[State 3160, Buster Wolf Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3000, 2
channel = 1

[State 3160, Buster Wolf Energy]
type = Explod
trigger1 = AnimElem = 4
ID = 3113
anim = 3113
bindTime = 1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 1,1
ownPal = 1

[State 3160, PosAdd]
type = PosAdd
trigger1 = !Time
x = 8.49162011173

[State 3160, VelSet]
type = VelSet
trigger1 = !Time
x = 2.23463687151

[State 3160, VelSet]
type = VelAdd
trigger1 = Time > 0 && AnimElemTime(5) < 0
x = -0.08729050279

[State 3160, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 3160, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 6 || AnimElem = 7
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 4
guard.pauseTime = 0, 4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 36
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.93296089385, -9.140625
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := (ceil(P2Dist x) + 32)), var(36) := ceil(P2Dist Y - 72)
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3160, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 8
ID = 3160
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 8
guard.pauseTime = 0, 8
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.93296089385, -9.140625
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.93296089385, -9.140625
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := (ceil(P2Dist x) + 32)), var(36) := ceil(P2Dist Y - 72)
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3160, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(53) && NumTarget(3160)
var(15) = 0

[State 3160, Buster Wolf Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(3160)
var(53) = 1
persistent = 0

[State 3160, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(17) >= 0
moveType = I

[State 3160, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<HIGH ANGLE GEYSER>=============================
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
trigger1 = AnimElemTime(3) < 0
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
pos = 12, -70
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

[State 3200, Voice]
type = PlaySnd
trigger1 = !Time
value = 3200, 0
channel = 0

[State 3200, Slide Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 1500
channel = 1

[State 3200, Dust Helper]
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

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 13.9664804469

[State 3200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(6) < 0
x = -0.69832402234

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 3200, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
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
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -1.67597765363, -5
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
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -54
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= 10
value = 3200
elem = 5
ignoreHitPause = 1

[State 3200, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 41, 0
channel = 5

[State 3200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 10
stateType = A
physics = N

[State 3200, Dust Helper]
type = Helper
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 8103
ID = 8100
name = "High Angle Geyser Dust"
posType = P1
ownPal = 1

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 4.46927374302
y = -8.4375

[State 3200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(10) > 1 && vel y < -2.8125
y = 0.390625

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElemTime(10) > 1 && vel y >= -2.8125
x = 5.58659217877
y = -2.45722765363
persistent = 0

[State 3200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(10) > 1 && vel y >= -2.8125
y = 0.78125

[State 3200, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 9
attr = S, HA
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
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -54
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, Air Hit]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 10 || AnimElem = 11
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
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
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3205


;Landing
[StateDef 3205]
type = S
anim = 3205
physics = N
moveType = A
velSet = 0, 0

[State 3205, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3205, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3205, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 5

[State 3000, Voice]
type = PlaySnd
trigger1 = !Time
value = 3205, 0
channel = 0

[State 3000, Power Geyser Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 2
channel = 1

[State 3000, Impact Dust]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = p1
facing = -1
ownPal = 1

[State 3205, Explosion]
type = Explod
trigger1 = AnimElem = 2
anim = 8030
sprPriority = 5
scale = 0.5, 0.5
posType = P1
pos = 62, 0
facing = 1
vFacing = 1
ownPal = 1

[State 3205, Projectile]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 3215
ID = 3215
name = "High Angle Geyser Projectile"
posType = P1
pos = 79, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3205, Width]
type = Width
trigger1 = AnimElemTime(2) = -1
value = 45, 0

[State 3205, EnvShake]
type = EnvShake
trigger1 = AnimElem = 2
time = 18
ampl = -6
freq = 120

[State 3205, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX HIGH ANGLE GEYSER>=============================
[StateDef 3250]
type = S
physics = N
moveType = A
anim = 3250
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3250, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3250, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3250, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3250, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3250, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

[State 3250, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3250, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3250, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3250, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 12, -70
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3250, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3250, Voice]
type = PlaySnd
trigger1 = !Time
value = 3200, 0
channel = 0

[State 3250, Slide Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 1500
channel = 1

[State 3250, Dust Helper]
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

[State 3250, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 16.7597765363

[State 3250, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(6) < 0
x = -0.69832402234

[State 3250, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 3250, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = S, HA
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
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -1.67597765363, -5
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
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -54
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3250, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= 10
value = 3250
elem = 5
ignoreHitPause = 1

[State 3200, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 41, 0
channel = 5

[State 3200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 10
stateType = A
physics = N

[State 3200, Dust Helper]
type = Helper
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 8103
ID = 8100
name = "High Angle Geyser Dust"
posType = P1
ownPal = 1

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 4.46927374302
y = -8.4375

[State 3250, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(10) > 1 && vel y < -2.8125
y = 0.390625

[State 3250, VelSet]
type = VelSet
trigger1 = AnimElemTime(10) > 1 && vel y >= -2.8125
x = 5.58659217877
y = -2.45722765363
persistent = 0

[State 3250, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(10) > 1 && vel y >= -2.8125
y = 0.78125

[State 3250, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 9
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
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -54
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3250, Air Hit]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 10 || AnimElem = 11
attr = A, HA
hitFlag = MAF
guardFlag = MA
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
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3250, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3255


;Landing
[StateDef 3255]
type = S
anim = 3255
physics = N
moveType = A
velSet = 0, 0

[State 3255, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3255, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3255, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 5

[State 3255, Voice]
type = PlaySnd
trigger1 = !Time
value = 3205, 0
channel = 0

[State 3255, Power Geyser Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElemTime(2) = 6
trigger3 = AnimElemTime(2) = 12
trigger4 = AnimElemTime(2) = 18
trigger5 = AnimElemTime(2) = 24
trigger6 = AnimElemTime(2) = 30
value = 3000, 2
channel = 1

[State 3255, Impact Dust]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = p1
facing = -1
ownPal = 1

[State 3255, Explosion]
type = Explod
trigger1 = AnimElem = 2
anim = 8030
sprPriority = 5
scale = 0.5, 0.5
posType = P1
pos = 62, 0
facing = 1
vFacing = 1
ownPal = 1

[State 3255, Projectile]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 3215
ID = 3265
name = "High Angle Geyser Projectile"
posType = P1
pos = 79, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3255, Projectile]
type = Helper
trigger1 = AnimElemTime(2) = 6
helperType = Normal
stateNo = 3215
ID = 3265
name = "High Angle Geyser Projectile"
posType = P1
pos = 89, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3255, Projectile]
type = Helper
trigger1 = AnimElemTime(2) = 12
helperType = Normal
stateNo = 3215
ID = 3265
name = "High Angle Geyser Projectile"
posType = P1
pos = 99, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3255, Projectile]
type = Helper
trigger1 = AnimElemTime(2) = 18
helperType = Normal
stateNo = 3215
ID = 3265
name = "High Angle Geyser Projectile"
posType = P1
pos = 109, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3255, Projectile]
type = Helper
trigger1 = AnimElemTime(2) = 24
helperType = Normal
stateNo = 3215
ID = 3265
name = "High Angle Geyser Projectile"
posType = P1
pos = 119, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3255, Projectile]
type = Helper
trigger1 = AnimElemTime(2) = 30
helperType = Normal
stateNo = 3215
ID = 3265
name = "High Angle Geyser Projectile"
posType = P1
pos = 129, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3255, Width]
type = Width
trigger1 = AnimElemTime(2) = -1
value = 45, 0

[State 3255, EnvShake]
type = EnvShake
trigger1 = AnimElem = 2
trigger2 = AnimElemTime(2) = 6
trigger3 = AnimElemTime(2) = 12
trigger4 = AnimElemTime(2) = 18
trigger5 = AnimElemTime(2) = 24
trigger6 = AnimElemTime(2) = 30
time = 18
ampl = -6
freq = 120

[State 3255, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<TRINITY GEYSER>=============================
[StateDef 3300]
type = S
physics = N
moveType = A
anim = 3300
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -3000
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
trigger1 = AnimElemTime(7) < 0
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
pos = -28, -98
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

[State 3300, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3300, 0
channel = 0

[State 3300, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3300, 1
channel = 0

[State 3300, Power Geyser Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
trigger2 = AnimElemTime(7) = 6
trigger3 = AnimElemTime(7) = 12
trigger4 = AnimElemTime(7) = 18
trigger5 = AnimElemTime(7) = 24
value = 3000, 2
channel = 1

[State 3300, Trinity Geyser Energy]
type = Explod
trigger1 = AnimElem = 4
anim = 3303
ID = 3303
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.4375, 0.4375
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3300, Impact Dust]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = p1
facing = -1
ownPal = 1

[State 3300, Projectile]
type = Helper
trigger1 = AnimElemTime(7) = 0
helperType = Normal
stateNo = 3305
ID = 3305
name = "Trinity Geyser Projectile"
posType = P1
pos = 0, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3300, Projectile]
type = Helper
trigger1 = AnimElemTime(7) = 6
helperType = Normal
stateNo = 3305
ID = 3315
name = "Trinity Geyser Projectile"
posType = P1
pos = 79, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3300, Projectile]
type = Helper
trigger1 = AnimElemTime(7) = 12
helperType = Normal
stateNo = 3305
ID = 3325
name = "Trinity Geyser Projectile"
posType = P1
pos = 158, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3300, Projectile]
type = Helper
trigger1 = AnimElemTime(7) = 18
helperType = Normal
stateNo = 3305
ID = 3335
name = "Trinity Geyser Projectile"
posType = P1
pos = 237, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3300, Projectile]
type = Helper
trigger1 = AnimElemTime(7) = 24
helperType = Normal
stateNo = 3305
ID = 3345
name = "Trinity Geyser Projectile"
posType = P1
pos = 316, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3300, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(7) = 0
trigger2 = AnimElemTime(7) = 6
trigger3 = AnimElemTime(7) = 12
trigger4 = AnimElemTime(7) = 18
trigger5 = AnimElemTime(7) = 24
time = 18
ampl = -6
freq = 120

[State 3300, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<RISING FORCE>=============================
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
trigger1 = AnimElemTime(6) < 0
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
pos = 8, -64
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

[State 3400, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 1

[State 3400, Rising Force Sound Effect 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1100, 1
channel = 3

[State 3400, Rising Force Sound Effect 2]
type = PlaySnd
trigger1 = AnimElemTime(6) = 1
value = 1400, 1
channel = 4

[State 3400, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(6) = -1
value = 41, 0
channel = 5

[State 3400, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8103
ID = 8100
name = "Rising Force Dust"
posType = P1
ownPal = 1

[State 3400, Rising Force Energy]
type = Explod
trigger1 = AnimElem = 6
ID = 3403
anim = 3403
bindTime = -1
sprPriority = 3
posType = P1
pos = 78, -72
scale = 0.5,0.5
ownPal = 1

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElemTime(6) = 1
x = 13.4078212291
y = -0.78125

[State 3400, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 1
y = 0.09765625

[State 3400, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) >= 0
value = , AP
time = 1

[State 3400, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
ID = 3400
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 15
getPower = 0, 0
givePower = 36, 36
pauseTime = 24, 24
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
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
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3400, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger1 = NumTarget(3400) && Target, Alive
value = 3410

[State 3400, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3405


;Landing
[StateDef 3405]
type = S
anim = 3405
physics = N
moveType = I
velSet = 0, 0

[State 3405, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3405, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3405, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 5

[State 3405, End]
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
sprPriority = 1

[State 3410, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3410, Slide Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 1500
channel = 1

[State 3410, Dust Helper]
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

[State 3410, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 16.7597765363

[State 3410, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(6) < 0
x = -0.69832402234

[State 3410, VelSet]
type = VelSet
trigger1 = (AnimElemTime(6) < 0 && MoveContact)
trigger2 = AnimElem = 6
x = 0

[State 3410, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElemTime(4) = 2
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 13
getPower = 0, 0
givePower = 36, 36
pauseTime = 24, 24
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -8.125
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
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -54
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3410, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= 22
value = 3410
elem = 5
ignoreHitPause = 1

[State 3410, Voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 3410, 0
channel = 0

[State 3410, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1, 2

[State 3410, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 14 || AnimElem = 16 || AnimElem = 18 || AnimElem = 20 || AnimElem = 22 || AnimElem = 24
value = 1, 5

[State 3410, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 13
stateType = A
physics = N

[State 3410, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(13) = 1
value = 40, 0
channel = 4

[State 3410, Dust Helper]
type = Helper
trigger1 = AnimElem = 13
helperType = Normal
stateNo = 8100
ID = 8100
name = "Rising Tackle Dust"
posType = P1
ownPal = 1

[State 3410, VelSet]
type = VelSet
trigger1 = AnimElemTime(13) = 1
x = 1.67597765363
y = -13.75

[State 3410, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(13) > 1
y = 0.5859375

[State 3410, VelSet]
type = VelSet
trigger1 = AnimElem = 32
x = 0

[State 3410, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 12
attr = S, HA
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
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0.55865921787, -8.125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 0.55865921787, -8.125
air.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 42), var(36) := -28
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3410, Air Hit]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 13 || AnimElem = 15 || AnimElem = 17 || AnimElem = 19 || AnimElem = 21
trigger2 = AnimElem = 23 || AnimElem = 25 || AnimElem = 27 || AnimElem = 29 || AnimElem = 31
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
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3410, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(32) >= 0
moveType = I

[State 3410, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3415


;Landing
[StateDef 3415]
type = S
anim = 1205
physics = N
moveType = I
velSet = 0,0

[State 3415, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3415, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3415, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 3415, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1