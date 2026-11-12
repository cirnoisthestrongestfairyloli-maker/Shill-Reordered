;---------------------------------------------------------------------------
; Abstract Reordered additions for Meiling & Sakuya: partner, tag, parry (Z), burst (A+B+C)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; The partner (helper 40000): Sakuya while Meiling is on point, Meiling while Sakuya is.
; Follows close behind, only hittable while attacking.
; Helper vars: var(1) = anim to show, var(10) = 214 version (read by the projectiles), fvar(0) = distance to her spot

[Statedef 38000]
type     = S
movetype = I
physics  = N
ctrl     = 0
anim     = 40000*(root,var(47)=0)
velset   = 0, 0
sprpriority = 0

[State 38000, Fresh]
type = VarSet
trigger1 = Time = 0
var(10) = 0

[State 38000, Safe]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 38000, No push]
type = PlayerPush
trigger1 = 1
value = 0

[State 38000, Same facing]
type = Turn
trigger1 = facing != root,facing

[State 38000, Her spot (stays put during Sakuya's Level 3 cinematics)]
type = VarSet
trigger1 = 1
fvar(0) = ifelse(root,stateno = [44000,44299], 0, root,pos x - 30 * root,facing - pos x)

[State 38000, Move]
type = VelSet
trigger1 = 1
x = facing * ifelse(abs(fvar(0)) < 3, 0, ifelse(fvar(0) > 0, 1, -1) * ifelse(abs(fvar(0)) * 0.2 > 7, 7, ifelse(abs(fvar(0)) * 0.2 < 1.5, 1.5, abs(fvar(0)) * 0.2)))
y = 0

[State 38000, On the ground]
type = PosSet
trigger1 = pos y != 0
y = 0

[State 38000, Pick anim]
type = VarSet
trigger1 = 1
var(1) = 40000*(root,var(47)=0) + ifelse(abs(fvar(0)) >= 45, ifelse(fvar(0) * facing > 0, 100, 21), ifelse(abs(fvar(0)) >= 3, ifelse(fvar(0) * facing > 0, 20, 21), 0))

[State 38000, Anim]
type = ChangeAnim
trigger1 = anim != var(1)
value = var(1)

[State 38000, Tag (both taunt and swap places)]
type = ChangeState
trigger1 = root,stateno = 7760
trigger1 = root,time <= 1
value = 38070

[State 38000, AR combo assist call]
type = ChangeState
trigger1 = root,var(48) > 0
value = 38300

[State 38000, Called (214)]
type = VarSet
trigger1 = root,var(45) > 0
var(10) = root,var(45)

[State 38000, Request taken]
type = rootVarSet
trigger1 = root,var(45) > 0
var(45) = 0

[State 38000, Attack]
type = ChangeState
trigger1 = var(10) > 0
value = ifelse(root,var(47) = 0, 38100, 38200)

;---------------------------------------------------------------------------
; Partner hit while attacking: knocked back and dizzy for 3 seconds (no partner attacks, no switch)

[Statedef 38050]
type     = S
movetype = I
physics  = N
ctrl     = 0
anim     = 5001 + 40000*(root,var(47)=0)
velset   = -3.5, 0
sprpriority = 0

[State 38050, Safe]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 38050, No push]
type = PlayerPush
trigger1 = 1
value = 0

[State 38050, Flash]
type = PalFX
trigger1 = Time = 0
time = 10
add = 120, 120, 120

[State 38050, Slow down]
type = VelMul
trigger1 = Time < 20
x = 0.85

[State 38050, Dizzy]
type = ChangeAnim
trigger1 = Time = 20
value = 5300 + 40000*(root,var(47)=0)

[State 38050, Stop]
type = VelSet
trigger1 = Time >= 20
x = 0

[State 38050, Stunned marker]
type = PalFX
trigger1 = Time >= 20
trigger1 = Time % 30 = 0
time = 15
add = 40, 40, 0
sinadd = 40, 40, 0, 15

[State 38050, Recover]
type = ChangeState
trigger1 = Time >= 180
value = 38000

;---------------------------------------------------------------------------
; Tag: the one leaving plays her taunt quickly and takes the spot the new point character left

[Statedef 38070]
type     = S
movetype = I
physics  = N
ctrl     = 0
anim     = 195 + 40000*(root,var(47)=0)
velset   = 0, 0
sprpriority = 0

[State 38070, Swap places]
type = PosAdd
trigger1 = Time = 0
x = (root,fvar(20) - pos x) * facing

[State 38070, Safe]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 38070, No push]
type = PlayerPush
trigger1 = 1
value = 0

[State 38070, Back to following]
type = ChangeState
trigger1 = Time >= 20
value = 38000

;---------------------------------------------------------------------------
; Tag: the new point character plays her taunt quickly (X)

[Statedef 7760]
type     = S
movetype = I
physics  = S
ctrl     = 0
anim     = 195 + 40000 * var(47)
velset   = 0, 0

[State 7760, Swap places]
type = PosAdd
trigger1 = Time = 0
trigger1 = NumHelper(40000)
x = (helper(40000),pos x - pos x) * facing

[State 7760, No leftover spellcard timers]
type = VarSet
trigger1 = Time = 0
var(7) = 0

[State 7760, Ready]
type = ChangeState
trigger1 = Time >= 20
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Calling the partner (214 from neutral): a short pause so the button doesn't also do a normal

[Statedef 38090]
type     = S
movetype = I
physics  = S
ctrl     = 0
anim     = 40000 * var(47)
velset   = 0, 0

[State 38090, Done]
type = ChangeState
trigger1 = Time >= 6
value = 0
ctrl = 1

[Statedef 38100]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 15
velset = 0,0
anim = 41300+1*(var(10)=2)+2*(var(10)=3)+0*floor(cond(var(57)=5,var(57):=0,1))+0*floor(var(16):=0)
sprpriority = 1
facep2 = 1

[State 38100, Combo flags]
type = rootVarSet
trigger1 = Time = 0
var(16) = 0

[State 38100, Partner hit while attacking: stunned]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 38050
time = 1
ignorehitpause = 1

[State 38100, No push]
type = PlayerPush
trigger1 = 1
value = 0

[State 1300, PSND]
type = playsnd
trigger1 = animelemtime(7)=-1
value = 41300,0
channel = 0

[State 1300, PSND]
type = playsnd
trigger1 = animelemtime(7)=-1
trigger2 = animelemtime(7)=2
trigger3 = animelemtime(7)=5
value = 41300,10
channel = 2

[State 1300, Knife 1]
type = Helper
trigger1 = animelemtime(7)=-1
trigger2 = animelemtime(7)=2
trigger3 = animelemtime(7)=5
ownpal = 1
postype = P1
name = "Bounce Knife"
pos = 40*ifelse(anim = 41301,-1,1),-70
ID = 1310+1*(animelemtime(7)=2)+2*(animelemtime(7)=5)+10*(var(10)=2)+20*(var(10)=3)+40000*(var(50)>0)
facing = 1;-2*(var(10)=2);ifelse(var(10)=2,-1,1)
stateno = 61300
[State 1300, Knife 1]
type = Helper
trigger1 = animelemtime(7)=-1
trigger2 = animelemtime(7)=2
trigger3 = animelemtime(7)=5
ownpal = 1
postype = P1
name = "Bounce Knife"
pos = 40*ifelse(anim = 41301,-1,1),-70
ID = 1313+1*(animelemtime(7)=2)+2*(animelemtime(7)=5)+10*(var(10)=2)+20*(var(10)=3)+40000*(var(50)>0)
facing = 1;-2*(var(10)=2);ifelse(var(10)=2,-1,1)
stateno = 61300

[State 21000, STS]
type = statetypeset
trigger1 = animelemtime(7)>=7
movetype = I
ignorehitpause = 1
persistent = 0

[State 1300, CS]
type = changestate
trigger1 = animtime = 0
value = 38000

;-----------------------
; Bounce Knife

[Statedef 38200]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
poweradd = 15*(var(10)>=2)*(var(7)<=0)
anim = 1000+1*(var(10)=2)+2*(var(10)=3)
sprpriority = 1
juggle = 0
facep2 = 1

[State 38200, Combo flags]
type = rootVarSet
trigger1 = Time = 0
var(24) = 0

[State 38200, Combo rate]
type = rootVarSet
trigger1 = Time = 0
var(57) = 0

[State 38200, Partner hit while attacking: stunned]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 38050
time = 1
ignorehitpause = 1

[State 38200, No push]
type = PlayerPush
trigger1 = 1
value = 0

[State 1000, CA]
type = changeanim
trigger1 = time = 0
trigger1 = var(10)>=2
trigger1 = var(7)>0
value = anim+30

[State 1000, VS]
type = veladd
triggerall = var(10)>1
trigger1 = animelemtime(7)=0
x = 0*(var(10)=2)+3*(var(10)=3)

[State 1000, PSND]
type = playsnd
trigger1 = var(10)>1
trigger1 = animelemtime(1)=0
value = 1000,0
channel = 0

[State 1000, Helper]
type = Helper
triggerall = var(10)>=2
triggerall = animelemtime(8)>=0
trigger1 = var(10)=2 && animelemtime(8)<17
trigger2 = var(10)>=3 && animelemtime(8)<33
helpertype = normal
name = "Wave"
ID = 21000
pos = 33,-48
postype = p1
stateno = 21000
keyctrl = 0
ownpal = 1
size.xscale = 0.8
size.yscale = 1.0
persistent = 8

[State 1000, PSND]
type = playsnd
triggerall = var(10)>1
trigger1 = animelemtime(8)=0
trigger2 = animelemtime(8)=8
trigger3 = animelemtime(8)=16
trigger4 = var(10)>=3
trigger4 = animelemtime(8)=24
trigger5 = var(10)>=3
trigger5 = animelemtime(8)=32
value = 1000,10
channel = 2

[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = var(10)<=1
trigger1 = time = 0
trigger2 = var(10)=2
trigger2 = animelemtime(8)=18
trigger3 = var(10)>=3
trigger3 = animelemtime(8)=34
movetype = I

[State 38200, Back to following]
type = ChangeState
trigger1 = animtime = 0
value = 38000


[Statedef 7740]
type     = U
movetype = I
physics  = N
ctrl     = 0
anim     = ifelse(StateType = C, 131, ifelse(StateType = A, 132, 130)) + 40000 * var(47)
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
add = 170, 70, 110
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
anim     = ifelse(StateType = C, 131, ifelse(StateType = A, 132, 130)) + 40000 * var(47)

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
; Recharges in 75 seconds (var(35), counted down in State -1), fresh every round.

[Statedef 7750]
type     = S
movetype = I
physics  = N
velset   = 0, 0
ctrl     = 0
facep2   = 1
anim     = ifelse(StateType = A, 9605, 9604) + 40000 * var(47)
sprpriority = 3

[State 7750, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 7750, Hold pose]
type = ChangeAnim
trigger1 = AnimTime = 0
value = Anim
elem = AnimElemNo(0)

[State 7750, Cooldown]
type = VarSet
trigger1 = Time = 0
var(35) = 4500

[State 7750, Sound]
type = PlaySnd
trigger1 = Time = 0
value = 9600, 0
volume = 255
channel = -1

[State 7750, Voice]
type = PlaySnd
trigger1 = Time = 0
value = ifelse(var(47) = 1, 41300, 3000), ifelse(var(47) = 1, 0, 2)
channel = 0

[State 7750, Flash]
type = PalFX
trigger1 = Time = 0
time = 12
add = 120, 120, 120

[State 7750, Shake]
type = EnvShake
trigger1 = Time = 0
time = 12
ampl = 4

[State 7750, Attacking]
type = StateTypeSet
trigger1 = Time = 4
movetype = A

[State 7750, Done attacking]
type = StateTypeSet
trigger1 = Time = 10
movetype = I

[State 7750, Burst cloud ground]
type = Explod
trigger1 = Time = 4
trigger1 = StateType != A
anim = 9670
ID = 9670
pos = 0, 50
postype = p1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
scale = 1, 1
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 7750, Burst cloud air]
type = Explod
trigger1 = Time = 4
trigger1 = StateType = A
anim = 9671
ID = 9671
pos = 0, -50
postype = p1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
scale = 1, 1
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 7750, Blow away]
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

[State 7750, End]
type = ChangeState
trigger1 = Time >= 32
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 7751]
type     = A
movetype = I
physics  = N
velset   = 0, 0
ctrl     = 0
facep2   = 1
anim     = ifelse(StateType = A, 9605, 9604) + 40000 * var(47)
sprpriority = 3

[State 7751, Invincible]
type = NotHitBy
trigger1 = Time < 30
value = SCA

[State 7751, Hold pose]
type = ChangeAnim
trigger1 = AnimTime = 0
value = Anim
elem = AnimElemNo(0)

[State 7751, Cooldown]
type = VarSet
trigger1 = Time = 0
var(35) = 4500

[State 7751, Sound]
type = PlaySnd
trigger1 = Time = 0
value = 9600, 0
volume = 255
channel = -1

[State 7751, Voice]
type = PlaySnd
trigger1 = Time = 0
value = ifelse(var(47) = 1, 41300, 3000), ifelse(var(47) = 1, 0, 2)
channel = 0

[State 7751, Flash]
type = PalFX
trigger1 = Time = 0
time = 12
add = 120, 120, 120

[State 7751, Shake]
type = EnvShake
trigger1 = Time = 0
time = 12
ampl = 4

[State 7751, Attacking]
type = StateTypeSet
trigger1 = Time = 4
movetype = A

[State 7751, Done attacking]
type = StateTypeSet
trigger1 = Time = 10
movetype = I

[State 7751, Burst cloud ground]
type = Explod
trigger1 = Time = 4
trigger1 = StateType != A
anim = 9670
ID = 9670
pos = 0, 50
postype = p1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
scale = 1, 1
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 7751, Burst cloud air]
type = Explod
trigger1 = Time = 4
trigger1 = StateType = A
anim = 9671
ID = 9671
pos = 0, -50
postype = p1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
scale = 1, 1
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 7751, Blow away]
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

[State 7751, Fall]
type = VelAdd
trigger1 = Time >= 24
y = 0.47

[State 7751, Land]
type = ChangeState
trigger1 = Time >= 24
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 1

;---------------------------------------------------------------------------
; AR combo assist: appears beside the opponent and launches them so the combo can continue
[Statedef 38300]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = ifelse(root,var(47) = 0, 40220, 220)
sprpriority = 3
juggle = 0
facep2 = 1

[State 38300, Request taken]
type = rootVarSet
trigger1 = Time = 0
var(48) = 0

[State 38300, Appear beside the opponent]
type = PosSet
trigger1 = Time = 0 && NumEnemy
x = enemynear,pos x - 44 * facing
y = ifelse(enemynear,pos y < 0, enemynear,pos y, 0)

[State 38300, Partner hit while attacking: stunned]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 38050
time = 1
ignorehitpause = 1

[State 38300, No push]
type = PlayerPush
trigger1 = 1
value = 0

[State 38300, Snd]
type = PlaySnd
trigger1 = root,var(47) = 1
trigger1 = animelemtime(4) = 0
value = 420,0
channel = 0

[State 38300, Snd]
type = PlaySnd
trigger1 = root,var(47) = 1
trigger1 = animelemtime(4) = 0
value = 0,2

[State 38300, Snd]
type = PlaySnd
trigger1 = root,var(47) = 0
trigger1 = animelemtime(4) = 0
value = 40220,0
channel = 0

[State 38300, Snd]
type = PlaySnd
trigger1 = root,var(47) = 0
trigger1 = animelemtime(4) = 0
value = 40000,2

[State 38300, Meiling steps in]
type = PosAdd
trigger1 = root,var(47) = 1
trigger1 = animelemtime(2) = 0 || animelemtime(3) = 0 || animelemtime(4) = 0
x = 7

[State 38300, Meiling standing heavy]
type = HitDef
trigger1 = root,var(47) = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger1 = !movecontact && !movereversed
attr = S,NA
damage = 60,0
animtype = Heavy
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,-50
hitsound = S1,2
guardsound = S2,0
ground.slidetime = 22
ground.hittime = 32
air.hittime = 32
guard.slidetime = 17
guard.hittime = 17
ground.velocity = -3,0
air.type = High
air.velocity = -3,-4.5
givepower = 45,45
hitflag = MAF
guardflag = M
priority = 4,Hit
ground.type = High
yaccel = 0.5
air.fall = 1
fall.recover = 0
getpower = 0,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 38300
p2facing = 1

[State 38300, Sakuya second hit]
type = MoveHitReset
trigger1 = root,var(47) = 0
trigger1 = animelemtime(5) = 0

[State 38300, Sakuya standing heavy]
type = HitDef
triggerall = root,var(47) = 0
triggerall = !movecontact && !movereversed
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger2 = animelemtime(5) >= 0 && animelemtime(6) < 0
attr = S,NA
damage = 45,0
animtype = Hard
pausetime = 6,6
sparkno = S48025+(random%2)
guard.sparkno = S48030
sparkxy = -10,-44
hitsound = S40001,12
guardsound = S40002,0
ground.slidetime = 17
ground.hittime = 30
air.hittime = 30
guard.slidetime = 13
guard.hittime = 13
ground.velocity = -3,0
air.velocity = -3,-3.5
givepower = 22,22
hitflag = MAF
guardflag = M
priority = 4,Hit
ground.type = High
yaccel = 0.5
air.fall = 1
fall.recover = 0
getpower = 0,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 38300
p2facing = 1
[State 38300, Back to following]
type = ChangeState
trigger1 = AnimTime = 0
value = 38000

;---------------------------------------------------------------------------
; ==== Abstract Reordered: Sakuya vs DIO intro ====
; Sakuya side (MeiSaku_AR). DIO runs the matching state 7820. Sakuya takes point (var(47) = 1) and keeps it.
[Statedef 7820]
type     = S
movetype = I
physics  = S
ctrl     = 0
anim     = 40000
velset   = 0, 0
sprpriority = 2

[State 7820, Sakuya on point]
type = VarSet
trigger1 = Time = 0
var(47) = 1

[State 7820, Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 7820, Safe]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 7820, Stay]
type = VelSet
trigger1 = 1
x = 0

[State 7820, Knife throw]
type = ChangeAnim
trigger1 = Time = 110
value = 41000

[State 7820, Throw voice]
type = PlaySnd
trigger1 = Time = 112
value = 41000, 0
channel = 0

[State 7820, Knife sound]
type = PlaySnd
trigger1 = Time = 124
value = 41000, 10
channel = 1

[State 7820, Frozen knife 1]
type = Explod
trigger1 = Time = 125
anim = 61000
ID = 7821
pos = P2Dist X - 34, -38
postype = p1
bindtime = 0
removetime = 200
sprpriority = 4
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 7820, Frozen knife 2]
type = Explod
trigger1 = Time = 127
anim = 61000
ID = 7821
pos = P2Dist X - 47, -52
postype = p1
bindtime = 0
removetime = 200
sprpriority = 4
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 7820, Frozen knife 3]
type = Explod
trigger1 = Time = 129
anim = 61000
ID = 7821
pos = P2Dist X - 60, -66
postype = p1
bindtime = 0
removetime = 200
sprpriority = 4
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 7820, Frozen knife 4]
type = Explod
trigger1 = Time = 131
anim = 61000
ID = 7821
pos = P2Dist X - 73, -38
postype = p1
bindtime = 0
removetime = 200
sprpriority = 4
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 7820, Frozen knife 5]
type = Explod
trigger1 = Time = 133
anim = 61000
ID = 7821
pos = P2Dist X - 86, -52
postype = p1
bindtime = 0
removetime = 200
sprpriority = 4
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 7820, Frozen knife 6]
type = Explod
trigger1 = Time = 135
anim = 61000
ID = 7821
pos = P2Dist X - 99, -66
postype = p1
bindtime = 0
removetime = 200
sprpriority = 4
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 7820, Stand]
type = ChangeAnim
trigger1 = Time >= 140
trigger1 = Anim = 41000
trigger1 = AnimTime = 0
value = 40000

[State 7820, Taunt]
type = ChangeAnim
trigger1 = Time = 240
value = 40195

[State 7820, Subtitle 1]
type = Explod
trigger1 = Time = 240
anim = 9720
ID = 9720
pos = GameWidth / 2, GameHeight - 50
postype = left
bindtime = -1
removetime = 75
scale = .5, .5
sprpriority = 10
ontop = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 7820, Time resumes: knives fly]
type = ModifyExplod
trigger1 = Time = 300
ID = 7821
vel = 7, 0

[State 7820, Knives deflected]
type = RemoveExplod
trigger1 = Time = 318
ID = 7821

[State 7820, Deflect sound]
type = PlaySnd
trigger1 = Time = 310 || Time = 316
value = 41000, 10
channel = 2

[State 7820, Taunt over]
type = ChangeAnim
trigger1 = Time >= 250
trigger1 = Anim = 40195
trigger1 = AnimTime = 0
value = 40000

[State 7820, End]
type = ChangeState
trigger1 = Time >= 420
value = 0
ctrl = 1

