; ________________________________________________
;| Ryu by KarmaCharmeleon			|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<HELPER STATES>========================================
;==============================================================================================

;====================<PARRY HELPER>=========================
[StateDef 765]
type = A
physics = N
moveType = I
anim = ifElse(Root, StateType = C, 766, ifElse(Root, StateType = A, 767, 765))
velSet = 0,0
ctrl = 0

[State 765, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 765, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1

[State 765, Change to Crouching]
type = ChangeAnim
triggerAll = !Time
trigger1 = !(Root, AILevel) && ifElse(Root, NumExplod(92828282) || Root, NumExplod(92468246), Root, command = "up", Root, command = "down")
trigger2 = Root, AILevel && (Root, StateType != A) && P2StateType = C
value = 766

[State 765, Change to Standing / Jumping]
type = ChangeAnim
triggerAll = !Time
trigger1 = !Root, NumExplod(94646464) && !Root, NumExplod(92468246)
trigger1 = !(Root, AILevel) && ifElse(Root, P2dist x >= 0, Root, command = "fwd", Root, command = "back")
trigger2 = Root, NumExplod(94646464) || Root, NumExplod(92468246)
trigger2 = !(Root, AILevel) && ifElse(Root, P2dist x >= 0, Root, command = "back", Root, command = "fwd")
trigger3 = Root, AILevel && Anim != 766
value = ifElse((Root, StateType = A), 767, 765)

[State 765, Change to Standing / Jumping]
type = ChangeAnim
trigger1 = Anim = 765 || Anim = 767
value = ifElse((Root, StateType = A), 767, 765)

[State 765, Disable]
type = VarSet
trigger1 = Time >= ifElse((Root, StateType = A), 7, 8)
trigger2 = Facing != (Root, Facing)
trigger3 = !(Root, ctrl)
trigger3 = (Root, StateNo != [760,762]) && (Root, StateNo != 5120)
var(0) = 1

[State 765, Disable]
type = VarSet
triggerAll = !(Root, AILevel)
triggerAll = !Root, NumExplod(92828282) && !Root, NumExplod(94646464) && !Root, NumExplod(92468246)
trigger1 = ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd")
trigger2 = Time < 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") + Root, command = "holddown") > 1
trigger3 = Time >= 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") || Root, command = "holddown")
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && ifElse(Root, P2dist x >= 0, Root, command = "fwd", Root, command = "back")) || (Anim = 766 && Root, command = "down"))
var(0) = 1

[State 765, Disable (Reverse Commands)]
type = VarSet
triggerAll = !(Root, AILevel)
triggerAll = Root, NumExplod(94646464) || Root, NumExplod(92468246)
trigger1 = ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback")
trigger2 = Time < 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd") + ifElse(Root, NumExplod(92468246), Root, command = "holdup", Root, command = "holddown")) > 1
trigger3 = Time >= 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd") || ifElse(Root, NumExplod(92468246), Root, command = "holdup", Root, command = "holddown"))
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && ifElse(Root, P2dist x >= 0, Root, command = "back", Root, command = "fwd")) || (Anim = 766 && ifElse(Root, NumExplod(92468246), Root, command = "up", Root, command = "down")))
var(0) = 1

[State 765, Disable (Reverse Up/Down only)]
type = VarSet
triggerAll = !(Root, AILevel)
triggerAll = Root, NumExplod(92828282) && !Root, NumExplod(94646464) && !Root, NumExplod(92468246)
trigger1 = ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd")
trigger2 = Time < 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") + Root, command = "holdup") > 1
trigger3 = Time >= 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") || Root, command = "holdup")
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && ifElse(Root, P2dist x >= 0, Root, command = "fwd", Root, command = "back")) || (Anim = 766 && Root, command = "up"))
var(0) = 1

[State 765, Disable]
type = ChangeAnim
trigger1 = var(0) = 1
value = 1

[State 765, Standing/Air]
type = ReversalDef
trigger1 = !var(0) && (Anim = 765 || Anim = 767)
trigger1 = (Root, StateNo != 5120) || !(Root, AnimTime)
reversal.attr = SCA,AA
p1StateNo = 766
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, Crouching]
type = ReversalDef
trigger1 = !var(0) && Anim = 766
reversal.attr = SC,AA
p1StateNo = 766
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, Disable]
type = ReversalDef
trigger1 = var(0) = 1
reversal.attr =
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, End]
type = DestroySelf
trigger1 = Time >= 18
trigger2 = (Root, MoveType != I)
trigger3 = !(Root, ctrl) && (Root, StateNo != [760, 762]) && (Root, StateNo != 5120)
trigger4 = (Root, StateNo = [760, 762]) && (Root, Time <= 1)


;Success
[StateDef 766]
moveType = I
ctrl = 0

[State 766, Disable]
type = VarSet
trigger1 = 1
var(0) = 1

[State 766, End]
type = DestroySelf
trigger1 = Root, StateNo = [760, 762]
trigger2 = Time >= 2



;====================<BAG>=========================
[StateDef 16807]
type = S
physics = N
moveType = I
anim = 16807
ctrl = 0
velSet = 0,0
sprPriority = -3

[State 16807, PosSet]
type = PosSet
trigger1 = 1
y = -5

[State 16807, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 16807, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 6807, 1
channel = 1



;====================<HADOKEN PROJECTILE>=========================
[StateDef 1005]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3

[State 1005, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1005, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1015

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1005, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1005, Button Detect]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1005, Change in Direction (Reflection)]
type = VelSet
triggerAll = !Time && NumPartner
trigger1 = Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143) && !Partner, NumExplod(262144)
trigger2 = Partner, NumExplod(262143) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262144)
trigger3 = vel y && Partner, NumExplod(262144) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143)
y = ifElse(Partner, NumExplod(262141) || Partner, NumExplod(262144), -1, 1) * ifElse(Partner, NumExplod(262144), vel y, ifElse(var(10) = 2, 5.58659217877, ifElse(var(10) = 1, 4.46927374302, 3.35195530726)))

[State 1005, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(var(10) = 2, 5.58659217877, ifElse(var(10) = 1, 4.46927374302, 3.35195530726))

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1005, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time
var(39) = 1

[State 1005, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S, SP
hitFlag =
sparkXY = -10,0

[State 1005, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10), 56, 49)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10), 56, 49)))), ifElse(var(10) = 2, 9, ifElse(var(10) = 1, 8, 7))
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)) * !(Root, var(50)), 36 * !(Root, var(20)) * !(Root, var(50))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 5, 10)
guard.pauseTime = 0, ifElse((Root, var(20)), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1006
ignoreHitPause = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1005, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1005, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1006]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1006, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State 1006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [1000,1030]
var(18) = 1

[State 1006, Turn]
type = Turn
trigger1 = MoveContact
trigger1 = Root, NumProjID(262144)
ignoreHitPause = 1
persistent = 0

[State 1006, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger1 = Root, NumProjID(262144)
value = sysvar(1)
ignoreHitPause = 1

[State 1006, EnvShake (Special)]
type = EnvShake
trigger1 = Time = 1 && PrevStateNo = 1015 && !MoveGuarded
time = 14
ampl = 4
freq = 120
ignoreHitPause = 1

[State 1006, Projectile Flag Increment (reflected projectile correction)]
type = ParentVarAdd
trigger1 = Time >= 1
trigger1 = PrevStateNo = 1015
var(39) = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0 && PrevStateNo != 1015
trigger2 = Time >= 1
value = 1007


;Disappear
[StateDef 1007]
type = A
physics = N
moveType = A
anim = 1007
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1007, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2, 6
channel = 2
volume = -128
lowPriority = 1

[State 1007, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1007, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008


;Wait
[StateDef 1008]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 1008, End]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, Time <= 1 && !(Target, HitShakeOver)



;====================<HADOKEN PROJECTILE (REFLECTED)>=========================
[StateDef 1015]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3

[State 1015, Turn]
type = Turn
trigger1 = !Time && PrevStateNo != 1015

[State 1015, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1015, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1005

[State 1015, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1015, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1015, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1015, Change in Direction (Reflection)]
type = VelSet
triggerAll = !Time
trigger1 = Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262143) && !Enemy, NumExplod(262144)
trigger2 = Enemy, NumExplod(262143) && !Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262144)
trigger3 = vel y && Enemy, NumExplod(262144) && !Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262143)
y = ifElse(Enemy, NumExplod(262141) || Enemy, NumExplod(262144), -1, 1) * ifElse(Enemy, NumExplod(262144), vel y, ifElse(var(10) = 2, 5.58659217877, ifElse(var(10) = 1, 4.46927374302, 3.35195530726)))

[State 1015, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(var(10) = 2, 5.58659217877, ifElse(var(10) = 1, 4.46927374302, 3.35195530726))

[State 1015, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1015, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1015, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time && PrevStateNo != 1015
var(39) = -1

[State 1015, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1015, Miss]
type = HitDef
trigger1 = 1
ID = sysvar(0)
affectTeam = F
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1015, HitDef]
type = HitDef
trigger1 = 1
ID = sysvar(0)
affectTeam = F
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10), 56, 49)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10), 56, 49)))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 5, 10)
guard.pauseTime = 0, ifElse((Root, var(20)), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
sprPriority = 3

[State 1015, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1006
ignoreHitPause = 1

[State 1015, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1015, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100



;====================<EX HADOKEN PROJECTILE>=========================
[StateDef 1035]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 1035, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1035, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1045

[State 1035, Projectile Health]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(0) = 2

[State 1035, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 1035, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateNo = 1007
ignoreHitPause = 1

[State 1035, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1035, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1035, Change in Direction (Reflection)]
type = VelSet
triggerAll = !Time && NumPartner
trigger1 = Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143) && !Partner, NumExplod(262144)
trigger2 = Partner, NumExplod(262143) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262144)
trigger3 = vel y && Partner, NumExplod(262144) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143)
y = ifElse(Partner, NumExplod(262141) || Partner, NumExplod(262144), -1, 1) * ifElse(Partner, NumExplod(262144), vel y, 3.125)

[State 1035, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(Time < 2 && var(0) < 2, 1.11731843575, 6.70391061453)

[State 1035, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1035, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1035, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time && !PrevStateNo
var(39) = 1

[State 1035, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1035, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1035, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
trigger1 = var(0) > 0
ID = 1035
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(0) > 1, 56, 42) < 7, 7, fvar(11) * ifElse(var(0) > 1, 56, 42))), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 10
guard.pauseTime = 0, 10
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1035, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 1036, 1035)
ignoreHitPause = 1

[State 1035, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 1035, 1007)
ignoreHitPause = 1

[State 1035, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 1007
ignoreHitPause = 1

[State 1035, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1035, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1036]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 1036, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1036, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1036, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1036, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1036, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1036, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State 1036, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1036, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [1000, 1030]
var(18) = 1

[State 1036, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1036, End]
type = ChangeState
trigger1 = Time >= 3 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 1007, 1035)



;====================<EX HADOKEN PROJECTILE (REFLECTED)>=========================
[StateDef 1045]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 1045, Turn]
type = Turn
trigger1 = !Time && PrevStateNo != [1045, 1046]

[State 1045, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1045, Projectile Health Fix]
type = VarAdd
trigger1 = !Time && sysvar(1) != 1035
trigger2 = Time = 1 && PrevStateNo = 1045
trigger2 = Root, NumProjID(262144)
var(0) = ifElse(Root, NumProjID(262144), 2, 1)
ignoreHitPause = 1

[State 1045, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time && sysvar(1) != 1035
var(39) = -1

[State 1045, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1035

[State 1045, Turn]
type = Turn
trigger1 = Time = 1 && PrevStateNo = 1045
trigger1 = Root, NumProjID(262144)
ignoreHitPause = 1
persistent = 0

[State 1045, ChangeState]
type = ChangeState
trigger1 = Time = 1 && PrevStateNo = 1045
trigger1 = Root, NumProjID(262144)
value = sysvar(1)
ignoreHitPause = 1

[State 1045, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 1045, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateNo = 1007
ignoreHitPause = 1

[State 1045, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1045, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1045, Change in Direction (Reflection)]
type = VelSet
triggerAll = !Time
trigger1 = Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262143) && !Enemy, NumExplod(262144)
trigger2 = Enemy, NumExplod(262143) && !Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262144)
trigger3 = vel y && Enemy, NumExplod(262144) && !Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262143)
y = ifElse(Enemy, NumExplod(262141) || Enemy, NumExplod(262144), -1, 1) * ifElse(Enemy, NumExplod(262144), vel y, 3.125)

[State 1045, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(Time < 2 && var(0) < 2, 1.11731843575, 6.70391061453)

[State 1045, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1045, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1045, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1045, Miss]
type = HitDef
trigger1 = 1
ID = sysvar(0)
affectTeam = F
attr = S, SP
hitFlag =
sparkXY = -10,0

[State 1045, HitDef]
type = HitDef
trigger1 = var(0) > 0
ID = sysvar(0)
affectTeam = F
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 10
guard.pauseTime = 0, 10
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
sprPriority = 3

[State 1045, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 1046, 1045)
ignoreHitPause = 1

[State 1045, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 1045, 1007)
ignoreHitPause = 1

[State 1045, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 1007
ignoreHitPause = 1

[State 1045, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1046]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 1046, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1046, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1046, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1046, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1046, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1046, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State 1046, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1046, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [1000, 1030]
var(18) = 1

[State 1046, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1046, EnvShake]
type = EnvShake
trigger1 = MoveHit && NumTarget
time = 14
ampl = 4
freq = 120
ignoreHitPause = 1

[State 1046, End]
type = ChangeState
trigger1 = Time >= 3 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 1007, 1045)



;====================<SHAKUNETSU HADOKEN PROJECTILE>=========================
[StateDef 1055]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3

[State 1055, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1055, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1065

[State 1055, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1057
ignoreHitPause = 1

[State 1055, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1055, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1055
value = 1055

[State 1055, Button Detect]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1055, Change in Direction (Reflection)]
type = VelSet
triggerAll = !Time && NumPartner
trigger1 = Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143) && !Partner, NumExplod(262144)
trigger2 = Partner, NumExplod(262143) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262144)
trigger3 = vel y && Partner, NumExplod(262144) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143)
y = ifElse(Partner, NumExplod(262141) || Partner, NumExplod(262144), -1, 1) * ifElse(Partner, NumExplod(262144), vel y, ifElse(var(10) = 2, 5.58659217877, ifElse(var(10) = 1, 4.46927374302, 3.35195530726)))

[State 1055, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(var(10) = 2, 5.58659217877, ifElse(var(10) = 1, 4.46927374302, 3.35195530726))

[State 1055, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1055, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1055, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time
var(39) = 1

[State 1055, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1055, Miss]
type = HitDef
trigger1 = 1
attr = S, SP
hitFlag =
sparkXY = -10,0

[State 1055, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(Time < 16, ifElse(var(10) = 2, 84, ifElse(var(10), 77, 70)), 70) < 7, 7, fvar(11) * ifElse(Time < 16, ifElse(var(10) = 2, 84, ifElse(var(10), 77, 70)), 70))), ifElse(Time < 16, ifElse(var(10) = 2, 12, ifElse(var(10), 11, 10)), 10)
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)) * !(Root, var(50)), 36 * !(Root, var(20)) * !(Root, var(50))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 5, 10)
guard.pauseTime = 0, ifElse((Root, var(20)), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -ifElse(Time < 16, 5.58659217877, 7.93322405606), -ifElse(Time < 16, 5.78125, 0)
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse(Time < 16, 1, 0)
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = ifElse(Time < 16, 36, 25)
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1055, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1056
ignoreHitPause = 1

[State 1055, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1057
ignoreHitPause = 1

[State 1055, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1055, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1056]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1056, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1056, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1056, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1056, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1056, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1056, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State 1056, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1056, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [1050, 1080]
var(18) = 1

[State 1056, Flame Particles]
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

[State 1056, Flame Particle Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := ifElse(Time < 16, 36, 25), 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1056, Turn]
type = Turn
trigger1 = MoveContact
trigger1 = Root, NumProjID(262144)
ignoreHitPause = 1
persistent = 0

[State 1056, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger1 = Root, NumProjID(262144)
value = sysvar(1)
ignoreHitPause = 1

[State 1056, EnvShake (Special)]
type = EnvShake
trigger1 = Time = 1 && PrevStateNo = 1065 && !MoveGuarded
time = 14
ampl = 4
freq = 120
ignoreHitPause = 1

[State 1056, Projectile Flag Increment (reflected projectile correction)]
type = ParentVarAdd
trigger1 = Time >= 1
trigger1 = PrevStateNo = 1065
var(39) = 1

[State 1056, End]
type = ChangeState
trigger1 = Time >= 0 && PrevStateNo != 1065
trigger2 = Time >= 1
value = 1057


;Disappear
[StateDef 1057]
type = A
physics = N
moveType = A
anim = 1057
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1057, Juggle Reset]
type = ParentVarSet
triggerAll = IsHelper(1085) && var(52)
trigger1 = MoveHit && !(Root, var(52)) && NumTarget(1085)
var(15) = 0

[State 1057, EX Shakunetsu Hadoken Juggle Flag]
type = ParentVarAdd
triggerAll = IsHelper(1085) && var(52)
trigger1 = MoveHit && NumTarget(1085)
var(52) = 1
persistent = 0

[State 1057, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 1057, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2, 6
channel = 2
volume = -128
lowPriority = 1

[State 1057, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1057, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008



;====================<SHAKUNETSU HADOKEN PROJECTILE (REFLECTED)>=========================
[StateDef 1065]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3

[State 1065, Turn]
type = Turn
trigger1 = !Time && PrevStateNo != 1065

[State 1065, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1065, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1055

[State 1065, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1057
ignoreHitPause = 1

[State 1065, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1065, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1055
value = 1055

[State 1065, Change in Direction (Reflection)]
type = VelSet
triggerAll = !Time
trigger1 = Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262143) && !Enemy, NumExplod(262144)
trigger2 = Enemy, NumExplod(262143) && !Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262144)
trigger3 = vel y && Enemy, NumExplod(262144) && !Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262143)
y = ifElse(Enemy, NumExplod(262141) || Enemy, NumExplod(262144), -1, 1) * ifElse(Enemy, NumExplod(262144), vel y, ifElse(var(10) = 2, 5.58659217877, ifElse(var(10) = 1, 4.46927374302, 3.35195530726)))

[State 1065, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(var(10) = 2, 5.58659217877, ifElse(var(10) = 1, 4.46927374302, 3.35195530726))

[State 1065, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1065, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1065, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time && PrevStateNo != 1065
var(39) = -1

[State 1065, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1065, Miss]
type = HitDef
trigger1 = 1
ID = sysvar(0)
affectTeam = F
attr = S, SP
hitFlag =
sparkXY = -10,0

[State 1065, HitDef]
type = HitDef
trigger1 = 1
ID = sysvar(0)
affectTeam = F
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10), 56, 49)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10), 56, 49)))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 5, 10)
guard.pauseTime = 0, ifElse((Root, var(20)), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -ifElse(Time < 16, 5.58659217877, 7.93322405606), -ifElse(Time < 16, 5.78125, 0)
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse(Time < 16, 1, 0)
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = ifElse(Time < 16, 36, 25)
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1065, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1056
ignoreHitPause = 1

[State 1065, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1057
ignoreHitPause = 1

[State 1065, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100



;====================<EX SHAKUNETSU HADOKEN PROJECTILE>=========================
[StateDef 1085]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 1085, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1085, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1095

[State 1085, Projectile Health]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(0) = 2

[State 1085, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 1085, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateNo = 1007
ignoreHitPause = 1

[State 1085, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1085, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1055
value = 1055

[State 1085, Change in Direction (Reflection)]
type = VelSet
triggerAll = !Time && NumPartner
trigger1 = Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143) && !Partner, NumExplod(262144)
trigger2 = Partner, NumExplod(262143) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262144)
trigger3 = vel y && Partner, NumExplod(262144) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143)
y = ifElse(Partner, NumExplod(262141) || Partner, NumExplod(262144), -1, 1) * ifElse(Partner, NumExplod(262144), vel y, 3.125)

[State 1085, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(Time < 2 && var(0) < 2, 1.11731843575, 6.70391061453)

[State 1085, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1085, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1085, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time && !PrevStateNo
var(39) = 1

[State 1085, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1085, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1085, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
trigger1 = var(0) > 0
ID = 1085
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(0) > 1, 56, 42) < 7, 7, fvar(11) * ifElse(var(0) > 1, 56, 42))), ifElse(var(0) > 1, 8, 7)
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 10
guard.pauseTime = 0, 10
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 36
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1085, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 1086, 1085)
ignoreHitPause = 1

[State 1085, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 1085, 1057)
ignoreHitPause = 1

[State 1085, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 1057
ignoreHitPause = 1

[State 1085, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1085, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1086]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 1086, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1086, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1086, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1086, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1086, EX Shakunetsu Hadoken Juggle Flag]
type = VarAdd
triggerAll = var(9)
trigger1 = MoveHit && NumTarget(1085)
var(52) = 1
persistent = 0

[State 1086, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1086, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State 1086, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1086, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [1050, 1080]
var(18) = 1

[State 1086, Flame Particles]
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

[State 1086, Flame Particle Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 36, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1086, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1086, End]
type = ChangeState
trigger1 = Time >= 3 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 1057, 1085)



;====================<EX SHAKUNETSU HADOKEN PROJECTILE (REFLECTED)>=========================
[StateDef 1095]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 1095, Turn]
type = Turn
trigger1 = !Time && PrevStateNo != [1095, 1096]

[State 1095, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1095, Projectile Health Fix]
type = VarAdd
trigger1 = !Time && sysvar(1) != 1085
trigger2 = Time = 1 && PrevStateNo = 1095
trigger2 = Root, NumProjID(262144)
var(0) = ifElse(Root, NumProjID(262144), 2, 1)
ignoreHitPause = 1

[State 1095, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time && sysvar(1) != 1085
var(39) = -1

[State 1095, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1085

[State 1095, Turn]
type = Turn
trigger1 = Time = 1 && PrevStateNo = 1095
trigger1 = Root, NumProjID(262144)
ignoreHitPause = 1
persistent = 0

[State 1095, ChangeState]
type = ChangeState
trigger1 = Time = 1 && PrevStateNo = 1095
trigger1 = Root, NumProjID(262144)
value = sysvar(1)
ignoreHitPause = 1

[State 1095, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 1095, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateNo = 1057
ignoreHitPause = 1

[State 1095, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1095, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1055
value = 1055

[State 1095, Change in Direction (Reflection)]
type = VelSet
triggerAll = !Time
trigger1 = Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262143) && !Enemy, NumExplod(262144)
trigger2 = Enemy, NumExplod(262143) && !Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262144)
trigger3 = vel y && Enemy, NumExplod(262144) && !Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262143)
y = ifElse(Enemy, NumExplod(262141) || Enemy, NumExplod(262144), -1, 1) * ifElse(Enemy, NumExplod(262144), vel y, 3.125)

[State 1095, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(Time < 2 && var(0) < 2, 1.11731843575, 6.70391061453)

[State 1095, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1095, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1095, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1095, Miss]
type = HitDef
trigger1 = 1
ID = sysvar(0)
affectTeam = F
attr = S, SP
hitFlag =
sparkXY = -10,0

[State 1095, HitDef]
type = HitDef
trigger1 = var(0) > 0
ID = sysvar(0)
affectTeam = F
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 10
guard.pauseTime = 0, 10
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 36
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1095, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 1096, 1095)
ignoreHitPause = 1

[State 1095, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 1095, 1057)
ignoreHitPause = 1

[State 1095, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 1057
ignoreHitPause = 1

[State 1095, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1096]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 1096, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1096, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1096, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1096, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1096, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1096, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State 1096, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1096, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [1050, 1080]
var(18) = 1

[State 1096, Flame Particles]
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

[State 1096, Flame Particle Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 36, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1096, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1096, EnvShake]
type = EnvShake
trigger1 = MoveHit && NumTarget
time = 14
ampl = 4
freq = 120
ignoreHitPause = 1

[State 1096, End]
type = ChangeState
trigger1 = Time >= 3 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 1057, 1095)



;====================<HADOKEN PROJECTILE (SHADOW)>=========================
[StateDef 1505]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3

[State 1505, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1505, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1505

[State 1505, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1507
ignoreHitPause = 1

[State 1505, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1505, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1505
value = 1505

[State 1505, Button Detect]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1505, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1505, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1505, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time
var(39) = 1

[State 1505, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1505, Miss]
type = HitDef
trigger1 = 1
attr = S, SP
hitFlag =
sparkXY = -10,0

[State 1505, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = IsHelper(1505)
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)) * !(Root, var(50)), 36 * !(Root, var(20)) * !(Root, var(50))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 5, 10)
guard.pauseTime = 0, ifElse((Root, var(20)), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1505, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1506
ignoreHitPause = 1

[State 1505, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1507
ignoreHitPause = 1

[State 1505, Fade Away]
type = ChangeState
trigger1 = Time = 5
value = 1508


;Hit Pause
[StateDef 1506]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1506, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1506, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1506, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1506, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1506, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1506, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State 1506, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1506, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [1500, 1530]
var(18) = 1

[State 1506, End]
type = ChangeState
trigger1 = Time >= 0
value = 1507


;Disappear
[StateDef 1507]
type = A
physics = N
moveType = A
anim = 1007
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1507, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 1507, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2, 6
channel = 2
volume = -128
lowPriority = 1

[State 1507, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1507, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008


;Fade Away
[StateDef 1508]
type = A
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 3

[State 1508, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 1508, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256 - (32 * Time), 256
ignoreHitPause = 1

[State 1508, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1 - (0.0625 * Time), 1 - (0.125 * Time)
ignoreHitPause = 1

[State 1508, VelSet]
type = VelSet
trigger1 = Time = 0 && (PrevStateNo = 1555 || PrevStateNo = 1565 || PrevStateNo = 1585 || PrevStateNo = 1595)
x = 4.46927374302

[State 1508, VelAdd]
type = VelAdd
trigger1 = Time > 0 && (PrevStateNo = 1555 || PrevStateNo = 1565 || PrevStateNo = 1585 || PrevStateNo = 1595)
x = -0.52374301676

[State 1508, End]
type = ChangeState
trigger1 = Time = 8
value = 1008



;====================<AIR HADOKEN PROJECTILE>=========================
[StateDef 1555]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3

[State 1555, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1555, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1565

[State 1555, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1507
ignoreHitPause = 1

[State 1555, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1555, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1555, Change in Direction (Reflection)]
type = VelSet
triggerAll = !Time && NumPartner
trigger1 = Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143) && !Partner, NumExplod(262144)
trigger2 = Partner, NumExplod(262143) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262144)
trigger3 = vel y && Partner, NumExplod(262144) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143)
y = ifElse(Partner, NumExplod(262141) || Partner, NumExplod(262144), -1, 1) * ifElse(Partner, NumExplod(262144), vel y, ifElse(var(10) = 2, 5.58659217877, ifElse(var(10) = 1, 4.46927374302, 3.35195530726)))

[State 1555, VelSet]
type = VelSet
trigger1 = 1
x = 4.46927374302

[State 1555, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1555, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1555, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time
var(39) = 1

[State 1555, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1555, Miss]
type = HitDef
trigger1 = 1
attr = S, SP
hitFlag =
sparkXY = -10,0

[State 1555, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)) * !(Root, var(50)), 36 * !(Root, var(20)) * !(Root, var(50))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 5, 10)
guard.pauseTime = 0, ifElse((Root, var(20)), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1555, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1556
ignoreHitPause = 1

[State 1555, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1557
ignoreHitPause = 1

[State 1505, Fade Away]
type = ChangeState
trigger1 = Time = 15
value = 1508

[State 1555, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1555, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1556]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1556, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1556, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1556, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1556, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1556, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1556, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State 1556, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1556, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [1550, 1580]
var(18) = 1

[State 1556, Turn]
type = Turn
trigger1 = MoveContact
trigger1 = Root, NumProjID(262144)
ignoreHitPause = 1
persistent = 0

[State 1556, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger1 = Root, NumProjID(262144)
value = sysvar(1)
ignoreHitPause = 1

[State 1556, EnvShake (Special)]
type = EnvShake
trigger1 = Time = 1 && PrevStateNo = 1565 && !MoveGuarded
time = 14
ampl = 4
freq = 120
ignoreHitPause = 1

[State 1556, Projectile Flag Increment (reflected projectile correction)]
type = ParentVarAdd
trigger1 = Time >= 1
trigger1 = PrevStateNo = 1565
var(39) = 1

[State 1556, End]
type = ChangeState
trigger1 = Time >= 0 && PrevStateNo != 1565
trigger2 = Time >= 1
value = 1557


;Disappear
[StateDef 1557]
type = A
physics = N
moveType = A
anim = 1007
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1557, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 1557, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2, 6
channel = 2
volume = -128
lowPriority = 1

[State 1557, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1557, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008



;====================<HADOKEN PROJECTILE (REFLECTED)>=========================
[StateDef 1565]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3

[State 1565, Turn]
type = Turn
trigger1 = !Time && PrevStateNo != 1565

[State 1565, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1565, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1555

[State 1565, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1557
ignoreHitPause = 1

[State 1565, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1565, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1565, Change in Direction (Reflection)]
type = VelSet
triggerAll = !Time
trigger1 = Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262143) && !Enemy, NumExplod(262144)
trigger2 = Enemy, NumExplod(262143) && !Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262144)
trigger3 = vel y && Enemy, NumExplod(262144) && !Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262143)
y = ifElse(Enemy, NumExplod(262141) || Enemy, NumExplod(262144), -1, 1) * ifElse(Enemy, NumExplod(262144), vel y, ifElse(var(10) = 2, 5.58659217877, ifElse(var(10) = 1, 4.46927374302, 3.35195530726)))

[State 1565, VelSet]
type = VelSet
trigger1 = 1
x = 4.46927374302

[State 1565, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1565, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1565, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time && PrevStateNo != 1565
var(39) = -1

[State 1565, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1565, Miss]
type = HitDef
trigger1 = 1
ID = sysvar(0)
affectTeam = F
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1565, HitDef]
type = HitDef
trigger1 = 1
ID = sysvar(0)
affectTeam = F
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 5, 10)
guard.pauseTime = 0, ifElse((Root, var(20)), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
sprPriority = 3

[State 1565, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1556
ignoreHitPause = 1

[State 1565, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1557
ignoreHitPause = 1

[State 1565, Fade Away]
type = ChangeState
trigger1 = Time = 15
value = 1508

[State 1565, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100



;====================<EX AIR HADOKEN PROJECTILE>=========================
[StateDef 1585]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 1585, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1585, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1595

[State 1585, Projectile Health]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(0) = 2

[State 1585, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 1585, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateNo = 1007
ignoreHitPause = 1

[State 1585, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1585, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1585, Change in Direction (Reflection)]
type = VelSet
triggerAll = !Time && NumPartner
trigger1 = Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143) && !Partner, NumExplod(262144)
trigger2 = Partner, NumExplod(262143) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262144)
trigger3 = vel y && Partner, NumExplod(262144) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143)
y = ifElse(Partner, NumExplod(262141) || Partner, NumExplod(262144), -1, 1) * ifElse(Partner, NumExplod(262144), vel y, 3.125)

[State 1585, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(Time < 2 && var(0) < 2, 1.11731843575, 6.70391061453)

[State 1585, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1585, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1585, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time && !PrevStateNo
var(39) = 1

[State 1585, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1585, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1585, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
trigger1 = var(0) > 0
ID = 1585
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 10
guard.pauseTime = 0, 10
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -ifElse(var(0) > 1, 7.93322405606, 5.58659217877), -ifElse(var(0) > 1, 0, 5.78125)
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse(var(0) > 1, 0, 1)
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1585, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 1586, 1585)
ignoreHitPause = 1

[State 1585, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 1585, 1007)
ignoreHitPause = 1

[State 1585, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 1007
ignoreHitPause = 1

[State 1585, Fade Away]
type = ChangeState
trigger1 = Time = 24
value = 1508

[State 1585, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1586]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 1586, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1586, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1586, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1586, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1586, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1586, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State 1586, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1586, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = 1580
var(18) = 1

[State 1586, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1586, End]
type = ChangeState
trigger1 = Time >= 3 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 1007, 1585)



;====================<EX AIR HADOKEN PROJECTILE (REFLECTED)>=========================
[StateDef 1595]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 1045, Turn]
type = Turn
trigger1 = !Time && PrevStateNo != [1595, 1596]

[State 1595, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1595, Projectile Health Fix]
type = VarAdd
trigger1 = !Time && sysvar(1) != 1585
trigger2 = Time = 1 && PrevStateNo = 1595
trigger2 = Root, NumProjID(262144)
var(0) = ifElse(Root, NumProjID(262144), 2, 1)
ignoreHitPause = 1

[State 1595, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time && sysvar(1) != 1585
var(39) = -1

[State 1595, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1585

[State 1595, Turn]
type = Turn
trigger1 = Time = 1 && PrevStateNo = 1595
trigger1 = Root, NumProjID(262144)
ignoreHitPause = 1
persistent = 0

[State 1595, ChangeState]
type = ChangeState
trigger1 = Time = 1 && PrevStateNo = 1595
trigger1 = Root, NumProjID(262144)
value = sysvar(1)
ignoreHitPause = 1

[State 1595, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 1595, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateNo = 1007
ignoreHitPause = 1

[State 1595, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1595, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1595, Change in Direction (Reflection)]
type = VelSet
triggerAll = !Time
trigger1 = Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262143) && !Enemy, NumExplod(262144)
trigger2 = Enemy, NumExplod(262143) && !Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262144)
trigger3 = vel y && Enemy, NumExplod(262144) && !Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262143)
y = ifElse(Enemy, NumExplod(262141) || Enemy, NumExplod(262144), -1, 1) * ifElse(Enemy, NumExplod(262144), vel y, 3.125)

[State 1595, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(Time < 2 && var(0) < 2, 1.11731843575, 6.70391061453)

[State 1595, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1595, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1595, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1595, Miss]
type = HitDef
trigger1 = 1
ID = sysvar(0)
affectTeam = F
attr = S, SP
hitFlag =
sparkXY = -10,0

[State 1595, HitDef]
type = HitDef
trigger1 = var(0) > 0
ID = sysvar(0)
affectTeam = F
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 10
guard.pauseTime = 0, 10
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -ifElse(var(0) > 1, 7.93322405606, 5.58659217877), -ifElse(var(0) > 1, 0, 5.78125)
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse(var(0) > 1, 0, 1)
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
sprPriority = 3

[State 1595, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 1596, 1595)
ignoreHitPause = 1

[State 1595, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 1595, 1007)
ignoreHitPause = 1

[State 1595, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 1007
ignoreHitPause = 1

[State 1595, Fade Away]
type = ChangeState
trigger1 = Time = 24
value = 1508

[State 1595, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1596]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 1596, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1596, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1596, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1596, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1596, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1596, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State 1596, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1596, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = 1580
var(18) = 1

[State 1596, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1596, EnvShake]
type = EnvShake
trigger1 = MoveHit && NumTarget
time = 14
ampl = 4
freq = 120
ignoreHitPause = 1

[State 1596, End]
type = ChangeState
trigger1 = Time >= 3 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 1007, 1595)



;====================<SEKIA GOSHOHA PROJECTILE>=========================
[StateDef 1605]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 1605, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1605, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1615

[State 3105, Sekia Goshoha Strength]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1605, Projectile Health]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(0) = var(10) +  1

[State 1605, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 1605, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateNo = 1607
ignoreHitPause = 1

[State 1605, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1605, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1055
value = 1055

[State 1605, Change in Direction (Reflection)]
type = VelSet
triggerAll = !Time && NumPartner
trigger1 = Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143) && !Partner, NumExplod(262144)
trigger2 = Partner, NumExplod(262143) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262144)
trigger3 = vel y && Partner, NumExplod(262144) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143)
y = ifElse(Partner, NumExplod(262141) || Partner, NumExplod(262144), -1, 1) * ifElse(Partner, NumExplod(262144), vel y, 3.125)

[State 1605, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(Time < 2 && var(0) < (var(10) + 1), 1.11731843575, ifElse(var(10) = 2, 5.58659217877, ifElse(var(10) = 1, 4.46927374302, 3.35195530726)))

[State 1605, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1605, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1605, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time && !PrevStateNo
var(39) = 1

[State 1605, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1605, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1605, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount) || Root, var(20))
trigger1 = var(0) > 0
ID = 1605
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 28, ifElse(var(10) = 1, 35, 63)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 28, ifElse(var(10) = 1, 35, 63)))), ifElse(var(10) = 2, 7, ifElse(var(10) = 1, 7, 9))
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)) * !(Root, var(50)), 36 * !(Root, var(20)) * !(Root, var(50))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 5, 10)
guard.pauseTime = 0, ifElse((Root, var(20)), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -ifElse(var(0) > 1, 7.93322405606, 4.46927374302), -ifElse(var(0) > 1, 0, 6.5625)
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse(var(0) > 1, 0, 1)
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 39
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1605, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 1606, 1605)
ignoreHitPause = 1

[State 1605, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 1605, 1607)
ignoreHitPause = 1

[State 1605, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 1607
ignoreHitPause = 1

[State 1605, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1605, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1606]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 1606, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1606, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1606, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1606, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1606, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1606, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State 1606, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1606, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [1600, 1630]
var(18) = 1

[State 1606, Flame Particles]
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

[State 1606, Flame Particle Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 39, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1606, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1606, End]
type = ChangeState
trigger1 = Time >= 3 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 1607, 1605)


;Disappear
[StateDef 1607]
type = A
physics = N
moveType = A
anim = 1057
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1607, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 1607, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2, 6
channel = 2
volume = -128
lowPriority = 1

[State 1607, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1607, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008



;====================<SEKIA GOSHOHA PROJECTILE (REFLECTED)>=========================
[StateDef 1615]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 1615, Turn]
type = Turn
trigger1 = !Time && PrevStateNo != [1615, 1616]

[State 1615, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1615, Projectile Health Fix]
type = VarAdd
trigger1 = !Time && sysvar(1) != 1605
trigger2 = Time = 1 && PrevStateNo = 1615
trigger2 = Root, NumProjID(262144)
var(0) = ifElse(Root, NumProjID(262144), 2, 1)
ignoreHitPause = 1

[State 1615, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time && sysvar(1) != 1605
var(39) = -1

[State 1615, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1605

[State 1615, Turn]
type = Turn
trigger1 = Time = 1 && PrevStateNo = 1615
trigger1 = Root, NumProjID(262144)
ignoreHitPause = 1
persistent = 0

[State 1615, ChangeState]
type = ChangeState
trigger1 = Time = 1 && PrevStateNo = 1615
trigger1 = Root, NumProjID(262144)
value = sysvar(1)
ignoreHitPause = 1

[State 1615, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 1615, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateNo = 1607
ignoreHitPause = 1

[State 1615, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1615, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1055
value = 1055

[State 1615, Change in Direction (Reflection)]
type = VelSet
triggerAll = !Time
trigger1 = Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262143) && !Enemy, NumExplod(262144)
trigger2 = Enemy, NumExplod(262143) && !Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262144)
trigger3 = vel y && Enemy, NumExplod(262144) && !Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262143)
y = ifElse(Enemy, NumExplod(262141) || Enemy, NumExplod(262144), -1, 1) * ifElse(Enemy, NumExplod(262144), vel y, 3.125)

[State 1615, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(Time < 2 && var(0) < (var(10) + 1), 1.11731843575, ifElse(var(10) = 2, 5.58659217877, ifElse(var(10) = 1, 4.46927374302, 3.35195530726)))

[State 1615, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1615, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1615, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1615, Miss]
type = HitDef
trigger1 = 1
ID = sysvar(0)
affectTeam = F
attr = S, SP
hitFlag =
sparkXY = -10,0

[State 1615, HitDef]
type = HitDef
trigger1 = var(0) > 0
ID = sysvar(0)
affectTeam = F
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 28, ifElse(var(10) = 1, 35, 63)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 28, ifElse(var(10) = 1, 35, 63)))), ifElse(var(10) = 2, 7, ifElse(var(10) = 1, 7, 9))
getPower = 0,0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 5, 10)
guard.pauseTime = 0, ifElse((Root, var(20)), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -ifElse(var(0) > 1, 7.93322405606, 4.46927374302), -ifElse(var(0) > 1, 0, 6.5625)
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
fall = ifElse(var(0) > 1, 0, 1)
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 39
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1615, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 1616, 1615)
ignoreHitPause = 1

[State 1615, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 1615, 1607)
ignoreHitPause = 1

[State 1615, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 1607
ignoreHitPause = 1

[State 1615, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1616]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 1616, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1616, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1616, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1616, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1616, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1616, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State 1616, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1616, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [1600, 1630]
var(18) = 1

[State 1616, Flame Particles]
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

[State 1616, Flame Particle Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 39, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1616, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1616, EnvShake]
type = EnvShake
trigger1 = MoveHit && NumTarget
time = 14
ampl = 4
freq = 120
ignoreHitPause = 1

[State 1616, End]
type = ChangeState
trigger1 = Time >= 3 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 1607, 1615)



;====================<EX SEKIA GOSHOHA PROJECTILE>=========================
[StateDef 1635]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 1635, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1635, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1645

[State 1635, Projectile Health]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(0) = 4

[State 1635, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 1635, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateNo = 1607
ignoreHitPause = 1

[State 1635, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1635, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1055
value = 1055

[State 1635, Change in Direction (Reflection)]
type = VelSet
triggerAll = !Time && NumPartner
trigger1 = Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143) && !Partner, NumExplod(262144)
trigger2 = Partner, NumExplod(262143) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262144)
trigger3 = vel y && Partner, NumExplod(262144) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143)
y = ifElse(Partner, NumExplod(262141) || Partner, NumExplod(262144), -1, 1) * ifElse(Partner, NumExplod(262144), vel y, 3.125)

[State 1635, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(Time < 2 && var(0) < 5, 1.11731843575, 5.58659217877)

[State 1635, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1635, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1635, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time && !PrevStateNo
var(39) = 1

[State 1635, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1635, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1635, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
trigger1 = var(0) > 0
ID = 1635
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 10
guard.pauseTime = 0, 10
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -ifElse(var(0) > 1, 7.93322405606, 4.46927374302), -ifElse(var(0) > 1, 0, 6.5625)
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse(var(0) > 1, 0, 1)
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 39
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1635, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 1636, 1635)
ignoreHitPause = 1

[State 1635, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 1635, 1607)
ignoreHitPause = 1

[State 1635, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 1607
ignoreHitPause = 1

[State 1635, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1635, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1636]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 1636, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1636, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1636, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1636, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1636, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1636, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State 1636, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1636, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [1600, 1630]
var(18) = 1

[State 1636, Flame Particles]
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

[State 1636, Flame Particle Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 39, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1636, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1636, End]
type = ChangeState
trigger1 = Time >= 3 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 1607, 1635)



;====================<EX SEKIA GOSHOHA PROJECTILE (REFLECTED)>=========================
[StateDef 1645]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 1645, Turn]
type = Turn
trigger1 = !Time && PrevStateNo != [1645, 1646]

[State 1645, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1645, Projectile Health Fix]
type = VarAdd
trigger1 = !Time && sysvar(1) != 1635
trigger2 = Time = 1 && PrevStateNo = 1645
trigger2 = Root, NumProjID(262144)
var(0) = ifElse(Root, NumProjID(262144), 2, 1)
ignoreHitPause = 1

[State 1645, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time && sysvar(1) != 1635
var(39) = -1

[State 1645, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1635

[State 1645, Turn]
type = Turn
trigger1 = Time = 1 && PrevStateNo = 1645
trigger1 = Root, NumProjID(262144)
ignoreHitPause = 1
persistent = 0

[State 1645, ChangeState]
type = ChangeState
trigger1 = Time = 1 && PrevStateNo = 1645
trigger1 = Root, NumProjID(262144)
value = sysvar(1)
ignoreHitPause = 1

[State 1645, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 1645, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateNo = 1607
ignoreHitPause = 1

[State 1645, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1645, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1055
value = 1055

[State 1645, Change in Direction (Reflection)]
type = VelSet
triggerAll = !Time
trigger1 = Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262143) && !Enemy, NumExplod(262144)
trigger2 = Enemy, NumExplod(262143) && !Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262144)
trigger3 = vel y && Enemy, NumExplod(262144) && !Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262143)
y = ifElse(Enemy, NumExplod(262141) || Enemy, NumExplod(262144), -1, 1) * ifElse(Enemy, NumExplod(262144), vel y, 3.125)

[State 1645, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(Time < 2 && var(0) < 2, 1.11731843575, 5.58659217877)

[State 1645, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1645, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1645, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1645, Miss]
type = HitDef
trigger1 = 1
ID = sysvar(0)
affectTeam = F
attr = S, SP
hitFlag =
sparkXY = -10,0

[State 1645, HitDef]
type = HitDef
trigger1 = var(0) > 0
ID = sysvar(0)
affectTeam = F
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 10
guard.pauseTime = 0, 10
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -ifElse(var(0) > 1, 7.93322405606, 4.46927374302), -ifElse(var(0) > 1, 0, 6.5625)
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse(var(0) > 1, 0, 1)
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 39
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1645, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 1646, 1645)
ignoreHitPause = 1

[State 1645, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 1645, 1607)
ignoreHitPause = 1

[State 1645, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 1607
ignoreHitPause = 1

[State 1645, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1646]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 1646, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1646, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1646, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1646, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1646, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1646, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State 1646, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1646, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [1600, 1630]
var(18) = 1

[State 1646, Flame Particles]
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

[State 1646, Flame Particle Timer Set]
type = Null
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 39, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1646, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1646, EnvShake]
type = EnvShake
trigger1 = MoveHit && NumTarget
time = 14
ampl = 4
freq = 120
ignoreHitPause = 1

[State 1646, End]
type = ChangeState
trigger1 = Time >= 3 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 1607, 1645)



;====================<SHINKU HADOKEN PROJECTILE>=========================
[StateDef 3005]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 3005, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 3005, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 3005

[State 3005, Projectile Health]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(0) = ifElse(IsHelper(3055), 5, 3)

[State 3005, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 3005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateNo = ifElse(var(0) > 0, 3005, 3007)
ignoreHitPause = 1

[State 3005, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 3005, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3005
value = 3005

[State 3005, Change in Direction (Reflection)]
type = VelSet
triggerAll = !Time && NumPartner
trigger1 = Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143) && !Partner, NumExplod(262144)
trigger2 = Partner, NumExplod(262143) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262144)
trigger3 = vel y && Partner, NumExplod(262144) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143)
y = ifElse(Partner, NumExplod(262141) || Partner, NumExplod(262144), -1, 1) * ifElse(Partner, NumExplod(262144), vel y, 3.125)

[State 3005, VelSet]
type = VelSet
trigger1 = IsHelper(3005)
x = ifElse(Time < 2 && var(0) < 3, 1.11731843575, 5.58659217877)

[State 3005, VelSet]
type = VelSet
trigger1 = IsHelper(3055)
x = ifElse(Time < 2 && var(0) < 5, 1.11731843575, 5.58659217877)

[State 3005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3005, Super Cancel Flag]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(21) = Root, var(21)

[State 3005, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(22) = Root, var(22)

[State 3005, Base Dampener]
type = VarSet
trigger1 = 1
fvar(10) = ifElse(var(22), 0.6, ifElse(var(21), 0.8, 1.0))

[State 3005, Base Dampener (Juggle Reset)]
type = VarSet
trigger1 = (Root, var(51)) || (Root, var(52)) || (Root, var(53)) || (Root, var(54)) || (Root, var(55))
fvar(10) = ifElse(var(22), 0.5, ifElse(var(21), 0.6, 0.8))

[State 3005, Base Dampener (Stun)]
type = VarSet
trigger1 = (Root, var(57))
fvar(10) = ifElse(var(22), 0.3, ifElse(var(21), 0.4, 0.5))
ignoreHitPause = 1

[State 3005, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3005, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time && !PrevStateNo
var(39) = 1

[State 3005, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3005, Miss]
type = HitDef
trigger1 = 1
attr = S, HP
hitFlag =
sparkXY = -10, 0

[State 3005, HitDef: Shinku Hadoken]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
trigger1 = var(0) > 0 && IsHelper(3005)
attr = S, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(0) = 3, 56, 42) < 7, 7, fvar(11) * ifElse(var(0) = 3, 56, 42))), ifElse(var(0) = 3, 8, 7)
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 10
guard.pauseTime = 0, 10
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = ifElse(var(0) > 1, -7.93322405606, -4.46927374302), ifElse(var(0) > 1, 0, -6.5625)
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse(var(0) > 1, 0, 1)
air.fall = 1
fall.recover = 0
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
sprPriority = 3

[State 3005, HitDef: MAX Shinku Hadoken]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
trigger1 = var(0) > 0 && IsHelper(3055)
attr = S, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * (ifElse(var(0) = 5, 70, ifElse(var(0) = 4, 42, ifElse((var(0) = [2, 3]), 35, 28)))) < 7, 7, fvar(11) * (ifElse(var(0) = 5, 70, ifElse(var(0) = 4, 42, ifElse((var(0) = [2, 3]), 35, 28)))))), (ifElse(var(0) = 5, 10, ifElse(var(0) = 4, 7, ifElse((var(0) = [2, 3]), 7, 7))))
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 10
guard.pauseTime = 0, 10
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = ifElse(var(0) > 1, -7.93322405606, -4.46927374302), ifElse(var(0) > 1, 0, -6.5625)
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse(var(0) > 1, 0, 1)
air.fall = 1
fall.recover = 0
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
sprPriority = 3

[State 3005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 3006, 3005)
ignoreHitPause = 1

[State 3005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 3005, 3007)
ignoreHitPause = 1

[State 3005, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 3007
ignoreHitPause = 1

[State 3005, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 3005, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 3006]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 3006, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 3006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State 3006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 3006, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [3000, 3050]
var(18) = 1

[State 3006, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3006, End]
type = ChangeState
trigger1 = Time >= 3 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 3007, 3005)


;Disappear
[StateDef 3007]
type = A
physics = N
moveType = A
anim = 3007
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 3007, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 3007, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2, 6
channel = 2
volume = -128
lowPriority = 1

[State 3007, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 3007, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008



;====================<RAKUYO HADOKEN PROJECTILE>=========================
[StateDef 3025]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 3025, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 3025, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 3025

[State 3025, Projectile Health]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(0) = ifElse(IsHelper(3075), 3, 1)

[State 3025, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 3025, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateNo = ifElse(var(0) > 0, 3025, 3027)
ignoreHitPause = 1

[State 3025, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 3025, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3025
value = 3025

[State 3025, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3025, Super Cancel Flag]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(21) = Root, var(21)

[State 3025, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(22) = Root, var(22)

[State 3025, Base Dampener]
type = VarSet
trigger1 = 1
fvar(10) = ifElse(var(22), 0.6, ifElse(var(21), 0.8, 1.0))

[State 3025, Base Dampener (Juggle Reset)]
type = VarSet
trigger1 = (Root, var(51)) || (Root, var(52)) || (Root, var(53)) || (Root, var(54)) || (Root, var(55))
fvar(10) = ifElse(var(22), 0.5, ifElse(var(21), 0.6, 0.8))

[State 3025, Base Dampener (Stun)]
type = VarSet
trigger1 = (Root, var(57))
fvar(10) = ifElse(var(22), 0.3, ifElse(var(21), 0.4, 0.5))
ignoreHitPause = 1

[State 3025, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3025, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time && !PrevStateNo
var(39) = 1

[State 3025, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3025, Miss]
type = HitDef
trigger1 = 1
attr = S, HP
hitFlag =
sparkXY = -10, 0

[State 3025, HitDef: Rakuyo Hadoken]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
trigger1 = var(0) > 0 && IsHelper(3025)
ID = 3025
attr = S, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 10
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 10
guard.pauseTime = 0, 10
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -ifElse(Root, var(56), 5.58659217877, 4.40734669781), ifElse(Root, var(56), -5.78125, 0)
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse(Root, var(56), 1, 0)
air.fall = 1
fall.recover = 0
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
sprPriority = 3

[State 3025, HitDef: MAX Rakuyo Hadoken]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
trigger1 = var(0) > 0 && IsHelper(3075)
ID = 3025
attr = S, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(0) > 1, 35, 56) < 7, 7, fvar(11) * ifElse(var(0) > 1, 35, 56))), ifElse(var(0) > 1, 7, 8)
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 10
guard.pauseTime = 0, 10
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -ifElse(Root, var(56), 5.58659217877, 4.40734669781), ifElse(Root, var(56), -5.78125, 0)
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse(Root, var(56), 1, 0)
air.fall = 1
fall.recover = 0
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
sprPriority = 3

[State 3025, TargetDrop]
type = TargetDrop
triggerAll = !(Root, var(56))
trigger1 = NumTarget(3025) > 1
ID = 3025
keepOne = 1
excludeID = 3025
ignoreHitPause = 1

[State 3025, TargetState]
type = TargetState
triggerAll = !(Root, var(56))
trigger1 = MoveHit && NumTarget(3025)
trigger1 = !(Target(3025), Time) && !(Target(3025), StateType = A) && var(0) <= 1
value = 5450
ID = 3025
ignoreHitPause = 1
persistent = 0

[State 3025, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 3026, 3025)
ignoreHitPause = 1

[State 3005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 3025, 3027)
ignoreHitPause = 1

[State 3025, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 3027
ignoreHitPause = 1

[State 1505, Fade Away]
type = ChangeState
trigger1 = Time = ifElse(IsHelper(3075), 20, 16)
value = 1508


;Hit Pause
[StateDef 3026]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 3026, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3026, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 3026, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3026, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3026, Rakuyo Hadoken Crumple Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(3025)
var(56) = 1
persistent = 0

[State 3026, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3026, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State 3026, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 3026, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [3000, 3050]
var(18) = 1

[State 3026, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3026, End]
type = ChangeState
trigger1 = Time >= 3 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 3027, 3025)


;Disappear
[StateDef 3027]
type = A
physics = N
moveType = A
anim = 3007
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 3027, Rakuyo Hadoken Crumple Flag]
type = ParentVarAdd
triggerAll = var(56)
trigger1 = MoveHit && NumTarget(3025)
var(56) = 1
persistent = 0

[State 3027, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 3027, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2, 6
channel = 2
volume = -128
lowPriority = 1

[State 3027, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 3027, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008



;======================<DENJIN HADOKEN ENERGY>===========================
[Statedef 3103]
type = A
physics = N
moveType = A
ctrl = 0
anim = 1
sprPriority = 5

[State 3103, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 3103

[State 3103, BindToParent]
type = BindToParent
trigger1 = 1
pos = 0, -72
ignoreHitPause = 1

[State 3103, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.125 * root, var(10) , 0.125 * root, var(10) 

[State 3103, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3103, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 3103, DestroySelf]
type = DestroySelf
trigger1 = Root, StateNo != 3100 && Root, StateNo != 3150
trigger2 = Root, AnimElem = 55



;====================<DENJIN HADOKEN PROJECTILE>=========================
[StateDef 3105]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 3105, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 3105, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 3105

[State 3105, Denjin Level]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(10) = Root, var(10)

[State 3105, Projectile Health]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(0) = var(10)

[State 3105, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 3105, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateNo = ifElse(var(0) > 0, 3105, 3107)
ignoreHitPause = 1

[State 3105, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 3105, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3105
value = 3105

[State 3105, Change in Direction (Reflection)]
type = VelSet
triggerAll = !Time && NumPartner
trigger1 = Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143) && !Partner, NumExplod(262144)
trigger2 = Partner, NumExplod(262143) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262144)
trigger3 = vel y && Partner, NumExplod(262144) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143)
y = ifElse(Partner, NumExplod(262141) || Partner, NumExplod(262144), -1, 1) * ifElse(Partner, NumExplod(262144), vel y, 3.125)

[State 3105, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(Time < 2 && var(0) < var(10), 1.11731843575, ifElse(IsHelper(3155), 11.1731843575, 8.93854748603))

[State 3105, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3105, Super Cancel Flag]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(21) = Root, var(21)

[State 3105, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(22) = Root, var(22)

[State 3105, Base Dampener]
type = VarSet
trigger1 = 1
fvar(10) = ifElse(var(22), 0.6, ifElse(var(21), 0.8, 1.0))

[State 3105, Base Dampener (Juggle Reset)]
type = VarSet
trigger1 = (Root, var(51)) || (Root, var(52)) || (Root, var(53)) || (Root, var(54)) || (Root, var(55))
fvar(10) = ifElse(var(22), 0.5, ifElse(var(21), 0.6, 0.8))

[State 3105, Base Dampener (Stun)]
type = VarSet
trigger1 = (Root, var(57))
fvar(10) = ifElse(var(22), 0.3, ifElse(var(21), 0.4, 0.5))
ignoreHitPause = 1

[State 3105, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3105, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time && !PrevStateNo
var(39) = 1

[State 3105, Electric Particles]
type = Explod
trigger1 = Time % 4
vel = -0.5 - (Random / 1000.0), 0
accel = 0, 0.075
anim = 8155
sprPriority = 3
posType = P1
pos = -25, 0
random = 70, 30
facing = -1 + (Random < 500) * 2
vFacing = -1 + (Random < 500) * 2
scale = 0.25, 0.25
ownPal = 1
ignoreHitPause = 1

[State 3105, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3105, Miss]
type = HitDef
trigger1 = 1
attr = S, HP
hitFlag =
sparkXY = -10, 0

[State 3105, HitDef: Denjin Hadoken]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
trigger1 = var(0) > 0
ID = 3105
attr = S, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(0) = var(10), ifElse(IsHelper(3155), 105, 70), 35) < 7, 7, fvar(11) * ifElse(var(0) = var(10), ifElse(IsHelper(3155), 105, 70), 35))), ifElse(var(0) = var(10), ifElse(IsHelper(3155), 15, 10), 7)
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 10
guard.pauseTime = 0, 10
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = ifElse(var(0) > 1, -7.93322405606, -4.46927374302), ifElse(var(0) > 1, 0, -6.5625)
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse(var(0) > 1, 0, 1)
air.fall = 1
fall.recover = 0
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 0, 39)
palFX.mul = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192)
palFX.sinAdd = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 48, 4)
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
sprPriority = 3

[State 3105, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3105) > 1
ID = 3105
keepOne = 1
excludeID = 3105
ignoreHitPause = 1

[State 3105, Guard Crush]
type = TargetState
triggerAll = var(0) = 1
trigger1 = MoveGuarded && NumTarget(3105)
value = 5905
ID = 3105
ignoreHitPause = 1
persistent = 0

[State 3105, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3105)
value = 9010
ID = 3105
ignoreHitPause = 1
persistent = 0

[State 3105, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 3106, 3105)
ignoreHitPause = 1

[State 3105, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 3105, 3107)
ignoreHitPause = 1

[State 3105, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 3107
ignoreHitPause = 1

[State 3105, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 3105, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 3106]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 3106, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3106, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, ifElse(var(0) = 1, 1, 0), 8)
channel = 2
ignorehitPause = 1

[State 3106, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, ifElse(var(0) = 1, 8006, 8001), 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3106, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3106, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3106, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State 3106, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 3106, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [3100, 3150]
var(18) = 1

[State 3106, Shock Particles]
type = Helper
trigger1 = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
trigger1 = !NumHelper(8155)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(45) := (Target, ID)
helperType = Normal
stateNo = 8155
ID = 8155
name = "Shock Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3106, Shock Particle Timer Set]
type = Null
trigger1 = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8155)
trigger1 = Cond(NumHelper(8155), Helper(8155), Cond(1, var(46) := 39, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3106, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3106, End]
type = ChangeState
trigger1 = Time >= 3 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 3107, 3105)


;Disappear
[StateDef 3107]
type = A
physics = N
moveType = A
anim = 3107
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 3107, Electric Particles]
type = Explod
trigger1 = Time % 4 && AnimElemTime(10) < 0
vel = -0.5 - (Random / 1000.0), 0
accel = 0, 0.075
anim = 8155
sprPriority = 3
posType = P1
pos = 0, 0
random = 70, 30
facing = -1 + (Random < 500) * 2
vFacing = -1 + (Random < 500) * 2
scale = 0.25, 0.25
ownPal = 1
ignoreHitPause = 1

[State 3107, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 3107, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2, 6
channel = 2
volume = -128
lowPriority = 1

[State 3107, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 3107, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008



;======================<SHINKU TATSUMAKI SENPUKYAKU DUST>===========================
[Statedef 3205]
type = A
physics = N
moveType = A
ctrl = 0
anim = 1
sprPriority = 5

[State 3205, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 3205

[State 3205, ChangeAnim]
type = ChangeAnim
triggerAll = Anim = 3205 && !AnimTime
trigger1 = (Root, StateNo = 1230) && (Root, AnimElemTime(19) >= 0)
trigger2 = (Root, StateNo = 3200) && (Root, AnimElemTime(28) >= 0)
trigger3 = (Root, StateNo = 3250) && (Root, AnimElemTime(46) >= 0)
value = 3206

[State 3205, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3205, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 3205, DestroySelf]
type = DestroySelf
trigger1 = Anim = 3205 && (Root, StateNo != 1230) && (Root, StateNo != [3200, 3299])
trigger2 = Anim = 3206 && !AnimTime



;========================<SHIN SHORYUKEN ANCHOR>=============================
[StateDef 13300]
physics = N
velSet = 0,0
anim = 1
sprPriority = -1

[State 13300, HitBy]
type = HitBy
trigger1 = 1
value =
time = 1
ignoreHitPause = 1

[State 13300, DestroySelf]
type = DestroySelf
trigger1 = (Root, StateNo != [3300, 3399])
trigger2 = ((Root, StateNo = 3300) || (Root, StateNo = 3310)) && Root, AnimElemTime(5) >= 1



;========================<DARKEN>=============================
[StateDef 13340]
type = S
velSet = 0, 0
anim = 1

[State 13340, AllPalFX: Fade to Black]
type = BGPalFX
trigger1 = (Root, StateNo = 3300) && (Root, HitPauseTime) > 52
time = 1
add = 0 - 32 * (60 - (Root, HitPauseTime)), 0 - 32 * (60 - (Root, HitPauseTime)), 0 - 32 * (60 - (Root, HitPauseTime))

[State 13340, BGPalFX]
type = BGPalFX
trigger1 = (Root, StateNo = 3300) && (Root, HitPauseTime) <= 52
trigger2 = (Root, StateNo = 3340) && !(Root, NumTarget(3340)) && !(Root, NumTarget(3341))
time = 1
add = -256, -256, -256

[State 13341, EnvColor]
type = EnvColor
trigger1 = (Root, StateNo = 3340) && (Root, NumTarget(3340)) && (Root, HitPauseTime)
time = 1
value = 0 + 64 * (4 - (Root, HitPauseTime)), 0, 0
under = 1

[State 13341, EnvColor]
type = EnvColor
trigger1 = (Root, StateNo = 3340) && (Root, NumTarget(3340)) && !(Root, HitPauseTime)
trigger2 = (Root, StateNo = 3340) && (Root, NumTarget(3341))
time = 1
value = 255, 0, 0
under = 1

[State 13341, End]
type = ChangeState
trigger1 = (Root, StateNo = 3340) && (Root, AnimElem = 8)
value = 3614



;====================<METSU HADOKEN PROJECTILE>=========================
[StateDef 3505]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 3505, Projectile Reflection Compatibility Detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 3505, Set Reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 3505

[State 3505, Metsu Level]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(10) = Root, var(10)

[State 3505, Projectile Health]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(0) = var(10)

[State 3505, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 3505, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateNo = ifElse(var(0) > 0, 3505, 3507)
ignoreHitPause = 1

[State 3505, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 3505, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3505
value = 3505

[State 3505, Change in Direction (Reflection)]
type = VelSet
triggerAll = !Time && NumPartner
trigger1 = Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143) && !Partner, NumExplod(262144)
trigger2 = Partner, NumExplod(262143) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262144)
trigger3 = vel y && Partner, NumExplod(262144) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143)
y = ifElse(Partner, NumExplod(262141) || Partner, NumExplod(262144), -1, 1) * ifElse(Partner, NumExplod(262144), vel y, 3.125)

[State 3505, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(Time < 2 && var(0) < var(10), 1.11731843575, 8.93854748603)

[State 3505, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3505, Super Cancel Flag]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(21) = Root, var(21)

[State 3505, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(22) = Root, var(22)

[State 3505, Base Dampener]
type = VarSet
trigger1 = 1
fvar(10) = ifElse(var(22), 0.6, ifElse(var(21), 0.8, 1.0))

[State 3505, Base Dampener (Juggle Reset)]
type = VarSet
trigger1 = (Root, var(51)) || (Root, var(52)) || (Root, var(53)) || (Root, var(54)) || (Root, var(55))
fvar(10) = ifElse(var(22), 0.5, ifElse(var(21), 0.6, 0.8))

[State 3505, Base Dampener (Stun)]
type = VarSet
trigger1 = (Root, var(57))
fvar(10) = ifElse(var(22), 0.3, ifElse(var(21), 0.4, 0.5))
ignoreHitPause = 1

[State 3505, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3505, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time && !PrevStateNo
var(39) = 1

[State 3505, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3505, Miss]
type = HitDef
trigger1 = 1
attr = S, HP
hitFlag =
sparkXY = -10, 0

[State 3505, HitDef: Metsu Hadoken]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
trigger1 = var(0) > 0 && var(10) < 5
ID = 3505
attr = S, HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * (35 + 7 * var(0)) < 7, 7, fvar(11) * (35 + 7 * var(0)))), (7 + 7 * var(0))
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 10
guard.pauseTime = 0, 10
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = ifElse(var(0) > 1, -7.93322405606, -4.46927374302), ifElse(var(0) > 1, 0, -6.5625)
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse(var(0) > 1, 0, 1)
air.fall = 1
fall.recover = 0
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 0, 39)
palFX.mul = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192)
palFX.sinAdd = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 48, 4)
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
sprPriority = 3

[State 3505, HitDef: Metsu Hadoken (MAX)]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
trigger1 = var(0) > 0 && var(10) = 5
ID = 3505
attr = S, HP
hitFlag = MAF
guardFlag = U
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * (35 + 7 * var(0)) < 7, 7, fvar(11) * (35 + 7 * var(0)))), (7 + 7 * var(0))
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 10
guard.pauseTime = 0, 10
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = ifElse(var(0) > 1, -7.93322405606, -4.46927374302), ifElse(var(0) > 1, 0, -6.5625)
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse(var(0) > 1, 0, 1)
air.fall = 1
fall.recover = 0
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 0, 39)
palFX.mul = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192)
palFX.sinAdd = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 48, 4)
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
sprPriority = 3

[State 3505, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3505) > 1
ID = 3505
keepOne = 1
excludeID = 3505
ignoreHitPause = 1

[State 3505, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3505)
value = ifElse(Root, var(57) > 0, 9010, 59010)
ID = 3505
ignoreHitPause = 1
persistent = 0

[State 3505, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 3506, 3505)
ignoreHitPause = 1

[State 3505, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 3505, 3507)
ignoreHitPause = 1

[State 3505, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 3507
ignoreHitPause = 1

[State 3505, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 3505, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 3506]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 3506, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3506, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 8)
channel = 2
ignorehitPause = 1

[State 3506, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3506, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3506, Metsu Hadoken Stun Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(3505)
var(57) = 1
persistent = 0

[State 3506, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3506, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State 3506, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 3506, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = 3500
var(18) = 1

[State 3506, Shock Particles]
type = Helper
trigger1 = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
trigger1 = !NumHelper(8155)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(45) := (Target, ID)
helperType = Normal
stateNo = 8155
ID = 8155
name = "Shock Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3506, Shock Particle Timer Set]
type = Null
trigger1 = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8155)
trigger1 = Cond(NumHelper(8155), Helper(8155), Cond(1, var(46) := 39, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3506, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3506, End]
type = ChangeState
trigger1 = Time >= 3 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 3507, 3505)


;Disappear
[StateDef 3507]
type = A
physics = N
moveType = A
anim = 3507
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 3507, Metsu Hadoken Stun Flag]
type = ParentVarAdd
triggerAll = IsHelper(3505) && var(57)
trigger1 = MoveHit && NumTarget(3505)
var(57) = 1
persistent = 0

[State 3507, Pause]
type = Pause
triggerAll = IsHelper(3505) && var(57)
trigger1 = MoveHit && !(Root, var(57) > 1) && NumTarget(3505) && Time % 2 = 0
time = 1

[State 3507, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 3507, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2, 6
channel = 2
volume = -128
lowPriority = 1

[State 3507, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 3507, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008



;========================<FADE OUT>=============================
[StateDef 3613]
type = S
velSet = 0, 0
anim = 1

[State 3613, Timer Decrement]
type = VarAdd
trigger1 = 1
var(0) = -1 

[State 3613, AllPalFX: Fade to Black]
type = AllPalFX
trigger1 = Time <= 12
time = 1
add = 0 - 22 * Time, 0 - 22 * Time, 0 - 22 * Time

[State 3613, BGPalFX]
type = BGPalFX
trigger1 = Time > 12 && !(Root, var(40) = 2)
time = 1
add = -256, -256, -256

[State 0, EnvColor]
type = EnvColor
trigger1 = Time > 12 && Root, var(40) = 2
time = 1
value = 0 + 17 * (Root, var(13)), 0, 0
under = 1

[State 3613, AssertSpecial]
type = AssertSpecial
trigger1 = Time > 12
flag = NoBarDisplay
flag2 = NoFG

[State 3613, End]
type = ChangeState
trigger1 = Time > 12 && !var(0)
trigger2 = Root, StateNo = 3620
value = 3614


;Fade In
[StateDef 3614]
type = S
velSet = 0, 0
anim = 1

[State 3614, BGPalFX: Reset]
type = BGPalFX
trigger1 = !(Root, var(40) = 2)
time = 1

[State 3614, BGPalFX]
type = BGPalFX
trigger1 = Root, var(40) = 2
time = 1
add = 256 - 16 * Time, -256 + 16 * Time, -256 + 16 * Time

[State 3614, End]
type = DestroySelf
trigger1 = !(Root, var(40) = 2)
trigger2 = Time >= 16 && Root, var(40) = 2



;========================<AFTER IMAGE>=============================
[Statedef 3701]
type = S
velSet = 0, 0
anim = 3701
sprPriority = 2

[State 3701, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(IsHelper(3702), -5, 5)

[State 3701, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256 - 16 * Time, 0 + 16 * Time
ignoreHitPause = 1

[State 3701, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 3701, End]
type = DestroySelf
trigger1 = Time = 16



;========================<SPARKS>=============================
;Guard Spark (Normal)
[StateDef 8000]
type = A
physics = N
moveType = I
anim = 8000
velset = 0,0
sprPriority = 5

[State 8000, Assert: No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8000, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.125 + (0.046875 * Time), 0.125 + (0.046875 * Time)
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8000, End]
type = DestroySelf
trigger1 = Time >= 8


;Guard Spark (Special)
[StateDef 8001]
type = A
physics = N
moveType = I
anim = 8001
velSet = 0,0
sprPriority = 5

[State 8001, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8001, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8001, End]
type = DestroySelf
trigger1 = Time >= 8


;Guard Break Spark (Normal)
[StateDef 8005]
type = A
physics = N
moveType = I
anim = 8005
velset = 0,0
sprPriority = 5

[State 8005, Assert: No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8005, Scale]
type = AngleDraw
trigger1 = Time < 4
scale = 0.125 + (0.046875 * Time), 0.125 + (0.046875 * Time)
ignoreHitPause = 1

[State 8005, Scale]
type = AngleDraw
trigger1 = Time >= 4
scale = 0.3125, 0.3125
ignoreHitPause = 1

[State 8005, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8005, Transparency]
type = Trans
trigger1 = Time >= 8
trans = AddAlpha
alpha = 256 - 32 * (Time - 8), 256
ignoreHitPause = 1

[State 8005, End]
type = DestroySelf
trigger1 = Time >= 16


;Guard Break Spark (Special)
[StateDef 8006]
type = A
physics = N
moveType = I
anim = 8006
velset = 0,0
sprPriority = 5

[State 8006, Assert: No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8006, Scale]
type = AngleDraw
trigger1 = Time < 4
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
ignoreHitPause = 1

[State 8006, Scale]
type = AngleDraw
trigger1 = Time >= 4
scale = 0.375, 0.375
ignoreHitPause = 1

[State 8006, Transparency]
type = Trans
trigger1 = Time < 8
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8006, Transparency]
type = Trans
trigger1 = Time >= 8
trans = AddAlpha
alpha = 256 - 32 * (Time - 8), 256
ignoreHitPause = 1

[State 8006, End]
type = DestroySelf
trigger1 = Time >= 16


;Weak Hit Spark
[StateDef 8010]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8010, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8010, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8010, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8010, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.3 - (Time * 0.03)) * 0.65, (0.3 - (Time * 0.03)) * 0.65
ignoreHitPause = 1

[State 8010, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8010, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8010, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.15 + (0.009375 * Time)) * 0.65, (0.15 + (0.009375 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8010, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.15 + (0.009375 * Time)) * 0.65, (0.15 + (0.009375 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8010, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.3 - (0.0375 * Time)) * 0.65, (0.3 - (0.0375 * Time)) * 0.65
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8010, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8010, End]
type = DestroySelf
trigger1 = Time >= 16


;Medium Hit Spark
[StateDef 8011]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8011, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8011, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8011, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8011, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.35 - (Time * 0.035)) * 0.65, (0.35 - (Time * 0.035)) * 0.65
ignoreHitPause = 1

[State 8011, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8011, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8011, Center]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removetime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.175 + (0.0109375 * Time)) * 0.65, (0.175 + (0.0109375 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.175 + (0.0109375 * Time)) * 0.65, (0.175 + (0.0109375 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.35 - (0.04375 * Time)) * 0.65, (0.35 - (0.04375 * Time)) * 0.65
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8011, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8011, End]
type = DestroySelf
trigger1 = Time >= 16


;Strong Hit Spark
[StateDef 8012]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8012, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8012, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8012, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8012, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.4 - (Time * 0.04)) * 0.65, (0.4 - (Time * 0.04)) * 0.65
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8012, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8012, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.2 + (0.0125 * Time)) * 0.65, (0.2 + (0.0125 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Streaks Explod]
type = Explod
trigger1 = !time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.2 + (0.0125 * Time)) * 0.65, (0.2 + (0.0125 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.4 - (0.05 * Time)) * 0.65, (0.4 - (0.05 * Time)) * 0.65
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8012, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8012, End]
type = DestroySelf
trigger1 = Time >= 16


;Special Move Hit Spark
[StateDef 8013]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8013, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8013, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8013, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8013, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.45 - (Time * 0.045)) * 0.65, (0.45 - (Time * 0.045)) * 0.65
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8013, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8013, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.225 + (0.0140625 * Time)) * 0.65, (0.225 + (0.0140625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.225 + (0.0140625 * Time)) * 0.65, (0.225 + (0.0140625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013
ID = 3
posType = P1
facing = -1
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale P2 Back Explod]
type = ModifyExplod
trigger1= NumExplod(3)
ID = 3
scale = (0.4) * 0.65, (0.4) * 0.65
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8013, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority=3
removeTime=8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.45 - (0.05625 * Time)) * 0.65, (0.45 - (0.05625 * Time)) * 0.65
trans = AddAlpha
alpha = 192 - (24 * Time), 256

[State 8013, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8013, End]
type = DestroySelf
trigger1 = Time >= 16


;Super Hit Spark
[StateDef 8014]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8014, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8014, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8014, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8014, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.5 - (Time * 0.05)) * 0.65, (0.5 - (Time * 0.05)) * 0.65
ignoreHitPause = 1

[State 8014, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8014, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8014, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.25 + (0.015625 * Time)) * 0.65, (0.25 + (0.015625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.25 + (0.015625 * Time)) * 0.65, (0.25 + (0.015625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013
ID = 3
posType = P1
facing = ifElse((Parent, StateNo = [3000,3999]), -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale P2 Back Explod]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = (0.5) * 0.65, (0.5) * 0.65
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8014, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.5 - (0.0625 * Time)) * 0.65, (0.5 - (0.0625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8014, Remove Explods]
type = RemoveExplod
trigger1 = time >= 16

[State 8014, End]
type = DestroySelf
trigger1 = Time >= 16



;Reversal Spark
[StateDef 8020]
type = A
physics = N
moveType = I
anim = 8020
velSet = 0,0
sprPriority = 5

[State 8020, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8020, Scale]
type = AngleDraw
trigger1 = 1
scale = (0.25 + (0.09375 * Time)) * 0.65, (0.25 + (0.09375 * Time)) * 0.65
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8020, End]
type = DestroySelf
trigger1 = Time >= 8



;======================<JUMP DUST>===========================
[StateDef 8100]
type = S
anim = 1
velSet = 0,0

[State 8100, Bind]
type = BindToRoot
trigger1 = Time

[State 8100, Floor Dust]
type = Explod
trigger1 = !Time
anim = 8100
sprPriority = 3
posType = P1
pos = 0, ceil(pos y)
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8100, Player Dust]
type = Explod
trigger1 = !Time || Time = 2 || Time = 6
anim = 8101
sprPriority = 3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8100, End]
type = DestroySelf
trigger1 = Time >= 7



;======================<DASH DUST>===========================
[StateDef 8103]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8103, posSet]
type = PosSet
trigger1 = !Time = 0
y = 0

[State 8103, Dash Dust]
type = Explod
trigger1 = Time = 0 || Time = 3 || Time = 6
anim = 8103
ID = ifElse((Time = 6), 3, ifElse((Time = 3), 2, 1))
posType = P1
pos = 0,-4
random = 8,8
vel = -3 - (Random / 1000.0), -2 - (Random / 2000.0)
facing = ifElse(Random < 500,-1,1)
vFacing = ifElse(Random < 500,-1,1)
removeTime = 16
sprPriority = 3
pauseMoveTime = -1
superMoveTime = -1

[State 8103, Scale Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.1 + (0.025 * Time), 0.1 + (0.025 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8103, Scale Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.1 + (0.025 * (Time - 3)), 0.1 + (0.025 * (Time - 3))
trans = AddAlpha
alpha = 256 - (16 * (Time - 3)), 256

[State 8103, Scale Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 0.1 + (0.025 * (Time - 6)), 0.1 + (0.025 * (Time - 6))
trans = AddAlpha
alpha = 256 - (16 * (Time - 6)), 256

[State 8103, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 22

[State 8103, End]
type = DestroySelf
trigger1 = !NumExplod



;======================<IMPACT DUST>===========================
[StateDef 8110]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8110, Impact Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 8110
ID = ifElse(Time = 8, 3, ifElse(Time = 4, 2, 1))
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8110, Impact Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 8120
ID = 2
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8110, Scale]
type = ModifyExplod
trigger1 = 1
scale = 0.25 + (0.03125 * Time) * 0.5, 0.25 + (0.03125 * Time) * 0.5
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8110, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8110, End]
type = DestroySelf
trigger1 = !NumExplod



;========================<FLAMES>=============================
[StateDef 8150]
type = A
velSet = 0, 0
anim = 1

[State 8150, Player]
type = VarSet
trigger1 = !Time
var(0) = Parent, var(43)

[State 8150, PosSet]
type = PosSet
trigger1 = PlayerIDexist(var(0))
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) + (PlayerID(var(0)), const(size.mid.pos.y))

[State 8150, PosSet (Laying Down)]
type = PosSet
trigger1 = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), StateType = L
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) - 20

[State 8150, Facing]
type = Turn
trigger1 = PlayerIDexist(var(0))
trigger1 = Facing != (PlayerID(var(0)), Facing)

[State 8150, End]
type = DestroySelf
trigger1 = Time >= 600
trigger2 = !PlayerIDexist(var(0))
trigger3 = RoundState < 3
trigger3 = !var(44)

[State 8150, End]
type = DestroySelf
triggerAll = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), ctrl
trigger2 = PlayerID(var(0)), Movetype != H || PlayerID(var(0)), StateNo = 5300
trigger3 = RoundState >= 3
trigger3 = PlayerID(var(0)), StateType = L && (PlayerID(var(0)), StateNo != [5080, 5081])
trigger4 = PlayerID(var(0)), StateNo = 5110

[State 8150, Timer Decrement]
type = VarAdd
trigger1 = 1
var(44) = -1

[State 8150, Flame Explod 1]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8150
sprPriority = 1
posType = P1
random = 40,40
vel = (Random / 2000.0), -0.5 - (Random / 2000.0)
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
scale = 0.5,0.5
ownpal = 1

[State 8150, Flames Explod 2]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8150
sprPriority = 1
posType = P1
random = 60,60
vel = (Random / 2000.0), -0.5 - (Random / 2000.0)
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
scale = 0.5,0.5
ownpal = 1



;========================<SHOCK>=============================
[StateDef 8155]
type = A
velSet = 0,0
anim = 1

[State 8155, Player]
type = VarSet
trigger1 = !Time
var(0) = Parent, var(45)

[State 8155, PosSet]
type = PosSet
trigger1 = PlayerIDexist(var(0))
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) + (PlayerID(var(0)), const(size.mid.pos.y))

[State 8155, PosSet (Laying Down)]
type = PosSet
triggerAll = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), StateType = L
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) - 20

[State 8155, Facing]
type = Turn
trigger1 = PlayerIDexist(var(0))
trigger1 = Facing != (PlayerID(var(0)), Facing)

[State 8155, End]
type = DestroySelf
trigger1 = Time >= 600
trigger2 = !PlayerIDexist(var(0))
trigger3 = RoundState < 3
trigger3 = !var(46)

[State 8155, End]
type = DestroySelf
triggerAll = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), ctrl
trigger2 = PlayerID(var(0)), MoveType != H || PlayerID(var(0)), StateNo = 5300
trigger3 = RoundState >= 3
trigger3 = PlayerID(var(0)), StateType = L && (PlayerID(var(0)), StateNo != [5080, 5081])
trigger4 = PlayerID(var(0)), StateNo = 5110

[State 8155, Timer Decrement]
type = VarAdd
trigger1 = 1
var(46) = -1

[State 8155, Spark Explod]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8155
sprPriority = 3
posType = P1
random = 40,40
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
;bindtime = -1
scale = 0.25, 0.25
ownPal = 1



;========================<RECOVER FX>=============================
[StateDef 8200]
type = A
velSet = 0,0
anim = 8200
sprPriority = 5

[State 8200, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8200, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.017 * Time), 0.25 + (0.017 * Time)
ignoreHitPause = 1

[State 8200, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = ceil(256 - 17.1 * Time), 256
ignoreHitPause = 1

[State 8200, End]
type = DestroySelf
trigger1 = Time >= 15



;========================<COUNTER FX>=============================
[StateDef 8290]
type = A
physics = N
velSet = 0,0
anim = 1

[State 8290, "Counter!" Text Explod]
type = Explod
trigger1 = !NumExplod(8290)
anim = 8290
ID = 8290
sprPriority = 64
posType = P1
facing = Facing
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8290, Scale]
type = ModifyExplod
trigger1 = Time < 8
ID = 8290
scale = 0.5, .5
trans = AddAlpha
alpha = 256,0

[State 8290, Scale]
type = ModifyExplod
trigger1 = Time >= 8
ID = 8290
scale = 0.5 + 0.0625 * (Time - 8), 0.5 + 0.0625 * (Time - 8)
trans = AddAlpha
alpha = 256 - 32 * (Time - 8), 32 * (Time - 8)

[State 8290, Safety]
type = RemoveExplod
trigger1 = Time >= 16

[State 8290, End]
type = DestroySelf
trigger1 = Time >= 16



;==================<POWER CHARGE FX>==================
;Aura and Dust
[StateDef 8330]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velset = 0,0

[State 8330, BindToRoot]
type = BindToRoot
trigger1 = (Root, StateNo = 730)
pos = -ifElse((Root, var(40) = [1, 2]), 6, 10), 0

[State 8330, Charging Sound]
type = PlaySnd
trigger1 = !Time
value = 730,0
channel = 0

[State 8330, Power Charge Aura]
type = Explod
trigger1 = !NumExplod(8330)
ID = 8330
anim = 8330
sprPriority = 3
posType = P1
bindTime = -1
removeTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8330, Power Charge Dust]
type = Explod
trigger1 = !(Time % 6)
anim = 8105
sprPriority = -3
posType = P1
pos = 0, -ceil(pos y)
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8330, Modify Aura 1]
type = ModifyExplod
trigger1 = Numexplod(8330) && Root, Power < 3000
ID = 8330
scale = 0.5, 0.1 + 0.4 * (Root, Power / 3000.0)

[State 8330, Modify Aura 2]
type = ModifyExplod
trigger1 = NumExplod(8330) && Root, Power >= 3000
ID = 8330
scale = 0.5, 0.5

[State 8330, StopSnd]
type = StopSnd
trigger1 = Root, StateNo != 730
channel = 0

[State 8330, RemoveExplod]
type = RemoveExplod
trigger1 = Root, StateNo != 730

[State 8330, End]
type = DestroySelf
trigger1 = Root, StateNo != 730


;Particles
[StateDef 8331]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 8331, BindToRoot]
type = BindToRoot
trigger1 = !(Time % 8)
pos = ceil(-151 + (Random / 3.125)), ceil(98 - (Random / 3.125))

[State 8331, Particle]
type = Explod
trigger1 = (Time % 8) = 1
anim = 8331
sprPriority = ifElse(Random < 750, 5, -1)
posType = P1
vel = ((RootDist x - ifElse((Root, var(40) = [1, 2]), 9, 12)) / 32.0), ((RootDist y - ifElse((Root, var(40) = [1, 2]), 56, 58)) / 32.0)
scale = ifElse(Random < 500, 0.5, -0.5), ifElse(Random < 500, 0.5, -0.5)
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8331, RemoveExplod]
type = RemoveExplod
trigger1 = Root, StateNo != 730

[State 8331, End]
type = DestroySelf
trigger1 = Root, StateNo != 730



;==================<ZERO COUNTER FX>==================
[StateDef 8350]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 8350, bgPalFX]
type = bgPalFX
trigger1 = 1
time = 1
color = 16 * Time
mul = 16 * Time, 16 * Time, 16 * Time

[State 8350, Circle Explod]
type = Explod
trigger1 = !Time
anim = 8350
ID = 1
sprPriority = 3
posType = P1
removeTime = 16
superMoveTime = -1
ownPal = 1

[State 8350, Scale]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.0625 * Time), (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8350, Lightning Explod]
type = Explod
trigger1 = !Time
anim = 8351
ID = 2
sprPriority = -2
posType = P1
pos = 0, -ceil(pos y)
superMoveTime = -1
ownPal = 1

[State 8350, End]
type = DestroySelf
trigger1 = Time >= 16



;========================<CUSTOM COMBO>=============================
[StateDef 8400]
type = A
physics = N
moveType = I
anim = 8400
ctrl = 0
velSet = 0,0
sprPriority = 5

[State 8400, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8400, BGpalFX]
type = BGpalFX
trigger1 = Time < 25
time = 1
mul = 128,128,128

[State 8400, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8400, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8400, Scale]
type = AngleDraw
trigger1 = Time < 8
scale = (0.0625 * Time), (0.0625 * Time)
ignoreHitPause = 1

[State 8400, Scale]
type = AngleDraw
trigger1 = Time >= 8
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8400, Transparency]
type = Trans
trigger1 = Time < 16
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8400, Transparency]
type = Trans
trigger1 = Time >= 16
trans = AddAlpha
alpha = ceil(256 - 25.6 * (Time - 16)), 256
ignoreHitPause = 1

[State 8400, Lines Explod]
type = Explod
trigger1 = !Time
anim = 8401
ID = 1
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8400, Scale Lines Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 2 - (0.125 * Time), 2 - (0.125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8400, Circle Explod]
type = Explod
trigger1 = Time = 16
anim = 8402
ID = 2
sprPriority = 5
posType = P1
removeTime = 32
superMoveTime = -1

[State 8400, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.1 * (Time - 16)), (0.1 * (Time - 16))
trans = AddAlpha
alpha = ceil(256 - 25.6 * (Time - 16)), 256

[State 8400, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 26

[State 8400, End]
type = DestroySelf
trigger1 = Time >= 26



;========================<SUPER PAUSE FX>=============================
;Level 1 Super FX
[StateDef 8500]
type = A
velSet = 0,0
anim = 8500
sprPriority = 5

[State 8500, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8500, BGpalFX]
type = BGpalFX
trigger1 = Time < 39
time = 1
color = 0
mul = 0,0,256

[State 8500, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8500, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8500, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8500, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5,0.5
ignoreHitPause = 1

[State 8500, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8500, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8501
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8500, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8500, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8502
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 32
superMoveTime = -1

[State 8500, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8500, End]
type = DestroySelf
trigger1 = Time >= 40


;Level 2 Super FX
[StateDef 8510]
type = A
velSet = 0,0
anim = 8510
sprPriority = 5

[State 8510, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8510, BGpalFX]
type = BGpalFX
trigger1 = Time < 39
time = 1
color = 0
mul = 192,0,256

[State 8510, Rotate]
type = AngleSet
trigger1 = !Time
value =6 * (Random % 60)

[State 8510, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8510, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8510, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8510, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8510, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8511
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8510, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8510, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8510, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8510, Scale Lines Explod 4]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 -(0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8510, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8512
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500,-1,1)
vFacing = ifElse(Random < 500,-1,1)
removeTime = 32
superMoveTime = -1

[State 8510, Scale]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24)<4, 64 * (Time - 24), 256), 256

[State 8510, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8510, End]
type = DestroySelf
trigger1 = Time >= 40


;Level 3 Super FX
[StateDef 8520]
type = A
velset = 0,0
anim = 8520
sprPriority = 5

[State 8520, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8520, Assert: NoBarDisplay, NoBG, NoFG]
type = AssertSpecial
trigger1 = Time < 40
flag = NoBarDisplay
flag2 = NoBG
flag3 = NoFG

[State 8520, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8520, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8520, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8520, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8520, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8520, Portrait 1]
type = Explod
trigger1 = !Time
anim = 8525 + Root, var(40)
ID = 20
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1

[State 8520, Portrait 2]
type = Explod
trigger1 = !Time
anim = 8525 + Root, var(40)
ID = 21
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1

[State 8520, Scale Portrait 1a]
type = ModifyExplod
trigger1 = NumExplod(20) && Time < 16
ID = 20
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 1 - (0.03125 * Time), 1 - (0.03125 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 2a]
type = ModifyExplod
trigger1 = NumExplod(21) && Time < 16
ID = 21
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 2 - (0.09375 * Time), 2 - (0.09375 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 1b]
type = ModifyExplod
trigger1 = NumExplod(20) && (Time = [16,32])
ID = 20
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 256, 256

[State 8520, Scale Portrait 2b]
type = ModifyExplod
trigger1 = NumExplod(21) && (Time = [16,32])
ID = 21
scale = 0,0

[State 8520, Scale Portrait 1c]
type = ModifyExplod
trigger1 = NumExplod(20) && Time >= 32
ID = 20
posType = Back
pos = 160 + (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Scale Portrait 2c]
type = ModifyExplod
trigger1 = NumExplod(21) && Time >= 32
ID = 21
posType = Back
pos = 160 - (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Lines Explod]
type = explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8521
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8520, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8520, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1-(0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8520, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8520, Scale Lines Explod 4]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8522
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1 ,1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 32
superMoveTime = -1

[State 8520, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8520, End]
type = DestroySelf
trigger1 = Time >= 40



;========================<SUPER FINISH>=============================
[StateDef 8600]
type = A
velSet = 0,0
anim = 1

[State 8600, Super Finish Sound]
type = PlaySnd
trigger1 = !Time
value = 8600,0
channel = 1

[State 8600, SndPan]
type = SndPan
trigger1 = Time <= 80
channel = 1
absPan = ceil(sin(GameTime / 20.0 * pi) * 160)

[State 8600, BG PalFX]
type = BGpalFX
trigger1 = Time < 16
time = 1
mul = 0, 0, 0

[State 8600, BG PalFX]
type = BGpalFX
trigger1 = Time = [16,24)
time = 1
mul = 32 * (Time - 16), 32 * (Time - 16), 32 * (Time - 16)

[State 8600, Move Name: Custom Combo]
type = VarSet
trigger1= !Time && Root, var(23) = 900
var(0) = 1

[State 8600, Move Name: Shinku Hadoken]
type = VarSet
trigger1 = !Time && Root, var(23) = 3000
var(0) = 2

[State 8600, Move Name: Denjin Hadoken]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3100, 3199])
var(0) = 3

[State 8600, Move Name: Shinku Tatsumaki Senpukyaku]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3200, 3299])
var(0) = 4

[State 8600, Move Name: Shin Shoryuken]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3300, 3399]) && Root, var(40) != 2
var(0) = 5

[State 8600, Move Name: Messatsu Goshoryu]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3400, 3499])
var(0) = 6

[State 8600, Move Name: Metsu Hadoken]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3500, 3599])
var(0) = 7

[State 8600, Move Name: Shun Goku Satsu]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3600, 3699])
var(0) = 8

[State 8600, Move Name: Misogi]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3700, 3799])
var(0) = 9

[State 8600, Move Name: Messatsu Ryukosai]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3800, 3899])
var(0) = 11

[State 8600, Move Name: Rakuyo Hadoken]
type = VarSet
trigger1 = !Time && Root, var(23) = 3020
var(0) = 12

[State 8600, Move Name: Metsu Shoryuken]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3300, 3399]) && Root, var(40) = 2
var(0) = 13

[State 8600, Move Name: Taigyaku Mudo]
type = VarSet
trigger1 = !Time && Root, var(23) = 3900
var(0) = 15

[State 8600, Super Finish Explod]
type = Explod
trigger1 = !Time
anim = 8600
ID = 8600
ontop = 1
postype = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Super Finish Explod Fade]
type = ModifyExplod
trigger1 = NumExplod(8600)
ID = 8600
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), 256

[State 8600, Text 1]
type = Explod
trigger1 = !Time && var(0)
anim = 8610 + var(0)
ID = 10
onTop = 1
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 2]
type = Explod
trigger1 = !Time && var(0)
anim = 8610 + var(0)
ID = 11
onTop = 1
posType = left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 1 Fade]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), ifElse(Time < 16, 0, 32 * (Time - 16))

[State 8600, Text 2 Fade]
type = ModifyExplod
trigger1 = NumExplod(11)
ID = 11
scale = 0.5 + (0.0625 * Time), 0.5 + (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time), 32 * Time

[State 8600, Circle Explod]
type = Explod
trigger1 = !Time
anim = 8601
ID = 8601
under = 1
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
bindTime = -1
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Circle Fade]
type = ModifyExplod
trigger1 = NumExplod(8601)
ID = 8601
scale = (0.25 * time) * (1.3333333 * GameHeight / GameWidth), (0.25 * time) * (1.3333333 * GameHeight / GameWidth)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8600, Assert: NoFG]
type = AssertSpecial
trigger1 = Time < 16
flag = NoFG

[State 8600, Assert: NoBarDisplay]
type = AssertSpecial
trigger1 = Time < 24
flag = NoBarDisplay

[State 8600, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 24
trigger2 = RoundState < 3

[State 8600, End]
type = DestroySelf
trigger1 = RoundState < 3



;========================<SUPER FINISH (KANJI)>=============================
[StateDef 8620]
type = A
velSet = 0, 0
anim = 1

[State 8620, Assert]
type = AssertSpecial
trigger1 = Time < 120
flag = NoMusic

[State 8620, Snd]
type = PlaySnd
trigger1 = !Time
value = 2, 3620

[State 8620, Black]
type = BGPalFX
trigger1 = Time < 120
time = 2
add = -255, -255, -255

[State 8620, Black]
type = BGPalFX
trigger1 = Time = 120
time = 60
add = -255, -255, -255
sinAdd = 255, 255, 255, 240

[State 8620, Fade]
type = PalFX
trigger1 = Time = 120
time = 60
sinAdd = -255, -255, -255, 240

[State 8620, Shun Goku Satsu Kanji]
type = Explod
trigger1 = !Time
anim = 8618
ID = 8618
sprPriority = -5
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 1 * (1.3333333 * GameHeight / GameWidth), 1 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1

[State 8620, Shrink]
type = ModifyExplod
trigger1 = Time < 6
ID = 8618
scale = (5.5 - time) * (1.3333333 * GameHeight / GameWidth), (5.5 - time) * (1.3333333 * GameHeight / GameWidth)

[State 8620, Shrink]
type = ModifyExplod
trigger1 = Time >= 6
ID = 8618
scale = 0.5 * (1.3333333 * GameHeight / GameWidth), 0.5 * (1.3333333 * GameHeight / GameWidth)

[State 8620, Last Judgement Flames]
type = Explod
trigger1 = !Time
anim = 8620
ID = 8620
sprPriority = 5
posType = Left
pos = 0, floor((GameHeight / GameWidth) * 80) - 60
bindTime = -1
removeTime = -1
pauseMoveTime = 300
superMoveTime = 300

[State 8620, Assert: Invisible | NoBarDisplay]
type = AssertSpecial
trigger1 = 1
flag = Invisible
flag2 = NoBarDisplay
ignoreHitPause = 1

[State 8620, Assert]
type = AssertSpecial
trigger1 = Time < 120
flag = noFG
ignoreHitPause = 1

[State 8620, Safety]
type = RemoveExplod
trigger1 = Time >= 180

[State 8620, End]
type = DestroySelf
trigger1 = Time >= 180



;========================<DIZZY STARS>=============================
[Statedef 8970]
type = A
physics = N
moveType = I
anim = 1
velSet = 0, 0
sprPriority = 0

[State 8970, Pos]
type = PosSet
trigger1 = NumEnemy
x = EnemyNear, pos x
y = (EnemyNear, pos y) + (EnemyNear, const(size.head.pos.y)) - 16

[State 8970, Pos]
type = PosSet
trigger1 = NumEnemy = 1
trigger1 = (EnemyNear, pos y) > 0
y = (EnemyNear, const(size.head.pos.y)) - 16

[State 8970, Star]
type = Explod
trigger1 = !NumExplod(1)
anim = 8970
ID = 1
posType = P1
pos = 0, 0
sprPriority = 5
bindTime = -1
removeTime = -1
scale = 0.5, 0.5

[State 8970, Star]
type = Explod
trigger1 = !NumExplod(2)
anim = 8970
ID = 2
posType = P1
pos = 0, 0
sprPriority = 5
bindTime = -1
removeTime = -1
scale = 0.5, 0.5

[State 8970, Star]
type = Explod
trigger1 = !NumExplod(3)
anim = 8970
ID = 3
posType = P1
pos = 0, 0
sprPriority = 5
bindTime = -1
removeTime = -1
scale = 0.5, 0.5

[State 8970, Star]
type = Explod
trigger1 = !NumExplod(4)
anim = 8970
ID = 4
posType = P1
pos = 0, 0
sprPriority = 5
bindTime = -1
removeTime = -1
scale = 0.5, 0.5

[State 8970, Circle Around]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
posType = P1
pos = ceil(32 * cos((GameTime + 0) / 32.0 * pi)), ceil(6 * sin((GameTime + 0) / 32.0 * pi))
scale = 0.375 + 0.125 * sin((GameTime + 0) / 32.0 * pi), 0.375 + 0.125 * sin((GameTime + 0) / 32.0 * pi)
sprPriority = ifelse(sin((GameTime + 0) / 32.0 * pi) >= 0, 5, -5)

[State 8970, Circle Around]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
posType = P1
pos = ceil(32 * cos((GameTime + 32) / 32.0 * pi)), ceil(8 * sin((GameTime + 32) / 32.0 * pi))
scale = 0.375 + 0.125 * sin((GameTime + 32) / 32.0 * pi), 0.375 + 0.125 * sin((GameTime + 32) / 32.0 * pi)
sprPriority = ifelse(sin((GameTime + 32) / 32.0 * pi) >= 0, 5, -5)

[State 8970, Circle Around]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
posType = P1
pos = ceil(32 * cos((GameTime + 16) / 32.0 * pi)), ceil(8 * sin((GameTime + 16) / 32.0 * pi))
scale = 0.375 + 0.125 * sin((GameTime + 16) / 32.0 * pi), 0.375 + 0.125 * sin((GameTime + 16) / 32.0 * pi)
sprPriority = ifelse(sin((GameTime + 16) / 32.0 * pi) >= 0, 5, -5)

[State 8970, Circle Around]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
posType = P1
pos = ceil(32 * cos((GameTime + 48) / 32.0 * pi)), ceil(8 * sin((GameTime + 48) / 32.0 * pi))
scale = 0.375 + 0.125 * sin((GameTime + 48) / 32.0 * pi), 0.375 + 0.125 * sin((GameTime + 48) / 32.0 * pi)
sprPriority = ifElse(sin((GameTime + 48) / 32.0 * pi) >= 0, 5, -5)

[State 8970, PlaySnd]
type = PlaySnd
trigger1 = 1
value = 5300, 0
lowPriority = 1
volumeScale = 50
channel = 0

[State 8970, StopSnd]
type = StopSnd
trigger1 = !NumEnemy
trigger2 = NumEnemy
trigger2 = EnemyNear, StateNo != 55300
channel = 0

[State 8970, RemoveExplod]
type = RemoveExplod
trigger1 = !NumEnemy
trigger2 = NumEnemy
trigger2 = EnemyNear, StateNo != 55300

[State 8970, End]
type = DestroySelf
trigger1 = !NumExplod



;========================<CAMERA CONTROL>=============================
[StateDef 8999]
type = S
velSet = 0,0
anim = 1

[State 8999, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1
ignoreHitPause = 1

[State 8999, End]
type = DestroySelf
trigger1 = RoundState = 2



;========================<EXPLODSIVE BUFFERING HELPER>=============================
[StateDef 90000005]
type = A
physics = N
moveType = I
anim = 1
velSet = 0,0
ctrl = 0

[State 90000005, Turn]
type = Turn
trigger1 = (Root, NumExplod(94646464) || Root, NumExplod(92468246)) && !var(0)
trigger2 = !Root, NumExplod(94646464) && !Root, NumExplod(92468246) && var(0)
ignoreHitPause = 1

[State 90000005, Reverse Left/Right]
type = VarSet
trigger1 = (Root, NumExplod(94646464) || Root, NumExplod(92468246)) && !var(0)
var(0) = 1
ignoreHitPause = 1

[State 90000005, Reset Turn Variable]
type = VarSet
trigger1 = !Root, NumExplod(94646464) && !Root, NumExplod(92468246) && var(0)
var(0) = 0
ignoreHitPause = 1

[State 90000005, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "by JustMorphPointman"
ignoreHitPause = 1
