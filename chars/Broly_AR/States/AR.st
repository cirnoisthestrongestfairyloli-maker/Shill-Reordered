;---------------------------------------------------------------------------
; Abstract Reordered additions for Broly: parry (Z), burst (A+B+C), barrier (X),
; ground bounce for the EX Gigantic Strike.
;---------------------------------------------------------------------------

[Statedef 7740]
type     = U
movetype = I
physics  = N
ctrl     = 0
anim     = ifelse(StateType = C, 131, ifelse(StateType = A, 132, 130))
sprpriority = 2

[State 7740, Air physics]
type = StateTypeSet
trigger1 = StateType = A
physics = A
ignorehitpause = 1
persistent = 1

[State 7740, Catch]
type = ReversalDef
trigger1 = Time = 0
reversal.attr = SCA, NA, SA, HA, NP, SP, HP, AA, AP
pausetime = 0, 13
numhits = 0
sparkno = -1
sparkxy = 0, 0
hitsound = -1, -1
p1stateno = 7741

[State 7740, Catch window]
type = HitOverride
trigger1 = Time = [3, 12]
time = 1
attr = SCA, NA, SA, HA, NP, SP, HP, AA, AP
stateno = 7741
ignorehitpause = 1

[State 7740, Flash]
type = PalFX
trigger1 = Time = 3
time = 9
add = 40, 170, 60
sinadd = 64, 32, 5, 31

[State 7740, Hold pose]
type = ChangeAnim
trigger1 = AnimTime = 0
value = Anim
elem = AnimElemNo(0)

[State 7740, Stay put]
type = VelSet
trigger1 = StateType != A
x = 0
y = 0

[State 7740, Ground whiff]
;window passed without catching anything
type = ChangeState
trigger1 = StateType != A
trigger1 = Time >= 13
value = 7748

[State 7740, Air whiff]
type = ChangeState
trigger1 = StateType = A
trigger1 = Time >= 20
value = 7749

;---------------------------------------------------------------------------
; Parry success

[Statedef 7741]
type     = U
movetype = I
physics  = N
ctrl     = 0
velset   = 0, 0
anim     = ifelse(StateType = C, 131, ifelse(StateType = A, 132, 130))

[State 7741, Air physics]
type = StateTypeSet
trigger1 = StateType = A
physics = A
ignorehitpause = 1
persistent = 1

[State 7741, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F6, 0

[State 7741, Meter]
type = PowerAdd
trigger1 = Time = 0
value = 40
ignorehitpause = 1
persistent = 1

[State 7741, Life]
type = LifeAdd
trigger1 = Time = 0
value = 4
ignorehitpause = 1
persistent = 1

[State 7741, Safe]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 18

[State 7741, Freeze]
type = Pause
trigger1 = Time = 0
time = 15
movetime = 15
ignorehitpause = 1
persistent = 1

[State 7741, Flash]
type = EnvColor
trigger1 = Time = 0
value = 255, 230, 200
time = 1

[State 7741, Hold pose]
type = ChangeAnim
trigger1 = AnimTime = 0
value = Anim
elem = AnimElemNo(0)

[State 7741, Stop in air]
type = VelSet
trigger1 = StateType = A
trigger1 = Time = 0
x = 0
y = 0

[State 7741, Free to act]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 7741, Ground end]
type = ChangeState
trigger1 = StateType != A
trigger1 = Time >= 15
value = ifelse(StateType = C, 11, 0)
ctrl = 1

[State 7741, Air end]
type = ChangeState
trigger1 = StateType = A
trigger1 = Time >= 20
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Parry whiffed on the ground: -80 meter, stuck for 18 frames (minus)

[Statedef 7748]
type     = U
movetype = I
physics  = U
ctrl     = 0
velset   = 0, 0

[State 7748, Cost]
type = PowerAdd
trigger1 = Time = 0
value = -80

[State 7748, Failed]
type = PalFX
trigger1 = Time = 0
time = 18
add = -40, -40, -40
mul = 200, 200, 200

[State 7748, Hold pose]
type = ChangeAnim
trigger1 = AnimTime = 0
value = Anim
elem = AnimElemNo(0)

[State 7748, Recover]
type = ChangeState
trigger1 = Time >= 18
value = ifelse(StateType = C, 11, 0)
ctrl = 1

;---------------------------------------------------------------------------
; Parry whiffed in the air: -80 meter, no control until he lands (landing goes to 52)

[Statedef 7749]
type     = A
movetype = I
physics  = A
ctrl     = 0

[State 7749, Cost]
type = PowerAdd
trigger1 = Time = 0
value = -80

[State 7749, Failed]
type = PalFX
trigger1 = Time = 0
time = 18
add = -40, -40, -40
mul = 200, 200, 200

[State 7749, Hold pose]
type = ChangeAnim
trigger1 = AnimTime = 0
value = Anim
elem = AnimElemNo(0)

;---------------------------------------------------------------------------
; Burst (from Kamijo): A+B+C while being hit. Invincible, blows the opponent away, no damage.
; Recharges in 75 seconds (var(41), counted down in State -1), fresh every round.

[Statedef 7720]
type     = S
movetype = I
physics  = N
velset   = 0, 0
ctrl     = 0
facep2   = 1
anim     = ifelse(StateType = A, 9605, 9604)
sprpriority = 3

[State 7720, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 7720, Hold pose]
type = ChangeAnim
trigger1 = AnimTime = 0
value = Anim
elem = AnimElemNo(0)

[State 7720, Cooldown]
type = VarSet
trigger1 = Time = 0
var(41) = 4500

[State 7720, Sound]
type = PlaySnd
trigger1 = Time = 0
value = 9600, 0
volume = 255
channel = -1

[State 7720, Voice]
type = PlaySnd
trigger1 = Time = 0
value = 3, 2
channel = 0

[State 7720, Effect]
type = Explod
trigger1 = Time = 0
anim = 9600
ID = 9600
pos = 0, -55
postype = p1
bindtime = -1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
sprpriority = 6
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 7720, Flash]
type = PalFX
trigger1 = Time = 0
time = 12
add = 120, 120, 120

[State 7720, Shake]
type = EnvShake
trigger1 = Time = 0
time = 12
ampl = 4

[State 7720, Attacking]
type = StateTypeSet
trigger1 = Time = 4
movetype = A

[State 7720, Done attacking]
type = StateTypeSet
trigger1 = Time = 10
movetype = I

[State 7720, Blow away]
type = HitDef
trigger1 = Time = [4, 9]
trigger1 = !MoveContact
attr = S, NA
damage = 0
animtype = Light
guardflag =
hitflag = MAF
priority = 7, Hit
pausetime = 0, 0
sparkno = -1
hitsound = -1
ground.type = High
ground.slidetime = 5
ground.hittime = 12
ground.velocity = -18.4, -5
air.type = High
air.velocity = -18.4, -4
air.hittime = 12
airguard.velocity = -18.9, -0.8
fall = 1
fall.recover = 0
;hard knockdown: no tech, no quick rise
down.recover = 0
down.recovertime = 50
getpower = 0
givepower = 0
ground.cornerpush.veloff = 0

[State 7720, End]
type = ChangeState
trigger1 = Time >= 32
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 7721]
type     = A
movetype = I
physics  = N
velset   = 0, 0
ctrl     = 0
facep2   = 1
anim     = ifelse(StateType = A, 9605, 9604)
sprpriority = 3

[State 7721, Invincible]
type = NotHitBy
trigger1 = Time < 30
value = SCA

[State 7721, Hold pose]
type = ChangeAnim
trigger1 = AnimTime = 0
value = Anim
elem = AnimElemNo(0)

[State 7721, Cooldown]
type = VarSet
trigger1 = Time = 0
var(41) = 4500

[State 7721, Sound]
type = PlaySnd
trigger1 = Time = 0
value = 9600, 0
volume = 255
channel = -1

[State 7721, Voice]
type = PlaySnd
trigger1 = Time = 0
value = 3, 2
channel = 0

[State 7721, Effect]
type = Explod
trigger1 = Time = 0
anim = 9600
ID = 9600
pos = 0, -55
postype = p1
bindtime = -1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
sprpriority = 6
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 7721, Flash]
type = PalFX
trigger1 = Time = 0
time = 12
add = 120, 120, 120

[State 7721, Shake]
type = EnvShake
trigger1 = Time = 0
time = 12
ampl = 4

[State 7721, Attacking]
type = StateTypeSet
trigger1 = Time = 4
movetype = A

[State 7721, Done attacking]
type = StateTypeSet
trigger1 = Time = 10
movetype = I

[State 7721, Blow away]
type = HitDef
trigger1 = Time = [4, 9]
trigger1 = !MoveContact
attr = A, NA
damage = 0
animtype = Light
guardflag =
hitflag = MAF
priority = 7, Hit
pausetime = 0, 0
sparkno = -1
hitsound = -1
ground.type = High
ground.slidetime = 5
ground.hittime = 12
ground.velocity = -18.4, -5
air.type = High
air.velocity = -18.4, -4
air.hittime = 12
airguard.velocity = -18.9, -0.8
fall = 1
fall.recover = 0
;hard knockdown: no tech, no quick rise
down.recover = 0
down.recovertime = 50
getpower = 0
givepower = 0

[State 7721, Fall]
type = VelAdd
trigger1 = Time >= 24
y = 0.47

[State 7721, Land]
type = ChangeState
trigger1 = Time >= 24
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 1

;---------------------------------------------------------------------------
; Barrier (hold X): an energy shell that only stops special and super attacks
; (attacks and projectiles). Normal attacks still hit him. Release X to drop it.
[Statedef 7730]
type     = S
movetype = I
physics  = S
anim     = 130
velset   = 0, 0
ctrl     = 0
sprpriority = 2

[State 7730, Shell]
type = Explod
trigger1 = NumExplod(7730) = 0
anim = 1156
ID = 7730
pos = 0, -55
postype = p1
bindtime = -1
removetime = -1
scale = 2.2, 2.2
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 7730, Glow]
type = PalFX
trigger1 = Time % 12 = 0
time = 6
add = 20, 90, 30

[State 7730, Stops specials]
type = HitOverride
trigger1 = 1
attr = SCA, SA, HA, SP, HP
stateno = 7731
time = 1
ignorehitpause = 1

[State 7730, Drop it]
type = ChangeState
trigger1 = command != "ar_hold_x"
trigger1 = Time >= 8
value = 7732

[Statedef 7731]
type     = S
movetype = I
physics  = S
velset   = 0, 0
ctrl     = 0

[State 7731, Stops specials]
type = HitOverride
trigger1 = 1
attr = SCA, SA, HA, SP, HP
stateno = 7731
time = 1
ignorehitpause = 1

[State 7731, Block sound]
type = PlaySnd
trigger1 = Time = 0
value = F6, 0

[State 7731, Flash]
type = PalFX
trigger1 = Time = 0
time = 8
add = 80, 220, 100

[State 7731, Push]
type = VelSet
trigger1 = Time = 0
x = -2

[State 7731, Slow]
type = VelMul
trigger1 = 1
x = 0.8

[State 7731, Back]
type = ChangeState
trigger1 = Time >= 6
value = 7730

[Statedef 7732]
type     = S
movetype = I
physics  = S
ctrl     = 0
velset   = 0, 0

[State 7732, Shell off]
type = RemoveExplod
trigger1 = Time = 0
ID = 7730

[State 7732, Done]
type = ChangeState
trigger1 = Time >= 6
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Ground bounce (EX Gigantic Strike slam): spiked into the floor, bounces up, juggleable, no tech
[Statedef 7715]
type     = A
movetype = H
physics  = N
ctrl     = 0
velset   = 0, 0

[State 7715, Anim]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse(SelfAnimExist(5060), 5060, 5050)

[State 7715, Spike]
type = VelSet
trigger1 = Time = 0
x = -2
y = 10

[State 7715, Hit the floor]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 7716

[State 7715, Safety]
type = SelfState
trigger1 = Time >= 60
value = 5050

[Statedef 7716]
type     = A
movetype = H
physics  = N
ctrl     = 0

[State 7716, Floor]
type = PosSet
trigger1 = Time = 0
y = 0

[State 7716, Bounce]
type = VelSet
trigger1 = Time = 0
x = -1.5
y = -9

[State 7716, Anim]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse(SelfAnimExist(5160), 5160, 5050)

[State 7716, Shake]
type = EnvShake
trigger1 = Time = 0
time = 12
ampl = 5

[State 7716, Thud]
type = PlaySnd
trigger1 = Time = 0
value = F7, 0

[State 7716, Back to their own fall]
;their own fall state keeps the bounce velocity; they can be hit again (juggled) on the way up and down
type = SelfState
trigger1 = Time >= 1
value = 5050

;---------------------------------------------------------------------------
; Abstract Reordered: 214C (EX Gigantic Spike) held C follow-up - launches them straight up
; so Broly can chase with the 623 air grab. If it somehow misses, they are released the normal way.
[Statedef 7760]
type = S
movetype = A
physics = S
anim = 240
velset = 0, 0
ctrl = 0
juggle = 0
sprpriority = 2
facep2 = 1

[State 7760, Keep them in front]
type = TargetBind
trigger1 = numtarget
trigger1 = !movecontact
time = 1
pos = 45, 0

[State 7760, Launch]
type = HitDef
trigger1 = animelem = 6
attr = S, NA
damage = 60, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag =
hitflag = MAFD
priority = 7, Hit
pausetime = 8, 12
sparkno = -1
hitsound = s5, 0
ground.type = High
ground.velocity = -1, -11
air.velocity = -1, -11
air.hittime = 60
fall = 1
fall.recover = 0
air.fall = 1
envshake.time = 10
envshake.ampl = 6

[State 7760, Free to chase]
type = CtrlSet
trigger1 = movehit
trigger1 = animelemtime(6) >= 6
value = 1

[State 7760, Missed: release them]
type = TargetState
trigger1 = animtime = 0
trigger1 = numtarget
trigger1 = target, stateno = 1508
value = 1116712

[State 7760, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
