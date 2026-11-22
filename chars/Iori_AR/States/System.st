; ________________________________________________
;| Iori Yagami by KarmaCharmeleon		|
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

[State 0, Stop Fire Sound Sound]
type = StopSnd
trigger1 = PrevStateNo = 6800 || PrevStateNo = 6804
trigger1 = !Time && AnimTime
channel = 1

[State 0, Remove Explods]
type = RemoveExplod
trigger1 = IsHelper

[State 0, Destroy Helpers]
type = DestroySelf
trigger1 = IsHelper

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != (0 + 2 * (var(40) = 1)) && Anim != (5 + 2 * (var(40) = 1))
trigger2 = Anim = (5 + 2 * (var(40) = 1)) && !AnimTime
value = 0 + 2 * (var(40) = 1)

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
trigger1 = NumExplod(92828282) || NumExplod(92468246) && command = "holddown"
value = 40

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = (12 + 5 * (var(40) = 1))
value = 10 + 5 * (var(40) = 1)
elem = 3 - AnimElemNo(0)

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != (10 + 5 * (var(40) = 1))
value = 10 + 5 * (var(40) = 1)

[State 10, End]
type = ChangeState
trigger1 = !AnimTime
value = 11


;Crouching
[StateDef 11]
type = C
physics = C
moveType = I
anim = 11 + 5 * (var(40) = 1)
velSet = 0,0
sprPriority = 0

[State 11, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = (6 + 2 * (var(40) = 1)) && !AnimTime
value = 11 + 5 * (var(40) = 1)


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
trigger1 = !Time && Anim = (10 + 5 * (var(40) = 1))
value = 12 + 5 * (var(40) = 1)
elem = 3 - AnimElemNo(0)

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != (12 + 5 * (var(40) = 1))
value = 12 + 5 * (var(40) = 1)

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
trigger1 = Anim != (10 + 5 * (var(40) = 1)) && Anim != (11 + 5 * (var(40) = 1)) && Anim != (141 + 10000 * (var(40) = 1))
value = 10 + 5 * (var(40) = 1)

[State 13, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = (10 + 5 * (var(40) = 1)) && !AnimTime
trigger2 = Anim = (141 + 10000 * (var(40) = 1)) && !AnimTime
value = 11 + 5 * (var(40) = 1)



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
x = ifElse(var(40) = 1, 4.60893854749, const(velocity.walk.fwd.x))

[State 20, VelSet]
type = VelSet
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command = "holdback"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = command = "holdfwd"
x = ifElse(var(40) = 1, -3.6312849162, const(velocity.walk.back.x))

[State 20, ChangeAnim]
type = ChangeAnim
triggerAll = vel x > 0
trigger1 = Anim != (20 + 5 * (var(40) = 1)) && Anim != (5 + 2 * (var(40) = 1))
trigger2 = Anim = (5 + 2 * (var(40) = 1)) && AnimElemTime(1) >= 1
value = 20 + 5 * (var(40) = 1)

[State 20, ChangeAnim]
type = ChangeAnim
triggerAll = vel x < 0
trigger1 = Anim != (21 + 5 * (var(40) = 1)) && Anim != (5 + 2 * (var(40) = 1))
trigger2 = Anim = (5 + 2 * (var(40) = 1)) && AnimElemTime(1) >= 1
value = 21 + 5 * (var(40) = 1)



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
value = 40 + 10000 * (var(40) = 1)

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
sysvar(1) = ifElse((EnemyNear, MoveType != A || BackEdgeBodyDist <= 10 || ((EnemyNear, StateNo = 5120) && (EnemyNear, BackEdgeBodyDist > 10) && Random < (500 * (AILevel ** 2 / 64.0)))), 1, ifElse((EnemyNear, MoveType = A), -1, 0))

[State 40, High Jump]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse(command = "highjump", 3, 0)
var(3) = ifElse(NumExplod(90000408), 3, 0)

[State 40, High Jump (AI)]
type = VarSet
trigger1 = Time && AILevel
var(3) = ifElse(P2BodyDist x > 150, 3, 0)

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

[State 40, Long Low Jump (AI)]
type = VarSet
trigger1 = AILevel && (var(3) != [1, 2])
trigger1 = (P2BodyDist x = [80, 150])
var(3) = 2

[State 40, Low Jump (AI)]
type = VarSet
trigger1 = AILevel && (var(3) != [1, 2])
trigger1 = (P2BodyDist x = [0, 80])
var(3) = 1

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
trigger1 = !AnimTime && var(40) != 1
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = ifElse(!sysvar(1), const(velocity.jump.y), ifElse(sysvar(1) = 1, -8.90625, -9.53125))

[State 40, Velocity: Low Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 1 && var(40) != 1
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = 0.75 * ifElse(!sysvar(1), const(velocity.jump.y), ifElse(sysvar(1) = 1, -8.90625, -9.53125))

[State 40, Velocity: Long Low Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 2 && var(40) != 1
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = 0.75 * ifElse(!sysvar(1), const(velocity.jump.y), ifElse(sysvar(1) = 1, -8.90625, -9.53125))

[State 40, Velocity: Long Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 3 && var(40) != 1
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = ifElse(!sysvar(1), const(velocity.runjump.y), ifElse(sysvar(1) = 1, -8.90625, -9.53125))

[State 40, Velocity: Normal Jump (Orochi)]
type = VelSet
trigger1 = !AnimTime && var(40) = 1
x = ifElse(!sysvar(1), 0, ifElse(sysvar(1) = 1, 5.58659217877, -6.14525139665))
y = ifElse(!sysvar(1), -15.15625, ifElse(sysvar(1) = 1, -15, -15.3125))

[State 40, Velocity: Low Jump (Orochi)]
type = VelSet
trigger1 = !AnimTime && var(3) = 1 && var(40) = 1
x = ifElse(!sysvar(1), 0, ifElse(sysvar(1) = 1, 5.58659217877, -6.14525139665))
y = 0.75 * ifElse(!sysvar(1), -15.15625, ifElse(sysvar(1) = 1, -15, -15.3125))

[State 40, Velocity: Long Low Jump (Orochi)]
type = VelSet
trigger1 = !AnimTime && var(3) = 2 && var(40) = 1
x = ifElse(!sysvar(1), 0, ifElse(sysvar(1) = 1, 8.37988826816, -9.21787709497))
y = 0.75 * ifElse(!sysvar(1), -15.15625, ifElse(sysvar(1) = 1, -15, -15.3125))

[State 40, Velocity: Long Jump (Orochi)]
type = VelSet
trigger1 = !AnimTime && var(3) = 3 && var(40) = 1
x = ifElse(!sysvar(1), 0, ifElse(sysvar(1) = 1, 8.37988826816, -9.21787709497))
y = ifElse(!sysvar(1), -17.4296760559, ifElse(sysvar(1) = 1, -15, -15.3125))

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
value = ifElse(!vel x , 41, ifElse(vel x > 0, 42, 43)) + 10 * (var(3) = [1,2]) + 10000 * (var(40) = 1)
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
type = VelAdd
trigger1 = Time > 1 || PrevStateNo != 40
y = ifElse(var(40) = 1, 1.025390625, 0.537109375)

[State 50, VelAdd]
type = VelAdd
trigger1 = vel x && var(40) != 1
trigger1 = Time > 1 || PrevStateNo != 40
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 50, VelAdd]
type = VelAdd
trigger1 = vel x && var(40) = 1
trigger1 = Time > 1 || PrevStateNo != 40
x = ifElse((var(3) = [2,3]), -0.13093575419, -0.08729050279) * ifElse(vel x < 0, -1, 1)

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
type = VelAdd
trigger1 = Time > 0
y = ifElse(var(40) = 1, 1.025390625, 0.537109375)

[State 51, VelAdd]
type = VelAdd
trigger1 = vel x && var(40) != 1
trigger1 = Time >= 1 || PrevStateNo != 40
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 51, VelAdd]
type = VelAdd
trigger1 = vel x && var(40) = 1
trigger1 = Time >= 1 || PrevStateNo != 40
x = ifElse((var(3) = [2,3]), -0.13093575419, -0.08729050279) * ifElse(vel x < 0, -1, 1)

[State 51, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 52


;Landing
[StateDef 52]
type = S
physics = S
moveType = I
anim = 47 + 10000 * (var(40) = 1)
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 52, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && (var(3) = 1 || var(3) = 2)
trigger1 = (PrevStateNo = [600, 699])
value = 57 + 10000 * (var(40) = 1)

[State 52, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 52, CtrlSet]
type = CtrlSet
trigger1 = !Time && (PrevStateNo != [600,699])
trigger2 = Time = 1 && Anim != (57 + 10000 * (var(40) = 1))
value = 1

[State 52, ChangeState to Guarding]
type = ChangeState
;ctrl && command = "holdback"
trigger1 = ctrl && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command = "holdfwd", command = "holdback"), ifElse(P2dist x < 0, command = "holdback", command = "holdfwd")))
trigger1 = InGuardDist && (PrevStateNo != [600,699])
value = 120

[State 52, Assert: NoWalk]
type = AssertSpecial
trigger1 = Anim != (5 + 2 * (var(40) = 1))
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
trigger1 = Anim != (5 + 2 * (var(40) = 1))
value = 5 + 2 * (var(40) = 1)

[State 52, Turn]
type = Turn
trigger1 = Anim = (5 + 2 * (var(40) = 1)) && AnimElem = 1

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
anim = 100 + 10000 * (var(40) = 1)
ctrl = 0
sprPriority = 1

[State 100, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(var(40) = 1, 7.40223463687, const(velocity.run.fwd.x))

[State 100, Step Sound]
type = PlaySnd
trigger1 = (AnimElem = 3 || AnimElem = 6)
value = 100, ifElse((AnimElem = 3), 0, 1)

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
trigger1 = AILevel && (P2BodyDist x = [150, 200])
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
anim = 101 + 10000 * (var(40) = 1)
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
trigger1 = Time > 0
x = -0.53827722645

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
anim = 105 + 10000 * (var(40) = 1)
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
x = ifElse(var(40) = 1, -7.2625698324, const(velocity.run.back.x))
y = ifElse(var(40) = 1, -5.625, const(velocity.run.back.y))

[State 105, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
x = 0.08729050279
y = ifElse(var(40) = 1, 0.78125, 0.439453125)

[State 105, End]
type = ChangeState
trigger1 = AnimElemTime(2) >= 0
trigger1 = pos y > -vel y
value = 106


;Stop Dashing Backwards
[StateDef 106]
type = S
physics = S
ctrl = 0
anim = 106 + 10000 * (var(40) = 1)
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
type = A
physics = N
moveType = I
anim = 110 + 10000 * (var(40) = 1)
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
x = ifElse(var(40) = 1, 7.2625698324, 6.70391061453)

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
anim = 111 + 10000 * (var(40) = 1)
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
anim = 700 + 10000 * (var(40) = 1)
ctrl = 0
velSet = 0,0
sprPriority = -2

[State 700, Voice]
type = PlaySnd
trigger1 = !Time
value = ifElse(var(40) = 1, 4, 700), 0 + 10 * (var(40) = 1)
channel = 0

[State 700, Dodge Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 3
channel = 1

[State 700, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(4) < 0
value = 0
ignoreHitPause = 1

[State 700, HitBy]
type = HitBy
trigger1 = AnimElemTime(4) < 0
value = SCA, AT
time = 1

[State 700, Attack]
type = ChangeState
trigger1 = !AILevel && Time = [15,25]
;command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220) || NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
;ifElse((command = "x" || command = "y" || command = "z"), 220, 245)
value = ifElse((NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)), 225, 250)

[State 700, Attack (AI)]
type = ChangeState
trigger1 = AILevel && (Time = [15, 25]) && NumEnemy
trigger1 = (EnemyNear, MoveType != A) && (P2BodyDist x = [0, 50]) && (P2Dist y >= -60)
value = ifElse(Random < 666, 225, 250)

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
anim = 710 + 10000 * (var(40) = 1)
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
trigger1 = AnimElemTime(8) < 0
value = SCA,AT
time = 1

[State 710, Voice]
type = PlaySnd
trigger1 = !Time && var(40) != 1
value = ifElse(Random < 500, 4, 700), 0
channel = 0

[State 710, Voice (Orochi)]
type = PlaySnd
trigger1 = !Time && var(40) = 1
value = ifElse(Random < 500, 4, 710), 11
channel = 0

[State 710, Roll Sound]
type = PlaySnd
trigger1 = !Time
value = 110,0
channel = 1

[State 710, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = ifElse(var(40) = 1, 6.70391061453, 6.14525139665)

[State 710, VelSet]
type = VelSet
trigger1 = AnimElem = 8
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
anim = 715 + 10000 * (var(40) = 1)
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
trigger1 = AnimElemTime(8) < 0
value = SCA,AT
time = 1

[State 715, Voice]
type = PlaySnd
trigger1 = !Time && var(40) != 1
value = ifElse(Random < 500, 4, 700), 0
channel = 0

[State 715, Voice (Orochi)]
type = PlaySnd
trigger1 = !Time && var(40) = 1
value = ifElse(Random < 500, 4, 710), 11
channel = 0

[State 715, Roll Sound]
type = PlaySnd
trigger1 = !Time
value = 110,0
channel = 1

[State 715, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = -ifElse(var(40) = 1, 5.02793296089, 4.46927374302)

[State 715, VelSet]
type = VelSet
trigger1 = AnimElem = 8
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
anim = 730 + 10000 * (var(40) = 1)
velSet = 0,0
ctrl = 0

[State 730, PowerAdd]
type = PowerAdd
triggerAll = Power < const(data.power) && Power < PowerMax
trigger1 = !AILevel && (command = "holdb" && command = "holdy")
trigger2 = AILevel
value = 2 + ifElse(time < 60, 0, (time - 60) / 12)

[State 730, Voice]
type = PlaySnd
trigger1 = !Time
value = 730, 1 + 10 * (var(40) = 1)
channel = 0

[State 730, Character Flash]
type = PalFX
trigger1 = 1
time = 1
add = 75 + ceil(sin(Time / 6.0 * pi) * 75), 25 + ceil(sin(Time / 6.0 * pi) * 25),0

[State 730, Power Charge Helper]
type = Helper
trigger1 = !NumHelper(8330)
helperType = Normal
stateNo = 8330
ID = 8330
name = "Power Charge"
posType = P1
pos = 0,0
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
trigger1 = Power >= const(data.power) || Power >= PowerMax || RoundState != 2
trigger2 = !AILevel && (command != "holdb" || command != "holdy")
trigger3 = AILevel && (InGuardDist || P2BodyDist x <= 120)
value = 731
ctrl = 1


;Power Charge End
[StateDef 731]
type = S
physics = S
moveType = I
anim = 731 + 10000 * (var(40) = 1)
velSet = 0,0
ctrl = 1

[State 731, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0

[State 731, Full Power Voice]
type = PlaySnd
trigger1 = !Time && Power >= const(data.power)
value = 195,0 + 10 * (var(40) = 1)
channel = 0
persistent = 0

[State 731, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;====================<ZERO COUNTER>====================
[StateDef 750]
type = S
physics = S
moveType = I
anim = 750 + 10000 * (var(40) = 1)
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
value = 4, 1 + 10 * (var(40) = 1)
channel = 0

[State 750, Zero Counter FX Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8350
ID = 8350
name = "Zero Counter"
posType = P1
pos = ifElse(var(40) = 1, 59, 27), -68
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
value = ifElse(var(10) = 1, 2910, 2900 + 5 * (var(40) = 1) + 7 * (var(40) = 3))



;====================<PARRY>====================
;Standing Parry
[StateDef 760]
type = S
physics = S
moveType = I
anim = 760 + 10000 * (var(40) = 1)
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = 78
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
value = 4, 1 + 10 * (var(40) = 1)
channel = 0

[State 760, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760,0
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
pos = ifElse(var(40) = 1, 59, 27), -68
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
anim = 761 + 10000 * (var(40) = 1)
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = 78
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
value = 4, 1 + 10 * (var(40) = 1)
channel = 0

[State 761, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760,0
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
pos = 24, -12
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
anim = 762 + 10000 * (var(40) = 1)
ctrl = 0
sprPriority = 2
powerAdd = 78
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
value = 4, 1 + 10 * (var(40) = 1)
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
pos = 20, -80
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
anim = 763 + 10000 * (var(40) = 1)
ctrl = 1

[State 763, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(vel x > 2, 2, ifElse(vel x < -2, -2, vel x))
y = ifElse(vel y < -2, vel y, -2)

[State 763, Gravity]
type = VelAdd
trigger1 = Time > 0
y = ifElse(var(40) = 1, 1.025390625, 0.537109375)

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
anim = 900 + 10000 * (var(40) = 1)
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
trigger1 = Time = 4
value = 900, 1 + 10 * (var(40) = 1)
channel = 0

[State 900, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo FX"
posType = P1
pos = ifElse(var(40) = 1, -18, 2), -ifElse(var(40) = 1, 78, 112)
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
anim = 905 + 10000 * (var(40) = 1)
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
trigger1 = Time = 4
value = 900, 1 + 10 * (var(40) = 1)
channel = 0

[State 905, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo Startup"
posType = P1
pos = -14, -86
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
anim = 906 + 10000 * (var(40) = 1)
ctrl = 1

[State 906, Gravity]
type = VelAdd
trigger1 = Time > 0
y = ifElse(var(40) = 1, 1.025390625, 0.537109375)

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
trigger1 = Anim = (5035 + 10000 * (var(40) = 1))
value = 5050 + 10000 * (var(40) = 1)

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
trigger1 = Anim = (5035 + 10000 * (var(40) = 1)) && !AnimTime
value = 5050 + 10000 * (var(40) = 1)

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
anim = 5200 + 10000 * (var(40) = 1)
ctrl = 0
faceP2 = 1

[State 5201, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 5201, VelSet]
type = VelSet
trigger1 = !Time
x = -4.469273743
y = 0

[State 5201, Voice]
type = PlaySnd
trigger1 = !Time && var(40) != 1
value = 800, 0
channel = 0

[State 5201, Voice (Orochi Iori)]
type = PlaySnd
trigger1 = !Time && var(40) = 1
value = 195,10
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
pos = 0, -28
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 5201, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
value = SCA
time = 1

[State 5201, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 5201, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 52,0
channel = 3

[State 5201, VelSet]
type = VelSet
trigger1 = AnimElem = 6
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
anim = 5210 + 10000 * (var(40) = 1)
ctrl = 0
faceP2 = 1

[State 5210, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = 0.60546875

[State 5210, VelSet]
type = VelSet
trigger1 = !Time
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
x = ifElse((command = "holdfwd" && command != "holdback"), 3.6312849162, ifElse((command != "holdfwd" && command = "holdback"), -3.6312849162, 0))
y = -7.5

[State 5210, VelSet (Reversed commands)]
type = VelSet
trigger1 = !Time
trigger1 = NumExplod(92828282) || NumExplod(92468246)
x = ifElse((command = "holdback" && command != "holdfwd"), 3.6312849162, ifElse((command != "holdback" && command = "holdfwd"), -3.6312849162, 0))
y = -7.5

[State 5210, Voice]
type = PlaySnd
trigger1 = !Time && var(40) != 1
value = 800, 0
channel = 0

[State 5210, Voice (Orochi Iori)]
type = PlaySnd
trigger1 = !Time && var(40) = 1
value = 195,10
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
pos = -4,-84
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 5210, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1

[State 5210, CtrlSet]
type = CtrlSet
trigger1 = AnimElemTime(4) >= 0
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
anim = 120 + 10000 * (var(40) = 1) + (StateType = C) + (StateType = A) * 2

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
trigger1 = Anim != (130 + 10000 * (var(40) = 1))
value = 130 + 10000 * (var(40) = 1)

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
trigger1 = Anim != (131 + 10000 * (var(40) = 1))
value = 131 + 10000 * (var(40) = 1)

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
trigger1 = Anim != (132 + 10000 * (var(40) = 1))
value = 132 + 10000 * (var(40) = 1)

[State 132, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = ifElse(var(40) = 1, 1.025390625, 0.537109375)

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
value = 140 + 10000 * (var(40) = 1) + (StateType = C) + (StateType = A) * 2

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
value = 150 + 10000 * (var(40) = 1)

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
anim = 150 + 10000 * (var(40) = 1)

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
value = 151 + 10000 * (var(40) = 1)

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
anim = 151 + 10000 * (var(40) = 1)

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
value = 152 + 10000 * (var(40) = 1)

[State 154, End]
type = ChangeState
trigger1 = HitShakeOver
value = 155


;Knocked Back while Guarding (Jumping)
[StateDef 155]
type = A
moveType = H
physics = N
anim = 152 + 10000 * (var(40) = 1)

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
anim = 170 + 1 * (var(40) = 1)
velSet = 0,0

[State 170, Last Breath Visual Effect]
type = Explod
trigger1 = Anim = 171 && AnimElemTime(2) = 1
ID = 10171
anim = 10171
bindTime = -1
sprPriority = 3
posType = P1
scale = 1, 1
ownPal = 1

[State 170, Collapse Sound]
type = PlaySnd
trigger1 = Anim = 171 && AnimElem = 9
value = F7, 0

[State 170, Collapse FX]
type = Explod
trigger1 = Anim = 171 && AnimElem = 9
anim = F60
posType = P1
sprpriority = -3

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
anim = 5300 + 10000 * (var(40) = 1)
velSet = 0,0
ctrl = 0

[State 5500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5500 + 10000 * (var(40) = 1)



;====================<INITIALIZE (PART 2)>====================
[StateDef 5901]
type = S

[State 5901, Intro vs Kyo Kusanagi]
type = ChangeState
triggerAll = NumEnemy && var(40) != 1 && var(40) != 3
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = (Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName != "Jmorphman") || (Enemy, Name = "cvskyo" && Enemy, PalNo <= 6) || Enemy, Name = "cvskyo_normal" || Enemy, Name = "Kyo_WLS"
trigger2 = Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) != 1
value = ifElse(Enemy, AuthorName = "Jmorphman" && Enemy, var(40) = 2, 6810, 6800)

[State 5901, Intro vs. M. Bison (Dictator)]
type = ChangeState
triggerAll = NumEnemy && var(40) != 1 && var(40) != 3
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Dictator" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) != 2
trigger2 = Enemy, Name = "Vega" && Enemy, AuthorName = "Phantom.of.the.Server"
trigger3 = Enemy, Name = "Vega" && Enemy, AuthorName = "Froz"
trigger4 = Enemy, Name = "cvsvega" && Enemy, AuthorName = "Warusaki3"
value = 6801

[State 5901, Intro vs. Genjuro Kibagami]
type = ChangeState
triggerAll = NumEnemy && var(40) != 1
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Genjuro Kibagami" && Enemy, AuthorName = "KarmaCharmeleon"
value = 6803

[State 5901, Intro vs. Ash Crimson]
type = ChangeState
triggerAll = NumEnemy && var(40) != 1 && var(40) != 3
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Ash Crimson" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) != 1
value = 6804

[State 5901, Intro vs. Orochi]
type = ChangeState
triggerAll = NumEnemy && var(40) != 1 && var(40) != 3
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Orochi"
value = 6805

[State 5901, Claw Iori Intro vs. Kyo Kusanagi]
type = ChangeState
triggerAll = NumEnemy && var(40) = 3
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) != 1
value = 6806

[State 5901, Claw Intro vs. Claw]
type = ChangeState
triggerAll = NumEnemy && var(40) = 3
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Vega" && Enemy, AuthorName = "Fausto Mugen"
trigger2 = (Enemy, Name = "Vega" || Enemy, Name = "Balrog" || Enemy, Name = "Claw") && (Enemy, AuthorName = "Jmorphman" || Enemy, AuthorName = "KarmaCharmeleon")
value = 6807

[State 5901, EX Iori Intro vs EX Kyo Kusanagi]
type = ChangeState
triggerAll = NumEnemy && var(40) = 2
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) = 2
value = 6810

[State 5901, Orochi Intro vs. Evil Ryu]
type = ChangeState
triggerAll = NumEnemy && var(40) = 1
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) = 1
value = 6816

[State 5901, Turns Intro]
type = ChangeState
trigger1 = TeamMode = Turns
trigger1 = !RoundsExisted && RoundNo >= 2
value = 6900

[State 5901, Intro Decider]
type = ChangeState
trigger1 = RoundNo = 1
value = ifElse(var(40) = 1, 192, 190 + (Random % 2))

[State 5901, End]
type = ChangeState
trigger1 = 1
value = 0



;====================<INTRO 1>====================
[StateDef 190]
type = S
physics = S
anim = 190

[State 190, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, Voice]
type = PlaySnd
trigger1 = !Time
value = 190, 0
channel = 0

[State 190, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO 2>====================
[StateDef 191]
type = S
physics = S
anim = 191

[State 191, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, Voice]
type = PlaySnd
trigger1 = !Time
value = 191, 0
channel = 0

[State 191, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO (OROCHI IORI)>====================
[StateDef 192]
type = S
physics = S
anim = 192

[State 192, Stop Voice Sound]
type = StopSnd
trigger1 = Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) = 1
channel = 0

[State 192, Change to Regular Intro]
type = ChangeState
trigger1 = Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) = 1
value = 5900

[State 192, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, Voice]
type = PlaySnd
trigger1 = !Time
value = 192, 10 + (Random % 2)
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
trigger1 = Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40)
value = 5901

[State 6800, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6800, Fire Effect 1]
type = Explod
trigger1 = AnimElemTime(5) = 1
ID = 16800
anim = 16800
bindTime = -1
removeTime = -2
sprPriority = 3
posType = P1
pos = -7, -99
scale = 0.25, 0.25
ownPal = 1

[State 190, ModifyExplod]
type = ModifyExplod
trigger1 = AnimElemTime(5) = 3
ID = 16800
scale = 0.5,0.5

[State 6800, Fire Effect 2]
type = Explod
trigger1 = AnimElemTime(6) = 1
ID = 16801
anim = 16801
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = -3, -96
scale = 0.5, 0.5
ownPal = 1

[State 190, ModifyExplod]
type = ModifyExplod
trigger1 = AnimElem = 7
ID = 16801
posType = P1
pos = 6,-93

[State 190, ModifyExplod]
type = ModifyExplod
trigger1 = AnimElem = 8
ID = 16801
posType = P1
pos = 11,-89

[State 6800, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(16801) && AnimElem = 9
ID = 16801

[State 6800, Fire Effect 3]
type = Explod
trigger1 = AnimElem = 9
ID = 16802
anim = 3105
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 15, -83
scale = 0.5, 0.5
ownPal = 1

[State 6800, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(16802) && AnimElem = 34
ID = 16802

[State 6800, Fire Effect 4]
type = Explod
trigger1 = AnimElem = 34
ID = 16803
anim = 16803
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 15, -70
scale = 0.5, 0.5
ownPal = 1

[State 6800, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(16803) && AnimElem = 39
ID = 16803

[State 6800, Voice]
type = PlaySnd
trigger1 = AnimElem = 10
value = 6800, 0
channel = 0

[State 6800, Fire Sound Effect 1]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 3100, 1
channel = 1

[State 6800, Fire Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 34
value = 6800, 1
channel = 1

[State 6800, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO VS DICTATOR>====================
[StateDef 6801]
type = S
physics = S
anim = 6801

[State 6801, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6801, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 6801, VarSet]
type = VarSet
trigger1 = !Time
var(0) = ceil(Pos X)

[State 6801,PosSet]
type = PosSet
trigger1 = !Time
x = (320 - ScreenPos X - (160 - (Pos X))) + 13 * ifElse(TeamSide = 1, 1, -1)

[State 6801, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1000, 0
channel = 0

[State 6801, Yami Barai Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1000, 1
channel = 1

[State 6801, Yami Barai Explod]
type = Explod
trigger1 = AnimElem = 7
ID = 1005
anim = 1003
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0
facing = -1

[State 6801, Projectile]
type = Helper
trigger1 = AnimElemTime(8) = 0
helperType = Normal
stateNo = 1005
ID = 1005
name = "Yami Barai Projectile"
posType = P1
pos = -48, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1
facing = -1

[State 6801, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 19
stateType = A
physics = N

[State 6801, Dust Helper]
type = Helper
trigger1 = AnimElem = 19
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 6801, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 19
value = 40, 0
channel = 4

[State 6801, VelSet]
type = VelSet
trigger1 = AnimElem = 19
x = -(abs(Pos X - var(0)) * 0.04545454545)
y = -3

[State 6801, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(19) > 0
y = 0.28125

[State 6801, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 6802


;Landing
[StateDef 6802]
type = S
anim = 6802
physics = N
moveType = I
velSet = 0, 0

[State 6802, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6802, PosSet]
type = PosSet
trigger1 = 1
Y = 0

[State 6802, Landing Dust Explod]
type = Explod
trigger1 = !Time && Anim = 6802
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 6802, Landing Sound]
type = PlaySnd
trigger1 = !Time && Anim = 6802
value = 52, 0
channel = 1

[State 6802, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime && Anim = 6802
value = 0

[State 6802, Voice]
type = PlaySnd
trigger1 = Anim = 0 && AnimElem = 2
value = 190, 0
channel = 0
persistent = 0

[State 6802, End]
type = ChangeState
trigger1 = Time = 145
value = 0



;====================<INTRO VS GENJURO KIBAGAMI>====================
[StateDef 6803]
type = S
physics = S
anim = 6803

[State 6803, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6803, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 190, 0
channel = 0

[State 6803, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO VS ASH CRIMSON>====================
[StateDef 6804]
type = S
physics = S
anim = 6804

[State 6804, Stop Fire Sound Sound]
type = StopSnd
trigger1 = Enemy, Name = "Ash Crimson" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40)
channel = 1

[State 6804, RemoveExplod]
type = RemoveExplod
trigger1 = Enemy, Name = "Ash Crimson" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40)
ID = 16802

[State 6804, Change to Regular Intro]
type = ChangeState
trigger1 = Enemy, Name = "Ash Crimson" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40)
value = 5901

[State 6804, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6800, Fire Effect 1]
type = Explod
trigger1 = !Time
ID = 16802
anim = 3105
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 15, -83
scale = 0.5, 0.5
ownPal = 1

[State 6800, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(16802) && AnimElem = 13
ID = 16802

[State 6800, Fire Effect 2]
type = Explod
trigger1 = AnimElem = 13
ID = 16803
anim = 16803
bindTime = -1
removeTime = -1
sprPriority = 3
posType = P1
pos = 15, -70
scale = 0.5, 0.5
ownPal = 1

[State 6800, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(16803) && AnimElem = 18
ID = 16803

[State 6804, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 6804, 0
channel = 0

[State 6804, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 13
value = 6804, 1
channel = 0

[State 6804, Fire Sound Effect 1]
type = PlaySnd
trigger1 = !Time
value = 3100, 1
channel = 1

[State 6804, Fire Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 13
value = 6800, 1
channel = 1

[State 6804, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<OROCHI IORI INTRO VS KUSANAGI>====================
[StateDef 6805]
type = S
physics = N
anim = 6805

[State 6805, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6805, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 185, 11
channel = 0

[State 6805, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 54
value = 3600, 0
channel = 0

[State 6805, Beats]
type = PlaySnd
trigger1 = AnimElem = 54
value = 3600, 1
channel = 1

[State 6805, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 88
value = 800, 0
channel = 1

[State 6805, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<CLAW IORI INTRO VS KYO KUSANAGI>====================
[StateDef 6806]
type = S
physics = S
anim = 6806

[State 6806, Change to Regular Intro]
type = ChangeState
trigger1 = Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) = 1
value = 5901

[State 6806, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6806, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 6806, 0
channel = 0

[State 6806, Slash]
type = PlaySnd
trigger1 = AnimElem = 36
value = 6806, 1
channel = 1

[State 6806, Blood Effect]
type = Explod
trigger1 = AnimElem = 36
ID = 16806
anim = 16806
bindTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 1, 1
ownPal = 1

[State 6806, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<CLAW IORI INTRO VS CLAW>====================
[StateDef 6807]
type = S
physics = S
anim = 6807

[State 6807, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6807, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1600, 0
channel = 0

[State 6807, Slash Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1600, 1
channel = 1

[State 6807, Slash Effect]
type = Explod
trigger1 =  AnimElemTime(6) = 5
anim = 1603
bindTime = -1
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5, 0.5
ownPal = 1

[State 6807, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<EX IORI INTRO VS EX KYO>====================
[StateDef 6810]
type = S
physics = N
anim = 6810
sprPriority = -1

[State 6810, Change to Regular Intro]
type = ChangeState
trigger1 = Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) != 2
value = 5901

[State 6810, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = NoBarDisPlay

[State 6810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 6810, Camera Helper]
type = Helper
trigger1 = !NumHelper(8999)
helpertype = Normal
stateNo = 8999
ID = 8999
name = "Camera"
posType = P1

[State 6810, PosSet]
type = PosSet
trigger1 = !Time
x = 10 * Facing

[State 6810, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
flag = noBG
flag2 = noFG

[State 6810, BGPalFX]
type = PalFX
trigger1 = AnimElemTime(2) >= 32 && AnimElemTime(3) < 0
time = 1
add = -20 * (Time - 64), -20 * (Time - 64), -20 * (Time - 64)

[State 6810, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(2) >= 32 && AnimElemTime(3) < 0
time = 1
add = -20 * (Time - 64), -20 * (Time - 64), -20 * (Time - 64)

[State 6810, Fire Effect]
type = Explod
trigger1 = AnimElem = 3
anim = 16810
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5,0.5
ownPal = 1

[State 6810, Fire Sound Effect]
type = PlaySnd
trigger1 = AnimELem = 3
trigger2 = AnimElemTime(3) = 26
trigger3 = AnimElemTime(3) = 51
value = 6810, 0
channel = 3

[State 6810, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = -abs((Helper(8999), pos x - pos x))/(15) - 5.46875

[State 6810, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(4) < 15
x = 0.78125

[State 6810, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 15
x = 0

[State 6810, PosSet]
type = PosSet
trigger1 = AnimElemTime(4) = 15
x = Helper(8999), pos x

[State 6810, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<OROCHI IORI INTRO VS EVIL RYU>====================
;Homura Hotogi
[StateDef 6816]
type = S
physics = N
anim = 6816
sprPriority = 1

[State 6816, Change to Regular Intro]
type = ChangeState
trigger1 = Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) != 1
value = 5901

[State 6816, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6816, Camera Helper]
type = Helper
trigger1 = !NumHelper(8999)
helpertype = Normal
stateNo = 8999
ID = 8999
name = "Camera"
posType = P1

[State 6816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 6816, Voice]
type = PlaySnd
trigger1 = !Time
value = 3700, 10
channel = 0

[State 6816, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 41, 0

[State 6816, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Homura Hotogi Dust"
posType = P1
ownPal = 1

[State 6816, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 6816, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = (P2Dist X - 50) / 21
y = -15

[State 6816, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 1
y = 1.5625

[State 6816, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 6817


;Whiff
[StateDef 6817]
type = S
physics = N
anim = 6817
velSet = 0, 0

[State 6817, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6817, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 6817, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 6817, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 4

[State 6817, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 6817, Whoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 6817, Back Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 105,0

[State 6817, Dust Helper]
type = Helper
trigger1 = AnimElem = 9
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
facing = -1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 6817, VelSet]
type = VelSet
trigger1 = AnimElem = 9
x = -(Helper(8999), RootDist X) / 12
y = -5.625

[State 6817, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(9) > 0
y = 1.025390625

[State 6817, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 6818


;Landing
[StateDef 6818]
type = S
physics = N
anim = 10057
velSet = 0, 0

[State 6818, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6818, PosSet]
type = PosSet
trigger1 = 1
x = Helper(8999), Pos X
y = 0

[State 6818, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 6818, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 6818, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<TURNS INTRO>====================
[StateDef 6900]
type = A
anim = 42 + 10000 * (var(40) = 1)
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
anim = 6901 + 10000 * (var(40) = 1)
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
value = 52,0
channel = 3

[State 6901, Landing Dust Expod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 6901, Voice]
type = PlaySnd
trigger1 = var(40) != 1 && AnimElem = 8
value = 195,0
channel = 0

[State 6901, Voice (Orochi)]
type = PlaySnd
trigger1 = var(40) = 1 && AnimElem = 8
value = 185,11
channel = 0

[State 6901, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<WIN POSE DECIDER>====================
[StateDef 180]
type = S

[State 180, Generic Victory Quote]
type = VictoryQuote
trigger1 = var(40) != 1 && var(40) != 3
value = (Random % 12)

[State 180, Victory Quote vs. Iori Yagami]
type = VictoryQuote
trigger1 = var(40) != 1
trigger1 = Enemy, Name = "Iori" || (Enemy, Name = "Iori Yagami" && !(Enemy, AuthorName = "Anjel") && !(Enemy, AuthorName = "KarmaCharmeleon") && !(Enemy, AuthorName = "Knuckles8864")) || Enemy, Name = "IoriMG"
trigger2 = (Enemy, Name = "cvsiori" && Enemy, PalNo = [1, 6]) || Enemy, Name = "cvsiori_normal"
trigger3 = (Enemy, Name = "Iori_WLS" && Enemy, PalNo = [1, 6]) && Enemy, Name = "N.Iori_WLS"
trigger4 = Enemy, Name = "Iori Yagami" && Enemy, AuthorName = "Anjel" && Enemy, var(50) != 1
trigger5 = Enemy, Name = "Iori Yagami" && Enemy, AuthorName = "Knuckles8864" && Enemy, var(40) != 1
trigger6 = Enemy, Name = "Iori Yagami" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) != 1 && Enemy, var(40) != 3
value = 13 + (Random % 5)

[State 180, Victory Quote vs. Orochi Iori]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Orochi Iori" || Enemy, Name = "OrochiIori" || Enemy, Name = "Orochi-Iori" || Enemy, Name = "Insane Iori with Blood of Orochi Under the Night of the Moon"
trigger2 = (Enemy, Name = "cvsiori" && Enemy, PalNo = [7, 12]) || Enemy, Name = "cvsiori_ex"
trigger3 = (Enemy, Name = "Iori_WLS" && Enemy, PalNo = [7, 12]) && Enemy, Name = "O.Iori_WLS"
trigger4 = Enemy, Name = "Iori Yagami" && Enemy, AuthorName = "Anjel" && Enemy, var(50) = 1
trigger5 = Enemy, Name = "Iori Yagami" && Enemy, AuthorName = "Knuckles8864" && Enemy, var(40) = 1
trigger6 = Enemy, Name = "Iori Yagami" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) = 1
value = 18

[State 180, Victory Quote vs. Kyo Kusanagi]
type = VictoryQuote
triggerAll = var(40) != 1 && var(40) != 3
trigger1 = Enemy, Name = "Kyo" || (Enemy, Name = "Kyo Kusanagi" && !(Enemy, AuthorName = "Jmorphman")) || Enemy, Name = "Kyo_WLS"
trigger2 = (Enemy, Name = "cvskyo" && Enemy, PalNo = [1, 6]) || Enemy, Name = "cvskyo_normal"
trigger3 = Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) != 1
value = 19 + (Random % 5)

[State 180, Victory Quote vs. Mature]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Mature" || Enemy, Name = "cvsmature"
value = 24

[State 180, Victory Quote vs. Vice]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Vice" || Enemy, Name = "cvsvice"
value = 25

[State 180, Victory Quote vs. Ash Crimson]
type = VictoryQuote
triggerAll = var(40) != 1 && var(40) != 3
trigger1 = Enemy, Name = "Ash"  || (Enemy, Name = "Ash Crimson" && !(Enemy, AuthorName = "KarmaCharmeleon")) || Enemy, Name = "cvsash"
trigger2 = (Enemy, Name = "Ash Crimson" && Enemy, AuthorName = "KarmaCharmeleon") && var(40) = 0
value = 26

[State 180, Victory Quote vs. Chizuru Kagura]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Chizuru" || Enemy, Name = "Chizuru Kagura"
value = 27

[State 180, Victory Quote vs. Chris]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Chris"
value = 28

[State 180, Victory Quote vs. Shermie]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Shermie"
value = 29

[State 180, Victory Quote vs. Yashiro]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Yashiro" || Enemy, Name = "Yashiro Nanakase"
value = 30

[State 180, Victory Quote vs. Andy Bogard]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Andy Bogard" || Enemy, Name = "Andy" || Enemy, Name = "cvsandy"
value = 31

[State 180, Victory Quote vs. Athena Asamiya]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Athena Asamiya" || Enemy, Name = "Athena" || Enemy, Name = "cvsathena"
value = 32

[State 180, Victory Quote vs. Balrog (Boxer)]
type = VictoryQuote
triggerAll = var(40) != 1 && var(40) != 3
trigger1 = Enemy, Name = "Balrog" || Enemy, Name = "cvsbison"
value = 33

[State 180, Victory Quote vs. Benimaru Nikaido]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Benimaru Nikaido" || Enemy, Name = "cvsbenimaru" || Enemy, Name = "Benimaru"
value = 34

[State 180, Victory Quote vs. Billy Kane]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Billy Kane" || Enemy, Name = "Billy Karn" || Enemy, Name = "ffsp_billy"
value = 35

[State 180, Victory Quote vs. Blanka]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Blanka" || Enemy, Name = "cvsblanka"
value = 36

[State 180, Victory Quote vs. Cammy White]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Cammy" || Enemy, Name = "cvscammy"
value = 37

[State 180, Victory Quote vs. Chang Koehan]
type = VictoryQuote
triggerAll = var(40) != 1 && var(40) != 3
trigger1 = Enemy, Name = "Chang" || Enemy, Name = "cvschang" || Enemy, Name = "Chang Koehan"
value = 38

[State 180, Victory Quote vs. Chun-Li]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Chun-Li" || Enemy, Name = "cvschunli" || Enemy, Name = "Chun Li" || Enemy, Name = "ChunLi"
value = 39

[State 180, Victory Quote vs. Clark Still]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Clark" || Enemy, Name = "Clark Still"
value = 40

[State 180, Victory Quote vs. Dan]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Dan" || Enemy, Name = "cvsdan" || Enemy, Name = "Dan Hibiki"
value = 41

[State 180, Victory Quote vs. Goro Daimon]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Daimon" || Enemy, Name = "Goro Daimon"
value = 42

[State 180, Victory Quote vs. Dhalsim]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Dhalsim" || Enemy, Name = "cvsdhalsim" || Enemy, Name = "RajaaDhalsim"
value = 43

[State 180, Victory Quote vs. E. Honda]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "E. Honda" || Enemy, Name = "cvshonda" || Enemy, Name = "E.Honda" || Enemy, Name = "Honda"
value = 44

[State 180, Victory Quote vs. Eagle]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Eagle" || Enemy, Name = "cvseagle"
value = 45

[State 180, Victory Quote vs. Elisabeth Blanctorche]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Elisabeth" || Enemy, Name = "Elisabeth Blanctorche"
value = 46

[State 180, Victory Quote vs. Geese Howard]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "cvsgeese" || Enemy, Name = "Geese" || Enemy, Name = "Geese Howard" || Enemy, Name = "cvsgeese_normal" || Enemy, Name = "cvsgeese_ex" || Enemy, Name = "Nightmare Geese" || Enemy, Name = "Geese_WLS" ||  Enemy, Name = "Geese B Howard"
value = 47

[State 180, Victory Quote vs. Gouki]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = (Enemy, Name = "Gouki" && !(Enemy, AuthorName = "KarmaCharmeleon")) || (Enemy, Name = "Akuma" && !(Enemy, AuthorName = "DeathScythe"))
trigger2 = (Enemy, Name = "cvsgouki" && Enemy, PalNo = [1, 6]) || Enemy, Name = "cvsgouki_normal"
trigger3 = (Enemy, Name = "Gouki" && Enemy, AuthorName = "KarmaCharmeleon") && Enemy, var(40) = 0
trigger4 = (Enemy, Name = "Akuma" && Enemy, AuthorName = "DeathScythe") && Enemy, var(40) = 0
value = 48

[State 180, Victory Quote vs. Guile]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Guile" || Enemy, Name = "cvsguile"
value = 49

[State 180, Victory Quote vs. Haohmaru]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = (Enemy, Name = "Haohmaru" && !(Enemy, AuthorName != "KarmaCharmeleon")) || Enemy, Name = "cvshaohmaru"
trigger2 = Enemy, Name = "Haohmaru" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) = 0
value = 50

[State 180, Victory Quote vs. Hibiki Takane]
type = VictoryQuote
triggerAll = var(40) != 1 && var(40) != 3
trigger1 = Enemy, Name = "Hibiki" || Enemy, Name = "cvshibiki" || Enemy, Name = "Hibiki Takane"
value = 51

[State 180, Victory Quote vs. Joe Higashi]
type = VictoryQuote
trigger1 = var(40) != 1 && var(40) != 3
trigger1 = Enemy, Name = "Joe Higashi" || Enemy, Name = "Joe" || Enemy, Name = "cvsjoe"
value = 52

[State 180, Victory Quote vs. K' / K9999 / Kusanagi]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Ultimate K'" || Enemy, Name = "K'"
trigger2 = Enemy, Name = "K9999"
trigger3 = Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) = 1
value = 53

[State 180, Victory Quote vs. Ken Masters]
type = VictoryQuote
triggerAll = var(40) != 1 && var(40) != 3
trigger1 = Enemy, Name = "Ken" || (Enemy, Name = "Ken Masters" && !(Enemy, AuthorName = "Jmorphman"))
trigger2 = (Enemy, Name = "cvsken" && Enemy, PalNo = [1, 6]) || Enemy, Name = "cvsken_normal"
trigger3 = Enemy, Name = "Ken Masters" && Enemy, Authorname = "Jmorphman" && Enemy, var(40) != 1
value = 54

[State 180, Victory Quote vs. Sie Kensou]
type = VictoryQuote
trigger1 = var(40) != 1
trigger1 = Enemy, Name = "Sie Kensou" || Enemy, Name = "Kensou"
value = 55

[State 180, Victory Quote vs. Kim Kaphwan]
type = VictoryQuote
trigger1 = var(40) != 1
trigger1 = Enemy, Name = "Kim Kaphwan" || Enemy, Name = "Kim" || Enemy, Name = "cvskim"
value = 56

[State 180, Victory Quote vs. King]
type = VictoryQuote
trigger1 = var(40) != 1
trigger1 = Enemy, Name = "cvsking" || Enemy, Name = "King"
value = 57

[State 180, Victory Quote vs. Kula Diamond]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Kula Diamond" || Enemy, Name = "Kula"
value = 58

[State 180, Victory Quote vs. Kyosuke Kagami]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Kyosuke" || Enemy, Name = "cvskyosuke" || Enemy, Name = "Kyosuke Kagami"
value = 59

[State 180, Victory Quote vs. Leona]
type = VictoryQuote
trigger1 = var(40) != 1
trigger1 = Enemy, Name = "Leona" || Enemy, Name = "Leona Heidern"
value = 60

[State 180, Victory Quote vs. M. Bison (Dictator)]
type = VictoryQuote
triggerAll = var(40) != 1 && var(40) != 3
trigger1 = Enemy, Name = "M. Bison" || (Enemy, Name = "Vega" && Enemy, AuthorName = "Phantom.of.the.Server") || (Enemy, Name = "Dictator" && Enemy, AuthorName = "KarmaCharmeleon") || Enemy, Name = "M.Bison" || Enemy, Name = "Bison" || Enemy, Name = "Bison Bison"
trigger2 = Enemy, Name = "cvsvega" || Enemy, Name = "cvsvega_normal" || Enemy, Name = "cvsvega_ex"
value = 61

[State 180, Victory Quote vs. Mai Shiranui]
type = VictoryQuote
trigger1 = var(40) != 1 && var(40) != 3
trigger1 = Enemy, Name = "Mai" || Enemy, Name = "Mai Shiranui" || Enemy, Name = "cvsmai"
value = 62

[State 180, Victory Quote vs. Maki Genryuusai]
type = VictoryQuote
trigger1 = var(40) != 1
trigger1 = Enemy, Name = "Maki" || Enemy, Name = "Maki Genryuusai" || Enemy, Name = "cvsmaki"
value = 63

[State 180, Victory Quote vs. Morrigan Aensland]
type = VictoryQuote
trigger1 = var(40) != 1 && var(40) != 3
trigger1 = Enemy, Name = "Morrigan" || Enemy, Name = "Morrigan Aensland" || Enemy, Name = "cvsmorrigan"
value = 64

[State 180, Victory Quote vs. Nakoruru]
type = VictoryQuote
trigger1 = var(40) != 1
trigger1 = Enemy, Name = "Nakoruru" || Enemy, Name = "cvsnakoruru"
value = 65

[State 180, Victory Quote vs. Raiden]
type = VictoryQuote
trigger1 = var(40) != 1
trigger1 = Enemy, Name = "Raiden" || Enemy, Name = "Big Bear" || Enemy, Name = "cvsraiden"
value = 66

[State 180, Victory Quote vs. Ralf Jones]
type = VictoryQuote
trigger1 = var(40) != 1
trigger1 = Enemy, Name = "Ralf" || Enemy, Name = "Ralf Jones"
value = 67

[State 180, Victory Quote vs. Red Arremer]
type = VictoryQuote
trigger1 = var(40) != 1
trigger1 = Enemy, Name = "Red Arremer"
value = 68

[State 180, Victory Quote vs. Robert Garcia]
type = VictoryQuote
trigger1 = var(40) != 1
trigger1 = Enemy, Name = "Robert Garcia" || Enemy, Name = "Robert_WLS" || Enemy, Name = "cvsrobert"
value = 69

[State 180, Victory Quote vs. Rock Howard]
type = VictoryQuote
trigger1 = var(40) != 1
trigger1 = Enemy, Name = "Rock" || Enemy, Name = "Rock Howard" || Enemy, Name = "cvsrock"
value = 70

[State 180, Victory Quote vs. Rolento F. Schugerg]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Rolento" || Enemy, Name = "cvsrolento"
value = 71

[State 180, Victory Quote vs. Rugal Bernstein]
type = VictoryQuote
trigger1 = var(40) != 1 && var(40) != 3
trigger1 = Enemy, Name = "Rugal" || (Enemy, Name = "Rugal Bernstein" && !(Enemy, AuthorName = "KarmaCharmeleon"))
trigger2 = (Enemy, Name = "cvsrugal" && (Enemy,PalNo = [1, 6])) || Enemy, Name = "cvsrugal_normal"
trigger3 = (Enemy, Name = "Rugal Bernstein" && Enemy, AuthorName = "KarmaCharmeleon") && Enemy, var(40) = 0
value = 72

[State 180, Victory Quote vs. Ryo Sakazaki]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Ryo Sakazaki" || Enemy, Name = "Ryo" || Enemy, Name = "cvsryo"
value = 73

[State 180, Victory Quote vs. Ryu]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Ryu" && !(Enemy, AuthorName = "Phantom.of.the.Server") && !(Enemy, AuthorName = "KarmaCharmeleon")
trigger2 = (Enemy, Name = "cvsryu" && Enemy, PalNo = [1, 6]) || Enemy, Name = "cvsryu_normal"
trigger3 = (Enemy, Name = "Ryu" && Enemy, AuthorName = "Phantom.of.the.Server") && Enemy, var(1) != 2
trigger4 = (Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon") && Enemy, var(40) != 1 && Enemy, var(40) != 2
value = 74

[State 180, Victory Quote vs. Ryuhaku Todoh]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Todoh" || Enemy, Name = "Ryuhaku Todoh" || Enemy, Name = "cvstodo"
value = 75

[State 180, Victory Quote vs. Sagat]
type = VictoryQuote
triggerAll = var(40) != 1 && var(40) != 3
trigger1 = Enemy, Name = "Sagat" || Enemy, Name = "cvssagat" || Enemy, Name = "SagatMG"
value = 76

[State 180, Victory Quote vs. Sakura]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Sakura" || (Enemy, Name = "Sakura Kasugano" && !(Enemy, AuthorName = "DeathScythe")) || Enemy, Name = "cvssakura"
trigger2 = (Enemy, Name = "Sakura Kasugano" && Enemy, AuthorName = "DeathScythe") && var(40) = 1
value = 77

[State 180, Victory Quote vs. Takuma Sakazaki]
type = VictoryQuote
trigger1 = var(40) != 1
trigger1 = Enemy, Name = "Takuma" || Enemy, Name = "Takuma Sakazaki" || Enemy, Name = "cvstakuma"
value = 78

[State 180, Victory Quote vs. Terry Bogard]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Terry" || Enemy, Name = "Terry Bogard" || Enemy, Name = "cvsterry"
value = 79

[State 180, Victory Quote vs. Tessa (Tabasa)]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Tessa" || Enemy, Name = "Tabasa" || Enemy, Name = "cvstessa"
value = 80

[State 180, Victory Quote vs. Vanessa]
type = VictoryQuote
trigger1 = var(40) != 1
trigger1 = Enemy, Name = "Vanessa"
value = 81

[State 180, Victory Quote vs. Vega (Claw)]
type = VictoryQuote
triggerAll = var(40) != 1
triggerAll = Enemy, AuthorName != "Phantom.of.the.Server"
trigger1 = Enemy, Name = "Vega" || Enemy, Name = "cvsbalrog"
value = 82

[State 180, Victory Quote vs. Ryuji Yamazaki]
type = VictoryQuote
triggerAll = var(40) != 1
trigger1 = Enemy, Name = "Yamazaki" || Enemy, Name = "Ryuji Yamazaki" || Enemy, Name = "cvsyamazaki"
value = 83

[State 180, Victory Quote vs. Yuri Sakazaki]
type = VictoryQuote
trigger1 = var(40) != 1
trigger1 = Enemy, Name = "Yuri Sakazaki" || Enemy, Name = "Yuri" || Enemy, Name = "cvsyuri"
value = 84

[State 180, Victory Quote vs. Zangief]
type = VictoryQuote
triggerAll = var(40) != 1 && var(40) != 3
trigger1 = Enemy, Name = "Zangief" || Enemy, Name = "cvszangief"
value = 85

[State 180, Generic Victory Quote (Orochi Iori)]
type = VictoryQuote
trigger1 = var(40) = 1
value = 86 + (Random % 5)

[State 180, Victory Quote vs. Kyo Kusanagi (Orochi Iori)]
type = VictoryQuote
triggerAll = var(40) = 1
trigger1 = (Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName != "Jmorphman") || (Enemy, Name = "cvskyo" && Enemy, PalNo <= 6) || Enemy, Name = "cvskyo_normal" || Enemy, Name = "Kyo_WLS"
trigger2 = Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) != 1
value = 91

[State 180, Victory Quote vs. Hakkesshu Members (Orochi Iori)]
type = VictoryQuote
triggerAll = var(40) = 1
trigger1 = Enemy, Name = "Orochi"
trigger2 = Enemy, Name = "Goenitz" || Enemy, Name = "Leopold Goenitz"
trigger3 = Enemy, Name = "Chris" || Enemy, Name = "Orochi Chris"
trigger4 = Enemy, Name = "Shermie" || Enemy, Name = "Orochi Shermie"
trigger5 = Enemy, Name = "Yashiro" || Enemy, Name = "Yashiro Nanakase" || Enemy, Name = "Orochi Yashiro"
trigger6 = Enemy, Name = "Mature" || Enemy, Name = "cvsmature"
trigger7 = Enemy, Name = "Vice" || Enemy, Name = "cvsvice"
trigger8 = Enemy, Name = "Yamazaki" || Enemy, Name = "Ryuji Yamazaki" || Enemy, Name = "cvsyamazaki"
value = 92

[State 180, Generic Victory Quote (Claw Iori)]
type = VictoryQuote
trigger1 = var(40) = 3
value = 93 + (Random % 5)

[State 180, Victory Quote vs. Kyo Kusanagi (Claw Iori)]
type = VictoryQuote
triggerAll = var(40) = 3
trigger1 = (Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName != "Jmorphman") || (Enemy, Name = "cvskyo" && Enemy, PalNo <= 6) || Enemy, Name = "cvskyo_normal" || Enemy, Name = "Kyo_WLS"
trigger2 = Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) != 1
value = 98

[State 180, Victory Quote vs. Ash Crimson (Claw Iori)]
type = VictoryQuote
triggerAll = var(40) = 3
trigger1 = (Enemy, Name = "Ash" && Enemy, AuthorName = "Jin") || Enemy, Name = "Ash Crimson" || Enemy, Name = "cvsash"
value = 99

[State 180, Win vs Kyo Kusanagi]
type = ChangeState
triggerAll = var(40) != 1
trigger1 = (Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName != "Jmorphman") || (Enemy, Name = "cvskyo" && Enemy, PalNo <= 6) || Enemy, Name = "cvskyo_normal" || Enemy, Name = "Kyo_WLS"
trigger2 = Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) != 1
value = 184

[State 180, Win 1]
type = ChangeState
trigger1 = var(40) != 1
trigger1 = command = "holdstart"
value = 181

[State 180, Win 2]
type = ChangeState
trigger1 = var(40) != 1
trigger1 = command = "holdx" || command = "holdy" || command = "holdz"
value = 182

[State 180, Win 3]
type = ChangeState
trigger1 = var(40) != 1
trigger1 = command = "holda" || command = "holdb" || command = "holdc"
value = 183

[State 180, Win Decider]
type = ChangeState
trigger1 = var(40) != 1
value = 181 + (Random % 3)

[State 180, Orochi Iori Win Decider]
type = ChangeState
trigger1 = var(40) = 1
value = 185



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
trigger1 = !Time
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
trigger1 = Time < 350
flag = RoundNotOver

[State 182, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 182, 0
channel = 0

[State 182, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 11
value = 182, 1
channel = 0

[State 182, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 26
value = 182, 2
channel = 0



;====================<WIN 3>====================
[StateDef 183]
type = S
physics = S
anim = 183
ctrl = 0

[State 183, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 183, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 183, 0
channel = 0



;====================<WIN VS KYO KUSANAGI>====================
[StateDef 184]
type = S
physics = S
anim = 184
ctrl = 0

[State 184, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 184, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 184, 0
channel = 0



;====================<WIN (OROCHI)>====================
[StateDef 185]
type = S
physics = S
anim = 185
ctrl = 0

[State 185, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 250
flag = RoundNotOver

[State 185, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 185, 10 + (Random % 2)
channel = 0



;==========<TAUNT>==========
[StateDef 195]
type = S
moveType = I
physics = S
anim = 195 + 10000 * (var(40) = 1)
velSet = 0,0
sprPriority = 1
ctrl = 0

[State 195, Taunt (vs Kyo Kusanagi)]
type = ChangeAnim
triggerAll = !Time && var(40) != 1
trigger1 = (Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName != "Jmorphman") || (Enemy, Name = "cvskyo" && Enemy, PalNo <= 6) || Enemy, Name = "cvskyo_normal" || Enemy, Name = "Kyo_WLS"
trigger2 = Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) != 1
value = 196

[State 180, Taunt (vs Ash Crimson)]
type = ChangeAnim
triggerAll = !Time && var(40) != 1
trigger1 = (Enemy, Name = "Ash" && Enemy, AuthorName = "Jin") || Enemy, Name = "Ash Crimson" || Enemy, Name = "cvsash"
value = 197

[State 195, Voice]
type = PlaySnd
trigger1 = AnimElem = 6 && Anim = 195
value = 195, (Random % 2)
channel = 0

[State 195, Voice (vs Kyo Kusanagi)]
type = PlaySnd
trigger1 = !Time && Anim = 196
value = 196, 0
channel = 0

[State 195, Woosh (vs Kyo Kusanagi)]
type = PlaySnd
trigger1 = AnimElem = 11 && Anim = 196
value = 1, 0
channel = 1

[State 195, Voice 1 (vs Ash Crimson)]
type = PlaySnd
trigger1 = AnimElem = 4 && Anim = 197
value = 197, 0
channel = 0

[State 195, Voice 2 (vs Ash Crimson)]
type = PlaySnd
trigger1 = AnimElem = 5 && Anim = 197
value = 197, 1
channel = 0

[State 195, Voice (Orochi)]
type = PlaySnd
trigger1 = !Time && Anim = 10195
value = 195, 10
channel = 0

[State 195, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;====================<CHEAP K.O.>====================
[StateDef 5950]
type = S
moveType = H
physics = S
anim = 5950 + 10000 * (var(40) = 1)
velSet = 0,0

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
value = 5950, 0 + 10 * (var(40) = 1)

[State 5950, Hitting the Floor Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = F7, 0

[State 5950, Hitting the Floor Explod]
type = Explod
trigger1 = AnimElem = 8
anim = F60
posType = P1
pos = 0, 0
sprPriority = -3

[State 5950, End]
type = ChangeState
trigger1= !AnimTime
value = ifElse(Alive, 5110, 5150)



;====================<STAND HIT SHAKING>====================
[Statedef 5000]
type = S
movetype = H
physics = N
velset = 0,0

[State 5000, ChangeAnim: Light-Hard]
type = ChangeAnim
trigger1 = !Time && GetHitVar(AnimType) != [3, 5]
value = ifElse((GetHitVar(GroundType) = 1), 5000, 5010) + GetHitVar(AnimType) + 10000 * (var(40) = 1)

[State 5000, ChangeAnim: Back]
type = ChangeAnim
trigger1 = !Time && GetHitVar(AnimType) = [3, 5]
value = 5030 + 10000 * (var(40) = 1)

[State 5000, ChangeAnim: Up/DiagUp]
type = ChangeAnim
trigger1 = !Time && (GetHitVar(AnimType) = [4, 5]) && (SelfAnimExist((5047 + 10000 * (var(40) = 1)) + GetHitVar(AnimType)))
value = 5047 + GetHitVar(AnimType) + 10000 * (var(40) = 1)

[State 5000, ChangeAnim: Freeze]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 5000, StateTypeSet]
type = StateTypeSet
trigger1 = !Time && (GetHitVar(yVel) != 0 || GetHitVar(fall))
trigger2 = Pos Y != 0
stateType = A

[State 5000, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yVel) = 0 && !GetHitVar(fall)
value = 5001

[State 5000, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 5030


;====================<STAND HIT KNOCKED BACK>====================
[Statedef 5001]
type = S
movetype = H
physics = S

[State 5001, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 5001, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
value = 5005 + GetHitVar(AnimType) + (GetHitVar(GroundType) = 2) * 10 + 10000 * (var(40) = 1)

[State 5001, VelMul]
type = VelMul
trigger1 = Time >= GetHitVar(slideTime)
x = .6

[State 5001, VelSet]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, DefenceMulSet]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5001, ChangeState]
type = ChangeState
trigger1 = HitOver
value = 0
ctrl = 1


;====================<CROUCH HIT SHAKING>====================
[Statedef 5010]
type = C
movetype = H
physics = N
velset = 0,0

[State 5010, ChangeAnim: Light-Hard]
type = ChangeAnim
trigger1 = !Time && GetHitVar(AnimType) != [3, 5]
value = 5020 + GetHitVar(AnimType) + 10000 * (var(40) = 1)

[State 5010, ChangeAnime: Back]
type = ChangeAnim
trigger1 = !Time && GetHitVar(AnimType) = [3, 5]
value = 5030 + 10000 * (var(40) = 1)

[State 5010, ChangeAnim: Up/DiagUp]
type = ChangeAnim
trigger1 = !Time && (GetHitVar(AnimType) = [4, 5]) && (SelfAnimExist((5047 + 10000 * (var(40) = 1)) + GetHitVar(AnimType)))
value = 5047 + GetHitVar(AnimType) + 10000 * (var(40) = 1)

[State 5010, ChangeAnim: Freeze]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 5010, StateTypeSet]
type = StateTypeSet
triggerAll = !Time
trigger1 = GetHitVar(yVel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
stateType = A

[State 5010, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yVel) = 0 && !GetHitVar(fall)
value = 5011

[State 5010, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 5030


;====================<CROUCH HIT KNOCKED BACK>====================
[Statedef 5011]
type = C
movetype = H
physics = C

[State 5011, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 5011, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
value = 5025 + GetHitVar(AnimType) + 10000 * (var(40) = 1)

[State 5011, VelMul]
type = VelMul
trigger1 = Time >= GetHitVar(slideTime)
x = .6

[State 5011, VelSet]
type = VelSet
trigger1 = HitOver
x = 0

[State 5011, DefenceMulSet]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5011, ChangeState]
type = ChangeState
trigger1 = HitOver
value = 11
ctrl = 1


;====================<JUMP HIT SHAKING>====================
[Statedef 5020]
type = A
movetype = H
physics = N
velset = 0,0

[State 5020, ChangeAnim: Light-Hard]
type = ChangeAnim
trigger1 = !Time && GetHitVar(AnimType) != [3, 5]
value = ifElse((GetHitVar(AirType) = 1), 5000, 5010) + GetHitVar(AnimType) + 10000 * (var(40) = 1)

[State 5020, ChangeAnim: Back]
type = ChangeAnim
trigger1 = !Time && GetHitVar(AnimType) = [3, 5]
value = 5030 + 10000 * (var(40) = 1)

[State 5020, ChangeAnim: Up/DiagUp]
type = ChangeAnim
trigger1 = !Time && (GetHitVar(AnimType) = [4, 5]) && (SelfAnimExist((5047 + 10000 * (var(40) = 1)) + GetHitVar(AnimType)))
value = 5047 + GetHitVar(AnimType) + 10000 * (var(40) = 1)

[State 5020, ChangeAnim: Freeze]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 5020, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 5030


;====================<AIR HIT KNOCKED AWAY>====================
[Statedef 5030]
type = A
movetype = H
physics = N
ctrl = 0

[State 5030, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [(5000 + 10000 * (var(40) = 1)), (5199 + 10000 * (var(40) = 1))]
trigger1 = SelfAnimExist((5030 + 10000 * (var(40) = 1)))
value = 5030 + 10000 * (var(40) = 1)

[State 5030, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 5030, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 5030, ChangeState]
type = ChangeState
triggerAll = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0
trigger2 = Pos Y >= Const(movement.air.getHit.groundlevel)
value = 5040

[State 5030, ChangeState]
type = ChangeState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0
trigger2 = Pos Y >= Const(movement.air.getHit.groundlevel)
value = 5050

[State 5030, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 5035


;====================<AIR HIT TRANSITION>====================
[Statedef 5035]
type = A
movetype = H
physics = N

[State 5035, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5035 + 10000 * (var(40) = 1))
trigger1 = Anim = [(5000 + 10000 * (var(40) = 1)), (5029 + 10000 * (var(40) = 1))]
value = 5035 + 10000 * (var(40) = 1)

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
trigger4 = Anim != (5035 + 10000 * (var(40) = 1))
value = 5040

[State 5035, Fall]
type = ChangeState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = !AnimTime
trigger3 = vel y > 0 && pos y >= 10
trigger4 = !Time
trigger4 = Anim != (5035 + 10000 * (var(40) = 1))
value = 5050


;====================<AIR HIT RECOVERY>====================
[Statedef 5040]
type = A
movetype = H
physics = N

[State 5040, ChangeState]
type = ChangeState
trigger1 = !Alive
value = 5050
ctrl = 0

[State 5040, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime && Anim != (5040 + 10000 * (var(40) = 1))
trigger2 = !Time && Anim != (5035 + 10000 * (var(40) = 1))
value = 5040 + 10000 * (var(40) = 1)

[State 5040, CtrlSet]
type = CtrlSet
trigger1 = HitOver
value = 1

[State 5040, StateTypeSet]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5040, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 5040, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52


;====================<AIR HIT FALL>====================
[Statedef 5050]
type = A
movetype = H
physics = N

[State 5050, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime && Anim = (5035 + 10000 * (var(40) = 1))
trigger2 = !Time && Anim != (5035 + 10000 * (var(40) = 1))
trigger2 = (Anim != [(5051 + 10000 * (var(40) = 1)), (5059 + 10000 * (var(40) = 1))])
trigger2 = (Anim != [(5061 + 10000 * (var(40) = 1)), (5069 + 10000 * (var(40) = 1))])
trigger2 = Anim != (5090 + 10000 * (var(40) = 1))
value = 5050

[State 5050, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = [(5050 + 10000 * (var(40) = 1)), (5059 + 10000 * (var(40) = 1))]
trigger1 = Vel Y >= ifElse(Anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(Anim + 10)
value = Anim + 10
persistent = 0

[State 5050, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 5050, ChangeState]
type = ChangeState
triggerAll = Vel Y > 0
triggerAll = Pos Y >= Const(movement.air.getHit.groundrecover.ground.threshold)
triggerAll = Alive
triggerAll = CanRecover
trigger1 = Command = "recovery"
value = 5200

[State 5050, ChangeState]
type = ChangeState
triggerAll = Vel Y > Const(movement.air.getHit.airrecover.threshold)
triggerAll = Alive
triggerAll = CanRecover
trigger1 = Command = "recovery"
value = 5210

[State 5050, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifElse((Anim = [(5051 + 10000 * (var(40) = 1)), (5059 + 10000 * (var(40) = 1))]) || (Anim = [(5061 + 10000 * (var(40) = 1)), (5069 + 10000 * (var(40) = 1))]), 0, Const(movement.air.getHit.groundlevel))
value = 5100


;====================<TRIP HIT SHAKING>====================
[Statedef 5070]
type = A
movetype = H
physics = N
velset = 0,0

[State 5070, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5070 + 10000 * (var(40) = 1)

[State 5070, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 5071


;====================<TRIP HIT KNOCKED AWAY>====================
[Statedef 5071]
type = A
movetype = H
physics = N

[State 5071, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 5071, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 5071, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.air.getHit.trip.groundlevel)
value = 5110


;====================<DOWN HIT SHAKING>====================
[Statedef 5080]
type = L
movetype = H
physics = N
velset = 0,0

[State 5080, VarSet]
type = VarSet
trigger1 = !Time
sysvar(2) = ifElse (GetHitVar(yVel) = 0, (5080 + 10000 * (var(40) = 1)), (5090 + 10000 * (var(40) = 1)))

[State 5080, VarAdd]
type = VarAdd
trigger1 = !Time
trigger1 = (Anim = [(5081 + 10000 * (var(40) = 1)), (5089 + 10000 * (var(40) = 1))]) || (Anim = [(5111 + 10000 * (var(40) = 1)), (5119 + 10000 * (var(40) = 1))])
trigger1 = SelfAnimExist(sysvar(2) + (Anim % 10) + 10000 * (var(40) = 1))
sysvar(2) = Anim % 10

[State 5080, VarSet]
type = VarSet
trigger1 = !Time && sysvar(2) = (5090 + 10000 * (var(40) = 1))
trigger1 = !SelfAnimExist((5090 + 10000 * (var(40) = 1)))
sysvar(2) = 5030 + 10000 * (var(40) = 1)

[State 5080, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 5080, ChangeState]
type = ChangeState
trigger1 = HitShakeOver && GetHitVar(yVel) = 0
value = 5081

[State 5080, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yVel) != 0
value = 5030


;====================<DOWN HIT KNOCKED BACK>====================
[Statedef 5081]
type = L
movetype = H
physics = C

[State 5081, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 5081, VelSet]
type = VelSet
trigger1 = HitOver
x = 0

[State 5081, VarSet]
type = VarSet
trigger1 = !Time
sysvar(0) = 1

[State 5081, ChangeState]
type = ChangeState
trigger1 = HitOver
value = 5110


;====================<DOWN HIT FROM FALL>====================
[Statedef 5100]
type = L
movetype = H
physics = N

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = !Time

[State 5100, VarSet]
type = VarSet
trigger1 = !Time
sysvar(1) = floor(vel y)

[State 5100, ChangeAnim (Normal)]
type = ChangeAnim
triggerAll = !Time
trigger1 = (Anim != [(5051 + 10000 * (var(40) = 1)), (5059 + 10000 * (var(40) = 1))]) && (Anim != [(5061 + 10000 * (var(40) = 1)), (5069 + 10000 * (var(40) = 1))])
trigger2 = !SelfAnimExist(5100 + (Anim % 10) + 10000 * (var(40) = 1))
value = 5100 + 10000 * (var(40) = 1)

[State 5100, ChangeAnim (Up)]
type = ChangeAnim
trigger1 = !Time
trigger1 = (Anim = [(5051 + 10000 * (var(40) = 1)), (5059 + 10000 * (var(40) = 1))]) || (Anim = [(5061 + 10000 * (var(40) = 1)), (5069 + 10000 * (var(40) = 1))])
trigger1 = SelfAnimExist(5100 + (Anim % 10) + 10000 * (var(40) = 1))
value = 5100 + (Anim % 10) + 10000 * (var(40) = 1)

[State 5100, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 5100, VelSet]
type = VelSet
trigger1 = !Time
y = 0

[State 5100, VelMul]
type = VelMul
trigger1 = !Time
x = 0.75

[State 5100, ChangeState]
type = ChangeState
trigger1 = !Time && GetHitVar(fall.yVel) = 0
value = 5110

[State 5100, Explod]
type = Explod
trigger1 = Time = 1
Anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprpriority = ifElse (sysvar(1) <= Const720p(56), -10, 10)

[State 5100, HitFallDamage]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5100, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 5100, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 5101


;====================<DOWN HIT BOUNCE OFF GROUND>====================
[Statedef 5101]
type = L
movetype = H
physics = N

[State 5101, ChangeAnim: Normal] ;Coming hit ground Anim (normal)
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim != [(5101 + 10000 * (var(40) = 1)), (5109 + 10000 * (var(40) = 1))]
trigger2 = !SelfAnimExist(5160 + (Anim % 10) + 10000 * (var(40) = 1))
value = 5160 + 10000 * (var(40) = 1)

[State 5101, ChangeAnim: Up]
type = ChangeAnim
trigger1 = !Time && Anim = [(5101 + 10000 * (var(40) = 1)), (5109 + 10000 * (var(40) = 1))]
trigger1 = SelfAnimExist(5160 + (Anim % 10) + 10000 * (var(40) = 1))
value = 5160 + (Anim % 10) + 10000 * (var(40) = 1)

[State 5101, HitFallVel]
type = HitFallVel
trigger1 = !Time

[State 5101, PosSet]
type = PosSet
trigger1 = !Time
y = Const(movement.down.bounce.offset.y)

[State 5101, PosAdd]
type = PosAdd
trigger1 = !Time
x = Const(movement.down.bounce.offset.x)

[State 5101, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = Const(movement.down.bounce.yAccel)

[State 5101, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.down.bounce.groundlevel)
value = 5110


;====================<DOWN HIT LIE DOWN>====================
[Statedef 5110]
type = L
movetype = H
physics = N

[State 5110, FallEnvShake]
type = FallEnvShake
trigger1 = !Time

[State 5110, ChangeAnim: Up/DiagUp]
type = ChangeAnim
trigger1 = SelfAnimExist(5110 + (Anim % 10) + 10000 * (var(40) = 1))
trigger1 = Anim = [(5081 + 10000 * (var(40) = 1)), (5089 + 10000 * (var(40) = 1))]
value = 5110 + (Anim % 10) + 10000 * (var(40) = 1)
persistent = 0

[State 5110, ChangeAnim: Normal]
type = ChangeAnim
triggerAll = !Time && Anim != [(5110 + 10000 * (var(40) = 1)), (5119 + 10000 * (var(40) = 1))]
trigger1 = Anim != [(5161 + 10000 * (var(40) = 1)), (5169 + 10000 * (var(40) = 1))]
trigger2 = !SelfAnimExist(5170 + (Anim % 10) + 10000 * (var(40) = 1))
value = 5170 + 10000 * (var(40) = 1)

[State 5110, ChangeAnim: Up]
type = ChangeAnim
triggerAll = !Time && Anim != [(5110 + 10000 * (var(40) = 1)), (5119 + 10000 * (var(40) = 1))]
trigger1 = Anim = [(5161 + 10000 * (var(40) = 1)), (5169 + 10000 * (var(40) = 1))]
trigger1 = SelfAnimExist(5170 + (Anim % 10) + 10000 * (var(40) = 1))
value = 5170 + (Anim % 10) + 10000 * (var(40) = 1)

[State 5110, HitFallDamage]
type = HitFallDamage
trigger1 = !Time

[State 5110, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 5110, VarSet]
type = VarSet
trigger1 = !Time
trigger1 = GetHitVar(fall.yVel) != 0
sysvar(1) = floor(vel y)

[State 5110, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = !sysvar(0)
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5110, Explod]
type = Explod
trigger1 = !Time
trigger1 = !sysvar(0)
Anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprpriority = ifElse (sysvar(1) <= Const720p(56), -10, 10)

[State 5110, VelSet]
type = VelSet
trigger1 = !Time
y = 0

[State 5110, ChangeAnim: Up]
type = ChangeAnim
triggerAll = Anim = [(5171 + 10000 * (var(40) = 1)), (5179 + 10000 * (var(40) = 1))]
triggerAll = SelfAnimExist(5110 + (Anim % 10) + 10000 * (var(40) = 1))
trigger1 = !AnimTime
trigger2 = sysvar(0)
value = 5110 + (Anim % 10) + 10000 * (var(40) = 1)
persistent = 0

[State 5110, ChangeAnim: Normal]
type = ChangeAnim
persistent = 0
triggerAll = Anim != [(5111 + 10000 * (var(40) = 1)), (5119 + 10000 * (var(40) = 1))]
trigger1 = !AnimTime
trigger2 = sysvar(0)
value = 5110 + 10000 * (var(40) = 1)

[State 5110, ChangeState]
type = ChangeState
triggerAll = !Alive
trigger1 = !AnimTime
trigger2 = sysvar(0)
trigger3 = Anim = [(5110 + 10000 * (var(40) = 1)), (5119 + 10000 * (var(40) = 1))]
value = 5150

[State 5110, VarSet]
type = VarSet
trigger1 = sysvar(0)
trigger1 = !Time
sysvar(0) = 0

[State 5110, VelMul]
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, VelSet]
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0


;====================<DOWN HIT RECOVERY>====================
[Statedef 5120]
type = L
movetype = I
physics = N

[State 5120, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim != [(5111 + 10000 * (var(40) = 1)), (5119 + 10000 * (var(40) = 1))]
trigger2 = !SelfAnimExist(5120 + (Anim % 10) + 10000 * (var(40) = 1))
value = 5120 + 10000 * (var(40) = 1)

[State 5120, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim = [(5111 + 10000 * (var(40) = 1)), (5119 + 10000 * (var(40) = 1))]
trigger1 = SelfAnimExist(5120 + (Anim % 10) + 10000 * (var(40) = 1))
value = 5120 + (Anim % 10) + 10000 * (var(40) = 1)

[State 5120, VelSet]
type = VelSet
trigger1 = !Time
x = 0

[State 5120, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
Time = 1

[State 5120, HitFallSet]
type = HitFallSet
trigger1 = !AnimTime
value = 1

[State 5120, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;====================<DOWN HIT K.O.>====================
[Statedef 5150]
type = L
movetype = H
physics = N
sprpriority = -3
ctrl = 0

[State 5150, ChangeAnim: Normal] ;Normal Anim
type = ChangeAnim
triggerAll = !Time
triggerAll = SelfAnimExist(5140 + 10000 * (var(40) = 1))
trigger1 = (Anim != [(5111 + 10000 * (var(40) = 1)), (5119 + 10000 * (var(40) = 1))]) && (Anim != [(5171 + 10000 * (var(40) = 1)), (5179 + 10000 * (var(40) = 1))])
trigger2 = !SelfAnimExist(5140 + (Anim % 10) + 10000 * (var(40) = 1))
value = 5140 + 10000 * (var(40) = 1)

[State 5150, ChangeAnim: Up]
type = ChangeAnim
trigger1 = !Time
trigger1 = (Anim = [(5111 + 10000 * (var(40) = 1)), (5119 + 10000 * (var(40) = 1))]) || (Anim = [(5171 + 10000 * (var(40) = 1)), (5179 + 10000 * (var(40) = 1))])
trigger1 = SelfAnimExist(5140 + (Anim % 10) + 10000 * (var(40) = 1))
value = 5140 + (Anim % 10) + 10000 * (var(40) = 1)

[State 5150, ChangeAnim]
type = ChangeAnim
trigger1 = MatchOver = 1
trigger1 = Anim = [(5140 + 10000 * (var(40) = 1)), (5149 + 10000 * (var(40) = 1))]
trigger1 = SelfAnimExist(Anim + 10)
value = Anim + 10
persistent = 0

[State 5150, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = Anim != [(5140 + 10000 * (var(40) = 1)), (5159 + 10000 * (var(40) = 1))]
trigger1 = Anim != [(5110 + 10000 * (var(40) = 1)), (5119 + 10000 * (var(40) = 1))]
value = 5110 + 10000 * (var(40) = 1)

[State 5150, VelMul]
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, VelSet]
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 5150, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
Time = 1



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
trigger1 = GetHitVar(chainID) != 1530
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
value = ifElse(GetHitVar(chainID) = 1530, 5430, 5422)


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
trigger1 = GetHitVar(chainID) != 1330 && GetHitVar(chainID) != 4150
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5200

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
trigger1 = Anim = [5420, 5422]
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



;===========================================================================
;===============================<-2 STATES>=================================
;===========================================================================
[StateDef -2]

[State -2, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = [5, 6]) && var(40) = 1
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

[State -2, AR flame hit]
type = VarAdd
triggerAll = !IsHelper
triggerAll = var(53) = 0 && var(52) < 1000
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveHit = 1
var(52) = 70
ignoreHitPause = 1

[State -2, AR flame guarded]
type = VarAdd
triggerAll = !IsHelper
triggerAll = var(53) = 0 && var(52) < 1000
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveGuarded = 1
var(52) = 25
ignoreHitPause = 1

[State -2, Hit Sparks]
type = Helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime
triggerAll = StateNo != 638
trigger1 = MoveHit = 1 && NumEnemy
trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8015 || var(33) = 8016 || var(33) = 8017 || var(33) = 8018 || var(33) = 8019 || var(33) = 8020 || var(33) = 8001
trigger2 = MoveGuarded = 1 && NumEnemy
trigger2 = var(34) = 8000 || var(34) = 8001
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
triggerAll = StateNo = 638
trigger1 = MoveHit = 1 && NumEnemy
trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8015 || var(33) = 8016 || var(33) = 8017 || var(33) = 8018 || var(33) = 8019 || var(33) = 8020 || var(33) = 8001
trigger2 = MoveGuarded = 1 && NumEnemy
trigger2 = var(34) = 8000 || var(34) = 8001
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
trigger1 = !(HitDefAttr = SCA, AT) && (EnemyNear, MoveReversed != 1) && (StateNo != [3600, 3699])
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
trigger2 = (Enemy, MoveType != H) || (Enemy, StateNo = [120,155]) || (Enemy, Ctrl)
var(15) = 0
ignoreHitPause = 1

[State -2, Juggle Reset Simul]
type = VarSet
triggerAll = NumEnemy >= 2 && var(15)
trigger1 = (EnemyNear(0), StateType != A) && (EnemyNear(0), Time >= 1)
trigger2 = (EnemyNear(0), MoveType != H) || (EnemyNear(0), StateNo = [120,155]) || (EnemyNear(0), Ctrl)
trigger3 = (EnemyNear(1), StateType != A) && (EnemyNear(1), Time >= 1)
trigger4 = (EnemyNear(1), MoveType != H) || (EnemyNear(1), StateNo = [120,155]) || (EnemyNear(1), Ctrl)
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
trigger4 = (StateNo = [3000, 4999])
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
trigger1 = var(20) = [1,60]
time = 2
add = 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64)
ignoreHitPause = 1

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

[State -2, Special/Super Throws Allowed]
type = VarSet
trigger1 = var(37) != 2
trigger2 = var(37) = 2 && MoveType != A
var(37) = 0

[State -2, Special/Super Throws Disallowed]
type = VarSet
triggerall = NumEnemy
trigger1 = EnemyNear, StateNo = [150,155]
trigger2 = (EnemyNear, StateNo = 51 || (EnemyNear, StateNo = 140 && EnemyNear, Time <= 0)) && (EnemyNear, PrevStateNo = [150, 155])
trigger3 = (EnemyNear, StateNo = [5020, 5040]) && !(EnemyNear, HitFall)
trigger4 = ((EnemyNear, StateNo = 0) || (EnemyNear, StateNo = 52)) && (EnemyNear, PrevStateNo = [5000, 5040]) && ((EnemyNear, Time <= 0) || !(EnemyNear, Ctrl))
trigger5 = (EnemyNear, StateNo = 0) && (EnemyNear, PrevStateNo = 52) && ((EnemyNear, Time <= 0) || !(EnemyNear, Ctrl))
trigger6 = EnemyNear, StateNo = 40 && (EnemyNear, Anim != [0, 29])
trigger7 = EnemyNear, StateNo = 5110
trigger8 = MoveReversed
var(37) = ifElse(MoveReversed, 2, 1)
ignoreHitPause = 1

[State -2, Dampener]
type = VarSet
trigger1 = 1
fvar(10) = ifElse(var(13) < 4, 24, ifelse(var(13) >= 24, 1, 27 - var(13))) / 24.0
ignoreHitPause = 1

[State -2, Dampener - Custom Combo]
type = VarSet
trigger1 = var(20)
fvar(10) = 0.72 * (10 - ifElse(var(13) >= 10, 10, var(13))) / 10.0
ignoreHitPause = 1

[State -2, Dampener - Custom Combo Limiter]
type = Null;VarSet
trigger1 = var(20)
trigger1 = StateNo = 218
fvar(10) = ifElse(var(13), 0, 0.72)
ignoreHitPause = 1

[State -2, Dampener - Supers]
type = VarSet
trigger1 = (StateNo = [3000, 4999])
fvar(10) = ifElse(var(22), 0.6, ifElse(var(21), 0.8, 1.0))
ignoreHitPause = 1

[State -2, Dampener - Supers (Aoibana / Tsuma Kushi / Nueuchi / Shogetsu / Ya Shiori)]
type = VarSet
trigger1 = (StateNo = [3000, 4999])
trigger1 = var(11) || var(12) || var(27) || var(28) || var(29)
fvar(10) = ifElse(var(22), 0.5, ifElse(var(21), 0.6, 0.8))
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

;---------------------------------------------------------------------------
; Abstract Reordered: Iori's own combo dampener is off (the shared AR combo scaling does it).
; fvar(10) is what every hitdef and helper reads (damage = fvar(11) * base, helpers read Root fvar(10));
; during Riot of the Blood it is 1.3 = +30% damage on everything, projectiles included.
[State -2, AR dampener off / flame damage]
type = VarSet
triggerAll = !IsHelper
trigger1 = 1
fvar(10) = ifelse(var(53) > 0, 1.3, 1)
ignoreHitPause = 1

[State -2, AR dampener off 2]
type = VarSet
triggerAll = !IsHelper
trigger1 = 1
fvar(11) = fvar(10) * ifElse(var(9), 1.2, 1)
ignoreHitPause = 1

;---------------------------------------------------------------------------
; Abstract Reordered: FLAME GAUGE var(52) 0-1000 and Riot of the Blood var(53) (ticks left, 600 = 10 s)
[State -2, AR flame gauge reset]
type = VarSet
triggerAll = !IsHelper
trigger1 = RoundState < 2
var(52) = 0
ignoreHitPause = 1

[State -2, AR flame timer reset]
type = VarSet
triggerAll = !IsHelper
trigger1 = RoundState < 2
var(53) = 0
ignoreHitPause = 1

[State -2, AR flame clamp]
type = VarSet
triggerAll = !IsHelper
trigger1 = var(52) > 1000
var(52) = 1000
ignoreHitPause = 1

[State -2, AR flame timer]
type = VarAdd
triggerAll = !IsHelper
trigger1 = var(53) > 0 && RoundState = 2 && !(StateNo = 7900)
var(53) = -1

[State -2, AR flame glow]
type = PalFX
triggerAll = !IsHelper
trigger1 = var(53) > 0
time = 1
add = 40, 0, 50
sinadd = 60, 0, 90, 16

;CvS2 Orochi Iori essentially takes 0.32075471698 extra damage every hit
[State -2, Defense Levels]
type = LifeAdd
triggerAll = !AILevel
trigger1 = var(40) = 1
trigger1 = GetHitVar(HitCount) = 1 && GetHitVar(Damage)
trigger1 = StateNo != [760, 762]
value = -ceil(0.32075471698 * GetHitVar(Damage))
kill = 0
ignoreHitPause = 1

;CvS2 Orochi Iori essentially takes 1.32075471698 times more damage than standard
[State -2, Defense Levels]
type = DefenceMulSet
triggerAll = !AILevel
trigger1 = var(40) = 1
value = 1.32075471698 * (const(data.fall.defence_mul) ** GetHitVar(FallCount))
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
value = 11, 1 + 10 * (var(40) = 1)
ignoreHitPause = 1

[State -2, Collapse Sound]
type = PlaySnd
trigger1 = StateNo != 5950
trigger1 = Anim = 5950 || Anim = 5955 || Anim = 15950 || Anim = 15955
trigger1 = AnimElem = 8
value = F7, 0

[State -2, Collapse FX]
type = Explod
trigger1 = StateNo != 5950
trigger1 = Anim = 5950 || Anim = 5955 || Anim = 15950 || Anim = 15955
trigger1 = AnimElem = 8
anim = F60
posType = P1
sprpriority = -3

[State -2, Guard Crush/Throw Escape voice]
type = PlaySnd
trigger1 = Anim = 5910 || Anim = 5920 || Anim = 5930 || Anim = 15910 || Anim = 15920 || Anim = 15930
trigger1 = AnimElemTime(1) = 1
trigger2 = Anim = 5940 || Anim = 5945 || Anim = 15940 || Anim = 15945
trigger2 = AnimElem = 2 && StateNo != 890
value = 5940, 0 + 10 * (var(40) = 1)
channel = 0
ignoreHitPause = 1

[State -2, Air Gravity Timer Increment]
type = VarAdd
triggerAll = StateType = A
trigger1 = (StateNo = [50, 51]) || (StateNo = [600, 699])
var(2) = 1

[State -2, Air Gravity Timer Reset]
type = VarSet
trigger1 = var(2)
trigger1 = StateType != A
var(2) = 0

[State -2, 127 Shiki: Aoibana Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(11) = 0
ignoreHitPause = 1

[State -2, 104 Shiki: Nueuchi Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(12) = 0
ignoreHitPause = 1

[State -2, 401 Shiki: Shogetsu Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(27) = 0
ignoreHitPause = 1

[State -2, EX 311 Shiki: Tsuma Kushi Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(28) = 0
ignoreHitPause = 1

[State -2, Ura 1018 Shiki: Ya Shiori Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(29) = 0
ignoreHitPause = 1

[State -2, Stop Ya Sakazuki / Ya Shiori Fire Sound]
type = StopSnd
triggerAll = !Time && StateNo != 3110 && StateNo != 3160 && StateNo != 3910 && StateNo != 3960
trigger1 = PrevStateNo = 3100 || PrevStateNo = 3101 || PrevStateNo = 3150 || PrevStateNo = 3151
trigger2 = PrevStateNo = 3900 || PrevStateNo = 3901 || PrevStateNo = 3950 || PrevStateNo = 3951
channel = 1
ignoreHitPause = 1

[State -2, Remove Yami Barai Flame Effects]
type = RemoveExplod
triggerAll = NumExplod(1005)
trigger1 = StateNo != 6801 && (StateNo != [1000, 1999])
trigger1 = (StateNo != [3100, 3199]) && (StateNo != [3500, 3599])
ID = 1005

[State -2, Remove Nueuchi Slash Effects]
type = RemoveExplod
trigger1 = StateNo != 1600 && StateNo != 1630 && StateNo != 2907 && NumExplod(1603)
ID = 1603

[State -2, Remove Shogetsu Slash Effects]
type = RemoveExplod
trigger1 = StateNo != 1700 && StateNo != 1730 && NumExplod(1703)
ID = 1703

[State -2, Remove Akegarasu Slash Effects]
type = RemoveExplod
trigger1 = StateNo != 1810 && StateNo != 1840 && NumExplod(1813)
ID = 1813

[State -2, Remove Ya Sakazuki Flame Effects]
type = RemoveExplod
trigger1 = (StateNo != [3100, 3101]) && (StateNo != [3150, 3151]) && NumExplod(3105)
ID = 3105

[State -2, Remove Ya Otome Slash Effects]
type = RemoveExplod
trigger1 = StateNo != 3040 && StateNo != 3090 && NumExplod(3040)
ID = 3040

[State -2, Remove Yami Sogi Flame Effects]
type = RemoveExplod
trigger1 = (StateNo != [3500, 3599]) && NumExplod(3505)
ID = 3505

[State -2, Remove Homura Hotogi Flame Effects]
type = RemoveExplod
trigger1 = (StateNo != [3800, 3899]) && NumExplod(3803)
ID = 3803

[State -2, Remove Ya Shiori Flame Effects]
type = RemoveExplod
trigger1 = (StateNo != [3900, 3910]) && (StateNo != [3950, 3960]) && NumExplod(3905)
ID = 3905

[State -2, Remove Breath Effects]
type = RemoveExplod
trigger1 = Anim != 2 && Anim != 16 && NumExplod(20000)
ID = 20000

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

[State -2, AssertSpecial: Invisible (Kaoloon's Prediction)]
type = AssertSpecial
trigger1 = Anim = 5980 && var(40) = 1
flag = Invisible

[State -2, Kaoloon's Prediction (Orochi Iori)]
type = Explod
trigger1 = !NumExplod(15980)
trigger1 = Anim = 5980 && var(40) = 1
anim = 15980
ID = 15980
posType = P1
RemoveOnGetHit = 1

[State -2, Remove Kaoloon's Prediction (Orochi Iori)]
type = RemoveExplod
trigger1 = Anim != 5980 && NumExplod(15980)
ID = 15980

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



;===========================================================================
;===============================<-3 STATES>=================================
;===========================================================================
[StateDef -3]

[State -3, Breath Explod 1]
type = Explod
triggerAll = Anim = 2 || Anim = 16
trigger1 = AnimElemTime(5) = 1
trigger2 = AnimElemTime(12) = 1 && Anim != 16
trigger3 = AnimElemTime(19) = 1 && Anim != 16
trigger4 = AnimElemTime(26) = 1 && Anim != 16
trigger5 = AnimElemTime(33) = 1 && Anim != 16
ID = 20000
anim = 20000
bindtime = -1
sprpriority = 1
postype = P1
pos = ifElse(Anim = 16, 14, 32), -ifElse(Anim = 16, 40, 64)
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State -3, Breath Explod 2]
type = Explod
triggerAll = Anim = 2 || Anim = 16
trigger1 = AnimElemTime(5) = 1
trigger2 = AnimElemTime(12) = 1 && Anim != 16
trigger3 = AnimElemTime(19) = 1 && Anim != 16
trigger4 = AnimElemTime(26) = 1 && Anim != 16
trigger5 = AnimElemTime(33) = 1 && Anim != 16
ID = 20000
anim = 20001
bindtime = -1
sprpriority = -1
postype = P1
pos = ifElse(Anim = 16, 22, 38), -ifElse(Anim = 16, 41, 65)
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State -3, GameTime]
type = VarSet
trigger1 = 1
var(58) = GameTime
ignoreHitPause = 1

[State -3, ProjContact Reset]
type = VarSet
triggerAll = var(18)
trigger1 = StateNo != 1000 && StateNo != 1030 && StateNo != 3110 && StateNo != 3160
trigger2 = (StateNo = 1000 || StateNo = 1030) && AnimElemTime(4) < 0
trigger3 = (StateNo = 3110 || StateNo = 3160) && AnimElemTime(4) < 0
var(18) = 0

[State -3, Special ProjContact Reset]
type = VarSet
triggerAll = var(24)
trigger1 = !NumHelper(3115)
trigger1 = !NumHelper(3165)
var(24) = 0

[State -3, Projectile Flag Reset]
type = VarSet
trigger1 = var(39) < 0
var(39) = 0
ignoreHitPause = 1

[State -3, Projectile Flag Off]
type = VarSet
trigger1 = !NumHelper(1005)
trigger1 = !NumHelper(1035)
trigger1 = !NumHelper(3115)
trigger1 = !NumHelper(3165)
trigger1 = !NumHelper(3205)
trigger1 = !NumHelper(3225)
trigger1 = !NumHelper(3505)
trigger1 = !NumHelper(3510)
trigger1 = !NumHelper(3515)
trigger1 = !NumHelper(3560)
trigger1 = !NumHelper(3565)
trigger1 = !NumHelper(3570)
trigger1 = !NumHelper(3915)
trigger1 = !NumHelper(3965)
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
trigger2 = var(20) && (StateNo = [1000, 2999]) && StateType != A && (MoveContact || var(18)) && StateNo != 1310
trigger3 = var(20) && StateNo = 1320 && AnimElemTime(8) > 0 && AnimElemTime(11) < 0
var(4) = 1
ignoreHitPause = 1

[State -3, AR chain tier reset]
type = VarSet
trigger1 = 1
var(42) = 0
ignoreHitPause = 1

[State -3, AR chain tier]
type = VarSet
trigger1 = !var(20) && (StateNo = [200, 699]) && MoveContact
var(42) = floor((StateNo % 100) / 10.0) % 3 + 1
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
trigger3 = StateNo = 210 && MoveContact && AnimElemTime(6) < 0
trigger4 = StateNo = 220 && MoveContact && AnimElemTime(5) < 0
trigger5 = StateNo = 225 && MoveContact && AnimElemTime(5) < 0
trigger6 = StateNo = 235 && MoveContact && AnimElemTime(5) < 0
trigger7 = StateNo = 400 && MoveContact
trigger8 = StateNo = 410 && MoveContact && AnimElemTime(4) < 0
trigger9 = StateNo = 420 && MoveContact && AnimElemTime(6) < 0
trigger10 = StateNo = 430 && MoveContact
var(5) = 1
ignorehitpause = 1

[State -3, Cancel Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200, 699])
trigger2 = var(20) && (StateNo = [1000, 2999]) && (MoveContact || var(18)) && StateNo != 1310 && StateNo != 1410 && StateNo != 1910
trigger3 = (StateNo = [200, 699]) && Time <= 2 && (PrevStateNo != [200, 700])
trigger4 = StateNo = 200
trigger5 = StateNo = 205
trigger6 = StateNo = 210 && MoveContact && AnimElemTime(6) < 0
trigger7 = StateNo = 218 && MoveContact && AnimElemTime(8) < 0
trigger8 = StateNo = 220 && MoveContact && AnimElemTime(5) < 0
trigger9 = StateNo = 225 && MoveContact && AnimElemTime(5) < 0
trigger10 = StateNo = 235 && MoveContact && AnimElemTime(5) < 0
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && MoveContact && AnimElemTime(4) < 0
trigger13 = StateNo = 420 && MoveContact && AnimElemTime(6) < 0
trigger14 = StateNo = 430
trigger15 = var(20) && StateNo = 1320 && AnimElemTime(8) > 0 && AnimElemTime(11) < 0
trigger40 = (StateNo = [200, 699]) && MoveContact
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
trigger6 = StateNo = 210 && (AnimElemTime(6) < 0 || (MoveContact = [1, 8]))
trigger7 = StateNo = 218 && (AnimElemTime(8) < 0 || (MoveContact = [1, 8]))
trigger8 = StateNo = 220 && (AnimElemTime(5) < 0 || (MoveContact = [1, 8]))
trigger9 = StateNo = 225 && (AnimElemTime(5) < 0 || (MoveContact = [1, 8]))
trigger10 = StateNo = 230 && (AnimElemTime(5) < 0 || (MoveContact = [1, 8]))
trigger11 = StateNo = 235 && (AnimElemTime(5) < 0 || (MoveContact = [1, 8]))
trigger12 = StateNo = 240 && (AnimElemTime(6) < 0 || (MoveContact = [1, 8]))
trigger13 = StateNo = 255 && (AnimElemTime(6) < 0 || (MoveContact = [1, 8]))
trigger14 = StateNo = 400
trigger15 = StateNo = 410 && (AnimElemTime(4) < 0 || (MoveContact = [1, 8]))
trigger16 = StateNo = 420 && (AnimElemTime(6) < 0 || (MoveContact = [1, 8]))
trigger17 = StateNo = 428 && (AnimElemTime(10) < 0 || (MoveContact = [1, 8]))
trigger18 = StateNo = 430
trigger19 = StateNo = 440 && (AnimElemTime(5) < 0 || (MoveContact = [1,8]))
trigger20 = (StateNo = [1000, 1030]) && (AnimElemTime(4) = [1, 8])
trigger21 = (StateNo = [1100, 1130]) && AnimElemTime(5) < 0 && MoveContact
trigger22 = (StateNo = 1200 || StateNo = 1230) && AnimElemTime(8) < 0 && MoveContact
trigger23 = (StateNo = 1210 || StateNo = 1240) && AnimElemTime(8) < 0 && MoveContact
trigger24 = (StateNo = 1320 || StateNo = 1340) && AnimElemTime(8) > 0 && AnimElemTime(11) < 0
trigger25 = (StateNo = 1501 || StateNo = 1531) && AnimElemTime(5) < 0 && MoveContact
trigger26 = (StateNo = 1600 || StateNo = 1630) && AnimElemTime(8) < 0 && MoveContact
trigger27 = (StateNo = 1700 || StateNo = 1730) && AnimElemTime(10) < 0 && MoveContact
trigger28 = (StateNo = 1810 || StateNo = 1840) && AnimElemTime(5) < 0 && MoveContact
trigger40 = (StateNo = [200, 699]) && MoveContact
var(7) = 1
ignoreHitPause = 1

[State -3, Hyper Cancel Reset]
type = VarSet
trigger1 = 1
var(8) = 0
ignoreHitPause = 1

[State -3, Hyper Cancel Reset]
type = VarSet
trigger1 = (StateNo = 3010 || StateNo = 3040) && AnimElemTime(47) < 0 && MoveContact
trigger2 = StateNo = 3010 && AnimElemTime(54) >= 6 && AnimElemTime(55) < 0
trigger3 = StateNo = 3040 && AnimElemTime(53) >= 6 && AnimElemTime(54) < 0
trigger4 = StateNo = 3110 && (AnimElemTime(4) = [1, 8]) && var(18)
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
triggerAll = 0
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
trigger6 = AILevel && (StateNo != [760,762]) && InGuardDist && Random < (1000 * (AILevel ** 2 / 64.0))
trigger7 = AILevel && (StateNo = [760,762]) && Time = 14
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
trigger1 = (StateNo != [760, 762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 767)
attr = SCA, AP
stateNo = 762
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Assert: NoWalk after Parry]
type = AssertSpecial
trigger1 = var(26) > 0
trigger1 = var(26) := (var(26)-1)
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
triggerAll = (StateType = S || StateType = C) && NumTarget
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
trigger1 = (StateNo = 3000 || StateNo = 3100 || StateNo = 3200) && Time = 43
trigger2 = (StateNo = 3300 || StateNo = 3400 || StateNo = 3500) && Time = 43
trigger3 = (StateNo = 3900 || StateNo = 4100 || StateNo = 4200) && Time = 43
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
trigger1 = (StateNo = 3050 || StateNo = 3150 || StateNo = 3250) && Time = 43
trigger2 = (StateNo = 3350 || StateNo = 3450 || StateNo = 3550) && Time = 43
trigger3 = (StateNo = 3950 || StateNo = 4150 || StateNo = 4250) && Time = 43
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
trigger1 = (StateNo = 3600 || StateNo = 3700 || StateNo = 3800 || StateNo = 4000 || StateNo = 4300) && Time = 43
trigger2 = StateNo = 3610 && AnimElem = 29
trigger3 = StateNo = 3610 && AnimElem = 34
trigger4 = StateNo = 3610 && AnimElem = 39
trigger5 = StateNo = 3610 && AnimElem = 44
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
trigger4 = (StateNo = [3000, 4999])
time = 2

[State -3, AfterImage Off]
type = AfterImageTime
triggerAll = Time <= 1
trigger1 = StateNo = 3000 || StateNo = 3050 || StateNo = 3100 || StateNo = 3150
trigger2 = StateNo = 3200 || StateNo = 3220 || StateNo = 3250 || StateNo = 3300 || StateNo = 3350
trigger3 = StateNo = 3400 || StateNo = 3450 || StateNo = 3500 || StateNo = 3550
trigger4 = StateNo = 3600 || StateNo = 3700 || StateNo = 3800 || StateNo = 3900
trigger5 = StateNo = 4000 || StateNo = 4100 || StateNo = 4200 || StateNo = 4300
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
trigger3 = GetHitVar(AnimType) = 0 && Random < 250
value = 5000, (Random % 3) + 10 * (var(40) = 1)
channel = 0
ignoreHitPause = 1

[State -3, Get Hit Sound]
type = PlaySnd
triggerAll = Alive && Time = 1
trigger1 = (StateNo = 5000 || StateNo = 5010) && NumEnemy
trigger1 = GetHitVar(fall) || (EnemyNear, HitDefAttr = SCA,SA,HA)
trigger2 = (StateNo = 5020 || StateNo = 5070 || StateNo = 5080)
trigger3 = (StateNo = 5050 || StateNo = 5100) && (PrevStateNo != [5000, 5199])
value = 5000, (Random % 3) + 10 * (var(40) = 1)
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
trigger1 = StateNo = [120 ,155]
channel = 0

[State -3, Custom Combo Finish]
type = Helper
triggerAll = WinKO && var(20)
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = [1,4]
trigger2 = StateNo = 810 && (AnimElemTime(6) = [1, 2])
trigger3 = NumHelper(1005)
trigger3 = (Helper(1005), StateNo = [1005, 1007]) && (Helper(1005), var(18))
trigger4 = StateNo = 1320 && (AnimElemTime(7) = [0, 1])
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
trigger2 = StateNo = 3010 || StateNo = 3040 || StateNo = 3060 || StateNo = 3070 || StateNo = 3080 || StateNo = 3090
trigger2 = var(23) := 3000
trigger3 = NumHelper(3115)
trigger3 = (((Helper(3115), StateNo = [3115, 3118])) || ((Helper(3115), StateNo = [3125, 3127]))) && Helper(3115), var(18)
trigger3 = var(23) := 3100
trigger4 = NumHelper(3165)
trigger4 = (((Helper(3165), StateNo = [3115, 3118])) || ((Helper(3165), StateNo = [3125, 3127]))) && Helper(3165), var(18)
trigger4 = var(23) := 3100
trigger5 = NumHelper(3205)
trigger5 = (Helper(3205), StateNo = [3205, 3207]) && (Helper(3205), var(18))
trigger5 = var(23) := 3200
trigger6 = NumHelper(3225)
trigger6 = (Helper(3225), StateNo = [3205, 3207]) && (Helper(3225), var(18))
trigger6 = var(23) := 3200
trigger7 = StateNo = 3240
trigger7 = var(23) := 3200
trigger8 = StateNo = 3300 || StateNo = 3350
trigger8 = var(23) := 3300
trigger9 = StateNo = 3410 || StateNo = 3460
trigger9 = var(23) := 3400
trigger10 = StateNo = 3500 || StateNo = 3510 || StateNo = 3550 || StateNo = 3560
trigger10 = var(23) := 3500
trigger11 = StateNo = 3610
trigger11 = var(23) := 3600
trigger12 = StateNo = 3710
trigger12 = var(23) := 3700
trigger13 = StateNo = 3810
trigger13 = var(23) := 3800
trigger14 = NumHelper(3915)
trigger14 = (Helper(3915), StateNo = [3915, 3917]) && (Helper(3915), var(18))
trigger14 = var(23) := 3900
trigger15 = NumHelper(3965)
trigger15 = (Helper(3965), StateNo = [3915, 3917]) && (Helper(3965), var(18))
trigger15 = var(23) := 3900
trigger16 = StateNo = 4010
trigger16 = var(23) := 4000
trigger17 = StateNo = 4100 || StateNo = 4150
trigger17 = var(23) := 4100
trigger18 = StateNo = 4200 || StateNo = 4250
trigger18 = var(23) := 4200
trigger19 = StateNo = 4300
trigger19 = var(23) := 4300
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