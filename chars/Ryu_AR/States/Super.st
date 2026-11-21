; ________________________________________________
;| Ryu by KarmaCharmeleon			|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<SHINKU HADOKEN>=============================
[StateDef 3000]
type = S
physics = N
moveType = A
anim = 3000 + 10000 * var(40)
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

[State 3000, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

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
pos = -14, -75
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
trigger1 = !Time && var(40) != 2
value = 3000, 0 + 10 * var(40)
channel = 0

[State 3000, Voice 1 (Shadow)]
type = PlaySnd
trigger1 = !Time && var(40) = 2
value = 730, 1 + 10 * var(40)
channel = 0

[State 3000, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 5 && var(40) != 2
value = 1000, 0 + 10 * var(40)
channel = 0

[State 3000, Voice 2 (Shadow)]
type = PlaySnd
trigger1 = AnimElem = 5 && var(40) = 2
value = 3000, 1 + 10 * var(40)
channel = 0

[State 3000, Hadoken Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(6) = 1
value = 1000, 1
channel = 1

[State 3000, Projectile]
type = Helper
trigger1 = AnimElemTime(6) = 1 && var(40) != 2
helperType = Normal
stateNo = 3005
ID = 3005
name = "Shinku Hadoken Projectile"
posType = P1
pos = 78, -64
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3000, Projectile (Shadow)]
type = Helper
trigger1 = AnimElemTime(6) = 1 && var(40) = 2
helperType = Normal
stateNo = 3025
ID = 3025
name = "Rakuyo Hadoken Projectile"
posType = P1
pos = 78, -64
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3000, Width]
type = Width
trigger1 = AnimElemTime(6) = 0
value = 45, 0

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
anim = 3050 + 10000 * var(40)
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
trigger1 = AnimElemTime(5) < 0
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
pos = -14, -75
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
trigger1 = !Time && var(40) != 2
value = 3000, 0 + 10 * var(40)
channel = 0

[State 3050, Voice 1 (Shadow)]
type = PlaySnd
trigger1 = !Time && var(40) = 2
value = 730, 1 + 10 * var(40)
channel = 0

[State 3050, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 5 && var(40) != 2
value = 1000, 0 + 10 * var(40)
channel = 0

[State 3050, Voice 2 (Shadow)]
type = PlaySnd
trigger1 = AnimElem = 5 && var(40) = 2
value = 3000, 1 + 10 * var(40)
channel = 0

[State 3050, Hadoken Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(6) = 1
value = 1000, 1
channel = 1

[State 3050, Projectile]
type = Helper
trigger1 = AnimElemTime(6) = 1 && var(40) != 2
helperType = Normal
stateNo = 3005
ID = 3055
name = "Shinku Hadoken Projectile"
posType = P1
pos = 78, -64
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3050, Projectile (Shadow)]
type = Helper
trigger1 = AnimElemTime(6) = 1 && var(40) = 2
helperType = Normal
stateNo = 3025
ID = 3075
name = "Rakuyo Hadoken Projectile"
posType = P1
pos = 78, -64
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3050, Width]
type = Width
trigger1 = AnimElemTime(6) = 0
value = 45, 0

[State 3050, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<DENJIN HADOKEN>=============================
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
trigger1 = AnimElemTime(22) < 0
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
pos = 0, -72
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
value = 3100, 0 + 10 * var(40)
channel = 0

[State 3100, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 22
trigger2 = AnimElem = 25
trigger3 = AnimElem = 31
trigger4 = AnimElem = 40
trigger5 = AnimElem = 52
value = 3100, 10
channel = 1

[State 3100, Denjin Hadoken Energy]
type = Helper
trigger1 = AnimElem = 22
helperType = Normal
stateNo = 3103
ID = 3103
name = "Denjin Hadoken Energy"
posType = P1
pos = 0, -72
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3100, Denjin Hadoken Electricity]
type = Explod
trigger1 = AnimElem = 22
anim = 3104
ID = 3104
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 0, -72
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0
persistent = 0

[State 3100, Reset Denjin Hadoken Strength]
type = VarSet
trigger1 = !Time
var(10) = 1

[State 3100, Denjin Hadoken Strength]
type = VarAdd
triggerAll = var(10) < 5
trigger1 = AnimElem = 25
trigger2 = AnimElem = 31
trigger3 = AnimElem = 40
trigger4 = AnimElem = 52
var(10) = 1

[State 3100, ChangeAnim]
type = ChangeAnim
triggerAll = AnimElemTime(22) > 0 && AnimElemTime(55) < 0
trigger1 = !NumExplod(90000201) && !NumExplod(90000211) && !NumExplod(90000221) && !AILevel
trigger2 = (P2Dist y = [-50, 0]) && var(10) > 2 && AILevel
trigger3 = var(10) = 2 && AILevel
value = 3100
elem = 55
ignoreHitPause = 1
persistent = 0

[State 3100, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 55
ID = 3104

[State 3100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 55
value = 1000, 0 + 10 * var(40)
channel = 0

[State 3100, Hadoken Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(55) = 1
value = 3100, 1
channel = 1

[State 3100, Projectile]
type = Helper
trigger1 = AnimElemTime(55) = 1
helperType = Normal
stateNo = 3105
ID = 3105
name = "Denjin Hadoken Projectile"
posType = P1
pos = 78, -64
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3100, Width]
type = Width
trigger1 = AnimElemTime(55) = 0
value = 45, 0

[State 3100, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX DENJIN HADOKEN>=============================
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
trigger1 = AnimElemTime(5) < 0
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
pos = 0, -72
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
value = 3100, 0 + 10 * var(40)
channel = 0

[State 3150, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 22
trigger2 = AnimElem = 25
trigger3 = AnimElem = 31
trigger4 = AnimElem = 40
trigger5 = AnimElem = 52
value = 3100, 10
channel = 1

[State 3150, Denjin Hadoken Energy]
type = Helper
trigger1 = AnimElem = 22
helperType = Normal
stateNo = 3103
ID = 3103
name = "Denjin Hadoken Energy"
posType = P1
pos = 0, -72
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3150, Denjin Hadoken Electricity]
type = Explod
trigger1 = AnimElem = 22
anim = 3104
ID = 3104
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 0, -72
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0
persistent = 0

[State 3150, Reset Denjin Hadoken Strength]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 3150, Denjin Hadoken Strength]
type = VarAdd
triggerAll = var(10) < 7
trigger1 = AnimElem = 25
trigger2 = AnimElem = 31
trigger3 = AnimElem = 40
trigger4 = AnimElem = 52
var(10) = 1

[State 3150, ChangeAnim]
type = ChangeAnim
triggerAll = AnimElemTime(22) > 0 && AnimElemTime(55) < 0
trigger1 = !NumExplod(90000201) && !NumExplod(90000211) && !NumExplod(90000221) && !AILevel
trigger2 = (P2Dist y = [-50, 0]) && var(10) > 2 && AILevel
trigger3 = var(10) = 4 && AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger4 = var(10) = 5 && AILevel && Random < (750 * (AILevel ** 2 / 64.0))
trigger5 = var(10) = 6 && AILevel
value = 3150
elem = 55
ignoreHitPause = 1
persistent = 0

[State 3150, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 55
ID = 3104

[State 3150, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 55
value = 1000, 0 + 10 * var(40)
channel = 0

[State 3150, Hadoken Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(55) = 1
value = 3100, 1
channel = 1

[State 3150, Projectile]
type = Helper
trigger1 = AnimElemTime(55) = 1
helperType = Normal
stateNo = 3105
ID = 3155
name = "MAX Denjin Hadoken Projectile"
posType = P1
pos = 78, -64
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3150, Width]
type = Width
trigger1 = AnimElemTime(55) = 0
value = 45, 0

[State 3150, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SHINKU TATSUMAKI SENPUKYAKU>=============================
[StateDef 3200]
type = S
physics = N
moveType = A
anim = 3200 + 10000 * (var(40) = [1, 2])
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
trigger1 = AnimElemTime(6) < 0
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
pos = -25, -6
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
value = 730, 1 + 10 * var(40)
channel = 0

[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 3200, 0 + 10 * var(40)
channel = 0

[State 3200, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 24 || AnimElem = 27
value = 1, 5

[State 3200, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 40, 0
channel = 4

[State 3200, Dust Helper]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 3205
ID = 3205
name = "Shinku Tatsumaki Senpukyaku Dust"
posType = P1
pos = 0, -ceil(Pos Y)
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 6
stateType = A
physics = N

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElem = 6
y = -5

[State 3200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 0 && AnimElemTime(13) < 0
trigger2 = AnimElemTime(28) > 0
y = 0.5859375

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElem = 13
y = 0

[State 3200, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(32) < 0
value = 0
ignoreHitPause = 1

[State 3200, HitDef: Forwards]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 10 || AnimElem = 16 || AnimElem = 22
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
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
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, HitDef: Backwards]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 13 || AnimElem = 19 || AnimElem = 25
attr = A, HA
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
ground.velocity = -11.0509440309, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -45), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, HitDef: Final]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 28
attr = A, HA
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
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(29) >= 0
moveType = I

[State 3200, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3201


;Landing
[StateDef 3201]
type = S
anim = 3201 + 10000 * (var(40) = [1, 2])
physics = N
moveType = I
velSet = 0, 0

[State 3201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3201, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3201, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 3201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX SHINKU TATSUMAKI SENPUKYAKU>=============================
[StateDef 3250]
type = S
physics = N
moveType = A
anim = 3250 + 10000 * (var(40) = [1, 2])
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
trigger1 = AnimElemTime(6) < 0
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
pos = -25, -6
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
value = 730, 1 + 10 * var(40)
channel = 0

[State 3250, Voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 3200, 0 + 10 * var(40)
channel = 0

[State 3250, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21
trigger2 = AnimElem = 24 || AnimElem = 27 || AnimElem = 30 || AnimElem = 33 || AnimElem = 36
trigger3 = AnimElem = 39 || AnimElem = 42 || AnimElem = 45
value = 1, 5

[State 3250, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 40, 0
channel = 4

[State 3250, Dust Helper]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 3205
ID = 3205
name = "Shinku Tatsumaki Senpukyaku Dust"
posType = P1
pos = 0, -ceil(Pos Y)
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3250, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 6
stateType = A
physics = N

[State 3250, VelSet]
type = VelSet
trigger1 = AnimElem = 6
y = -5

[State 3250, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 0 && AnimElemTime(13) < 0
trigger2 = AnimElemTime(46) > 0
y = 0.5859375

[State 3250, VelSet]
type = VelSet
trigger1 = AnimElem = 13
y = 0

[State 3250, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(50) < 0
value = 0
ignoreHitPause = 1

[State 3250, HitDef: Forwards]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 10 || AnimElem = 16 || AnimElem = 22 || AnimElem = 28 || AnimElem = 34 || AnimElem = 40
attr = A, HA
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
ground.velocity = 11.0509440309, 0
ground.cornerPush.velOff = 0
guard.velocity = 11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 4.46927374302, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3250, HitDef: Backwards]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 13 || AnimElem = 19 || AnimElem = 25 || AnimElem = 31 || AnimElem = 37 || AnimElem = 43
attr = A, HA
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
ground.velocity = -11.0509440309, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -2.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -45), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3250, HitDef: Final]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 46
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
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
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(47) >= 0
moveType = I

[State 3250, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3201



;========================<SHIN SHORYUKEN>=============================
[StateDef 3300]
type = S
physics = N
moveType = A
anim = 3300 + 10000 * (var(40) = [1, 2])
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
trigger1 = AnimElemTime(6) < 0
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
pos = -22, -58
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
trigger1 = AnimElem = 4 && var(40) != 2
value = 4, 3
channel = 0

[State 3300, Voice 2]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1 && var(40) != 2
value = 1100, 0
channel = 0

[State 3300, Voice 1 (Shadow)]
type = PlaySnd
trigger1 = !Time && var(40) = 2
value = 3300, 0 + 10 * var(40)
channel = 0

[State 3300, Voice 2 (Shadow)]
type = PlaySnd
trigger1 = AnimElem = 4 && var(40) = 2
value = 3300, 1 + 10 * var(40)
channel = 0

[State 3300, Voice 3 (Shadow)]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1 && var(40) = 2
value = 3300, 2 + 10 * var(40)
channel = 0

[State 3300, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 3300, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 41, 0
channel = 4

[State 3300, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 3300, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 3300, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = 8.93854748603
y = -12.5

[State 3300, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(5) > 1
x = -0.69832402234

[State 3300, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 3300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1
y = 0.5859375

[State 3300, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
ID = 3300
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 189 < 7, 7, fvar(11) * 189)), 27
getPower = 0, 0
givePower = 36, 36
pauseTime = 60, 60
guard.pauseTime = 60, 60
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 3.35195530726, -5;3.35195530726, -3.125
ground.cornerPush.velOff = 0
guard.velocity = 11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 3.35195530726, -5;3.35195530726, -3.125
air.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3300, Push Helper]
type = Helper
trigger1 = NumTarget(3300) && var(40) != 2
trigger1 = MoveHit && Target, Alive
helperType = Normal
stateNo = 13300
ID = 13300
name = "Shin Shoryuken Pushbox"
posType = P1
size.ground.back = 18
size.ground.front = 18
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3300, PosSet]
type = PosSet
trigger1 = NumHelper(13300) && var(40) != 2
x = Helper(13300), Pos X
ignoreHitPause = 1

[State 3300, Dark Screen Helper]
type = Helper
trigger1 = NumTarget(3300) && var(40) = 2
trigger1 = MoveHit && Target, Alive
helpertype = Normal
stateNo = 13340
ID = 13340
name = "Dark Screen"
posType = P1
ignoreHitPause = 1
persistent = 0
ownPal = 1

[State 3300, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3300) > 1
ID = 3300
keepOne = 1
excludeID = 3300
ignoreHitPause = 1

[State 3300, ChangeState]
type = ChangeState
trigger1 = NumTarget(3300)
trigger1 = MoveHit && Target, Alive
value = ifElse(var(40) = 2, 3340, 3310)

[State 3300, Air Hit]
type = HitDef
triggerAll = !var(16) && var(15) < (2 + HitCount)
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(5) = 2
trigger3 = AnimElemTime(5) = 4
trigger4 = AnimElemTime(5) = 6
trigger5 = AnimElemTime(5) = 8
trigger6 = AnimElemTime(5) = 10
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
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
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 3300, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3301


;Landing
[StateDef 3301]
type = S
anim = 3301
physics = N
moveType = I
velSet = 0, 0

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



;Success (SF3)
[StateDef 3310]
type = S
anim = 3310
physics = N
moveType = A
velSet = 0, 0
sprPriority = 1

[State 3310, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3310, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3310, 0
channel = 0

[State 3310, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3310, 1
channel = 0

[State 3310, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 3310, PosSet]
type = PosSet
trigger1 = NumHelper(13300)
x = Helper(13300), Pos x
ignoreHitPause = 1

[State 3310, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 4
ID = 3310
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 112 < 7, 7, fvar(11) * 112)), 16
getPower = 0, 0
givePower = 36, 36
pauseTime = 48, 48
guard.pauseTime = 48, 48
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 3.35195530726, -5
ground.cornerPush.velOff = 0
guard.velocity = 11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 3.35195530726, -5
air.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 28), var(36) := -92
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3310, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 3310, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 41, 0
channel = 4

[State 3310, Dust Helper]
type = Helper
trigger1 = AnimElemTime(5) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 3310, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = 8.93854748603
y = -12.5

[State 3310, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(5) > 1
x = -0.69832402234

[State 3310, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 3310, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1
y = 0.5859375

[State 3310, Air Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < (2 + HitCount)
trigger1 = AnimElem = 5
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 12
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -15
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -15
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3310, Air Hit 2]
type = HitDef
trigger1 = !var(16) && var(15) < (2 + HitCount)
trigger1 = AnimElem = 6
ID = 3311
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 9
getPower = 0, 0
givePower = 36, 36
pauseTime = 36, 36
guard.pauseTime = 36, 36
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -15
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -15
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 3300)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3310, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 3310, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3311


;Landing
[StateDef 3311]
type = S
anim = 3311
physics = N
moveType = I
velSet = 0, 0

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

[State 3311, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Success (CvS2)
[StateDef 3320]
type = S
anim = 3320
physics = N
moveType = A
velSet = 0, 0
sprPriority = 1

[State 3320, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3320, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3310, 0
channel = 0

[State 3320, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 3320, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 4
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 112 < 7, 7, fvar(11) * 112)), 16
getPower = 0, 0
givePower = 36, 36
pauseTime = 36, 36
guard.pauseTime = 36, 36
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 3.35195530726, -3.125
ground.cornerPush.velOff = 0
guard.velocity = 11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 3.35195530726, -3.125
air.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 3300)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 28), var(36) := -92
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3320, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 3320, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 41, 0
channel = 4

[State 3320, Dust Helper]
type = Helper
trigger1 = AnimElemTime(5) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 3320, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = 8.93854748603
y = -12.5

[State 3320, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(5) > 1
x = -0.69832402234

[State 3320, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 3320, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1
y = 0.5859375

[State 3320, Air Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < (2 + HitCount)
trigger1 = AnimElem = 5
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 12
getPower = 0, 0
givePower = 36, 36
pauseTime = 24, 24
guard.pauseTime = 24, 24
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3320, Air Hit 2]
type = HitDef
trigger1 = !var(16) && var(15) < (2 + HitCount)
trigger1 = AnimElem = 6
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 9
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3320, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 3320, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3311



;Success (Metsu)
[StateDef 3340]
type = S
anim = 3340 + 10000 * (var(40) = [1, 2])
physics = N
moveType = A
velSet = 0, 0
sprPriority = 1

[State 3340, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3340, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3340, 0 + 10 * var(40)
channel = 0

[State 3340, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 41, 0
channel = 4

[State 3340, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 3340, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 3340, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 1
x = 8.93854748603
y = -12.5

[State 3340, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(2) > 1
x = -0.69832402234

[State 3340, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 3340, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1
y = 0.5859375

[State 3340, Air Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 2
ID = 3340
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 10
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Up
air.animType = Up
fall.animType = Up
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -3.35195530726, -13.75
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -13.75
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3340, Air Hit]
type = HitDef
trigger1 = !var(16) && var(15) < (2 + HitCount)
trigger1 = AnimElem = 3
ID = 3341
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 15
getPower = 0, 0
givePower = 36, 36
pauseTime = 60, 60
guard.pauseTime = 60, 60
animType = Up
air.animType = Up
fall.animType = Up
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -3.35195530726, -13.75
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -13.75
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 3300)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3340, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 3340, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3301



;========================<MESSATSU GOSHORYU>=============================
[StateDef 3400]
type = S
physics = N
moveType = A
anim = 3400 + 10000 * (var(40) = [1, 2])
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
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3400, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

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
add = 255, 255, 255
ignoreHitPause = 1

[State 3400, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3400, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3400, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 15, -58
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
sound = s8500, 0
darken = 0

[State 3400, Voice 1]
type = PlaySnd
trigger1 = !Time && var(40) = 1
value = 191, 1
channel = 0

[State 3400, Voice 1]
type = PlaySnd
trigger1 = !Time && var(40) = 2
value = 3400, 0 + 10 * var(40)
channel = 0

[State 3400, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 710, 0 + 10 * var(40)
channel = 0

[State 3400, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 13 && var(40) = 1
value = 4, 2 + 10 * var(40)
channel = 0

[State 3400, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 13 && var(40) = 2
value = 3400, 1 + 10 * var(40)
channel = 0

[State 3400, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 12
value = 1, 2
channel = 1

[State 3400, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 41, 0

[State 3400, Dust Helper]
type = Helper
trigger1 = AnimElem = 11
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3400, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 14
stateType = A
physics = N

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElem = 2 || AnimElem = 11
x = 8.93854748603

[State 3400, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && vel x > 0
x = -0.69832402234

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) > 0 && vel x <= 0
x = 0

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElemTime(14) = 1
y = -10

[State 3400, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(14) > 1
y = 0.5859375

[State 3400, Ground Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 3
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 11
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, Ground Hit 2]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 = AnimElem = 4
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, Ground Hit 3]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = AnimElem = 13
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, Final Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 5
trigger1 = AnimElem = 14
attr = A, HA
hitFlag = MAF
guardFlag = MA
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(15) >= 0
moveType = I

[State 3400, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3405


;Landing
[StateDef 3405]
type = S
anim = 3405 + 10000 * (var(40) = [1, 2])
physics = N
moveType = I
velSet = 0,0

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
channel = 1

[State 3405, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX MESSATSU GOSHORYU>=============================
[StateDef 3450]
type = S
physics = N
moveType = A
anim = 3450 + 10000 * (var(40) = [1, 2])
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
add = 255, 255, 255
ignoreHitPause = 1

[State 3450, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3450, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3450, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 15, -58
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3450, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3450, Voice 1]
type = PlaySnd
trigger1 = !Time && var(40) = 1
value = 191, 1
channel = 0

[State 3450, Voice 1]
type = PlaySnd
trigger1 = !Time && var(40) = 2
value = 3400, 0 + 10 * var(40)
channel = 0

[State 3450, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 710, 0 + 10 * var(40)
channel = 0

[State 3450, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 13
value = 4, 0 + 10 * var(40)
channel = 0

[State 3450, Voice 4]
type = PlaySnd
trigger1 = AnimElem = 23 && var(40) = 1
value = 4, 2 + 10 * var(40)
channel = 0

[State 3450, Voice 4]
type = PlaySnd
trigger1 = AnimElem = 23 && var(40) = 2
value = 3400, 1 + 10 * var(40)
channel = 0

[State 3450, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 12 || AnimElem = 22
value = 1, 2
channel = 1

[State 3450, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 40, 0

[State 3450, Dust Helper]
type = Helper
trigger1 = AnimElem = 11
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3450, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 21
value = 41, 0

[State 3450, Dust Helper]
type = Helper
trigger1 = AnimElem = 21
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3450, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 24
stateType = A
physics = N

[State 3450, VelSet]
type = VelSet
trigger1 = AnimElem = 2 || AnimElem = 11
x = 8.93854748603

[State 3450, VelSet]
type = VelSet
trigger1 = AnimElem = 21
x = 13.4078212291

[State 3450, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && vel x > 0
x = -0.69832402234

[State 3450, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) > 0 && vel x <= 0
x = 0

[State 3450, VelSet]
type = VelSet
trigger1 = AnimElemTime(24) = 1
y = -10

[State 3450, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(24) > 1
y = 0.5859375

[State 3450, Ground Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 3
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, Ground Hit 2]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 = AnimElem = 4
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, Ground Hit 3]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = AnimElem = 13
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, Ground Hit 4]
type = HitDef
trigger1 = !var(16) && var(15) < 5
trigger1 = AnimElem = 14
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, Ground Hit 5]
type = HitDef
trigger1 = !var(16) && var(15) < 6
trigger1 = AnimElem = 22
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 22), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, Ground Hit 6]
type = HitDef
trigger1 = !var(16) && var(15) < 7
trigger1 = AnimElem = 23
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, Final Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 8
trigger1 = AnimElem = 24
attr = A, HA
hitFlag = MAF
guardFlag = MA
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(25) >= 0
moveType = I

[State 3450, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3405



;========================<METSU HADOKEN>=============================
[StateDef 3500]
type = S
physics = N
moveType = A
anim = 3500 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -5000
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
trigger1 = AnimElemTime(5) < 0
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
pos = -14, -75
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

[State 3500, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 730, 1 + 10 * var(40)
channel = 0

[State 3500, Charging Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3500, 0
channel = 1

[State 3500, Metsu Hadoken Aura]
type = Explod
trigger1 = AnimElem = 5
anim = 3503
ID = 3503
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1
persistent = 0

[State 3500, Reset Metsu Hadoken Strength]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 3500, Metsu Hadoken Strength]
type = VarAdd
triggerAll = var(10) < 5
trigger1 = AnimElemTime(5) = 18
trigger2 = AnimElemTime(5) = 36
var(10) = 1

[State 3500, ChangeAnim]
type = ChangeAnim
triggerAll = AnimElemTime(5) > 0 && AnimElemTime(6) < 0
trigger1 = !NumExplod(90000201) && !NumExplod(90000211) && !NumExplod(90000221) && !AILevel
trigger2 = (P2Dist y = [-50, 0]) && AILevel
value = 3500 + 10000 * (var(40) = [1, 2])
elem = 6
ignoreHitPause = 1
persistent = 0

[State 3500, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 6
ID = 3503

[State 3500, Voice 2]
type = PlaySnd
triggerAll = var(40) = 1
trigger1 = AnimElem = 6
value = 900, 11
channel = 0

[State 3500, Metsu Hadoken Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(7) = 1
value = 3500, 1
channel = 1

[State 3500, Projectile]
type = Helper
trigger1 = AnimElemTime(7) = 1
helperType = Normal
stateNo = 3505
ID = 3505
name = "Metsu Hadoken Projectile"
posType = P1
pos = 78, -64
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3500, Width]
type = Width
trigger1 = AnimElemTime(7) = 0
value = 45, 0

[State 3500, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SHUN GOKU SATSU>=============================
[StateDef 3600]
type = S
physics = N
moveType = A
anim = 3600 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -5000
faceP2 = 1

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
var(17) = 47

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

[State 3600, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 1
time = 1
value = SCA

[State 3600, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = 6, -78
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3600, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, 0
darken = 0

[State 3600, Voice]
type = PlaySnd
trigger1 = !Time && var(40) = 1
value = 196, 10
channel = 0

[State 3600, Voice]
type = PlaySnd
trigger1 = !Time && var(40) = 2
value = 3600, 20
channel = 0

[State 3600, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2000, 1
channel = 1

[State 3600, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 5.02793296089

[State 3600, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[State 3600, HitDef]
type = HitDef
trigger1 = AnimElemTime(2) >= 0
trigger1 = P2BodyDist x < 28
trigger1 = !var(38)
attr = S, HT
hitFlag = M-
priority = 1, Miss
getPower = 0, 0
givePower = 0, 0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 3610 
p2StateNo = 3615

[State 3600, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 3600, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3610]
type = S
anim = 3610 + 10000 * (var(40) = [1, 2])
physics = N
moveType = A
velSet = 0, 0
sprPriority = 1

[State 3610, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3610, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3615

[State 3610, Fade Out Helper]
type = Helper
trigger1 = !Time && !NumHelper(3613)
helpertype = Normal
stateNo = 3613
ID = 3613
name = "Fade Out"
posType = P1

[state 3610, ChildVarSet]
type = Null
trigger1= AnimElem = 2 && var(40) != 2
trigger1 = Cond(NumHelper(3613), Helper(3613), Cond(1, Var(0) := 60, 0), 0)

[state 3610, ChildVarSet]
type = Null
trigger1= AnimElem = 2 && var(40) = 2
trigger1 = Cond(NumHelper(3613), Helper(3613), Cond(1, Var(0) := 112, 0), 0)

[State 3610, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
edge = 31, 0

[State 3610, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 31, 0

[State 3610, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 33, 0

[State 3411, AfterImage Off]
type = AfterImage
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
time = 0

[State 3610, Damage]
type = TargetLifeAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 8
trigger3 = AnimElemTime(2) = 12
trigger4 = AnimElemTime(2) = 16
trigger5 = AnimElemTime(2) = 20
trigger6 = AnimElemTime(2) = 24
trigger7 = AnimElemTime(2) = 28
trigger8 = AnimElemTime(2) = 32
trigger9 = AnimElemTime(2) = 36
trigger10 = AnimElemTime(2) = 40
trigger11 = AnimElemTime(2) = 44
trigger12 = AnimElemTime(2) = 48
trigger13 = AnimElemTime(2) = 52
trigger14 = AnimElemTime(2) = 56
value = floor(ifElse(28 * fvar(11) < 7, -7, -28 * fvar(11)))
kill = 0

[State 3610, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 3
value = floor(ifElse(98 * fvar(11) < 7, -7, -98 * fvar(11)))

[State 3610, TargetPowerAdd]
type = TargetPowerAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 8
trigger3 = AnimElemTime(2) = 12
trigger4 = AnimElemTime(2) = 16
trigger5 = AnimElemTime(2) = 20
trigger6 = AnimElemTime(2) = 24
trigger7 = AnimElemTime(2) = 28
trigger8 = AnimElemTime(2) = 32
trigger9 = AnimElemTime(2) = 36
trigger10 = AnimElemTime(2) = 40
trigger11 = AnimElemTime(2) = 44
trigger12 = AnimElemTime(2) = 48
trigger13 = AnimElemTime(2) = 52
trigger14 = AnimElemTime(2) = 56
trigger15 = AnimElem = 3
value = 36

[State 3610, HitAdd]
type = HitAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 8
trigger3 = AnimElemTime(2) = 12
trigger4 = AnimElemTime(2) = 16
trigger5 = AnimElemTime(2) = 20
trigger6 = AnimElemTime(2) = 24
trigger7 = AnimElemTime(2) = 28
trigger8 = AnimElemTime(2) = 32
trigger9 = AnimElemTime(2) = 36
trigger10 = AnimElemTime(2) = 40
trigger11 = AnimElemTime(2) = 44
trigger12 = AnimElemTime(2) = 48
trigger13 = AnimElemTime(2) = 52
trigger14 = AnimElemTime(2) = 56
trigger15 = AnimElem = 3
value = 1

[State 3610, HitAdd]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 8
trigger3 = AnimElemTime(2) = 12
trigger4 = AnimElemTime(2) = 16
trigger5 = AnimElemTime(2) = 20
trigger6 = AnimElemTime(2) = 24
trigger7 = AnimElemTime(2) = 28
trigger8 = AnimElemTime(2) = 32
trigger9 = AnimElemTime(2) = 36
trigger10 = AnimElemTime(2) = 40
trigger11 = AnimElemTime(2) = 44
trigger12 = AnimElemTime(2) = 48
trigger13 = AnimElemTime(2) = 52
trigger14 = AnimElemTime(2) = 56
trigger15 = AnimElem = 3
var(13) = 1

[State 3610, Juggle]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 8
trigger3 = AnimElemTime(2) = 12
trigger4 = AnimElemTime(2) = 16
trigger5 = AnimElemTime(2) = 20
trigger6 = AnimElemTime(2) = 24
trigger7 = AnimElemTime(2) = 28
trigger8 = AnimElemTime(2) = 32
trigger9 = AnimElemTime(2) = 36
trigger10 = AnimElemTime(2) = 40
trigger11 = AnimElemTime(2) = 44
trigger12 = AnimElemTime(2) = 48
trigger13 = AnimElemTime(2) = 52
trigger14 = AnimElemTime(2) = 56
trigger15 = AnimElem = 3
var(15) = 1
ignoreHitPause = 1

[State 3610, Hit Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 8
trigger3 = AnimElemTime(2) = 12
trigger4 = AnimElemTime(2) = 16
trigger5 = AnimElemTime(2) = 20
trigger6 = AnimElemTime(2) = 24
trigger7 = AnimElemTime(2) = 28
trigger8 = AnimElemTime(2) = 32
trigger9 = AnimElemTime(2) = 36
trigger10 = AnimElemTime(2) = 40
trigger11 = AnimElemTime(2) = 44
trigger12 = AnimElemTime(2) = 48
trigger13 = AnimElemTime(2) = 52
trigger14 = AnimElemTime(2) = 56
trigger15 = AnimElem = 3
value = 2, ifElse((AnimElem = 3), 3610, 2)
channel = 2

[State 3610, Hit Spark]
type = Helper
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 8
trigger3 = AnimElemTime(2) = 12
trigger4 = AnimElemTime(2) = 16
trigger5 = AnimElemTime(2) = 20
trigger6 = AnimElemTime(2) = 24
trigger7 = AnimElemTime(2) = 28
trigger8 = AnimElemTime(2) = 32
trigger9 = AnimElemTime(2) = 36
trigger10 = AnimElemTime(2) = 40
trigger11 = AnimElemTime(2) = 44
trigger12 = AnimElemTime(2) = 48
trigger13 = AnimElemTime(2) = 52
trigger14 = AnimElemTime(2) = 56
trigger15 = AnimElem = 3
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P2
pos = ((Random % 25) * ifElse(Random < 500, 1, -1)), (Target, const(size.mid.pos.y)) - ((Random % 25) * ifElse(Random < 500, 1, -1))
facing = ifElse(Random % 2, -1, 1)
ownPal = 1
onTop = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3610, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 8
trigger3 = AnimElemTime(2) = 12
trigger4 = AnimElemTime(2) = 16
trigger5 = AnimElemTime(2) = 20
trigger6 = AnimElemTime(2) = 24
trigger7 = AnimElemTime(2) = 28
trigger8 = AnimElemTime(2) = 32
trigger9 = AnimElemTime(2) = 36
trigger10 = AnimElemTime(2) = 40
trigger11 = AnimElemTime(2) = 44
trigger12 = AnimElemTime(2) = 48
trigger13 = AnimElemTime(2) = 52
trigger14 = AnimElemTime(2) = 56
trigger15 = AnimElem = 3
time = 18
ampl = -6
freq = 120

[State 3610, Voice]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 3
value = 3610, 0 + 10 * var(40)
channel = 0

[State 3610, ChangeState]
type = ChangeState
trigger1 = WinKO
value = 3620

[State 3610, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Target
[StateDef 3615]
type = S
physics = N
movetype = H
velset = 0, 0

[State 3615, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3615, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 3615, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3615

[State 3615, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) >= 0
value = SCA
Time = 1

[State 3615, StateTypeSet: Lie Down, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = L
physics = N

[State 3615, ChangeState]
type = SelfState
trigger1 = Time >= 180
value = ifElse(Alive, 5120, 5150)



;========================<WIN BY SHUN GOKU SATSU>=============================
[Statedef 3620]
type = S

[State 3620, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && PrevStateNo = 3610
value = 3620 + 10000 * (var(40) = [1, 2])

[State 3620, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 3620, AfterImage Off]
type = AfterImage
trigger1 = 1
time = 0

[State 3620, Voice]
type = StopSnd
trigger1 = AnimElem = 1
channel = 0

[State 3620, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3620, 0 + 10 * var(40)
channel = 0

[State 3620, Kanji]
type = Helper
trigger1 = !Time && PrevStateNo = 3610 && !NumHelper(8610)
helperType = Normal
stateNo = 8620
ID = 8620
postype = Left
ownPal = 1
persistent = 0

[State 3620, ChangeState]
type = ChangeState
trigger1 = Time >= 120 && RoundState = 3
value = ifElse(RoundState = 3, 180, 0)
ctrl = 1



;========================<MISOGI>=============================
[StateDef 3700]
type = S
physics = N
moveType = A
anim = 3700 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -5000
faceP2 = 1

[State 3700, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3700, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

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
trigger1 = (EnemyNear, StateNo != [120, 155])
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
trigger1 = AnimElemTime(28) < 0
time = 1
value = SCA

[State 3700, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = 0, -55
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3700, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, 0
darken = 0

[State 3700, Voice]
type = PlaySnd
trigger1 = !Time
value = 3700, 0 + 10 * var(40)
channel = 0

[State 3700, Misogi Aura]
type = Explod
trigger1 = !Time
anim = 3703
ID = 3703
bindTime = -1
removeTime = -1
sprPriority = -1
posType = P1
pos = 0, 0
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5, 0.5
ownPal = 1

[State 3700, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 26
ID = 3703

[State 3700, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 26
value = 3700, 1
channel = 1

[State 3700, AfterImage Helper]
type = Helper
trigger1 = AnimElem = 26 && !NumHelper(3701)
helpertype = Normal
stateNo = 3701
ID = 3701
name = "Right AfterImage"
posType = P1

[State 3700, AfterImage Helper]
type = Helper
trigger1 = AnimElem = 26 && !NumHelper(3702)
helpertype = Normal
stateNo = 3701
ID = 3702
name = "Left AfterImage"
posType = P1

[State 3700, PosAdd]
type = PosAdd
trigger1 = AnimElem = 26
x = P2Dist X - 14.3016759777
y = -192

[State 3700, Voice]
type = PlaySnd
trigger1 = AnimElem = 27
value = 3705, 0 + 10 * var(40)
channel = 0

[State 3700, VelSet]
type = VelSet
trigger1 = AnimElem = 27
y = 17.8125

[State 3700, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(27) > 0
y = 0.48828125

[State 3700, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 28
value = 3705, 1
channel = 1

[State 3700, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 28
ID = 3700
attr = A, HA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 560 < 7, 7, fvar(11) * 560)), 80
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
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 108
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = 0, 15
air.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 20), var(36) := -30
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3700, Hit Sound]
type = PlaySnd
trigger1 = MoveHit
value = 2, 3700
channel = 5
persistent = 0

[State 3700, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3700) > 1
ID = 3700
keepOne = 1
excludeID = 3700
ignoreHitPause = 1

[State 3700, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3700)
trigger1 = !(Target(3700), Time)
value = ifElse(Target(3700), StateType = A, 5425, 5420)
ID = 3700
ignoreHitPause = 1

[State 3700, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3705


;Landing
[StateDef 3705]
type = S
anim = 3705 + 10000 * (var(40) = [1, 2])
physics = N
moveType = A
velSet = 0, 0
hitCountPersist = 1
moveHitPersist = 1

[State 3705, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3705, Misogi Strike Effects]
type = Explod
trigger1 = !Time
anim = 3707
ID = 3707
bindTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 1, 1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1
persistent = 0

[State 3705, Misogi Strike Effects]
type = Explod
trigger1 = MoveHit && AnimElem = 2
anim = 3708
ID = 3708
bindTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 1, 1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1
persistent = 0

[State 3705, Misogi Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 3709
sprPriority = 3
posType = P1
scale = 0.375, 0.375
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3705, Misogi Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 3709
sprPriority = -1
posType = P1
scale = 0.375, 0.375
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3705, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 196, 1
channel = 3

[State 3705, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 1 && !MoveContact && !MoveReversed
ID = 3705
attr = S, HA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 560 < 7, 7, fvar(11) * 560)), 80
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
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 108
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = 0, 15
air.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 20), var(36) := -30
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3705, Hit Sound]
type = PlaySnd
trigger1 = MoveHit && NumTarget(3705)
value = 2, 3700
channel = 5
persistent = 0

[State 3705, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3705) > 1
ID = 3705
keepOne = 1
excludeID = 3705
ignoreHitPause = 1

[State 3705, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3705)
trigger1 = !(Target(3705), Time)
value = ifElse(Target(3705), StateType = A, 5425, 5420)
ID = 3705
ignoreHitPause = 1

[State 3705, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
movetype = I

[State 3705, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MESSATSU RYUKOSAI>=============================
[StateDef 3800]
type = S
physics = N
moveType = A
anim = 3800 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3800, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3800, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3800, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 3800, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3800, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3800, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 43

[State 3800, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255, 255, 255
ignoreHitPause = 1

[State 3800, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3800, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3800, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -46, -26
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3800, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, 0
darken = 0

[State 3800, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3800, 0 + 10 * var(40)
channel = 0

[State 3800, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3800, 1 + 10 * var(40)
channel = 0

[State 3800, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1, 5
channel = 1

[State 3800, Slam Sound]
type = PlaySnd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 17
value = 196, 1
channel = 3

[State 3800, EnvShake]
type = EnvShake
trigger1 = AnimElem = 10
trigger2 = AnimElem = 17
time = 18
ampl = -6
freq = 120

[State 3800, Impact Dust 1]
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

[State 3800, Impact Dust 2]
type = Explod
trigger1 = AnimElem = 17
anim = 8105
sprPriority = -3
posType = P1
pos = 0, 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3800, Kanji]
type = Explod
trigger1 = AnimElem = 17
anim = 3803
ID = 3803
bindTime = 1
sprPriority = -3
posType = P1
pos = 0, -108
facing = facing
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3800, Aura]
type = Explod
trigger1 = AnimElem = 17
anim = 3804
ID = 3804
bindTime = -1
sprPriority = -5
posType = P1
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3800, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
x = 8

[State 3800, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = 6

[State 3800, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 5.58659217877

[State 3800, VelSet]
type = VelAdd
trigger1 = AnimElemTime(6) > 0 && AnimElemTime(10) < 0
x = -0.17458100558

[State 3800, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 3800, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 10
ID = 3800
attr = S, HA
hitFlag = MAF
guardFlag = M
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
guard.hitTime = 18
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -2
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3800, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3800) > 1
ID = 3800
keepOne = 1
excludeID = 3800
ignoreHitPause = 1

[State 3800, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3800)
trigger1 = !(Target(3800), Time)
value = ifElse(Target(3800), StateType = A, 5425, 5420)
ID = 3800
ignoreHitPause = 1

[State 3800, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) <= 0
trigger1 = HitPauseTime <= 10
value = 3800 + 10000 * (var(40) = [1, 2])
elem = 11
ignoreHitPause = 1

[State 3800, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + var(13))
trigger1 = AnimElem = 17
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
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
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3800, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(17) >= 0 && AnimElemTime(18) <= 0
trigger1 = HitPauseTime <= 8
value = 3800 + 10000 * (var(40) = [1, 2])
elem = 18
ignoreHitPause = 1

[State 3800, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(18) >= 0 && AnimElemTime(19) <= 0
trigger1 = HitPauseTime <= 4
value = 3800 + 10000 * (var(40) = [1, 2])
elem = 19
ignoreHitPause = 1

[State 3800, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(20) >= 0
moveType = I

[State 3800, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX MESSATSU RYUKOSAI>=============================
[StateDef 3850]
type = S
physics = N
moveType = A
anim = 3850 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3850, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3850, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3850, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3850, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3850, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

[State 3850, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255, 255, 255
ignoreHitPause = 1

[State 3850, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3850, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3850, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -46, -26
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3850, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3850, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3800, 0 + 10 * var(40)
channel = 0

[State 3850, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3800, 1 + 10 * var(40)
channel = 0

[State 3850, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1, 5
channel = 1

[State 3850, Slam Sound]
type = PlaySnd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 17
value = 196, 1
channel = 3

[State 3850, EnvShake]
type = EnvShake
trigger1 = AnimElem = 10
trigger2 = AnimElem = 17
time = 18
ampl = -6
freq = 120

[State 3850, Impact Dust 1]
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

[State 3850, Impact Dust 2]
type = Explod
trigger1 = AnimElem = 17
anim = 8105
sprPriority = -3
posType = P1
pos = 0, 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3850, Kanji]
type = Explod
trigger1 = AnimElem = 17
anim = 3803
ID = 3803
bindTime = 1
sprPriority = -3
posType = P1
pos = 0, -108
facing = facing
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1650, Aura]
type = Explod
trigger1 = AnimElem = 17
anim = 3804
ID = 3804
bindTime = -1
sprPriority = -5
posType = P1
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3850, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
x = 8

[State 3850, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = 6

[State 3850, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 5.58659217877

[State 3850, VelSet]
type = VelAdd
trigger1 = AnimElemTime(6) > 0 && AnimElemTime(10) < 0
x = -0.17458100558

[State 3850, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 3850, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 10
ID = 3800
attr = S, HA
hitFlag = MAF
guardFlag = M
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
guard.hitTime = 18
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -2
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3850, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3800) > 1
ID = 3800
keepOne = 1
excludeID = 3800
ignoreHitPause = 1

[State 3850, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3800)
trigger1 = !(Target(3800), Time)
value = ifElse(Target(3800), StateType = A, 5425, 5420)
ID = 3800
ignoreHitPause = 1

[State 3850, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) <= 0
trigger1 = HitPauseTime <= 10
value = 3850 + 10000 * (var(40) = [1, 2])
elem = 11
ignoreHitPause = 1

[State 3850, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + var(13))
trigger1 = AnimElem = 17 || AnimElemTime(17) = 2
trigger2 = AnimElem = 18 || AnimElemTime(18) = 2
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
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.11731843575, -5
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -5
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
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3850, HitDef: Final]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + var(13))
trigger1 = AnimElem = 19
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
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
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3850, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(20) >= 0
moveType = I

[State 3850, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<TAIGYAKU MUDO>=============================
[StateDef 3900]
type = S
physics = N
moveType = A
anim = 3900 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

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
var(17) = 45

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
trigger1 = AnimElemTime(16) < 0
time = 1
value = SCA

[State 3900, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -8, -56
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3900, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3900, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3900, 0 + 10 * var(40)
channel = 0

[State 3900, Taigyaku Mudo Time]
type = VarSet
trigger1 = AnimElemTime(5) >= 0
var(50) = 450

[State 3900, Power]
type = VarSet
trigger1 = AnimElem = 5
var(24) = Power

[State 3900, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1