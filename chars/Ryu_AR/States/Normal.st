; ________________________________________________
;| Ryu by KarmaCharmeleon			|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<NORMAL MOVES>========================================
;==============================================================================================

;===========<STANDING FAR LIGHT PUNCH>==========
[StateDef 200]
type = S
physics = S
moveType = A
anim = 200 + 10000 * (var(40) = [1, 2])
ctrl = 0
velset = 0, 0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 0, 1) + 10 * var(40)
channel = 0

[State 200, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1, 0
channel = 1

[State 200, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getpower = 72 * !var(20) * !var(50), 36 * !var(20) * !var(50)
givepower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 63), var(36):= -87
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48

[State 200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 200 + 10000 * (var(40) = [1, 2])
elem = 3
ignoreHitPause = 1

[State 200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<STANDING CLOSE LIGHT PUNCH>==========
[StateDef 205]
type = S
physics = S
moveType = A
anim = 205 + 10000 * (var(40) = [1, 2])
ctrl = 0
velset = 0, 0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 205, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 0, 1) + 10 * var(40)
channel = 0

[State 205, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1, 0
channel = 1

[State 205, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getpower = 72 * !var(20) * !var(50), 36 * !var(20) * !var(50)
givepower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 37), var(36):= -91
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48

[State 205, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 205 + 10000 * (var(40) = [1, 2])
elem = 3
ignoreHitPause = 1

[State 205, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 205, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<STANDING FAR MEDIUM PUNCH>==========
[StateDef 210]
type = S
physics = S
moveType = A
anim = 210 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
faceP2 = 1

[State 210, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 210, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 1
channel = 1

[State 210, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 63, 70) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 63, 70))), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
;xAccel = 0.01636696927
yAccel = 0.439453125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 210, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 210 + 10000 * (var(40) = [1, 2])
elem = 4
ignoreHitPause = 1

[State 210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 210, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<STANDING CLOSE MEDIUM PUNCH>==========
[StateDef 215]
type = S
physics = S
moveType = A
anim = 215
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
faceP2 = 1

[State 215, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 350
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 215, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 1
channel = 1

[State 215, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -77
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 215, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 215, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<STANDING CLOSE MEDIUM PUNCH (EVIL)>==========
[StateDef 216]
type = S
physics = S
moveType = A
anim = 216 + 10000 * var(40)
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
faceP2 = 1

[State 216, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 350
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 216, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 1
channel = 1

[State 216, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -62
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 216, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 216 + 10000 * var(40)
elem = 5
ignoreHitPause = 1

[State 216, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 216, Kikokuzuki]
type = VarSet
triggerAll = (!var(14) || AILevel)
trigger1 = !AILevel && MoveContact && AnimElemTime(4) > 0 && var(40) = 1
;command = "z"
trigger1 = NumExplod(90000220) || command = "z"
trigger2 = AILevel && MoveHit && P2StateType != A && P2StateType != L
var(14) = 221

[State 216, Followup]
type = ChangeState
trigger1 = var(14) > 0
trigger1 = AnimElemTime(4) > 0
value = var(14)

[State 216, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 216, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<SAKOTSU WARI>==========
[StateDef 218]
type = S
physics = N
moveType = A
anim = 218 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
faceP2 = 1

[State 218, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 4, 2 + 10 * var(40)
channel = 0

[State 218, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 1
channel = 1

[State 218, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 2.23463687151

[State 218, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 218, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -82
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 218, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 7
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 66), var(36) := -42
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 218, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 218, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<ZUGAIHASATSU>==========
[StateDef 219]
type = S
physics = N
moveType = A
anim = 219 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
faceP2 = 1

[State 219, Voice]
type = PlaySnd
trigger1 = AnimElem = 5 && var(40) = 1
value = 4, 2 + 10 * var(40)
channel = 0

[State 219, Voice]
type = PlaySnd
trigger1 = AnimElem = 5 && var(40) = 2
value = 4, 3 + 10 * var(40)
channel = 0

[State 219, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 1
channel = 1

[State 219, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 2.23463687151

[State 219, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 219, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 219, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -52
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 219, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 219 + 10000 * (var(40) = [1, 2])
elem = 7
ignoreHitPause = 1

[State 219, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 219, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<STANDING FAR HEAVY PUNCH>==========
[StateDef 220]
type = S
physics = S
moveType = A
anim = 220
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
facep2 = 1

[State 220, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 220, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(PrevStateNo = 700, -6.70391061453, ifElse(var(20), -5.52547201545, -11.0509440309)), ifElse(PrevStateNo = 700, -5, 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yaccel = 0.439453125
fall = ifElse(PrevStateNo = 700, 1, 0)
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 86), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 220, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 220
elem = 5
ignoreHitPause = 1

[State 220, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 8)
value = 220
elem = 6
ignoreHitPause = 1

[State 220, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 220, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<STANDING FAR HEAVY PUNCH (EVIL)>==========
[StateDef 221]
type = S
physics = S
moveType = A
anim = 221 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
facep2 = 1

[State 221, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 221, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 221, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(PrevStateNo = 216, 70, 91) < 7, 7, fvar(11) * ifElse(PrevStateNo = 216, 70, 91))), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(PrevStateNo = 216 || PrevStateNo = 700, -6.70391061453, ifElse(var(20), -5.52547201545, -11.0509440309)), ifElse(PrevStateNo = 216 || PrevStateNo = 700, -5, 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yaccel = 0.439453125
fall = ifElse(PrevStateNo = 216 || PrevStateNo = 700, 1, 0)
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 221, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 221 + 10000 * (var(40) = [1, 2])
elem = 5
ignoreHitPause = 1

[State 221, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
movetype = I

[State 221, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<STANDING HEAVY PUNCH (SHADOW)>==========
[StateDef 222]
type = S
physics = S
moveType = A
anim = 222 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
facep2 = 1

[State 222, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 222, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 222, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.52547201545, -11.0509440309), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -7.96875
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 222, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4 && !MoveReversed && !MoveContact
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.52547201545, -11.0509440309), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 222, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 222 + 10000 * (var(40) = [1, 2])
elem = 5
ignoreHitPause = 1

[State 222, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 222, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<STANDING CLOSE HEAVY PUNCH>==========
[StateDef 225]
type = S
physics = S
moveType = A
anim = 225 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
facep2 = 1

[State 225, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 225, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 225, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 77, 84) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 77, 84))), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.52547201545, -11.0509440309), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 49), var(36) := -77
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
forceStand = 1

[State 225, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4 && !MoveReversed && !MoveContact
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.52547201545, -11.0509440309), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 26), var(36) := -107
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
forceStand = 1

[State 225, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 225 + 10000 * (var(40) = [1, 2])
elem = 5
ignoreHitPause = 1

[State 225, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 225, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<KIKOKUDUKI>==========
[StateDef 227]
type = S
physics = S
moveType = A
anim = 221 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
facep2 = 1

[State 227, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 227, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 227, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 11.1731843575

[State 227, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.52547201545, -11.0509440309), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yaccel = 0.439453125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
forceStand = 1

[State 227, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 221 + 10000 * (var(40) = [1, 2])
elem = 5
ignoreHitPause = 1

[State 227, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
movetype = I

[State 227, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 227, Kikokuretsuzan]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(4) > 0 && MoveContact
trigger1 = !AILevel
;command = "c"
trigger1 = NumExplod(90000250)
trigger2 = AILevel && !var(14) && MoveHit
var(14) = 251

[State 227, Followup]
type = ChangeState
trigger1 = var(14) = 251
trigger1 = AnimElemTime(4) > 0
value = var(14)

[State 227, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<MIZOCHI KUDAKI>==========
[StateDef 228]
type = S
physics = N
moveType = A
anim = 228
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
facep2 = 1

[State 228, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 2 + 10 * var(40)
channel = 0

[State 228, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 228, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 110, 0

[State 228, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 228, VelSet]
type = VelSet
trigger1 = AnimElemTime(6) = 1
x = 11.1731843575

[State 228, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 1 && Vel x > 1.11731843575
x = -1.04748603352

[State 228, VelSet]
type = VelSet
trigger1 = AnimElemTime(6) > 1 && Vel x <= 1.11731843575
x = 0

[State 228, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -64
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 228, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.52547201545, -11.0509440309), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -64
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 228, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 228, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<SEICHU NIDAN TSUKI>==========
[StateDef 229]
type = S
physics = N
moveType = A
anim = 229 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
facep2 = 1

[State 229, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 2 + 10 * var(40)
channel = 0

[State 229, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 229, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 110, 0

[State 229, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 229, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = 11.1731843575

[State 229, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1 && Vel x > 1.11731843575
x = -1.04748603352

[State 229, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) > 1 && Vel x <= 1.11731843575
x = 0

[State 229, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yaccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 42), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 229, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.52547201545, -11.0509440309), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yaccel = 0.439453125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 229, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 229, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<STANDING FAR LIGHT KICK>==========
[StateDef 230]
type = S
physics = S
moveType = A
anim = 230 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 230, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 0, 1) + 10 * var(40)
channel = 0

[State 230, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 3
channel = 1

[State 230, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = 72 * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animtype = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -99
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 230, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 230 + 10000 * (var(40) = [1, 2])
elem = 4
ignoreHitPause = 1

[State 230, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 230, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<STANDING CLOSE LIGHT KICK>==========
[StateDef 235]
type = S
physics = S
moveType = A
anim = 235 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 235, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 0, 1) + 10 * var(40)
channel = 0

[State 235, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 3
channel = 1

[State 235, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 28, 21) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 28, 21))), 0
getPower = 72 * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animtype = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -33
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 235, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 235 + 10000 * (var(40) = [1, 2])
elem = 4
ignoreHitPause = 1

[State 235, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 235, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<STANDING FAR MEDIUM KICK>==========
[StateDef 240]
type = S
physics = S
moveType = A
anim = 240 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
faceP2 = 1

[State 240, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 240, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 4
channel = 1

[State 240, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 56, 63) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 56, 63))), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -99
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 240, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 240 + 10000 * (var(40) = [1, 2])
elem = 4
ignoreHitPause = 1

[State 240, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 240, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<STANDING CLOSE MEDIUM KICK>==========
[StateDef 245]
type = S
physics = S
moveType = A
anim = 245 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
faceP2 = 1

[State 245, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 245, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 4
channel = 1

[State 245, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 56, 63) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 56, 63))), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 66), var(36) := -81
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 245, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 245 + 10000 * (var(40) = [1, 2])
elem = 4
ignoreHitPause = 1

[State 245, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 245 + 10000 * (var(40) = [1, 2])
elem = 5
ignoreHitPause = 1

[State 245, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 245, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<SENPU KYAKU>==========
[StateDef 248]
type = S
physics = S
moveType = A
anim = 248 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
faceP2 = 1

[State 248, Jump sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 40, 0
channel = 3

[State 248, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Senpuu Kyaku"
posType = P1
ownPal = 1

[State 248, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 248, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 1
x = 3.77094972067
y = -5

[State 248, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1
y = 0.5859375

[State 248, Voice]
type = PlaySnd
trigger1 = AnimElem = 7 && Random < 350
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 248, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1, 4
channel = 1

[State 248, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 8
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
guard.slideTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 248, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 248, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 249


;Landing
[StateDef 249]
type = S
anim = 249 + 10000 * (var(40) = [1, 2])
physics = N
moveType = I
velSet = 0, 0

[State 249, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 249, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 249, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 249, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<STANDING FAR HEAVY KICK>==========
[StateDef 250]
type = S
physics = S
moveType = A
anim = 250 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
faceP2 = 1

[State 250, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 250, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 1

[State 250, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.52547201545, -11.0509440309), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 40), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 250, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4 && !MoveReversed && !MoveContact
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 77, 91) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 77, 91))), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.52547201545, -11.0509440309), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 68), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 250, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<KIKOKURETSUZAN>==========
[StateDef 251]
type = S
physics = S
moveType = A
anim = 250 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
faceP2 = 1

[State 251, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 251, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 5
channel = 1

[State 251, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.46927374302, -6.5625
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 68), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 251, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 251, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<STANDING CLOSE HEAVY KICK>==========
[StateDef 255]
type = S
physics = S
moveType = A
anim = 255 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
faceP2 = 1

[State 255, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 255, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 1

[State 255, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 56, 35) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 56, 35))), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.52547201545, -11.0509440309), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48

[State 255, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 255 + 10000 * (var(40) = [1, 2])
elem = 4
ignoreHitPause = 1

[State 255, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 35, 63) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 35, 63))), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.52547201545, -11.0509440309), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48

[State 255, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 255, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<SENHA KASSATSU>==========
[StateDef 300]
type = S
physics = S
moveType = A
anim = 300 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
facep2 = 1

[State 300, Reset Senha Kassatsu Strength]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 300, Senha Kassatsu Strength]
type = VarSet
trigger1 = AnimElemTime(3) = 24
var(10) = 1

[State 300, ChangeAnim]
type = ChangeAnim
triggerAll = AnimElemTime(3) > 5 && AnimElemTime(4) < 0
trigger1 = !NumExplod(90000221) && !AILevel
trigger2 = (MoveReversed || P2MoveType = A || P2BodyDist x < 25) && AILevel
value = 300 + 10000 * (var(40) = [1, 2])
elem = 4
ignoreHitPause = 1
persistent = 0

[State 300, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 730, 1 + 10 * var(40)
channel = 0

[State 300, Voice]
type = PlaySnd
trigger1 = AnimElem = 6 && !var(10)
value = 300, 0 + 10 * var(40)
channel = 0

[State 300, Voice]
type = PlaySnd
trigger1 = AnimElem = 6 && var(10)
value = 300, 1 + 10 * var(40)
channel = 0

[State 300, Woosh]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 2
channel = 1

[State 300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5 || AnimElem = 6 || AnimElem = 7
x = 16.0893854749

[State 300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 12 || AnimElem = 13 || AnimElem = 14
x = 8.93854748603

[State 300, Auto Guard]
type = ReversalDef
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(4) < 0
reversal.attr = SCA, NA, SA
pauseTime = 12, 18
sparkNo = -1 + 0 * (var(33) := 8001)
sparkXY = -10 + 0 * (var(35) := 44), (var(36) := -65)
hitSound = S3, 0
numHits = 0

[State 300, HitDef: Normal]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20)) && !var(10)
trigger1 = AnimElem = 7
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(9), -4.46927374302, ifElse(var(20), -5.52547201545, -11.0509440309)), ifElse(var(9), -6.5625, 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse(var(9), 1, 0)
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
forceStand = 1

[State 300, HitDef: Charged]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20)) && var(10) && !var(9)
trigger1 = AnimElem = 7
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
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
ground.velocity = -4.46927374302, -6.5625
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
forceStand = 1

[State 300, HitDef: Charged CounterHit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20)) && var(10) && var(9)
trigger1 = AnimElem = 7
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -7.96875
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -7.96875
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
forceStand = 1

[State 300, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 300 + 10000 * (var(40) = [1, 2])
elem = 8
ignoreHitPause = 1

[State 300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
movetype = I

[State 300, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 300, Dash Forwards]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(7) > 0 && (MoveHit || MoveGuarded) && var(10)
trigger1 = !AILevel
;command = "FF"
trigger1 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001016)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001064))
trigger2 = AILevel && !var(14) && (MoveHit || MoveGuarded)
var(14) = 110

[State 300, Dash Backward]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(7) > 0 && (MoveHit || MoveGuarded) && var(10)
trigger1 = !AILevel
;command = "BB"
trigger1 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001064)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001016))
trigger2 = AILevel && !var(14) && (MoveHit || MoveGuarded)
var(14) = 105

[State 300, Followup]
type = ChangeState
trigger1 = var(14) = [105, 110]
trigger1 = AnimElemTime(7) > 0
value = var(14)

[State 300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<ENHANCED SENHA KASSATSU>==========
[StateDef 310]
type = S
physics = N
moveType = A
anim = 310 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
facep2 = 1

[State 310, Reset Senha Kassatsu Strength]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 310, Senha Kassatsu Strength]
type = VarSet
trigger1 = AnimElemTime(3) = 18
var(10) = 1

[State 310, ChangeAnim]
type = ChangeAnim
triggerAll = AnimElemTime(3) > 0 && AnimElemTime(4) < 0
trigger1 = !NumExplod(90000221) && !AILevel
trigger2 = (MoveReversed || P2MoveType = A || P2BodyDist x < 25) && AILevel
value = 310 + 10000 * (var(40) = [1, 2])
elem = 4
ignoreHitPause = 1
persistent = 0

[State 310, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 730, 1 + 10 * var(40)
channel = 0

[State 310, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110, 0

[State 310, Dust Helper]
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

[State 310, Voice]
type = PlaySnd
trigger1 = AnimElem = 6 && !var(10)
value = 310, 0 + 10 * var(40)
channel = 0

[State 310, Voice]
type = PlaySnd
trigger1 = AnimElem = 6 && var(10)
value = 310, 1 + 10 * var(40)
channel = 0

[State 310, Woosh]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 2
channel = 1

[State 310, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 310, 5 + var(10)
channel = 3

[State 310, Senha Kassatsu Visual Effect]
type = Explod
trigger1 = AnimElem = 7
ID = 10313
anim = 10313
bindTime = 8
sprPriority = 3
posType = P1
pos = 80, -66
scale = 0.5,ifElse(var(10), 0.5, 0.25)
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 310, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 1
x = ifElse(var(10), 16.7597765363, 13.4078212291)

[State 310, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 310, Auto Guard]
type = ReversalDef
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(4) < 0
reversal.attr = SCA, NA, SA
pauseTime = 12, 18
sparkNo = -1 + 0 * (var(33) := 8001)
sparkXY = -10 + 0 * (var(35) := 44), (var(36) := -65)
hitSound = S3, 0
numHits = 0

[State 310, HitDef: Normal]
type = HitDef
trigger1 = !var(16) && var(15) < 1 && !var(10)
trigger1 = AnimElem = 7
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 15
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -3.35195530726, -7.34375
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
forceStand = 1

[State 310, HitDef: Charged]
type = HitDef
trigger1 = !var(16) && var(15) < 1 && var(10)
trigger1 = AnimElem = 7
ID = 310
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 140 < 7, 7, fvar(11) * 140)), 20
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(56), -3.35195530726, -4.2503630888), ifElse(var(56), -7.34375, 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse(var(56), 1, 0)
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
forceStand = 1

[State 310, Senha Kassatsu Crumple Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(310)
var(56) = 1
persistent = 0

[State 310, TargetDrop]
type = TargetDrop
triggerAll = !var(56)
trigger1 = NumTarget(310) > 1
ID = 310
keepOne = 1
excludeID = 310
ignoreHitPause = 1

[State 310, TargetState]
type = TargetState
triggerAll = !var(56)
trigger1 = MoveHit && NumTarget(310)
trigger1 = !(Target(310), Time) && !(Target(310), StateType = A)
value = 5450
ID = 310
ignoreHitPause = 1

[State 310, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
movetype = I

[State 310, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<CROUCHING LIGHT PUNCH>==========
[StateDef 400]
type = C
physics = C
moveType = A
anim = 400 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 400, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 0, 1) + 10 * var(40)
channel = 0

[State 400, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 0
channel = 1

[State 400, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getPower = 72 * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 59), var(36) := -51
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 400, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 400 + 10000 * (var(40) = [1, 2])
elem = 3
ignoreHitPause = 1

[State 400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 400, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1



;===========<CROUCHING MEDIUM PUNCH>==========
[StateDef 410]
type = C
physics = C
moveType = A
anim = 410 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
faceP2 = 1

[State 410, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 410, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 1
channel = 1

[State 410, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 56, 63) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 56, 63))), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 410, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 410 + 10000 * (var(40) = [1, 2])
elem = 4
ignoreHitPause = 1

[State 410, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 410, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1



;===========<CROUCHING HEAVY PUNCH>==========
[StateDef 420]
type = C
physics = C
moveType = A
anim = 420 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
faceP2 = 1

[State 420, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 420, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 420, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 77, 84) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 77, 84))), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.52547201545, -11.0509440309), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -7.96875
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 51), var(36) := -74
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 420, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4 && !MoveReversed && !MoveContact
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.52547201545, -11.0509440309), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 21), var(36) := -118
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
forceStand = 1

[State 420, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 420 + 10000 * (var(40) = [1, 2])
elem = 5
ignoreHitPause = 1

[State 420, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 420, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1



;===========<CROUCHING LIGHT KICK>==========
[StateDef 430]
type = C
physics = C
moveType = A
anim = 430 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 430, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 0, 1) + 10 * var(40)
channel = 0

[State 430, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 3
channel = 1

[State 430, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getPower = 72 * !var(20) * !var(50), 36 * !var(20) * !var(50)
givepower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -2
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 430, ChangeAnimElem]
type  = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 430 + 10000 * (var(40) = [1, 2])
elem = 3
ignoreHitPause = 1

[State 430, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 430, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1



;===========<CROUCHING MEDIUM KICK>==========
[StateDef 440]
type = C
physics = C
moveType = A
anim = 440 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
faceP2 = 1

[State 440, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 440, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 4
channel = 1

[State 440, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 49, 56) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 49, 56))), 0
getPower = ifElse(!var(13),144,72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 71), var(36) := -4
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 440, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 440 + 10000 * (var(40) = [1, 2])
elem = 4
ignoreHitPause = 1

[State 440, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 440, End]
type = Changestate
trigger1 = !AnimTime
value = 11
ctrl = 1



;===========<CROUCHING HEAVY KICK>==========
[StateDef 450]
type = C
physics = C
moveType = A
anim = 450 + 10000 * var(40)
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
faceP2 = 1

[State 450, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 450, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 1

[State 450, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
ID = 450
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 84, 91) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 84, 91))), 0
getpower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givepower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Trip
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.11731843575, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.59814453125
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 73), var(36) := -5
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 450, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 450 + 10000 * var(40)
elem = 4
ignoreHitPause = 1

[State 450, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(450) > 1
ID = 450
keepOne = 1
excludeID = 450
ignoreHitPause = 1

[State 450, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(450)
trigger1 = !(Target(450), Time)
value = 50450
ID = 450
ignoreHitPause = 1

[State 450, StateTypeSet: Idle]
type = StateTypeset
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 450, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1



;===========<JUMPING LIGHT PUNCH>==========
[StateDef 600]
type = A
physics = N
moveType = A
anim = 600 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 600, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 200
value= 4, ifElse(Random < 500, 0, 1) + 10 * var(40)
channel = 0

[State 600, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 0
channel = 1

[State 600, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 35, 42) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 35, 42))), 0
getPower = 72 * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -64
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 600, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 600 + 10000 * (var(40) = [1, 2])
elem = 4
ignoreHitPause = 1

[State 600, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 600, Gravity]
type = Gravity
trigger1 = var(2) > 1

[State 600, VelAdd]
type = VelAdd
triggerAll = vel x
trigger1 = var(2) > 1
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 600, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;===========<NEUTRAL JUMPING MEDIUM PUNCH>==========
[StateDef 610]
type = A
physics  = N
moveType = A
anim = 610 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)

[State 610, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 350
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 610, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 1
channel = 1

[State 610, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 49, 70) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 49, 70))), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -61
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 610, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 610 + 10000 * (var(40) = [1, 2])
elem = 5
ignoreHitPause = 1

[State 610, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 610, Gravity]
type = Gravity
trigger1 = var(2) > 1

[State 610, VelAdd]
type = VelAdd
triggerAll = vel x
trigger1 = var(2) > 1
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 610, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;===========<JUMPING MEDIUM PUNCH (SHADOW)>==========
[StateDef 611]
type = A
physics  = N
moveType = A
anim = 611 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)

[State 611, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 350
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 611, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 1
channel = 1

[State 611, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
ID = 611
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -89
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 611, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 611 + 10000 * (var(40) = [1, 2])
elem = 4
ignoreHitPause = 1

[State 611, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(51) && NumTarget(611)
var(15) = 0

[State 611, VarAdd]
type = VarAdd
trigger1 = MoveHit && NumTarget(611)
var(51) = 1
persistent = 0

[State 611, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 611, Gravity]
type = Gravity
trigger1 = var(2) > 1

[State 611, VelAdd]
type = VelAdd
triggerAll = vel x
trigger1 = var(2) > 1
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 611, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;===========<ANGLED JUMPING MEDIUM PUNCH>==========
[StateDef 615]
type = A
physics  = N
moveType = A
anim = 615 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)

[State 615, Voice]
type = PlaySnd
trigger1 = !Time && Random < 350
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 615, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 1
channel = 1

[State 615, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
ID = 615
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 28, 42) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 28, 42))), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -7.96875
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -92
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 615, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(51) && NumTarget(615)
var(15) = 0

[State 615, VarAdd]
type = VarAdd
trigger1 = MoveHit && NumTarget(615)
var(51) = 1
persistent = 0

[State 615, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -7.96875
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 22), var(36) := -132
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 615, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 615 + 10000 * (var(40) = [1, 2])
elem = 5
ignoreHitPause = 1

[State 615, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 615, Gravity]
type = Gravity
trigger1 = var(2) > 1

[State 615, VelAdd]
type = VelAdd
triggerAll = vel x
trigger1 = var(2) > 1
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 615, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;===========<JUMPING HEAVY PUNCH>==========
[StateDef 620]
type = A
physics = N
moveType = A
anim = 620 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)

[State 620, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 620, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 620, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 77, 84) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 77, 84))), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animtype = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 4 * var(9)
ground.slideTime = 12 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -61
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 620, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 620 + 10000 * (var(40) = [1, 2])
elem = 5
ignoreHitPause = 1

[State 620, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 620, Gravity]
type = Gravity
trigger1 = var(2) > 1

[State 620, VelAdd]
type = VelAdd
triggerAll = vel x
trigger1 = var(2) > 1
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 620, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;===========<NEUTRAL JUMPING LIGHT KICK>==========
[StateDef 630]
type = A
physics = N
moveType = A
anim = 630 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 630, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value= 4, ifElse(Random < 500, 0, 1) + 10 * var(40)
channel = 0

[State 630, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 3
channel = 1

[State 630, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 28, 35) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 28, 35))), 0
getPower = 72 * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -106
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 630, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 630 + 10000 * (var(40) = [1, 2])
elem = 3
ignoreHitPause = 1

[State 630, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 630, Gravity]
type = Gravity
trigger1 = var(2) > 1

[State 630, VelAdd]
type = VelAdd
triggerAll = vel x
trigger1 = var(2) > 1
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 630, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;===========<ANGLED JUMPING LIGHT KICK>==========
[StateDef 635]
type = A
physics = N
moveType = A
anim = 635 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 635, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value= 4, ifElse(Random < 500, 0, 1) + 10 * var(40)
channel = 0

[State 635, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 3
channel = 1

[State 635, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 28, 35) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 28, 35))), 0
getPower = 72 * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -41
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 635, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 635 + 10000 * (var(40) = [1, 2])
elem = 3
ignoreHitPause = 1

[State 635, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 635, Gravity]
type = Gravity
trigger1 = var(2) > 1

[State 635, VelAdd]
type = VelAdd
triggerAll = vel x
trigger1 = var(2) > 1
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 635, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;===========<NEUTRAL JUMPING MEDIUM KICK>==========
[StateDef 640]
type = A
physics = N
moveType = A
anim = 640 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)

[State 640, Voice]
type = PlaySnd
trigger1 = !Time && Random < 350
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 640, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 4
channel = 1

[State 640, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 49, 63) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 49, 63))), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -106
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 640, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 640 + 10000 * (var(40) = [1, 2])
elem = 3
ignoreHitPause = 1

[State 640, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 640, Gravity]
type = Gravity
trigger1 = var(2) > 1

[State 640, VelAdd]
type = VelAdd
triggerAll = vel x
trigger1 = var(2) > 1
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 640, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;===========<JUMPING MEDIUM KICK (SHADOW)>==========
[StateDef 641]
type = A
physics = N
moveType = A
anim = 641 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)

[State 641, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 641, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 4
channel = 1

[State 641, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -49
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 641, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 641 + 10000 * (var(40) = [1, 2])
elem = 4
ignoreHitPause = 1

[State 641, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 641, Gravity]
type = Gravity
trigger1 = var(2) > 1

[State 641, VelAdd]
type = VelAdd
triggerAll = vel x
trigger1 = var(2) > 1
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 641, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;===========<ANGLED JUMPING MEDIUM KICK>==========
[StateDef 645]
type = A
physics = N
moveType = A
anim = 645 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)

[State 645, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 645, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 4
channel = 1

[State 645, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 49, 56) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 49, 56))), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 59), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 645, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 645 + 10000 * (var(40) = [1, 2])
elem = 4
ignoreHitPause = 1

[State 645, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 645, Gravity]
type = Gravity
trigger1 = var(2) > 1

[State 645, VelAdd]
type = VelAdd
triggerAll = vel x
trigger1 = var(2) > 1
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 645, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;===========<TENMA KUJIN KYAKU>==========
[StateDef 648]
type = A
physics = N
moveType = A
anim = 648 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)

[State 648, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 0 + 10 * var(40)
channel = 0

[State 648, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 4
channel = 1

[State 648, PosFreeze]
type = PosFreeze
trigger1 = AnimElemTime(3) < 0

[State 648, VelSet]
type = VelSet
trigger1 = !Time
x = 4.46927374302
y = 5.9375

[State 648, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airGuard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.79131957528, -5.58263915056), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.79131957528, -5.58263915056)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -25
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 648, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 649


;Landing
[StateDef 649]
type = S
anim = 649 + 10000 * (var(40) = [1, 2])
physics = N
moveType = I
velSet = 0,0
moveHitPersist = 1

[State 649, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 649, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 649, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 649, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<NEUTRAL JUMPING HEAVY KICK>==========
[StateDef 650]
type = A
physics = N
moveType = A
anim = 650 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)

[State 650, Voice]
type = PlaySnd
trigger1 = !Time && Random < 500
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 650, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 5
channel = 1

[State 650, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 70, 91) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 70, 91))), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 4 * var(9)
ground.slideTime = 12 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 26), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 650, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3 && !MoveReversed && !MoveContact
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 70, 84) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 70, 84))), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 4 * var(9)
ground.slideTime = 12 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 59), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 650, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 650, Gravity]
type = Gravity
trigger1 = var(2) > 1

[State 650, VelAdd]
type = VelAdd
triggerAll = vel x
trigger1 = var(2) > 1
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 650, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;===========<ANGLED JUMPING HEAVY KICK>==========
[StateDef 655]
type = A
physics = N
moveType = A
anim = 655 + 10000 * var(40)
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)

[State 655, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 1, 2) + 10 * var(40)
channel = 0

[State 655, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 1

[State 655, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((var(40) = [1, 2]), 70, 84) < 7, 7, fvar(11) * ifElse((var(40) = [1, 2]), 70, 84))), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 4 * var(9)
ground.slideTime = 12 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 59), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 655, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 655 + 10000 * (var(40) = [1, 2])
elem = 4
ignoreHitPause = 1

[State 655, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 655, Gravity]
type = Gravity
trigger1 = var(2) > 1

[State 655, VelAdd]
type = VelAdd
triggerAll = vel x
trigger1 = var(2) > 1
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 655, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;===========<THROW ATTEMPT>==========
[StateDef 800]
type = S
physics = S
movetype = A
anim = 800 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(50)
faceP2 = 1

[State 800, Button Detect + store facing]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse(command = "kk", 2, 1) * Facing

[State 800, Button Detect (AI) + store facing]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(Random < 500, 1, 2) * Facing

[State 800, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(abs(var(10)) = 2, 801, 800) + 10000 * (var(40) = [1, 2])

[State 800, Tech Hit Reset]
type = VarSet
trigger1 = 1
var(19) = 0

[State 800, Tech Hit]
type = VarSet
trigger1 = NumEnemy
trigger1 = EnemyNear, StateType != A
trigger1 = (EnemyNear, StateNo = [0,999]) && (EnemyNear, StateNo != [100,119]) && (EnemyNear, StateNo != [200,799])
var(19) = ifElse(abs(var(10)) = 2, 5, 7)

[State 800, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 800, HitDef: PP Throw]
type = HitDef
trigger1 = AnimElem = 3 && abs(var(10)) = 1
trigger1 = P2BodyDist x < 28
trigger1 = !var(38)
attr = S, NT
hitFlag = M-
priority = 1, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 +0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 1
numHits = 0
p1StateNo = ifElse(ifElse(!NumExplod(92828282) && !NumExplod(92468246), command = "holdback", command = "holdfwd"), 810, 805)

[State 800, HitDef: KK Throw]
type = HitDef
trigger1 = AnimElem = 3 && abs(var(10)) = 2
trigger1 = !var(38)
trigger1 = P2BodyDist x < 28
attr = S, NT
hitFlag = M-
priority = 1, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 1
numhits = 0
p1StateNo = ifElse(ifElse(!NumExplod(92828282) && !NumExplod(92468246), command = "holdback", command = "holdfwd"), 820, 805)

[State 800, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 4
value = 800, 0 + 10 * var(40)
channel = 0

[State 800, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 0
channel = 1

[State 800, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 800, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<THROW SWITCHING SIDES>==========
[StateDef 805]
type = S
moveType = A
physics = S
anim = 805 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 0

[State 805, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 806

[State 805, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 805, Width]
type = Width
trigger1 = 1
edge = 24, 24
ignoreHitPause = 1

[State 805, Turn]
type = Turn
trigger1 = AnimElem = 4

[State 805, Facing]
type = TargetFacing
trigger1 = 1
value = -1

[State 805, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback") && Target, command != "holdup" && Target, command != "holddown"
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 805, Tech Hit Countdown]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 805, TargetBind 1]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 30, 0

[State 805, TargetBind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger2 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 15, 0

[State 805, TargetBind 3]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 0, 0

[State 805, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(2) < 0 || AnimElemTime(5) >= 0
value = 1

[State 805, SprPriority 2]
type = SprPriority
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
value = -1

[State 805, End]
type = ChangeState
trigger1 = !NumTarget
value = 0
ctrl = 1

[State 805, End]
type = ChangeState
trigger1 = AnimElemTime(5) >= 0
value = ifElse(abs(var(10)) = 2, 820, 810)



;===========<THROW SWITCHING SIDES (TARGET)>==========
[StateDef 806]
type = S
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 806, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 806, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 806

[State 806, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 806, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1
ignoreHitPause = 1

[State 806, SelfState]
type = SelfState
trigger1 = Time >= 60
value = ifElse(pos y < 0, 5040, 0)
ctrl = 1



;===========<SEOI NAGE>==========
[Statedef 810]
type = S
physics = N
moveType = A
anim = 810 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 810, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 810, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 810, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 815

[State 810, Width]
type = Width
trigger1 = AnimElemTime(6) < 0
edge = 64,0

[State 810, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 31.5, 0

[State 810, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 13.5, -5.5

[State 810, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 3, -85

[State 810, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = -54, -72

[State 810, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = -82, -58.5

[State 810, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 1
pos = -99, -57.5

[State 810, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 6
value = 816

[State 810, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 7
value = floor(ifElse(ifElse((var(40) = [1, 2]), 119, 126) * fvar(11) < 7, -7, -ifElse((var(40) = [1, 2]), 119, 126) * fvar(11)))

[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 7
value = 36

[State 810, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 7 && !var(20) * !var(50)
value = 72

[State 810, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 7
value = 1

[State 810, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 7
var(13) = 1

[State 810, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 7
var(15) = 1
ignoreHitPause = 1

[State 810, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 7
var(16) = 1
ignoreHitPause = 1

[State 810, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 4 + 10 * var(40)
channel = 0

[State 810, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 1

[State 810, Turn]
type = Turn
trigger1 = !AnimTime

[State 810, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<SEOI NAGE (TARGET)>==========
;Being Thrown
[StateDef 815]
type = A
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 815

[State 815, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1

[State 815, SprPriority]
type = SprPriority
trigger1 = AnimElem = 3
value = 2

[State 815, SprPriority]
type = SprPriority
trigger1 = AnimElem = 4
value = 0


;After Throw
[StateDef 816]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 816, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 816, VelSet]
type = VelSet
trigger1 = Time = 1
x = 5.58659217877
y = -5.78125

[State 816, VelAdd]
type = VelAdd
Trigger1 = Time > 1
y = 0.5126953125

[State 816, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 816, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 816, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;===========<TOMOE NAGE>==========
[Statedef 820]
type = S
physics = N
moveType = A
anim = 820 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 820, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 820, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 820, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 820, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 825

[State 820, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(8) < 0
edge = 0,64
ignoreHitPause = 1

[State 820, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 31.5, 0

[State 820, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 29, 0

[State 820, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 22, -70.5

[State 820, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = -20, -64

[State 820, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = -103, -53.5

[State 820, TargetBind 6]
type = TargetBind
trigger1 = NumTarget && AnimElem = 6
pos = -113.5, -52.5

[State 820, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 6
value = 826

[State 820, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(6) = 1
value = floor(ifElse(ifElse((var(40) = [1, 2]), 140, 147) * fvar(11) < 7, -7, -ifElse((var(40) = [1, 2]), 140, 147) * fvar(11)))

[State 820, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(6) = 1
value = 36

[State 820, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElemTime(6) = 1 && !var(20) * !var(50)
value = 72

[State 820, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(6) = 1
value = 1

[State 820, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(6) = 1
var(13) = 1

[State 820, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(6) = 1
var(15) = 1
ignoreHitPause = 1

[State 820, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElemTime(6) = 1
var(16) = 1
ignoreHitPause = 1

[State 820, Hitting the Floor Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2, 820

[State 820, Voice]
type = PlaySnd
trigger1 = AnimElem = 5 && var(40) != 2
value = 4, 2 + 10 * var(40)
channel = 0

[State 820, Voice]
type = PlaySnd
trigger1 = AnimElem = 5 && var(40) = 2
value = 4, 5 + 10 * var(40)
channel = 0

[State 820, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 5
channel = 1

[State 820, Turn]
type = Turn
trigger1 = !AnimTime

[State 820, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<TOMOE NAGE (TARGET)>==========
;Being Thrown
[StateDef 825]
type = A
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 825, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 825

[State 825, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 825, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1


;After Throw
[StateDef 826]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 826, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 826, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 826, VelSet]
type = VelSet
trigger1 = Time = 1
x = 4.46927374302
y = -6.5625

[State 826, VelAdd]
type = VelAdd
Trigger1 = Time > 1
y = 0.5126953125

[State 826, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 826, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 826, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;===========<THROW ESCAPED>==========
[StateDef 890]
type = S
physics = N
movetype = I
anim = 5945 + 10000 * (var(40) = [1, 2])
ctrl = 0
velset = 0, 0
sprPriority = 1

[State 890, Preserve original facing]
type = Turn
triggerAll = !Time
trigger1 = Facing = 1 && var(10) < 1
trigger2 = Facing = -1 && var(10) > -1

[State 890, TargetBind]
type = TargetBind
trigger1 = !Time && NumTarget
pos = 0,0

[State 890, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 895

[State 890, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 890, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 890, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 890, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(6) >= 0
value = 1

[State 890, SprPriority -1]
type = SprPriority
trigger1 = AnimElemTime(2) <= 0
value = -1

[State 890, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 890, VelSet]
type = VelSet
trigger1 = 1
x = -1.425
y = 0

[State 890, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5940, 0 + 10 * var(40)
channel = 0

[State 890, Escape Sound]
type = PlaySnd
trigger1 = !Time
value = 760, 0

[State 890, Throw Escape FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8000
ID = 8000
name = "Spark"
PosType = P1
pos = 0, -68
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

[State 890, End]
type = ChangeState
trigger1 = Time >= 27
value = 0
ctrl = 1


;Target Escape
[StateDef 895]
type = S
physics = N
moveType = I
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5945), 5945, 130)

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5945) && SelfAnimExist(5940)
value = 5940

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5945) && !SelfAnimExist(5940) && SelfAnimExist(5910)
value = 5910

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = Time >= 20 && Anim = 130
value = 140

[State 895, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 895, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 895, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 895, VelSet]
type = VelSet
trigger1 = 1
x = -1.425
y = 0

[State 895, End]
type = SelfState
trigger1 = Time >= 27
value = 0
ctrl = 1