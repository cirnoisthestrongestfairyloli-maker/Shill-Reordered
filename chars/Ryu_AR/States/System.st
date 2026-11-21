; ________________________________________________
;| Ryu by KarmaCharmeleon			|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<SYSTEM STATES>========================================
;==============================================================================================

;====================<STANDING>====================
[StateDef 0]
type = S
physics = S
moveType = I
velSet = 0,0
sprPriority = 0

[State 0, Remove Explods]
type = RemoveExplod
trigger1 = IsHelper

[State 0, Destroy Helpers]
type = DestroySelf
trigger1 = IsHelper

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != (0 + 2 * (var(40) = 1) + 3 * (var(40) = 2)) && Anim != (5 + 2 * (var(40) = [1, 2]))
trigger2 = Anim = (5 + 2 * (var(40) = [1, 2])) && !AnimTime
value = 0 + 2 * (var(40) = 1) + 3 * (var(40) = 2) + 4 * (var(40) = 3)

[State 0, Skywalker]
type = ChangeState
triggerall = pos y < 0
trigger1 = !NumEnemy
trigger2 = NumEnemy = 1
trigger2 = (Enemy, Name = "M -NES Game 1" + Enemy, Name = "M -NES Game 2" + Enemy, Name = "M -GB Game 1" + Enemy, AuthorName = "Bane84") < 2
trigger3 = Numenemy >= 2
trigger3 = (Enemy(0), Name = "M -NES Game 1" + Enemy(0), Name = "M -NES Game 2" + Enemy(0), Name = "M -GB Game 1" + Enemy(0), AuthorName = "Bane84") < 2
trigger3 = (Enemy(1), Name = "M -NES Game 1" + Enemy(1), Name = "M -NES Game 2" + Enemy(1), Name = "M -GB Game 1" + Enemy(1), AuthorName = "Bane84") < 2
value = 50

[State 0, Dead]
type = ChangeState
trigger1 = !Alive
value = 5050



;====================<CROUCHING>====================
;Stand to Crouch
[StateDef 10]
type = C
physics = C
moveType = I
velSet = 0,0
sprPriority = 0

[State 10, Reversed Commands: change to jumping]
type = ChangeState
trigger1 = !Time
trigger1 = (NumExplod(92828282) || NumExplod(92468246)) && command = "holddown"
value = 40

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = (12 + 5 * (var(40) = [1, 2]))
value = 10 + 5 * (var(40) = [1, 2])
elem = 3 - AnimElemNo(0)

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != (10 + 5 * (var(40) = [1, 2]))
value = 10 + 5 * (var(40) = [1, 2])

[State 10, End]
type = ChangeState
trigger1 = !AnimTime
value = 11


;Crouching
[StateDef 11]
type = C
physics = C
moveType = I
anim = 11 + 5 * (var(40) = [1, 2])
velSet = 0,0
sprPriority = 0

[State 11, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = (6 + 2 * (var(40) = [1, 2])) && !AnimTime
value = 11 + 5 * (var(40) = [1, 2])


;Crouch to Stand
[StateDef 12]
type = S
physics = S
moveType = I
velSet = 0,0
sprPriority = 0

[State 12, Reversed Commands: change to "fake" crouch state]
type = ChangeState
trigger1 = !Time
trigger1 = (NumExplod(92828282) || NumExplod(92468246)) && command = "holdup"
value = 13

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = (10 + 5 * (var(40) = [1, 2]))
value = 12 + 5 * (var(40) = [1, 2])
elem = 3 - AnimElemNo(0)

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != (12 + 5 * (var(40) = [1, 2]))
value = 12 + 5 * (var(40) = [1, 2])

[State 12, End]
type = ChangeState
trigger1 = command = "holddown" && command != "holdup"
value = 10

[State 12, End]
type = ChangeState
trigger1 = !AnimTime
value = 0


;"Fake" crouch state (for reversed commands)
[StateDef 13]
type = C
physics = C
moveType = I
velSet = 0,0
sprPriority = 0
ctrl = 1

[State 13, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != (10 + 5 * (var(40) = [1, 2])) && Anim != (11 + 5 * (var(40) = [1, 2])) && Anim != (141 + 10000 * (var(40) = [1, 2]))
value = 10 + 5 * (var(40) = [1, 2])

[State 13, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = (10 + 5 * (var(40) = [1, 2])) && !AnimTime
trigger2 = Anim = (141 + 10000 * (var(40) = [1, 2])) && !AnimTime
value = 11 + 5 * (var(40) = [1, 2])



;====================<WALKING>====================
[StateDef 20]
type = S
physics = S
moveType = I
sprPriority = 0

[State 20, VelSet]
type = VelSet
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command = "holdfwd"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = command = "holdback"
x = const(velocity.walk.fwd.x)

[State 20, VelSet]
type = VelSet
trigger1 = AILevel
x = const(velocity.walk.fwd.x)

[State 20, VelSet]
type = VelSet
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command = "holdback"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = command = "holdfwd"
x = const(velocity.walk.back.x)

[State 20, ChangeAnim]
type = ChangeAnim
triggerAll = vel x > 0
trigger1 = Anim != (20 + 5 * (var(40) = [1, 2])) && Anim != (5 + 2 * (var(40) = [1, 2]))
trigger2 = Anim = (5 + 2 * (var(40) = [1, 2])) && AnimElemTime(1) >= 1
value = 20 + 5 * (var(40) = [1, 2])

[State 20, ChangeAnim]
type = ChangeAnim
triggerAll = vel x < 0
trigger1 = Anim != (21 + 5 * (var(40) = [1, 2])) && Anim != (5 + 2 * (var(40) = [1, 2]))
trigger2 = Anim = (5 + 2 * (var(40) = [1, 2])) && AnimElemTime(1) >= 1
value = 21 + 5 * (var(40) = [1, 2])



;====================<JUMPING>====================
;Jumping
[StateDef 40]
type = S
physics = S
moveType = I
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 40, Reversed Commands: change to "fake" crouch state]
type = ChangeState
trigger1 = !Time
trigger1 = (NumExplod(92828282) || NumExplod(92468246)) && command = "holdup"
value = 13

[State 40, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 40 + 10000 * (var(40) = [1, 2])

[State 40, Direction]
type = VarSet
trigger1 = !AILevel
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
sysvar(1) = ifElse(!Time, 0, ifElse(command = "holdfwd", 1, ifElse(command = "holdback", -1, sysvar(1))))

[State 40, Direction (Reversed Commands)]
type = VarSet
trigger1 = !AILevel
trigger1 = NumExplod(94646464) || NumExplod(92468246)
sysvar(1) = ifElse(!Time, 0, ifElse(command = "holdback", 1, ifElse(command = "holdfwd", -1, sysvar(1))))

[State 40, Direction (AI)]
type = VarSet
trigger1 = AILevel
sysvar(1) = ifElse(var(56), 1, ifElse((EnemyNear, MoveType != A || BackEdgeBodyDist <= 10), 1, ifElse((EnemyNear, MoveType = A), -1, 0)))

[State 40, High Jump]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse(command = "highjump", 3, 0)
var(3) = ifElse(NumExplod(90000408), 3, 0)

[State 40, High Jump (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(3) = ifElse(var(56), 0, ifElse((P2BodyDist x >= 150), 3, 0))

[State 40, High Jump]
type = VarSet
trigger1 = !Time && PrevStateNo = 100
var(3) = 3

[State 40, Low Jump]
type = VarSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && command != "holdup" && (var(3) != [1,2])
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && command != "holddown" && (var(3) != [1,2])
var(3) = ifElse((var(3) = 3 && sysvar(1)), 2, 1)

[State 40, Low Jump (AI)]
type = VarSet
trigger1 = AILevel && (var(3) != [1,2])
trigger1 = ((EnemyNear, StateType = C) && Random < 500) || var(56)
var(3) = ifElsE(var(56), ifElse(P2BodyDist x > 75, 2, 1), ifElse((var(3) = 3 && sysvar(1) && P2BodyDist x > 50), 2, 1))

[State 40, Jump Sound]
type = PlaySnd
trigger1 = !AnimTime
value = ifElse((var(3) = [2,3]), 41, 40), 0

[State 40, Dust Helper]
type = Helper
trigger1 = !AnimTime
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 40, Velocity: Normal Jump]
type = VelSet
trigger1 = !AnimTime
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = ifElse(!sysvar(1), const(velocity.jump.y), ifElse(sysvar(1) = 1, -8.75, -9.0625))

[State 40, Velocity: Low Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 1
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = 0.75 * ifElse(!sysvar(1), const(velocity.jump.y), ifElse(sysvar(1) = 1, -8.75, -9.0625))

[State 40, Velocity: Long Low Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 2
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = 0.75 * ifElse(!sysvar(1), const(velocity.jump.y), ifElse(sysvar(1) = 1, -8.75, -9.0625))

[State 40, Velocity: Long Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 3
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = ifElse(!sysvar(1), const(velocity.runjump.y), ifElse(sysvar(1) = 1, -8.75, -9.0625))

[State 40, End]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1


;In Air
[StateDef 50]
type = A
physics = N
moveType = I
sprPriority = 1

[State 50, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(!vel x , 41, ifElse(vel x > 0, 42, 43)) + 10 * (var(3) = [1,2]) + 10000 * (var(40) = [1, 2])
persistent = 0

[State 50, Assert: No Guard]
type = AssertSpecial
trigger1 = var(3) = [1,2]
flag = NoAirGuard
ignoreHitPause = 1

[State 50, Grounded Frame]
type = PosFreeze
trigger1 = Time < 1 && PrevStateNo = 40
value = 1

[State 50, Gravity]
type = Gravity
trigger1 = Time > 1 || PrevStateNo != 40

[State 50, VelAdd]
type = VelAdd
trigger1 = vel x
trigger1 = Time > 1 || PrevStateNo != 40
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 50, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 52


[StateDef 51]
type = A
physics = N
moveType = I
sprPriority = 1

[State 51, Gravity]
type = Gravity
trigger1 = Time > 0

[State 51, VelAdd]
type = VelAdd
trigger1 = vel x
trigger1 = Time >= 1 || PrevStateNo != 40
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 51, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 52


;Landing
[StateDef 52]
type = S
physics = S
moveType = I
anim = 47 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 52, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && (var(3) = 1 || var(3) = 2)
trigger1 = (PrevStateNo = [600, 699])
value = 57 + 10000 * (var(40) = [1, 2])

[State 52, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 52, CtrlSet]
type = CtrlSet
trigger1 = !Time && (PrevStateNo != [600, 699])
trigger2 = Time = 1 && Anim != (57 + 10000 * (var(40) = [1, 2]))
value = 1

[State 52, ChangeState to Guarding]
type = ChangeState
;ctrl && command = "holdback"
trigger1 = ctrl && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command = "holdfwd", command = "holdback"), ifElse(P2dist x < 0, command = "holdback", command = "holdfwd")))
trigger1 = InGuardDist && (PrevStateNo != [600, 699])
value = 120

[State 52, Assert: NoWalk]
type = AssertSpecial
trigger1 = Anim != (5 + 2 * (var(40) = [1, 2]))
flag = NoWalk
ignoreHitPause = 1

[State 52, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 52, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 52, ChangeAnim to Turning]
type = ChangeAnim
trigger1 = ctrl && P2Dist x < 0
trigger1 = Anim != (5 + 2 * (var(40) = [1, 2]))
value = 5 + 2 * (var(40) = [1, 2])

[State 52, Turn]
type = Turn
trigger1 = Anim = (5 + 2 * (var(40) = [1, 2])) && AnimElem = 1

[State 52, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;======================<RUN>===========================
[StateDef 100]
type = S
physics = N
moveType = I
anim = 100 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1

[State 100, VelSet]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, Step Sound]
type = PlaySnd
trigger1 = (AnimElem = 2 || AnimElem = 5)
value = 100, ifElse((AnimElem = 2), 0, 1)

[State 100, Jump]
type = ChangeState
triggerAll = !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command = "holdfwd" && command = "holdup"
trigger2 = NumExplod(92828282)
trigger2 = command = "holdfwd" && command = "holddown"
trigger3 = NumExplod(94646464)
trigger3 = command = "holdback" && command = "holdup"
trigger4 = NumExplod(92468246)
trigger4 = command = "holdback" && command = "holddown"
value = 40

[State 100, Jump (AI)]
type = ChangeState
trigger1 = AILevel && Random < 25
value = 40

[State 100, End]
type = ChangeState
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = !AILevel && command != "holdfwd"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = !AILevel && command != "holdback"
trigger3 = AILevel && (((EnemyNear, StateNo = 5120 || (EnemyNear, StateNo = [5200, 5201])) && ((EnemyNear, AnimTime > -15) || (P2Dist x = [0, 15]))) || ((facing = EnemyNear, facing) && P2StateType != A && P2StateType != L))
trigger4 = AILevel && InGuardDist
trigger5 = AILevel && !(EnemyNear, Alive)
value = 101


;Stop Running
[StateDef 101]
type = S
physics = N
moveType = I
anim = 101 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1

[State 101, Stopping Sound]
type = PlaySnd
trigger1 = !Time
value = 101,0

[State 101, Skid Dust]
type = Explod
trigger1 = !Time
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 101, VelAdd]
type = VelAdd
trigger1 = 1
x = -0.5964779987

[State 101, Jump]
type = ChangeState
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && command = "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && command = "holddown"
value = 40

[State 101, End]
type = ChangeState
trigger1 = !AnimTime
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
value = ifElse(command = "holddown", 10, 0)
ctrl = 1

[State 101, End (Reversed Commands)]
type = ChangeState
trigger1 = !AnimTime
trigger1 = NumExplod(92828282) || NumExplod(92468246)
value = ifElse(command = "holdup", 10, 0)
ctrl = 1



;========================<DASH BACKWARDS>==========================
[StateDef 105]
type = A
physics = N
moveType = I
velSet = 0,0
anim = 105 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1

[State 105, Back Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 105,0

[State 105, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
facing = -1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 105, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
x = 0.08729050279

[State 105, End]
type = ChangeState
trigger1 = !AnimTime
value = 106


;Stop Dashing Backwards
[StateDef 106]
type = S
physics = S
ctrl = 0
anim = 106 + 10000 * (var(40) = [1, 2])
velSet = 0,0

[State 106, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 106, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 100,1

[State 106, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprpriority = -3
postype = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 106, CtrlSet]
type = CtrlSet
trigger1 = Time >= 2
value = 1

[State 106, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=================<DASH FORWARD>=================
[StateDef 110]
type = S
physics = N
moveType = I
anim = 110 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 1

[State 110, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110,0

[State 110, Dust Helper]
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

[State 110, VarSet -> Running]
type = VarSet
trigger1 = !Time
sysvar(1) = 1

[State 110, VarSet -> Not Running]
type = VarSet
triggerAll = AnimElemTime(2) <= 0 && !AILevel
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command != "holdfwd"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = command != "holdback"
sysvar(1) = 0

[State 110, VarSet -> Not Running (AI)]
type = VarSet
triggerAll = AnimElemTime(2) <= 0 && AILevel
trigger1 = P2BodyDist x < 36
sysvar(1) = 0

[State 110, ChangeState to Running]
type = ChangeState
trigger1 = AnimElemTime(2) = 0 && sysvar(1)
value = 100

[State 110, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 7.2625698324

[State 110, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
x = -0.08729050279

[State 110, End]
type = ChangeState
trigger1 = !AnimTime
value = 111


;Stop Dashing Forward
[StateDef 111]
type = S
physics = S
ctrl = 1
anim = 111 + 10000 * (var(40) = [1, 2])
velSet = 0,0

[State 111, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 111, Dash End Sound]
type = PlaySnd
trigger1 = !Time
value = 100,0

[State 111, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 111, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;====================<DODGE>====================
[StateDef 700]
type = S
physics = S
moveType = I
anim = 700 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = -2

[State 700, Voice]
type = PlaySnd
trigger1 = !Time && !var(40)
value = 4, 0
channel = 0

[State 700, Voice]
type = PlaySnd
trigger1 = !Time && (var(40) = [1, 2])
value = 710, 11 + 10 * (var(40) = 2)
channel = 0

[State 700, Dodge Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 3
channel = 1

[State 700, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 700, HitBy]
type = HitBy
trigger1 = AnimElemTime(4) < 0
value = SCA, AT
time = 1

[State 700, Attack]
type = ChangeState
trigger1 = !AILevel && Time = [15, 25]
;command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220) || NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
;ifElse((command = "x" || command = "y" || command = "z"), 220, 245)
value = ifElse((NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)), ifElse((var(40) = [1, 2]), 221, 220), 245)

[State 700, Attack (AI)]
type = ChangeState
trigger1 = AILevel && (Time = [15, 25]) && NumEnemy
trigger1 = (EnemyNear, MoveType != A) && (P2BodyDist x = [-60, 60]) && (P2Dist y >= -60)
value = ifElse(Random < 333, ifElse((var(40) = [1, 2]), 221, 220), 245)

[State 700, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;================<ROLL FORWARD>================
[StateDef 710]
type = S
physics = N
moveType = I
anim = 710 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 710, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 710, HitBy]
type = HitBy
trigger1 = AnimElemTime(9) < 0
value = SCA, AT
time = 1

[State 710, Voice]
type = PlaySnd
trigger1 = !Time
value = 710, ifElse(Random < 500, 0, 1) + 10 * var(40)
channel = 0

[State 710, Roll Sound]
type = PlaySnd
trigger1 = !Time
value = 110, 0
channel = 1

[State 710, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 5.02793296089

[State 710, VelSet]
type = VelSet
trigger1 = AnimElem = 9
x = 0

[State 710, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===============<ROLL BACKWARDS>===============
[StateDef 715]
type = S
physics = N
moveType = I
anim = 715 + 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 715, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 715, HitBy]
type = HitBy
trigger1 = AnimElemTime(9) < 0
value = SCA,AT
time = 1

[State 715, Voice]
type = PlaySnd
trigger1 = !Time
value = 710, ifElse(Random < 500, 0, 1) + 10 * var(40)
channel = 0

[State 715, Roll Sound]
type = PlaySnd
trigger1 = !Time
value = 110,0
channel = 1

[State 715, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = -4.46927374302

[State 715, VelSet]
type = VelSet
trigger1 = AnimElem = 9
x = 0

[State 715, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;==========<POWER CHARGE>==========
[StateDef 730]
type = S
physics = S
moveType = I
anim = 730 + 10000 * (var(40) = [1, 2])
velSet = 0,0
ctrl = 0

[State 730, Hadou charge]
type = VarAdd
trigger1 = fvar(20) < 1000
fvar(20) = 14   ;Abstract Reordered: X charges the Hadou gauge

[State 730, Voice]
type = PlaySnd
trigger1 = !Time
value = 730, 1 + 10 * var(40)
channel = 0

[State 730, Character Flash]
type = PalFX
trigger1 = 1
time = 1
add = 0, 40 + ceil(sin(Time / 6.0 * pi) * 40), 90 + ceil(sin(Time / 6.0 * pi) * 90)

[State 730, Power Charge Helper]
type = Helper
trigger1 = !NumHelper(8330)
helperType = Normal
stateNo = 8330
ID = 8330
name = "Power Charge"
posType = P1
pos = -20, 0
pauseMoveTime = 65535
superMoveTime = 65535
ownPal = 1

[State 730, Particles]
type = Helper
trigger1 = !NumHelper(8331)
helperType = Normal
stateNo = 8331
ID = 8331
name = "Particles"
postype = P1
pauseMoveTime = 65535
superMoveTime = 65535
ownPal = 1

[State 730, End]
type = ChangeState
trigger1 = fvar(20) >= 1000 || RoundState != 2
trigger2 = command != "ar_holdx" && Time >= 8
value = 731
ctrl = 1


;Power Charge End
[StateDef 731]
type = S
physics = S
moveType = I
anim = 731 + 10000 * (var(40) = [1, 2])
velSet = 0,0
ctrl = 1

[State 731, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0

[State 731, Full Power Voice]
type = PlaySnd
triggerAll = !var(40) || var(40) = 2
trigger1 = !Time && fvar(20) >= 1000
value = 731, 0 + 10 * var(40)
channel = 0
persistent = 0

[State 731, Full Power Voice]
type = PlaySnd
triggerAll = var(40) = 1
trigger1 = 0
value = 196, 10
channel = 0
persistent = 0

[State 730, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;====================<ZERO COUNTER>====================
[StateDef 750]
type = S
physics = S
moveType = I
anim = 750
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = -1000
faceP2 = 1

[State 750, Button]
type = VarSet
trigger1 = !Time && !AILevel
;(command = "412k")
var(10) = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
ignoreHitPause = 1

[State 750, Button (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2StateType = A), 0, ifElse((P2StateType = C), 1, ifElse(Random < 500, 0, 1)))
ignoreHitPause = 1

[State 750, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 750, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 750, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, ifElse(Random < 500, 0, 1) + 10 * var(40)
channel = 0

[State 750, Zero Counter FX Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8350
ID = 8350
name = "Zero Counter"
posType = P1
pos = 20, -65
superMoveTime = 255
ownPal = 1

[State 750, SuperPause]
type = SuperPause
trigger1 = !Time
time = 15
moveTime = 15
p2DefMul = 1
anim = -1
sound = s750,0
darken = 0

[State 750, End]
type = ChangeState
trigger1 = Time >= 15
value = ifElse(var(10) = 1, 2910, 2900)



;====================<PARRY>====================
;Standing Parry
[StateDef 760]
type = S
physics = S
moveType = I
anim = 760 + 10000 * (var(40) = [1, 2])
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = 78 * !var(50)
faceP2 = 1

[State 760, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 760, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
endCmdBufTime = 15
pauseBg = 0

[State 760, Stop]
type = PosFreeze
trigger1 = 1
value = 1

[State 760, No Walking]
type = VarSet
trigger1 = 1
var(26) = 7

[State 760, Voice]
type = PlaySnd
trigger1= !Time
value = 4, ifElse(Random < 500, 0, 1) + 10 * var(40)
channel = 0

[State 760, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760, 0
channel = 1

[State 760, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinadd = 0,-64,-255,60
time = 15

[State 760, FX]
type = Explod
trigger1 = !Time
anim = 8360
sprPriority = 5
posType = P1
pos = ifElse((var(40) = [1, 2]), 36, 32), -ifElse((var(40) = [1, 2]), 65, 72)
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5,0.5
ownPal = 1

[State 760, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 760, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Crouching Parry
[StateDef 761]
type = C
physics = C
moveType = I
anim = 761
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = 78 * !var(50)
faceP2 = 1

[State 761, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 761, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
endCmdBufTime = 15
pauseBg = 0

[State 761, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 761, No Walk]
type = VarSet
trigger1 = 1
var(26) = 7

[State 761, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, ifElse(Random < 500, 0, 1) + 10 * var(40)
channel = 0

[State 761, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760, 0
channel = 1

[State 761, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinAdd = 0,-64,-255,60
time = 15

[State 761, Parry FX]
type = Explod
trigger1 = !Time
anim = 8360
sprpriority = 5
postype = P1
pos = 27, -24
pauseMovetime = -1
superMovetime = -1
scale = 0.5,0.5
ownpal = 1

[State 761, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 761, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1


;Jumping Parry
[StateDef 762]
type = A
physics = N
moveType = I
anim = 762
ctrl = 0
sprPriority = 2
powerAdd = 78 * !var(50)
faceP2 = 1

[State 762, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 762, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
endCmdBufTime = 15
pauseBg = 0

[State 762, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 762, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, ifElse(Random < 500, 0, 1) + 10 * var(40)
channel = 0

[State 762, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760, 0
channel = 1

[State 762, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinadd = 0,-64,-255,60
time = 15

[State 762, Parry FX]
type = Explod
trigger1 = !Time
anim = 8360
sprPriority = 5
posType = P1
pos = 42, -65
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5,0.5
ownpal = 1

[State 762, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 762, End]
type = ChangeState
trigger1 = !AnimTime
value = 763
ctrl = 1


;Falling
[StateDef 763]
type = A
physics = N
movetype = I
anim = 763 + 10000 * (var(40) = [1, 2])
ctrl = 1

[State 763, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(vel x > 2, 2, ifElse(vel x < -2, -2, vel x))
y = ifElse(vel y < -2, vel y, -2)

[State 763, Gravity]
type = Gravity
trigger1 = Time > 0

[State 763, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;====================<CUSTOM COMBO>====================
;Ground Version
[StateDef 900]
type = S
physics = S
moveType = A
anim = 900 + 10000 * (var(40) = [1, 2])
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = -1000

[State 900, Corner Push]
type = VarSet
trigger1 = Time = 4
fvar(5) = 0

[State 900, Unguardable]
type = VarSet
trigger1 = Time = 4 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 30

[State 900, NotHitBy]
type = NotHitBy
trigger1 = !time
value = SCA
time = 38

[State 900, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 900, Custom Combo Time]
type = VarSet
trigger1 = Time >= 4
var(20) = 180

[State 900, Voice]
type = PlaySnd
trigger1 = Time = 4 && !var(40)
value = 4, 1
channel = 0

[State 900, Voice]
type = PlaySnd
trigger1 = Time = 4 && (var(40) = [1, 2])
value = 900, 11 + 10 * (var(40) = 2)
channel = 0

[State 900, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo FX"
posType = P1
pos = -8, -ifElse((var(40) = [1, 2]), 56, 60)
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 900, SuperPause]
type = SuperPause
trigger1 = Time = 4
time = 30
moveTime = 30
anim = -1
sound = s900,0
p2DefMul = 1
darken = 0

[State 900, AfterImage]
type = AfterImage
trigger1 = !AnimTime
time = 2
timeGap = 1
frameGap = 4
length = 13
palBright = 0,0,0
palContrast = 64,128,192
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = add1

[State 900, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Air Version
[Statedef 905]
type = A
physics = N
moveType = A
anim = 905 + 10000 * (var(40) = [1, 2])
ctrl = 0
sprPriority = 2
powerAdd = -1000

[State 905, Corner Push]
type = VarSet
trigger1 = Time = 4
fvar(5) = 0

[State 905, Unguardable]
type = VarSet
trigger1 = Time = 4 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 30

[State 905, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 38

[State 905, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 905, Custom Combo Timer]
type = VarSet
trigger1 = Time >= 4
var(20) = 180

[State 905, Voice]
type = PlaySnd
trigger1 = Time = 4 && !var(40)
value = 4, 1
channel = 0

[State 905, Voice]
type = PlaySnd
trigger1 = Time = 4 && (var(40) = [1, 2])
value = 900, 11 + 10 * (var(40) = 2)
channel = 0

[State 905, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo Startup"
posType = P1
pos = 3, -81
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 905, SuperPause]
type = SuperPause
trigger1 = Time = 4
time = 30
moveTime = 30
anim = -1
sound = s900,0
p2DefMul = 1
darken = 0

[State 905, AfterImage]
type = AfterImage
trigger1 = !AnimTime
time = 2
timeGap = 1
frameGap = 4
length = 13
palBright = 0,0,0
palContrast = 64,128,192
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = add1

[State 905, End]
type = ChangeState
trigger1 = !AnimTime
value = 906
ctrl = 1


;Air Finish
[StateDef 906]
type = A
physics = N
moveType = I
anim = 906 + 10000 * (var(40) = [1, 2])
ctrl = 1

[State 906, Gravity]
type = Gravity
trigger1 = Time > 0

[State 906, Land]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;==========<TARGET SAFE FALL>==========
[StateDef 5205]
type = A
physics = N
moveType = H

[State 5205, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
trigger1 = Anim = 5035
value = 5050

[State 5205, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 5205, SelfState (Ground)]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 5205, SelfState (Air)]
type = SelfState
trigger1 = Time >= 60
value = 5210



;==========<FALL RECOVERY>==========
[StateDef 5200]
type = A
moveType = H
physics = N

[State 5200, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5035 && !AnimTime
value = 5050

[State 5200, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 5200, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 10
value = 5201


[StateDef 5201]
type = S
moveType = I
physics = N
anim = 5200 + 10000 * (var(40) = [1, 2])
ctrl = 0
faceP2 = 1

[State 5201, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 5201, VelSet]
type = VelSet
trigger1 = !Time
x = -4.46927374302
y = 0

[State 5201, Voice]
type = PlaySnd
trigger1 = !Time && !var(40)
value = 195, 1
channel = 0

[State 5201, Voice (Evil)]
type = PlaySnd
trigger1 = !Time && var(40) = 1
value = 196, 10
channel = 0

[State 5201, Voice (Shadow)]
type = PlaySnd
trigger1 = !Time && var(40) = 2
value = 5200, 21
channel = 0

[State 5201, Recover Sound]
type = PlaySnd
trigger1 = !Time
value = 5200,0
channel = 1

[State 5201, Flash]
type = PalFX
trigger1 = !Time
add = 255,255,255
sinAdd = -255,-255,-255,40
time = 10

[State 5201, Recover FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8200
ID = 8200
name = "Recover FX"
posType = P1
pos = 0, ceil(-18 * const(size.yScale))
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 5201, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
value = SCA
time = 1

[State 5201, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 5201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Air Recover
[StateDef 5210]
type = A
moveType = I
physics = N
anim = 5210 + 10000 * (var(40) = [1, 2])
ctrl = 0
faceP2 = 1

[State 5210, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = 0.6

[State 5210, VelSet]
type = VelSet
trigger1 = !Time
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
x = ifElse((command = "holdfwd" && command != "holdback"), 4.05027932961, ifElse((command != "holdfwd" && command = "holdback"), -4.05027932961, 0))
y = -7.5

[State 5210, VelSet (Reversed commands)]
type = VelSet
trigger1 = !Time
trigger1 = NumExplod(92828282) || NumExplod(92468246)
x = ifElse((command = "holdback" && command != "holdfwd"), 4.05027932961, ifElse((command != "holdback" && command = "holdfwd"), -4.05027932961, 0))
y = -7.5

[State 5210, Voice]
type = PlaySnd
trigger1 = !Time && !var(40)
value = 195, 1
channel = 0

[State 5210, Voice (Evil)]
type = PlaySnd
trigger1 = !Time && var(40) = 1
value = 196, 10
channel = 0

[State 5201, Voice (Shadow)]
type = PlaySnd
trigger1 = !Time && var(40) = 2
value = 5200, 21
channel = 0

[State 5210, Recover Sound]
type = PlaySnd
trigger1 = !Time
value = 5200,0
channel = 1

[State 5210, Flash]
type = PalFX
trigger1 = !Time
add = 255,255,255
sinAdd = -255,-255,-255,40
time = 10

[State 5210, Recover FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8200
ID = 8200
name = "Recover FX"
posType = P1
pos = 0, ceil(-66 * const(size.yScale))
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 5210, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 5210, CtrlSet]
type = CtrlSet
trigger1 = AnimElemTime(5) >= 0
value = 1

[State 5210, Land]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52



;===================<GUARD>================
;Guard Start
[StateDef 120]
type = U
physics = U
anim = 120 + 10000 * (var(40) = [1, 2]) + (StateType = C) + (StateType = A) * 2

[State 120, StateTypeSet: Standing]
type = StateTypeSet
trigger1 = !Time && StateType = S
physics = S

[State 120, StateTypeSet: Crouching]
type = StateTypeSet
trigger1 = !Time && StateType = C
physics = C

[State 120, StateTypeSet: Jumping]
type = StateTypeSet
trigger1 = !Time && StateType = A
physics = A

[State 120, VelSet]
type = VelSet
trigger1 = !Time && StateType != A
x = 0
y = 0

[State 120, Stand to Crouching]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 120, Crouching to Stand]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && command != "holdup"
trigger3 = AILevel && StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 120, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 120, Change to Guard State]
type = ChangeState
trigger1 = !AnimTime || AILevel
value = 130 + (StateType = C) + (StateType = A) * 2

[State 120, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140


;Standing Guard
[StateDef 130]
type = S
physics = S

[State 130, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != (130 + 10000 * (var(40) = [1, 2]))
value = 130 + 10000 * (var(40) = [1, 2])

[State 130, Standing to Crouch]
type = ChangeState
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140

[State 130, Landing Sound]
type = PlaySnd
trigger1 = !Time
trigger1 = PrevStateNo = 132 || (PrevStateNo = [154,155])
value = 52,0

[State 130, Landing Dust Expod]
type = Explod
trigger1 = !Time
trigger1 = PrevStateNo = 132 || (PrevStateNo = [154,155])
anim = 8102
sprpriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1


;Crouch Guarding
[StateDef 131]
type = C
physics = C

[State 131, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != (131 + 10000 * (var(40) = [1, 2]))
value = 131 + 10000 * (var(40) = [1, 2])

[State 131, Crouching to Standing]
type = ChangeState
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && command != "holdup"
trigger3 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger3 = (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
value = 130

[State 131, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140


;Air Guard
[StateDef 132]
type = A
physics = N

[State 132, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != (132 + 10000 * (var(40) = [1, 2]))
value = 132 + 10000 * (var(40) = [1, 2])

[State 132, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = const(movement.yAccel)

[State 132, VarSet]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0 && vel y > 0)

[State 132, VelSet]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, PosSet]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, Jumping to Standing]
type = ChangeState
trigger1 = sysvar(0) && InGuardDist
trigger1 = (!AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command = "holdfwd", command = "holdback"), ifElse(P2dist x < 0, command = "holdback", command = "holdfwd")))) || AILevel
value = 130

[State 132, Change to Falling]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140


;Guard End
[StateDef 140]
type = U
physics = U
ctrl = 1

[State 140, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 140 + 10000 * (var(40) = [1, 2]) + (StateType = C) + (StateType = A) * 2

[State 140, StateTypeSet: Standing]
type = StateTypeSet
trigger1 = !Time && StateType = S
physics = S

[State 140, StateTypeSet: Crouching]
type = StateTypeSet
trigger1 = !Time && StateType = C
physics = C

[State 140, StateTypeSet: Jumping]
type = StateTypeSet
trigger1 = !Time && StateType = A
physics = A

[State 140, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 140, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && (!NumExplod(90000002) && !NumExplod(90000001) && !NumExplod(90000003))
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 140, End]
type = ChangeState
trigger1 = !AnimTime
value = (StateType = C) * 11 + (StateType = A) * 51


;Hit while Guarding (Standing)
[StateDef 150]
type = S
movetype = H
physics = N
velSet = 0,0

[State 150, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 150 + 10000 * (var(40) = [1, 2])

[State 150, End]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2 * ((!AILevel && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))) || (AILevel && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)))

[State 150, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
stateType = C
physics = C

[State 150, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && (!NumExplod(90000002) && !NumExplod(90000001) && !NumExplod(90000003))
trigger2 = AIlevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S


;Knocked Back while Guarding (Standing)
[StateDef 151]
type = S
moveType = H
physics = S
anim = 150 + 10000 * (var(40) = [1, 2])

[State 151, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 151, VelSet]
type = VelSet
trigger1 = Time = GetHitVar(SlideTime)
trigger2 = HitOver
x = 0

[State 151, CtrlSet]
type = CtrlSet
trigger1 = time = GetHitVar(CtrlTime)
value = 1

[State 151, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 151, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && (!NumExplod(90000002) && !NumExplod(90000001) && !NumExplod(90000003))
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 151, End]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = 1


;Hit while Guarding (Crouching)
[StateDef 152]
type = C
moveType = H
physics = N
velSet = 0,0

[State 152, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 151 + 10000 * (var(40) = [1, 2])

[State 152, End]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2 * ((!AILevel && ((!NumExplod(92828282) && !NumExplod(92468246) && command = "holddown") || ((NumExplod(92828282) || NumExplod(92468246)) && command = "holdup"))) || (AILevel && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)))

[State 152, Standing to Crouching]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 152, Crouching to Standing]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && command != "holdup"
trigger3 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger3 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S


;Knocked Back while Guarding (Crouching)
[StateDef 153]
type = C
moveType = H
physics = C
anim = 151 + 10000 * (var(40) = [1, 2])

[State 153, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 153, VelSet]
type = VelSet
trigger1 = Time = GetHitVar(SlideTime)
trigger2 = HitOver
x = 0

[State 153, CtrlSet]
type = CtrlSet
trigger1 = Time = GetHitVar(CtrlTime)
value = 1

[State 153, Standing to Crouching]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 153, Crouching to Standing]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && command != "holdup"
trigger3 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger3 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 153, End]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1


;Hit while Guarding (Jumping)
[StateDef 154]
type = A
moveType = H
physics = N
velSet = 0,0

[State 154, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 152 + 10000 * (var(40) = [1, 2])

[State 154, End]
type = ChangeState
trigger1 = HitShakeOver
value = 155


;Knocked Back while Guarding (Jumping)
[StateDef 155]
type = A
moveType = H
physics = N
anim = 152 + 10000 * (var(40) = [1, 2])

[State 155, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 155, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = const(movement.yAccel)

[State 155, CtrlSet]
type = CtrlSet
trigger1 = Time = GetHitVar(CtrlTime)
value = 1

[State 155, VarSet]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0 && vel y > 0)

[State 155, VelSet]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, PosSet]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, End]
type = ChangeState
trigger1 = sysvar(0) && InGuardDist
trigger1 = (!AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))) || AILevel
value = 130

[State 155, End]
type = ChangeState
trigger1 = sysvar(0)
value = 52



;====================<LOSE>====================
[StateDef 170]
type = S
ctrl = 0
anim = 170 + 10000 * (var(40) = [1, 2])
velSet = 0,0

[State 170, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver



;====================<DRAW GAME>====================
[StateDef 175]
type = S
ctrl = 0
velSet = 0,0

[State 175, ChangeState]
type = ChangeState
trigger1 = !Time
value = 170



;====================<CONTINUE?>====================
[StateDef 5500]
type = S
anim = 5300 + 10000 * (var(40) = [1, 2])
velSet = 0,0
ctrl = 0

[State 5500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5500 + 10000 * (var(40) = [1, 2])



;====================<INITIALIZE>====================
[StateDef 5901]
type = S

[State 5901, Simul Intro with Ken]
type = ChangeState
triggerAll = (var(40) != [1, 2]) && var(40) != 4
triggerAll = NumEnemy && RoundNo = 1
triggerAll = TeamMode = Simul && NumPartner
trigger1 = Partner, AuthorName = "Jmorphman" && Partner, Name = "Ken Masters" && Partner, var(40) != 1
value = 6910

[State 5901, Intro vs Kyo Kusanagi]
type = ChangeState
triggerAll = (var(40) != [1, 2]) && var(40) != 4
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = (Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName != "Jmorphman") || (Enemy, Name = "cvskyo" && Enemy, PalNo <= 6) || Enemy, Name = "cvskyo_normal"
trigger2 = Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) != 1
value = 6800

[State 5901, Intro vs Ken Masters (P2 Side)]
type = ChangeState
triggerAll = (var(40) != [1, 2]) && var(40) != 4
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Ken Masters" && Enemy, AuthorName = "Jmorphman" && (Enemy, StateNo = [6800, 6801]) && Enemy, var(40) != 1
value = ifElse(Enemy, StateNo = 6800, 6801, 6802)

[State 5901, Intro vs Ken Masters (P1 Side)]
type = ChangeState
triggerAll = (var(40) != [1, 2]) && var(40) != 4
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Ken Masters" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) != 1
value = 6801 + Random % 2

[State 5901, Intro vs Ryo Sakazaki]
type = ChangeState
triggerAll = (var(40) != [1, 2]) && var(40) != 4
trigger1 = NumEnemy
trigger1 = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Ryo Sakazaki" || Enemy, Name = "Ryo" || Enemy, Name = "cvsryo"
value = 6803

[State 5901, Intro vs Sagat]
type = ChangeState
triggerAll = (var(40) != [1, 2]) && var(40) != 4
trigger1 = NumEnemy
trigger1 = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Sagat" || Enemy, Name = "cvssagat"
value = 6804

[State 5901, Intro vs Violent Ken]
type = ChangeState
triggerAll = (var(40) != [1, 2]) && var(40) != 4
trigger1 = NumEnemy
trigger1 = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Ken Masters" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) = 1
value = 6805

[State 5901, Intro vs Evil Ryu]
type = ChangeState
triggerAll = !var(40) || var(40) = 3
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) = 1
value = 6806

[State 5901, Intro vs Gouki]
type = ChangeState
triggerAll = !var(40) || var(40) = 3
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Akuma" && Enemy, AuthorName = "DivineWolf"
trigger2 = Enemy, Name = "Akuma" && Enemy, AuthorName = "DeathScythe"
trigger3 = Enemy, Name = "Gouki" && Enemy, AuthorName = "KarmaCharmeleon" && (Enemy, var(40) = [0, 1])
value = 6807

[State 5901, Intro vs Gouken]
type = ChangeState
triggerAll = (var(40) != [1, 2]) && var(40) != 4
trigger1 = NumEnemy
trigger1 = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Gouken" && Enemy, AuthorName = "KarmaCharmeleon"
value = 6808

[State 5901, Intro vs ????]
type = Null
triggerAll = (var(40) != [1, 2]) && var(40) != 4
trigger1 = NumEnemy
trigger1 = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "????" && Enemy, AuthorName = "KarmaCharmeleon"
value = 6809

[State 5901, Evil Intro vs Ryu]
type = ChangeState
triggerAll = var(40) = 1
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon" && (Enemy, var(40) = 0 || Enemy, var(40) = 3)
value = 6810

[State 5901, Evil Intro vs Gouki]
type = ChangeState
triggerAll = var(40) = [1, 2]
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = (Enemy, Name = "Akuma" && Enemy, AuthorName = "DivineWolf") && var(40) = 1
trigger2 = (Enemy, Name = "Akuma" && Enemy, AuthorName = "DeathScythe") && var(40) = 1
trigger3 = (Enemy, Name = "Evil Ryu" && Enemy, AuthorName = "Victorys") && var(40) = 1
trigger4 = (Enemy, Name = "Gouki" && Enemy, AuthorName = "KarmaCharmeleon" && (Enemy, var(40) = [0, 1])) && var(40) = 1
trigger5 = Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon" && (Enemy, var(40) = [1, 2]) && var(40) != (Enemy, var(40))
value = 6811

[State 5901, Evil Intro vs Violent Ken]
type = ChangeState
triggerAll = var(40) = 1
trigger1 = NumEnemy
trigger1 = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Ken Masters" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) = 1
value = 6812

[State 5901, Evil Intro vs Orochi Iori]
type = ChangeState
triggerAll = var(40) = 1
trigger1 = NumEnemy
trigger1 = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Iori Yagami" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) = 1
value = 6813

[State 5901, Shadow Intro vs Ryu]
type = ChangeState
triggerAll = var(40) = 2
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Ryu" && !(Enemy, AuthorName = "Phantom.of.the.Server") && !(Enemy, AuthorName = "KarmaCharmeleon")
trigger2 = (Enemy, Name = "cvsryu" && Enemy, PalNo = [1, 6]) || Enemy, Name = "cvsryu_normal"
trigger3 = (Enemy, Name = "Ryu" && Enemy, AuthorName = "Phantom.of.the.Server") && Enemy, var(1) != 2
trigger4 = (Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon") && Enemy, var(40) != 1 && Enemy, var(40) != 2
value = 6815

[State 5901, Shadow Intro vs Gouki]
type = ChangeState
triggerAll = var(40) = 2
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Akuma" && Enemy, AuthorName = "DivineWolf"
trigger2 = Enemy, Name = "Akuma" && Enemy, AuthorName = "DeathScythe"
trigger3 = Enemy, Name = "Evil Ryu" && Enemy, AuthorName = "Victorys"
trigger4 = Enemy, Name = "Gouki" && Enemy, AuthorName = "KarmaCharmeleon" && (Enemy, var(40) = [0, 1])
value = 6816

[State 5901, Turns Intro]
type = ChangeState
trigger1 = TeamMode = Turns
trigger1 = !RoundsExisted && RoundNo >= 2
value = 6900

[State 5901, Intro Decider]
type = ChangeState
trigger1 = RoundNo = 1
value = 190 + var(40)

[State 5901, End]
type = ChangeState
trigger1 = 1
value = 0



;====================<INTRO>====================
[StateDef 190]
type = S
physics = S
anim = 190

[State 190, Stop Voice Sound]
type = StopSnd
trigger1 = Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) = 1
channel = 0

[State 190, Change to Regular Intro]
type = ChangeState
trigger1 = Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) = 1
value = 5900

[State 190, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 190, (Random % 2)
channel = 0

[State 190, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO (EVIL)>====================
[StateDef 191]
type = S
physics = S
anim = 10190 + (Random % 2)

[State 191, Change to Regular Intro]
type = ChangeState
trigger1 = Enemy, Name = "Ken Masters" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) = 1
value = 5900

[State 191, Change to Regular Intro]
type = ChangeState
trigger1 = Enemy, Name = "Iori Yagami" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) = 1
value = 5900

[State 191, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 191, ifElse((Anim = 10191), 1, 0)
channel = 0

[State 191, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO (SHADOW)>====================
[StateDef 192]
type = S
physics = S
anim = 20190

[State 192, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 192, 0
channel = 0

[State 192, Voice]
type = PlaySnd
trigger1 = AnimElem = 11
value = 192, 1
channel = 0

[State 192, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO VS KYO KUSANAGI>====================
[StateDef 6800]
type = S
physics = S
anim = 6800

[State 6800, Change to Regular Intro]
type = ChangeState
trigger1 = Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) = 1
value = 5900

[State 6800, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6800, Voice]
type = PlaySnd
trigger1 = AnimElem = 9
value = 6800, 0
channel = 0

[State 6800, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO VS KEN MASTERS>====================
[StateDef 6801]
type = S
physics = S
anim = 6801

[State 6801, Voice]
type = StopSnd
trigger1 = NumEnemy
trigger1 = Enemy, Name = "Ken Masters" && Enemy, AuthorName = "Jmorphman"
trigger1 = Enemy, StateNo = 6801
trigger2 = Enemy, Name = "Ken Masters" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) = 1
channel = 0

[State 6801, Change to Special Intro vs Ken (Noogie)]
type = ChangeState
trigger1 = NumEnemy
trigger1 = Enemy, Name = "Ken Masters" && Enemy, AuthorName = "Jmorphman"
trigger1 = Enemy, StateNo = 6801
value = 6802

[State 6801, Change to Special Intro vs Violent Ken]
type = ChangeState
trigger1 = Enemy, Name = "Ken Masters" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) = 1
value = 6805

[State 6801, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6801, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 6801, 0
channel = 0

[State 6801, End]
type = ChangeState
trigger1 = !AnimTime
value = 0


;====================<INTRO VS KEN MASTERS (NOOGIE)>====================
[Statedef 6802]
type = S
physics = N
anim = 6802
sprPriority = 1

[State 6802, Change to Special Intro vs Ken (Fist Bump)]
type = ChangeState
trigger1 = NumEnemy
trigger1 = Enemy, Name = "Ken Masters" && Enemy, AuthorName = "Jmorphman"
trigger1 = Enemy, StateNo = 6800
value = 6801

[State 6802, Change to Special Intro vs Violent Ken]
type = ChangeState
trigger1 = Enemy, Name = "Ken Masters" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) = 1
value = 6805

[State 6802, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6802, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 13
value = 2, 800
channel = 1

[State 6802, Voice]
type = PlaySnd
trigger1 = AnimElem = 19
value = 4, 3
channel = 0

[State 6802, Voice]
type = PlaySnd
trigger1 = AnimElem = 33
value = 6800, 0
channel = 0

[State 6802, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO VS RYO SAKAZAKI>====================
[StateDef 6803]
type = S
physics = N
anim = 6803

[State 6803, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6803, Camera Helper]
type = Helper
trigger1 = !NumHelper(8999)
helpertype = Normal
stateNo = 8999
ID = 8999
name = "Camera"
posType = P1

[State 6803, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 6803, VarSet]
type = VarSet
trigger1 = !Time
var(10) = ceil(pos x)

[State 6803, PosSet]
type = PosSet
trigger1 = !Time
x = -20 * Facing

[State 6803, Voice]
type = PlaySnd
trigger1= Anim = 6803 && AnimElem = 2
value = 6800, 0

[State 6803, VelSet]
type = VelSet
trigger1 = Anim = 6803 && AnimElem = 6
x = abs(Pos x - var(10)) / -50
y = -8

[State 6803, VelAdd]
type = VelAdd
trigger1 = Anim = 6803 && AnimElemTime(6) >= 0
y = 0.35

[State 6803, Jumping Sound]
type = PlaySnd
trigger1 = Anim = 6803 && AnimElem = 6
value = 40, 0

[State 6803, Dust Helper]
type = Helper
trigger1 = Anim = 6803 && AnimElem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 6803, ChangeAnim: Landing]
type = ChangeAnim
trigger1 = Anim = 6803 && vel y > 0 && pos y >= -5
value = 47

[State 6803, PosSet]
type = PosSet
trigger1 = Anim = 47 && vel y > 0 && pos y >= -5
x = var(10)
y = 0

[State 6803, VelSet]
type = VelSet
trigger1 = Anim = 47 && vel y > 0 && pos y >= -5
x = 0
y = 0

[State 6803, Landing Sound]
type = PlaySnd
trigger1 = Anim = 47 && vel y > 0 && pos y >= -5
value = 52,0

[State 6803, Landing Dust Explod]
type = Explod
trigger1 = Anim = 47 && vel y > 0 && pos y >= -5
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 6803, End]
type = ChangeState
trigger1 = Anim = 47 && !AnimTime
value = 0



;====================<INTRO VS SAGAT>====================
[StateDef 6804]
type = S
physics = S
anim = 6804

[State 6804, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6804, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 195, 0
channel = 0

[State 6804, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO VS VIOLENT KEN>====================
[StateDef 6805]
type = S
physics = S
anim = 6805

[State 6805, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6805, Voice]
type = PlaySnd
trigger1 = AnimElem = 24
value = 6805, 0
channel = 0

[State 6805, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO VS EVIL RYU>====================
[StateDef 6806]
type = S
physics = N
anim = 6806
sprPriority = 1

[State 6806, Change to Regular Intro]
type = ChangeState
trigger1 = Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) != 1
value = 5901

[State 6806, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6806, Camera Helper]
type = Helper
trigger1 = !NumHelper(8999)
helpertype = Normal
stateNo = 8999
ID = 8999
name = "Camera"
posType = P1

[State 6806, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 6806, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = (P2Dist X - 96) / 12

[State 6806, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 2
channel = 0

[State 6806, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 1

[State 6806, Voice]
type = PlaySnd
trigger1 = AnimElem = 10
value = 4, 0
channel = 0

[State 6806, Voice]
type = PlaySnd
trigger1 = AnimElem = 10
value = 710, 11
channel = 0

[State 6806, Dodge Sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1, 3
channel = 1

[State 6806, Movement AfterImage]
type = AfterImage
trigger1 = AnimElem = 10
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

[State 6806, SprPriority]
type = SprPriority
trigger1 = AnimElem = 10
value = -1

[State 6806, AfterImage Off]
type = AfterImage
trigger1 = AnimElemTime(15) >= 0
time = 0

[State 6806, SprPriority]
type = SprPriority
trigger1 = AnimElem = 15
value = 1

[State 6806, Voice]
type = PlaySnd
trigger1 = AnimElem = 16
value = 6800, 0
channel = 0

[State 6806, Back Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 16
value = 105, 0

[State 6806, Dust Helper]
type = Helper
trigger1 = AnimElem = 16
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
facing = -1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 6806, VelSet]
type = VelSet
trigger1 = AnimElem = 16
x = -(Helper(8999), RootDist X) / 18

[State 6806, VelSet]
type = VelSet
trigger1 = AnimElem = 6
trigger2 = AnimElem = 19
x = 0

[State 6806, PosSet]
type = PosSet
trigger1 = AnimElem = 19
x = Helper(8999), Pos X
y = 0

[State 6806, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO VS GOUKI>====================
[StateDef 6807]
type = S
physics = S
anim = 6807

[State 6807, Change to Regular Intro]
type = ChangeState
trigger1 = Enemy, Name = "Gouki" && Enemy, AuthorName = "KarmaCharmeleon" && ((Enemy, var(40) = [2, 4]))
value = 5901

[State 6807, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6807, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 6807, 0
channel = 0

[State 6807, Bag]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 16807
ID = 16807
posType = P1
pos = 8,0
name = "Bag"
ownPal = 1

[State 6807, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO VS GOUKI>====================
[StateDef 6808]
type = S
physics = S
anim = 6808

[State 6808, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6808, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 6808, 0
channel = 0

[State 6808, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO VS ????>====================
[StateDef 6809]
type = S
physics = S
anim = 6809

[State 6809, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6809, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 1

[State 6809, Woosh]
type = PlaySnd
trigger1 = AnimElem = 10 || AnimElem = 14
value = 1, 1
channel = 1

[State 6809, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<(EVIL) INTRO VS RYU>====================
[StateDef 6810]
type = S
physics = N
anim = 6810
sprPriority = 0

[State 6810, PosSet]
type = PosSet
trigger1 = Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon" && ((Enemy, var(40) = [1, 2]) || Enemy, var(40) = 4)
x = Helper(8999), Pos X

[State 6810, Change to Regular Intro]
type = ChangeState
trigger1 = Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon" && ((Enemy, var(40) = [1, 2]) || Enemy, var(40) = 4)
value = 5901

[State 6810, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6810, Camera Helper]
type = Helper
trigger1 = !NumHelper(8999)
helpertype = Normal
stateNo = 8999
ID = 8999
name = "Camera"
posType = P1

[State 6810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 6810, PosSet]
type = PosSet
trigger1 = !Time
x = -50 * Facing

[State 6806, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 4, 10
channel = 0

[State 6806, Parry Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 760, 0
channel = 1

[State 6806, Player Flash]
type = PalFX
trigger1 = AnimElem = 6
add = 0,64,255
sinadd = 0,-64,-255,60
time = 15

[State 6806, Parry Visual Effect]
type = Explod
trigger1 = AnimElem = 6
anim = 8360
sprPriority = 5
posType = P1
pos = 36, -65
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5, 0.5
ownPal = 1

[State 6810, Voice]
type = PlaySnd
trigger1 = AnimElem = 13
value = 1000, 0 + 10 * var(40)
channel = 0

[State 6810, Hadoken Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(13) = 1
value = 1000, 1
channel = 1

[State 6810, Hadoken]
type = Explod
trigger1 = AnimElemTime(13) = 1
anim = 1005
pos = 78, -64
posType = P1
facing = 1
vel = 8.93854748603, 0
scale = 0.5, 0.5
removeTime = 200
sprPriority = 4

[State 6810, Voice]
type = PlaySnd
trigger1 = AnimElem = 22
value = 196, 10
channel = 0

[State 6810, Back Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 22
value = 105,0

[State 6810, Dust Helper]
type = Helper
trigger1 = AnimElem = 22
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
facing = -1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 6810, VelSet]
type = VelSet
trigger1 = AnimElem = 22
x = -(Helper(8999), RootDist X) / 18

[State 6810, VelSet]
type = VelSet
trigger1 = AnimElem = 25
x = 0

[State 6810, PosSet]
type = PosSet
trigger1 = AnimElem = 25
x = Helper(8999), Pos X
y = 0

[State 6810, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<(EVIL) INTRO VS GOUKI>====================
[StateDef 6811]
type = S
physics = N
anim = 6811

[State 6811, PosSet]
type = PosSet
trigger1 = Enemy, Name = "Gouki" && Enemy, AuthorName = "KarmaCharmeleon" && ((Enemy, var(40) = [2, 4]))
x = Helper(8999), Pos X

[State 6811, Voice]
type = StopSnd
trigger1 = Enemy, Name = "Gouki" && Enemy, AuthorName = "KarmaCharmeleon" && ((Enemy, var(40) = [2, 4]))
channel = -1

[State 6811, VelSet]
type = VelSet
trigger1 = Enemy, Name = "Gouki" && Enemy, AuthorName = "KarmaCharmeleon" && ((Enemy, var(40) = [2, 4]))
x = 0

[State 6811, Movement AfterImage]
type = AfterImage
trigger1 = Enemy, Name = "Gouki" && Enemy, AuthorName = "KarmaCharmeleon" && ((Enemy, var(40) = [2, 4]))
time = 0

[State 6811, Change to Regular Intro]
type = ChangeState
trigger1 = Enemy, Name = "Gouki" && Enemy, AuthorName = "KarmaCharmeleon" && ((Enemy, var(40) = [2, 4]))
value = 5901

[State 6811, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6811, Camera Helper]
type = Helper
trigger1 = !NumHelper(8999)
helpertype = Normal
stateNo = 8999
ID = 8999
name = "Camera"
posType = P1

[State 6811, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1

[State 6811, PosAdd]
type = PosAdd
trigger1 = !Time
x = -100

[State 6811, Voice (Evil)]
type = PlaySnd
trigger1 = !Time && var(40) = 1
value = 196, 10
channel = 0

[State 6811, Voice (Shadow)]
type = PlaySnd
trigger1 = !Time && var(40) = 2
value = 900, 21
channel = 0

[State 6811, Sound Effect]
type = PlaySnd
trigger1 = !Time
value = 2000, 1
channel = 1

[State 6811, VelSet]
type = VelSet
trigger1 = !Time
x = abs((Pos X + (33 * Facing)) / 38)

[State 6811, Movement AfterImage]
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

[State 6811, AfterImage Off]
type = AfterImage
trigger1 = AnimElemTime(2) >= 0
time = 0

[State 6811, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 0

[State 6811, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 800
channel = 2

[State 6811, Fade Out Helper]
type = Helper
trigger1 = AnimElem = 2 && !NumHelper(3613)
helpertype = Normal
stateNo = 3613
ID = 3613
name = "Fade Out"
posType = P1

[state 6811, ChildVarSet]
type = Null
trigger1= AnimElem = 3
trigger1 = Cond(NumHelper(3613), Helper(3613), Cond(1, Var(0) := 60, 0), 0) 

[State 6811, Hit Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 4
trigger2 = AnimElemTime(3) = 8
trigger3 = AnimElemTime(3) = 12
trigger4 = AnimElemTime(3) = 16
trigger5 = AnimElemTime(3) = 20
trigger6 = AnimElemTime(3) = 24
trigger7 = AnimElemTime(3) = 28
trigger8 = AnimElemTime(3) = 32
trigger9 = AnimElemTime(3) = 36
trigger10 = AnimElemTime(3) = 40
trigger11 = AnimElemTime(3) = 44
trigger12 = AnimElemTime(3) = 48
trigger13 = AnimElemTime(3) = 52
trigger14 = AnimElemTime(3) = 56
trigger15 = AnimElem = 4
value = 2, 2
channel = 2

[State 6811, Hit Spark]
type = Helper
trigger1 = AnimElemTime(3) = 4
trigger2 = AnimElemTime(3) = 8
trigger3 = AnimElemTime(3) = 12
trigger4 = AnimElemTime(3) = 16
trigger5 = AnimElemTime(3) = 20
trigger6 = AnimElemTime(3) = 24
trigger7 = AnimElemTime(3) = 28
trigger8 = AnimElemTime(3) = 32
trigger9 = AnimElemTime(3) = 36
trigger10 = AnimElemTime(3) = 40
trigger11 = AnimElemTime(3) = 44
trigger12 = AnimElemTime(3) = 48
trigger13 = AnimElemTime(3) = 52
trigger14 = AnimElemTime(3) = 56
trigger15 = AnimElem = 4
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = 32 + (Random % 128), -24 - (Random % 96)
facing = ifElse(Random % 2, -1, 1)
ownPal = 1
onTop = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 6811, Final Hit Spark]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = Back
pos = 160, -75
facing = 1
ownPal = 1
onTop = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 6811, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(3) = 4
trigger2 = AnimElemTime(3) = 8
trigger3 = AnimElemTime(3) = 12
trigger4 = AnimElemTime(3) = 16
trigger5 = AnimElemTime(3) = 20
trigger6 = AnimElemTime(3) = 24
trigger7 = AnimElemTime(3) = 28
trigger8 = AnimElemTime(3) = 32
trigger9 = AnimElemTime(3) = 36
trigger10 = AnimElemTime(3) = 40
trigger11 = AnimElemTime(3) = 44
trigger12 = AnimElemTime(3) = 48
trigger13 = AnimElemTime(3) = 52
trigger14 = AnimElemTime(3) = 56
trigger15 = AnimElem = 4
time = 18
ampl = -6
freq = 120

[State 6811, PosSet]
type = PosSet
trigger1 = AnimElem = 3
x = Helper(8999), Pos X
y = 0

[State 6811, Zero Counter FX Helper]
type = Helper
triggerAll = TeamSide = 1 || !(Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon" && (Enemy, var(40) = [1, 2]))
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8350
ID = 8350
name = "Zero Counter"
posType = Back
pos = 160, -75
superMoveTime = 255
ownPal = 1

[State 6811, Hit Sound]
type = PlaySnd
triggerAll = TeamSide = 1 || !(Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon" && (Enemy, var(40) = [1, 2]))
trigger1 = AnimElem = 4
value = 750, 0
channel = 3

[State 6811, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 5940, 0 + 10 * var(40)
channel = 0

[State 6811, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<(EVIL) INTRO VS VIOLENT KEN>====================
[StateDef 6812]
type = S
physics = N
anim = 6812
sprPriority = -1

[State 6812, Change to Regular Intro]
type = ChangeState
trigger1 = Enemy, Name = "Ken" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) != 1
value = 5901

[State 6812, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6812, No Push]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 6812, Camera Helper]
type = Helper
trigger1 = !NumHelper(8999)
helpertype = Normal
stateNo = 8999
ID = 8999
name = "Camera"
posType = P1

[State 6812, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 6812, PosAdd]
type = PosAdd
trigger1 = !Time
x = 220

[State 6812, ChangeAnim]
type = Turn
trigger1 = !Time

[State 6812, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 0 + 10 * (var(40) = 1)
channel = 0

[State 6812, Hadoken Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 1000, 1
channel = 1

[State 6812, Hadoken]
type = Explod
trigger1 = AnimElemTime(5) = 1
anim = 1005
pos = 78, -64
posType = P1
facing = 1
vel = 8.93854748603, 0
scale = 0.5, 0.5
removeTime = 200
sprPriority = 4

[State 6812, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(13) = 1
trigger2 = AnimElemTime(14) = 0
x = 2.23463687151

[State 6812, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(14) = 0
trigger2 = AnimElemTime(15) = 1
x = 3.35195530726

[State 6812, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(14) = 1
trigger2 = AnimElemTime(15) = 0
x = 5.58659217877

[State 6812, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(17) = 1
trigger2 = AnimElemTime(20) = 0
x = -2.23463687151

[State 6812, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(18) = 0
trigger2 = AnimElemTime(19) = 1
x = -3.35195530726

[State 6812, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(18) = 1
trigger2 = AnimElemTime(19) = 0
x = -5.58659217877

[State 6812, Voice]
type = PlaySnd
trigger1 = AnimElem = 13
value = 710, 0 + 10 * var(40)
channel = 0

[State 6812, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 21
value = 2000, 1
channel = 1

[State 6812, Movement AfterImage]
type = AfterImage
trigger1 = AnimElem = 13
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

[State 6812, VelSet]
type = VelSet
trigger1 = AnimElem = 21
x = (Helper(8999), RootDist X) / 24

[State 6812, ChangeAnim]
type = Turn
trigger1 = P2Dist X <= 0

[State 6812, PosSet]
type = PosSet
trigger1 = AnimElemTime(21) = 24
x = Helper(8999), Pos X
y = 0

[State 6812, End]
type = VelSet
trigger1 = AnimElemTime(21) = 24
x = 0

[State 6812, End]
type = ChangeState
trigger1 = AnimElemTime(21) = 24
trigger2 = Time >= 120
value = 0



;====================<(EVIL) INTRO VS OROCHI IORI>====================
;Misogi
[StateDef 6813]
type = S
physics = N
anim = 6813
sprPriority = 0

[State 6813, Change to Regular Intro]
type = ChangeState
trigger1 = Enemy, Name = "Iori" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) != 1
value = 5901

[State 6813, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6813, Camera Helper]
type = Helper
trigger1 = !NumHelper(8999)
helpertype = Normal
stateNo = 8999
ID = 8999
name = "Camera"
posType = P1

[State 6813, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1

[State 6813, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 13
value = 3700, 1
channel = 1

[State 6813, AfterImage Helper]
type = Helper
trigger1 = AnimElem = 13 && !NumHelper(3701)
helpertype = Normal
stateNo = 3701
ID = 3701
name = "Right AfterImage"
posType = P1

[State 6813, AfterImage Helper]
type = Helper
trigger1 = AnimElem = 13 && !NumHelper(3702)
helpertype = Normal
stateNo = 3701
ID = 3702
name = "Left AfterImage"
posType = P1

[State 6813, PosAdd]
type = PosAdd
trigger1 = AnimElem = 13
y = -384

[State 6813, VelSet]
type = VelSet
trigger1 = AnimElem = 14
y = 17.8125

[State 6813, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(14) > 0
y = 0.48828125

[State 6813, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 6814


;Landing
[StateDef 6814]
type = S
anim = 6814
physics = N
moveType = I
velSet = 0, 0

[State 6814, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6814, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 6814, PosSet]
type = PosSet
trigger1 = 1
x = Helper(8999), Pos X
y = 0

[State 6814, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 196, 1
channel = 1

[State 6814, Voice]
type = PlaySnd
trigger1 = AnimElem = 12
value = 191, 1
channel = 0

[State 6814, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<(SHADOW) INTRO VS RYU>====================
[StateDef 6815]
type = S
physics = S
anim = 6815

[State 6815, Change to Regular Intro]
type = ChangeState
trigger1 = Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon" && ((Enemy, var(40) = [1, 2]) || Enemy, var(40) = 4)
value = 5901

[State 6815, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6815, Voice]
type = PlaySnd
trigger1 = AnimElemTime(1) = 48
value = 6815, 0
channel = 0

[State 6815, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 6815, 1
channel = 0

[State 6815, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<(SHADOW) INTRO VS GOUKI>====================
[StateDef 6816]
type = S
physics = S
anim = 6816

[State 6816, Change to Regular Intro]
type = ChangeState
trigger1 = Enemy, Name = "Gouki" && Enemy, AuthorName = "KarmaCharmeleon" && !(Enemy, var(40) = [0, 1])
value = 5901

[State 6816, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6816, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 6816, 0
channel = 0

[State 6816, Voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 6816, 1
channel = 0

[State 6816, Slam Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 196, 1
channel = 1

[State 6816, EnvShake]
type = EnvShake
trigger1 = AnimElem = 9
time = 10
ampl = -2
freq = 120

[State 6816, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<TURNS INTRO>====================
[StateDef 6900]
type = A
anim = 42 + 10000 * (var(40) = [1, 2])
velSet = 0,0
ctrl = 0

[State 6900, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6900, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 6900, Camera Helper]
type = Helper
trigger1 = !NumHelper(8999)
helpertype = Normal
stateNo = 8999
ID = 8999
name = "Camera"
posType = P1

[State 6900, PosSet]
type = PosSet
trigger1 = !Time
x = (-320 + abs(pos x)) * Facing

[State 6900, VelSet]
type = VelSet
trigger1 = !Time
x = (Helper(8999), RootDist x) / -40.0
y = -10.25

[State 6900, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 6900, End]
type = ChangeState
trigger1 = Time
trigger1 = pos y > -vel y
value = 6901


;Landing
[StateDef 6901]
type = S
physics = S
anim = 6901 + 10000 * (var(40) = [1, 2])
velSet = 0,0

[State 6901, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6901, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 6901, PosSet]
type = PosSet
trigger1 = !Time && NumHelper(8999)
x = ceil(Helper(8999), pos x)

[State 6901, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 3

[State 6901, Landing Dust Expod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 6901, Voice]
type = PlaySnd
trigger1 = Anim = 6901 && AnimElem = 6
value = 190, (Random % 2)
channel = 0

[State 6901, Voice]
type = PlaySnd
trigger1 = Anim = 16901 && AnimElem = 8
value = 196, 10
channel = 0

[State 6901, Slam Sound]
type = PlaySnd
trigger1 = Anim = 16901 && AnimElem = 8
value = 196, 1
channel = 1

[State 6901, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<SIMUL INTRO WITH KEN MASTERS>====================
[StateDef 6910]
type = S
physics = S
anim = 6910

[State 6910, Change to Regular Intro]
type = ChangeState
trigger1 = Partner, AuthorName = "Jmorphman" && Partner, Name = "Ken Masters" && (Partner, var(40) = 1)
value = 5900

[State 6910, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6910, Voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 190, 1
channel = 0

[State 6910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<WIN POSE DECIDER>====================
[StateDef 180]
type = S

[State 180, Generic Victory Quote (Normal)]
type = VictoryQuote
trigger1 = !var(40)
value = Random % 10

[State 180, Generic Victory Quote (Evil)]
type = VictoryQuote
trigger1 = var(40) = 1
value = 66 + Random % 5

[State 180, Generic Victory Quote (Shadow)]
type = VictoryQuote
trigger1 = var(40) = 2
value = 76 + Random % 5

[State 180, Generic Victory Quote (EX)]
type = VictoryQuote
trigger1 = var(40) = 3
value = 84 + Random % 5

[State 180, Generic Victory Quote (Shin)]
type = VictoryQuote
trigger1 = var(40) = 4
value = 92 + Random % 5

[State 180, Victory Quote vs. Ryu]
type = VictoryQuote
trigger1 = Enemy, Name = "Ryu" && !(Enemy, AuthorName = "Phantom.of.the.Server") && !(Enemy, AuthorName = "KarmaCharmeleon")
trigger2 = (Enemy, Name = "cvsryu" && Enemy, PalNo = [1, 6]) || Enemy, Name = "cvsryu_normal"
trigger3 = (Enemy, Name = "Ryu" && Enemy, AuthorName = "Phantom.of.the.Server") && Enemy, var(1) != 2
trigger4 = (Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon") && Enemy, var(40) != 1 && Enemy, var(40) != 2
value = ifElse(var(40) = 4, 97, ifElse(var(40) = 3, 89, ifElse(var(40) = 2, 81, ifElse(var(40) = 1, 71, 10))))

[State 180, Victory Quote vs. Evil Ryu]
type = VictoryQuote
trigger1 = Enemy, Name = "Evil Ryu"
trigger2 = (Enemy, Name = "cvsryu" && Enemy, PalNo = [7, 12]) ||  Enemy, Name = "cvsryu_ex"
trigger3 = (Enemy, Name = "Ryu" && Enemy, AuthorName = "Phantom.of.the.Server") && Enemy, var(1) = 2
trigger4 = (Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon") && Enemy, var(40) = 1
value = ifElse(var(40) = 1, 72, 11)

[State 180, Victory Quote vs. Ken Masters]
type = VictoryQuote
trigger1 = Enemy, Name = "Ken" || (Enemy, Name = "Ken Masters" && !(Enemy, AuthorName = "Jmorphman"))
trigger2 = (Enemy, Name = "cvsken" && Enemy, PalNo = [1, 6]) || Enemy, Name = "cvsken_normal"
trigger3 = Enemy, Name = "Ken Masters" && Enemy, Authorname = "Jmorphman" && Enemy, var(40) != 1
value = ifElse(var(40) = 4, 98, ifElse(var(40) = 3, 90, ifElse(var(40) = 2, 82, ifElse(var(40) = 1, 73, 12))))

[State 180, Victory Quote vs. Gouki]
type = VictoryQuote
trigger1 = (Enemy, Name = "Gouki" && !(Enemy, AuthorName = "KarmaCharmeleon")) || (Enemy, Name = "Akuma" && !(Enemy, AuthorName = "DeathScythe"))
trigger2 = (Enemy, Name = "cvsgouki" && Enemy, PalNo = [1, 6]) || Enemy, Name = "cvsgouki_normal"
trigger3 = (Enemy, Name = "Gouki" && Enemy, AuthorName = "KarmaCharmeleon") && (Enemy, var(40) = [0, 1])
trigger4 = (Enemy, Name = "Akuma" && Enemy, AuthorName = "DeathScythe") && Enemy, var(40) = 0
value = ifElse(var(40) = 4, 99, ifElse(var(40) = 3, 91, ifElse(var(40) = 2, 83, ifElse(var(40) = 1, 74, 13))))

[State 180, Victory Quote vs. Shin Gouki]
type = VictoryQuote
trigger1 = Enemy, Name = "Shin Gouki" || Enemy, Name = "ShinGouki" || Enemy, Name = "Shin Akuma" || Enemy, Name = "ShinAkuma" || Enemy, Name = "Pocket Shin Gouki"
trigger2 = (Enemy, Name = "cvsgouki" && Enemy, PalNo = [7, 12]) || Enemy, Name = "cvsgouki_ex"
trigger3 = (Enemy, Name = "Gouki" && Enemy, AuthorName = "KarmaCharmeleon") && Enemy, var(40) = 2
trigger4 = (Enemy, Name = "Akuma" && Enemy, AuthorName = "DeathScythe") && Enemy, var(40) = 1
value = 14

[State 180, Victory Quote vs. Gouken]
type = VictoryQuote
trigger1 = Enemy, Name = "Gouken" || Enemy, Name = "cvsgouken"
value = ifElse(var(40) = 1, 75, 15)

[State 180, Victory Quote vs. Athena Asamiya]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Athena Asamiya" || Enemy, Name = "Athena" || Enemy, Name = "cvsathena"
value = 16

[State 180, Victory Quote vs. Balrog (Claw)]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, AuthorName != "Phantom.of.the.Server"
trigger1 = Enemy, Name = "Vega" || Enemy, Name = "cvsbalrog"
value = 17

[State 180, Victory Quote vs. Batsu Ichimonji]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Batsu Ichimonji" || Enemy, Name = "Batsu" || Enemy, Name = "cvsbatsu"
value = 18

[State 180, Victory Quote vs. Benimaru Nikaido]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Benimaru Nikaido" || Enemy, Name = "Benimaru" || Enemy, Name = "cvsbenimaru"
value = 19

[State 180, Victory Quote vs. M. Bison (Boxer)]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Balrog" || Enemy, Name = "cvsbison"
value = 20

[State 180, Victory Quote vs. Blanka]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Blanka" || Enemy, Name = "cvsblanka"
value = 21

[State 180, Victory Quote vs. Cammy White]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Cammy" || Enemy, Name = "cvscammy"
value = 22

[State 180, Victory Quote vs. Chang Koehan]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Chang" || Enemy, Name = "Chang Koehan" || Enemy, Name = "cvschang"
value = 23

[State 180, Victory Quote vs. Casshern]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Casshern"
value = 24

[State 180, Victory Quote vs. Chun-Li]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Chun-Li" || Enemy, Name = "cvschunli" || Enemy, Name = "Chun Li" || Enemy, Name = "ChunLi"
value = 25

[State 180, Victory Quote vs. Dan Hibiki]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Dan" || Enemy, Name = "Dan Hibiki" || Enemy, Name = "cvsdan"
value = 26

[State 180, Victory Quote vs. Deadpool]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Deadpool"
value = 27

[State 180, Victory Quote vs. Dhalsim]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Dhalsim" || Enemy, Name = "cvsdhalsim" || Enemy, Name = "RajaaDhalsim"
value = 28

[State 180, Victory Quote vs. E. Honda]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Honda" || Enemy, Name = "E. Honda" || Enemy, Name = "cvshonda" || Enemy, Name = "E.Honda"
value = 29

[State 180, Victory Quote vs. Eagle]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Eagle" || Enemy, Name = "cvseagle"
value = 30

[State 180, Victory Quote vs. Frank West]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Frank" || Enemy, Name = "Frank West"
value = 31

[State 180, Victory Quote vs. Geese Howard]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Geese" || Enemy, Name = "Geese Howard" || Enemy, Name = "cvsgeese" || Enemy, Name = "cvsgeese_normal" || Enemy, Name = "cvsgeese_ex" || Enemy, Name = "Nightmare Geese" || Enemy, Name = "Geese_WLS" ||  Enemy, Name = "Geese B Howard"
value = 32

[State 180, Victory Quote vs. Guile]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Guile" || Enemy, Name = "cvsguile"
value = 33

[State 180, Victory Quote vs. Haohmaru]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = (Enemy, Name = "Haohmaru" && !(Enemy, AuthorName != "KarmaCharmeleon")) || Enemy, Name = "cvshaohmaru"
trigger2 = Enemy, Name = "Haohmaru" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) = 0
value = 34

[State 180, Victory Quote vs. Heihachi Mishima]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Heihachi" || Enemy, Name = "Heihachi Mishima"
value = 35

[State 180, Victory Quote vs. Hibiki Takane]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Hibiki" || Enemy, Name = "Hibiki Takane" || Enemy, Name = "cvshibiki"
value = 36

[State 180, Victory Quote vs. Iori Yagami]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Iori" || (Enemy, Name = "Iori Yagami" && !(Enemy, AuthorName = "Anjel") && !(Enemy, AuthorName = "KarmaCharmeleon") && !(Enemy, AuthorName = "Knuckles8864")) || Enemy, Name = "IoriMG"
trigger2 = (Enemy, Name = "cvsiori" && Enemy, PalNo = [1, 6]) || Enemy, Name = "cvsiori_normal"
trigger3 = (Enemy, Name = "Iori_WLS" && Enemy, PalNo = [1, 6]) && Enemy, Name = "N.Iori_WLS"
trigger4 = Enemy, Name = "Iori Yagami" && Enemy, AuthorName = "Anjel" && Enemy, var(50) != 1
trigger5 = Enemy, Name = "Iori Yagami" && Enemy, AuthorName = "Knuckles8864" && Enemy, var(40) != 1
trigger6 = Enemy, Name = "Iori Yagami" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) != 1 && Enemy, var(40) != 3
value = 37

[State 180, Victory Quote vs. Jin Kazama]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Jin" || Enemy, Name = "Jin Kazama" || Enemy, Name = "cvsjin"
value = 38

[State 180, Victory Quote vs. Joe Higashi]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Joe" || Enemy, Name = "Joe Higashi" || Enemy, Name = "cvsjoe"
value = 39

[State 180, Victory Quote vs. Kazuya Mishima]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Kazuya" || Enemy, Name = "Kazuya Mishima" || Enemy, Name = "cvskazuya"
value = 40

[State 180, Victory Quote vs. Kim Kaphwan]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Kim" || Enemy, Name = "Kim Kaphwan" || Enemy, Name = "cvskim"
value = 41

[State 180, Victory Quote vs. King]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "King" || Enemy, Name = "cvsking"
value = 42

[State 180, Victory Quote vs. Kyo Kusanagi]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Kyo" || (Enemy, Name = "Kyo Kusanagi" && !(Enemy, AuthorName = "Jmorphman")) || Enemy, Name = "Kyo_WLS"
trigger2 = (Enemy, Name = "cvskyo" && Enemy, PalNo = [1, 6]) || Enemy, Name = "cvskyo_normal"
trigger3 = Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) != 1
value = 43

[State 180, Victory Quote vs. Kyosuke Kagami]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Kyosuke" || Enemy, Name = "Kyosuke Kagami" || Enemy, Name = "cvskyosuke"
value = 44

[State 180, Victory Quote vs. Mai Shiranui]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Mai" || Enemy, Name = "Mai Shiranui" || Enemy, Name = "cvsmai"
value = 45

[State 180, Victory Quote vs. Maki Genryuusai]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Maki" || Enemy, Name = "Maki Genryuusai" || Enemy, Name = "cvsmaki"
value = 46

[State 180, Victory Quote vs. Morrigan Aensland]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Morrigan" || Enemy, Name = "Morrigan Aensland" || Enemy, Name = "cvsmorrigan"
value = 47

[State 180, Victory Quote vs. Nakoruru]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Nakoruru" || Enemy, Name = "cvsnakoruru"
value = 48

[State 180, Victory Quote vs. Raiden]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Raiden" || Enemy, Name = "Big Bear" || Enemy, Name = "cvsraiden"
value = 49

[State 180, Victory Quote vs. Rock Howard]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Rock" || Enemy, Name = "Rock Howard" || Enemy, Name = "cvsrock"
value = 50

[State 180, Victory Quote vs. Rolento F. Schugerg]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Rolento" || Enemy, Name = "Rolento F. Schugerg" || Enemy, Name = "cvsrolento"
value = 51

[State 180, Victory Quote vs. Rugal Bernstein]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Rugal" || (Enemy, Name = "Rugal Bernstein" && !(Enemy, AuthorName = "KarmaCharmeleon"))
trigger2 = (Enemy, Name = "cvsrugal" && (Enemy,PalNo = [1, 6])) || Enemy, Name = "cvsrugal_normal"
trigger3 = (Enemy, Name = "Rugal Bernstein" && Enemy, AuthorName = "KarmaCharmeleon") && Enemy, var(40) = 0
value = 52

[State 180, Victory Quote vs. Ryo Sakazaki]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Ryo Sakazaki" || Enemy, Name = "Ryo" || Enemy, Name = "cvsryo"
value = 53

[State 180, Victory Quote vs. Sakura]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Sakura" || (Enemy, Name = "Sakura Kasugano" && !(Enemy, AuthorName = "DeathScythe")) || Enemy, Name = "cvssakura"
trigger2 = (Enemy, Name = "Sakura Kasugano" && Enemy, AuthorName = "DeathScythe") && var(40) = 1
value = 54

[State 180, Victory Quote vs. Sagat]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Sagat" || Enemy, Name = "cvssagat" || Enemy, Name = "SagatMG"
value = 55

[State 180, Victory Quote vs. Terry Bogard]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Terry" || Enemy, Name = "Terry Bogard" || Enemy, Name = "cvsterry"
value = 56

[State 180, Victory Quote vs. Ryuhaku Todoh]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Todoh" || Enemy, Name = "Ryuhaku Todoh" || Enemy, Name = "cvstodo"
value = 57

[State 180, Victory Quote vs. Vega (Dictator)]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "M. Bison" || (Enemy, Name = "Vega" && Enemy, AuthorName = "Phantom.of.the.Server") || (Enemy, Name = "Dictator" && Enemy, AuthorName = "KarmaCharmeleon") || Enemy, Name = "M.Bison" || Enemy, Name = "Bison" || Enemy, Name = "Bison Bison"
trigger2 = Enemy, Name = "cvsvega" || Enemy, Name = "cvsvega_normal" || Enemy, Name = "cvsvega_ex"
value = 58

[State 180, Victory Quote vs. Vice]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Vice" || Enemy, Name = "cvsvice"
value = 59

[State 180, Victory Quote vs. Yang]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Yang" || Enemy, Name = "Yang Lee" || Enemy, Name = "cvsyang"
value = 60

[State 180, Victory Quote vs. Ryuji Yamazaki]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Yamazaki" || Enemy, Name = "Ryuji Yamazaki" || Enemy, Name = "cvsyamazaki"
value = 61

[State 180, Victory Quote vs. Yun]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Yun" || Enemy, Name = "Yun Lee" || Enemy, Name = "cvsyun"
value = 62

[State 180, Victory Quote vs. Yuri Sakazaki]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Yuri" || Enemy, Name = "Yuri Sakazaki" || Enemy, Name = "cvsyuri"
value = 63

[State 180, Victory Quote vs. Zangief]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Zangief" || Enemy, Name = "cvszangief"
value = 64

[State 180, Victory Quote vs. Zero]
type = VictoryQuote
triggerAll = !var(40) || var(40) = 3
trigger1 = Enemy, Name = "Zero" || Enemy, Name = "cvszero"
value = 65

[State 180, Win by Shun Goku Satsu]
type = ChangeState
trigger1 = PrevStateNo = 3620
value = 3620

[State 180, Win vs Ken]
type = ChangeState
triggerAll = !(var(40) = [1, 2]) && var(27)
triggerAll = (RoundState = 2 || MatchOver) && !(TeamMode = Turns)
triggerAll = NumEnemy
triggerAll = Enemy, FrontEdgeDist >= 55
trigger1 = Enemy, AuthorName = "Jmorphman" && Enemy, Name = "Ken Masters" && (Enemy, var(40) != 1)
value = 184

[State 180, Win with Ken (Simul)]
type = ChangeState
triggerAll = !(var(40) = [1, 2])
triggerAll =  TeamMode = Simul && NumPartner
triggerAll = Partner, Alive
trigger1 = Partner, AuthorName = "Jmorphman" && Partner, Name = "Ken Masters" && (Partner, var(40) != 1)
value = 181

[State 180, Win 1]
type = ChangeState
trigger1 = command = "holdstart"
trigger2 = command = "holda" || command = "holdb" || command = "holdc"
value = ifElse(var(40) = 2, 186, ifElse(var(40) = 1, 185, 181))

[State 180, Win 2]
type = ChangeState
trigger1 = command = "holdx" || command = "holdy" || command = "holdz"
value = ifElse(var(40) = 2, 187, ifElse(var(40) = 1, 185, 182))

[State 180, Win Decider]
type = ChangeState
trigger1 = 1
value = ifElse(var(40) = 2, 186 + (Random % 2), ifElse(var(40) = 1, 185, 181 + (Random % 2)))



;====================<WIN 1>====================
[StateDef 181]
type = S
physics = S
anim = 181
ctrl = 0

[State 181, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 181, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 181, 0
channel = 0



;====================<WIN 2>====================
[StateDef 182]
type = S
physics = S
anim = 182
ctrl = 0

[State 182, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 182, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 182, 0
channel = 0



;====================<WIN VS KEN>====================
[StateDef 184]
type = S
physics = S
anim = 20
ctrl = 0

[State 184, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Anim != 184
trigger2 = Anim = 184 && AnimElemTime(1) < 200
flag = RoundNotOver

[State 184, VelSet]
type = VelSet
trigger1 = Anim = 20
x = const(velocity.walk.fwd.x)

[State 184, ChangeAnim]
type = ChangeAnim
trigger1 = Enemy, Facing = Facing
trigger1 = Enemy, P2Dist X <= 68 && (Enemy, P2Dist X >= 58)
value = 5

[State 184, Turn]
type = Turn
trigger1 = Enemy, Facing = Facing
trigger1 = Enemy, P2Dist X <= 68 && (Enemy, P2Dist X >= 58)

[State 184, ChangeAnim]
type = ChangeAnim
trigger1 = Enemy, Facing != Facing
trigger1 = Anim = 20
trigger1 = vel x > 0
trigger1 = Enemy, P2Dist X <= 68 && (Enemy, P2Dist X >= 28)
trigger2 = Anim = 5 && !AnimTime
value = 184

[State 184, PosAdd]
type = PosAdd
trigger1 = Anim = 5 || Anim = 184
x = ceil(Enemy, P2Dist x - 68)

[State 184, VelSet]
type = VelSet
trigger1 = Anim != 20
x = 0



;====================<WIN (EVIL)>====================
[StateDef 185]
type = S
physics = S
anim = 185
ctrl = 0

[State 185, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 185, Voice]
type = PlaySnd
trigger1 = !Time && Random < 500
value = 185, 0
channel = 0



;====================<WIN 1 (SHADOW)>====================
[StateDef 186]
type = S
physics = S
anim = 186
ctrl = 0

[State 186, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 186, Voice]
type = PlaySnd
trigger1 = !Time
value = 186, 0
channel = 0

[State 186, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 186, 1
channel = 0

[State 186, Slam Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 196, 1
channel = 1

[State 186, EnvShake]
type = EnvShake
trigger1 = AnimElem = 8
time = 10
ampl = -2
freq = 120



;====================<WIN 2 (SHADOW)>====================
[StateDef 187]
type = S
physics = S
anim = 187
ctrl = 0

[State 187, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 187, Voice]
type = PlaySnd
trigger1 = !Time
value = 187, 0
channel = 0



;==========<TAUNT>==========
[StateDef 195]
type = S
moveType = I
physics = S
anim = 195
velSet = 0, 0
sprPriority = 1
ctrl = 0

[State 195, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 195, (Random % 2)
channel = 0

[State 195, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;==========<TAUNT (EVIL)>==========
[StateDef 196]
type = S
moveType = I
physics = S
anim = 196 + 10000  * (var(40) = [1, 2])
velSet = 0, 0
sprPriority = 1
ctrl = 0

[State 196, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 196, 0 + 10  * (var(40) = [1, 2])
channel = 0

[State 196, Slam Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 196, 1
channel = 1

[State 196, EnvShake]
type = EnvShake
trigger1 = AnimElem = 5
time = 10
ampl = -2
freq = 120

[State 196, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;==========<TAUNT (SHADOW)>==========
[StateDef 197]
type = S
moveType = I
physics = S
anim = 197 + 10000  * (var(40) = [1, 2])
velSet = 0, 0
sprPriority = 1
ctrl = 0

[State 197, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 197, 20
channel = 0

[State 197, Slam Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 196, 1
channel = 1

[State 197, EnvShake]
type = EnvShake
trigger1 = AnimElem = 5
time = 10
ampl = -2
freq = 120

[State 197, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;====================<K.O.>====================
[StateDef 5150]
type = L
moveType = H
physics = N
sprPriority = -3
ctrl = 0

[State 5150, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
triggerAll = SelfAnimExist(5140)
trigger1 = (Anim != [5111, 5119]) && (Anim != [5171, 5179])
trigger2 = !SelfAnimExist(5140 + (Anim % 10))
value = 5140

[State 5150, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = (Anim = [5111, 5119]) || (Anim = [5171, 5179])
trigger1 = SelfAnimExist(5140 + (Anim % 10))
value = 5140 + (Anim % 10)

[State 5150, ChangeAnim]
type = ChangeAnim
trigger1 = MatchOver = 1
trigger1 = Anim = [5140, 5149]
trigger1 = SelfAnimExist(Anim + 10)
value = Anim + 10
persistent = 0

[State 5150, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = Anim != [5140 ,5159]
trigger1 = Anim != [5110, 5119]
value = 5110

[State 5150, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 171
trigger1 = Enemy, Anim = 184
trigger1 = NumEnemy
trigger1 = Enemy, AuthorName = "Jmorphman" && Enemy, Name = "Ken Masters" && (Enemy, var(40) != 1)
value = 171

[State 5150, ChangeAnimElem to sync with Ken (P2 side)]
type = ChangeAnim
trigger1 = Anim = 171 && AnimElemTime(7) >= 0
trigger1 = Enemy, Anim = 184 && Enemy, AnimElemTime(4) < 0
value = 171
elem = 6

[State 5150, ChangeAnimElem to sync with Ken (P2 side)]
type = ChangeAnim
trigger1 = Anim = 171 && AnimElemTime(7) < 0
trigger1 = Enemy, Anim = 184 && Enemy, AnimElemTime(4) >= 0
value = 171
elem = 7

[State 5150, SprPriority]
type = SprPriority
trigger1= Anim = 171
value = 3

[State 5150, VelMul]
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, VelSet]
type = VelSet
trigger1 = abs(vel x) < const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 5150, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1



;====================<CHEAP K.O.>====================
[StateDef 5950]
type = S
moveType = H
physics = S
anim = 5950
velSet = 0, 0

[State 5950, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5950, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5950, Assert: NoKOsnd]
type = AssertSpecial
trigger1 = 1
flag = NoKOsnd

[State 5950, StopSnd]
type = StopSnd
trigger1 = !Time && !Alive
channel = 0

[State 5950, KO Sound]
type = PlaySnd
trigger1 = AnimElem = 2 && !Alive
value = 5950, 0 + 10 * var(40)

[State 5950, Hitting the Floor Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = F7, 0

[State 5950, Hitting the Floor Explod]
type = Explod
trigger1 = AnimElem = 7
anim = F60
posType = P1
pos = 0, 0
sprPriority = -3

[State 5950, End]
type = ChangeState
trigger1= !AnimTime
value = ifElse(Alive, 5110, 5150)



;====================<AIR HIT TRANSITION>====================
[Statedef 5035]
type = A
movetype = H
physics = N

[State 5035, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5035)
trigger1 = Anim = [5000, 5029]
value = 5035

[State 5035, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 5035, Recover]
type = ChangeState
triggerAll = !HitFall
trigger1 = HitOver
trigger2 = !AnimTime
trigger3 = vel y > 0 && pos y >= 10
trigger4 = !Time
trigger4 = Anim != 5035
value = 5040

[State 5035, Fall]
type = ChangeState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = !AnimTime
trigger3 = vel y > 0 && pos y >= 10
trigger4 = !Time
trigger4 = Anim != 5035
value = 5050



;====================<GET UP FROM LIE DOWN>====================
[Statedef 5120]
type = L
movetype = I
physics = N

[State 5120, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim != [5111, 5119]
trigger2 = !SelfAnimExist(5120 + (Anim % 10) + (10000 * (var(40) = [1, 2])))
value = 5120 + 10000 * (var(40) = [1, 2])

[State 5120, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim = [5111, 5119]
trigger1 = SelfAnimExist(5120 + (Anim % 10) + (10000 * (var(40) = [1, 2])))
value = 5120 + (Anim % 10) + 10000 * (var(40) = [1, 2])

[State 5120, VelSet]
type = VelSet
trigger1 = !Time
x = 0

[State 5120, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, HitFallSet]
type = HitFallSet
trigger1 = !AnimTime
value = 1

[State 5120, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<HIT OTG>=============================
[StateDef 5410]
type = L
moveType = H
physics = N
velSet = 0,0

[State 5410, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignoreHitPause = 1

[State 5410, VarSet]
type = VarSet
trigger1 = !Time
sysvar(2) = 5080

[State 5410, VarAdd]
type = VarAdd
trigger1 = !Time
trigger1 = (Anim = [5081,5089]) || (Anim = [5111,5119])
trigger1 = SelfAnimExist(sysvar(2) + (Anim % 10))
sysvar(2) = Anim % 10

[State 5410, VarSet]
type = VarSet
trigger1 = !Time
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030

[State 5410, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 5410, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 5411


;Knocked back
[Statedef 5411]
type = L
moveType = H
physics = C

[State 5411, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignoreHitPause = 1

[State 5411, VelSet]
type = VelSet
trigger1 = HitOver
x = 0

[State 5411, VarSet]
type = VarSet
trigger1 = !Time
sysvar(0) = 1

[State 5411, ChangeState]
type = ChangeState
trigger1 = HitOver && Alive
value = 5412

[State 5411, SelfState]
type = SelfState
trigger1 = HitOver && !Alive
value = 5150


;Recover
[StateDef 5412]
type = L
moveType = H
physics = N

[State 5412, FallEnvShake]
type = FallEnvShake
trigger1 = !Time

[State 5412, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5110 + (Anim % 10))
trigger1 = Anim = [5081,5089]
value = 5110 + (Anim % 10)
persistent = 0

[State 5412, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
triggerAll = Anim != [5110,5119]
trigger1 = Anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (Anim % 10))
value = 5170

[State 5412, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
triggerAll = Anim != [5110,5119]
trigger1 = Anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (Anim % 10))
value = 5170 + (Anim % 10)

[State 5412, HitFallDamage]
type = HitFallDamage
trigger1 = !Time

[State 5412, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 5412, VarSet]
type = VarSet
trigger1 = !Time
trigger1 = GetHitVar(fall.yVel) != 0
sysvar(1) = floor(vel y)

[State 5412, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = !sysvar(0)
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5412, Explod]
type = Explod
trigger1 = !Time
trigger1 = !sysvar(0)
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprPriority = ifElse(sysvar(1) <= Const720p(56), -10, 10)

[State 5412, VelSet]
type = VelSet
trigger1 = !Time
y = 0

[State 5412, ChangeAnim]
type = ChangeAnim
triggerAll = Anim = [5171, 5179]
triggerAll = SelfAnimExist(5110 + (Anim % 10))
trigger1 = !AnimTime
trigger2 = sysvar(0)
value = 5110 + (Anim % 10)
persistent = 0

[State 5412, ChangeAnim]
type = ChangeAnim
triggerAll = Anim != [5111, 5119]
trigger1 = !AnimTime
trigger2 = sysvar(0)
value = 5110
persistent = 0

[State 5412, SelfState]
type = SelfState
triggerAll = !Alive
trigger1 = !AnimTime
trigger2 = sysvar(0)
trigger3 = Anim = [5110, 5119]
value = 5150

[State 5412, VarSet]
type = VarSet
trigger1 = sysVar(0)
trigger1 = !Time
sysvar(0) = 0

[State 5412, VelMul]
type = VelMul
trigger1 = 1
x = 0.85

[State 5412, VelSet]
type = VelSet
trigger1 = abs(vel x) < const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 5412, SelfState]
type = SelfState
trigger1 = !Time
trigger1 = GetHitVar(chainID) != 3700 && GetHitVar(chainID) != 3705
trigger2 = HitOver
trigger2 = GetHitVar(chainID) = 3700 || GetHitVar(chainID) = 3705
value = 5120



;========================<SLAMMED AGAINST THE GROUND>=============================
;Being Slammed (Standing)
[StateDef 5420]
type = A
moveType = H
physics = N
velset = 0,0

[State 5420, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = ifElse(SelfAnimExist(5111) || SelfAnimExist(5112), 5012, 5070)

[State 5420, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5420 + (StateType = C))
value = 5420 + (StateType = C)

[State 5420, End]
type = SelfState
trigger1 = HitShakeOver && pos y < 0
trigger2 = StateType = L
value = 5030

[State 5420, End]
type = ChangeState
trigger1 = HitShakeOver && pos y >= 0
value = 5421


;Hitting the Ground
[StateDef 5421]
type = U
moveType = H
physics = N
velSet = 0,0

[State 5421, StateTypeSet: Lie Down, Physics: None]
type = StateTypeSet
trigger1 = GetHitVar(chainID) != 3800
stateType = L
physics = N

[State 5421, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5102) && PrevStateNo != 5426, 5102, ifElse(SelfAnimExist(5101) && PrevStateNo != 5426, 5101, 5100))
elem = ifElse(AuthorName = "Team Z2", 2, 1)

[State 5421, ChangeAnim]
type = ChangeAnim
triggerall = !Time && PrevStateNo != 5426
trigger1 = SelfAnimExist(5422)
value = 5422

[State 5421, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5421, HitFallDamage]
type = HitFallDamage
trigger1 = !Time

[State 5421, EnvShake]
type = EnvShake
trigger1 = !Time
time = 14
ampl = -4

[State 5421, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,1

[State 5421, Hitting the Floor FX]
type = Explod
trigger1 = !Time
anim = F61
posType = P1
pos = 0, 0
sprPriority = -3

[State 5421, End]
type = ChangeState
trigger1 = !AnimTime
trigger2 = Anim = 5100 + (Anim % 10)
trigger2 = Time = 4
trigger2 = Anim != 5422
trigger3 = Anim = 5422
trigger3 = AnimTime = 0 || Time = 12
value = ifElse(GetHitVar(chainID) = 3800, 5430, 5422)


;Bouncing Off Ground
[StateDef 5422]
type = L
moveType = H
physics = N

[State 5422, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5160 + Anim % 10), 5160 + Anim % 10, 5160)

[State 5422, ChangeAnim]
type = ChangeAnim
triggerall = !Time && Anim = 5422
trigger1 = SelfAnimExist(5424)
value = 5424

[State 5422, VelSet]
type = VelSet
trigger1 = !Time
y = -3.75

[State 5422, PosSet]
type = PosSet
trigger1 = !Time
y = const(movement.down.bounce.offset.y)

[State 5422, PosAdd]
type = PosAdd
trigger1 = !Time
x = const(movement.down.bounce.offset.x)

[State 5422, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = 0.625

[State 5422, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5424
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = ifElse(SelfAnimExist(5162), 5162, ifElse(SelfAnimExist(5161), 5161, 5160))

[State 5422, Recover]
type = SelfState
trigger1 = GetHitVar(chainID) != 1400 && GetHitVar(chainID) != 1440 && GetHitVar(chainID) != 1530 && GetHitVar(chainID) != 3700 && GetHitVar(chainID) != 3705
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5200

[State 5422, End]
type = ChangeState
trigger1 = GetHitVar(chainID) = 3700 || GetHitVar(chainID) = 3705
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5412

[State 5422, End]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5110


;Aerial Being Slammed (Hitshake)
[StateDef 5425]
type = A
moveType = H
physics = N
velSet = 0,0

[State 5425, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5070

[State 5425, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 5425, ChangeAnim]
type = ChangeState
trigger1 = HitShakeOver
value = 5426


;Aerial Being Slammed (Knocked Away)
[StateDef 5426]
type = A
moveType = H
physics = N
ctrl = 0

[State 5426, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yaccel)

[State 5426, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 5426, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.trip.groundlevel)
value = 5421


;Rebounding Off Ground (Ground bounce)
[StateDef 5430]
type = A
moveType = H
physics = N

[State 5430, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim = [5420,5422]
trigger1 = SelfAnimExist(5091)
value = 5091

[State 5430, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
trigger1 = (Anim != [5101, 5109]) && Anim != 5091
trigger2 = !SelfAnimExist(5090 + (Anim % 10))
value = 5090

[State 5430, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim = [5101, 5109]
trigger1 = SelfAnimExist(5090 + (Anim % 10))
value = 5090 + (Anim % 10)

[State 5430, VelSet]
type = VelSet
trigger1 = !Time
x = -0.55865921787
y = -10

[State 5430, PosSet]
type = PosSet
trigger1 = !Time
y = const(movement.down.bounce.offset.y)

[State 5430, PosAdd]
type = PosAdd
trigger1 = !Time
x = const(movement.down.bounce.offset.x)

[State 5430, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = 0.537109375

[State 5430, SelfState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5431


;Hitting the ground from rebound (Ground bounce)
[StateDef 5431]
type  = L
moveType = H
physics = N

[State 5431, FallEnvShake]
type = FallEnvShake
trigger1 = !Time

[State 5431, Save fall velocity]
type = VarSet
trigger1 = !Time
sysvar(1) = floor(vel y)

[State 5431, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5102), 5102, ifElse(SelfAnimExist(5101), 5101, 5100))
elem = ifElse(AuthorName = "Team Z2", 2, 1)

[State 5431, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 5431, VelSet]
type = VelSet
trigger1 = !Time
y = 0

[State 5431, VelMul]
type = VelMul
trigger1 = !Time
x = 0.75

[State 5431, Hitting the floor FX]
type = Explod
trigger1 = Time = 1
anim = F(60 + (sysvar(1) > const720p(20)) + (sysvar(1) > const720p(56)))
posType = P1
pos = 0, 0
sprPriority = ifElse(sysvar(1) <= const720p(56), -10, 10)

[State 5431, HitFallDamage]
type = HitFallDamage
trigger1 = Time = 3

[State 5431, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > const720p(20)) + (sysvar(1) > const720p(56))

[State 5431, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 5431, SelfState]
type = SelfState
trigger1 = !AnimTime
value = 5101



;=====================<CRUMPLE>==========================
;Hit shake
[StateDef 5450]
type = S
movetype = H
physics = N
velset = 0,0

[State 5450, ChangeAnim: Light-Hard]
type = ChangeAnim
trigger1 = !Time && GetHitVar(AnimType) != [3, 5]
value = ifElse((GetHitVar(GroundType) = 1), 5000, 5010) + GetHitVar(AnimType)

[State 5450, ChangeAnim: Freeze]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 5450, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 5451


;Knocked Back
[Statedef 5451]
type = S
movetype = H
physics = S

[State 5451, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 5451, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
value = 5005 + GetHitVar(AnimType) + (GetHitVar(GroundType) = 2) * 10

[State 5451, VelMul]
type = VelMul
trigger1 = Time >= GetHitVar(slideTime)
x = .6

[State 5451, VelSet]
type = VelSet
trigger1 = HitOver
x = 0

[State 5451, DefenceMulSet]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5451, ChangeState]
type = ChangeState
trigger1 = HitOver
value = 5455


;Falling down
[StateDef 5455]
type = S
physics = N
movetype = H
ctrl = 0
velSet = 0,0

[State 5455, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
trigger1 = !SelfAnimExist(5955)
value = 5455
ignoreHitPause = 1

[State 5455, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5955)
value = 5955

[State 5455, VelSet]
type = VelAdd
trigger1 = pos y < 0
y = 0.58

[State 5455, PlaySnd]
type = PlaySnd
trigger1 = pos y > -vel y
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5455, Explod]
type = Explod
trigger1 = pos y > -vel y
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprPriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)

[State 5455, PosSet]
type = PosSet
trigger1 = pos y > -vel y
y = 0

[State 5455, PosSet]
type = VelSet
trigger1 = pos y > -vel y
y = 0

[State 5455, VarSet]
type = VarSet
trigger1 = !AnimTime
trigger2 = AnimElemTime(AnimElemNo(0) + 1) = 0
sysvar(0) = ifElse(Anim = 5455, 0, 1)

[State 5455, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
trigger2 = AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(Anim = 5955 && SelfAnimExist(5112), 5112, 5110)
persistent = 0

[State 5455, SelfState]
type = SelfState
trigger1 = !AnimTime
trigger2 = AnimElemTime(AnimElemNo(0) + 1) = 0
value = 5110



;===========<GUARD CRUSH>==========
;Pre-Crush State
[StateDef 5905]
type = U
moveType = H
physics  = N
velSet = 0,0

[State 5905, ChangeAnim (Stand)]
type = ChangeAnim
trigger1 = StateType != A && StateType != C
value = 150

[State 5905, ChangeAnim (Crouch)]
type = ChangeAnim
trigger1 = StateType = C
value = 151

[State 5905, ChangeAnim (Air)]
type = ChangeAnim
trigger1 = StateType = A
value = 152

[State 5905, EnvShake]
type = EnvShake
trigger1 = !Time
time = 18
ampl = 6
freq = 120
ignoreHitPause = 1

[State 5905, Standing]
type = Changestate
trigger1 = StateType != A && StateType != C
trigger1 = HitShakeOver
value = 5910

[State 5905, Crouching]
type = Changestate
trigger1 = StateType = C
trigger1 = HitShakeOver
value = 5920

[State 5905, Jumping]
type = Changestate
trigger1 = StateType = A
trigger1 = HitShakeOver
value = 5930

[State 5905, SelfState]
type = SelfState
trigger1 = Time = 48
value = ifElse(StateType = A, 5210, 0)
ctrl = 1


;Standing Guard Crush
[Statedef 5910]
type = S
moveType = H
physics = N

[State 5910, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 5910, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5910), 5910, 5012)

[State 5910, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5910 || Anim = 5012) && AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(SelfAnimExist(5910), 5910, 5012)
elem = AnimElemNo(0)

[State 5910, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5910 || Anim = 5012) && Time = 24
value = ifElse(SelfAnimExist(5911), 5911, 5017)

[State 5910, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5911 || Anim = 5017) && AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(SelfAnimExist(5911), 5911, 5017)
elem = AnimElemNo(0)

[State 5910, End]
type = SelfState
trigger1 = Time = 24
value = 0
ctrl = 1


;Crouching Guard Crush
[Statedef 5920]
type = C
moveType = H
physics = N

[State 5920, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 5920, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5920), 5920, 5022)

[State 5920, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5920 || Anim = 5022) && AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(SelfAnimExist(5920), 5920, 5022)
elem = AnimElemNo(0)

[State 5920, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5920 || Anim = 5022) && Time = 24
value = ifElse(SelfAnimExist(5921), 5921, 5027)

[State 5920, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5921 || Anim = 5027) && AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(SelfAnimExist(5921), 5921, 5027)
elem = AnimElemNo(0)

[State 5920, End]
type = SelfState
trigger1 = Time = 24
value = 11
ctrl = 1


;Jumping Guard Crush
[Statedef 5930]
type = A
movetype = H
physics = N
velSet = -6.703910615, -1.25

[State 5930, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 5930, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5930), 5930, 5022)

[State 5930, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5930 || Anim = 5022) && AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(SelfAnimExist(5930), 5930, 5022)
elem = AnimElemNo(0)

[State 5930, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = 0.5859375

[State 5930, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5931


;Jumping Guard Crush (Land)
[StateDef 5931]
type = C
moveType = H
physics = N
velSet = 0,0

[State 5931, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5931, Explod]
type = Explod
trigger1 = Time = 1
anim = F60
pos = 0,0
sprPriority = -10

[State 5931, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = F7, 0

[State 5931, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5920), 5921, 5027)

[State 5931, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5921 || Anim = 5027) && AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(SelfAnimExist(5921), 5921, 5027)
elem = AnimElemNo(0)

[State 5931, End]
type = SelfState
trigger1 = Time = 24
value = 11
ctrl = 1



;====================<ELECTROCUTION>=========================
;Hit shake
[StateDef 9010]
type = S
moveType = H
physics = N
velset = 0,0

[State 9010, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = GetHitVar(AnimType) != [3, 5]
value = ifElse((GetHitVar(GroundType) = 1), 5000, 5010) + GetHitVar(AnimType)

[State 9010, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = GetHitVar(AnimType) = [3, 5]
value = 5030

[State 9010, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = (GetHitVar(AnimType) = [4, 5]) && (SelfAnimExist(5047 + GetHitVar(AnimType)))
value = 5047 + GetHitVar(AnimType)

[State 9010, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(7696) || SelfAnimExist(9010)
trigger1 = !Time
value = ifElse(SelfAnimExist(7696), 7696, 9010)

[State 9010, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 7696 && Anim != 9010
trigger1 = Time > 0
value = Anim

[State 9010, StateTypeSet]
type = StateTypeSet
trigger1 = !Time
trigger1 = GetHitVar(yVel) != 0 || GetHitVar(fall)
trigger2 = pos y != 0
StateType = A

[State 9010, SelfState]
type = SelfState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yVel) = 0 && !GetHitVar(fall)
value = 5001

[State 9010, ChangeState]
type = ChangeState
trigger1 = SelfAnimExist(7696) || SelfAnimExist(9010)
trigger1 = HitShakeOver
value = 9011

[State 9010, SelfState]
type = SelfState
trigger1 = HitShakeOver
value = 5030

[State 9010, OffSet]
type = OffSet
trigger1 = Anim = 7696 || Anim = 9010
x = ifElse(Time > 6, 4, ifElse(Time > 4, 6, 8)) * ifElse(Time % 2 = 0, 1, -1)


;Air get-hit (knocked away)
[StateDef 9011]
type = A
moveType = H
physics = N
ctrl = 0

[State 9011, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = (GetHitVar(AnimType) = [4, 5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
trigger1 = Time > 10
value = 5047 + GetHitVar(AnimType)

[State 9011, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
trigger1 = Time > 10
value = 5030

[State 9011, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 9011, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 9011, SelfState]
type = SelfState
triggerAll = !HitFall
trigger1 = HitOver
trigger2 = vel y > 0
trigger2 = pos y >= const(movement.air.getHit.groundLevel)
value = 5040

[State 9011, SelfState]
type = SelfState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = vel y > 0
trigger2 = pos y >= const(movement.air.getHit.groundLevel)
value = 5050

[State 9011, SelfState]
type = SelfState
trigger1 = vel y > 0
value = 5035

[State 9011, OffSet]
type = OffSet
trigger1 = Anim = 7696 || Anim = 9010
trigger1 = Time <= 10
x = 2 * ifElse(Time % 2 = 0, 1, -1)



;========================<TRIPPED>=============================
[Statedef 50450]
type = A
moveType = H
physics = N
velSet = 0, 0

[State 50450, ForceFeedback]
type = ForceFeedback
trigger1 = !Time
waveForm = SineSquare
time = 12
ampl = 140

[State 50450, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5070

[State 50450, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 50451


;Knocked Away
[Statedef 50451]
type = A
moveType = H
physics = N

[State 50451, HitVelSet]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 50451, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yaccel)

[State 50451, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = GetHitVar(fall.recover)
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 50451, SelfState]
type = SelfState
trigger1 = vel Y > 0
trigger1 = pos Y >= Const(movement.air.gethit.trip.groundlevel)
value = 5110



;====================<ELECTROCUTION (STUN)>=========================
;Hit shake
[StateDef 59010]
type = S
moveType = H
physics = N
velset = 0,0

[State 59010, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = GetHitVar(AnimType) != [3, 5]
value = ifElse((GetHitVar(GroundType) = 1), 5000, 5010) + GetHitVar(AnimType)

[State 59010, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = GetHitVar(AnimType) = [3, 5]
value = 5030

[State 59010, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = (GetHitVar(AnimType) = [4, 5]) && (SelfAnimExist(5047 + GetHitVar(AnimType)))
value = 5047 + GetHitVar(AnimType)

[State 59010, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(7696) || SelfAnimExist(9010)
trigger1 = !Time
value = ifElse(SelfAnimExist(7696), 7696, 9010)

[State 59010, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 7696 && Anim != 9010
trigger1 = Time > 0
value = Anim

[State 59010, StateTypeSet]
type = StateTypeSet
trigger1 = !Time
trigger1 = GetHitVar(yVel) != 0 || GetHitVar(fall)
trigger2 = pos y != 0
StateType = A

[State 59010, SelfState]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yVel) = 0 && !GetHitVar(fall)
value = 55001

[State 59010, ChangeState]
type = ChangeState
trigger1 = SelfAnimExist(7696) || SelfAnimExist(9010)
trigger1 = HitShakeOver
value = 59011

[State 59010, SelfState]
type = ChangeState
trigger1 = HitShakeOver
value = 55030

[State 59010, OffSet]
type = OffSet
trigger1 = Anim = 7696 || Anim = 9010
x = ifElse(Time > 6, 4, ifElse(Time > 4, 6, 8)) * ifElse(Time % 2 = 0, 1, -1)


;Air get-hit (knocked away)
[StateDef 59011]
type = A
moveType = H
physics = N
ctrl = 0

[State 59011, 1ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = (GetHitVar(AnimType) = [4, 5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
trigger1 = Time > 10
value = 5047 + GetHitVar(AnimType)

[State 59011, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
trigger1 = Time > 10
value = 5030

[State 59011, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 59011, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 59011, SelfState]
type = ChangeState
triggerAll = !HitFall
trigger1 = HitOver
trigger2 = vel y > 0
trigger2 = pos y >= const(movement.air.getHit.groundLevel)
value = 55040

[State 59011, SelfState]
type = ChangeState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = vel y > 0
trigger2 = pos y >= const(movement.air.getHit.groundLevel)
value = 55050

[State 59011, SelfState]
type = ChangeState
trigger1 = vel y > 0
value = 55035

[State 59011, OffSet]
type = OffSet
trigger1 = Anim = 7696 || Anim = 9010
trigger1 = Time <= 10
x = 2 * ifElse(Time % 2 = 0, 1, -1)



;========================<STUN>=============================
;Air get-hit (knocked away)
[Statedef 55030]
type = A
physics = N
moveType = H
ctrl = 0

[State 55030, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
value = 5030

[State 55030, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 55030, HitVelSet]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 55030, SelfState]
type = SelfState
triggerAll = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0
trigger2 = Pos Y >= const(movement.air.gethit.groundlevel)
value = 5040

[State 55030, ChangeState]
type = ChangeState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0
trigger2 = Pos Y >= const(movement.air.gethit.groundlevel)
value = 55050

[State 555030, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 55035


;Air get-hit (transition)
[Statedef 55035]
type = A
physics = N
moveType = H

[State 55035, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051, 5059]
trigger1 = Anim != 5090
value = 5035

[State 55035, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 55035, SelfState]
type = SelfState
triggerAll = !HitFall
trigger1 = HitOver
trigger2 = AnimTime = 0
trigger3 = Vel Y > 0
trigger3 = Pos Y >= const(movement.air.gethit.groundlevel)
trigger4 = Time = 0
trigger4 = Anim != 5035
value = 5040

[State 55035, ChangeState]
type = ChangeState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = AnimTime = 0
trigger3 = Vel Y > 0
trigger3 = Pos Y >= const(movement.air.gethit.groundlevel)
trigger4 = Time = 0
trigger4 = Anim != 5035
value = 55050


;Air get-hit (falling)
[Statedef 55050]
type = A
physics = N
moveType = H

[State 55050, ChangeAnim]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090
value = 5050

[State 55050, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = [5050, 5059]
trigger1 = Vel Y >= ifElse(Anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(Anim + 10)
value = Anim + 10
persistent = 0

[State 55050, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yaccel)

[State 55050, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifElse((Anim = [5051, 5059]) || (Anim = [5061, 5069]), 0, const(movement.air.gethit.groundlevel))
value = 55100


; Downed get-hit (hit ground from fall)
[Statedef 55100]
type = L
physics = N
moveType = H

[State 55100, FallEnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 55100, VarSet]
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 55100, ChangeAnim]
type = ChangeAnim
triggerAll = Time = 0
trigger1 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = !SelfAnimExist(5100 + (Anim % 10))
value = 5100

[State 55100, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (Anim = [5051,5059]) || (Anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (Anim % 10))
value = 5100 + (Anim % 10)

[State 55100, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 55100, VelSet]
type = VelSet
trigger1 = Time = 0
y = 0

[State 55100, VelMul]
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 55100, ChangeState]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 55110

[State 55100, Explod]
type = Explod
trigger1 = Time = 1
Anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprPriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)

[State 55100, HitFallDamage]
type = HitFallDamage
trigger1 = Time = 3

[State 55100, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 55100, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 55100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 55101

[State 55100, ForceFeedback]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20


; Downed get-hit (bounce off ground)
[Statedef 55101]
type = L
physics = N
moveType = H

[State 55101, ChangeAnim]
type = ChangeAnim
triggerAll = Time = 0
trigger1 = Anim != [5101, 5109]
trigger2 = !SelfAnimExist(5160 + (Anim % 10))
value = 5160

[State 55101, ChangeAnim]
type = ChangeAnim
triggerAll = Time = 0
trigger1 = Anim = [5101, 5109]
trigger1 = SelfAnimExist(5160 + (Anim % 10))
value = 5160 + (Anim % 10)

[State 55101, HitFallVel]
type = HitFallVel
trigger1 = Time = 0

[State 55101, PosSet]
type = PosSet
trigger1 = Time = 0
y = Const(movement.down.bounce.offset.y)

[State 55101, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = Const(movement.down.bounce.offset.x)

[State 55101, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = Const(movement.down.bounce.yaccel)

[State 55101, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.down.bounce.groundlevel)
value = 55110


; Downed get-hit (lying down)
[Statedef 55110]
type = L
physics = N
moveType = H

[State 55110, FallEnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 55110, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5110 + (Anim % 10))
trigger1 = Anim = [5081, 5089]
value = 5110 + (Anim % 10)
persistent = 0

[State 55110, ChangeAnim]
type = ChangeAnim
triggerAll = Time = 0
triggerAll = Anim != [5110, 5119]
trigger1 = Anim != [5161, 5169]
trigger2 = !SelfAnimExist(5170 + (Anim % 10))
value = 5170

[State 55110, ChangeAnim]
type = ChangeAnim
triggerAll = Time = 0
triggerAll = Anim != [5110, 5119]
trigger1 = Anim = [5161, 5169]
trigger1 = SelfAnimExist(5170 + (Anim % 10))
value = 5170 + (Anim % 10)

[State 55110, HitFallDamage]
type = HitFallDamage
trigger1 = Time = 0

[State 55110, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 55110, VarSet]
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 55110, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 55110, Explod]
type = Explod
trigger1 = Time = 0
trigger1 = !SysVar(0)
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprPriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)

[State 55110, VelSet]
type = VelSet
trigger1 = Time = 0
y = 0

[State 55110, ChangeAnim]
type = ChangeAnim
persistent = 0
triggerAll = Anim = [5171,5179]
triggerAll = SelfAnimExist(5110 + (Anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
value = 5110 + (Anim % 10)

[State 55110, ChangeAnim]
type = ChangeAnim
triggerAll = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
value = 5110
persistent = 0

[State 55110, SelfState]
type = SelfState
triggerAll = !Alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
trigger3 = Anim = [5110, 5119]
value = 5150

[State 55110, ChangeState]
type = ChangeState
trigger1 = Alive
trigger1 = Time >= 8
value = 55120

[State 55110, VarSet]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 55110, VelMul]
type = VelMul
trigger1 = 1
x = 0.85

[State 55110, VelSet]
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 55110, ForceFeedback]
type = ForceFeedback
trigger1 = Alive
trigger1 = Time = 0
time = 8
ampl = 240
waveForm = sine

[State 55110, ForceFeedback]
type = ForceFeedback
trigger1 = !Alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveForm = sine


; Downed get-hit (getting up)
[Statedef 55120]
type = L
physics = N
moveType = H

[State 55120, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim != [5111, 5119]
trigger2 = !SelfAnimExist(5120 + (Anim % 10))
value = 5120

[State 55120, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim = [5111, 5119]
trigger1 = SelfAnimExist(5120 + (Anim % 10))
value = 5120 + (Anim % 10)

[State 55120, VelSet]
type = VelSet
trigger1 = !Time
x = 0

[State 55120, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 55120, HitFallSet]
type = HitFallSet
trigger1 = !AnimTime
value = 1

[State 55120, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 55300


;Dizzy
[Statedef 55300]
type = S
physics = N
moveType = H
anim = 5300
velset = 0, 0
ctrl = 0

[State 55300, HitFallSet]
type = HitFallSet
trigger1 = Time = 0
value = 0

[State 55300, ChangeState]
type = SelfState
trigger1 = Time = 180
value = 0
ctrl = 1



;===========================================================================
;===============================<-2 STATES>=================================
;===========================================================================
[StateDef -2]

[State -2, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = [5, 6]) && (var(40) = [1, 2])
value = Anim + 2

[State -2, Hit Detection]
type = VarSet
trigger1 = MoveContact = 1 && var(30) < 0
var(30) = HitPauseTime
ignoreHitPause = 1

[State -2, Hit Sound]
type = PlaySnd
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveHit = 1 && var(31) >= 0
value = 2, var(31)
channel = 2
ignoreHitPause = 1

[State -2, Guard Sound]
type = PlaySnd
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveGuarded = 1 && var(32) >= 0
value = 3, var(32)
channel = 2
ignoreHitPause = 1

[State -2, Hit Sparks]
type = Helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime
triggerAll = ((StateNo != [1200, 1299]) && (StateNo != [1750, 1799]) && (StateNo != [3200, 3299])) || var(35) > 0
trigger1 = MoveHit = 1 && NumEnemy
trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8015 || var(33) = 8016 || var(33) = 8020 || var(33) = 8001
trigger2 = MoveGuarded = 1 && NumEnemy
trigger2 = var(34) = 8000 || var(34) = 8001 || var(34) = 8005  || var(34) = 8006
helperType = Normal
stateNo = ifElse(MoveGuarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = P1
pos = ceil(ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))) * const(size.xScale)), ceil(var(36) * const(size.yScale))
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State -2, Hit Sparks (Behind P1)]
type = Helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime
triggerAll = (StateNo = [1200, 1299]) || (StateNo = [1750, 1799]) || (StateNo = [3200, 3299])
triggerAll = var(35) < 0
trigger1 = MoveHit = 1 && NumEnemy
trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8015 || var(33) = 8016 || var(33) = 8020 || var(33) = 8001
trigger2 = MoveGuarded = 1 && NumEnemy
trigger2 = var(34) = 8000 || var(34) = 8001 || var(34) = 8005  || var(34) = 8006
helperType = Normal
stateNo = ifElse(MoveGuarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = P1
pos = ceil(ifElse(P2Dist x > 0, 0, ifElse(P2Dist x > var(35), ceil(P2Dist x), var(35))) * const(size.xScale)), ceil(var(36) * const(size.yScale))
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State -2, Counter FX]
type = Helper
triggerAll = MoveHit = 1 && var(30) = HitPauseTime
triggerAll = NumEnemy && var(9)
trigger1 = !(HitDefAttr = SCA, AT) && (EnemyNear, MoveReversed != 1)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ceil(ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))) * const(size.xScale)), ceil(var(36) * const(size.yScale))
facing = -1
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State -2, Counter Flag]
type = VarSet
trigger1 = NumEnemy
var(9) = (EnemyNear, MoveType = A)
ignoreHitPause = 1

[State -2, Hit Detection]
type = VarSet
trigger1 = 1
var(30) = -1

[State -2, Hit Detection]
type = VarRangeSet
trigger1 = MoveType = I
trigger2 = MoveType = H && Time
first = 30
last = 36
value = -1
ignoreHitPause = 1

[State -2, P2 Facing]
type = TargetFacing
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver) && !(Target, HitFall) && (Target, Time <= 1)
value = ifElse(P2Dist x >= 0, -1, 1)
ignoreHitPause = 1

[State -2, P2 Safe Fall]
type = TargetState
trigger1 = NumTarget = 1
trigger1 = Target, command = "recovery"
trigger1 = Target, pos y >= -48 && Target, vel y > 0
trigger1 = Target, Alive && Target, HitFall && Target, GetHitVar(fall.recover)
trigger1 = Target, StateNo = 5030 || Target, StateNo = 5035 || Target, StateNo = 5050 || Target, StateNo = 5071
value = 5205
ignoreHitPause = 1

[State -2, Assert: UnGuardable]
type = AssertSpecial
trigger1 = var(17) > 0
trigger1 = var(17) := (var(17) - 1)
flag = UnGuardable
ignoreHitPause = 1

[State -2, Hit Count]
type = VarAdd
trigger1 = !IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -2, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && var(13)
trigger1 = (EnemyNear, MoveType != H) && (EnemyNear, StateNo != 5300)
var(13) = 0
ignoreHitPause = 1

[State -2, Juggle Count]
type = VarAdd
trigger1 = !IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State -2, Juggle Reset Single]
type = VarSet
triggerAll = NumEnemy = 1 && var(15)
trigger1 = (Enemy, StateType != A) && (Enemy, StateNo != [5100, 5109]) && (Enemy, Time >= 1)
trigger2 = (Enemy, MoveType != H) || (Enemy, StateNo = [120, 155]) || (Enemy, Ctrl)
var(15) = 0
ignoreHitPause = 1

[State -2, Juggle Reset Simul]
type = VarSet
triggerAll = NumEnemy >= 2 && var(15)
trigger1 = (EnemyNear(0), StateType != A) && (EnemyNear(0), Time >= 1)
trigger2 = (EnemyNear(0), MoveType != H) || (EnemyNear(0), StateNo = [120, 155]) || (EnemyNear(0), Ctrl)
trigger3 = (EnemyNear(1), StateType != A) && (EnemyNear(1), Time >= 1)
trigger4 = (EnemyNear(1), MoveType != H) || (EnemyNear(1), StateNo = [120, 155]) || (EnemyNear(1), Ctrl)
var(15) = 0
ignoreHitPause = 1

[State -2, Free Juggling]
type = VarSet
trigger1 = RoundState != 2
var(15) = 0
ignoreHitPause = 1

[State -2, Juggle Flag]
type = VarSet
trigger1 = NumEnemy && !var(16)
trigger1 = (EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl)
var(16) = 1
ignorehitpause = 1

[State -2, Juggle Flag Reset Single]
type = VarSet
triggerAll = NumEnemy = 1 && var(16)
trigger1 = (Enemy, MoveType != H) && (Enemy, StateNo != 5040)
trigger2 = !(Enemy, HitShakeOver) || (Enemy, StateType = L) || (Enemy, Ctrl)
var(16) = 0
ignoreHitPause = 1

[State -2, Juggle Flag Reset Simul]
type = VarSet
triggerAll = NumEnemy >= 2 && var(16)
trigger1 = (EnemyNear(0), MoveType != H) && (EnemyNear(0), StateNo != 5040)
trigger2 = !(EnemyNear(0), HitShakeOver) || (EnemyNear(0), StateType = L) || (EnemyNear(0), Ctrl)
trigger3 = (EnemyNear(1), MoveType != H) && (EnemyNear(1), StateNo != 5040)
trigger4 = !(EnemyNear(1), HitShakeOver) || (EnemyNear(1), StateType = L) || (EnemyNear(1), Ctrl)
var(16) = 0
ignoreHitPause = 1

[State -2, Custom Combo End]
type = VarSet
trigger1 = var(20) < 0
trigger2 = MoveType = H
trigger3 = RoundState != 2
trigger4 = (StateNo = [3000,4999])
var(20) = 0
ignoreHitPause = 1

[State -2, Custom Combo Time]
type = VarAdd
trigger1 = var(20) > 0
var(20) = -1
ignoreHitPause = 1

[State -2, Custom Combo Asserts]
type = AssertSpecial
trigger1 = var(20) > 0
flag = NoStandGuard
flag2 = NoCrouchGuard
flag3 = NoAirGuard
ignoreHitPause = 1

[State -2, Custom Combo PalFX]
type = PalFX
trigger1 = var(20) > 60
time = 2
add = 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32)
ignoreHitPause = 1

[State -2, Custom Combo PalFX]
type = PalFX
trigger1 = var(20) = [1, 60]
time = 2
add = 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64)
ignoreHitPause = 1

[State -2, Taigyaku Mudo End]
type = VarSet
trigger1 = var(50) < 0
trigger2 = RoundState != 2
var(50) = 0
ignorehitpause = 1

[State -2, Taigyaku Mudo Time]
type = VarAdd
trigger1 = var(50) > 0 && StateNo != 3900
var(50) = -1
ignorehitpause = 1

[State -2, Taigyaku Mudo PalFX]
type = PalFX
trigger1 = var(50) && !var(25) && GameTime % 2 = 0
time = 1
color = 0
mul = 256, 64, 128
add = 128, 128, 128
ignoreHitPause = 1

[State -2, Power Check Reset]
type = VarSet
trigger1 = var(50) <= 0
trigger2 = RoundState != 2
var(24) = 0
ignorehitpause = 1

[State -2, Power Check]
type = PowerSet
trigger1 = var(50)
value = var(24)
ignorehitpause = 1

[State -2, Throws Allowed]
type = VarSet
trigger1 = EnemyNear, MoveType != H
trigger1 = EnemyNear, StateNo != 140 || EnemyNear, Time > 0
trigger1 = (EnemyNear, ctrl && (EnemyNear, Time >= 1 || EnemyNear, PrevStateNo = 140)) || (EnemyNear, Time >= 8)
trigger2 = EnemyNear, MoveType = A
trigger3 = (EnemyNear, StateNo != [0,52]) && (EnemyNear, StateNo != [120,155]) && (EnemyNear, StateNo != [5000,5120])
trigger4 = EnemyNear, Anim = 5300
var(38) = 0

[State -2, Throws Disallowed]
type = VarSet
triggerAll = NumEnemy
trigger1 = EnemyNear, StateNo = [150,155]
trigger2 = (EnemyNear, StateNo = 51 || (EnemyNear, StateNo = 140 && EnemyNear, Time <= 0)) && (EnemyNear, PrevStateNo = [150, 155])
trigger3 = EnemyNear, MoveType = H && EnemyNear, StateType != A && !(EnemyNear, Anim = 5300)
trigger4 = (EnemyNear, StateNo = [5020, 5040]) && EnemyNear, HitFall = 0
trigger5 = EnemyNear, StateNo = 40 && (EnemyNear, Anim != [0, 29])
var(38) = 1
ignoreHitPause = 1

[State -2, Dampener]
type = VarSet
trigger1 = 1
fvar(10) = 1   ;Abstract Reordered: shared scaling instead
ignoreHitPause = 1

[State -2, Dampener - Crumple / Stun (Senha Kassatsu / Rakuyo Hadoken / Metsu Hadoken / Shin Denjin Hadoken)]
type = VarSet
trigger1 = var(56) || var(57)
fvar(10) = 1   ;Abstract Reordered: shared scaling instead
ignoreHitPause = 1

[State -2, Dampener - Custom Combo]
type = VarSet
trigger1 = var(20)
fvar(10) = 1   ;Abstract Reordered: shared scaling instead
ignoreHitPause = 1

[State -2, Dampener - Custom Combo (Senha Kassatsu / Rakuyo Hadoken / Metsu Hadoken / Shin Denjin Hadoken)]
type = VarSet
trigger1 = var(20) && (var(56) || var(57))
fvar(10) = 1   ;Abstract Reordered: shared scaling instead
ignoreHitPause = 1

[State -2, Dampener - Custom Combo Limiter]
type = Null; VarSet
trigger1 = var(20)
;trigger1 = StateNo = ???
fvar(10) = 1   ;Abstract Reordered: shared scaling instead
ignoreHitPause = 1

[State -2, Dampener - Custom Combo Limiter]
type = Null; VarSet
trigger1 = var(20) && (var(56) || var(57))
;trigger1 = StateNo = ???
fvar(10) = 1   ;Abstract Reordered: shared scaling instead
ignoreHitPause = 1

[State -2, Dampener - Supers]
type = VarSet
trigger1 = (StateNo = [3000, 4999])
fvar(10) = 1   ;Abstract Reordered: shared scaling instead
ignoreHitPause = 1

[State -2, Dampener - Supers (Jumping Medium Punch / EX Shakunetsu Hadoken / EX Jodan Sokuto Geri / EX Kurekijin / Senha Kassatsu / Rakuyo Hadoken / Metsu Hadoken / Shin Denjin Hadoken)]
type = VarSet
trigger1 = (StateNo = [3000, 4999])
trigger1 = var(51) || var(52) || var(53) || var(54) || var(55) || var(56) || var(57)
fvar(10) = 1   ;Abstract Reordered: shared scaling instead
ignoreHitPause = 1

[State -2, AR Hadou boost]
type = VarSet
trigger1 = (StateNo = [1000, 1099]) || (StateNo = [1100, 1199]) || (StateNo = [1500, 1599]) || (StateNo = [3000, 3199])
trigger1 = fvar(21) > 0 || fvar(20) >= 1000
fvar(10) = 1 + ifElse(fvar(21) > 0, 0.4, 0.2)
ignoreHitPause = 1

[State -2, Dampener Limit]
type = VarSet
trigger1 = fvar(10) < 0
fvar(10) = 0
ignoreHitPause = 1

[State -2, Root Dampener]
type = VarSet
trigger1 = 1
fvar(11) = fvar(10) * ifElse(var(9), 1.2, 1)
ignoreHitPause = 1

;CvS2 Evil Ryu essentially takes 0.35849056604 extra damage every hit
;CvS2 Shadow Ryu essentially takes 0.09090909091 extra damage every hit
;CvS2 Shin Ryu essentially takes 0.97260273973 extra damage every hit
[State -2, Defense Levels]
type = LifeAdd
triggerAll = !AILevel
trigger1 = (var(40) = [1, 2]) || var(40) = 4
trigger1 = GetHitVar(HitCount) = 1 && GetHitVar(Damage)
trigger1 = StateNo != [760, 762]
value = -ceil(ifElse(var(40) = 4, 0.8, ifElse(var(40) = 2, 0.09090909091, 0.35849056604)) * GetHitVar(Damage))
kill = 0
ignoreHitPause = 1

;CvS2 Evil Ryu essentially takes 1.35849056604 times more damage than standard
;CvS2 Shadow Ryu essentially takes 1.09090909091 times more damage than standard
;CvS2 Shin Ryu essentially takes 1.97260273973 times more damage than standard
[State -2, Defense Levels]
type = DefenceMulSet
triggerAll = !AILevel
trigger1 = (var(40) = [1, 2]) || var(40) = 4
value = ifElse(var(40) = 4, 1.8, ifElse(var(40) = 2, 1.09090909091, 1.35849056604)) * (const(data.fall.defence_mul) ** GetHitVar(FallCount))
ignoreHitPause = 1

[State -2, Voice Position]
type = SndPan
trigger1 = 1
channel = 0
pan = 0
ignoreHitPause = 1

[State -2, KO Sound Variable]
type = VarSet
triggerAll = StateNo != 5950
trigger1 = Alive && var(41) > 0
trigger2 = !Alive && var(41) < 2
var(41) = ifElse(Alive, 0, var(41) + 1)
ignoreHitPause = 1

[State -2, KO Sound]
type = PlaySnd
triggerAll = PrevStateNo != 5950
trigger1 = !Alive && var(41) = 1
trigger1 = var(41) := 2
value = 11, 1 + 10 * var(40)
ignoreHitPause = 1

[State -2, Collapse Sound]
type = PlaySnd
trigger1 = StateNo != 5950
trigger1 = Anim = 5950 || Anim = 5955
trigger1 = AnimElem = 7
value = F7, 0

[State -2, Collapse FX]
type = Explod
trigger1 = StateNo != 5950
trigger1 = Anim = 5950 || Anim = 5955
trigger1 = AnimElem = 7
anim = F60
posType = P1
sprpriority = -3

[State -2, Guard Crush/Throw Escape voice]
type = PlaySnd
trigger1 = Anim = 5910 || Anim = 5920 || Anim = 5930 || Anim = 15910 || Anim = 15920 || Anim = 15930
trigger1 = AnimElemTime(1) = 1
trigger2 = Anim = 5940 || Anim = 5945 || Anim = 15940 || Anim = 15945
trigger2 = AnimElem = 2 && StateNo != 890
value = 5940, 0 + 10 * var(40)
channel = 0
ignoreHitPause = 1

[State -2, Dizzy Stars]
type = Helper
trigger1 = RoundState = 2
trigger1 = !NumHelper(8970)
trigger1 = NumEnemy = 1 && NumPartner = 0
trigger1 = EnemyNear, StateNo = 55300
helperType = normal
stateNo = 8970
ID = 8970
name = "Dizzy Stars"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State -2, Air Gravity Timer Increment]
type = VarAdd
triggerAll = StateType = A
trigger1 = (StateNo = [50, 51]) || (StateNo = [600, 699]) || (StateNo = [2050, 2060])
var(2) = 1

[State -2, Air Gravity Timer Reset]
type = VarSet
trigger1 = var(2)
trigger1 = StateType != A
var(2) = 0

[State -2, Jumping Medium Punch Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(51) = 0
ignoreHitPause = 1

[State -2, EX Shakunetsu Hadoken Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(52) = 0
ignoreHitPause = 1

[State -2, EX Jodan Sokuto Geri Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(53) = 0
ignoreHitPause = 1

[State -2, EX Kurekijin Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(54) = 0
ignoreHitPause = 1

[State -2, ??? Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(55) = 0
ignoreHitPause = 1

[State -2, Senha Kassatsu / Rakuyo Hadoken Crumple Flag Reset]
type = VarSet
trigger1 = !var(13)
var(56) = 0
ignoreHitPause = 1

[State -2, Metsu Hadoken Stun Flag Reset]
type = VarSet
trigger1 = !var(13)
var(57) = 0
ignoreHitPause = 1

[State -2, Lv3 Super Finish Detection]
type = VarSet
triggerAll = !(Enemy, Alive)
trigger1 = StateNo = [3300, 3399]
var(27) = 1
ignoreHitPause = 1

[State -2, Remove Sekia Goshoha Aura Effects]
type = RemoveExplod
trigger1 = StateNo != 1600 && StateNo != 1630 && NumExplod(1603)
ID = 1603

[State -2, Remove Metsu Hadoken Energy Effects]
type = RemoveExplod
trigger1 = StateNo != 3500 && NumExplod(3503)
ID = 3503

[State -2, Remove Misogi Aura Effects]
type = RemoveExplod
trigger1 = StateNo != 3700 && NumExplod(3703)
ID = 3703

[State -2, Remove Messatsu Ryukosai Aura Effects]
type = RemoveExplod
trigger1 = StateNo != 3800 && StateNo != 3850 && NumExplod(3804)
ID = 3804

[State -2, Sealed by Chizuru's Reigi no Ishizue]
type = PalFX
trigger1 = NumProjID(131035)
trigger1 = GameTime % 2 = 1
time = 1
add = 0,0,92
sinAdd = 0,0,0,0
color = 0
invertAll = 0
color = 256
ignoreHitPause = 1

[State -2, EXPLODsive Buffering Helper]
type = Helper
trigger1 = !NumHelper(90000005)
helpertype = Normal
stateNo = 90000005
ID = 90000005
name = "EXPLODsive Buffering helper"
posType = P1
facing = ifElse(Facing = 1, 1, -1)
keyCtrl = 1
ignoreHitPause = 1

[State -2, Debug]
type = DisplayToClipboard
trigger1 = 1
text = "AI = %d Attack = %f Hits = %d Juggle = %d"
params = AILevel, fvar(11), var(13), var(15)
ignoreHitPause = 1

[State -2, Debug]
type = AppendToClipboard
trigger1 = 1
text = "\nBy KarmaCharmeleon"
ignoreHitPause = 1



;===========================================================================
;===============================<-3 STATES>=================================
;===========================================================================
[StateDef -3]

[State -3, GameTime]
type = VarSet
trigger1 = 1
var(58) = GameTime
ignoreHitPause = 1

[State -3, ProjContact Reset]
type = VarSet
triggerAll = var(18)
trigger1 = StateNo != 1000 && StateNo != 1030 && StateNo != 1050 && StateNo != 1080
trigger1 = StateNo != 1500 && StateNo != 1530 && StateNo != 1550 && StateNo != 1580 && StateNo != 1600 && StateNo != 1630
trigger1 = StateNo != 3000 && StateNo != 3050 && StateNo != 3100 && StateNo != 3150
trigger2 = (StateNo = 1000 || StateNo = 1030 || StateNo = 1050 || StateNo = 1080) && AnimElemTime(5) < 1
trigger3 = (StateNo = 1500 || StateNo = 1530 || StateNo = 1550 || StateNo = 1580) && AnimElemTime(5) < 1
trigger4 = (StateNo = 1600 || StateNo = 1630) && AnimElemTime(11) < 1
trigger5 = (StateNo = 3000 || StateNo = 3050) && AnimElemTime(6) < 1
trigger6 = (StateNo = 3100 || StateNo = 3150) && AnimElemTime(55) < 1
var(18) = 0

[State -3, Projectile Flag Reset]
type = VarSet
trigger1 = var(39) < 0
var(39) = 0
ignoreHitPause = 1

[State -3, Projectile Flag Off]
type = VarSet
trigger1 = !NumHelper(1005)
trigger1 = !NumHelper(1035)
trigger1 = !NumHelper(1055)
trigger1 = !NumHelper(1085)
trigger1 = !NumHelper(1505)
trigger1 = !NumHelper(1555)
trigger1 = !NumHelper(1585)
trigger1 = !NumHelper(1605)
trigger1 = !NumHelper(1635)
trigger1 = !NumHelper(3005)
trigger1 = !NumHelper(3025)
trigger1 = !NumHelper(3055)
trigger1 = !NumHelper(3075)
trigger1 = !NumHelper(3105)
trigger1 = !NumHelper(3155)
var(39) = 0
ignoreHitPause = 1

[State -3, Chain Combo Reset]
type = VarSet
trigger1 = 1
var(4) = 0
ignoreHitPause = 1

[State -3, Chain Combo Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200, 699]) && MoveContact
trigger2 = var(20) && (StateNo = [1000, 2999]) && StateType != A && (MoveContact || var(18))
var(4) = 1
ignoreHitPause = 1

[State -3, Cancel Reset]
type = VarSet
trigger1 = 1
var(6) = 0
ignoreHitPause = 1

[State -3, Command Cancel Reset]
type = VarSet
trigger1 = 1
var(5) = 0
ignoreHitPause = 1

[State -3, Command Cancel Check]
type = VarSet
triggerAll = !var(20)
trigger1 = StateNo = 200 && MoveContact
trigger2 = StateNo = 205 && MoveContact
trigger3 = StateNo = 215 && MoveContact && AnimElemTime(5) < 0
trigger4 = StateNo = 216 && MoveContact && AnimElemTime(7) < 0
trigger5 = StateNo = 222 && MoveContact && AnimElemTime(4) < 0
trigger6 = StateNo = 225 && MoveContact && AnimElemTime(4) < 0
trigger7 = StateNo = 230 && MoveContact && AnimElemTime(5) < 0
trigger8 = StateNo = 235 && MoveContact && AnimElemTime(6) < 0
trigger9 = StateNo = 245 && MoveContact && AnimElemTime(6) < 0
trigger10 = StateNo = 250 && MoveContact && AnimElemTime(4) < 0
trigger11 = StateNo = 400 && MoveContact
trigger12 = StateNo = 410 && MoveContact && AnimElemTime(6) < 0
trigger13 = StateNo = 420 && MoveContact && AnimElemTime(4) < 0
trigger14 = StateNo = 430 && MoveContact
trigger15 = StateNo = 440 && MoveContact && AnimElemTime(6) < 0
trigger16 = StateNo = 450 && MoveContact && AnimElemTime(5) < 0
trigger17 = StateNo = 600 && MoveContact && AnimElemTime(8) < 0
trigger18 = StateNo = 610 && MoveContact && AnimElemTime(7) < 0
trigger19 = StateNo = 611 && MoveContact && AnimElemTime(5) < 0
trigger20 = StateNo = 615 && MoveContact && AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
trigger21 = StateNo = 630 && MoveContact && AnimElemTime(8) < 0
trigger22 = StateNo = 635 && MoveContact && AnimElemTime(8) < 0
trigger23 = StateNo = 648 && MoveContact && var(50)
trigger24 = StateNo = 650 && MoveContact && AnimElemTime(3) < 0
var(5) = 1
ignorehitpause = 1

[State -3, Cancel Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200, 699])
trigger2 = var(20) && (StateNo = [1000, 2999]) && (MoveContact || var(18))
trigger3 = (StateNo = [200, 699]) && Time <= 2 && (PrevStateNo != [200, 700])
trigger4 = StateNo = 200
trigger5 = StateNo = 205
trigger6 = StateNo = 215 && MoveContact && AnimElemTime(5) < 0
trigger7 = StateNo = 216 && MoveContact && AnimElemTime(7) < 0
trigger8 = StateNo = 222 && MoveContact && AnimElemTime(4) < 0
trigger9 = StateNo = 225 && MoveContact && AnimElemTime(4) < 0
trigger10 = StateNo = 230 && MoveContact && AnimElemTime(5) < 0
trigger11 = StateNo = 235 && MoveContact && AnimElemTime(6) < 0
trigger12 = StateNo = 245 && MoveContact && AnimElemTime(6) < 0
trigger13 = StateNo = 250 && MoveContact && AnimElemTime(4) < 0
trigger14 = StateNo = 400 && MoveContact
trigger15 = StateNo = 410 && MoveContact && AnimElemTime(6) < 0
trigger16 = StateNo = 420 && MoveContact && AnimElemTime(4) < 0
trigger17 = StateNo = 430
trigger18 = StateNo = 440 && MoveContact && AnimElemTime(6) < 0
trigger19 = StateNo = 450 && MoveContact && AnimElemTime(5) < 0
trigger20 = StateNo = 600 && MoveContact && AnimElemTime(8) < 0
trigger21 = StateNo = 610 && MoveContact && AnimElemTime(7) < 0
trigger22 = StateNo = 611 && MoveContact && AnimElemTime(5) < 0
trigger23 = StateNo = 615 && MoveContact && AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
trigger24 = StateNo = 630 && MoveContact && AnimElemTime(8) < 0
trigger25 = StateNo = 635 && MoveContact && AnimElemTime(8) < 0
trigger26 = StateNo = 648 && MoveContact && var(50)
trigger27 = StateNo = 650 && MoveContact && AnimElemTime(3) < 0
trigger28 = (StateNo = [200,699]) && MoveContact   ;AR gatling
var(6) = 1
ignoreHitPause = 1

[State -3, Super Cancel Reset]
type = VarSet
trigger1 = 1
var(7) = 0
ignoreHitPause = 1

[State -3, Super Cancel Flag Reset]
type = VarSet
trigger1 = var(21)
trigger1 = (StateNo != [3000, 4999]) || MoveType = H
var(21) = 0
ignoreHitPause = 1

[State -3, Super Cancel Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200, 699])
trigger2 = var(20) && (StateNo = [1000, 2999]) && (MoveContact || var(18))
trigger3 = (StateNo = [200, 699]) && Time <= 2 && (PrevStateNo != [200, 700])
trigger4 = StateNo = 200
trigger5 = StateNo = 205
trigger6 = StateNo = 210 && (AnimElemTime(5) < 0 || (MoveContact = [1,8]))
trigger7 = StateNo = 215 && (AnimElemTime(5) < 0 || (MoveContact = [1,8]))
trigger8 = StateNo = 216 && (AnimElemTime(7) < 0 || (MoveContact = [1,8]))
trigger9 = StateNo = 220 && (AnimElemTime(7) < 0 || (MoveContact = [1,8]))
trigger10 = StateNo = 222 && (AnimElemTime(4) < 0 || (MoveContact = [1,8]))
trigger11 = StateNo = 225 && (AnimElemTime(8) < 0 || (MoveContact = [1,8]))
trigger12 = StateNo = 227 && (AnimElemTime(8) < 0 || (MoveContact = [1,8]))
trigger13 = StateNo = 228 && (AnimElemTime(8) < 0 || (MoveContact = [1,8]))
trigger14 = StateNo = 229 && (AnimElemTime(6) < 0 || (MoveContact = [1,8]))
trigger15 = StateNo = 230 && (AnimElemTime(5) < 0 || (MoveContact = [1,8]))
trigger16 = StateNo = 235 && (AnimElemTime(6) < 0 || (MoveContact = [1,8]))
trigger17 = StateNo = 245 && (AnimElemTime(6) < 0 || (MoveContact = [1,8]))
trigger18 = StateNo = 250 && (AnimElemTime(4) < 0 || (MoveContact = [1,8]))
trigger19 = StateNo = 251 && (AnimElemTime(6) < 0 || (MoveContact = [1,8]))
trigger20 = StateNo = 255 && (AnimElemTime(5) < 0 || (MoveContact = [1,8]))
trigger21 = StateNo = 300 && (AnimElemTime(9) < 0 || (MoveContact = [1,8]))
trigger22 = StateNo = 310 && (AnimElemTime(8) < 0 || (MoveContact = [1,8]))
trigger23 = StateNo = 400
trigger24 = StateNo = 410 && (AnimElemTime(6) < 0 || (MoveContact = [1,8]))
trigger25 = StateNo = 420 && (AnimElemTime(4) < 0 || (MoveContact = [1,8]))
trigger26 = StateNo = 430
trigger27 = StateNo = 440 && (AnimElemTime(6) < 0 || (MoveContact = [1,8]))
trigger28 = StateNo = 450 && (AnimElemTime(5) < 0 || (MoveContact = [1,8]))
trigger29 = StateNo = 600 && MoveContact && AnimElemTime(8) < 0
trigger30 = StateNo = 610 && MoveContact && AnimElemTime(7) < 0
trigger31 = StateNo = 611 && MoveContact && AnimElemTime(5) < 0
trigger32 = StateNo = 615 && MoveContact && AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
trigger33 = StateNo = 630 && MoveContact && AnimElemTime(8) < 0
trigger34 = StateNo = 635 && MoveContact && AnimElemTime(8) < 0
trigger35 = StateNo = 648 && MoveContact && var(50)
trigger36 = StateNo = 650 && MoveContact && AnimElemTime(3) < 0
trigger37 = (StateNo = [1000, 1080]) && (AnimElemTime(5) = [2, 9])
trigger38 = (StateNo = [1100, 1150]) && AnimElemTime(5) < 0 && MoveContact
trigger39 = (StateNo = [1300, 1330]) && AnimElemTime(9) < 0 && MoveContact
trigger40 = (StateNo = [1400, 1440]) && AnimElemTime(12) < 0 && MoveContact
trigger41 = (StateNo = [1500, 1580]) && (AnimElemTime(5) = [2, 9])
trigger42 = (StateNo = [1600, 1630]) && (AnimElemTime(11) = [2, 9])
trigger43 = (StateNo = [1700, 1730]) && AnimElemTime(8) < 0 && MoveContact
trigger44 = (StateNo = [1750, 1780]) && AnimElemTime(6) < 0 && MoveContact
trigger45 = (StateNo = [200,699]) && MoveContact   ;AR gatling
var(7) = 1
ignoreHitPause = 1

[State -3, Hyper Cancel Reset]
type = VarSet
trigger1 = 1
var(8) = 0
ignoreHitPause = 1

[State -3, Hyper Cancel Check]
type = VarSet
trigger1 = StateNo = 3000 && AnimElemTime(10) < 0 && var(18)
trigger2 = StateNo = 3100 && AnimElemTime(60) < 0 && var(18)
trigger3 = StateNo = 3400 && AnimElemTime(14) < 0 && MoveContact
var(8) = 1
ignoreHitPause = 1

[State -3, Hyper Cancel Flag Reset]
type = VarSet
trigger1 = var(22)
trigger1 = (StateNo != [3000, 4999]) || MoveType = H
var(22) = 0
ignoreHitPause = 1

[State -3, Parry Detection]
type = Helper
triggerAll = 0   ;Abstract Reordered: Z is the parry
triggerAll = RoundState = 2 && !NumHelper(765) && !var(20)
triggerAll = (MoveType = I && ctrl) || (StateNo = [760, 762]) || StateNo = 5120
triggerAll = (command != "rlsfwd" && command != "rlsback" && command != "rlsup" && command != "rlsdown") || AILevel
trigger1 = !AILevel && (StateType = S || StateType = C || StateNo = 5120)
;Standing/crouch, no reversed commands
trigger1 = !NumExplod(92828282) && !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = ifElse(P2dist x >= 0, command = "fwd", command = "back") || command = "down"
;Air, no reversed commands
trigger2 = !AILevel && StateType = A && (var(3) != 1 && var(3) != 2)
trigger2 = !NumExplod(94646464) && !NumExplod(92468246)
trigger2 = ifElse(P2dist x >= 0, command = "fwd", command = "back")
;Standing/crouch, left/right or all directions reverse
trigger3 = !AILevel && (StateType = S || StateType = C || StateNo = 5120)
trigger3 = NumExplod(94646464) || NumExplod(92468246)
trigger3 = ifElse(P2dist x >= 0, command = "back", command = "fwd") || ifElse(NumExplod(92468246), command = "up", command = "down")
;Standing/crouch, up/down reverse only
trigger4 = !AILevel && (StateType = S || StateType = C || StateNo = 5120)
trigger4 = NumExplod(92828282) && !NumExplod(94646464) && !NumExplod(92468246)
trigger4 = ifElse(P2dist x >= 0, command = "fwd", command = "back") || command = "up"
;Air, reversed commands
trigger5 = !AILevel && StateType = A && (var(3) != 1 && var(3) != 2)
trigger5 = NumExplod(94646464) || NumExplod(92468246)
trigger5 = ifElse(P2dist x >= 0, command = "back", command = "fwd")
trigger6 = AILevel && (StateNo != [760, 762]) && InGuardDist
trigger7 = AILevel && (StateNo = [760, 762]) && Time = 14
helperType = Normal
stateNo = 765
ID = 765
name = "Parry Detection"
posType = P1
pauseMoveTime = 65535
superMoveTime = 65535

[State -3, Parry Attacks]
type = ChangeState
trigger1 = (StateNo != [760, 762]) && NumHelper(765)
trigger1 = Helper(765), StateNo = 766
value = ifElse((Helper(765), Anim = 767), 762, ifElse((Helper(765), Anim = 766), 761, 760))
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760, 762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 765)
attr = SA, AP
stateNo = 760
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760, 762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 766)
attr = C, AP
stateNo = 761
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760 ,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 767)
attr = SCA, AP
stateNo = 762
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Assert: NoWalk after Parry]
type = AssertSpecial
trigger1 = var(26) > 0
trigger1 = var(26) := (var(26) - 1)
flag = NoWalk
ignoreHitPause = 1

[State -3, Corner Push]
type = VarSet
trigger1 = fvar(5)
trigger1 = NumTarget
trigger1 = Target, HitOver || (Target, GetHitVar(HitShakeTime) > 0 && Target, Time <= 0)
fvar(5) = 0

[State -3, Corner Push]
type = VarSet
triggerAll = MoveType != H
trigger1 = MoveContact = 1 && NumTarget
fvar(5) = Target, GetHitVar(xVel)
ignoreHitPause = 1

[State -3, Corner Push]
type = PosAdd
triggerAll = fvar(5)
triggerAll = (StateType = S || StateType = C || StateNo = 248 || StateNo = 1200 || StateNo = 1210 || StateNo = 1230) && NumTarget
triggerAll = !HitPauseTime && Target, GetHitVar(HitShakeTime) <= 0
triggerAll = (Target, StateType = S || Target, StateType = C) && !(Target, GetHitVar(yvel)) && !(Target, HitFall)
trigger1 = Target, FrontEdgeBodyDist <= abs(Target, vel x)
trigger1 = (Target, GetHitVar(xvel) * Target, Facing) > 0
trigger2 = Target, BackEdgeBodyDist <= abs(target, vel x)
trigger2 = (Target, GetHitVar(xvel) * Target, Facing) < 0
x = ifElse(Target, FrontEdgeBodyDist <= 0, -1, 1) * (Target, Facing) * fvar(5)

[State -3, Corner Push]
type = VarSet
trigger1 = fvar(5)
trigger1 = abs(fvar(5)) < 1.0
fvar(5) = 0

[State -3, Corner Push]
type = VarSet
trigger1 = NumTarget
trigger1 = Target, GetHitVar(HitShakeTime) <= 0
fvar(5) = fvar(5) * 0.85

[State -3, EX FX Decrement]
type = VarAdd
trigger1 = var(25) > 0
var(25) = -1

[State -3, EX FX Reset]
type = VarSet
trigger1 = (StateNo != [1000, 2999]) || MoveType = H
var(25) = 0

[State -3, EX Flash]
type = PalFX
trigger1 = !(GameTime % 2) && var(25)
time = 1
color = 0
mul = 256, 224, 0
add = 128, 128, 128
ignoreHitPause = 1

[State -3, Movement AfterImage]
type = AfterImage
triggerAll = Time = 1 && !var(20)
trigger1 = StateNo = 50 && (var(3) = 2 || var(3) = 3)
trigger2 = (StateNo = [700, 715])
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

[State -3, Level 1 Super AfterImage]
type = AfterImage
trigger1 = (StateNo = 3000 || StateNo = 3100 || StateNo = 3200 || StateNo = 3400) && Time = 43
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = Add1

[State -3, Level 2 Super AfterImage]
type = AfterImage
trigger1 = (StateNo = 3050 || StateNo = 3150 || StateNo = 3250 || StateNo = 3450) && Time = 43
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 32,32,160
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = Add1

[State -3, Level 3 Super AfterImage]
type = AfterImage
trigger1 = StateNo = 3300 && Time = 43
trigger2 = StateNo = 3500 && Time = 43
trigger3 = StateNo = 3600 && Time = 43
trigger4 = StateNo = 3610 && Time = 72
trigger5 = StateNo = 3700 && Time = 43
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 160,32,32
palPostBright = 0,0,0
palAdd = 0,0,0
palMul= 0.75,0.75,0.75
trans = Add1

[State -3, AfterImage Persist]
type = AfterImageTime
trigger1 = StateNo = 50 || (StateNo = [600, 699])
trigger1 = (var(3) = 2 || var(3) = 3) && vel y < -1
trigger2 = var(20)
trigger3 = StateNo = [700, 715]
trigger4 = (StateNo = [2000, 2099])
trigger5 = (StateNo = [3000, 4999])
trigger6 = StateNo = 6806 || StateNo = 6811 || StateNo = 6812
time = 2

[State -3, AfterImage Off]
type = AfterImageTime
triggerAll = Time <= 1
trigger1 = StateNo = 3000 || StateNo = 3050 || StateNo = 3100 || StateNo = 3150 || StateNo = 3200 || StateNo = 3250
trigger2 = StateNo = 3300 || StateNo = 3400 || StateNo = 3450 || StateNo = 3500 || StateNo = 3600 || StateNo = 3700
time = 0

[State -3, Underground Juggle Prevention]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget && NumEnemy
trigger1 = (Target, Time = 0) && (Target, ID = EnemyNear, ID)
trigger1 = !(Target, HitShakeOver) && (Target, pos y > 0)
pos = ceil(P2Dist x), ceil(-pos y)
ignoreHitPause = 1

[State -3, Prevent Crossup]
type = Width
trigger1 = MoveType != H
edge = 8, 0
ignoreHitPause = 1

[State -3, Variable Height]
type = PlayerPush
triggerAll = StateType = A && MoveType != H && NumEnemy
triggerAll = P2BodyDist x = [-(EnemyNear, const(size.ground.back) + EnemyNear, const(size.ground.front)), 0]
trigger1 = P2StateType = S
trigger1 = P2Dist y >= (EnemyNear, const(size.height) - 34)
trigger2 = P2StateType = C
trigger2 = P2Dist y >= (EnemyNear, const(size.height) - 50)
trigger3 = P2StateType = L
trigger3 = P2Dist y >= 12
value = 0
ignoreHitPause = 1

[State -3, Get Hit Sound]
type = PlaySnd
triggerall = Alive && Time = 1
triggerall = StateNo = 5000 || StateNo = 5010
trigger1 = GetHitVar(AnimType) >= 2 && Random < 500
trigger2 = GetHitVar(AnimType) = 1 && Random < 375
trigger3 = GetHitVar(AnimType) = 0 && Random < (250 * (AILevel ** 2 / 64.0))
value = 5000, (Random % 3) + 10 * var(40)
channel = 0
ignoreHitPause = 1

[State -3, Get Hit Sound]
type = PlaySnd
triggerAll = Alive && Time = 1
trigger1 = (StateNo = 5000 || StateNo = 5010) && NumEnemy
trigger1 = GetHitVar(fall) || (EnemyNear, HitDefAttr = SCA,SA,HA)
trigger2 = (StateNo = 5020 || StateNo = 5070 || StateNo = 5080)
trigger3 = (StateNo = 5050 || StateNo = 5100) && (PrevStateNo != [5000,5199])
value = 5000, (Random % 3) + 10 * var(40)
channel = 0
ignoreHitPause = 1

[State -3, Cheap KO]
type = ChangeState
trigger1 = !Alive && (StateNo = [5000, 5010])
trigger1 = (PrevStateNo = [130, 131]) || (PrevStateNo = [140, 141]) || (PrevStateNo = [150, 153])
value = 5950
ignoreHitPause = 1

[State -3, Assert: NoKOsnd (Cheap KO)]
type = AssertSpecial
trigger1 = (StateNo = [5000, 5010])
trigger1 = (PrevStateNo = [130, 131]) || (PrevStateNo = [140, 141]) || (PrevStateNo = [150, 153])
flag = NoKOsnd
ignoreHitPause = 1

[State -3, Stop Guarding Voice]
type = StopSnd
trigger1 = StateNo = [120, 155]
channel = 0

[State -3, Custom Combo Finish]
type = Helper
triggerAll = WinKO && var(20)
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = [1, 4]
trigger2 = StateNo = 810 && (AnimElemTime(7) = [0, 1])
trigger3 = StateNo = 820 && (AnimElemTime(6) = [1, 2])
trigger4 = NumHelper(1005)
trigger4 = (Helper(1005), StateNo = [1005, 1007]) && (Helper(1005), var(18))
trigger5 = NumHelper(1055)
trigger5 = (Helper(1055), StateNo = [1055, 1057]) && (Helper(1055), var(18))
trigger6 = NumHelper(1505)
trigger6 = (Helper(1505), StateNo = [1505, 1507]) && (Helper(1505), var(18))
trigger7 = NumHelper(1555)
trigger7 = (Helper(1555), StateNo = [1555, 1557]) && (Helper(1555), var(18))
trigger8 = NumHelper(1605)
trigger8 = (Helper(1605), StateNo = [1605, 1607]) && (Helper(1605), var(18))
helperType = Normal
stateNo = 8600
ID = 8600 + 0 * (var(23) := 900)
name = "Super Finish"
posType = Left
pos = 160, -120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State -3, Super Finish]
type = Helper
triggerAll = WinKO
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = 1 && (StateNo = [3000, 4999])
trigger1 = var(23) := StateNo
trigger2 = NumHelper(3005)
trigger2 = (Helper(3005), StateNo = [3005, 3007]) && (Helper(3005), var(18))
trigger2 = var(23) := 3000
trigger3 = NumHelper(3055)
trigger3 = (Helper(3055), StateNo = [3005, 3007]) && (Helper(3055), var(18))
trigger3 = var(23) := 3000
trigger4 = NumHelper(3025)
trigger4 = (Helper(3025), StateNo = [3025, 3027]) && (Helper(3025), var(18))
trigger4 = var(23) := 3020
trigger5 = NumHelper(3075)
trigger5 = (Helper(3075), StateNo = [3025, 3027]) && (Helper(3075), var(18))
trigger5 = var(23) := 3020
trigger6 = NumHelper(3105)
trigger6 = (Helper(3105), StateNo = [3105, 3107]) && (Helper(3105), var(18))
trigger6 = var(23) := 3100
trigger7 = NumHelper(3155)
trigger7 = (Helper(3155), StateNo = [3105, 3107]) && (Helper(3155), var(18))
trigger7 = var(23) := 3100
trigger8 = StateNo = [3200, 3299]
trigger8 = StateNo = 3200
trigger9 = StateNo = [3300, 3399]
trigger9 = var(23) := 3300
trigger10 = StateNo = [3400, 3499]
trigger10 = var(23) := 3400
trigger11 = NumHelper(3505)
trigger11 = (Helper(3505), StateNo = [3505, 3507]) && (Helper(3505), var(18))
trigger11 = var(23) := 3500
trigger12 = StateNo = [3700, 3799]
trigger12 = var(23) := 3700
trigger13 = StateNo = [3800, 3899]
trigger13 = var(23) := 3800
helperType = Normal
stateNo = 8600
ID = 8600
name = "Super Finish"
posType = left
pos = 160,-120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State -3, Taigyaku Mudo Finish]
type = Helper
triggerAll = WinKO && var(50)
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = [1, 4]
trigger2 = StateNo = 810 && (AnimElemTime(7) = [0, 1])
trigger3 = StateNo = 820 && (AnimElemTime(6) = [1, 2])
trigger4 = NumHelper(1505)
trigger4 = (Helper(1505), StateNo = [1505, 1507]) && (Helper(1505), var(18))
trigger5 = NumHelper(1555)
trigger5 = (Helper(1555), StateNo = [1555, 1557]) && (Helper(1555), var(18))
trigger6 = NumHelper(1585)
trigger6 = ((Helper(1585), StateNo = [1585, 1586]) || (Helper(1585), StateNo = 1007)) && (Helper(1585), var(18))
trigger7 = NumHelper(1605)
trigger7 = (Helper(1605), StateNo = [1605, 1607]) && (Helper(1605), var(18))
trigger8 = NumHelper(1635)
trigger8 = ((Helper(1635), StateNo = [1635, 1636]) || (Helper(1635), StateNo = 1607)) && (Helper(1635), var(18))
helperType = Normal
stateNo = 8600
ID = 8600 + 0 * (var(23) := 3900)
name = "Super Finish"
posType = Left
pos = 160, -120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1