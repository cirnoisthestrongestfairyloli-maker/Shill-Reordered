; ________________________________________________
;| Terry Bogard by KarmaCharmeleon		|
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
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && !AnimTime
value = 0

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
trigger1 = !Time && Anim = 12
value = 10
elem = 3 - AnimElemNo(0)

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 10
value = 10

[State 10, End]
type = ChangeState
trigger1 = !AnimTime
value = 11


;Crouching
[StateDef 11]
type = C
physics = C
moveType = I
anim = 11
velSet = 0,0
sprPriority = 0

[State 11, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 6 && !AnimTime
value = 11


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
trigger1 = !Time && Anim = 10
value = 12
elem = 3 - AnimElemNo(0)

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 12
value = 12

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
trigger1 = Anim != 10 && Anim != 11 && Anim != 141
value = 10

[State 13, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 10 && !AnimTime
trigger2 = Anim = 141 && !AnimTime
value = 11



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
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command = "holdback"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = command = "holdfwd"
x = const(velocity.walk.back.x)

[State 20, ChangeAnim]
type = ChangeAnim
triggerAll = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimElemTime(1) >= 1
value = 20

[State 20, ChangeAnim]
type = ChangeAnim
triggerAll = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimElemTime(1) >= 1
value = 21



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
value = 40

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
sysvar(1) = ifElse(((EnemyNear, MoveType != A && P2StateType != L) || BackEdgeBodyDist <= 10 || (P2StateType = L && EnemyNear, BackEdgeBodyDist <= 10) || P2BodyDist x >= 20), 1, ifElse((EnemyNear, MoveType = A), -1, 0))

[State 40, High Jump]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse(command = "highjump", 3, 0)
var(3) = ifElse(NumExplod(90000408), 3, 0)

[State 40, High Jump (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(3) = ifElse((P2BodyDist x >= 125), 3, 0)

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
trigger1 = AILevel && (var(3) != [1, 2])
trigger1 = P2StateType = L
var(3) = ifElse((var(3) = 3 && sysvar(1)), 2, 1)

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
value = ifElse(!vel x , 41, ifElse(vel x > 0, 42, 43)) + 10 * (var(3) = [1,2])
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
anim = 47
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 52, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && (var(3) = 1 || var(3) = 2)
trigger1 = (PrevStateNo = [600, 699])
value = 57

[State 52, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 52, CtrlSet]
type = CtrlSet
trigger1 = !Time && (PrevStateNo != [600, 699])
trigger2 = Time = 1 && Anim != 57
value = 1

[State 52, ChangeState to Guarding]
type = ChangeState
;ctrl && command = "holdback"
trigger1 = ctrl && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command = "holdfwd", command = "holdback"), ifElse(P2dist x < 0, command = "holdback", command = "holdfwd")))
trigger1 = InGuardDist && (PrevStateNo != [600, 699])
value = 120

[State 52, Assert: NoWalk]
type = AssertSpecial
trigger1 = Anim != 5
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
trigger1 = Anim != 5
value = 5

[State 52, Turn]
type = Turn
trigger1 = Anim = 5 && AnimElem = 1

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
anim = 100
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
anim = 101
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
x = -0.64012325009

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
anim = 105
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
y = 0.78125

[State 105, End]
type = ChangeState
trigger1 = AnimElemTime(2) > 0
trigger1 = pos y > -vel y
value = 106


;Stop Dashing Backwards
[StateDef 106]
type = S
physics = S
ctrl = 0
anim = 106
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
anim = 110
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
y = -4.05027932961

[State 110, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
x = -0.08729050279
y = 0.78125

[State 110, End]
type = ChangeState
trigger1 = AnimElemTime(2) > 0
trigger1 = pos y > -vel y
value = 111


;Stop Dashing Forward
[StateDef 111]
type = S
physics = S
ctrl = 1
anim = 111
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
anim = 700
ctrl = 0
velSet = 0,0
sprPriority = -2

[State 700, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 1
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
value = ifElse((NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)), 428, 250)

[State 700, Attack (AI)]
type = ChangeState
trigger1 = AILevel && (Time = [15, 25]) && NumEnemy
trigger1 = (EnemyNear, MoveType != A) && (P2BodyDist x = [-60, 60]) && (P2Dist y >= -60)
value = ifElse((P2BodyDist x = [0, 40)), 428, 250)

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
anim = 710
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
trigger1 = AnimElemTime(7) < 0
value = SCA, AT
time = 1

[State 710, Voice]
type = PlaySnd
trigger1 = !Time
value = 710, ifElse(Random < 500, 0, 1)
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
trigger1 = AnimElem = 7
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
anim = 715
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
trigger1 = AnimElemTime(7) < 0
value = SCA,AT
time = 1

[State 715, Voice]
type = PlaySnd
trigger1 = !Time
value = 710, ifElse(Random < 500, 0, 1)
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
trigger1 = AnimElem = 7
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
anim = 730
velSet = 0,0
ctrl = 0

[State 730, PowerAdd]
type = PowerAdd
triggerAll = Power < const(data.power) && Power < PowerMax
trigger1 = !AILevel && command = "holda"
trigger2 = AILevel
value = 2 + ifElse(time < 60, 0, (time - 60) / 12)

[State 730, Voice]
type = PlaySnd
trigger1 = !Time
value = 730, 1
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
pos = 2, 0
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
trigger2 = !AILevel && command != "holda"
trigger3 = AILevel && (InGuardDist || P2BodyDist x <= 120)
value = 731
ctrl = 1


;Power Charge End
[StateDef 731]
type = S
physics = S
moveType = I
anim = 731
velSet = 0,0
ctrl = 1

[State 731, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0

[State 731, Full Power Voice]
type = PlaySnd
trigger1 = !Time && Power >= const(data.power)
value = 181, 0
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
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 750, Zero Counter FX Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8350
ID = 8350
name = "Zero Counter"
posType = P1
pos = 35, -40
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
anim = 760
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
value = 4, ifElse(Random < 500, 0, 1)
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
pos = 35, -40
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
value = 4, ifElse(Random < 500, 0, 1)
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
pos = 38, -20
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
value = 4, ifElse(Random < 500, 0, 1)
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
pos = 30, -53
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
anim = 763
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
anim = 900
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
value = 4, 1
channel = 0

[State 900, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo FX"
posType = P1
pos = 12, -64
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
anim = 905
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
value = 4, 1
channel = 0

[State 905, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo Startup"
posType = P1
pos = 8, -80
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
anim = 906
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
anim = 5200
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
trigger1 = !Time
value = 5200, 1
channel = 0

[State 5201, Recover Sound]
type = PlaySnd
trigger1 = !Time
value = 5200, 0
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
anim = 5210
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
trigger1 = !Time
value = 5200, 1
channel = 0

[State 5210, Recover Sound]
type = PlaySnd
trigger1 = !Time
value = 5200, 0
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
pos = 0, ceil(-88 * const(size.yScale))
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
anim = 120 + (StateType = C) + (StateType = A) * 2

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
trigger1 = Anim != 130
value = 130

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
trigger1 = anim != 131
value = 131

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
trigger1 = anim != 132
value = 132

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
value = 140 + (StateType = C) + (StateType = A) * 2

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
value = 150

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
anim = 150

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
value = 151

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
anim = 151

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
value = 152

[State 154, End]
type = ChangeState
trigger1 = HitShakeOver
value = 155


;Knocked Back while Guarding (Jumping)
[StateDef 155]
type = A
moveType = H
physics = N
anim = 152

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
anim = 170
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
anim = 5300
velSet = 0,0
ctrl = 0

[State 5500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5500



;====================<INITIALIZE>====================
[StateDef 5901]
type = S

[State 5901, Intro vs Intro vs Geese Howard]
type = ChangeState
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Geese Howard" && Enemy, AuthorName = "Phantom.of.the.Server"
trigger2 = Enemy, Name = "cvsgeese" && Enemy, AuthorName = "Warusaki3"
value = 6800

[State 5901, Intro vs Intro vs Ken Masters]
type = ChangeState
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Ken Masters" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) != 1
trigger2 = Enemy, Name = "cvsken" && Enemy, AuthorName = "Warusaki3"
value = 6801

[State 5901, Intro vs Intro vs Rock Howard]
type = ChangeState
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Rock Howard" && Enemy, AuthorName = "DivineWolf"
trigger2 = Enemy, Name = "cvsrock" && Enemy, AuthorName = "Warusaki3"
value = 6802

[State 5901, Intro vs Intro vs Ryuji Yamazaki]
type = ChangeState
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Ryuji Yamazaki" && Enemy, AuthorName = "Knuckles8864"
trigger2 = Enemy, Name = "cvsyamazaki" && Enemy, AuthorName = "Warusaki3"
value = 6803

[State 5901, Intro vs Intro vs Andy Bogard]
type = ChangeState
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Andy Bogard" && Enemy, AuthorName = "Jmorphman"
trigger2 = Enemy, Name = "Andy Bogard" && Enemy, AuthorName = "Infinite"
;trigger3 = Enemy, Name = "cvsandy" && Enemy, AuthorName = "Jesuszilla"
value = 6804

[State 5901, Intro vs Intro vs Blue Mary]
type = ChangeState
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Blue Mary" && Enemy, AuthorName = "Jmorphman"
trigger2 = Enemy, Name = "Blue Mary" && Enemy, AuthorName = "Infinite"
trigger3 = Enemy, Name = "Blue Mary" && Enemy, AuthorName = "KoopaKoot"
value = 6805

[State 5901, Intro vs Intro vs Cody Travers]
type = ChangeState
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Cody Travers" && Enemy, AuthorName = "Jmorphman"
trigger2 = Enemy, Name = "Cody Travers" && Enemy, AuthorName = "Trololo"
value = 6806

[State 5901, Turns Intro]
type = ChangeState
trigger1 = TeamMode = Turns
trigger1 = !RoundsExisted && RoundNo >= 2
value = 6900

[State 5901, Intro Decider]
type = ChangeState
trigger1 = RoundNo = 1
value = 190

[State 5901, End]
type = ChangeState
trigger1 = 1
value = 0



;====================<INTRO>====================
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
trigger1 = AnimElem = 1
value = 190, 0
channel = 0

[State 190, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO VS GEESE HOWARD>====================
[StateDef 6800]
type = S
physics = S
anim = 6800

[State 6800, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6800, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
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

[State 6801, Change to Regular Intro]
type = ChangeState
trigger1 = Enemy, Name = "Ken Masters" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) = 1
value = 190

[State 6801, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6801, Cap]
type = Helper
trigger1 = Time = 1
helperType = Normal
stateNo = 16801
ID = 16801
posType = P2
name = "Cap"
ownPal = 1

[State 6801, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 6801, 1
channel = 2

[State 6801, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO VS ROCK HOWARD>====================
[StateDef 6802]
type = S
physics = S
anim = 6802

[State 6802, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6802, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 182, 0
channel = 0

[State 6802, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO VS RYUJI YAMAZAKI>====================
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
trigger1 = AnimElem = 10
value = 4, 1
channel = 0

[State 6803, Woosh]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1, 2
channel = 1

[State 6803, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 6803, 2
channel = 2

[State 6803, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO VS ANDY BOGARD>====================
[StateDef 6804]
type = S
physics = S
anim = 6804

[State 6804, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6804, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO VS BLUE MARY>====================
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
trigger1 = AnimElem = 2
value = 6805, 0
channel = 0

[State 6805, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO VS CODY TRAVERS>====================
[StateDef 6806]
type = S
physics = S
anim = 6806

[State 6806, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6806, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 6806, 0
channel = 0

[State 6806, End]
type = ChangeState
trigger1 = !AnimTime
value = 0




;====================<TURNS INTRO>====================
[StateDef 6900]
type = A
anim = 42
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
anim = 6901
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
trigger1 = AnimElem = 4
value = 190, 0
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
trigger1 = 1
value = Random % 8

[State 180, Victory Quote vs. Terry Bogard]
type = VictoryQuote
trigger1 = Enemy, Name = "Terry" || Enemy, Name = "Terry Bogard" || Enemy, Name = "cvsterry"
value = 8

[State 180, Victory Quote vs. Andy Bogard]
type = VictoryQuote
trigger1 = Enemy, Name = "Andy" || Enemy, Name = "Andy Bogard" || Enemy, Name = "cvsandy"
value = 9

[State 180, Victory Quote vs. Joe Higashi]
type = VictoryQuote
trigger1 = Enemy, Name = "Joe" || Enemy, Name = "Joe Higashi" || Enemy, Name = "cvsjoe"
value = 10

[State 180, Victory Quote vs. Geese Howard]
type = VictoryQuote
trigger1 = Enemy, Name = "Geese" || Enemy, Name = "Geese Howard" || Enemy, Name = "cvsgeese" || Enemy, Name = "cvsgeese_normal" || Enemy, Name = "cvsgeese_ex" || Enemy, Name = "Nightmare Geese" || Enemy, Name = "Geese_WLS" ||  Enemy, Name = "Geese B Howard"
value = 11

[State 180, Victory Quote vs. Rock Howard]
type = VictoryQuote
trigger1 = Enemy, Name = "Rock" || Enemy, Name = "Rock Howard" || Enemy, Name = "cvsrock"
value = 12

[State 180, Victory Quote vs. A.K.I.]
type = VictoryQuote
trigger1 = Enemy, Name = "A.K.I."
value = 13

[State 180, Victory Quote vs. Alice Garnet Nakata]
type = VictoryQuote
trigger1 = Enemy, Name = "Alice" || Enemy, Name = "Alice Garnet" || Enemy, Name = "Alice Nakata" || Enemy, Name = "Alice Garnet Nakata" || Enemy, Name = "cvsalice"
value = 14

[State 180, Victory Quote vs. Ash Crimson]
type = VictoryQuote
trigger1 = Enemy, Name = "Ash" || (Enemy, Name = "Ash Crimson" && Enemy, AuthorName != "KarmaCharmeleon") || Enemy, Name = "cvsash"
trigger2 = Enemy, Name = "Ash Crimson" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) != 1
value = 15

[State 180, Victory Quote vs. Evil Ash]
type = VictoryQuote
trigger1 = Enemy, Name = "Evil Ash" || Enemy, Name = "Dark Ash" || Enemy, Name = "Blood Spiraling into Insanity Ash"
trigger2 = Enemy, Name = "Ash Crimson" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) = 1
value = 16

[State 180, Victory Quote vs. Athena Asamiya]
type = VictoryQuote
trigger1 = Enemy, Name = "Athena" || Enemy, Name = "Athena Asamiya" || Enemy, Name = "cvsathena"
value = 17

[State 180, Victory Quote vs. Balrog (Claw)]
type = VictoryQuote
trigger1 = (Enemy, Name = "Vega" && Enemy, AuthorName != "Phantom.of.the.Server") || Enemy, Name = "cvsbalrog"
value = 18

[State 180, Victory Quote vs. Benimaru Nikaido]
type = VictoryQuote
trigger1 = Enemy, Name = "Benimaru" || Enemy, Name = "Benimaru Nikaido" || Enemy, Name = "cvsbenimaru"
value = 19

[State 180, Victory Quote vs. Billy Kane]
type = VictoryQuote
trigger1 = Enemy, Name = "Billy Kane" || Enemy, Name = "Billy Karn" || Enemy, Name = "ffsp_billy"
value = 20

[State 180, Victory Quote vs. M. Bison (Boxer)]
type = VictoryQuote
trigger1 = Enemy, Name = "Balrog" || Enemy, Name = "cvsbison"
value = 21

[State 180, Victory Quote vs. Blanka]
type = VictoryQuote
trigger1 = Enemy, Name = "Blanka" || Enemy, Name = "cvsblanka"
value = 22

[State 180, Victory Quote vs. Cammy White]
type = VictoryQuote
trigger1 = Enemy, Name = "Cammy" || Enemy, Name = "Cammy White" || Enemy, Name = "cvscammy"
value = 23

[State 180, Victory Quote vs. Chang Koehan / Choi Bounge]
type = VictoryQuote
trigger1 = Enemy, Name = "Chang" || Enemy, Name = "Chang Koehan" || Enemy, Name = "cvschang"
trigger2 = Enemy, Name = "Choi" || Enemy, Name = "Choi Bounge" || Enemy, Name = "cvschoi"
value = 24

[State 180, Victory Quote vs. Chun-Li]
type = VictoryQuote
trigger1 = Enemy, Name = "Chun-Li" || Enemy, Name = "cvschunli" || Enemy, Name = "Chun Li" || Enemy, Name = "ChunLi"
value = 25

[State 180, Victory Quote vs. Clark Still]
type = VictoryQuote
trigger1 = Enemy, Name = "Clark" || Enemy, Name = "Clark Still"
value = 26

[State 180, Victory Quote vs. Goro Daimon]
type = VictoryQuote
trigger1 = Enemy, Name = "Daimon" || Enemy, Name = "Goro Daimon"
value = 27

[State 180, Victory Quote vs. Duo Lon]
type = VictoryQuote
trigger1 = Enemy, Name = "Duo Lon"
value = 28

[State 180, Victory Quote vs. Dan Hibiki]
type = VictoryQuote
trigger1 = Enemy, Name = "Dan" || Enemy, Name = "Dan Hibiki" || Enemy, Name = "cvsdan"
value = 29

[State 180, Victory Quote vs. Dhalsim]
type = VictoryQuote
trigger1 = Enemy, Name = "Dhalsim" || Enemy, Name = "cvsdhalsim" || Enemy, Name = "RajaaDhalsim"
value = 30

[State 180, Victory Quote vs. Dee Jay]
type = VictoryQuote
trigger1 = Enemy, Name = "Dee Jay" || Enemy, Name = "cvsdeejay"
value = 31

[State 180, Victory Quote vs. Dolores]
type = VictoryQuote
trigger1 = Enemy, Name = "Dolores"
value = 32

[State 180, Victory Quote vs. Duck King]
type = VictoryQuote
trigger1 = Enemy, Name = "Duck King"
value = 33

[State 180, Victory Quote vs. Eagle]
type = VictoryQuote
trigger1 = Enemy, Name = "Eagle" || Enemy, Name = "cvseagle"
value = 34

[State 180, Victory Quote vs. Ed]
type = VictoryQuote
trigger1 = Enemy, Name = "Ed"
value = 35

[State 180, Victory Quote vs. Elisabeth Blanctorche]
type = VictoryQuote
trigger1 = Enemy, Name = "Elisabeth" || Enemy, Name = "Elisabeth Blanctorche"
value = 36

[State 180, Victory Quote vs. Gouki]
type = VictoryQuote
trigger1 = (Enemy, Name = "Gouki" && !(Enemy, AuthorName = "KarmaCharmeleon")) || (Enemy, Name = "Akuma" && !(Enemy, AuthorName = "DeathScythe"))
trigger2 = (Enemy, Name = "cvsgouki" && Enemy, PalNo = [1, 6]) || Enemy, Name = "cvsgouki_normal"
trigger3 = (Enemy, Name = "Gouki" && Enemy, AuthorName = "KarmaCharmeleon") && (Enemy, var(40) = [0, 1])
trigger4 = (Enemy, Name = "Akuma" && Enemy, AuthorName = "DeathScythe") && Enemy, var(40) = 0
value = 37

[State 180, Victory Quote vs. Shin Gouki]
type = VictoryQuote
trigger1 = Enemy, Name = "Shin Gouki" || Enemy, Name = "ShinGouki" || Enemy, Name = "Shin Akuma" || Enemy, Name = "ShinAkuma" || Enemy, Name = "Pocket Shin Gouki"
trigger2 = (Enemy, Name = "cvsgouki" && Enemy, PalNo = [7, 12]) || Enemy, Name = "cvsgouki_ex"
trigger3 = (Enemy, Name = "Gouki" && Enemy, AuthorName = "KarmaCharmeleon") && Enemy, var(40) = 2
trigger4 = (Enemy, Name = "Akuma" && Enemy, AuthorName = "DeathScythe") && Enemy, var(40) = 1
value = 38

[State 180, Victory Quote vs. Guile]
type = VictoryQuote
trigger1 = Enemy, Name = "Guile" || Enemy, Name = "cvsguile"
value = 39

[State 180, Victory Quote vs. Hibiki Takane]
type = VictoryQuote
trigger1 = Enemy, Name = "Hibiki" || Enemy, Name = "Hibiki Takane" || Enemy, Name = "cvshibiki"
value = 40

[State 180, Victory Quote vs. Haohmaru]
type = VictoryQuote
trigger1 = (Enemy, Name = "Haohmaru" && !(Enemy, AuthorName != "KarmaCharmeleon")) || Enemy, Name = "cvshaohmaru"
trigger2 = Enemy, Name = "Haohmaru" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) = 0
value = 41

[State 180, Victory Quote vs. E. Honda]
type = VictoryQuote
trigger1 = Enemy, Name = "Honda" || Enemy, Name = "E. Honda" || Enemy, Name = "cvshonda" || Enemy, Name = "E.Honda"
value = 42

[State 180, Victory Quote vs. Hwa Jai]
type = VictoryQuote
trigger1 = Enemy, Name = "Hwa Jai"
value = 43

[State 180, Victory Quote vs. Iori Yagami]
type = VictoryQuote
trigger1 = Enemy, Name = "Iori" || (Enemy, Name = "Iori Yagami" && !(Enemy, AuthorName = "Anjel") && !(Enemy, AuthorName = "KarmaCharmeleon") && !(Enemy, AuthorName = "Knuckles8864")) || Enemy, Name = "IoriMG"
trigger2 = (Enemy, Name = "cvsiori" && Enemy, PalNo = [1, 6]) || Enemy, Name = "cvsiori_normal"
trigger3 = (Enemy, Name = "Iori_WLS" && Enemy, PalNo = [1, 6]) && Enemy, Name = "N.Iori_WLS"
trigger4 = Enemy, Name = "Iori Yagami" && Enemy, AuthorName = "Anjel" && Enemy, var(50) != 1
trigger5 = Enemy, Name = "Iori Yagami" && Enemy, AuthorName = "Knuckles8864" && Enemy, var(40) != 1
trigger6 = Enemy, Name = "Iori Yagami" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) != 1 && Enemy, var(40) != 3
value = 44

[State 180, Victory Quote vs. Orochi Iori]
type = VictoryQuote
trigger1 = Enemy, Name = "Orochi Iori" || Enemy, Name = "OrochiIori" || Enemy, Name = "Orochi-Iori" || Enemy, Name = "Insane Iori with Blood of Orochi Under the Night of the Moon"
trigger2 = (Enemy, Name = "cvsiori" && Enemy, PalNo = [7, 12]) || Enemy, Name = "cvsiori_ex"
trigger3 = (Enemy, Name = "Iori_WLS" && Enemy, PalNo = [7, 12]) && Enemy, Name = "O.Iori_WLS"
trigger4 = Enemy, Name = "Iori Yagami" && Enemy, AuthorName = "Anjel" && Enemy, var(50) = 1
trigger5 = Enemy, Name = "Iori Yagami" && Enemy, AuthorName = "Knuckles8864" && Enemy, var(40) = 1
trigger6 = Enemy, Name = "Iori Yagami" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) = 1
value = 45

[State 180, Victory Quote vs. Isla]
type = VictoryQuote
trigger1 = Enemy, Name = "Isla"
value = 46

[State 180, Victory Quote vs. Jamie Siu]
type = VictoryQuote
trigger1 = Enemy, Name = "Jamie" || Enemy, Name = "Jamie Siu"
value = 47

[State 180, Victory Quote vs. B. Jenet]
type = VictoryQuote
trigger1 = Enemy, Name = "B. Jenet" || Enemy, Name = "Jenet Behrn"
value = 48

[State 180, Victory Quote vs. JP]
type = VictoryQuote
trigger1 = Enemy, Name = "JP"
value = 49

[State 180, Victory Quote vs. Juri Han]
type = VictoryQuote
trigger1 = Enemy, Name = "Juri" || Enemy, Name = "Juri Han" || Enemy, Name = "cvsjuri"
value = 50

[State 180, Victory Quote vs. K']
type = VictoryQuote
trigger1 = Enemy, Name = "K'" || Enemy, Name = "Ultimate K'"
value = 51

[State 180, Victory Quote vs. Mr. Karate]
type = VictoryQuote
trigger1 = Enemy, Name = "Mr. Karate"
value = 52

[State 180, Victory Quote vs. Ken Masters]
type = VictoryQuote
trigger1 = Enemy, Name = "Ken" || (Enemy, Name = "Ken Masters" && !(Enemy, AuthorName = "Jmorphman"))
trigger2 = (Enemy, Name = "cvsken" && Enemy, PalNo = [1, 6]) || Enemy, Name = "cvsken_normal"
trigger3 = Enemy, Name = "Ken Masters" && Enemy, Authorname = "Jmorphman" && Enemy, var(40) != 1
value = 53

[State 180, Victory Quote vs. Sie Kensou]
type = VictoryQuote
trigger1 = Enemy, Name = "Kensou" || Enemy, Name = "Sie Kensou"
value = 54

[State 180, Victory Quote vs. Kim Kaphwan]
type = VictoryQuote
trigger1 = Enemy, Name = "Kim" || Enemy, Name = "Kim Kaphwan" || Enemy, Name = "cvskim"
value = 55

[State 180, Victory Quote vs. Kimberly Jackson]
type = VictoryQuote
trigger1 = Enemy, Name = "Kimberly" || Enemy, Name = "Kimberly Jackson"
value = 56

[State 180, Victory Quote vs. King]
type = VictoryQuote
trigger1 = Enemy, Name = "King" || Enemy, Name = "cvsking"
value = 57

[State 180, Victory Quote vs. Kula Diamond]
type = VictoryQuote
trigger1 = Enemy, Name = "Kula" || Enemy, Name = "Kula Diamond"
value = 58

[State 180, Victory Quote vs. Kyo Kusanagi]
type = VictoryQuote
trigger1 = Enemy, Name = "Kyo" || (Enemy, Name = "Kyo Kusanagi" && !(Enemy, AuthorName = "Jmorphman")) || Enemy, Name = "Kyo_WLS"
trigger2 = (Enemy, Name = "cvskyo" && Enemy, PalNo = [1, 6]) || Enemy, Name = "cvskyo_normal"
trigger3 = Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) != 1
value = 59

[State 180, Victory Quote vs. Kyosuke Kagami]
type = VictoryQuote
trigger1 = Enemy, Name = "Kyosuke" || Enemy, Name = "Kyosuke Kagami" || Enemy, Name = "cvskyosuke"
value = 60

[State 180, Victory Quote vs. Leona]
type = VictoryQuote
trigger1 = Enemy, Name = "Leona" || Enemy, Name = "Leona Heidern"
value = 61

[State 180, Victory Quote vs. Luke Sullivan]
type = VictoryQuote
trigger1 = Enemy, Name = "Luke" || Enemy, Name = "Luke Sullivan"
value = 62

[State 180, Victory Quote vs. Luong]
type = VictoryQuote
trigger1 = Enemy, Name = "Luong"
value = 63

[State 180, Victory Quote vs. Mai Shiranui]
type = VictoryQuote
trigger1 = Enemy, Name = "Mai" || Enemy, Name = "Mai Shiranui" || Enemy, Name = "cvsmai"
value = 64

[State 180, Victory Quote vs. Maki Genryuusai]
type = VictoryQuote
trigger1 = Enemy, Name = "Maki" || Enemy, Name = "Maki Genryuusai" || Enemy, Name = "cvsmaki"
value = 65

[State 180, Victory Quote vs. Manon Legrand]
type = VictoryQuote
trigger1 = Enemy, Name = "Manon" || Enemy, Name = "Manon Legrand" || Enemy, Name = "cvsmanon"
value = 66

[State 180, Victory Quote vs. Marisa Rossetti]
type = VictoryQuote
trigger1 = Enemy, Name = "Marisa" || Enemy, Name = "Marisa Rossetti" || Enemy, Name = "cvsmarisa"
value = 67

[State 180, Victory Quote vs. Blue Mary]
type = VictoryQuote
trigger1 = Enemy, Name = "Mary" || Enemy, Name = "Blue Mary" || Enemy, Name = "cvsbluemary"
value = 68

[State 180, Victory Quote vs. Mature]
type = VictoryQuote
trigger1 = Enemy, Name = "Mature" || Enemy, Name = "cvsmature"
value = 69

[State 180, Victory Quote vs. Maxima]
type = VictoryQuote
trigger1 = Enemy, Name = "Maxima" || Enemy, Name = "cvsmaxima"
value = 70

[State 180, Victory Quote vs. Meitenkun]
type = VictoryQuote
trigger1 = Enemy, Name = "Meitenkun"
value = 71

[State 180, Victory Quote vs. Morrigan Aensland]
type = VictoryQuote
trigger1 = Enemy, Name = "Morrigan" || Enemy, Name = "Morrigan Aensland" || Enemy, Name = "cvsmorrigan"
value = 72

[State 180, Victory Quote vs. Nakoruru]
type = VictoryQuote
trigger1 = Enemy, Name = "Nakoruru" || Enemy, Name = "cvsnakoruru"
value = 73

[State 180, Victory Quote vs. Oswald]
type = VictoryQuote
trigger1 = Enemy, Name = "Oswald" || Enemy, Name = "cvsoswald"
value = 74

[State 180, Victory Quote vs. Raiden]
type = VictoryQuote
trigger1 = Enemy, Name = "Raiden" || Enemy, Name = "Big Bear" || Enemy, Name = "cvsraiden"
value = 75

[State 180, Victory Quote vs. Ralf Jones]
type = VictoryQuote
trigger1 = Enemy, Name = "Ralf" || Enemy, Name = "Ralf Jones"
value = 76

[State 180, Victory Quote vs. Rashid]
type = VictoryQuote
trigger1 = Enemy, Name = "Rashid" || Enemy, Name = "cvsrashid"
value = 77

[State 180, Victory Quote vs. Robert Garcia]
type = VictoryQuote
trigger1 = Enemy, Name = "Robert" || Enemy, Name = "Robert Garcia" || Enemy, Name = "Robert_WLS" || Enemy, Name = "cvsrobert"
value = 78

[State 180, Victory Quote vs. Rolento F. Schugerg]
type = VictoryQuote
trigger1 = Enemy, Name = "Rolento" || Enemy, Name = "Rolento F. Schugerg" || Enemy, Name = "cvsrolento"
value = 79

[State 180, Victory Quote vs. Rugal Bernstein]
type = VictoryQuote
trigger1 = Enemy, Name = "Rugal" || (Enemy, Name = "Rugal Bernstein" && !(Enemy, AuthorName = "KarmaCharmeleon"))
trigger2 = (Enemy, Name = "cvsrugal" && (Enemy,PalNo = [1, 6])) || Enemy, Name = "cvsrugal_normal"
trigger3 = (Enemy, Name = "Rugal Bernstein" && Enemy, AuthorName = "KarmaCharmeleon") && Enemy, var(40) = 0
value = 80

[State 180, Victory Quote vs. God Rugal]
type = VictoryQuote
trigger1 = Enemy, Name = "God Rugal" || Enemy, Name = "GodRugal" || Enemy, Name = "cvsg_rugal"
trigger2 = (Enemy, Name = "cvsrugal" && (EnemyNear, PalNo = [7, 12])) || Enemy, Name = "cvsrugal_ex"
trigger3 = (Enemy, Name = "Rugal Bernstein" && Enemy, AuthorName = "KarmaCharmeleon") && Enemy, var(40) = 2
value = 81

[State 180, Victory Quote vs. Ryo Sakazaki]
type = VictoryQuote
trigger1 = Enemy, Name = "Ryo" || Enemy, Name = "Ryo Sakazaki" || Enemy, Name = "cvsryo"
value = 82

[State 180, Victory Quote vs. Ryu]
type = VictoryQuote
trigger1 = Enemy, Name = "Ryu" && !(Enemy, AuthorName = "Phantom.of.the.Server") && !(Enemy, AuthorName = "KarmaCharmeleon")
trigger2 = (Enemy, Name = "cvsryu" && Enemy, PalNo = [1, 6]) || Enemy, Name = "cvsryu_normal"
trigger3 = (Enemy, Name = "Ryu" && Enemy, AuthorName = "Phantom.of.the.Server") && Enemy, var(1) != 2
trigger4 = (Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon") && Enemy, var(40) != 1 && Enemy, var(40) != 2
value = 83

[State 180, Victory Quote vs. Evil Ryu]
type = VictoryQuote
trigger1 = Enemy, Name = "Evil Ryu"
trigger2 = (Enemy, Name = "cvsryu" && Enemy, PalNo = [7, 12]) ||  Enemy, Name = "cvsryu_ex"
trigger3 = (Enemy, Name = "Ryu" && Enemy, AuthorName = "Phantom.of.the.Server") && Enemy, var(1) = 2
trigger4 = (Enemy, Name = "Ryu" && Enemy, AuthorName = "KarmaCharmeleon") && Enemy, var(40) = 1
value = 84

[State 180, Victory Quote vs. Sagat]
type = VictoryQuote
trigger1 = Enemy, Name = "Sagat" || Enemy, Name = "cvssagat" || Enemy, Name = "SagatMG"
value = 85

[State 180, Victory Quote vs. Sakura]
type = VictoryQuote
trigger1 = Enemy, Name = "Sakura" || (Enemy, Name = "Sakura Kasugano" && !(Enemy, AuthorName = "DeathScythe")) || Enemy, Name = "cvssakura"
trigger2 = (Enemy, Name = "Sakura Kasugano" && Enemy, AuthorName = "DeathScythe") && var(40) = 1
value = 86

[State 180, Victory Quote vs. Shen Woo]
type = VictoryQuote
trigger1 = Enemy, Name = "Shen" || Enemy, Name = "Shen Woo" || Enemy, Name = "cvsshen"
value = 87

[State 180, Victory Quote vs. Shun'ei]
type = VictoryQuote
trigger1 = Enemy, Name = "Shun'ei" || Enemy, Name = "cvshunei"
value = 88

[State 180, Victory Quote vs. Ryuhaku Todoh]
type = VictoryQuote
trigger1 = Enemy, Name = "Todoh" || Enemy, Name = "Ryuhaku Todoh" || Enemy, Name = "cvstodo"
value = 89

[State 180, Victory Quote vs. Vanessa]
type = VictoryQuote
trigger1 = Enemy, Name = "Vanessa" || Enemy, Name = "cvsvanessa"
value = 90

[State 180, Victory Quote vs. Vega (Dictator)]
type = VictoryQuote
trigger1 = Enemy, Name = "M. Bison" || (Enemy, Name = "Vega" && Enemy, AuthorName = "Phantom.of.the.Server") || (Enemy, Name = "Dictator" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) = 0) || Enemy, Name = "M.Bison" || Enemy, Name = "Bison" || Enemy, Name = "Bison Bison"
trigger2 = Enemy, Name = "cvsvega" || Enemy, Name = "cvsvega_normal" || Enemy, Name = "cvsvega_ex"
value = 91

[State 180, Victory Quote vs. Shin Vega (Dictator)]
type = VictoryQuote
trigger1 = Enemy, Name = "Vega" && Enemy, AuthorName = "KarmaCharmeleon" && Enemy, var(40) = 1
value = 92

[State 180, Victory Quote vs. Vice]
type = VictoryQuote
trigger1 = Enemy, Name = "Vice" || Enemy, Name = "cvsvice"
value = 93

[State 180, Victory Quote vs. Whip]
type = VictoryQuote
trigger1 = Enemy, Name = "Whip" || Enemy, Name = "cvswhip"
value = 94

[State 180, Victory Quote vs. Ryuji Yamazaki]
type = VictoryQuote
trigger1 = Enemy, Name = "Yamazaki" || Enemy, Name = "Ryuji Yamazaki" || Enemy, Name = "cvsyamazaki"
value = 95

[State 180, Victory Quote vs. Yang Lee / Yun Lee]
type = VictoryQuote
trigger1 = Enemy, Name = "Yang" || Enemy, Name = "Yang Lee" || Enemy, Name = "cvsyang"
trigger2 = Enemy, Name = "Yun" || Enemy, Name = "Yun Lee" || Enemy, Name = "cvsyun"
value = 96

[State 180, Victory Quote vs. Yashiro Nanakase]
type = VictoryQuote
trigger1 = Enemy, Name = "Yashiro" || Enemy, Name = "Yashiro Nanakase" || Enemy, Name = "cvsyashiro"
value = 97

[State 180, Victory Quote vs. Yuri Sakazaki]
type = VictoryQuote
trigger1 = Enemy, Name = "Yuri" || Enemy, Name = "Yuri Sakazaki" || Enemy, Name = "cvsyuri"
value = 98

[State 180, Victory Quote vs. Zangief]
type = VictoryQuote
trigger1 = Enemy, Name = "Zangief" || Enemy, Name = "cvszangief"
value = 99

[State 180, Win vs Rock Howard]
type = ChangeState
trigger1 = Enemy, Name = "Rock" || Enemy, Name = "Rock Howard" || Enemy, Name = "cvsrock"
value = 183

[State 180, Win vs Alice Nakata]
type = ChangeState
trigger1 = Enemy, Name = "Alice" || Enemy, Name = "Alice Nakata" || Enemy, Name = "cvsalice"
value = 184

[State 180, Win 1]
type = ChangeState
trigger1 = command = "holdstart"
trigger2 = command = "holda" || command = "holdb" || command = "holdc"
value = 181

[State 180, Win 2]
type = ChangeState
trigger1 = command = "holdx" || command = "holdy" || command = "holdz"
value = 182

[State 180, Win Decider]
type = ChangeState
trigger1 = 1
value = 181 + (Random % 2)



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
trigger1 = AnimElem = 5
value = 181, 0
channel = 0

[State 181, Cap]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 10181
ID = 10181
posType = P1
name = "Cap"
ownPal = 1



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

[State 182, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5 || AnimElem = 11
value = 181, 1
channel = 1

[State 182, Voice]
type = PlaySnd
trigger1 = AnimElem = 20
value = 182, 0
channel = 0



;====================<WIN VS ROCK HOWARD>====================
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
trigger1 = AnimElem = 8
value = 181, 0
channel = 0

[State 183, Woosh]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1, 1
channel = 1



;====================<WIN VS ????>====================
[StateDef 184]
type = S
physics = S
anim = 184
ctrl = 0

[State 184, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 100
flag = RoundNotOver

[State 184, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 184, 0
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
value = 195, 0
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
value = 5950, 0

[State 5950, Hitting the Floor Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = F7, 0

[State 5950, Hitting the Floor Explod]
type = Explod
trigger1 = AnimElem = 5
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
trigger2 = !SelfAnimExist(5120 + (Anim % 10))
value = 5120

[State 5120, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim = [5111, 5119]
trigger1 = SelfAnimExist(5120 + (Anim % 10))
value = 5120 + (Anim % 10)

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



;========================<HIT BY EX POWER DUNK>=============================
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
trigger1 = GetHitVar(chainID) != 1085 && GetHitVar(chainID) != 1430
trigger2 = HitOver
trigger2 = GetHitVar(chainID) = 1085 || GetHitVar(chainID) = 1430
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
trigger1 = GetHitVar(chainID) != 1340
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
value = ifElse(GetHitVar(chainID) = 1340, 5430, 5422)


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
trigger1 = GetHitVar(chainID) != 1120 && GetHitVar(chainID) != 1330 && GetHitVar(chainID) != 1400 && GetHitVar(chainID) != 1430
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5200

[State 5422, End]
type = ChangeState
trigger1 = GetHitVar(chainID) = 1430
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
y = -7.5

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
triggerAll = var(35) > 0
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
type = Null; VarSet
trigger1 = var(20)
;trigger1 = StateNo = ???
fvar(10) = ifElse(var(13), 0, 0.72)
ignoreHitPause = 1

[State -2, Dampener - Supers]
type = VarSet
trigger1 = (StateNo = [3000, 4999])
fvar(10) = ifElse(var(22), 0.6, ifElse(var(21), 0.8, 1.0))
ignoreHitPause = 1

[State -2, Dampener - Supers (EX Crack Shoot / EX Fire Kick / EX Power Charge / Buster Wolf)]
type = VarSet
trigger1 = (StateNo = [3000, 4999])
trigger1 = var(51) || var(52) || var(53) || var(54)
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
; Abstract Reordered: Terry's own combo dampener is off (the shared AR combo scaling does it)
[State -2, AR dampener off]
type = VarSet
triggerAll = !IsHelper
trigger1 = 1
fvar(11) = 1
ignoreHitPause = 1

;---------------------------------------------------------------------------
; Abstract Reordered: HUNGER GAUGE (var(55) 0-1000) and Wild Wolf (var(56) ticks left, 480 max)
[State -2, AR hunger reset]
type = VarSet
triggerAll = !IsHelper
trigger1 = RoundState < 2
var(55) = 0
ignoreHitPause = 1

[State -2, AR wolf reset]
type = VarSet
triggerAll = !IsHelper
trigger1 = RoundState < 2
var(56) = 0
ignoreHitPause = 1

[State -2, AR hunger hit]
type = VarAdd
triggerAll = !IsHelper
triggerAll = var(56) = 0 && var(55) < 1000
trigger1 = MoveHit = 1 && var(30) = HitPauseTime
var(55) = 70
ignoreHitPause = 1

[State -2, AR hunger guarded]
type = VarAdd
triggerAll = !IsHelper
triggerAll = var(56) = 0 && var(55) < 1000
trigger1 = MoveGuarded = 1 && var(30) = HitPauseTime
var(55) = 25
ignoreHitPause = 1

[State -2, AR hunger clamp]
type = VarSet
triggerAll = !IsHelper
trigger1 = var(55) > 1000
var(55) = 1000
ignoreHitPause = 1

[State -2, AR wolf timer]
type = VarAdd
triggerAll = !IsHelper
trigger1 = var(56) > 0 && RoundState = 2 && !(StateNo = 7900)
var(56) = -1

[State -2, AR wolf glow]
type = PalFX
triggerAll = !IsHelper
trigger1 = var(56) > 0
time = 1
add = 50, 0, 0
sinadd = 60, 10, 0, 18

[State -2, AR wolf damage]
type = AttackMulSet
triggerAll = !IsHelper
trigger1 = 1
value = ifelse(var(56) > 0 && ((StateNo = [1000, 1139]) || (StateNo = [1300, 1349])), 1.35, 1)

[State -2, Voice Position]
type = SndPan
trigger1 = 1
channel = 0
pan = 0
ignoreHitPause = 1

[State -2, Collapse Sound]
type = PlaySnd
trigger1 = StateNo != 5950
trigger1 = Anim = 5950 || Anim = 5955
trigger1 = AnimElem = 5
value = F7, 0

[State -2, Collapse FX]
type = Explod
trigger1 = StateNo != 5950
trigger1 = Anim = 5950 || Anim = 5955
trigger1 = AnimElem = 5
anim = F60
posType = P1
sprpriority = -3

[State -2, Guard Crush/Throw Escape voice]
type = PlaySnd
trigger1 = Anim = 5910 || Anim = 5920 || Anim = 5930
trigger1 = AnimElemTime(1) = 1
trigger2 = Anim = 5940 || Anim = 5945
trigger2 = AnimElem = 2 && StateNo != 890
value = 5940, 0
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

[State -2, EX Crack SHoot Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(51) = 0
ignoreHitPause = 1

[State -2, EX Fire Kick Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(52) = 0
ignoreHitPause = 1

[State -2, EX Power Charge Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(53) = 0
ignoreHitPause = 1

[State -2, Buster Wolf Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(54) = 0
ignoreHitPause = 1

[State -2, Remove Power Wave Energy]
type = RemoveExplod
trigger1 = StateNo != 1000 && StateNo != 1020 && StateNo != 1030 && StateNo != 1050 && StateNo != 1080 && NumExplod(1003)
ID = 1003

[State -2, Remove Burn Knuckle Energy]
type = RemoveExplod
trigger1 = StateNo != 1100 && StateNo != 1130 && NumExplod(1103)
ID = 1103

[State -2, Remove Quick Burn Energy]
type = RemoveExplod
trigger1 = StateNo != 1110 && NumExplod(1113)
ID = 1113

[State -2, Remove Crack Shoot Blur]
type = RemoveExplod
trigger1 = StateNo != 1300 && StateNo != 1330 && StateNo != 1340 && NumExplod(1310)
ID = 1310

[State -2, Remove Power Dunk Energy]
type = RemoveExplod
trigger1 = StateNo != 1400 && StateNo != 1410 && StateNo != 1430 && NumExplod(1403)
ID = 1403

[State -2, Remove Power Geyser Energy]
type = RemoveExplod
trigger1 = StateNo != 3000 && StateNo != 3050 && StateNo != 3060 && NumExplod(3003)
ID = 3003

[State -2, Remove Buster Wolf Energy]
type = RemoveExplod
trigger1 = StateNo != 3100 && StateNo != 3150 && NumExplod(3103)
ID = 3103

[State -2, Remove Trinity Geyser Energy]
type = RemoveExplod
trigger1 = StateNo != 3300 && NumExplod(3303)
ID = 3303

[State -2, Remove Rising Force Energy]
type = RemoveExplod
trigger1 = StateNo != 3400 && NumExplod(3403)
ID = 3403

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
trigger1 = StateNo != 1000 && StateNo != 1020 && StateNo != 1030 && StateNo != 1050 && StateNo != 1080
trigger1 = StateNo != 3000 && StateNo != 3050 && StateNo != 3205 && StateNo != 3255 && StateNo != 3300
trigger2 = (StateNo = 1000 || StateNo = 1020 || StateNo = 1030 || StateNo = 1050 || StateNo = 1080) && AnimElemTime(7) < 0
trigger3 = (StateNo = 3000 || StateNo = 3050) && AnimElemTime(7) < 0
trigger4 = (StateNo = 3205 || StateNo = 3255) && AnimElemTime(2) < 0
trigger5 = StateNo = 3300 && AnimElemTime(7) < 0
var(18) = 0

[State -3, Projectile Flag Reset]
type = VarSet
trigger1 = var(39) < 0
var(39) = 0
ignoreHitPause = 1

[State -3, Projectile Flag Off]
type = VarSet
trigger1 = !NumHelper(1005)
trigger1 = !NumHelper(1025)
trigger1 = !NumHelper(1035)
trigger1 = !NumHelper(1055)
trigger1 = !NumHelper(3005)
trigger1 = !NumHelper(3055)
trigger1 = !NumHelper(3065)
trigger1 = !NumHelper(3075)
trigger1 = !NumHelper(3215)
trigger1 = !NumHelper(3265)
trigger1 = !NumHelper(3305)
trigger1 = !NumHelper(3315)
trigger1 = !NumHelper(3325)
trigger1 = !NumHelper(3335)
trigger1 = !NumHelper(3345)
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
trigger3 = StateNo = 215 && MoveContact && AnimElemTime(5) < 0
trigger4 = StateNo = 225 && MoveContact && AnimElemTime(7) < 0
trigger5 = StateNo = 235 && MoveContact && AnimElemTime(4) < 0
trigger6 = StateNo = 245 && MoveContact && AnimElemTime(4) < 0
trigger7 = StateNo = 255 && MoveContact && AnimElemTime(7) < 0
trigger8 = StateNo = 400 && MoveContact
trigger9 = StateNo = 410 && MoveContact && AnimElemTime(5) < 0
trigger10 = StateNo = 428 && MoveContact && AnimElemTime(4) < 0
trigger11 = StateNo = 430 && MoveContact
trigger12 = StateNo = 440 && MoveContact && AnimElemTime(5) < 0
var(5) = 1
ignorehitpause = 1

[State -3, Cancel Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200, 699])
trigger2 = var(20) && (StateNo = [1000, 2999]) && (MoveContact || var(18))
trigger3 = (StateNo = [200, 699]) && Time <= 2 && (PrevStateNo != [200, 700])
trigger4 = StateNo = 200 && MoveContact
trigger5 = StateNo = 205 && MoveContact
trigger6 = StateNo = 215 && MoveContact && AnimElemTime(5) < 0
trigger7 = StateNo = 225 && MoveContact && AnimElemTime(7) < 0
trigger8 = StateNo = 235 && MoveContact && AnimElemTime(4) < 0
trigger9 = StateNo = 245 && MoveContact && AnimElemTime(4) < 0
trigger10 = StateNo = 255 && MoveContact && AnimElemTime(7) < 0
trigger11 = StateNo = 400 && MoveContact
trigger12 = StateNo = 410 && MoveContact && AnimElemTime(5) < 0
trigger13 = StateNo = 428 && MoveContact && AnimElemTime(4) < 0
trigger14 = StateNo = 430 && MoveContact
trigger15 = StateNo = 440 && MoveContact && AnimElemTime(5) < 0
trigger16 = (StateNo = [200, 699]) && MoveContact
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
trigger8 = StateNo = 218 && (AnimElemTime(7) < 0 || (MoveContact = [1,8]))
trigger9 = StateNo = 220 && (AnimElemTime(5) < 0 || (MoveContact = [1,8]))
trigger10 = StateNo = 225 && (AnimElemTime(7) < 0 || (MoveContact = [1,8]))
trigger11 = StateNo = 230 && (AnimElemTime(4) < 0 || (MoveContact = [1,8]))
trigger12 = StateNo = 235 && (AnimElemTime(4) < 0 || (MoveContact = [1,8]))
trigger13 = StateNo = 245 && (AnimElemTime(4) < 0 || (MoveContact = [1,8]))
trigger14 = StateNo = 255 && (AnimElemTime(7) < 0 || (MoveContact = [1,8]))
trigger15 = StateNo = 400
trigger16 = StateNo = 410 && (AnimElemTime(5) < 0 || (MoveContact = [1,8]))
trigger17 = StateNo = 420 && (AnimElemTime(5) < 0 || (MoveContact = [1,8]))
trigger18 = StateNo = 428 && (AnimElemTime(6) < 0 || (MoveContact = [1,8]))
trigger19 = StateNo = 430
trigger20 = StateNo = 440 && (AnimElemTime(5) < 0 || (MoveContact = [1,8]))
trigger21 = (StateNo = [1000, 1080]) && (AnimElemTime(7) = [1, 8])
trigger22 = StateNo = 1120 && AnimElemTime(11) < 0 && MoveContact
trigger23 = (StateNo = 1500 || StateNo = 1530) && AnimElemTime(7) < 0 && MoveContact
trigger24 = (StateNo = 1510 || StateNo = 1540) && AnimElemTime(9) < 0 && MoveContact
trigger25 = (StateNo = 1600 || StateNo = 1630) && AnimElemTime(7) < 0 && MoveContact
trigger26 = (StateNo = [200, 699]) && MoveContact
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
trigger2 = StateNo = 3110 && AnimElemTime(17) < 0 && MoveContact
trigger3 = StateNo = 3205 && AnimElemTime(5) < 0 && var(18)
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
triggerAll = (StateType = S || StateType = C || StateNo = 1300 || StateNo = 1330 || StateNo = 1340) && NumTarget
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
trigger1 = (StateNo = 3300 || StateNo = 3400 || StateNo = 3500) && Time = 43
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
trigger1 = StateNo = 3000 || StateNo = 3050 || StateNo = 3100 || StateNo = 3150 || StateNo = 3200 || StateNo = 3250
trigger2 = StateNo = 3300 || StateNo = 3400 || StateNo = 3500
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
triggerAll = StateType = A && MoveType != H && NumEnemy && StateNo != 1300 && StateNo != 1330
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
value = 5000, (Random % 3)
channel = 0
ignoreHitPause = 1

[State -3, Get Hit Sound]
type = PlaySnd
triggerAll = Alive && Time = 1
trigger1 = (StateNo = 5000 || StateNo = 5010) && NumEnemy
trigger1 = GetHitVar(fall) || (EnemyNear, HitDefAttr = SCA,SA,HA)
trigger2 = (StateNo = 5020 || StateNo = 5070 || StateNo = 5080)
trigger3 = (StateNo = 5050 || StateNo = 5100) && (PrevStateNo != [5000,5199])
value = 5000, (Random % 3)
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
trigger2 = StateNo = 810 && (AnimElemTime(4) = [1, 2])
trigger3 = StateNo = 820 && (AnimElemTime(4) = [1, 2])
trigger4 = NumHelper(1005)
trigger4 = (Helper(1005), StateNo = [1005, 1007]) && (Helper(1005), var(18))
trigger5 = NumHelper(1025)
trigger5 = (Helper(1025), StateNo = [1025, 1027]) && (Helper(1025), var(18))
trigger6 = NumHelper(1055)
trigger6 = (Helper(1055), StateNo = [1055, 1057]) && (Helper(1055), var(18))
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
trigger4 = NumHelper(3065)
trigger4 = (Helper(3065), StateNo = [3005, 3007]) && (Helper(3065), var(18))
trigger4 = var(23) := 3000
trigger5 = NumHelper(3075)
trigger5 = (Helper(3075), StateNo = [3005, 3007]) && (Helper(3075), var(18))
trigger5 = var(23) := 3000
trigger6 = StateNo = [3100, 3199]
trigger6 = var(23) := 3100
trigger7 = StateNo = [3200, 3299]
trigger7 = var(23) := 3200
trigger8 = NumHelper(3215)
trigger8 = ((Helper(3215), StateNo = [3215, 3216]) || (Helper(3215), StateNo = 3007)) && (Helper(3215), var(18))
trigger8 = var(23) := 3200
trigger9 = NumHelper(3265)
trigger9 = ((Helper(3265), StateNo = [3215, 3216]) || (Helper(3265), StateNo = 3007)) && (Helper(3265), var(18))
trigger9 = var(23) := 3200
trigger10 = NumHelper(3305)
trigger10 = ((Helper(3305), StateNo = [3305, 3306]) || (Helper(3305), StateNo = 3007)) && (Helper(3305), var(18))
trigger10 = var(23) := 3300
trigger11 = NumHelper(3315)
trigger11 = ((Helper(3315), StateNo = [3305, 3306]) || (Helper(3315), StateNo = 3007)) && (Helper(3315), var(18))
trigger11 = var(23) := 3300
trigger12 = NumHelper(3325)
trigger12 = ((Helper(3325), StateNo = [3305, 3306]) || (Helper(3325), StateNo = 3007)) && (Helper(3325), var(18))
trigger12 = var(23) := 3300
trigger13 = NumHelper(3335)
trigger13 = ((Helper(3335), StateNo = [3305, 3306]) || (Helper(3335), StateNo = 3007)) && (Helper(3335), var(18))
trigger13 = var(23) := 3300
trigger14 = NumHelper(3345)
trigger14 = ((Helper(3345), StateNo = [3305, 3306]) || (Helper(3345), StateNo = 3007)) && (Helper(3345), var(18))
trigger14 = var(23) := 3300
trigger15 = StateNo = [3400, 3499]
trigger15 = var(23) := 3400
helperType = Normal
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

