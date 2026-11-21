; ________________________________________________
;| Ash Crimson by KarmaCharmeleon && FeLo_Llop	|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;========================<VENTOSE>=============================
[StateDef 1000]
type = S
physics = N
moveType = A
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(55)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 125), 2, ifElse(Random < 250, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1020, ifElse(var(10) = 1, 1010, 1000))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = ifElse(var(10) = 2, 1020, 1000), 0
channel = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 11 && var(10) = 2
value = 1020, 1
channel = 0

[State 1000, Fire Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 4 && var(10) != 1
trigger2 = AnimElem = 3 && var(10) = 1
trigger3 = AnimElem = 11 && var(10) = 2
value = 1000, 1
channel = 1

[State 1000, Ventose Visual Effect]
type = Explod
trigger1 = AnimElem = 4 && var(10) != 1
ID = 1003
anim = 1003 + 10000 * var(40)
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1000, Ventose Visual Effect]
type = Explod
trigger1 = AnimElem = 3 && var(10) = 1
trigger2 = AnimElem = 11 && var(10) = 2
ID = 1003
anim = 1013 + 10000 * var(40)
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1000, Projectile Shield]
type = Helper
trigger1 = (AnimElem = 5 || AnimElem = 12) && var(10) = 2
helperType = Normal
stateNo = 1022
ID = 1022
name = "Projectile Shield"
posType = P1
pos = 0, 0
size.xScale = 0.5
size.yScale = 0.5
ownpal = 1

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 5 && var(10) != 2
helperType = Normal
stateNo = 1005
ID = 1005
name = "Ventose Projectile"
posType = P1
pos = 48, -72
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 13 && var(10) = 2
helperType = Normal
stateNo = 1005
ID = 1025
name = "Ventose Projectile"
posType = P1
pos = 48, -72
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1000, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20) || var(55)) && var(10) = 2
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(55), 36 * !var(20) * !var(55)
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
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
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -72
palFX.time = 20
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1000, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20) || var(55)) && var(10) = 2
trigger1 = AnimElem = 12
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(55), 36 * !var(20) * !var(55)
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
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
guard.velocity = 0
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
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -72
palFX.time = 20
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1000, Flame Particles]
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

[State 1000, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 20, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX VENTOSE>=============================
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
var(25) = 40

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -16, -65
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
value = 1020, 0
channel = 0

[State 1030, Voice]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1020, 1
channel = 0

[State 1030, Fire Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 11
value = 1000, 1
channel = 1

[State 1030, Ventose Visual Effect]
type = Explod
trigger1 = AnimElem = 4
ID = 1003
anim = 1003
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1030, Ventose Visual Effect]
type = Explod
trigger1 = AnimElem = 11
ID = 1003
anim = 1013
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1030, Projectile]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 1005
ID = 1035
name = "Ventose Projectile"
posType = P1
pos = 48, -72
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, Projectile]
type = Helper
trigger1 = AnimElem = 13
helperType = Normal
stateNo = 1005
ID = 1045
name = "Ventose Projectile"
posType = P1
pos = 48, -72
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, Projectile Shield]
type = Helper
trigger1 = (AnimElem = 5 || AnimElem = 12)
helperType = Normal
stateNo = 1022
ID = 1022
name = "Projectile Shield"
posType = P1
pos = 0, 0
size.xScale = 0.5
size.yScale = 0.5
ownpal = 1

[State 1030, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
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
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -72
palFX.time = 20
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1030, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 = AnimElem = 12
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
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
guard.velocity = 0
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
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -72
palFX.time = 20
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1030, Flame Particles]
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

[State 1030, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 20, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1030, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<VENTOSE (EVIL)>=============================
[StateDef 1050]
type = S
physics = N
moveType = A
anim = 1050
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(55)
faceP2 = 1

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1050, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 125), 2, ifElse(Random < 250, 1, 0))

[State 1050, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1070, ifElse(var(10) = 1, 1060, 1050))

[State 1050, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = ifElse(var(10), 1060, 1050), 10
channel = 0

[State 1050, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 19 && var(10) = 2
value = 1070, 11
channel = 0

[State 1050, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 28 && var(10) = 2
value = 1070, 12
channel = 0

[State 1050, Fire Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 11 && var(10)
trigger3 = AnimElem = 19 && var(10) = 2
trigger4 = AnimElem = 29 && var(10) = 2
value = 1000, 1
channel = 1

[State 1050, Ventose Visual Effect]
type = Explod
trigger1 = AnimElem = 4
trigger2 = AnimELem = 19 && var(10) = 2
ID = 1003
anim = 1003 + 10000 * var(40)
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1050, Ventose Visual Effect]
type = Explod
trigger1 = AnimElem = 11 && var(10)
ID = 1003
anim = 1013 + 10000 * var(40)
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1050, Projectile Shield]
type = Helper
trigger1 = (AnimElem = 5 || AnimElem = 12) && var(10)
trigger2 = AnimElem = 20 && var(10) = 2
helperType = Normal
stateNo = 1022
ID = 1022
name = "Projectile Shield"
posType = P1
pos = 0, 0
size.xScale = 0.5
size.yScale = 0.5
ownpal = 1

[State 1050, Projectile]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 1005
ID = 1055
name = "Ventose Projectile"
posType = P1
pos = 48, -72
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1050, Projectile]
type = Helper
trigger1 = AnimElem = 13 && var(10)
helperType = Normal
stateNo = 1005
ID = 1065
name = "Ventose Projectile"
posType = P1
pos = 48, -72
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1050, Projectile]
type = Helper
trigger1 = AnimElem = 20 && var(10) = 2
helperType = Normal
stateNo = 1005
ID = 1075
name = "Ventose Projectile"
posType = P1
pos = 48, -72
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1050, Projectile]
type = Helper
trigger1 = AnimElem = 30 && var(10) = 2
helperType = Normal
stateNo = 1005
ID = 1085
name = "Ventose Projectile"
posType = P1
pos = 48, -72
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1050, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20) || var(55))
trigger1 = AnimElem = 5 && var(10)
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(55), 36 * !var(20) * !var(55)
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
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
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -72
palFX.time = 20
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1050, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20) || var(55)) && var(10)
trigger1 = AnimElem = 12
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(55), 36 * !var(20) * !var(55)
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
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
guard.velocity = 0
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
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -72
palFX.time = 20
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1050, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20) || var(55))
trigger1 = AnimElem = 20 && var(10) = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(55), 36 * !var(20) * !var(55)
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
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
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -72
palFX.time = 20
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1050, Flame Particles]
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

[State 1050, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 20, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1050, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<NIVOSE>==========================
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(55)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2MoveType = H && !var(55), 2, ifElse(Random < 500 && !var(55), 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1120, ifElse(var(10) = 1, 1110, 1100))

[State 1100, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100, 0 + 10 * var(40)
channel = 0

[State 1100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 1

[State 1100, Fire Sound]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0 && !var(10)
trigger2 = AnimElemTime(2) = 1 && var(10) = 1
trigger3 = AnimElemTime(2) = 2 && var(10) = 2
value = 1100, 1
channel = 3

[State 1100, Nivose Visual Effect 1]
type = Explod
trigger1 = AnimElemTime(2) = 0 && !var(10)
trigger2 = AnimElemTime(2) = 1 && var(10) = 1
trigger3 = AnimElemTime(2) = 2 && var(10) = 2
ID = 1103
anim = 1103 + 10000 * var(40)
bindTime = 1
sprPriority = 3
posType = P1
pos = 8, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1100, Nivose Visual Effect 2]
type = Explod
trigger1 = AnimElemTime(2) = 0 && !var(10)
trigger2 = AnimElemTime(2) = 1 && var(10) = 1
trigger3 = AnimElemTime(2) = 2 && var(10) = 2
ID = 1104
anim = 1104 + 10000 * var(40)
bindTime = 1
sprPriority = 3
posType = P1
pos = 8, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0 && var(40)
value = SCA
time = 1

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 6
stateType = A
physics = N

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 40, 0
channel = 4

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Nivose Dust"
posType = P1
ownPal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElemTime(6) = 1
x = ifElse(var(10) = 2, 11.1731843575, ifElse(var(10) = 1, 8.93854748603, 6.70391061453))
y = -ifElse(var(10) = 2, 11.25, ifElse(var(10) = 1, 10, 8.75))

[State 1100, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(6) > 1
x = -ifElse(var(10) = 2, 0.30551675977, ifElse(var(10) = 1, 0.28369413407, 0.26187150838))

[State 1100, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 1
y = 0.5859375

[State 1100, Ground Hit 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20) || var(55))
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(55), ifElse(var(10) = 2, 21, ifElse(var(10) = 1, 28, 49)), ifElse(var(10) = 2, 35, ifElse(var(10) = 1, 56, 105))) < 7, 7, fvar(11) * ifElse(var(55), ifElse(var(10) = 2, 21, ifElse(var(10) = 1, 28, 49)), ifElse(var(10) = 2, 35, ifElse(var(10) = 1, 56, 105))))), ifElse(var(55), 7, ifElse(var(10) = 2, 7, ifElse(var(10) = 1, 8, 15)))
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(55), 36 * !var(20) * !var(55)
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
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -5
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Ground Hit 2]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20) || var(55))
trigger1 = AnimElem = 4 && !MoveContact && !MoveReversed
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(55), ifElse(var(10) = 2, 21, ifElse(var(10) = 1, 28, 49)), ifElse(var(10) = 2, 35, ifElse(var(10) = 1, 56, 105))) < 7, 7, fvar(11) * ifElse(var(55), ifElse(var(10) = 2, 21, ifElse(var(10) = 1, 28, 49)), ifElse(var(10) = 2, 35, ifElse(var(10) = 1, 56, 105))))), ifElse(var(55), 7, ifElse(var(10) = 2, 7, ifElse(var(10) = 1, 8, 15)))
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(55), 36 * !var(20) * !var(55)
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
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -68
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Ground Hit 3]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20) || var(55))
trigger1 = AnimElem = 5 && !MoveContact && !MoveReversed && var(10) != 2
trigger2 = AnimElem = 5 && var(10) = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(55), ifElse(var(10) = 2, 14, ifElse(var(10) = 1, 28, 49)), ifElse(var(10) = 2, 28, ifElse(var(10) = 1, 56, 105))) < 7, 7, fvar(11) * ifElse(var(55), ifElse(var(10) = 2, 14, ifElse(var(10) = 1, 28, 49)), ifElse(var(10) = 2, 28, ifElse(var(10) = 1, 56, 105))))), ifElse(var(55), 7, ifElse(var(10) = 2, 7, ifElse(var(10) = 1, 8, 15)))
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(55), 36 * !var(20) * !var(55)
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
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -98
palFX.time = 52
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
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(6) < 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 52, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1100, Air Hit]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20) || var(55))
trigger1 = AnimElem = 6 && !MoveContact && !MoveReversed
trigger2 = AnimElem = 7 && var(10)
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(55), 28, 56) < 7, 7, fvar(11) * ifElse(var(55), 28, 56))), ifElse(var(55), 7, 8)
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(55), 36 * !var(20) * !var(55)
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
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -98
palFX.time = 57
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
persistent = 0

[State 1100, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(6) >= 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 57, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

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



;========================<EX NIVOSE>=============================
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
var(25) = 15

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 36, -8
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

[State 1130, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 1

[State 1130, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1100, 1
channel = 4

[State 1130, Nivose Visual Effect 1]
type = Explod
trigger1 = AnimElem = 2
ID = 1103
anim = 1103
bindTime = 1
sprPriority = 3
posType = P1
pos = 8, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1130, Nivose Visual Effect 2]
type = Explod
trigger1 = AnimElem = 2
ID = 1104
anim = 1104
bindTime = 1
sprPriority = 3
posType = P1
pos = 8, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1130, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
value = SCA
time = 1

[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 6
stateType = A
physics = N

[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 40, 0
channel = 5

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Nivose Dust"
posType = P1
ownPal = 1

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElemTime(6) = 1
x = 13.4078212291
y = -12.5

[State 1130, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(6) > 1
x = -0.34916201117

[State 1130, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1130, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 1
y = 0.5859375

[State 1130, Ground Hit 1]
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
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -5
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Ground Hit 2]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20) || var(55))
trigger1 = AnimElem = 4 && !MoveContact && !MoveReversed
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
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -68
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Ground Hit 3]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 5
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
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -98
palFX.time = 52
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
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(6) < 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 52, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1130, Air Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 6
attr = A, SA
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
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -98
palFX.time = 58
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Air Hit 2]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 7
attr = A, SA
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
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -98
palFX.time = 58
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(6) >= 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 58, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1130, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1105



;=====================<GENIE>==========================
[StateDef 1200]
type = S
physics = N
moveType = A
anim = 1200 + 10000 * var(40)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(55)
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 5, ifElse((command = "b" || command = "rlsb"), 4, ifElse(command = "a" || command = "rlsa"), 3, ifElse(command = "z" || command = "rlsz"), 2, ifElse(command = "y" || command = "rlsy"), 1, 0)))))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 5, ifElse((NumExplod(90000220) || NumExplod(90000225)), 4, ifElse((NumExplod(90000240) || NumExplod(90000245)), 3, ifElse((NumExplod(90000210) || NumExplod(90000215)), 2, ifElse((NumExplod(90000230) || NumExplod(90000235)), 1, 0)))))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2BodyDist x > 192), 5, (ifElse((P2BodyDist x > 160), 4, ifElse((P2BodyDist x > 128), 3, ifElse((P2BodyDist x > 96), 2, ifElse((P2BodyDist x > 62), 1, 0))))))

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse((var(10) = 5 || var(10) = 4), 1220, ifElse((var(10) = 3 || var(10) = 2), 1210, 1200)) + 10000 * var(40)

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 6 && !var(40)
value = 1200, 0
channel = 0

[State 1200, Fire Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1200, 1
channel = 1

[State 1200, Genie Visual Effect]
type = Explod
trigger1 = AnimElem = 6
ID = 1203
anim = 1203 + 10000 * var(40)
bindTime = 1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1200, Projectile]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 1205
ID = 1205
name = "Genie Projectile"
posType = P1
pos = 56 + (var(10) * 32), -84
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX GENIE>==========================
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

[State 1230, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse(((command = "a", 1, 0) + command = "b", 1, 0) + command = "c", 1, 0) >= 2) || (ifElse(command = "rlsa", 1, 0) + ifElse(command = "rlsb", 1, 0) + ifElse(command = "rlsc", 1, 0) >= 2)), 1, 0)
var(10) = ifElse(((ifElse(NumExplod(90000230), 1, 0) + ifElse(NumExplod(90000240), 1, 0) + ifElse(NumExplod(90000250), 1, 0) >= 2) || (ifElse(NumExplod(90000235), 1, 0) + ifElse(NumExplod(90000245), 1, 0) + ifElse(NumExplod(90000255), 1, 0) >= 2)), 1, 0)

[State 1230, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2MoveType = H, 0, 1)

[State 1230, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10), 1240, 1230)

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
var(25) = ifElse(var(10), 34, 26)

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 12, -92
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
trigger1 = AnimElem = 6
value = 1200, 0
channel = 0

[State 1230, Fire Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1200, 1
channel = 1

[State 1230, Genie Visual Effect]
type = Explod
trigger1 = AnimElem = 6
ID = 1203
anim = 1203
bindTime = 1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1230, Projectile]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 1235
ID = 1235
name = "Genie Projectile"
posType = P1
pos = ifElse(var(10), floor(P2Dist X), 104), -84
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1230, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<GERMINAL CAPRICE>==========================
[StateDef 1300]
type = S
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(55)
faceP2 = 1

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((EnemyNear, GetHitVar(HitTime) >= ifElse(P2MoveType = H, 17, 15)), 2, ifElse((EnemyNear, GetHitVar(HitTime) >= ifElse(P2MoveType = H, 14, 12)) && P2BodyDist x <= 52, 1, 0))

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1320, ifElse(var(10) = 1, 1310, 1300))

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1300, 0 + 10 * var(40)
channel = 0

[State 1300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 1300, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1100, 1
channel = 3

[State 1300, Germinal Caprice Visual Effect]
type = Explod
trigger1 = AnimElem = 5 && !var(40)
trigger2 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0 && var(40)
ID = 1303
anim = 1303 + 10000 * var(40)
bindTime = 1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = ifElse(var(10) = 2, 17.8770949721, ifElse(var(10) = 1, 15.6424581006, 13.4078212291))

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 7.82122905028

[State 1300, VelSet]
type = VelAdd
trigger1 = AnimElemTime(6) > 0 && vel x > 0
x = -0.52374301676

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 1300, HitDef (Normal)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20) || var(55)) && !var(40)
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(55), ifElse(var(10) = 2, 70, ifElse(var(10) = 1, 63, 56)), ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84))) < 7, 7, fvar(11) * ifElse(var(55), ifElse(var(10) = 2, 70, ifElse(var(10) = 1, 63, 56)), ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84))))), ifElse(var(55), ifElse(var(10) = 2, 10, ifElse(var(10) = 1, 9, 8)), ifElse(var(10) = 2, 14, ifElse(var(10) = 1, 13, 12)))
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(55), 36 * !var(20) * !var(55)
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
ground.velocity = -1.39664804469, -ifElse(var(10) = 2, 9.375, ifElse(var(10) = 1, 7.8125, 6.25))
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -1.39664804469, -ifElse(var(10) = 2, 9.375, ifElse(var(10) = 1, 7.8125, 6.25))
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
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -50
palFX.time = 42
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, HitDef (Evil)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20) || var(55)) && var(40)
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10), 35, 84) < 7, 7, fvar(11) * ifElse(var(10), 35, 84))), ifElse(var(10), 7, 12)
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(55), 36 * !var(20) * !var(55)
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
ground.velocity = -ifElse(var(10), 0, 1.39664804469), -ifElse(var(10), 0, 6.25)
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -1.39664804469, -ifElse(var(10), 4.6875, 6.25)
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = ifElse(var(10), 0, 1)
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -50
palFX.time = 42
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, Flame Particles]
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

[State 1300, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 42, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1300, Follow-Up (Evil)]
type = ChangeState
triggerAll = var(40)
trigger1 = MoveHit && var(10)
value = 1301

[State 1300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Finish
[StateDef 1301]
type = S
physics = N
moveType = A
anim = 1301
ctrl = 0
sprPriority = 1
hitCountPersist = 1

[State 1301, Germinal Caprice Visual Effect]
type = Explod
trigger1 = AnimElemTime(2) < 0
ID = 1303
anim = 1303 + 10000 * var(40)
bindTime = 1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1301, VelSet]
type = VelAdd
trigger1 = AnimElemTime(2) > 0 && vel x > 0
x = -0.52374301676

[State 1301, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 1301, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 3
ID = 1301
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 35, 42) < 7, 7, fvar(11) * ifElse(var(10) = 2, 35, 42))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -ifElse(var(10) = 2 && !var(53), 7.93322405606, 0.55865921787), -ifElse(var(10) = 2 && !var(53), 0, 12.5)
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -0.55865921787, -12.5
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = ifElse(var(10) = 2 && !var(53), 0, 1)
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 24), var(36) := -36
palFX.time = 54
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1301, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(53) && NumTarget(1301)
var(15) = 0

[State 1301, EX Germinal Caprice Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1301)
var(53) = 1
persistent = 0

[State 1301, TargetDrop]
type = TargetDrop
triggerAll = var(10) = 2
trigger1 = !var(53) && NumTarget(1301) > 1
ID = 1301
keepOne = 1
excludeID = 1301
ignoreHitPause = 1

[State 1301, TargetState]
type = TargetState
triggerAll = var(10) = 2
trigger1 = MoveHit && !var(53) && NumTarget(1301)
trigger1 = !(Target(1301), Time) && !(Target(1301), StateType = A)
value = 5450
ID = 1301
ignoreHitPause = 1

[State 1301, Flame Particles]
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

[State 1301, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 54, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1301, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1301, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1




;=====================<EX GERMINAL CAPRICE>==========================
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
var(25) = 23

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
channel = 3

[State 1330, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1300, 0
channel = 0

[State 1330, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 1330, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1100, 1
channel = 4

[State 1330, Germinal Caprice Visual Effect]
type = Explod
trigger1 = AnimElem = 5
ID = 1303
anim = 1303
bindTime = 1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1330, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 17.8770949721

[State 1330, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 7.82122905028

[State 1330, VelSet]
type = VelAdd
trigger1 = AnimElemTime(6) > 0 && vel x > 0
x = -0.52374301676

[State 1330, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 1330, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
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
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -1.11731843575, -8.75
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -8.75
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
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -50
palFX.time = 45
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1330, Flame Particles]
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

[State 1330, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 45, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1330, ChangeState]
type = ChangeState
trigger1 = MoveHit
trigger1 = AnimElemTime(6) > 0
value = 1340

[State 1330, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1330, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Finish
[StateDef 1340]
type = S
physics = N
moveType = A
anim = 1340
ctrl = 0
velSet = 0, 0
sprPriority = 1
hitCountPersist = 1

[State 1340, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 20

[State 1340, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 7.82122905028

[State 1340, VelSet]
type = VelAdd
trigger1 = AnimElemTime(1) > 0 && vel x > 0
x = -0.52374301676

[State 1340, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 1340, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1340, 0
channel = 0

[State 1340, Woosh]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1, 2
channel = 1

[State 1340, Fire Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1000, 1
channel = 1

[State 1340, Ventose Visual Effect]
type = Explod
trigger1 = AnimElem = 7
ID = 1343
anim = 1013
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1340, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 8
ID = 1340
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
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
ground.velocity = -0.55865921787, -12.5
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -0.55865921787, -12.5
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
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -72
palFX.time = 54
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1340, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(53) && NumTarget(1340)
var(15) = 0

[State 1340, EX Germinal Caprice Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1340)
var(53) = 1
persistent = 0

[State 1340, Flame Particles]
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

[State 1340, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 54, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1340, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1340, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



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
value = 1100, 0 + 10 * var(40)
channel = 0

[State 2900, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 1

[State 2900, Fire Sound]
type = PlaySnd
trigger1 = AnimElemTime(2) = 2
value = 1100, 1
channel = 3

[State 2900, Nivose Visual Effect 1]
type = Explod
trigger1 = AnimElemTime(2) = 2
ID = 1103
anim = 1103 + 10000 * var(40)
bindTime = 1
sprPriority = 3
posType = P1
pos = 8, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 2900, Nivose Visual Effect 2]
type = Explod
trigger1 = AnimElemTime(2) = 2
ID = 1104
anim = 1104 + 10000 * var(40)
bindTime = 1
sprPriority = 3
posType = P1
pos = 8, 0
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 2900, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 6
stateType = A
physics = N

[State 2900, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 40, 0
channel = 4

[State 2900, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Nivose Dust"
posType = P1
ownPal = 1

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElemTime(6) = 1
x = 11.1731843575
y = -11.25

[State 2900, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(6) > 1
x = -0.30551675977

[State 2900, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 1
y = 0.5859375

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Ground Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
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
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -5
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, Ground Hit 2]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 4 && !MoveContact && !MoveReversed
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
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
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -68
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, Ground Hit 3]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
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
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -98
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
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(6) < 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 52, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 2900, Air Hit]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 6 && !MoveContact && !MoveReversed
trigger2 = AnimElem = 7
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
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
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -98
palFX.time = 57
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
persistent = 0
kill = 0

[State 2900, Flame Particles Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(6) >= 0
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 57, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
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
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 5
channel = 1

[State 2910, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
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
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -15
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
trigger1= AnimElemTime(6) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1