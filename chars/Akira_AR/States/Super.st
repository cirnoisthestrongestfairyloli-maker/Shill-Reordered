; ________________________________________________
;| Akira Kazama by KarmaCharmeleon && Rabano	|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<GO KIKO KAI>=============================
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
var(21) = ((PrevStateNo = 229 || (PrevStateNo = [1000, 2999])) && var(7)) || var(20)

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
triggerall = !(NumEnemy && EnemyNear, MoveType = H)   ;Abstract Reordered: no invincibility mid-combo
trigger1 = AnimElemTime(5) < 0
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
pos = -6, -72
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
trigger1 = AnimElem = 5
value = 3000, 1
channel = 0

[State 3000, Go Kiko Kai Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 3000, 2
channel = 1

[State 3000, Go Kiko Kai Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 3003, 0
channel = 3

[State 3000, Go Kiko Kai Skull]
type = Helper
trigger1 = AnimElemTime(5) = 1
helperType = Normal
stateNo = 3003
ID = 3003
name = "Go Kiko Kai Skull"
posType = P1
pos = -12, -72
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4 || AnimElem = 5
x = 12

[State 3000, Projectile]
type = Helper
trigger1 = AnimElemTime(5) = 1
helperType = Normal
stateNo = 3005
ID = 3005
name = "Go Kiko Kai Projectile"
posType = P1
pos = 45, -68
size.xScale = 0.25
size.yScale = 0.25
ownPal = 1

[State 3000, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 32, 0

[State 3000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX GO KIKO KAI>=============================
[StateDef 3050]
type = S
physics = N
moveType = A
anim = 3050
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = 229 || (PrevStateNo = [1000, 2999])) && var(7)) || var(20)

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
triggerall = !(NumEnemy && EnemyNear, MoveType = H)   ;Abstract Reordered: no invincibility mid-combo
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
pos = -6, -72
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
trigger1 = AnimElem = 5
value = 3000, 1
channel = 0

[State 3050, Go Kiko Kai Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 3000, 2
channel = 1

[State 3050, Go Kiko Kai Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 3003, 0
channel = 3

[State 3050, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4 || AnimElem = 5
x = 12

[State 3050, Go Kiko Kai Skull]
type = Helper
trigger1 = AnimElemTime(5) = 1
helperType = Normal
stateNo = 3003
ID = 3003
name = "Go Kiko Kai Skull"
posType = P1
pos = -12, -72
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3050, Projectile]
type = Helper
trigger1 = AnimElemTime(5) = 1
helperType = Normal
stateNo = 3005
ID = 3055
name = "Go Kiko Kai Projectile"
posType = P1
pos = 45, -68
size.xScale = 0.375
size.yScale = 0.375
ownPal = 1

[State 3050, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 32, 0

[State 3050, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<HATEN MUEISHU>=============================
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
var(21) = ((PrevStateNo = 229 || (PrevStateNo = [1000, 2999])) && var(7)) || var(20)

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

[State 3000, NotHitBy]
type = NotHitBy
triggerall = !(NumEnemy && EnemyNear, MoveType = H)   ;Abstract Reordered: no invincibility mid-combo
trigger1 = AnimElemTime(6) < 0
time = 1
value = SCA

[State 3200, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 18, 0
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
sound = s8500, 0
darken = 0

[State 3200, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3200, 0
channel = 0

[State 3200, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 8
value = 3200, 1
channel = 0

[State 3200, NotHitBy]
type = NotHitBy
triggerall = !(NumEnemy && EnemyNear, MoveType = H)   ;Abstract Reordered: no invincibility mid-combo
trigger1 = AnimElemTime(6) > 0
time = 1
value = , AP

[State 3200, Super Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 41, 0
channel = 4

[State 3200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 8
stateType = A
physics = N

[State 3200, Dust Helper]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 8100
ID = 8100
name = "Haten Mueishu Dust"
posType = P1
ownPal = 1

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 6.70391061453
y = -5

[State 3200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 0
y = 0.29296875

[State 3200, Width]
type = Width
trigger1 = AnimElemTime(8) > 0
edge = 72, 0

[State 3200, Attack Health]
type = VarSet
trigger1 = AnimElem = 8
var(10) = 5

[State 3200, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 8
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -5.58659217877, -2.5
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -42
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount) && var(10) > 1
trigger1 = AnimElem = 9 || AnimElem = 10 || AnimElem = 11 || AnimElem = 12
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -5.58659217877, -2.5
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -36
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, HitDef: Final]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount) && var(10) = 1
trigger1 = AnimElem = 9 || AnimElem = 10 || AnimElem = 11 || AnimElem = 12
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -36
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, Attack Health Decrement]
type = VarAdd
trigger1 = MoveContact = 1 && HitPauseTime = 1
var(10) = -1
ignoreHitPause = 1

[State 3200, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3205


;Landing
[StateDef 3205]
type = S
anim = 3205
physics = N
moveType = I
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
channel = 1

[State 3205, VelSet]
type = VelSet
trigger1 = !Time
x = 8.37988826816

[State 3205, VelSet]
type = VelAdd
trigger1 = Time > 0
x = -0.69832402234

[State 3205, VelSet]
type = VelSet
trigger1 = vel x <= 0
x = 0

[State 3205, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX HATEN MUEISHU>=============================
[StateDef 3250]
type = S
physics = N
moveType = A
anim = 3250
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3250, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = 229 || (PrevStateNo = [1000, 2999])) && var(7)) || var(20)

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
add = 255, 255, 255
ignoreHitPause = 1

[State 3250, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
triggerall = !(NumEnemy && EnemyNear, MoveType = H)   ;Abstract Reordered: no invincibility mid-combo
trigger1 = AnimElemTime(6) < 0
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
pos = 18, 0
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3250, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, 0
darken = 0

[State 3250, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3200, 0
channel = 0

[State 3250, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 8
value = 3200, 1
channel = 0

[State 3250, NotHitBy]
type = NotHitBy
triggerall = !(NumEnemy && EnemyNear, MoveType = H)   ;Abstract Reordered: no invincibility mid-combo
trigger1 = AnimElemTime(6) > 0
time = 1
value = , AP

[State 3250, Super Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 41, 0
channel = 4

[State 3250, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 8
stateType = A
physics = N

[State 3250, Dust Helper]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 8100
ID = 8100
name = "Haten Mueishu Dust"
posType = P1
ownPal = 1

[State 3250, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 8.93854748603
y = -5

[State 3250, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 0
y = 0.29296875

[State 3250, Width]
type = Width
trigger1 = AnimElemTime(8) > 0
edge = 72, 0

[State 3250, Attack Health]
type = VarSet
trigger1 = AnimElem = 8
var(10) = 7

[State 3250, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 8
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 10
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -5.58659217877, -2.5
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -42
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3250, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount) && var(10) > 1
trigger1 = AnimElem = 9 || AnimElem = 10 || AnimElem = 11 || AnimElem = 12
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -5.58659217877, -2.5
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -36
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3250, HitDef: Final]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount) && var(10) = 1
trigger1 = AnimElem = 9 || AnimElem = 10 || AnimElem = 11 || AnimElem = 12
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -36
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1005, Attack Health Decrement]
type = VarAdd
trigger1 = MoveContact = 1 && HitPauseTime = 1
var(10) = -1
ignoreHitPause = 1

[State 3250, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3205



;========================<SEIJO NO TETSUI>=============================
[StateDef 3400]
type = S
physics = N
moveType = A
anim = 3400
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -5000
faceP2 = 1

[State 3400, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = 229 || (PrevStateNo = [1000, 2999])) && var(7)) || var(20)

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
triggerall = !(NumEnemy && EnemyNear, MoveType = H)   ;Abstract Reordered: no invincibility mid-combo
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
pos = -25, -45
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

[State 3400, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 1

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 5.58659217877

[State 3400, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 40, 0
channel = 4

[State 3400, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 8
stateType = A
physics = N

[State 3400, Dust Helper]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 8100
ID = 8100
name = "Seijo no Tetsui Dust"
posType = P1
ownPal = 1

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElemTime(8) = 1
x = 3.35195530726
y = -5

[State 3400, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(8) > 1
x = -0.17458100558

[State 3400, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 3400, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 1
y = 0.78125

[State 3400, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
ID = 3400
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 140 < 7, 7, fvar(11) * 140)), 20
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Up
air.animType = Up
fall.animType = Up
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.11731843575, -15
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -15
air.cornerPush.velOff = 0
yAccel = 0.48828125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3400, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3400) > 1
ID = 3400
keepOne = 1
excludeID = 3400
ignoreHitPause = 1

[State 3400, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3400)
value = 3415
ID = 3400
ignoreHitPause = 1
persistent = 0

[State 3400, ChangeState]
type = ChangeState
trigger1 = MoveHit
trigger1 = NumTarget(3400) && Target, Alive
value = 3410

[State 3400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 3400, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3401


;Landing
[StateDef 3401]
type = S
anim = 3401
physics = N
moveType = I
velSet = 0, 0

[State 3401, PosSet]
type = PosSet
trigger1 = 1
y = 0

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

[State 3401, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

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
velSet = 0, 0
sprPriority = 1

[State 3410, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3410, Fade Out Helper]
type = Helper
trigger1 = !NumHelper(3413)
helpertype = Normal
stateNo = 3413
ID = 3413
name = "Fade Out"
posType = P1

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 5.58659217877

[State 3400, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 40, 0
channel = 4

[State 3400, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 3400, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Seijo no Tetsui Dust"
posType = P1
ownPal = 1

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 1
x = 3.35195530726
y = -5

[State 3400, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(8) > 1
x = -0.17458100558

[State 3400, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 3400, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 1
y = 0.78125

[State 3400, ChangeState]
type = ChangeState
trigger1 = NumHelper(3413)
trigger1 = Helper(3413), Time > 16
value = 3411

[State 3400, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3401


;Wait
[StateDef 3411]
type = S
anim = 1
physics = N
moveType = A
velSet = 0, 0

[State 3411, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3411, ChangeState]
type = TargetState
trigger1 = !Time && NumTarget
value = 3417

[State 3411 PosAdd]
type = PosSet
trigger1 = 1
x = 0
y = 0

[State 3411, AfterImage Off]
type = AfterImage
trigger1 = 1
time = 0

[State 3411, Zaki]
type = Helper
trigger1 = !NumHelper(10000) && Time > 100
helperType = Normal
stateNo = 13400
ID = 10000
name = "Zaki"
posType = P1
pos = 0, 0
size.xScale = 1
size.yScale = 1
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 3411, Yurika]
type = Helper
trigger1 = !NumHelper(20000) && Time > 100
helperType = Normal
stateNo = 23400
ID = 20000
name = "Yurika"
posType = P1
pos = 0, 0
size.xScale = 1
size.yScale = 1
keyctrl = 1
ownpal = 1
facing = -1
persistent = 0
ignorehitpause = 1

[State 3411, P2 Pos X and Pos Y (Zaki)]
type = Null
trigger1 = NumHelper(10000) && Time < 160
trigger1 = Cond(NumHelper(10000), Helper(10000), Cond(1, (var(27) := ceil(EnemyNear, Pos X)) && (var(28) := ceil(EnemyNear, Pos Y) - 30), 0), 0)
ignoreHitPause = 1

[State 3411, P2 Pos X and Pos Y (Yurika)]
type = Null
trigger1 = NumHelper(20000) && Time < 160
trigger1 = Cond(NumHelper(20000), Helper(20000), Cond(1, (var(27) := ceil(EnemyNear, Pos X)) && (var(28) := ceil(EnemyNear, Pos Y) - 30), 0), 0)
ignoreHitPause = 1

[State 3411, P2 Pos X and Pos Y (Zaki)]
type = Null
trigger1 = NumHelper(10000) && Time >= 160
trigger1 = Cond(NumHelper(10000), Helper(10000), Cond(1, (var(27) := ceil(EnemyNear, Pos X)) && (var(28) := ceil(EnemyNear, Pos Y) - 30 + 3), 0), 0)
ignoreHitPause = 1

[State 3411, P2 Pos X and Pos Y (Yurika)]
type = Null
trigger1 = NumHelper(20000) && Time >= 160
trigger1 = Cond(NumHelper(20000), Helper(20000), Cond(1, (var(27) := ceil(EnemyNear, Pos X)) && (var(28) := ceil(EnemyNear, Pos Y) - 30 + 3), 0), 0)
ignoreHitPause = 1

[State 3411, TargetState]
type = TargetState
trigger1 = Time >= 220
value = 3418

[State 3411, ChangeState]
type = ChangeState
trigger1 = Time >= 220
value = 3412


;Finish
[StateDef 3412]
type = S
physics = N
moveType = A
anim = 3412
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 3412, P2 Pos X and Pos Y (Zaki)]
type = Null
trigger1 = NumHelper(10000) && Time = 0
trigger1 = Cond(NumHelper(10000), Helper(10000), Cond(1, (var(27) := ceil(EnemyNear, Pos X)) && (var(28) := ceil(EnemyNear, Pos Y) - 750), 0), 0)
ignoreHitPause = 1

[State 3412, P2 Pos X and Pos Y (Yurika)]
type = Null
trigger1 = NumHelper(20000) && Time = 0
trigger1 = Cond(NumHelper(20000), Helper(20000), Cond(1, (var(27) := ceil(EnemyNear, Pos X)) && (var(28) := ceil(EnemyNear, Pos Y) - 750), 0), 0)
ignoreHitPause = 1

[State 3412, P2 Pos X and Pos Y (Zaki)]
type = Null
trigger1 = NumHelper(10000) && Time > 0
trigger1 = Cond(NumHelper(10000), Helper(10000), Cond(1, (var(27) := ceil(EnemyNear, Pos X)) && (var(28) := ceil(EnemyNear, Pos Y) - 15), 0), 0)
ignoreHitPause = 1

[State 3412, P2 Pos X and Pos Y (Yurika)]
type = Null
trigger1 = NumHelper(20000) && Time > 0
trigger1 = Cond(NumHelper(20000), Helper(20000), Cond(1, (var(27) := ceil(EnemyNear, Pos X)) && (var(28) := ceil(EnemyNear, Pos Y) - 15), 0), 0)
ignoreHitPause = 1

[State 3412, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3412, PosAdd]
type = PosAdd
trigger1 = !Time
x = -36

[State 3412, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3412, 0
channel = 0

[State 3412, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 3412, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + var(13))
trigger1 = AnimElem = 5
ID = 3412
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 280 < 7, 7, fvar(11) * 280)), 40
getPower = 0, 0
givePower = 36, 36
pauseTime = 36, 36
guard.pauseTime = 36, 36
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -1.11731843575, -15
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -15
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 3400)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3412, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) <= 0
trigger1 = HitPauseTime <= 32
value = 3412
elem = 8
ignoreHitPause = 1

[State 3412, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) <= 0
trigger1 = HitPauseTime <= 28
value = 3412
elem = 9
ignoreHitPause = 1

[State 3412, TargetState]
type = TargetState
trigger1 = WinKO && NumTarget(3412)
value = 3425
ID = 3412
ignoreHitPause = 1
persistent = 0

[State 3412, ChangeState]
type = ChangeState
trigger1 = WinKO
value = 3420

[State 3412, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
moveType = I

[State 3412, Voice]
type = PlaySnd
trigger1 = AnimElem = 12
value = 3412, 1
channel = 0

[State 3412, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


; Target
[Statedef 3415]
type = S
physics = N
movetype = H
velset = 0, 0

[State 3415, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3415, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3415, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5012

[State 3415, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 3415, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 3416


; Going Up
[Statedef 3416]
type = A
physics = N
movetype = H
ctrl = 0

[State 3416, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3416, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 5051
value = 5051

[State 3415, VelSet]
type = VelSet
trigger1 = Time = 1
x = -1.11731843575
y = -15

[State 3415, VelAdd]
type = VelAdd
Trigger1 = Time >= 1
y = 0.5126953125

[State 3415, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1


; Center of the Screen
[Statedef 3417]
type = A
physics = N
movetype = H
velSet = 0, 0
ctrl = 0

[State 3417, Assert: No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 3417, ChangeAnim]
type = ChangeAnim
trigger1 = Time >= 100 && Anim != 5061
value = 5061

[State 3417, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3417, PosSet]
type = PosSet
trigger1 = !Time
x = 0
y = floor((1.3333333 * GameHeight / GameWidth) * 120)

[State 3417, VarSet]
type = VarSet
trigger1 = !Time
sysfvar(1) = ((-ScreenPos Y + (GameHeight / 2)) / 60)

[State 3417, VarSet]
type = PosAdd
trigger1 = Time = [1, 45]
y = sysfvar(1)

[State 3417, VarSet]
type = PosAdd
trigger1 = Time >= 160
y = 3


;Top of the Screen
[StateDef 3418]
type = A
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 3418 PosAdd]
type = PosSet
trigger1 = !Time
y = -750

[State 3418, VelSet]
type = VelSet
trigger1 = Time > 0
y = 15

[State 3418, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1



;========================<WIN BY SEIJO NO TETSUI>=============================
[Statedef 3420]
type = S

[State 3420, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && PrevStateNo = 3412
value = 3420

[State 3420, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 3420, ChangeState]
type = ChangeState
trigger1 = Time >= 120 && RoundState = 3
value = ifElse(RoundState = 3, 180, 0)
ctrl = 1


; Target
[Statedef 3425]
type = S
physics = N
movetype = H
velset = 0, 0

[State 3425, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3425, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5012

[State 3425, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 3425, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 3426



;After Throw
[StateDef 3426]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -1.11731843575, -15
sprPriority = 0

[State 3425, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5035

[State 3425, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5035 && !AnimTime
value = 5050

[State 3425, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1

[State 3425, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5126953125

[State 3425, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3425, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100