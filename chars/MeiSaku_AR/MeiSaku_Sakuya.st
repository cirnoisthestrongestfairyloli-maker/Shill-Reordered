;Sakuya_RP by RicePigeon, ported into MeiSaku_AR (Abstract Reordered): states, anims, sounds +40000

[Statedef 40170]
type = S
ctrl = 0
anim = 40170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Draw game (time over)

[Statedef 40180]
type = S

[State 180, Generic Win Quote]
type = victoryquote
trigger1 = Time = 0
value = 1+(random%6)

[State 180, Mima Win Quote]
type = victoryquote
triggerall = numenemy
trigger1 = Time = 0
trigger1 = enemy,name = "Mima_RP" || enemy,name = "Sakunyu"
value = 7+(random%2)

[State 180, Yukari Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Yukari_Yakumo" || enemy,name = "Yukari Yakumo" || enemy,name = "Yukari_RP"
trigger2 = enemy,name = "Yakumo Yukari" || enemy,name = "Yukari_hsts"
trigger3 = enemy,name = "Yukari_THIZ"
value = 9+(random%2)

[State 180, Hong Meiling Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Meiling_RP" || enemy,name = "Hong Meirin" || enemy,name = "Hong Meiling"
trigger2 = enemy,name = "Meiling_K" || enemy,name = "Meiling_THIZ"
value = 11+(random%2)

[State 180, Lie Meiling Win Quote]
type = victoryquote
triggerall = numenemy
trigger1 = Time = 0
trigger1 = enemy,name = "Lie_RP" || enemy,name = "LieMeiling_RP"
value = 13+(random%2)

[State 180, Alice Margatroid Win Quote]
type = victoryquote
triggerall = numenemy
trigger1 = Time = 0
trigger1 = enemy,name = "Alice_RP" || enemy,name = "Alice Margatroid" || enemy,name = "Alice_THIZ"
value = 15+(random%2)

[State 180, Patchouli Knowledge Win Quote]
type = victoryquote
triggerall = numenemy
trigger1 = Time = 0
trigger1 = enemy,name = "Patchouli_RP" || enemy,name = "Patchouli Knowledge" || enemy,name = "Patchouli"
value = 17+(random%2)

[State 180, Koakuma Win Quote]
type = victoryquote
triggerall = numenemy
trigger1 = Time = 0
trigger1 = enemy,name = "Koa_RP" || enemy,name = "Koakuma" || enemy,name = "Random Touhou Succubus"
value = 19+(random%2)

[State 180, Reimu Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Reimu_RP" || enemy,name = "Reimu"
trigger2 = enemy,name = "Reimu Hakurei" || enemy,name = "Hakurei Reimu"
trigger3 = enemy,name = "Reimu_THIZ"
value = 21+(random%2)

[State 180, Sakuya Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Sakuya_RP" || enemy,name = "Sakuya_K"
trigger2 = enemy,name = "Sakuya Izayoi" || enemy,name = "Izayoi Sakuya" || enemy,name = "Sakuya_THIZ"
value = 23+(random%2)

[State 180, Remilia Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Remilia_RP" || enemy,name = "Remilia_K"
trigger2 = enemy,name = "Remilia Scarlet" || enemy,name = "Remilia_THIZ"
value = 25+(random%2)

[State 180, Kanako Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Kanako_RP" || enemy,name = "Kanako_Yasaka" || enemy,name = "Yasaka Kanako"
value = 27+(random%2)

[State 180, Meimu Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Meimu_RP" || enemy,name = "Meimu_GRBoss"
value = 29+(random%2)

[State 180, CS]
type = ChangeState
trigger1 = Time = 0
value = 40181+(random%2)

;---------------------------------------------------------------------------
; Win pose 1

[Statedef 40181]
type = S
ctrl = 0
anim = 40181
velset = 0,0

[State 181, PSND]
type = playsnd
trigger1 = animelemtime(5)=0
value = 40001,0

[State 181, PSND]
type = playsnd
trigger1 = animelemtime(6)=0
value = 40181,0
channel = 0

[State 181, ASS]
type = assertspecial
trigger1 = time <= 60
flag = roundnotover

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 2

[Statedef 40182]
type = S
ctrl = 0
anim = 40182
velset = 0,0

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(9)=0
value = 41200,10

[State 181, EXPLOD]
type = explod
trigger1 = animelemtime(7)>=0 && animelemtime(9)<0
anim = 59601+(random%6)
removetime = 24
vel = 0.5*(random%9)-2.0,-1-0.5*(random%3)
accel = 0.0,0.4
postype = p1
pos = 4,-62
ownpal = 0
sprpriority = 2
removeongethit = 1
ignorehitpause = 0
pausemovetime = 9999

[State 1200, Teleport FX]
type = explod
trigger1 = animelemtime(9)=0
anim = 61200
id = 21200
pos = 0,0
vel = 3.5,0.0
ownpal = 1
facing = 1
sprpriority = 5
pausemovetime = 9999
[State 1200, Teleport FX]
type = explod
trigger1 = animelemtime(9)=0
anim = 61200
id = 21200
pos = 0,0
vel = -3.5,0.0
ownpal = 1
facing = 1
sprpriority = 5
pausemovetime = 9999

[state 182, ASS]
type = assertspecial
trigger1 = time < 90
flag = roundnotover

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Introduction

[Statedef 40191]
type = S
ctrl = 0
anim = 41998
velset = 0,0

[State 191, Alternate Intro]
type = changestate
trigger1 = time = 0
;trigger1 = random%3=[0,1]
trigger1 = random%2=0
value = 40193;+(random%2)

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 1200, CA]
type = changeanim
trigger1 = time = 30
value = 40191

[State 191, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 1000, PSND]
type = playsnd
trigger1 = anim = 40191
trigger1 = animelemtime(1)=0
value = 41200,10

[State 1200, Teleport FX]
type = explod
trigger1 = anim = 40191
trigger1 = animelemtime(1)=0
anim = 61201
id = 21201
pos = 20,0
vel = -2,0
ownpal = 1
facing = 1
sprpriority = 5
;pausemovetime = 9999
[State 1200, Teleport FX]
type = explod
trigger1 = anim = 40191
trigger1 = animelemtime(1)=0
anim = 61201
id = 21201
pos = -20,0
vel = 2,0
ownpal = 1
facing = 1
sprpriority = 5
;pausemovetime = 9999

[State 191, PSND]
type = playsnd
trigger1 = anim = 40191
trigger1 = animelemtime(3)=0
value = 40190, 1
channel = 0

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = anim = 40191
trigger1 = animtime = 0;time > 180
value = 0

;---------------------------------------------------------------------------
; Introduction

[Statedef 40192]
type = S
ctrl = 0
anim = 40192
velset = 0,0

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = animtime = 0
value = 0

;---------------------------------------------------------------------------
; Introduction 2

[Statedef 40193]
type = S
ctrl = 0
anim = 41998
velset = 0,0
sprpriority = 0

[State 191, PSND]
type = playsnd
trigger1 = anim = 40190
trigger1 = animelemtime(3)=0
value = 40190,2
channel = 0

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 620, Explod FX]
type = explod
trigger1 = time = 30
persistent = 0
anim = 40020
id = 20
postype = p1
pos = -180,0
vel = 3,0
ownpal = 0
sprpriority = 0
removetime = 60
removeongethit = 1
ignorehitpause = 0
pausemovetime = 9999

[State 620, CA]
type = changeanim
trigger1 = time = 90
value = 40190

[State 4000, PSND]
type = playsnd
trigger1 = anim = 40190
trigger1 = animelemtime(3)=0
value = 40190,0
channel = 0

[State 191, 3]
type = ChangeState
trigger1 = anim = 40190
trigger1 = animtime = 0
value = 0

;---------------------------------------------------------------------------
; Taunt

[Statedef 40195]
type = S
movetype = I
physics = S
ctrl = 0
anim = 40195+1*(random%2)
velset = 0,0
sprpriority = 1

[State 181, PSND]
type = playsnd
trigger1 = anim = 40195
trigger1 = animelemtime(5)=0
value = 40001,0

[State 181, PSND]
type = playsnd
trigger1 = anim = 40195
trigger1 = animelemtime(9)=0
value = 40195,0
channel = 0

[State 181, PSND]
type = null;playsnd
trigger1 = anim = 40196
trigger1 = animelemtime(1)=0
value = 195,1

[State 181, EXPLOD]
type = explod
trigger1 = anim = 40196
trigger1 = animelemtime(7)>=0 && animelemtime(18)<0
persistent = 3
anim = 59601+(random%6)
removetime = 24
vel = 0.5*(random%9)-2.0,-1-0.5*(random%3)
accel = 0.0,0.4
postype = p1
pos = 4,-62
ownpal = 0
sprpriority = 2
removeongethit = 1
ignorehitpause = 0
pausemovetime = 9999

[State 195, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 40001]
sprpriority = 0
ctrl = 0
[State 1, VS] ;Flag to let state 40 know the A.I. came from state 52
type = VarSet
trigger1 = prevstateno = 40052
sysvar(1) = 1
[State 1, CS]
type = changestate
trigger1 = 1
value = 40040
;---------------------------------------------------------------------------
; AI JUMP FWD

[Statedef 40002]
sprpriority = 0
ctrl = 0
[State 1, VS] ;Flag to let state 40 know the A.I. came from state 52
type = VarSet
trigger1 = prevstateno = 40052
sysvar(1) = 1
[State 1, CS]
type = changestate
trigger1 = 1
value = 40040
;---------------------------------------------------------------------------
; AI JUMP NEUT

[Statedef 40003]
sprpriority = 0
ctrl = 0
[State 1, VS] ;Flag to let state 40 know the A.I. came from state 52
type = VarSet
trigger1 = prevstateno = 40052
sysvar(1) = 1
[State 1, CS]
type = changestate
trigger1 = 1
value = 40040

;---------------------------------------------------------------------------
; Stand to Crouch

[Statedef 40010]
type = C
physics = C
anim = 40010

[State 10, 1]
type = VelMul
trigger1 = Time = 0
x = .75

[State 10, 2] ;Stop moving if low velocity
type = VelSet
trigger1 = abs(vel x) < Const(movement.crouch.friction.threshold)
x = 0

[State 10, 3]
type = ChangeState
trigger1 = animtime = 0
value = 11

;---------------------------------------------------------------------------
; Crouching

[Statedef 40012]
type = S
physics = S
anim = 40012

[State 12, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0

;---------------------------------------------------------------------------
; Walk

[Statedef 40040]
type = S
physics = S
;anim = 40
ctrl = 0
sprpriority = 1
facep2 = 1

[State 40]
type = Changestate
trigger1 = time = 0
trigger1 = AILevel > 0
trigger1 = prevstateno != 40001 && prevstateno != 40002 && prevstateno != 40003
value = 0
ctrl = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 40040

[State 40, GrabInv]
type = NotHitBy
trigger1 = time = 0 && prevstateno != 40052
value = ,AT
time = abs(AnimTime)

[State 40, 1]
type = VarSet
trigger1 = time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = AILevel <= 0
trigger1 = command = "holdfwd"
trigger2 = AILevel > 0
trigger2 = prevstateno = 40002
sysvar(1) = 1

[State 40, 3]
type = VarSet
trigger1 = AILevel <= 0
trigger1 = command = "holdback"
trigger2 = AILevel > 0
trigger2 = prevstateno = 40001
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = animtime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, 3.0, -3.0))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = animtime = 0
trigger1 = prevstateno = 40100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = animtime = 0
value = 40050
ctrl = 1

;---------------------------------------------------------------------------
; AirJump Start

[Statedef 40045]
type = A
physics = N
ctrl = 0
velset = 0,0

[State 45, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(40044)
value = 40044

[State 45, 2]
type = ChangeAnim
trigger1 = !SelfAnimExist(40044)
value = 40041

[State 45, 3]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 45, 4]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 45, 5]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 45, 6]
type = VelSet
trigger1 = Time = 2
x = ifelse(sysvar(1)=0, const(velocity.airjump.neu.x), ifelse(sysvar(1)=1, const(velocity.airjump.fwd.x), const(velocity.airjump.back.x)))
y = const(velocity.airjump.y)

[State 45, 7]
type = ChangeState
trigger1 = Time = 2
value = 40050
ctrl = 1

;---------------------------------------------------------------------------
; Jump Up

[Statedef 40050]
type = A
physics = A

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 40000+(ifelse((vel x)=0,41,ifelse((vel x)>0,42,43)))

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > Const720p(-8)
trigger1 = SelfAnimExist(anim + 3)
trigger1 = anim >= 40041 && anim <= 40043
persistent = 0
value = Anim + 3

;---------------------------------------------------------------------------
; Jump Down (empty state for compatibility)

[Statedef 40051]
type = A
physics = A

[State 51, 1]
type = Null
trigger1 = 1

;---------------------------------------------------------------------------
; Jump Land

[Statedef 40052]
type = S
physics = S
ctrl = 0
anim = 40047

[State 52, REX]
type = removeexplod
trigger1 = numexplod(20620)
id = 20620
ignorehitpause = 1

[State 52, Landing Sound]
type = playsnd
trigger1 = time = 0
value = 40040,0

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, Crouch Guard Workaround]
type = StateTypeSet
trigger1 = command="holddown"
statetype = C
physics = C

[State 52, Stand Guard workaround]
type = StateTypeSet
trigger1 = command!="holddown"
statetype = S
physics = S

[State 52, 3]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 52, 4]
type = VelSet
trigger1 = abs(vel x) < Const(movement.stand.friction.threshold)
x = 0

[State 52, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Forward Dash

[Statedef 40100]
type = S
physics = S
anim = 40100
ctrl = 0
sprpriority = 1

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn
ignorehitpause = 1

[State 100, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 40100,0
persistent = 0

[State 100, Physics]
type = statetypeset
trigger1 = animelemtime(3)=0
physics = N
ignorehitpause = 1

[State 100, Velset]
type = velset
trigger1 = animelemtime(3)=0
x = 7.0

[State 100, Velset]
type = posadd
trigger1 = animelemtime(3)=[0,1]
x = floor(1.5*7.0)

[State 100, Jump]
type = ChangeState
trigger1 = animelemtime(3)>1
trigger1 = !AILevel
trigger1 = command = "holdfwd" && command = "holdup"
value = 40040

[State 100, Friction]
type = velmul
trigger1 = animelemtime(3)>0
trigger1 = vel x > 7.0
x = 0.92

[State 100, Friction]
type = velset
trigger1 = animelemtime(3)>0
trigger1 = vel x < 7.0
x = 7.0

[State 100, Explod]
type = Explod
trigger1 = animelemtime(3)=0
anim = 50101
ID = 10101
pos = 35,-45
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
pausemovetime = cond(var(50),99999999999,0)
supermovetime = cond(var(50),99999999999,0)

[State 100, Effect]
type = helper
trigger1 = animelemtime(3)=0
helpertype = normal
name = "Dash_FX"
ID = 10100
pos = 77,-45
postype = p1
stateno = 50100
ownpal = 1
facing = 1
pausemovetime = cond(var(50),99999999999,0)

[State 100, Explod]
type = Explod
trigger1 = animelemtime(3)>=0
trigger1 = time%3=0
trigger1 = random%2=0
anim = 50102
ID = 10102
pos = 10-floor(65.0*random/1000.0),-5-floor(40.0*random/1000.0)
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
pausemovetime = cond(var(50),99999999999,0)
supermovetime = cond(var(50),99999999999,0)

[State 100, 4]
type = ChangeState
triggerall = time >= 16
trigger1 = command != "holdfwd"
trigger2 = time >= 70
value = 40101

;---------------------------------------------------------------------------
; Dash Skid

[Statedef 40101]
type = S
physics = S
anim = 40101
sprpriority = 1

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn
ignorehitpause = 1

[State 100, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hop Backwards

[Statedef 40105]
type = S
physics = S
ctrl = 0
anim = 40105
sprpriority = 1

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn
ignorehitpause = 1

[State 105, SCA]
type = nothitby
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 8
ignorehitpause = 1

[State 100, PSND]
type = playsnd
trigger1 = animelemtime(5)=0
value = 40100,0
persistent = 0

[State 105, STS]
type = statetypeset
trigger1 = animelemtime(5)=0
statetype = A
physics = N
ignorehitpause = 1

[State 105, PA]
type = PosAdd
trigger1 = animelemtime(1)=0
trigger2 = animelemtime(2)=0
trigger3 = animelemtime(3)=0
trigger4 = animelemtime(4)=0
x = -9

[State 105, 1]
type = VelSet
trigger1 = animelemtime(5)=0
x = -6.0
y = -3.0

[State 105, Gravity]
type = veladd
trigger1 = animelemtime(5)>2
y = 0.5
ignorehitpause = 1

[State 100, Explod]
type = Explod
trigger1 = animelemtime(5)=0
anim = 50101
ID = 10101
pos = 17,-46
postype = p1 ;p2,front,back,left,right
facing = -1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
pausemovetime = cond(var(50),99999999999,0)
supermovetime = cond(var(50),99999999999,0)

[State 100, Effect]
type = helper
trigger1 = animelemtime(5)=0
helpertype = normal
name = "Dash_FX"
ID = 10100
pos = -29,-50
postype = p1
stateno = 50100
ownpal = 1
facing = -1
pausemovetime = cond(var(50),99999999999,0)

[State 100, Explod]
type = Explod
trigger1 = animelemtime(5)>=0
trigger1 = time%3=0
trigger1 = random%2=0
anim = 50102
ID = 10102
pos = 55-floor(65.0*random/1000.0),-23-floor(50.0*random/1000.0)
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
pausemovetime = cond(var(50),99999999999,0)
supermovetime = cond(var(50),99999999999,0)

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -(vel y)
value = 40106

;---------------------------------------------------------------------------
; Hop Backwards (land)

[Statedef 40106]
type = S
physics = S
ctrl = 0
anim = 40106

[State 106, PSND]
type = playsnd
trigger1 = time = 0
value = 40040,0

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk
ignorehitpause = 1

[State 106, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 106, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 106, 4]
type = VelSet
trigger1 = abs(vel x) < Const(movement.stand.friction.threshold)
x = 0

[State 106, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Air Dash Forward

[Statedef 40110]
type = A
physics = N
velset = 0,0
ctrl = 0
anim = 40110
sprpriority = 1

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoAirGuard
flag2 = noautoturn
ignorehitpause = 1

[State 100, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 40100,0
persistent = 0

[State 100, Physics]
type = statetypeset
trigger1 = animelemtime(3)=0
physics = N
ignorehitpause = 1

[State 100, Velset]
type = velset
trigger1 = animelemtime(3)=0
x = 7.0
y = -2.7

[State 110, Gravity]
type = veladd
trigger1 = animelemtime(3)>0
y = 0.3+0.2*(animelemtime(9)>=0)
ignorehitpause = 1

[State 100, Explod]
type = Explod
trigger1 = animelemtime(3)=0
anim = 50101
ID = 10101
pos = 15,-50
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
pausemovetime = cond(var(50),99999999999,0)
supermovetime = cond(var(50),99999999999,0)

[State 100, Effect]
type = helper
trigger1 = animelemtime(3)=0
helpertype = normal
name = "Dash_FX"
ID = 10100
pos = 55,-50
postype = p1
stateno = 50100
ownpal = 1
facing = 1
pausemovetime = cond(var(50),99999999999,0)

[State 100, Explod]
type = Explod
trigger1 = animelemtime(3)>=0 && animelemtime(9)<0
trigger1 = time%3=0
trigger1 = random%2=0
anim = 50102
ID = 10102
pos = 10-floor(65.0*random/1000.0),-20-floor(40.0*random/1000.0)
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
pausemovetime = cond(var(50),99999999999,0)
supermovetime = cond(var(50),99999999999,0)

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -(vel y)
value = 40106

;---------------------------------------------------------------------------
; Air Dash Backwards

[Statedef 40115]
type = A
physics = N
ctrl = 0
anim = 40115
velset = 0,0
sprpriority = 1

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoAirGuard
flag2 = NoAutoTurn
ignorehitpause = 1

[State 100, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 40100,0
persistent = 0

[State 105, 1]
type = VelSet
trigger1 = animelemtime(4)=0
x = -6.0
y = -2.7

[State 105, Gravity]
type = veladd
trigger1 = animelemtime(4)>0
y = 0.3+0.2*(animelemtime(8)>=0)
ignorehitpause = 1

[State 100, Explod]
type = Explod
trigger1 = animelemtime(4)=0
anim = 50101
ID = 10101
pos = -2,-52
postype = p1 ;p2,front,back,left,right
facing = -1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
pausemovetime = cond(var(50),99999999999,0)
supermovetime = cond(var(50),99999999999,0)

[State 100, Effect]
type = helper
trigger1 = animelemtime(4)=0
helpertype = normal
name = "Dash_FX"
ID = 10100
pos = -42,-55
postype = p1
stateno = 50100
ownpal = 1
facing = -1
pausemovetime = cond(var(50),99999999999,0)

[State 100, Explod]
type = Explod
trigger1 = animelemtime(4)>=0 && animelemtime(8)<0
trigger1 = time%3=0
trigger1 = random%2=0
anim = 50102
ID = 10102
pos = 55-floor(65.0*random/1000.0),-25-floor(60.0*random/1000.0)
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
pausemovetime = cond(var(50),99999999999,0)
supermovetime = cond(var(50),99999999999,0)

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -(vel y)
value = 40106

;---------------------------------------------------------------------------
; GUARD (start)

[Statedef 40120]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged

[State 120, 0]
type = CtrlSet
trigger1 = AILevel > 0 && numenemy
value = enemynear(0),movetype != A || enemynear(0),time >= 120

[State 120, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 40120 + (statetype = C) + (statetype = A)*2

[State 120, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 120, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 120, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 120, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 120, 5]
type = ChangeState
trigger1 = animtime = 0
value = 40130 + (statetype = C) + (statetype = A)*2

[State 120, Stop Guarding]
type = ChangeState
trigger1 = cond(p2dist x<0,(command!="holdfwd"),(command!="holdback"))
trigger2 = !inguarddist
value = 40140

;---------------------------------------------------------------------------
; Stand guard (guarding)

[Statedef 40130]
type = S
physics = S

[State 130, 0]
type = CtrlSet
trigger1 = AILevel > 0 && numenemy
value = enemynear(0),movetype != A || enemynear(0),time >= 120

[State 130, 1]
type = ChangeAnim
trigger1 = Anim != 40130
value = 40130

[State 130, Hi to Lo]
type = ChangeState
trigger1 = command = "holddown"
value = 40131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = cond(p2dist x<0,(command!="holdfwd"),(command!="holdback"))
trigger2 = !inguarddist
value = 40140

;---------------------------------------------------------------------------
; Crouch guard (guarding)

[Statedef 40131]
type = C
physics = C

[State 131, 0]
type = CtrlSet
trigger1 = AILevel > 0 && numenemy
value = enemynear(0),movetype != A || enemynear(0),time >= 120

[State 131, 1]
type = ChangeAnim
trigger1 = Anim != 40131
value = 40131

[State 131, Lo to Hi]
type = ChangeState
trigger1 = command != "holddown"
value = 40130

[State 131, Stop Guarding]
type = ChangeState
trigger1 = cond(p2dist x<0,(command!="holdfwd"),(command!="holdback"))
trigger2 = !inguarddist
value = 40140

;---------------------------------------------------------------------------
; Air guard (guarding)

[Statedef 40132]
type = A
physics = N

[State 131, 0]
type = CtrlSet
trigger1 = AILevel > 0 && numenemy
value = enemynear(0),movetype != A || enemynear(0),time >= 120

[State 132, 1]
type = ChangeAnim
trigger1 = Anim != 40132
value = 40132

[State 132, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 132, 3]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= -(vel y)) && (vel y > 0)

[State 132, 4]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, 5]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = cond(p2dist x<0,(command="holdfwd"),(command="holdback"))
trigger1 = inguarddist
value = 40130

[State 132, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 40052

[State 132, Stop Guarding]
type = ChangeState
trigger1 = cond(p2dist x<0,(command!="holdfwd"),(command!="holdback"))
trigger2 = !inguarddist
value = 40140

;---------------------------------------------------------------------------
; Guard (end)

[Statedef 40140]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged
ctrl = 1

[State 140, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 40140 + (statetype = C) + (statetype = A)*2

[State 140, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 140, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 140, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 140, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 140, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

;---------------------------------------------------------------------------
; Stand guard hit (shaking)

[Statedef 40150]
type = S
movetype = H
physics = N
velset = 0,0

[State 150, 1]
type = ChangeAnim
trigger1 = 1
value = 40150

[State 150, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 40151 + 2*(command = "holddown")

[State 150, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 150, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 150, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 3

;---------------------------------------------------------------------------
; Stand guard hit (knocked back)

[Statedef 40151]
type = S
movetype = H
physics = S
anim = 40150

[State 151, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 151, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 151, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 151, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 151, 4]
type = ChangeState
trigger1 = HitOver
value = 40130
ctrl = 1

;---------------------------------------------------------------------------
; Crouch guard hit (shaking)

[Statedef 40152]
type = C
movetype = H
physics = N
velset = 0,0

[State 152, 1]
type = ChangeAnim
trigger1 = 1
value = 40151

[State 152, 3]
type = ChangeState
trigger1 = HitShakeOver
value = 40151 + 2*(command = "holddown")

[State 152, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 152, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 152, 4]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; Crouch guard hit (knocked back)

[Statedef 40153]
type = C
movetype = H
physics = C
anim = 40151

[State 153, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 153, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 153, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 153, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 153, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 153, 4]
type = ChangeState
trigger1 = HitOver
value = 40131
ctrl = 1

;---------------------------------------------------------------------------
; Air guard hit (shaking)

[Statedef 40154]
type = A
movetype = H
physics = N
velset = 0,0

[State 154, 1]
type = ChangeAnim
trigger1 = 1
value = 40152

[State 154, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 40155 ;AGUARDHIT2

[State 154, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; Air guard hit (knocked away)

[Statedef 40155]
type = A
movetype = H
physics = N
anim = 40152

[State 155, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 155, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 155, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 155, 4]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= -(vel y)) && (vel y > 0)

[State 155, 5]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = cond(p2dist x<0,(command="holdfwd"),(command="holdback"))
trigger1 = inguarddist
value = 40130

[State 155, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 40052

;---------------------------------------------------------------------------
; Lose (time over)

[Statedef 40175]
type = S
ctrl = 0
velset = 0,0

[State 175, 1] ; If no anim, use go to lose state.
type = ChangeState
trigger1 = Time = 0
trigger1 = !SelfAnimExist(40175)
value = 40170

[State 175, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(40175)
value = 40175

[State 175, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Pre-intro

[Statedef 40190]
type = S
ctrl = 0
velset = 0,0

[State 190, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(40190)
value = 40190

[State 190, 2] ;Go straight to intro.
type = ChangeState
trigger1 = Time = 0
value = 40191

;---------------------------------------------------------------------------
; Stand get-hit (shaking)

[Statedef 45000]
type = S
movetype = H
physics = N
velset = 0,0

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = 40000+(ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype))

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 45030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(45047 + GetHitVar(animtype)))
value = 45047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 45000
trigger2 = anim = 45010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 45001
trigger2 = anim = 45011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 45012
trigger2 = anim = 45002
trigger3 = anim = 45030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 45001 ;Stand get-hit (knocked back)

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 45030

;---------------------------------------------------------------------------
; Stand get-hit (knocked back)

[Statedef 45001]
type = S
movetype = H
physics = S

[State 5001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5001, 2]
type = ChangeAnim
trigger1 = animtime = 0
value = 45005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10

[State 5001, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5001, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5001, 6]
type = ChangeState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouch get-hit (shaking)

[Statedef 45010]
type = C
movetype = H
physics = N
velset = 0,0

[State 5010, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = 45020 + GetHitVar(animtype)

[State 5010, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 45030

[State 5010, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(45047 + GetHitVar(animtype)))
value = 45047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5010, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5010, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
triggerall = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5010, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 45011 ;Crouch get-hit (knocked back)

[State 5010, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 45030

[State 5010, FFB Light]
type = ForceFeedback
trigger1 = anim = 45020
persistent = 0
time = 6
waveform = square

[State 5010, FFB Medium]
type = ForceFeedback
trigger1 = anim = 45021
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5010, FFB Hard]
type = ForceFeedback
trigger1 = anim = 45022
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; Crouch get-hit (knocked back)

[Statedef 45011]
type = C
movetype = H
physics = C

[State 5011, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5011, 2]
type = ChangeAnim
trigger1 = animtime = 0
value = 45025 + GetHitVar(animtype)

[State 5011, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5011, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5011, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5011, 6]
type = ChangeState
trigger1 = HitOver
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Air get-hit (shaking)

[Statedef 45020]
type = A
movetype = H
physics = N
velset = 0,0

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = 40000+(ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype))

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 45030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(45047 + GetHitVar(animtype)))
value = 45047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 45030

[State 5020, FFB Light]
type = ForceFeedback
trigger1 = anim = 45000
trigger2 = anim = 45010
persistent = 0
time = 6
waveform = square

[State 5020, FFB Medium]
type = ForceFeedback
trigger1 = anim = 45001
trigger2 = anim = 45011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5020, FFB Hard]
type = ForceFeedback
trigger1 = anim = 45012
trigger2 = anim = 45002
trigger3 = anim = 45030
trigger4 = anim = [45051,45059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; Air get-hit (knocked away)

[Statedef 45030]
type = A
movetype = H
physics = N
ctrl = 0

[State 5030, 1]
type = ChangeAnim
trigger1 = Anim != [45000,45199]
trigger1 = SelfAnimExist(45030)
value = 45030

[State 5030, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 3]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 4]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0 ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 45040 ;HITA_RECOV

[State 5030, 5]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0 ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 45050 ;HITA_FALL

[State 5030, 6]
type = ChangeState
trigger1 = animtime = 0
value = 45035 ;Air get-hit (transition)

;---------------------------------------------------------------------------
; Air get-hit (transition)

[Statedef 45035]
type = A
movetype = H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(45035)
trigger1 = Anim != [45051,45059] ;Not if in hit up anim
trigger1 = Anim != 45090 ;Not if hit off ground anim
value = 45035

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, CA]
type = changeanim
triggerall = anim != 45040
triggerall = !hitfall
trigger1 = anim = 45035 && animtime = 0
trigger2 = time = 0 && anim != 45035
value = 45040

[State 5035, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver ;Hit is over
trigger2 = Vel Y > 0 ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 45040 ;Air get-hit (recovering in air, not falling)

[State 5035, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver ;Hit is over
trigger2 = animtime = 0 ;Anim is over
trigger3 = Vel Y > 0 ;Hit ground
trigger3 = Pos Y >= Const(movement.air.gethit.groundlevel)
trigger4 = Time = 0 ;No transition anim
trigger4 = Anim != 45035
value = 45050 ;Air get-hit (falling)

;---------------------------------------------------------------------------
; Air get-hit (recovering in air, not falling)

[Statedef 45040]
type = A
movetype = H
physics = N

[State 5040, 1]
type = ChangeState
trigger1 = !Alive
value = 45050
ctrl = 0

[State 5040, 2]
type = ChangeAnim
trigger1 = animtime = 0
trigger1 = Anim != 45040
trigger2 = Time = 0
trigger2 = Anim != 45035 && anim != 45040
value = 45040

[State 5040, 3]
type = CtrlSet
trigger1 = HitOver
value = 1

[State 5040, 4]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5040, 5]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5040, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -(vel y)
value = 40052 ;Jump land

;---------------------------------------------------------------------------
; Air get-hit (falling)

[Statedef 45050]
type = A
movetype = H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = animtime = 0
trigger1 = Anim = 45035
trigger2 = Time = 0 ;If no transition anim
trigger2 = Anim != 45035
trigger2 = (Anim != [45051,45059]) && (Anim != [45061,45069])
trigger2 = Anim != 45090 ;Not if hit off ground anim
value = 45050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [45050,45059]
trigger1 = Vel Y >= ifelse(anim = 45050,Const720p(4),Const720p(-8))
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 45200 ;Air get-hit (fall recovery on ground)

[State 5050, 5] ;Recover in mid air
type = ChangeState
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 45210 ;Air get-hit (fall recovery in air)

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [45051,45059]) || (anim = [45061,45069]),0,Const(movement.air.gethit.groundlevel))
value = 45100 ;Downed get-hit (hit ground from fall)

;---------------------------------------------------------------------------
; Tripped get-hit (shaking)

[Statedef 45070]
type = A
movetype = H
physics = N
velset = 0,0

[State 5070, 1]
type = ChangeAnim
trigger1 = 1
value = 45070

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 45071

[State 5070, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; Tripped get-hit (knocked away)

[Statedef 45071]
type = A
movetype = H
physics = N

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.air.gethit.trip.groundlevel)
value = 45110

;---------------------------------------------------------------------------
; Downed get-hit (shaking)

[Statedef 45080]
type = L
movetype = H
physics = N
velset = 0,0

[State 5080, 1] ;Set default anim
type = VarSet
trigger1 = time = 0
sysvar(2) = ifelse(GetHitVar(yvel) = 0,5080,5090)

[State 5080, 2]
type = VarAdd
trigger1 = time = 0
trigger1 = (anim = [45081,45089]) || (anim = [45111,45119])
trigger1 = SelfAnimExist(sysvar(2) + (anim%10))
sysvar(2) = anim%10

[State 5080, 3] ;If 5090 doesn't exist, default to 5030
type = VarSet
trigger1 = time = 0
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(45090)
sysvar(2) = 5030

[State 5080, 3] ;Freeze
type = ChangeAnim
trigger1 = 1
value = 40000+(sysvar(2))

[State 5080, 4]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 45081 ;Downed get-hit (knocked back)

[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) != 0
value = 45030 ;Air get-hit (knocked away)

;---------------------------------------------------------------------------
; Downed get-hit (knocked back)

[Statedef 45081]
type = L
movetype = H
physics = C

[State 5081, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5081, 2]
type = VelSet
trigger1 = HitOver
x = 0

[State 5081, 3] ;Don't show hit ground frame
type = VarSet
trigger1 = Time = 0
sysvar(0) = 1

[State 5081, 4]
type = ChangeState
trigger1 = HitOver
value = 45110 ;Downed get-hit (lying down)

;---------------------------------------------------------------------------
; Downed get-hit (hit ground from fall)

[Statedef 45100]
type = L
movetype = H
physics = N

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [45051,45059]) && (anim != [45061,45069])
trigger2 = !SelfAnimExist(45100 + (anim%10))
value = 45100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [45051,45059]) || (anim = [45061,45069])
trigger1 = SelfAnimExist(45100 + (anim%10))
value = 45100 + (anim%10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 45110 ;Downed get-hit (lying down)

[State 5100, 8]
type = Explod
trigger1 = Time = 0
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0,0
sprpriority = ifelse(sysvar(1) <= Const720p(56),-10,10)

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 0
value = 40007,(sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = animtime = 0
value = 45101 ;Downed get-hit (bounce off ground)

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; Downed get-hit (bounce off ground)

[Statedef 45101]
type = L
movetype = H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [45101,45109]
trigger2 = !SelfAnimExist(45160 + (anim%10))
value = 45160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [45101,45109]
trigger1 = SelfAnimExist(45160 + (anim%10))
value = 45160 + (anim%10)

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = Const(movement.down.bounce.offset.y)

[State 5101, 5]
type = PosAdd
trigger1 = Time = 0
x = Const(movement.down.bounce.offset.x)

[State 5101, 6] ;Acceleration
type = VelAdd
trigger1 = 1
y = Const(movement.down.bounce.yaccel)

[State 5101, 7] ;Hit ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.down.bounce.groundlevel)
value = 45110

;---------------------------------------------------------------------------
; Downed get-hit (lying down)

[Statedef 45110]
type = L
movetype = H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(45110 + (anim%10))
trigger1 = anim = [45081,45089]
value = 45110 + (anim%10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [45110,45119] ;Not already changed anim
trigger1 = anim != [45161,45169]
trigger2 = !SelfAnimExist(45170 + (anim%10))
value = 45170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [45110,45119] ;Not already changed anim
trigger1 = anim = [45161,45169]
trigger1 = SelfAnimExist(45170 + (anim%10))
value = 45170 + (anim%10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 40007,(sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5110, 7]
type = Explod
trigger1 = Time = 0
trigger1 = !SysVar(0)
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0,0
sprpriority = ifelse(sysvar(1) <= Const720p(56),-10,10)

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [45171,45179]
triggerall = SelfAnimExist(45110 + (anim%10))
trigger1 = animtime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 45110 + (anim%10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [45111,45119]
trigger1 = animtime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 45110

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = animtime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [45110,45119]
value = 45150

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14] ;Friction
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 5110, 15]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 16]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200,7,-.467
time = 30
waveform = sine

[State 5110, AR get up]
;Abstract Reordered: the engine only auto-rises players in state 5110, so this ported copy has to do it itself
;(lie-down time from the hit: hard knockdowns set down.recovertime, everything else uses data.liedown.time)
type = ChangeState
trigger1 = alive
trigger1 = Anim = [45110,45119]
trigger1 = Time >= ifelse(GetHitVar(down.recovertime) > 0, GetHitVar(down.recovertime), Const(data.liedown.time))
value = 45120

;---------------------------------------------------------------------------
; Downed get-hit (getting up)

[Statedef 45120]
type = L
movetype = I
physics = N

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [45111,45119]
trigger2 = !SelfAnimExist(45120 + (anim%10))
value = 45120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [45111,45119]
trigger1 = SelfAnimExist(45120 + (anim%10))
value = 45120 + (anim%10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = animtime <= -1
value = SCA
time = 1
	
[State 5120, 4]
type = HitFallSet
trigger1 = animtime >= -1
value = 1
	
[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = animtime = -1
value = ,NT,ST,HT
time = 13
	
[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = animtime = -1
value2 = SCA
time = 4

[State 5120, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Downed get-hit (lying defeated)

[Statedef 45150]
type = L
movetype = H
physics = N
sprpriority = -3
ctrl = 0

[State 5150, 1] ;Normal anim
type = ChangeAnim
triggerall = Time = 0
triggerall = SelfAnimExist(45140)
trigger1 = (anim != [45111,45119]) && (anim != [45171,45179])
trigger2 = !SelfAnimExist(45140 + (anim%10))
value = 45140

[State 5150, 3] ;Hit up type anim
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (anim = [45111,45119]) || (anim = [45171,45179])
trigger1 = SelfAnimExist(45140 + (anim%10))
value = 45140 + (anim%10)

[State 5150, 4] ;Match over anim
type = ChangeAnim
persistent = 0
;trigger1 = Time = 0
trigger1 = MatchOver = 1
trigger1 = Anim = [45140,45149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != [45140,45159]
trigger1 = Anim != [45110,45119]
value = 45110

[State 5150, 6] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, 7] ;Friction
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (still falling)

[Statedef 45200]
type = A
movetype = H
physics = N

[State 5200, 1] ;Change anim if done with transition
type = ChangeAnim
trigger1 = Anim = 45035
trigger1 = animtime = 0
value = 45050

[State 5200, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5200, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.air.gethit.groundrecover.groundlevel)
value = 45201

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (on the ground)

[Statedef 45201]
type = S
movetype = I
physics = N
anim = 45200
facep2 = 1

[State 5201, PSND]
type = playsnd
trigger1 = time = 0
value = 40000,5
channel = 4
[State 5201, PSND]
type = playsnd
trigger1 = time = 0
value = 40000,5
channel = 5

[State 5201, Direction Set]
type = varset
trigger1 = time <=1
var(10) = cond(command="holdback",-1,cond(command="holdfwd",1,0))

[State 0, Explod]
type = Explod
trigger1 = time = [0,11]
persistent = 3 
anim = 65200
ID = 52001
pos = 0,0
postype = p1
facing = -1
removetime = -2
vel = -4*var(10),0
accel = 0,-0.1
pausemovetime = 0
scale = 0.5,0.5
sprpriority = 5
removeongethit = 0
ownpal = 1

[State 210, 1]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 40950,0

[State 5201, 2]
type = VelSet
trigger1 = Time <= 1
x = 9.0*var(10)
y = 0

[State 5201, Vel]
type = velmul
trigger1 = time
x = 0.9

[State 5201, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5201, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, 5] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128 ;256,256,256

[State 5201, 2]
type = VelSet
trigger1 = Time = 20
x = 0.0
y = 0.0

[State 5201, 2]
type = playerpush
trigger1 = Time <= 20
value = 0
ignorehitpause = 1

[State 5201, End]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HIT_AIRFALLRECOVER

[Statedef 45210]
type = A
movetype = I
physics = N
anim = 45210
ctrl = 0

[State 210, 1]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 40950,0

[State 5210, 1] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128 ;256,256,256

[State 5210, 1]
type = PosFreeze
trigger1 = Time = 0
value = 4

[State 5210, 2] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -20

[State 5210, 1]
type = VelMul
trigger1 = Time = 4
x = .8
y = .8

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
y = -4.5

[State 5210, 1]
type = VelMul
trigger1 = Time = 4
trigger1 = Vel Y > 0
y = .5

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -3
y = -2

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -2
y = -1

[State 5210, 2] ;Go up
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdup"
y = -2

[State 5210, 2] ;Go down
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holddown"
y = 1.5

[State 5210, 2] ;Go fwd
type = VelMul
trigger1 = Time = 4
trigger1 = Command = "holdfwd"
x = 1

[State 5210, 2] ;Go back
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdback"
x = -1

[State 5210, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 21

[State 5210, 4]
type = CtrlSet
trigger1 = Time = 20
value = 1

[State 5210, 5]
type = VelAdd ;Gravity
trigger1 = Time >= 4
y = .35

[State 5210, 5] ;Land on ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -(vel y)
value = 40052 ;JUMP_LAND
ctrl = 1

;---------------------------------------------------------------------------
; Continue screen animation

[Statedef 45500]
type = S
ctrl = 0
anim = 45300
velset = 0,0

[State 5500, 1] ;Use continue animation if available
type = ChangeAnim
trigger1 = time = 0
trigger1 = SelfAnimExist(45500)
value = 45500

[State 5500, 1] ;Use continue animation if available
type = ChangeAnim
trigger1 = time = 0
trigger1 = !SelfAnimExist(45500)
trigger1 = selfanimexist(40170)
value = 40170

;---------------------------------------------------------------------------
; Initialize (at the start of the round)

[Statedef 40200]
type = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype = A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 40200
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(0*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 181, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 40200,0
channel = 0

[State 200, 1]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 40000,0

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(0*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089])) || var(50)>0
trigger1 = animelemtime(4)>=0 && animelemtime(5)<0
trigger1 = !movecontact && !movereversed
attr = S,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(20*fvar(11)*ifelse(var(42)!=0,1.25,1.0)),0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 8,8                 ;Time attacker pauses, time opponent shakes
sparkno = S48000+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S48030
sparkxy = -10,-64
hitsound = S40001,0                  ;Sound to play on hit
guardsound = S40002,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.velocity = -4.5             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.5,-5           ;(X,Y)-velocity at which opponent is pushed
ground.slidetime = 14+1*(var(42)!=0)            ;Time that the opponent slides back
ground.hittime = 14+1*(var(42)!=0)         ;Time opponent is in hit state
air.hittime = 14+1*(var(42)!=0)       ;Time before opponent regains control in air
guard.slidetime = 11
guard.hittime = 11
p2facing = 1
getpower = 40,40
givepower = 20,20
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
id = 555

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.95*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = animelemtime(5)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 200, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Attack

[Statedef 40210]
type = S
movetype = A
physics = S
ctrl = 0
anim = 40210
sprpriority = 1
facep2 = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(1*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(5)=0
value = 40210,0
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 40000,3

[State 210, 2]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(1*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089])) || var(50)>0
trigger1 = animelemtime(5)>=0 && animelemtime(6)<0
trigger1 = !movecontact && !movereversed
attr = S,NA
animtype = Medium
air.animtype = Medium
priority = 4,Hit
damage = ceil(45.0*fvar(11)*ifelse(var(42)!=0,1.25,1.0)),0
hitflag = MAF
guardflag = M
pausetime = 10,10
sparkno = S48010+(random%2)
guard.sparkno = S48030
sparkxy = -10,-54
hitsound = S40001,1
guardsound = S40002,0
ground.type = High
ground.slidetime = 18+3*(var(42)!=0)
ground.hittime = 18+3*(var(42)!=0)
air.hittime = 18+3*(var(42)!=0)
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -4,0
air.velocity = -4.0,-4.5
guard.velocity = -8.0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 60,60
givepower = 30,30
p2facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 555

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.9*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = animelemtime(6)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 210, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Fwd Medium Attack

[Statedef 40215]
type = S
movetype = A
physics = S
ctrl = 0
anim = 40215
sprpriority = 1
facep2 = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(2*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 215, STS]
type = statetypeset
trigger1 = animelemtime(4)=0
statetype = A
physics = N

[State 215, VelS]
type = velset
trigger1 = animelemtime(4)=0
x = 4
y = -6

[State 215, VA]
type = veladd
trigger1 = animelemtime(4)>0
y = 0.5

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 40215,0
channel = 0

[State 215, STS]
type = statetypeset
trigger1 = animelemtime(13)=0
movetype = I

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(12)=0
value = 40215,1
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = animelemtime(12)=0
value = 40000,1

[State 210, 2]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(2*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089])) || var(50)>0
trigger1 = animelemtime(12)>=0 && animelemtime(13)<0
trigger1 = !movecontact && !movereversed
attr = S,NA
animtype = Medium
priority = 4,Hit
damage = ceil(70.0*fvar(11)*ifelse(var(42)!=0,1.25,1.0)),0
hitflag = MAF
guardflag = HA
pausetime = 10,10
sparkno = S48010+(random%2)
guard.sparkno = S48030
sparkxy = -10,-5
hitsound = S40001,1
guardsound = S40002,0
ground.type = High
ground.slidetime = 16+3*(var(42)!=0)
ground.hittime = 16+3*(var(42)!=0)
air.hittime = 16+3*(var(42)!=0)
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -6
air.velocity = -6,-4
getpower = 80,80
givepower = 40,40
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
id = 555
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 215, Flag Recovery]
type = statetypeset
trigger1 = animelemtime(13)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 410, 4]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y > -(vel y)
value = 40216

;---------------------------------------------------------------------------
; Fwd Medium Land

[Statedef 40216]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 40216
movehitpersist= 1

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 40040,0

[State 216, VS]
type = posset
trigger1 = time = 0
y = 0

[State 410, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Back Medium Attack

[Statedef 40217]
type = S
movetype = A
physics = S
ctrl = 0
anim = 40217+0*floor(var(24):=0)+0*floor(cond(var(57)=1,var(57):=0,1))
sprpriority = 1
facep2 = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(3*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 215, STS]
type = statetypeset
trigger1 = animelemtime(4)=0
statetype = A
physics = N

[State 215, VelS]
type = velset
trigger1 = animelemtime(4)=0
x = 2
y = -5.6

[State 215, VA]
type = veladd
trigger1 = animelemtime(4)>0
y = 0.5

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(5)=0
value = 40210,0
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 40000,2

[State 620, Explod FX]
type = explod
trigger1 = animelemtime(5)=0
persistent = 0
anim = 60620
id = 20217
postype = p1
pos = 25,-75
ownpal = 1
removetime = -2
sprpriority = 8
bindtime = -1
removeongethit = 1
ignorehitpause = 0
pausemovetime = cond(var(50),99999999999,0)

[State 217, MHR]
type = movehitreset
trigger1 = animelemtime(8)=0

[State 210, 2]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(3*ln(2)) + 0.5)),0,1) || var(24)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089])) || var(50)>0 || var(24)
trigger1 = animelemtime(6)>=0 && animelemtime(7)<0
trigger1 = !movecontact && !movereversed
attr = S,NA
animtype = Medium
priority = 4,Hit
damage = ceil((36.0+15*(animelemtime(8)=0))*(fvar(11)/cond(var(57)=1,(fvar(30)),1))*ifelse(var(42)!=0,1.25,1.0)),0
hitflag = MAF
guardflag = M
pausetime = 6,6
sparkno = S48015+(random%2)
guard.sparkno = S48030
sparkxy = -10,-ifelse(animelemtime(8)=0,80,55)
hitsound = S40001,12
guardsound = S40002,0
ground.type = High
ground.slidetime = 21+2*(animelemtime(7)<0)+3*(var(42)!=0)
ground.hittime = 21+2*(animelemtime(7)<0)+3*(var(42)!=0)
air.hittime = 21+2*(animelemtime(7)<0)+3*(var(42)!=0)
guard.slidetime = 17+2*(animelemtime(7)<0)
guard.hittime = 17+2*(animelemtime(7)<0)
ground.velocity = -2.5
air.velocity = -2.5,-4
getpower = 40,40
givepower = 20,20
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
id = 555
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
[State 210, 2]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(3*ln(2)) + 0.5)),0,1) || var(24)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089])) || var(50)>0 || var(24)
trigger1 = animelemtime(8)>=0 && animelemtime(9)<0
trigger1 = !movecontact && !movereversed
attr = S,NA
animtype = Medium
priority = 4,Hit
damage = ceil((36.0+15*(animelemtime(8)=0))*(fvar(11)/cond(var(57)=1,(fvar(30)),1))*ifelse(var(42)!=0,1.25,1.0)),0
hitflag = MAF
guardflag = MA
pausetime = 6,6
sparkno = S48015+(random%2)
guard.sparkno = S48030
sparkxy = -10,-ifelse(animelemtime(8)=0,80,55)
hitsound = S40001,12
guardsound = S40002,0
ground.type = High
ground.slidetime = 21+2*(animelemtime(7)<0)+3*(var(42)!=0)
ground.hittime = 21+2*(animelemtime(7)<0)+3*(var(42)!=0)
air.hittime = 21+2*(animelemtime(7)<0)+3*(var(42)!=0)
guard.slidetime = 17+2*(animelemtime(7)<0)
guard.hittime = 17+2*(animelemtime(7)<0)
ground.velocity = -2.5
air.velocity = -2.5,-4
getpower = 40,40
givepower = 20,20
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
id = 555
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(555) && movehit
trigger1 = target(555),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 1;Change index
ignorehitpause = 1
persistent = 0

[State 210, Multihit]
type = varset
trigger1 = movecontact
var(24) = 1
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(6)>=0 && animelemtime(7)<1
trigger1 = movehit
fvar(10) = fvar(10)*0.895*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(8)>=0 && animelemtime(9)<1
trigger1 = movehit
fvar(10) = fvar(10)*0.895*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 215, Flag Recovery]
type = statetypeset
trigger1 = animelemtime(9)>=0
trigger2 = animelemtime(8)>=0 && animelemtime(9)<0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 410, 4]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y > -(vel y)
value = 40218

;---------------------------------------------------------------------------
; Back Medium Land

[Statedef 40218]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 40218

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 40040,0

[State 216, VS]
type = posset
trigger1 = time = 0
y = 0

[State 410, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Heavy Attack

[Statedef 40220]
type = S
movetype = A
physics = S
ctrl = 0
anim = 40220+0*floor(var(24):=0)+0*floor(cond(var(57)=2,var(57):=0,1))
sprpriority = 1
facep2 = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(4*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 40220,0
channel = 0

[State 220, 1]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 40000,2

[State 220, MHR]
type = movehitreset
trigger1 = animelemtime(5)=0

[State 230, 2]
type = HitDef
triggerall = ifelse((var(33)&floor(exp(4*ln(2)) + 0.5)),0,1) || var(24)
triggerall = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089])) || var(50)>0 || var(24)
triggerall = !movecontact && !movereversed
trigger1 = animelemtime(4)>=0 && animelemtime(5)<0
trigger2 = animelemtime(5)>=0 && animelemtime(6)<0
attr = S,NA
animtype = Hard
damage = ceil(45.0*(fvar(11)/cond(var(57)=2,(fvar(30)),1))*ifelse(var(42)!=0,1.25,1.0)),0
hitflag = MAF
guardflag = M
priority = 4,Hit
pausetime = 6,6
sparkno = S48025+(random%2)
guard.sparkno = S48030
sparkxy = -10,-44
hitsound = S40001,12
guardsound = S40002,0
ground.type = High
ground.slidetime = 17+3*(var(42)!=0)
ground.hittime = 17+3*(var(42)!=0)
air.hittime = 17+3*(var(42)!=0)
guard.slidetime = 13
guard.hittime = 13
ground.velocity = -4.0
air.velocity = -4.0,-3.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 45,45
givepower = 22,22
p2facing = 1
id = 555

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(555) && movehit
trigger1 = target(555),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 2;Change index
ignorehitpause = 1
persistent = 0

[State 210, Multihit]
type = varset
trigger1 = movecontact
var(24) = 1
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(4)>=0 && animelemtime(5)<1
trigger1 = movehit
fvar(10) = fvar(10)*0.89*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(5)>=1 && animelemtime(6)<1
trigger1 = movehit
fvar(10) = fvar(10)*0.89*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = animelemtime(6)>=0
trigger2 = animelemtime(5)>=1 && animelemtime(6)<0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 230, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Attack

[Statedef 40400]
type = C
movetype = A
physics = C
ctrl = 0
anim = 40400
sprpriority = 1
facep2 = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(5*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 0, Width]
type = Width
trigger1 = animelemtime(9)<0
value = 25,0
ignorehitpause = 1
;persistent = 

[State 181, PSND]
type = playsnd
trigger1 = animelemtime(5)=0
value = 40200,0
channel = 0

[State 400, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 40000,0

[State 400, 2]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(5*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089])) || var(50)>0
trigger1 = animelemtime(5)>=0 && animelemtime(6)<0
trigger1 = !movecontact && !movereversed
attr = C,NA
damage = ceil(20.0*fvar(11)*ifelse(var(42)!=0,1.25,1.0)),0
priority = 4,Hit
animtype = Light
hitflag = MAF
guardflag = L
pausetime = 8,8
sparkno = S48000+(random%2)
guard.sparkno = S48030
sparkxy = -10,0
hitsound = S40001,0
guardsound = S40002,0
ground.type = Low
ground.slidetime = 13+1*(var(42)!=0)
ground.hittime = 13+1*(var(42)!=0)
air.hittime = 13+1*(var(42)!=0)
guard.slidetime = 10
guard.hittime = 10
ground.velocity = -5.2
air.velocity = -5.2,-4.8
yaccel = 0.5
getpower = 40,40
givepower = 20,20
p2facing = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 555
air.fall = 1
fall.recover = 1
fall.recovertime = 120

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = animelemtime(6)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 400, 4]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Attack

[Statedef 40410]
type = C
movetype = A
physics = C
ctrl = 0
anim = 40410
sprpriority = 1
facep2 = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(6*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(6)=0
value = 40210,0
channel = 0

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(6)=0
value = 40000,3

[State 430, 2]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(6*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089])) || var(50)>0
trigger1 = animelemtime(6)>=0 && animelemtime(8)<0
trigger1 = !movecontact && !movereversed
attr = C,NA
damage = ceil(50.0*fvar(11)*ifelse(var(42)!=0,1.25,1.0)),0
animtype = Medium
hitflag = MAF
guardflag = M
priority = 4,Hit
pausetime = 10,10
sparkno = S48015+(random%2)
guard.sparkno = S48030
sparkxy = -10,-60
hitsound = S40001,12
guardsound = S40002,0
ground.type = High
ground.slidetime = 16+3*(var(42)!=0)
ground.hittime = 16+3*(var(42)!=0)
air.hittime = 16+3*(var(42)!=0)
guard.slidetime = 13
guard.hittime = 13
ground.velocity = -4.5
guard.velocity = -4.5
airguard.velocity = -4.5,-1.5
air.type = High
air.velocity = -4.5,-6
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 60,60
givepower = 30,30
p2facing = 1
id = 555

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = animelemtime(8)>=0
trigger1 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 410, 4]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Heavy Attack

[Statedef 40420]
type = C
movetype = A
physics = C
ctrl = 0
anim = 40420
sprpriority = 1
facep2 = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(7*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 420, Width]
type = velset
trigger1 = animelemtime(2)=0
x = 8.2

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 40220,0
channel = 0

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 40000,2

[State 1000, Explod]
Type = Explod
Trigger1 = animelemtime(4)=0
Anim = 61105
ID = 20420
Pos = -20,0
PosType = P1
SprPriority = 5
OnTop = 1
OwnPal = 1
IgnoreHitPause = 1
pausemovetime = cond(var(50),99999999999,0)

[State 430, 2]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(7*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089])) || var(50)>0
trigger1 = animelemtime(4)>=0 && animelemtime(5)<0
trigger1 = !movecontact && !movereversed 
attr = C,NA
damage = ceil(65.0*fvar(11)*ifelse(var(42)!=0,1.25,1.0)),0
animtype = Heavy
hitflag = MAF
guardflag = L
priority = 4,Hit
pausetime = 10,10
sparkno = S48020+(random%2)
guard.sparkno = S48030
sparkxy = -10,-10
hitsound = S40001,2
guardsound = S40002,0
ground.type = Low
ground.slidetime = 26+3*(var(42)!=0)
ground.hittime = 26+3*(var(42)!=0)
air.hittime = 26+3*(var(42)!=0)
guard.slidetime = 17
guard.hittime = 17
ground.velocity = -2.0,-5.7
guard.velocity = -8.5
airguard.velocity = -2.0,-1.5
air.type = High
air.velocity = -2.0,-6.0
yaccel = 0.75
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
fall.yvelocity = 0
getpower = 90,90
givepower = 45,45
p2facing = 1
id = 420

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.75*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = animelemtime(5)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 420, Custom Trip]
type = TargetState
triggerall = numtarget(420)
trigger1 = target,stateno!=[120,155]
trigger1 = movehit=1 && !movereversed
trigger1 = !target(420),ishelper
trigger1 = target(420),time=0 && target(420),movetype=H
value = 40470
ID = 420
ignorehitpause = 1
persistent = 0

[State 430, 3]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Light Attack

[Statedef 40600]
type = A
movetype = A
physics = A
ctrl = 0
anim = 40600
sprpriority = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(8*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 181, PSND]
type = playsnd
trigger1 = animelemtime(6)=0
value = 40200,0
channel = 0

[State 400, 1]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 40000,0

[State 400, 2]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(8*ln(2)) + 0.5)),0,1)
trigger1 = p2stateno != 5040 || var(50)>0
trigger1 = animelemtime(6)>=0 && animelemtime(8)<0
trigger1 = !movecontact && !movereversed
attr = A,NA
damage = ceil(35.0*fvar(11)*ifelse(var(42)!=0,1.25,1.0)),0
priority = 4,Hit
animtype = Light
hitflag = MAF
guardflag = HA
pausetime = 8,8
sparkno = S48000+(random%2)
guard.sparkno = S48030
sparkxy = -10,-24
hitsound = S40001,0
guardsound = S40002,0
ground.type = High
ground.slidetime = 14+1*(var(42)!=0)
ground.hittime = 14+1*(var(42)!=0)
air.hittime = 14+1*(var(42)!=0)
guard.slidetime = 11
guard.hittime = 11
ground.velocity = -4.1
air.velocity = -4.1,-3
getpower = 40,40
givepower = 20,20
p2facing = 1
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 555
yaccel = 0.5

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.9*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 600, FLAG RECOVERY]
type = StateTypeSet
trigger1 = animelemtime(8)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
; Aerial Medium Attack

[Statedef 40610]
type = A
movetype = A
physics = A
ctrl = 0
anim = 40610
sprpriority = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(9*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 40210,0
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 40000,3

[State 210, 2]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(9*ln(2)) + 0.5)),0,1)
trigger1 = p2stateno != 5040 || var(50)>0
trigger1 = animelemtime(4)>=0 && animelemtime(5)<0
trigger1 = !movecontact && !movereversed
attr = A,NA
animtype = Med
damage = ceil(50.0*fvar(11)*ifelse(var(42)!=0,1.25,1.0)),0
priority = 4,Hit
hitflag = MAF
guardflag = HA
pausetime = 10,10
sparkno = S48015+(random%2)
guard.sparkno = S48030
sparkxy = -10,-50
hitsound = S40001,6
guardsound = S40002,0
ground.type = High
ground.slidetime = 14+3*(var(42)!=0)
ground.hittime = 14+3*(var(42)!=0)
air.hittime = 14+3*(var(42)!=0)
guard.slidetime = 13
guard.hittime = 13
ground.velocity = -4
air.velocity = -4,-4.5
yaccel = 0.5
getpower = 60,60
givepower = 30,30
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
id = 555

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 610, CS]
type = Statetypeset
trigger1 = animelemtime(5)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
; Aerial Heavy Attack

[Statedef 40620]
type = A
movetype = A
physics = A
ctrl = 0
anim = 40620
sprpriority = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(0*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 40220,0
channel = 0

[State 620, PSND]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 40000,2

[State 620, Explod FX]
type = explod
trigger1 = animelemtime(6)=0
persistent = 0
anim = 60620
id = 20620
postype = p1
pos = 25,-75
ownpal = 1
removetime = -2
sprpriority = 8
bindtime = -1
removeongethit = 1
ignorehitpause = 0
pausemovetime = cond(var(50),99999999999,0)

[State 620, HD]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(0*ln(2)) + 0.5)),0,1)
trigger1 = p2stateno != 5040 || var(50)>0
trigger1 = animelemtime(6)>=0 && animelemtime(7)<0
trigger1 = !movecontact && !movereversed
attr = A,NA
damage = ceil(70.0*fvar(11)*ifelse(var(42)!=0,1.25,1.0)),0
hitflag = MAF
guardflag = HA
priority = 4,Hit
pausetime = 10,10
sparkno = S48025+(random%2)
guard.sparkno = S48030
sparkxy = -10,-86
hitsound = S40001,2
guardsound = S40002,0
animtype = Hard
air.animtype = Back
ground.type = High
ground.slidetime = 14+3*(var(42)!=0)
ground.hittime = 14+3*(var(42)!=0)
air.hittime = 14+3*(var(42)!=0)
guard.slidetime = 17
guard.hittime = 17
ground.velocity = -4.1
air.velocity = -4.1,-2.5
yaccel = 0.5
getpower = 90,90
givepower= 45,45
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
id = 555
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.8*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 620, FLAG RECOVERY]
type = Statetypeset
trigger1 = animelemtime(7)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
; Throw

[Statedef 40800]
type = S
movetype = A
physics = S
ctrl = 0
anim = 40800
sprpriority = 1

[State 800, CS]
type = changestate
trigger1 = numtarget(800)
trigger1 = movehit
value = 40810
ignorehitpause = 1
persistent = 0

[State 800, Tech Reset]
type = varset
trigger1 = 1
var(14) = 0

[State 800, Tech Set]
type = varset
trigger1 = numenemy
trigger1 = enemynear(0),statetype != A
trigger1 = enemynear(0),stateno = [0,999]
trigger1 = enemynear(0),stateno != [200,799]
trigger1 = enemynear(0),stateno != [100,119]
var(14) = 15

[State 800, VS]
type = varset
trigger1 = AILevel <= 0
trigger1 = animelemtime(3)=0
var(10)= ifelse(command="holdback",1,0)
[State 800, VS]
type = varset
trigger1 = AILevel > 0
trigger1 = numenemy
trigger1 = animelemtime(2)=0
var(10) = ifelse(AILevel > 4 && backedgebodydist<=20,1,ifelse(AILevel > 4 && enemynear(0),backedgebodydist<=20,0,(random%2)))

[State 210, PSND]
type = playsnd
trigger1 = time = 0
value = 40215,0
channel = 0

[State 220, 1]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 40000,3

[State 800, HD]
type = HitDef
trigger1 = animelemtime(3)>=0 && animelemtime(4)<0
trigger1 = var(30)=0 ;Throw Limited
attr = S,NT
hitflag = M-
guardflag =  
fall.animtype = Diagup
priority = 7,Miss
damage = 0,0
pausetime = 0,0
sparkno = -1
hitsound = -1
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p1facing = 1
p2facing = 1
id = 800
numhits = 0

[State 800, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(4)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 800, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 800, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Grab - Part 2

[Statedef 40810]
type = S
movetype = A
physics = N
ctrl = 0
anim = 40801
velset = 0,0
sprpriority = 1

[State 810, PSND]
type = playsnd
trigger1 = time = 0
value = 40001,0

[State 801, PSND]
type = playsnd
trigger1 = animelemtime(5)=0
value = 40800,0
channel = 0

[State 801, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 40810,0

[State 801, Pause]
type = pause
trigger1 = animelemtime(3)=0
time = 20;30
movetime = 20;30
ignorehitpause = 1

[State 801, Tech Success]
type = ChangeState
triggerall = numtarget
triggerall = var(14)>0
trigger1 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger1 = (target,AILevel=0)&&(target,command = "x" || target,command = "y" || target,command = "z")
trigger2 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger2 = (target,AILevel=0)&&(target,command = "a" || target,command = "b" || target,command = "c")
trigger3 = (target,AILevel>0)&&(random<=floor(100*AIlevel*AIlevel/64.0))
trigger4 = (target,name="Training")&&(target,var(16)=1)
value = 40890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(14)>0
var(14) = -1

[State 810, TS]
type = targetstate
trigger1 = time = 0
value = 40850

[State 801, PP]
type = playerpush
trigger1 = 1
value = 0

[State 810, Bind]
type = TargetBind
trigger1 = time = 0
pos = 36,0

[State 810, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 40810,1

[State 801, PA]
type = Posset;Add
trigger1 = animelemtime(4)=0
x = floor(target,pos x)+60*ifelse(var(10)=1,1,-1)*facing

[State 801, TB]
type = targetbind
trigger1 = animelemtime(4)=0
trigger1 = var(10)=1
trigger1 = frontedgedist <= 10
pos = -60,0

[State 810, Snake?]
type = explod
trigger1 = animelemtime(4)=0
id = 20810
removetime = 15
scale = 0.5,0.5
anim = 60810
pos = 30,floor(1.25*-80)
postype = p2
ownpal = 1
facing = enemynear(0),facing
sprpriority = 5

[State 810, PSND]
type = playsnd
trigger1 = animelemtime(7)=0
value = 40810,2

[State 801, Helper]
Type = Helper
Trigger1 = animelemtime(4)=0
Name = "Perfect Maid Knife"
ID = 810
StateNo = 60800
PosType = P1
Pos = 0,-30
ownpal = 1
[State 801, Helper]
Type = Helper
Trigger1 = animelemtime(4)=0
Name = "Perfect Maid Knife"
ID = 811
StateNo = 60800
PosType = P1
Pos = 0,-30
ownpal = 1
[State 801, Helper]
Type = Helper
Trigger1 = animelemtime(4)=0
Name = "Perfect Maid Knife"
ID = 812
StateNo = 60800
PosType = p1
Pos = 0,-30
ownpal = 1
[State 801, Helper]
Type = Helper
Trigger1 = animelemtime(4)=0
Name = "Perfect Maid Knife"
ID = 813
StateNo = 60800
PosType = p1
Pos = 0,-30
ownpal = 1

[State 801, Helper]
Type = Helper
Trigger1 = animelemtime(4)=0
Name = "Perfect Maid Knife"
ID = 814
StateNo = 60800
PosType = p1
Pos = 0,-30
ownpal = 1
[State 801, Helper]
Type = Helper
Trigger1 = animelemtime(4)=0
Name = "Perfect Maid Knife"
ID = 815
StateNo = 60800
PosType = p1
Pos = 0,-30
ownpal = 1
[State 801, Helper]
Type = Helper
Trigger1 = animelemtime(4)=0
Name = "Perfect Maid Knife"
ID = 816
StateNo = 60800
PosType = p1
Pos = 0,-30
ownpal = 1
[State 801, Helper]
Type = Helper
Trigger1 = animelemtime(4)=0
Name = "Perfect Maid Knife"
ID = 817
StateNo = 60800
PosType = p1
Pos = 0,-30
ownpal = 1

[State 801, Helper]
Type = Helper
Trigger1 = animelemtime(4)=0
Name = "Perfect Maid Knife"
ID = 818
StateNo = 60800
PosType = p1
Pos = 0,-30
ownpal = 1
[State 801, Helper]
Type = Helper
Trigger1 = animelemtime(4)=0
Name = "Perfect Maid Knife"
ID = 819
StateNo = 60800
PosType = p1
Pos = 0,-30
ownpal = 1
[State 801, Helper]
Type = Helper
Trigger1 = animelemtime(4)=0
Name = "Perfect Maid Knife"
ID = 820
StateNo = 60800
PosType = p1
Pos = 0,-30
ownpal = 1
[State 801, Helper]
Type = Helper
Trigger1 = animelemtime(4)=0
Name = "Perfect Maid Knife"
ID = 821
StateNo = 60800
PosType = p1
Pos = 0,-30
ownpal = 1

[State 801, Helper]
Type = Helper
Trigger1 = animelemtime(4)=0
Name = "Perfect Maid Knife"
ID = 822
StateNo = 60800
PosType = p1
Pos = 0,-30
ownpal = 1
[State 801, Helper]
Type = Helper
Trigger1 = animelemtime(4)=0
Name = "Perfect Maid Knife"
ID = 823
StateNo = 60800
PosType = p1
Pos = 0,-30
ownpal = 1
[State 801, Helper]
Type = Helper
Trigger1 = animelemtime(4)=0
Name = "Perfect Maid Knife"
ID = 824
StateNo = 60800
PosType = p1
Pos = 0,-30
ownpal = 1
[State 801, Helper]
Type = Helper
Trigger1 = animelemtime(4)=0
Name = "Perfect Maid Knife"
ID = 825
StateNo = 60800
PosType = p1
Pos = 0,-30
ownpal = 1

[State 810, TLA]
type = targetlifeadd
trigger1 = animelemtime(9)=0
id = 800
value = -ceil(70*fvar(10))

[State 810, HA]
type = hitadd
trigger1 = animelemtime(9)=0
value = 16

[State 810, PSND]
type = playsnd
trigger1 = animelemtime(9)=0
value = 40001,6

[State 810, TPA]
type = targetpoweradd
trigger1 = animelemtime(9)=0
id = 800
value = 40

[State 810, PA]
type = poweradd
trigger1 = animelemtime(9)=0
value = 80

[State 810, Hitspark]
type = explod
trigger1 = animelemtime(9)=0
id = 8000
removetime = -2
scale = 1.0,1.0
anim = 48015+(random%2)
pos = 0,-55
postype = p2
ownpal = 1
sprpriority = 5

[State 801, TF]
type = targetfacing
trigger1 = animelemtime(9)=0
value = ifelse(var(10)=1,1,-1)
id = 800

[State 810, TS]
type = targetstate
trigger1 = animelemtime(9)=0
value = 40853

[State 801, IKEMEN Safeguard] ;I Really didn't want to implement this but the alternative would be much messier
type = ChangeState
trigger1 = !numtarget(800)
trigger1 = animelemtime(9)<=0
value = 40891

[State 810, PA]
type = varset
trigger1 = animelemtime(9)=0
trigger1 = (var(4):=1)||1;Set proration flag
fvar(10) = fvar(10)*0.9

[State 810, State End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; Perfect Maid Knife

[Statedef 60800]
type = A
movetype = I
physics = N
anim = 60800
velset = 0,0
sprpriority = 3

[State 20800, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 20800, VS]
type = null
triggerall = time = 0
trigger1 = ishelper(810)
trigger1 = (fvar(0):=360.0*0.0/16.0)||1
trigger2 = ishelper(811)
trigger2 = (fvar(0):=360.0*1.0/16.0)||1
trigger3 = ishelper(812)
trigger3 = (fvar(0):=360.0*2.0/16.0)||1
trigger4 = ishelper(813)
trigger4 = (fvar(0):=360.0*3.0/16.0)||1
trigger5 = ishelper(814)
trigger5 = (fvar(0):=360.0*4.0/16.0)||1
trigger6 = ishelper(815)
trigger6 = (fvar(0):=360.0*5.0/16.0)||1
trigger7 = ishelper(816)
trigger7 = (fvar(0):=360.0*6.0/16.0)||1
trigger8 = ishelper(817)
trigger8 = (fvar(0):=360.0*7.0/16.0)||1
trigger9 = ishelper(818)
trigger9 = (fvar(0):=360.0*8.0/16.0)||1
trigger10 = ishelper(819)
trigger10 = (fvar(0):=360.0*9.0/16.0)||1
trigger11 = ishelper(820)
trigger11 = (fvar(0):=360.0*10.0/16.0)||1
trigger12 = ishelper(821)
trigger12 = (fvar(0):=360.0*11.0/16.0)||1
trigger13 = ishelper(822)
trigger13 = (fvar(0):=360.0*12.0/16.0)||1
trigger14 = ishelper(823)
trigger14 = (fvar(0):=360.0*13.0/16.0)||1
trigger15 = ishelper(824)
trigger15 = (fvar(0):=360.0*14.0/16.0)||1
trigger16 = ishelper(825)
trigger16 = (fvar(0):=360.0*15.0/16.0)||1

[State 20800, AS]
type = angledraw
trigger1 = 1
value = fvar(0)
ignorehitpause = 1

[State 20800, PS]
type = posset
trigger1 = time = 0
x = floor(-facing*100*cos(fvar(0)*pi/180.0)+enemynear(0),pos x);EnemyNear,Pos X + Cos(0*Pi/180.0)*100
y = floor(100*sin(fvar(0)*pi/180.0)+enemynear(0),pos y + enemynear(0),-55);EnemyNear,Pos Y + Root,Var(46) + Sin(0*Pi/180.0)*-100

[State 20800, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 20800, VS]
type = velset
trigger1 = time = 16
x = 10*cos(fvar(0)*pi/180.0)
y = -10*sin(fvar(0)*pi/180.0)

[State 20800, Zeeky]
type = destroyself
trigger1 = time >= 25

;---------------------------------------------------------------------------
;Throw Tech Success

[Statedef 40890]
type = S
physics = N
movetype = A;I
anim = 45945
ctrl = 0
velset = 0,0
sprPriority = 1

[State 890, PSND]
type = null;PlaySnd
trigger1 = animelemtime(2)=0
value = 890,0
channel = 0

[State 890, PSND]
type = PlaySnd
trigger1 = time = 0
value = 40001,9

[State 890, T]
type = null;turn
trigger1 = time = 0

[State 890, PA]
type = PosAdd
trigger1 = time = 0
x = 24

[State 890, PS]
type = PosSet
trigger1 = time = 0
y = 0

[State 890, TB]
type = TargetBind
trigger1 = time = 0
trigger1 = numtarget
pos = 0,0

[State 890, TS]
type = TargetState
trigger1 = time = 0
trigger1 = numtarget
value = 40895

[State 890, TF]
type = TargetFacing
trigger1 = time = 0
trigger1 = numtarget
value = -1

[State 890, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890, PP]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
persistent = 4
anim = 48020
ID = 8000
pos = 0,-70
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0
pausemovetime = 999999
supermovetime = 999999

[State 890, VS]
type = VelSet
trigger1 = time = 0
x = -8;-6.14
y = 0

[State 890, VM]
type = veladd;mul
trigger1 = time>=0
trigger1 = vel x < 0
x = 0.5;85

[State 890, PA]
type = posadd
triggerall = numtarget
trigger1 = target,frontedgebodydist <= abs(target,vel x + target,15)
trigger1 = target,vel x > 0.0
trigger2 = target,backedgebodydist <= abs(target,vel x - target,15)
trigger2 = target,vel x < 0.0
x = cond((target,pos x - pos x) * facing > 0, -abs(target,vel x), abs(target,vel x))

[State 890, CS]
type = ChangeState
trigger1 = time >= 27
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Throw Escape Failsafe

[Statedef 40891]
type = U;S
physics = N
movetype = A;I
anim = 45945
ctrl = 0
velset = 0,0
sprPriority = 1

[State 891, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S
ignorehitpause = 1

[State 890, PSND]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 40890,0
channel = 0

[State 890, PSND]
type = PlaySnd
trigger1 = time = 0
value = 40890,10

[State 890, T]
type = null;turn
trigger1 = time = 0

[State 890, PA]
type = PosAdd
trigger1 = time = 0
x = 24

[State 890, PS]
type = PosSet
trigger1 = time = 0
y = 0

[State 890, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890, PP]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
persistent = 4
anim = 48020
ID = 8000
pos = 0,-70
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0
pausemovetime = 999999
supermovetime = 999999

[State 890, CS]
type = ChangeState
trigger1 = time >= 27
value = (cond(statetype!=A,0,50)) + 40000*(((cond(statetype!=A,0,50)) != 0) && ((cond(statetype!=A,0,50)) != 11) && ((cond(statetype!=A,0,50)) != 20))
ctrl = cond(statetype!=A,1,0)

;---------------------------------------------------------------------------
;Target Throw Escape

[Statedef 40895]
type = S
physics = N
moveType = H
ctrl = 0
velSet = 0,0
sprPriority = 0

[State 895, PS]
type = PosSet
trigger1 = time = 0
y = 0

[State 895, CA]
type = ChangeAnim
trigger1 = time = 0
value = (ifElse(SelfAnimExist(5940 + 40000*(!InCustomState)),5940,130)) + 40000*(!InCustomState)

[State 895, CA]
type = ChangeAnim
trigger1 = time = 0
trigger1 = !selfanimexist(5945 + 40000*(!InCustomState))
trigger1 = selfanimexist(5940 + 40000*(!InCustomState))
value = 5940 + 40000*(!InCustomState)

[State 895, CA]
type = ChangeAnim
trigger1 = time = 0
trigger1 = !selfanimexist(5945 + 40000*(!InCustomState))
trigger1 = !selfanimexist(5940 + 40000*(!InCustomState))
trigger1 = selfanimexist(5910 + 40000*(!InCustomState))
value = 5910 + 40000*(!InCustomState)

[State 895, CA]
type = ChangeAnim
trigger1 = time >= 20
trigger1 = (anim - 40000*(!InCustomState)) = 130
value = 140 + 40000*(!InCustomState)

[State 895, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 895, PP]
type = PlayerPush
trigger1 = 1
value = 0

[State 890, VS]
type = VelSet
trigger1 = time = 0
x = -8;-6.14
y = 0

[State 890, VM]
type = veladd;mul
trigger1 = time>=0
trigger1 = vel x < 0
x = 0.5;85

[State 895, CS]
type = SelfState
trigger1 = Time >= 27
value = 0
ctrl = 1

[Statedef 41000]
type = U
movetype = A
physics = N
ctrl = 0
poweradd = 15
anim = 41000+1*(statetype=A)+20*(var(10)=4)+0*floor(cond(var(57)=1,var(57):=3,1))+0*floor(var(25):=0)
sprpriority = 1
facep2 = 0

[State 1000, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S
physics = S

[State 1000, Facep2]
type = turn
trigger1 = time = 0
trigger1 = statetype != A
trigger1 = p2dist x < 0

[State 1000, VS]
type = velset
trigger1 = statetype != A
trigger1 = time = 0
x = 0

[State 1000, VS]
type = velset
trigger1 = statetype = A
trigger1 = time = 0
x = 0.2*(vel x)
y = 0.2*(vel y)

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(10)=0
value = 41000,0
channel = 0

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(10)=0
value = 41000,10

[State 1000, Helper]
type = Helper
trigger1 = animelemtime(10)=0
ownpal = 1
postype = P1
name = "Knife"
pos = 40-(20-random%10)*(var(10)>=3),-60-(random%10)*(var(10)>=3)
ID = cond(var(10)=4,41000,21000)+10*(var(10)<=1)+20*(var(10)=2)
facing = 1
stateno = 61000
[State 1000, Helper]
type = Helper
trigger1 = animelemtime(10)=0
ownpal = 1
postype = P1
name = "Knife"
pos = 40-(22-random%8)*(var(10)>=3),-60-(10+random%12)*(var(10)>=3)
ID = cond(var(10)=4,41001,21001)+10*(var(10)<=1)+20*(var(10)=2)
facing = 1
stateno = 61000
[State 1000, Helper]
type = Helper
trigger1 = animelemtime(10)=0
ownpal = 1
postype = P1
name = "Knife"
pos = 40-(24-random%7)*(var(10)>=3),-60-(-10+random%5)*(var(10)>=3)
ID = cond(var(10)=4,41002,21002)+10*(var(10)<=1)+20*(var(10)=2)
facing = 1
stateno = 61000
[State 1000, Helper]
type = Helper
trigger1 = animelemtime(10)=0
ownpal = 1
postype = P1
name = "Knife"
pos = 40-(26-random%14)*(var(10)>=3),-60-(20-random%12)*(var(10)>=3)
ID = cond(var(10)=4,41003,21003)+10*(var(10)<=1)+20*(var(10)=2)
facing = 1
stateno = 61000
[State 1000, Helper]
type = Helper
trigger1 = animelemtime(10)=0
ownpal = 1
postype = P1
name = "Knife"
pos = 40-(28-random%10)*(var(10)>=3),-60-(-20+random%3)*(var(10)>=3)
ID = cond(var(10)=4,41004,21004)+10*(var(10)<=1)+20*(var(10)=2)
facing = 1
stateno = 61000
[State 1000, Helper]
type = Helper
trigger1 = animelemtime(10)=0
ownpal = 1
postype = P1
name = "Knife"
pos = 40-(30-random%30)*(var(10)>=3),-60-(30+random%10)*(var(10)>=3)
ID = cond(var(10)=4,41005,21005)+10*(var(10)<=1)+20*(var(10)=2)
facing = 1
stateno = 61000
[State 1000, Helper]
type = Helper
triggerall = var(10)!=3
trigger1 = animelemtime(10)=0
ownpal = 1
postype = P1
name = "Knife"
pos = 40-(32-random%8)*(var(10)>=3),-60-(-30-random%15)*(var(10)>=3)
ID = cond(var(10)=4,41006,21006)+10*(var(10)<=1)+20*(var(10)=2)
facing = 1
stateno = 61000

[State 1000, VS]
type = VelSet
trigger1 = statetype = A
trigger1 = animelemtime(10)=0
x = -2.825
y = -5.0

[State 1000, VA]
type = VelAdd
trigger1 = statetype = A
trigger1 = animelemtime(10)>0
y = 0.3

[State 1000, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = animelemtime(10)=2
movetype = I
ignorehitpause = 1
persistent = 0

[State 1001, CS]
type = ChangeState
trigger1 = statetype != A
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 1001, CS]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -(vel y)
value = 41001

;---------------------------------------------------------------------------
; Air Sense Edge Land

[Statedef 41001]
type = S
movetype = I
physics = S
velset = 0,0
anim = 41005
ctrl = 0
movehitpersist = 1

[State 1001, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 40040,0

[State 1001, PS]
type = posset
trigger1 = time = 0
y = 0

[State 1001, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------
; Sense Knife

[Statedef 61000]
type = A
movetype = I
physics = N
anim = 61000
sprpriority = 8
velset = 0,0

[State 21000, VS]
type = varset
trigger1 = time = 0
var(10) = root,var(10)

[State 21000, CA]
type = changeanim
trigger1 = time = 0
trigger1 = var(10)=2
value = 61001

[State 21000, VS]
type = null
triggerall = time = 0
trigger1 = ishelper(21000)||ishelper(21010)||ishelper(21020)||ishelper(41010)
trigger1 = (fvar(0):=0.0)||1
trigger2 = ishelper(21011)||ishelper(21021)
trigger2 = (fvar(0):=15.0)||1
trigger3 = ishelper(21012)||ishelper(21022)
trigger3 = (fvar(0):=-15.0)||1
trigger4 = ishelper(21013)||ishelper(21023)
trigger4 = (fvar(0):=30.0)||1
trigger5 = ishelper(21014)||ishelper(21024)
trigger5 = (fvar(0):=-30.0)||1
trigger6 = ishelper(21015)||ishelper(21025)
trigger6 = (fvar(0):=45.0)||1
trigger7 = ishelper(21016)||ishelper(21026)
trigger7 = (fvar(0):=-45.0)||1

[State 21000, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21000, AD]
type = angledraw
trigger1 = 1
value = fvar(0)*ifelse(var(10)=2,-1,1)
ignorehitpause = 1

[State 21000, T]
type = trans
trigger1 = time >= 10
trans = addalpha
alpha = 128,128
ignorehitpause = 1

[State 21000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21000, VS]
type = velset
trigger1 = time = 0
;trigger1 = var(10)!=2
x = 6.5;*ifelse(var(10)=2,-1,1);*cos(fvar(0)*pi/180.0)
y = -6.5*sin(fvar(0)*pi/180.0)
ignorehitpause = 1

[State 21000, VS]
type = null;velset
trigger1 = time = 0
trigger1 = var(10)=2
x = 6.5*sin((fvar(0)+180)*pi/180.0)*ifelse(var(10)=2,-1,1)
y = -6.5*sin(fvar(0)*pi/180.0)
ignorehitpause = 1

[State 21000, VS]
type = velset
trigger1 = time = 10
trigger2 = var(10)=4
x = 0
y = 0

[State 21000, CS]
type = changestate
trigger1 = time >= 160;200
trigger1 = !(root,anim = 41000&&root,stateno = 41000&&root,animelemtime(10)<0&&root,animelemtime(9)>=0)
trigger1 = !(root,anim = 41001&&root,stateno = 41000&&root,animelemtime(9)<0&&root,animelemtime(8)>=0)
trigger2 = root,anim = 41000
trigger2 = root,stateno = 41000
trigger2 = root,animelemtime(10)<0
trigger2 = root,animelemtime(9)>=0
trigger3 = root,anim = 41001
trigger3 = root,stateno = 41000
trigger3 = root,animelemtime(9)<0
trigger3 = root,animelemtime(8)>=0
trigger4 = var(10)=4
trigger4 = time>=2
value = 61003;1

[State 21000, CS]
type = changestate
trigger1 = time >= 10
trigger1 = root,movetype = H
trigger1 = root,stateno != [40120,40155]
value = 61002

;-----------------------
; Sense Knife Intermediary State

[Statedef 61003]
type = A
movetype = I
physics = N
sprpriority = 8
velset = 0,0

[State 21401, Multihit]
type = parentvarset
trigger1 = time=0
var(25) = 0
ignorehitpause = 1
persistent = 0

[State 21000, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21000, AD]
type = angledraw
trigger1 = 1
value = fvar(0)*ifelse(var(10)=2,-1,1)
ignorehitpause = 1

[State 21000, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 128,128
ignorehitpause = 1

[State 21000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21000, CS]
type = changestate
trigger1 = ishelper(21000)||ishelper(21010)||ishelper(21020)||ishelper(41000)
trigger1 = time = 0
trigger2 = ishelper(21001)||ishelper(21011)||ishelper(21021)||ishelper(41001)
trigger2 = time = 2
trigger3 = ishelper(21002)||ishelper(21012)||ishelper(21022)||ishelper(41002)
trigger3 = time = 4
trigger4 = ishelper(21003)||ishelper(21013)||ishelper(21023)||ishelper(41003)
trigger4 = time = 6
trigger5 = ishelper(21004)||ishelper(21014)||ishelper(21024)||ishelper(41004)
trigger5 = time = 8
trigger6 = ishelper(21005)||ishelper(21015)||ishelper(21025)||ishelper(41005)
trigger6 = time = 10
trigger7 = ishelper(21006)||ishelper(21016)||ishelper(21026)||ishelper(41006)
trigger7 = time = 12
value = 61001

;-----------------------
; Sense Knife Throw

[Statedef 61001]
type = A
movetype = A
physics = N
anim = 61005+1*(var(10)=2)
sprpriority = 8
velset = 0,0

[State Movehitoner]
type = VarSet
trigger1 = numenemy
var(31) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(31)+1,0)
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = parentVarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = (root,var(34)) | floor(exp(1*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 21001, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP;,AT
slot = 0
time = -1
stateno = 61002
ignorehitpause = 1

[State 21001, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 21001, AD]
type = angledraw
trigger1 = 1
value = fvar(0)*ifelse(var(10)=2,-1,1)
ignorehitpause = 1

[State 21001, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21001, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21001, Projectile Flag]
type = Projectile
trigger1 = time = 0
projanim = 41998
projid = 1020
guard.dist = 0
projremovetime = 1
projedgebound = 9999
projstagebound = 9999
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1
persistent = 0

[State 21001, VS]
type = velset
trigger1 = time = 0
x = 7.5*cos(fvar(0)*pi/180.0)*ifelse(var(10)=2,-1,1)
y = -7.5*sin(fvar(0)*pi/180.0)
ignorehitpause = 1

[State 21401, DISABLE HITDEF]
type = HitDef
trigger1 = (root,var(34)&floor(exp(1*ln(2)) + 0.5)) && !(root,var(25))
trigger2 = !(!movecontact && !movereversed)
attr = S,SP
hitFlag =  

[State 21001, HITDEF]
type = Hitdef
trigger1 = !((root,var(34))&floor(exp(1*ln(2)) + 0.5))||(root,var(25))
trigger1 = animelemtime(1)>0
trigger1 = !movecontact && !movereversed
attr = A,SP
animtype = Back
damage = ceil((13+0*(var(10)=4))*(root,fvar(11)/cond(root,var(57)=3,(root,fvar(30)),1))),2
priority = 4,Hit
hitflag = MAF
guardflag = MA
pausetime = 0,10
sparkno = S48015+(random%2)
guard.sparkno = S48030
sparkxy = -10,0
hitsound = -1;s1,6
guardsound = -1;s2,0
ground.type = High
ground.slidetime = 28
ground.hittime = 28
air.hittime = 28
guard.slidetime = 22
guard.hittime = 22
ground.velocity = -4.5,0.0
guard.velocity = -4.5
air.velocity = -4.5,-6.0
airguard.velocity = -4.5,-1.0
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 10*(var(10)!=4),10*(var(10)!=4)
givepower = 5,5
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 1000

[State 21401, Multihit]
type = parentvarset
trigger1 = movecontact
var(25) = 1
ignorehitpause = 1
persistent = 0

[State 220, First Combo Hit]
type = parentvarset
triggerall = numtarget(1000)
trigger1 = target(1000),gethitvar(hitcount)=1
trigger1 = root,var(57)=0
var(57) = 3;Change index
ignorehitpause = 1
persistent = 0

[State 21001, STS]
type = statetypeset
trigger1 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 21001, Projectile Flag]
type = Projectile
trigger1 = movehit
projanim = 41998
projid = 1021
guard.dist = 0
projremovetime = 1
projedgebound = 9999
projstagebound = 9999
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1
persistent = 0

[State 21001, Projectile Flag]
type = Projectile
trigger1 = movecontact
trigger1 = !movehit
projanim = 41998
projid = 1710
guard.dist = 0
projremovetime = 1
projedgebound = 9999
projstagebound = 9999
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1
persistent = 0

[State 21001, PVS]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10)*ifelse(var(10)=4,0.99,0.95))*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 21001, CS]
type = changestate
trigger1 = movecontact||movereversed
trigger2 = frontedgedist <= -60 || backedgedist <= -60 || pos y >= 300
value = 61002
ignorehitpause = 1

;-----------------------
; Knife Destroy

[Statedef 61002]
type = A
movetype = I
physics = N
anim = 41998
velset = 0,0
movehitpersist = 1

;-------FORCE GROUND RECOVERY-------
[State -2, P2 Safe Fall]
type = targetstate
triggerall = numtarget=1 ;Just to prevent Simul mode shenanigans
triggerall = target,pos y>=-20 && target,vel y>0
triggerall = target,alive && target,hitfall && target,gethitvar(fall.recover)
triggerall = target,stateno=5030 || target,stateno=5035 || target,stateno=5050 || target,stateno=5071
trigger1 = target,AILevel <= 0
trigger1 = target,command="recovery"
trigger2 = target,AILevel > 0
trigger2 = random%100 <= 10*ceil((target,AILevel)*(target,AILevel)/64.0)
value = 45205
ignorehitpause = 1

[State 21002, nothitby]
type = nothitby
trigger1 = ishelper
time = 1
value = SCA
ignorehitpause = 1

[State 21002, NoShadow]
type = AssertSpecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 21002, Zeeky]
type = changestate
trigger1 = time >= 16
value = 40999

;---------------------------------------------------------------------------
; Close-up Magic

[Statedef 41100]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
poweradd = 45*(prevstateno != 41900)
anim = 41100+1*(var(10)=2)+2*(var(10)=3)+0*floor(var(24):=0)+0*floor(cond(var(57)=4,var(57):=0,1))
sprpriority = 1
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(2*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = (prevstateno = 41900)
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 29
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = (prevstateno != 41900)
trigger1 = time = 0 && var(10)<=1
value = SCA,AA,AP,AT
time = 15
ignorehitpause = 1
[State 0, NotHitBy]
type = NotHitBy
trigger1 = (prevstateno != 41900)
trigger1 = time = 0 && var(10)=2
value = SCA,AA,AP,AT
time = 10
ignorehitpause = 1

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 41100,0
channel = 0

[State 1100, Dust]
type = explod
trigger1 = animelemtime(7)=0
id = 21105
anim = 61105
pos = -20,0
postype = p1
ownpal = 1
facing = 1
sprpriority = 5
pausemovetime = cond(var(50),99999999999,0)
;
[State 1100, Dust]
type = explod
trigger1 = animelemtime(7)=0
id = 21105
anim = 61105
pos = -20,0
postype = p1
trans = sub
ownpal = 1
facing = 1
sprpriority = 5
pausemovetime = cond(var(50),99999999999,0)

[State 1100, STS]
type = statetypeset
trigger1 = animelemtime(7)=0
statetype = A
physics = N

[State 1100, VS]
type = velset
trigger1 = animelemtime(7)=0
x = 3.0+0.5*(var(10)=2)+1.0*(var(10)=3)
y = -7.4-2.3*(var(10)=2)-4.6*(var(10)=3)

[State 1100, VM]
type = velmul
trigger1 = var(10)<=1
trigger1 = animelemTime(13)=0
trigger2 = var(10)=2
trigger2 = animelemtime(15)=0
trigger3 = var(10)=3
trigger3 = animelemtime(17)=0
x = 0.7+0.1*(var(10)=3)
y = 0.8

[State 1100, VM]
type = velmul
trigger1 = vel y < 0
y = 0.92

[State 1100, VM]
type = velmul
trigger1 = vel x > 0
x = 0.98

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(8)=0
value = 41100,10

[State 1100, Helper]
type = Helper
trigger1 = animelemtime(8)=0
ownpal = 1
postype = P1
name = "Crossup Knife"
pos = 0,-50
ID = 1110
size.xscale = 0.35
size.yscale = 0.35
stateno = 61100
pausemovetime = cond(var(50),99999999999,0)
[State 1100, Helper]
type = Helper
trigger1 = animelemtime(8)=0
ownpal = 1
postype = P1
name = "Crossup Knife"
pos = 0,-50
ID = 1111
size.xscale = 0.35
size.yscale = 0.35
stateno = 61100
pausemovetime = cond(var(50),99999999999,0)
[State 1100, Helper]
type = Helper
trigger1 = animelemtime(8)=0
ownpal = 1
postype = P1
name = "Crossup Knife"
pos = 0,-50
ID = 1112
size.xscale = 0.35
size.yscale = 0.35
stateno = 61100
pausemovetime = cond(var(50),99999999999,0)
[State 1100, Helper]
type = Helper
trigger1 = animelemtime(8)=0
ownpal = 1
postype = P1
name = "Crossup Knife"
pos = 0,-50
ID = 1113
size.xscale = 0.35
size.yscale = 0.35
stateno = 61100
pausemovetime = cond(var(50),99999999999,0)
[State 1100, Helper]
type = Helper
trigger1 = animelemtime(8)=0
ownpal = 1
postype = P1
name = "Crossup Knife"
pos = 0,-50
ID = 1114
size.xscale = 0.35
size.yscale = 0.35
stateno = 61100
pausemovetime = cond(var(50),99999999999,0)
[State 1100, Helper]
type = Helper
trigger1 = animelemtime(8)=0
ownpal = 1
postype = P1
name = "Crossup Knife"
pos = 0,-50
ID = 1115
size.xscale = 0.35
size.yscale = 0.35
stateno = 61100
pausemovetime = cond(var(50),99999999999,0)

[State 1100, MHR]
type = movehitreset
trigger1 = animelemtime(10)=0
trigger2 = animelemtime(12)=0
trigger3 = (var(10)>=2) && animelemtime(14)=0
trigger4 = (var(10)>=3) && animelemtime(16)=0 

[State 210, 2]
type = HitDef
triggerall = ifelse((var(34)&floor(exp(2*ln(2)) + 0.5)),0,1) || var(24)
triggerall = !movecontact && !movereversed
trigger1 = animelemtime(8)>=0 && animelemtime(9)<0
trigger2 = animelemtime(10)>=0 && animelemtime(11)<0
trigger3 = animelemtime(12)>=0 && animelemtime(13)<0
trigger4 = var(10)>=2
trigger4 = animelemtime(14)>=0 && animelemtime(15)<0
trigger5 = var(10)>=3
trigger5 = animelemtime(16)>=0 && animelemtime(17)<0
attr = A,SA
animtype = hard
damage = ceil((30.0+2*(var(10)<=1))*(fvar(11)/cond(var(57)=4,(fvar(30)),1))*ifelse(var(42)!=0,1.25,1.0)),5+1*(var(10)<=1)
priority = 4,Hit
hitflag = MAF
guardflag = MA
pausetime = 2,2
sparkno = S48015+(random%2)
guard.sparkno = S48030
sparkxy = -10,-60
hitsound = S40001,5
guardsound = S40002,0
ground.type = High
air.type = low
ground.slidetime = 26+3*(var(42)!=0)
ground.hittime = 26+3*(var(42)!=0)
air.hittime = 26+3*(var(42)!=0)
ground.velocity = -1.5*ifelse(p2dist x < 0,-1,1),-6
guard.velocity = -5
air.velocity = -1.5*ifelse(p2dist x < 0,-1,1),-6.5
airguard.velocity = -4,-3
getpower = (27-2*(var(10)=2)-3*(var(10)>=3))*(prevstateno != 41900),(27-2*(var(10)=2)-3*(var(10)>=3))*(prevstateno != 41900)
givepower = 13-1*(var(10)=2)-1*(var(10)>=3),13-1*(var(10)=2)-1*(var(10)>=3)
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
forcestand = 1
id = 1100

[State 210, Multihit]
type = varset
trigger1 = movecontact
var(24) = 1
ignorehitpause = 1
persistent = 0

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(1100)
trigger1 = target(1100),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 4;Change index
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemtime(8)>=0 && animelemtime(9)<1
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemtime(10)>=0 && animelemtime(11)<1
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemtime(12)>=0 && animelemtime(13)<1
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = var(10)>=2 && animelemtime(14)>=0 && animelemtime(15)<1
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = var(10)>=3 && animelemtime(16)>=0 && animelemtime(17)<1
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 1100, Flag Recovery Frames]
type = StateTypeSet
trigger1 = var(10)<=1
trigger1 = ((movecontact||movereversed)&&(animelemtime(12)>=0&&animelemtime(13)<0))||animelemtime(13)>=0
trigger2 = var(10)=2
trigger2 = ((movecontact||movereversed)&&(animelemtime(14)>=0&&animelemtime(15)<0))||animelemtime(15)>=0
trigger3 = var(10)>=3
trigger3 = ((movecontact||movereversed)&&(animelemtime(16)>=0&&animelemtime(17)<0))||animelemtime(17)>=0
movetype = I
ignorehitpause = 1
persistent = 0

[State 1101, GRAV]
type = veladd
trigger1 = var(10)<=1 && animelemtime(15)>0
trigger2 = var(10)=2 && animelemtime(17)>0
trigger3 = var(10)>=3 && animelemtime(20)>0
y = 0.5

[State 1100, 5]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 41102
ctrl = 0

;---------------------------------------------------------------------------
; Close-up Magic Air

[Statedef 41101]
type = A
movetype = A
physics = N
ctrl = 0
poweradd = 45
anim = 41103+0*floor(var(24):=0)+0*floor(var(57):=0)
sprpriority = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(2*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 41100,0
channel = 0

[State 1100]
type = VelSet
trigger1 = time = 1 && vel y = (-6,6)
trigger1 = vel y != 0
Y = (vel y)/6.0

[State 1100]
type = VelSet
trigger1 = time = 1
trigger1 = vel y != [-6,6]
Y = ifelse(vel y > 0,1.5/2,-1.5/2)

[State 1100]
type = VelSet
trigger1 = animelemtime(10)<0
trigger1 = pos y > -6
Y = 0

[State 1100]
type = VelSet
trigger1 = vel x != 0 && time = 1
X = (vel x)/6.0

[State 1100, VS]
type = velset
trigger1 = var(10)!=1
trigger1 = animelemtime(3)=0
x = ifelse(var(10)=2,2,0)
y = ifelse(var(10)=2,0,-2)

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 41100,10

[State 1100, Helper]
type = Helper
trigger1 = animelemtime(3)=0
ownpal = 1
postype = P1
name = "Crossup Knife"
pos = 0,-50
ID = 1110
size.xscale = 0.35
size.yscale = 0.35
stateno = 61100
pausemovetime = cond(var(50),99999999999,0)
[State 1100, Helper]
type = Helper
trigger1 = animelemtime(3)=0
ownpal = 1
postype = P1
name = "Crossup Knife"
pos = 0,-50
ID = 1111
size.xscale = 0.35
size.yscale = 0.35
stateno = 61100
pausemovetime = cond(var(50),99999999999,0)
[State 1100, Helper]
type = Helper
trigger1 = animelemtime(3)=0
ownpal = 1
postype = P1
name = "Crossup Knife"
pos = 0,-50
ID = 1112
size.xscale = 0.35
size.yscale = 0.35
stateno = 61100
pausemovetime = cond(var(50),99999999999,0)
[State 1100, Helper]
type = Helper
trigger1 = animelemtime(3)=0
ownpal = 1
postype = P1
name = "Crossup Knife"
pos = 0,-50
ID = 1113
size.xscale = 0.35
size.yscale = 0.35
stateno = 61100
pausemovetime = cond(var(50),99999999999,0)
[State 1100, Helper]
type = Helper
trigger1 = animelemtime(3)=0
ownpal = 1
postype = P1
name = "Crossup Knife"
pos = 0,-50
ID = 1114
size.xscale = 0.35
size.yscale = 0.35
stateno = 61100
pausemovetime = cond(var(50),99999999999,0)
[State 1100, Helper]
type = Helper
trigger1 = animelemtime(3)=0
ownpal = 1
postype = P1
name = "Crossup Knife"
pos = 0,-50
ID = 1115
size.xscale = 0.35
size.yscale = 0.35
stateno = 61100
pausemovetime = cond(var(50),99999999999,0)

[State 1106, MHR]
type = movehitreset
trigger1 = animelemtime(6)=0
trigger2 = animelemtime(8)=0

[State 210, 2]
type = HitDef
triggerall = ifelse((var(34)&floor(exp(2*ln(2)) + 0.5)),0,1) || var(24)
triggerall = !movecontact && !movereversed
trigger1 = animelemtime(4)>=0 && animelemtime(5)<0
trigger2 = animelemtime(6)>=0 && animelemtime(7)<0
trigger3 = animelemtime(8)>=0 && animelemtime(9)<0
attr = A,SA
animtype = hard
damage = ceil(32.0*(fvar(11)/cond(var(57)=4,(fvar(30)),1))*ifelse(var(42)!=0,1.25,1.0)),6
priority = 4,Hit
hitflag = MAF
guardflag = HA
pausetime = 2,2
sparkno = S48015+(random%2)
guard.sparkno = S48030
sparkxy = -10,-50
hitsound = S40001,5
guardsound = S40002,0
ground.type = High
air.type = low
ground.slidetime = 23+3*(var(42)!=0)
ground.hittime = 23+3*(var(42)!=0)
air.hittime = 23+3*(var(42)!=0)
ground.velocity = -1.5*ifelse(p2dist x < 0,-1,1),-6
air.velocity = -1.5*ifelse(p2dist x < 0,-1,1),-5.5
getpower = 27,27
givepower = 13,13
yaccel = 0.5
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
forcestand = 1
id = 1100

[State 210, Multihit]
type = varset
trigger1 = movecontact
var(24) = 1
ignorehitpause = 1
persistent = 0

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(1100)
trigger1 = target(1100),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 4;Change index
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemtime(4)>=0 && animelemtime(5)<1
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemtime(6)>=0 && animelemtime(7)<1
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemtime(8)>=0 && animelemtime(9)<1
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 1100, Flag Recovery Frames]
type = StateTypeSet
trigger1 = animelemtime(9)>=0
trigger2 = (animelemtime(8)>=0 && animelemtime(9)<0) && (movecontact||movereversed)
movetype = I
ignorehitpause = 1
persistent = 0

[State 1101, GRAV]
type = veladd
trigger1 = animelemtime(10)>0
y = 0.5

[State 1100, 5]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 41102
ctrl = 0

;---------------------------------------------------------------------------
; Close-up Magic Land

[Statedef 41102]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 41105
sprpriority = 1
movehitpersist = 1

[State -3, Landing Sound]
type = PlaySnd
trigger1 = Time = 0
value = 40040,0

[State 1102, POS]
type = posset
trigger1 = time = 0
y = 0

[State 1102, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------
; Close-up Magic Knife

[Statedef 61100]
type = A
movetype = I
physics = N
anim = 61100
velset = 0,0

[State 21100, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 21100, VarSet]
type = null
triggerall = time = 0
trigger1 = ishelper(1110)
trigger1 = (var(0):=0)||1
trigger2 = ishelper(1111)
trigger2 = (var(0):=60)||1
trigger3 = ishelper(1112)
trigger3 = (var(0):=120)||1
trigger4 = ishelper(1113)
trigger4 = (var(0):=180)||1
trigger5 = ishelper(1114)
trigger5 = (var(0):=240)||1
trigger6 = ishelper(1115)
trigger6 = (var(0):=300)||1

[State 21100, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21100, ALPHA]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[State 21100, Bindtoroot]
type = posset
;type = bindtoroot
trigger1 = 1
x = floor(root,pos x+(ifelse(time<10,time*8,80)*(cos((var(0)+10*time)*pi/180.0))*facing))
y = -55+root,pos y+ifelse(time<10,time*2,20)*(sin((var(0)+10*time)*pi/180.0))
;pos = ifelse(time<10,time*8,80)*cos((var(0)+10*time)*pi/180.0),ifelse(time<10,time*2,20)*cos((var(0)+10*time)*pi/180.0)
ignoreHitPause = 1

[State 21100, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -10*time
ignorehitpause = 1

[State 21100, SPR]
type = sprpriority
trigger1 = rootdist Y >= 55
Value = -1

[State 21100, SPR]
type = sprpriority
trigger1 = rootdist Y <= 50
Value = 8

[State 21100, Knife]
type = Explod
trigger1 = time = 0
Anim = 61101
id = 21101
pos = 0,0
bindtime = -1
removeTime = -1
ownpal = 0
pausemovetime = cond(var(50),99999999999,0)

[State 21100, MEX]
type = ModifyExplod
trigger1 = rootdist Y >= 55
ID = 21101
sprpriority = -5

[State 21100, MEX]
type = ModifyExplod
trigger1 = rootdist Y <= 50
ID = 21101
sprpriority = 5

[State 21100, REX]
type = removeexplod
trigger1 = root,stateno != [41100,41101]
trigger2 = root,stateno = 41100 && root,var(10)<=1 && root,animelemtime(15)>0
trigger3 = root,stateno = 41100 && root,var(10)=2 && root,animelemtime(17)>0
trigger4 = root,stateno = 41100 && root,var(10)>=3 && root,animelemtime(20)>0
trigger5 = root,stateno = 41101 && root,animelemtime(10)=0
trigger6 = root,movetype = H
id = 21101

[State 21100, Zeeky]
type = destroyself
trigger1 = root,stateno != [41100,41101]
trigger2 = root,stateno = 41100 && root,var(10)<=1 && root,animelemtime(15)>0
trigger3 = root,stateno = 41100 && root,var(10)=2 && root,animelemtime(17)>0
trigger4 = root,stateno = 41100 && root,var(10)>=3 && root,animelemtime(20)>0
trigger5 = root,stateno = 41101 && root,animelemtime(10)=0
trigger6 = root,movetype = H

;---------------------------------------------------------------------------
; Vanishing Everything

[Statedef 41200]
type = U
movetype = I
physics = N
ctrl = 0
poweradd = 0
anim = 41200+1*(statetype=A)
velset = 0,0
sprpriority = 1
facep2 = 0

[State 1200, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S
physics = S

[State 1200, Facep2]
type = turn
trigger1 = time = 0
trigger1 = statetype != A
trigger1 = p2dist x < 0

[State 1200, NHB]
type = nothitby
trigger1 = animelemtime(10)<0
value = SCA,AA,AP,AT

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(9)=0
value = 41200,10

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 41200,0
channel = 0

[State 181, EXPLOD]
type = explod
trigger1 = animelemtime(7)>=0 && animelemtime(9)<0
anim = 59601+(random%6)
removetime = 24
vel = 0.25*(random%17)-2.0,-1-0.5*(random%3)
accel = 0.0,0.4
postype = p1
pos = 4,-62
ownpal = 0
sprpriority = 2
removeongethit = 1
ignorehitpause = 0
pausemovetime = cond(var(50),99999999999,0)

[State 1200, Teleport FX]
type = explod
trigger1 = animelemtime(9)=0
anim = 61200
id = 21200
pos = 0,0
vel = 3.5,0.0
ownpal = 1
facing = 1
sprpriority = 5
pausemovetime = cond(var(50),99999999999,0)
[State 1200, Teleport FX]
type = explod
trigger1 = animelemtime(9)=0
anim = 61200
id = 21200
pos = 0,0
vel = -3.5,0.0
ownpal = 1
facing = 1
sprpriority = 5
pausemovetime = cond(var(50),99999999999,0)

[State 1200, PosAdd]
type = PosAdd
trigger1 = animelemtime(10)=0
X = 160*ifelse(var(10)=2,-1,1)

[State 1200, Teleport FX]
type = explod
trigger1 = animelemtime(10)=0
anim = 61201
id = 21201
pos = 0,0
vel = 2,0
ownpal = 1
facing = 1
sprpriority = 5
pausemovetime = cond(var(50),99999999999,0)
[State 1200, Teleport FX]
type = explod
trigger1 = animelemtime(10)=0
anim = 61201
id = 21201
pos = 0,0
vel = -2,0
ownpal = 1
facing = 1
sprpriority = 5
pausemovetime = cond(var(50),99999999999,0)

[State 1200, Grav]
type = veladd
trigger1 = statetype = A
trigger1 = animelemtime(15)>0
y = 0.5

[State 1200, VS]
type = varset
trigger1 = statetype = A
trigger1 = animelemtime(15)>=0
var(1) = 1

[State 1200, CS]
type = changestate
trigger1 = statetype != A
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 1200, CS]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 41201

;---------------------------------------------------------------------------
; Vanishing Everything Land

[Statedef 41201]
type = S
movetype = I
physics = S
ctrl = 0
poweradd = 0
velset = 0,0
anim = 40047
sprpriority = 1

[State -3, Landing Sound]
type = PlaySnd
trigger1 = Time = 0
value = 40040,0

[State 1102, VS]
type = varset
trigger1 = 1
var(1) = 1

[State 1102, POS]
type = posset
trigger1 = time = 0
y = 0

[State 1102, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Bounce NoBounce

[Statedef 41300]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 15
velset = 0,0
anim = 41300+1*(var(10)=2)+2*(var(10)=3)+0*floor(cond(var(57)=5,var(57):=0,1))+0*floor(var(16):=0)
sprpriority = 1
facep2 = 1

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
value = 0
ctrl = 1

;-----------------------
; Bounce Knife

[Statedef 61300]
type = A
movetype = A
physics = N
;anim = 1310
sprpriority = 8
; VAR USEAGE:
; Var(0) - Custom Timer
; Var(1) - Bounce Counter
; Var(3) - Vertical Flip (1= up, -1 = down)
; Var(4) - Horizontal Flip (1=back, -1 = forward)
; Var(5) - Bounce Limiter
; Var(10) - Version counter (copied from root's Var(10))
; Var(11) - ZA WARUDO detection
; FVar(2) - Angle Set

[State 21300, VA]
type = varadd
trigger1 = time = 0
var(1) = 1
ignorehitpause = 1
persistent = 0

[State Movehitoner]
type = VarSet
trigger1 = numenemy
var(31) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(31)+1,0)
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = rootVarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = (root,var(34)) | floor(exp(3*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 21300, VS]
type = null
triggerall = var(0)=0
trigger1 = (var(3):=1)||1
trigger1 = (var(4):=1)||1
trigger1 = (var(10):=parent,var(10))||1

[State 21300, VS]
type = null
triggerall = var(0)=0
trigger1 = root,var(50)>0
trigger1 = (var(11):=1)||1

[State 21300, VS]
type = null
triggerall = var(0)=0
trigger1 = var(10)<=1 || var(10)=3
trigger1 = (var(5):=2)||1
trigger2 = var(10)=2
trigger2 = (var(5):=3)||1
;trigger2 = (var(4):=-var(4))||1

[State 21300, VS]
type = null
triggerall = var(0) = 0
;trigger1 = ishelper(1310)
;trigger1 = (fvar(2):=66.0)||1
;trigger2 = ishelper(1311)
;trigger2 = (fvar(2):=69.0)||1
;trigger3 = ishelper(1312)
;trigger3 = (fvar(2):=72.0)||1
;trigger4 = ishelper(1313)
;trigger4 = (fvar(2):=73.5)||1
;trigger5 = ishelper(1314)
;trigger5 = (fvar(2):=76.5)||1
;trigger6 = ishelper(1315)
;trigger6 = (fvar(2):=79.5)||1
trigger1 = ishelper(1310)||ishelper(41310)
trigger1 = (fvar(2):=46.0)||1
trigger2 = ishelper(1311)||ishelper(41311)
trigger2 = (fvar(2):=49.0)||1
trigger3 = ishelper(1312)||ishelper(41312)
trigger3 = (fvar(2):=52.0)||1
trigger4 = ishelper(1313)||ishelper(41313)
trigger4 = (fvar(2):=53.5)||1
trigger5 = ishelper(1314)||ishelper(41314)
trigger5 = (fvar(2):=56.5)||1
trigger6 = ishelper(1315)||ishelper(41315)
trigger6 = (fvar(2):=59.5)||1

trigger7 = ishelper(1320)||ishelper(41320)
trigger7 = (fvar(2):=131.0)||1
trigger8 = ishelper(1321)||ishelper(41321)
trigger8 = (fvar(2):=128.0)||1
trigger9 = ishelper(1322)||ishelper(41322)
trigger9 = (fvar(2):=125.0)||1
trigger10 = ishelper(1323)||ishelper(41323)
trigger10 = (fvar(2):=138.5)||1
trigger11 = ishelper(1324)||ishelper(41324)
trigger11 = (fvar(2):=135.5)||1
trigger12 = ishelper(1325)||ishelper(41325)
trigger12 = (fvar(2):=132.5)||1

trigger13 = ishelper(1330)||ishelper(41330)
trigger13 = (fvar(2):=-30.0)||1;(fvar(2):=-45.0)||1
trigger14 = ishelper(1331)||ishelper(41331)
trigger14 = (fvar(2):=-27.0)||1;(fvar(2):=-42.0)||1
trigger15 = ishelper(1332)||ishelper(41332)
trigger15 = (fvar(2):=-24.0)||1;(fvar(2):=-39.0)||1
trigger16 = ishelper(1333)||ishelper(41333)
trigger16 = (fvar(2):=-37.5)||1
trigger17 = ishelper(1334)||ishelper(41334)
trigger17 = (fvar(2):=-34.5)||1
trigger18 = ishelper(1335)||ishelper(41335)
trigger18 = (fvar(2):=-31.5)||1

[State 21300, CA]
type = changeanim
trigger1 = anim != 61300
value = 61300
ignorehitpause = 1

[State 21300, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21300, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21300, VS]
type = velset
trigger1 = 1
x = 6*var(4)*cos((fvar(2))*pi/180.0)
y = -6*var(3)*sin((fvar(2))*pi/180.0)

[State 21300, AD]
type = AngleDraw
trigger1 = 1
ignorehitpause = 1

[State 21300, AS]
type = AngleSet
trigger1 = (vel x != 0)
Value = atan(vel y/vel x)*(-180.0/pi)+((vel x < 0)*180)
ignorehitpause = 1

[State 21300, AS]
type = AngleSet
trigger1 = (vel x = 0)
Value = ifelse(vel y < 0,90,-90)
ignorehitpause = 1

[State 21300, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 21300, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP;,AT
slot = 0
time = -1
stateno = 61002
ignorehitpause = 1

[State 21401, DISABLE HITDEF]
type = HitDef
trigger1 = (root,var(34)&floor(exp(3*ln(2)) + 0.5)) && !(root,var(16))
trigger2 = !(!movecontact && !movereversed)
attr = S,SP
hitFlag =  

[State 21300, HITDEF]
type = Hitdef
triggerall = !((root,var(34))&floor(exp(3*ln(2)) + 0.5))||(root,var(16))
trigger1 = var(0)>0
trigger1 = !movecontact && !movereversed
attr = A,SP
animtype = Back
damage = ceil((12+2*(var(11)=1))*(root,fvar(11)/cond(root,var(57)=5,(root,fvar(30)),1))),2
priority = 4,Hit
hitflag = MAF
guardflag = MA
pausetime = 0,6
sparkno = S48015+(random%2)
guard.sparkno = S48030
sparkxy = -10,0
hitsound = -1;s1,3
guardsound = -1;s2,0
ground.type = High
ground.slidetime = 24
ground.hittime = 24
air.hittime = 24
guard.slidetime = 20
guard.hittime = 20
ground.velocity = -2.5,0
guard.velocity = -2.5
air.velocity = -2.5,-5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 10*(var(11)!=1),10*(var(11)!=1)
givepower = 5,5
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 1300

[State 21401, Multihit]
type = rootVarSet
trigger1 = movecontact
var(16) = 1
ignorehitpause = 1
persistent = 0

[State 220, First Combo Hit]
type = rootVarSet
triggerall = numtarget(1300)
trigger1 = target(1300),gethitvar(hitcount)=1
trigger1 = root,var(57)=0
var(57) = 5;Change index
ignorehitpause = 1
persistent = 0

[State 21300, STS]
type = statetypeset
trigger1 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 21300, Projectile Flag]
type = Projectile
trigger1 = movehit
projanim = 41998
projid = 1321
guard.dist = 0
projremovetime = 1
projedgebound = 9999
projstagebound = 9999
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1
persistent = 0

[State 21300, Projectile Flag]
type = Projectile
trigger1 = movecontact
trigger1 = !movehit
projanim = 41998
projid = 1710
guard.dist = 0
projremovetime = 1
projedgebound = 9999
projstagebound = 9999
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1
persistent = 0

[State 21300, PVS]
type = rootVarSet
trigger1 = movehit
fvar(10) = (root,fvar(10)*ifelse(var(11)=1,0.99,0.903))*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 21300, CS]
type = changestate
trigger1 = movecontact||movereversed
trigger2 = screenpos y > 320
trigger3 = var(1)>var(5)
trigger4 = root,movetype = H
trigger4 = (root,stateno - 40000 * root,var(47)) != [120,155]
trigger5 = !root,alive
value = 61002
ignorehitpause = 1
persistent = 0

[State 21300, Custom Timer]
type = varadd
trigger1 = 1
var(0) = 1

[State 21300, CS]
type = Projectile
triggerall = !root,var(50)
triggerall = var(1)<var(5)
trigger1 = vel y < 0
trigger1 = screenpos y < 0
trigger2 = vel x < 0
trigger2 = backedgedist < 0
trigger3 = vel x > 0
trigger3 = frontedgedist < 0
trigger4 = var(10)=3
trigger4 = vel y > 0
trigger4 = pos y >= 0
;[State 2011, Projectile Flag]
;type = Projectile
;trigger1 = time = 0
projanim = 41998
projid = 1320
guard.dist = 0
projremovetime = 1
projedgebound = 9999
projstagebound = 9999
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1
persistent = 0

[State 21300, CS]
type = changestate
triggerall = !root,var(50)
triggerall = var(1)<=var(5)
trigger1 = vel y < 0
trigger1 = screenpos y < 0
trigger1 = (var(3):=(-var(3)))||1
trigger2 = vel x < 0
trigger2 = backedgedist < 0
trigger2 = (var(4):=(-var(4)))||1
trigger3 = vel x > 0
trigger3 = frontedgedist < 0
trigger3 = (var(4):=(-var(4)))||1
trigger4 = var(10)=3
trigger4 = vel y > 0
trigger4 = pos y >= 0
trigger4 = (var(3):=(-var(3)))||1
value = 61300

;---------------------------------------------------------------------------
; Time Paradox

[Statedef 41400]
type = S
movetype = A
physics = N
ctrl = 0
poweradd = 45*(var(10)<=2)
anim = 41400+1*(var(10)=2)+2*(var(10)=3)+0*floor(cond(prevstateno != 41401,var(24):=0,1))+0*floor(cond(var(57)=6,var(57):=0,1))
velset = 0,0
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(4*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1400, PSND]
type = playsnd
trigger1 = var(10)<=2
trigger1 = animelemtime(3)=0
value = 41400,0

[State 1400, Width]
type = Width
trigger1 = animelemtime(3)<=0
edge = 45,0

[State 1400, PSND]
type = playsnd
trigger1 = var(10)<=2
trigger1 = animelemtime(9)=0
value = 41400,10

[State 1400, PSND]
type = playsnd
trigger1 = var(10)>2
trigger1 = animelemtime(9)=0
value = 41100,0

[State 1300, Clone]
type = Helper
trigger1 = var(10)<=2
trigger1 = animelemtime(3)=0
ownpal = 1
postype = P1
name = "Paradox Clone"
pos = 0,0
ID = 21400
facing = 1
stateno = 61400
pausemovetime = cond(var(50),99999999999,0)

[State 1400, PSND]
type = velset
trigger1 = animelemtime(5)=0
x = 3.5+5.5*(var(10)=2)+11.5*(var(10)=3);7.0

[State 1400, VM]
type = velmul
trigger1 = var(10)<=2
trigger1 = animelemtime(10)>0
x = 0.92

[State 1400, VM]
type = velmul
trigger1 = var(10)>2
trigger1 = animelemtime(10)>0
x = 0.88

[State 1400, PSND]
type = playsnd
trigger1 = animelemtime(10)=0
value = 41400,1

[State 210, 2]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(4*ln(2)) + 0.5)),0,1) || var(24)
trigger1 = animelemtime(10)>=0 && animelemtime(12)<0
trigger1 = !movecontact && !movereversed
attr = S,SA
animtype = Hard
damage = ceil((59.0-10*(var(10)<=1)+7*(var(10)=3))*(fvar(11)/cond(var(57)=6,(fvar(30)),1))*ifelse(var(42)!=0,1.25,1.0)),11-2*(var(10)<=1)
priority = 4,Hit
hitflag = MAF
guardflag = M
pausetime = 8,8
sparkno = S48015+(random%2)
guard.sparkno = S48030
sparkxy = -10,-60
hitsound = S40001,5
guardsound = S40002,0
ground.type = High
air.type = High
ground.slidetime = 24+3*(var(42)!=0)
ground.hittime = 24+3*(var(42)!=0)
air.hittime = 24+3*(var(42)!=0)
guard.slidetime = 21
guard.hittime = 21
ground.velocity = -5+3.5*(var(10)>2),0.0-8.0*(var(10)>2)
air.velocity = -1.5,-6.0
getpower = 40,40
givepower = 20,20
yaccel = 0.5
fall = 0+1*(var(10)>2)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
id = 1400

[State 210, Multihit]
type = varset
trigger1 = movecontact && !var(24)
var(24) = 1
ignorehitpause = 1
persistent = 0

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(1400)
trigger1 = target(1400),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 6;Change index
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.895*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 1400, STS]
type = statetypeset
trigger1 = animelemtime(12)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1400, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Time Paradox Z

[Statedef 41401]
type = S
movetype = A
physics = N
ctrl = 0
poweradd = 30
anim = 41403+0*floor(var(24):=0)+0*floor(cond(var(57)=6,var(57):=0,1))
velset = 0,0
facep2 = 1

[State 1400, PSND]
type = playsnd
trigger1 = animelemtime(5)=0
value = 41400,0

[State 1300, Clone]
type = Helper
trigger1 = animelemtime(5)=0
ownpal = 1
postype = P1
name = "Paradox Clone"
pos = 0,0
ID = 21401
facing = 1
stateno = 61401
pausemovetime = cond(var(50),99999999999,0)

[State 1400, CS]
type = changestate
trigger1 = numhelper(21401)
trigger1 = helper(21401),movecontact
value = 41400

[State 21000, STS]
type = statetypeset
trigger1 = animelemtime(5)=2
movetype = I
ignorehitpause = 1
persistent = 0

[State 1400, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------
; Time Paradox Clone

[Statedef 61400]
type = A
movetype = I
physics = N
anim = 61400
velset = 0,0
sprpriority = 8

[State 21400, Copy Parent Var]
type = varset
trigger1 = time = 0
var(10) = root,var(10)
ignorehitpause = 1
persistent = 0

[State 21400, NHB]
type = nothitby
trigger1 = 1
ignorehitpause = 1
value = SCA,AA,AP,AT

[State 21400, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21400, PFX]
type = palfx
trigger1 = 1
time = 2
color = 0
ignorehitpause = 1

[State 21400, CS]
type = changestate
trigger1 = root,stateno = 41400
trigger1 = root,var(1)=1
;trigger1 = root,animelemtime(12)>=0
value = 61401
ignorehitpause = 1

[State 21400, CS]
type = changestate
trigger1 = time >= 60
trigger2 = root,movetype = H
trigger2 = root,stateno != [40120,40159]
value = 61402

;-----------------------
; Time Paradox Clone

[Statedef 61401]
type = A
movetype = A
physics = N
anim = 61401
velset = 0,0
sprpriority = 8

[State 21401, Copy Parent Var]
type = varset
trigger1 = time = 0
trigger1 = ishelper(21401)
var(10) = root,var(10)
ignorehitpause = 1
persistent = 0

[State Movehitoner]
type = VarSet
trigger1 = numenemy
var(31) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(31)+1,0)
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = parentVarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,gethitvar(fall)) || (target,statetype = L)
var(34) = (root,var(34)) | floor(exp(4*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 21401, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21401, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21401, PFX]
type = palfx
trigger1 = 1
time = 2
color = 0
ignorehitpause = 1

[State 21401, VS]
type = Velset
trigger1 = animelemtime(4)=0
x = 8.0-3.0*(var(10)<=1)+4.0*ishelper(21401)

[State 21401, 2]
type = HitDef
trigger1 = !((root,var(34))&floor(exp(4*ln(2)) + 0.5)) || root,var(24)
trigger1 = animelemtime(10)>=0 && animelemtime(12)<0
trigger1 = !movecontact && !movereversed
attr = S,SP
animtype = Hard
damage = ceil((55+5*ishelper(21401))*(root,fvar(11)/cond(root,var(57)=6,(root,fvar(30)),1))),11+2*(var(10)=3)
priority = 4,Hit
hitflag = MAF
guardflag = M
pausetime = 0,8
sparkno = S48015+(random%2)
guard.sparkno = S48030
sparkxy = -10,-60
hitsound = S40001,5
guardsound = S40002,0
ground.type = High
air.type = High
ground.slidetime = 24
ground.hittime = 24
air.hittime = 24
guard.slidetime = 21
guard.hittime = 21
ground.velocity = -1.5,-8.0*!ishelper(21401)
air.velocity = -1.5,-6.0
getpower = 40,40
givepower = 20,20
yaccel = 0.5
fall = 1*!ishelper(21401)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
id = 1400

[State 210, Multihit]
type = parentvarset
trigger1 = movecontact && !root,var(24)
var(24) = 1
ignorehitpause = 1
persistent = 0

[State 220, First Combo Hit]
type = parentvarset
triggerall = numtarget(1400)
trigger1 = target(1400),gethitvar(hitcount)=1
trigger1 = root,var(57)=0
var(57) = 6;Change index
ignorehitpause = 1
persistent = 0

[State 21401, STS]
type = statetypeset
trigger1 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

;-------FORCE GROUND RECOVERY-------
[State -2, P2 Safe Fall]
type = targetstate
triggerall = numtarget=1 ;Just to prevent Simul mode shenanigans
triggerall = target,pos y>=-20 && target,vel y>0
triggerall = target,alive && target,hitfall && target,gethitvar(fall.recover)
triggerall = target,stateno=5030 || target,stateno=5035 || target,stateno=5050 || target,stateno=5071
trigger1 = target,AILevel <= 0
trigger1 = target,command="recovery"
trigger2 = target,AILevel > 0
trigger2 = random%100 <= 10*ceil((target,AILevel)*(target,AILevel)/64.0)
value = 45205
ignorehitpause = 1

[State 21401, PVS]
type = parentvarset
trigger1 = movehit
fvar(10) = root,fvar(10)*0.895*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 21401, VM]
type = velmul
trigger1 = var(10)<=2
trigger1 = animelemtime(13)>0
x = 0.92

[State 21401, VM]
type = velmul
trigger1 = var(10)=3
trigger1 = animelemtime(13)>0
x = 0.85

[State 21401, PSND]
type = playsnd
trigger1 = animelemtime(10)=0
value = 41100,0

[State 21401, PSND]
type = playsnd
trigger1 = animelemtime(10)=0
value = 41400,1

[State 21401, CS]
type = changestate
trigger1 = animelemtime(13)>=19
value = 61402

;-----------------------
; Time Paradox Clone

[Statedef 61402]
type = S
movetype = I
physics = S
sprpriority = 8
movehitpersist = 1

;-------FORCE GROUND RECOVERY-------
[State -2, P2 Safe Fall]
type = targetstate
triggerall = numtarget=1 ;Just to prevent Simul mode shenanigans
triggerall = target,pos y>=-20 && target,vel y>0
triggerall = target,alive && target,hitfall && target,gethitvar(fall.recover)
triggerall = target,stateno=5030 || target,stateno=5035 || target,stateno=5050 || target,stateno=5071
trigger1 = target,AILevel <= 0
trigger1 = target,command="recovery"
trigger2 = target,AILevel > 0
trigger2 = random%100 <= 10*ceil((target,AILevel)*(target,AILevel)/64.0)
value = 45205
ignorehitpause = 1

[State 21402, NHB]
type = nothitby
trigger1 = 1
ignorehitpause = 1
value = SCA,AA,AP,AT

[State 21402, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21402, PFX]
type = palfx
trigger1 = 1
time = 2
color = 0
ignorehitpause = 1

[State 21402, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/20.0),0+floor(256.0*time/20.0)
ignorehitpause = 1

[State 21402, CS]
type = changestate
trigger1 = time>=20
value = 40999

;---------------------------------------------------------------------------
; Guard Cancel Counter

[Statedef 41900]
type = U
movetype = A
physics = N
velset = 0,0
;anim = 1900
poweradd = 0
ctrl = 0
sprpriority = 1
;facep2 = 1

[State 2000, NotHitBy]
type = NotHitBy
trigger1 = time=0
value = SCA,AA,AP,AT
time = 30
;ignorehitpause = 
;persistent = 

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 21900;1999
stateno = 61900;1999
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 20;0
anim = -1
sound = S40004,3
p2defmul = 1
poweradd = -1000
unhittable = 1
movetime = 20;30
darken = 0

[State 1900, CS]
type = changestate
trigger1 = time>=20
trigger1 = (var(10):=1)||1
trigger1 = (var(46):=1)||1
value = 41100

;-----------------------
; Guard Cancel Use Effect

[Statedef 61900]
anim = 41999
velset = 0,0
sprpriority = 3

[State 24100, ASS]
type = assertspecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 1999, Angleset]
type = angleadd
trigger1 = 1
value = -10

[State 1999, Varadd]
type = varadd
trigger1 = time <= 20
var(0) = 1

[State 1999, Angledraw]
type = angledraw
trigger1 = 1
scale = 0.5+0.15*var(0),0.5+0.15*var(0)

[State 700, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-ifelse(time<30,0,floor(256.0*(time-30)/40.0)),256

[State 700, Zeeky]
type = destroyself
trigger1 = time >= 70

[Statedef 42000]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 42000+0*(var(18):=0)+0*floor(cond(var(57)=7,var(57):=0,1))
sprpriority = 2
facep2 = 1

[State 2100, IKEMEN BUG FIX]
type = nothitby
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 40
ignorehitpause = 1

[State 2000, VS]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10)= fvar(10)*0.925

[State 210, PSND]
type = playsnd
trigger1 = time = 0
value = 40800,0
channel = 0

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 1999
stateno = 60000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 40
anim = -1
sound = S40004,0
p2defmul = 1
poweradd = -1000
unhittable = 1
darken = 0
movetime = 40

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 40701
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[State 2000, Multi Var Set]
type = null
triggerall = time = 0
trigger1 = (var(26):=0)||1
trigger1 = (var(27):=0)||1
trigger1 = (var(28):=0)||1
trigger1 = (var(29):=0)||1

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(7)=0
value = 42000,0
channel = 0

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(10)=0
value = 42000,10
channel = 7
persistent = 0

[State 2000, Multi Var Set]
type = null
triggerall = time = 63
trigger1 = (var(28):=32)||1

[State 21000, STS]
type = statetypeset
trigger1 = animelemtime(10)=2
movetype = I
ignorehitpause = 1
persistent = 0

[State 2000, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------
; Killing Doll Knife

[Statedef 62000]
type = A
movetype = I
physics = N
anim = 62000
velset = 0,0
sprpriority = 8

[State 22000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 22000, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 22000, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 0
time = -1
stateno = 61002
ignorehitpause = 1

[State 22000, Multi Var Set]
type = null
trigger1 = time = 0
trigger1 = (var(0):=root,var(26))||1
trigger1 = (var(1):=root,var(27))||1

[State 22000, VS]
type = velset
trigger1 = time = 0
x = 7.5*cos(var(0)*pi/180.0)
y = -7.5*sin(var(0)*pi/180.0)

[State 22000, VS]
type = velset
trigger1 = time + var(1)<69
trigger1 = time = 9
trigger2 = time = 89
x = 0
y = 0

[State 22000, VS]
type = velset
trigger1 = time + var(1)=69
x = 0.5*cos(var(0)*pi/180.0)
y = -0.5*sin(var(0)*pi/180.0)

[State 22000, AD]
type = AngleDraw
trigger1 = 1
ignorehitpause = 1

[State 22000, AS]
type = angleset
trigger1 = time = 0
value = floor(360.0*random/1000.0)
ignorehitpause = 1
persistent = 0

[State 22000, AA]
type = angleadd
trigger1 = time = [1,96]
value = -20
ignorehitpause = 1

[State 22000, CS]
type = changestate
trigger1 = time >= 96
trigger2 = animelemtime(2)=0
value = 62001

[State 22000, CS]
type = null ;destroyself
trigger1 = time < 96
trigger1 = animelemtime(2)<0
trigger1 = root,var(18)=0
trigger1 = (root,stateno != [40120,40155])
trigger1 = (root,movetype = H) || (root,stateno = [45000,45999])

;-----------------------
; Killing Doll Knife Homing Portion

[Statedef 62001]
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 8

[State 22001, PVS]
type = parentvarset
trigger1 = time = 0
var(18) = 1

[State 22001, Multi Varset]
type = null
triggerall = time = 0
trigger1 = numenemy
trigger1 = (fvar(0):= (enemynear(0),pos x - pos x) * facing) || 1
trigger1 = (fvar(1):= enemynear(0),pos y - pos y + enemynear(0),-55) || 1
trigger1 = (fvar(2):=((fvar(0)**2.0)+(fvar(1)**2.0))**0.5) || 1
trigger2 = !numenemy
trigger2 = (fvar(0):= 320.0) || 1
trigger2 = (fvar(1):= 0.0) || 1
trigger2 = (fvar(2):=((fvar(0)**2.0)+(fvar(1)**2.0))**0.5) || 1

[State 22001, VS]
type = velset
trigger1 = time = 0
x = 20*fvar(0)/fvar(2)
y = 20*fvar(1)/fvar(2)

[State 22001, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 22001, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 22001, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 22001, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
slot = 0
time = -1
stateno = 61002
ignorehitpause = 1

[State 22001, AD]
type = AngleDraw
trigger1 = 1
ignorehitpause = 1

[State 22001, AS]
type = AngleSet
trigger1 = vel x != 0
value = atan(vel y/vel x)*(-180.0/Pi)+((Vel X<0)*180)
ignorehitpause = 1

[State 22001, AS]
type = angleset
trigger1 = vel x = 0
value = ifelse(vel Y < 0,90,-90)
ignorehitpause = 1

[State 22001, HITDEF]
type = Hitdef
trigger1 = time
trigger1 = !movecontact && !movereversed
attr = A,HP
animtype = Back
damage = ceil(18.5*(root,fvar(11)/cond(root,var(57)=7,(root,fvar(30)),1))),3
priority = 4,Hit
hitflag = MAFP
guardflag = MA
pausetime = 0,5
sparkno = S48015+(random%2)
guard.sparkno = S48030
sparkxy = -10,0
hitsound = -1;s1,6
guardsound = -1;s2,0
ground.type = High
ground.slidetime = 28
ground.hittime = 28
air.hittime = 28
guard.slidetime = 22
guard.hittime = 22
ground.velocity = -12.25,-6.25
guard.velocity = -12.25
air.velocity = -12.25,-6.25
airguard.velocity = -12.25,-6.25
yaccel = 0.5
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 18,18
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 2010

[State 220, First Combo Hit]
type = parentvarset
triggerall = numtarget(2010)
trigger1 = target(2010),gethitvar(hitcount)=1
trigger1 = root,var(57)=0
var(57) = 7;Change index
ignorehitpause = 1
persistent = 0

[State 22001, STS]
type = statetypeset
trigger1 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 46020
ID = 2010
ignorehitpause = 1

[State 22001, Projectile Flag]
type = Projectile
trigger1 = MoveHit
trigger1 = p2movetype = H
trigger1 = p2stateno != [120,159]
projanim = 41998
projid = 2010
guard.dist = 0
projremovetime = 1
projedgebound = 9999
projstagebound = 9999
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1
persistent = 0

[State 22001, Projectile Flag]
type = Projectile
trigger1 = movecontact
trigger1 = !movehit
projanim = 41998
projid = 1710
guard.dist = 0
projremovetime = 1
projedgebound = 9999
projstagebound = 9999
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1
persistent = 0

[State 22001, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.96*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 22001, Zeeky]
type = changestate
trigger1 = movecontact||movereversed
trigger2 = frontedgedist < -160
trigger3 = backedgedist < -160
trigger4 = screenpos y < -160
trigger5 = pos y >= 200
value = 61002

;---------------------------------------------------------------------------
; "Inscribed Red Soul"

[Statedef 42100]
type = U
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 42100+1*(statetype=A)+0*floor(cond(var(57)=8,var(57):=0,1))
sprpriority = 1
facep2 = 0

[State 2100, FaceP2]
type = turn
trigger1 = time = 0
trigger1 = statetype != A
trigger1 = p2dist x < 0

[State 2100, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S
physics = S

[State 2000, VS]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10)= fvar(10)*0.925

[State 210, PSND]
type = playsnd
trigger1 = time = 0
value = 42100,0
channel = 0

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 1999
stateno = 60000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 40
anim = -1
sound = S40004,0
p2defmul = 1
poweradd = -1000
unhittable = 1
movetime = 40
darken = 0

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 40701
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[State 2100, Startup Invul]
type = nothitby
trigger1 = animelemtime(20)<0
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 2100, STS]
type = statetypeset
trigger1 = animelemtime(18)=0
statetype = A
physics = N

[State 2100, VelS]
type = velset
trigger1 = animelemtime(18)=0
x = 0.2
y = -0.5

[State 2100, Playsn]
type = playsnd
trigger1 = animelemtime(19)>=0 && animelemtime(73)<=0
persistent = 2
value = 42100,10
channel = 5

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(19)>=0 && animelemtime(73)<=0
value = 42000,0;425,0
channel = 0
persistent = 0;16

[State 2100, Slashy Effect]
type = helper
trigger1 = animelemtime(19)=0||animelemtime(27)=0||animelemtime(35)=0||animelemtime(43)=0||animelemtime(51)=0||animelemtime(59)=0||animelemtime(67)=0||animelemtime(75)=0
trigger1 = (var(36):=14)||1 ;Set X pos
trigger1 = (var(37):=-65)||1 ;Set Y pos
trigger1 = (var(38):=2110)||1 ;Set Helper ID
trigger2 = animelemtime(21)=0||animelemtime(29)=0||animelemtime(37)=0||animelemtime(45)=0||animelemtime(53)=0||animelemtime(61)=0||animelemtime(69)=0
trigger2 = (var(36):=12)||1 ;Set X pos
trigger2 = (var(37):=-70)||1 ;Set Y pos
trigger2 = (var(38):=2111)||1 ;Set Helper ID
trigger3 = animelemtime(23)=0||animelemtime(31)=0||animelemtime(39)=0||animelemtime(47)=0||animelemtime(55)=0||animelemtime(63)=0||animelemtime(71)=0
trigger3 = (var(36):=13)||1 ;Set X pos
trigger3 = (var(37):=-65)||1 ;Set Y pos
trigger3 = (var(38):=2112)||1 ;Set Helper ID
trigger4 = animelemtime(25)=0||animelemtime(33)=0||animelemtime(41)=0||animelemtime(49)=0||animelemtime(57)=0||animelemtime(65)=0||animelemtime(73)=0
trigger4 = (var(36):=11)||1 ;Set X pos
trigger4 = (var(37):=-70)||1 ;Set Y pos
trigger4 = (var(38):=2113)||1 ;Set Helper ID
helpertype = normal
name = "Slashy"
ID = var(38);2110
pos = var(36)+floor(random/200.0),var(37)+floor(random/100.0)
postype = p1
stateno = 62100
ownpal = 1
facing = 1

[State 2100, STS]
type = statetypeset
trigger1 = animelemtime(75)>=2
movetype = I
ignorehitpause = 1
persistent = 0

[State 2100, Grav]
type = VelAdd
trigger1 = animelemtime(76)>1
y = 0.5

[State 2100, Land]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 42101

;---------------------------------------------------------------------------
; Inscribed Red Soul Land

[Statedef 42101]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 42105
sprpriority = 1

[State 2101, PSND]
type = playsnd
trigger1 = time = 0
value = 40040,0

[State 2101, PS]
type = posset
trigger1 = time = 0
y = 0

[State 2101, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------
; Red Soul Slashy

[Statedef 62100]
type = A
movetype = A
physics = N
anim = 62100+1*(ishelper(2111)||ishelper(2113))
velset = 0,0
sprpriority = 8

[State 22100, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 22100, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP;,AT
slot = 0
time = -1
stateno = 61002
ignorehitpause = 1

[State 22100, TRans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1
; For anyone wondering why I use addalpha instead of add its because add is depricated in 1.1
;So the less work I have to do when the full version comes out the better. Yes, I'm lazy as fuck...

[State 22100, Multi Varset]
;Ahhh the classic Multi Varset workaround with assignment operators. You gotta love it.
type = null
triggerall = time = 0
trigger1 = ishelper(2110)||ishelper(2111)
trigger1 = (var(0):=5+floor(41*random/1000.0))||1 ;Random Angle
trigger1 = (var(1):=floor(6*random/1000.0))||1
trigger1 = (var(2):=ifelse(random%2=0,(random%3),6+(random%3)))||1
trigger2 = ishelper(2112)||ishelper(2113)
trigger2 = (var(0):=-5-floor(41*random/1000.0))||1 ;Random Angle
trigger2 = (var(1):=floor(6*random/1000.0))||1
trigger2 = (var(2):=ifelse(random%2=0,(random%3),6+(random%3)))||1

[State 22100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 22100, Angledraw]
type = angledraw
trigger1 = 1
value = var(0)
scale = 2.0+(time/60.0)+(0.1*var(1)),0.5+(time/60.0)+(0.1*var(2))

[State 22100, VelS]
type = velset
trigger1 = ishelper(2110)||ishelper(2111)
trigger1 = time = 1
x = 0.2*var(1)+ifelse(var(0)>20,2,3)
y = 0.1*var(1)+ifelse(var(0)>20,(var(0)/-45.0),(var(0)/-55.0))

[State 22100, VelS]
type = velset
trigger1 = ishelper(2112)||ishelper(2113)
trigger1 = time = 1
x = 0.2*var(1)+ifelse(var(0)<-20,2,3)
y = 0.1*var(1)+ifelse(var(0)<-20,(var(0)/-60.0),(var(0)/-50.0))

[State 22100, HITDEF]
type = Hitdef
trigger1 = time
trigger1 = !movecontact && !movereversed
attr = A,HP
animtype = Back
damage = ceil(10.0*(root,fvar(11)/cond(root,var(57)=8,(root,fvar(30)),1))),2
priority = 4,Hit
hitflag = MAFP
guardflag = MA
pausetime = 0,4
sparkno = S48015+(random%2)
guard.sparkno = S48030
sparkxy = -10,0
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 8
ground.hittime = 8
air.hittime = 8
guard.slidetime = 4
guard.hittime = 4
ground.velocity = -3,-7.75
guard.velocity = -3
air.velocity = -3,-7.75
yaccel = 0.5
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 10,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 2110

[State 220, First Combo Hit]
type = parentvarset
triggerall = numtarget(2110)
trigger1 = target(2110),gethitvar(hitcount)=1
trigger1 = root,var(57)=0
var(57) = 8;Change index
ignorehitpause = 1
persistent = 0

[State 22100, STS]
type = statetypeset
trigger1 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 46020
ID = 2110
ignorehitpause = 1

[State 22100, Projectile Flag]
type = Projectile
trigger1 = movehit
trigger1 = p2movetype = H
trigger1 = p2stateno != [120,159]
projanim = 41998
projid = 2110
guard.dist = 0
projremovetime = 1
projedgebound = 9999
projstagebound = 9999
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1
persistent = 0

[State 22100, Projectile Flag]
type = Projectile
trigger1 = movecontact
trigger1 = !movehit
projanim = 41998
projid = 1710
guard.dist = 0
projremovetime = 1
projedgebound = 9999
projstagebound = 9999
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1
persistent = 0

[State 22100, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.98*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 22100, CS]
type = changestate
trigger1 = time >= 180
trigger2 = animtime = 0
trigger3 = root,movetype = H
trigger4 = movereversed
value = 61002

;--------------------------------------------------------------------------
; "Sakuya's World"

[Statedef 44000]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 44000
sprpriority = 1
facep2 = 1

[State 2100, IKEMEN BUG FIX]
type = nothitby
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 40
ignorehitpause = 1

[State 4000, VS]
type = varset
trigger1 = time = 0
var(10)= 0

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 3999
stateno = 60000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 9999
supermovetime = 40

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 40701
ownpal = 1
facing = 1
pausemovetime = 40;99999
supermovetime = 40

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 40
anim = -1
sound = S40004,1
p2defmul = 1
poweradd = -3000
unhittable = 1
movetime = 40
darken = 0

[State 210, PSND]
type = playsnd
trigger1 = time = 0
value = 44000,0
channel = 0

[State 4000, Null]
type = null
trigger1 = time = 79
trigger1 = (var(50):=420)||1 ;Rice wasn't so clever in hindsight due to the one tick delay between varset and pause taking effect

[State 4000, PSND]
type = playsnd
trigger1 = time = 80
value = 44000,10
channel = 2

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 80
helpertype = normal
name = "Timestop"
id = 24000
stateno = 64000
pos = 0,-200
postype = p1
ownpal = 1
facing = 1
size.xscale = 3.0
size.yscale = 3.0
pausemovetime = 9999
supermovetime = 40

[State 4000, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------
; Timestop

[Statedef 64000]
type = A
movetype = I
physics = N
anim = 64000
sprpriority = -10

[State 24000, Posset]
type = PosSet
trigger1 = time = 0
x = 0
y = -200

[State 24000, HitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = nofg
ignorehitpause = 1

[State 190, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = !ishelper(24000)
flag = intro
flag2 = nobardisplay
ignorehitpause = 1

[State 24000, CS]
type = changestate
trigger1 = ishelper(24000)
trigger1 = root,var(50)<=0
trigger2 = !ishelper(24000)
trigger2 = root,stateno = 40193
trigger2 = root,anim = 40190
;trigger2 = root,animelemtime(10)>=0
value = 64001

;------------------------------
; Time Resume

[Statedef 64001]
type = A
movetype = I
physics = N
sprpriority = -10
velset = 0,0

[State 24001, HitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 24001, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/16.0),0+floor(256.0*time/16.0)
ignorehitpause = 1

[State 24001, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 190, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = !ishelper(24000)
flag = intro
flag2 = nobardisplay

[State 24001, CS]
type = Destroyself
trigger1 = time >= 16

;--------------------------------------------------------------------------
; Lvl 3: "Deflation World"

[Statedef 44100]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 44100
sprpriority = 1
facep2 = 1

[State 4100, Deflation World Hitflag]
type = varset
trigger1 = time = 0
var(39) = 0

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 3999
stateno = 60000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 40701
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[State 2100, IKEMEN BUG FIX]
type = nothitby
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 40
ignorehitpause = 1

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 40
anim = -1
sound = S40004,1
p2defmul = 1
poweradd = -3000
unhittable = 1
movetime = 40
darken = 0

[State 4100, PNSD]
type = playsnd
trigger1 = animelemtime(5)=0
value = 44100,0
channel = 0

[State 4100, PNSD]
type = playsnd
trigger1 = animelemtime(7)=0
value = 44100,14

[State 210, 2]
type = HitDef
trigger1 = animelemtime(7)=0
attr = A,HA
animtype = hard
damage = ceil(80*ifelse(var(42),1.25,1.0)),90;80
priority = 4,Hit
hitflag = MAF
guardflag = H
pausetime = 0,10
guard.pausetime = 10,10
sparkno = S48025+(random%2)
guard.sparkno = S48030
sparkxy = -10,-60
hitsound = S40001,5
guardsound = S40002,0
ground.type = High
air.type = High
ground.slidetime = 26+3*(var(42))
ground.hittime = 26+3*(var(42))
air.hittime = 26+3*(var(42))
ground.velocity = -15.5,-6
guard.velocity = -7.5
air.velocity = -15.5,-6.5
airguard.velocity = -7.5,-3
getpower = 0,0
givepower = 20,600
yaccel = 0.5
fall = 1
numhits = 6
fall.recover = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
forcestand = 1
numhits = 6
id = 4100

[State 4000, Effect]
type = helper
trigger1 = animelemtime(8)=0
trigger1 = !movecontact && !movereversed
helpertype = normal
name = "Knives"
ID = 24120
pos = 65,-35
postype = p1
stateno = 64120
ownpal = 1
facing = 1

[State 4100, CS]
type = changestate
trigger1 = movehit && numtarget
trigger2 = (projhit24100=1) && numtarget
value = 44101
ignorehitpause = 1
persistent = 0

[State 4100, Deflation World Hitflag]
type = varset
trigger1 = (projcontact24100=1) && numtarget
var(39) = 1
ignorehitpause = 1
persistent = 0

[State 4100, STS]
type = statetypeset
trigger1 = animelemtime(9)=2
movetype = I
ignorehitpause = 1
persistent = 0

[State 4000, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Lvl 3: "Deflation World"

[Statedef 44101]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 44101
sprpriority = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
flag2 = nobardisplay
ignorehitpause = 1

[State 4100, PNSD]
type = playsnd
trigger1 = animelemtime(7)=0
value = 41100,0
channel = 0

[State 24110, PSND]
type = playsnd
trigger1 = time = 0
value = 44100,10

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, TargetState]
type = TargetState
triggerall = numtarget(4100)
trigger1 = time = 0
value = 44150
ID = 4100

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Timestop"
ID = 24100
pos = 0,0
postype = p1
stateno = 64100
ownpal = 1
facing = 1
;ignorehitpause = 1
;persistent = 0

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Timestop"
ID = 24101
pos = 0,0
postype = p1
stateno = 64100
ownpal = 1
facing = 1
;ignorehitpause = 1
;persistent = 0

[State 0, TargetState]
type = TargetState
triggerall = numtarget(4100)
trigger1 = animelemtime(7)=0
value = 44151
ID = 4100

[State 1200, Teleport FX]
type = explod
trigger1 = animelemtime(7)=20
anim = 64102
id = 24102
pos = 0,0
vel = 3.5,0.0
ownpal = 1
facing = 1
sprpriority = 5
pausemovetime = 9999
[State 1200, Teleport FX]
type = explod
trigger1 = animelemtime(7)=20
anim = 64103
id = 24103
pos = 0,0
vel = -3.5,0.0
ownpal = 1
facing = 1
sprpriority = 5
pausemovetime = 9999

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(7)=20
value = 41200,10

[State 4101, CS]
type = changestate
trigger1 = animelemtime(7)=20
value = 44102

;--------------------------------------------------------------------------
; Lvl 3: "Deflation World"

[Statedef 44102]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 41998
sprpriority = 1

[State 4102, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 4102, PS]
type = posset
trigger1 = time = 1
x = floor(gamewidth/2.0)*facing

[State 4102, T]
type = turn
trigger1 = time = 1
trigger1 = p2dist x < 0

[State 4102, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = timerfreeze
flag3 = nobardisplay
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
;ignorehitpause = 
;persistent = 

[State 4102, VS]
type = velset
trigger1 = time
x = 1.5

[State 4102, CA]
type = changeanim
trigger1 = time = 1
value = 40020

[State 4102, PA]
type = posadd
trigger1 = time = 35
x = 120
persistent = 0

[State 4100, PNSD]
type = playsnd
trigger1 = time=35
value = 44100,1
channel = 0

[State 1000, PSND]
type = playsnd
trigger1 = time = 35||time=78
value = 41200,10

;[State 0, AllPalFX]
;type = AllPalFX
;trigger1 = time = 34||time=77
;time = 2
;add = 256,256,256

[State 4102, EnvColor]
type = EnvColor
trigger1 = time = 34||time=77
time = 2
value = 255,255,255
;alpha = 256,256

[State 4102, VS]
type = velset
trigger1 = time =35
x = 1.0

[State 4000, Effect]
type = helper
trigger1 = time = 35
helpertype = normal
name = "DeflateKnive"
ID = 24110
pos = 0,0
postype = p1
stateno = 64110
ownpal = 1
facing = ifelse(facing=1,-1,1);1
[State 4000, Effect]
type = helper
trigger1 = time = 35
helpertype = normal
name = "DeflateKnive"
ID = 24111
pos = 0,0
postype = p1
stateno = 64110
ownpal = 1
facing = ifelse(facing=1,-1,1)
[State 4000, Effect]
type = helper
trigger1 = time = 35
helpertype = normal
name = "DeflateKnive"
ID = 24112
pos = 0,0
postype = p1
stateno = 64110
ownpal = 1
facing = ifelse(facing=1,-1,1)
[State 4000, Effect]
type = helper
trigger1 = time = 35
helpertype = normal
name = "DeflateKnive"
ID = 24113
pos = 0,0
postype = p1
stateno = 64110
ownpal = 1
facing = ifelse(facing=1,-1,1)
[State 4000, Effect]
type = helper
trigger1 = time = 35
helpertype = normal
name = "DeflateKnive"
ID = 24114
pos = 0,0
postype = p1
stateno = 64110
ownpal = 1
facing = ifelse(facing=1,-1,1)
[State 4000, Effect]
type = helper
trigger1 = time = 35
helpertype = normal
name = "DeflateKnive"
ID = 24115
pos = 0,0
postype = p1
stateno = 64110
ownpal = 1
facing = ifelse(facing=1,-1,1)

[State 4000, Effect]
type = helper
trigger1 = time = 35
helpertype = normal
name = "DeflateKnive"
ID = 24116
pos = 0,0
postype = p1
stateno = 64110
ownpal = 1
facing = ifelse(facing=1,-1,1)
[State 4000, Effect]
type = helper
trigger1 = time = 35
helpertype = normal
name = "DeflateKnive"
ID = 24117
pos = 0,0
postype = p1
stateno = 64110
ownpal = 1
facing = ifelse(facing=1,-1,1)
[State 4000, Effect]
type = helper
trigger1 = time = 35
helpertype = normal
name = "DeflateKnive"
ID = 24118
pos = 0,0
postype = p1
stateno = 64110
ownpal = 1
facing = ifelse(facing=1,-1,1)
[State 4000, Effect]
type = helper
trigger1 = time = 35
helpertype = normal
name = "DeflateKnive"
ID = 24119
pos = 0,0
postype = p1
stateno = 64110
ownpal = 1
facing = ifelse(facing=1,-1,1)
[State 4000, Effect]
type = helper
trigger1 = time = 35
helpertype = normal
name = "DeflateKnive"
ID = 24120
pos = 0,0
postype = p1
stateno = 64110
ownpal = 1
facing = ifelse(facing=1,-1,1)
[State 4000, Effect]
type = helper
trigger1 = time = 35
helpertype = normal
name = "DeflateKnive"
ID = 24121
pos = 0,0
postype = p1
stateno = 64110
ownpal = 1
facing = ifelse(facing=1,-1,1)

[State 4102, PA]
type = posadd
trigger1 = time = 78
x = 50

[State 4103, CS]
type = changestate
trigger1 = time = 78
value = 44103

;--------------------------------------------------------------------------
; Lvl 3: "Deflation World"

[Statedef 44103]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 44102
sprpriority = 1
facep2 = 1

[State 4100, PNSD]
type = playsnd
trigger1 = animelemtime(6)=0
value = 44100,2
channel = 0

[State 4102, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = timerfreeze
flag3 = nobardisplay
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
;ignorehitpause = 
;persistent = 

[State 0, TargetState]
type = TargetState
triggerall = numtarget(4100)
trigger1 = animelemtime(4)=0
value = 44152
ID = 4100

[State 4103, TLA]
type = targetlifeadd
trigger1 = numtarget(4100)
trigger1 = animelemtime(11)=0
value = -370

[State 4103, TLA]
type = targetpoweradd
trigger1 = numtarget(4100)
trigger1 = animelemtime(11)=0
value = 580

[State 0, TargetState]
type = TargetState
triggerall = numtarget(4100)
trigger1 = animelemtime(11)=30
value = 46020;4153
ID = 4100

[State 4103, CS]
type = changestate
trigger1 = animelemtime(11)=30
value = 44104

;--------------------------------------------------------------------------
; Lvl 3: "Deflation World"

[Statedef 44104]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 44103
sprpriority = 1

[State 4104, VS]
type = varset
trigger1 = time = 0
fvar(10) = fvar(10)*0.5*cond(fvar(10)>=1.0,(fvar(30)),1.0)

[State 4104, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Lvl 3: "Deflation World"

[Statedef 64100]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 64100+1*ishelper(24101)
sprpriority = -5+1*ishelper(24101)

[State 24100, VS]
type = varset
trigger1 = root,stateno = 44101
trigger1 = root,animelemtime(7)>=0
var(0)= 1
persistent = 0

[State 24100, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = nofg
flag3 = nobg

[State 24220, PS]
type = posset
trigger1 = 1
x = 0

[State 24220, PS]
type = posadd
trigger1 = 1
y = -floor(screenpos y)+floor(gameheight/2.0)

[State 24102, PSND]
type = playsnd
trigger1 = var(0)
trigger1 = var(1)<180
trigger1 = ishelper(24100)
persistent = 0
value = 44100,11

[State 24100, AS]
type = angleadd
trigger1 = var(0)
trigger1 = var(1)<180
value = 9+0*(var(1):=var(1)+9)

[State 24100, AD]
type = angledraw
trigger1 = 1
ignorehitpause = 1

[State 24100, CS]
type = changestate
trigger1 = root,stateno = 44103
trigger1 = root,animelemtime(4)=0
value = 64101

;--------------------------------------------------------------------------
; Lvl 3: "Deflation World"

[Statedef 64101]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
sprpriority = -5+1*ishelper(24101)

;[State 24100, VS]
;type = varset
;trigger1 = root,stateno = 4101
;trigger1 = root,animelemtime(7)>=0
;persistent = 0
;var(0)=1

[State 24100, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = nofg
flag3 = nobg

[State 24220, PS]
type = posset
trigger1 = 1
x = 0

[State 24102, PSND]
type = playsnd
trigger1 = time = 0 && ishelper(24100)
value = 44100,11

[State 24220, PS]
type = posadd
trigger1 = 1
y = -floor(screenpos y)+floor(gameheight/2.0)

[State 24100, AS]
type = angleadd
trigger1 = var(0)
trigger1 = var(1)>0;<180
value = -18+0*(var(1):=var(1)-18)

[State 24101, CA]
type = changeanim
trigger1 = ishelper(24101)
trigger1 = time = 5;10
value = 64105

[State 24100, AD]
type = angledraw
trigger1 = 1
ignorehitpause = 1

[State 24110, CS]
type = changestate
trigger1 = ishelper(24100)
trigger1 = root,stateno = 44103
trigger1 = root,anim = 44102
trigger1 = root,animelemtime(9)=0
value = 64102

[State 24110, Zeeky]
type = destroyself
trigger1 = ishelper(24101)
trigger1 = animtime = 0
trigger1 = anim = 64105

;--------------------------------------------------------------------------
; Lvl 3: "Deflation World"

[Statedef 64102]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
sprpriority = -5+1*ishelper(24101)

;[State 24100, VS]
;type = varset
;trigger1 = root,stateno = 4101
;trigger1 = root,animelemtime(7)>=0
;persistent = 0
;var(0)=1

[State 24100, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = nofg
flag3 = nobg

[State 24220, PS]
type = posset
trigger1 = 1
x = 0

[State 24220, PS]
type = posadd
trigger1 = 1
y = -floor(screenpos y)+floor(gameheight/2.0)

[State 24102, PSND]
type = playsnd
trigger1 = time = 0
value = 44100,13

[State 0, AllPalFX]
type = AllPalFX
trigger1 = time<10
time = 2
add = floor(256.0*time/10.0),floor(256.0*time/10.0),floor(256.0*time/10.0)

[State 0, AllPalFX]
type = AllPalFX
trigger1 = time>=10
time = 2
add = 256,256,256

[State 24102, CS]
type = changestate
trigger1 = root,stateno = 44104
value = 64103

;--------------------------------------------------------------------------
; Lvl 3: "Deflation World"

[Statedef 64103]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 41998
sprpriority = 1

;[State 24100, VS]
;type = varset
;trigger1 = root,stateno = 4101
;trigger1 = root,animelemtime(7)>=0
;persistent = 0
;var(0)=1

[State 0, AllPalFX]
type = AllPalFX
trigger1 = time<10
time = 2
add = 256-floor(256.0*time/10.0),256-floor(256.0*time/10.0),256-floor(256.0*time/10.0)

[State 24102, CS]
type = destroyself
trigger1 = time >= 20

;--------------------------------------------------------------------------
; Lvl 3: "Deflation World"

[Statedef 64110]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 41998;24110
sprpriority = 5

[State 24110, CA]
type = changeanim
trigger1 = time = 0
trigger1 = ishelper(24110)||ishelper(24111)||ishelper(24112)||ishelper(24113)||ishelper(24114)||ishelper(24115)
trigger2 = time = 6
trigger2 = ishelper(24116)
trigger3 = time = 12
trigger3 = ishelper(24117)
trigger4 = time = 18
trigger4 = ishelper(24118)
trigger5 = time = 24
trigger5 = ishelper(24119)
trigger6 = time = 30
trigger6 = ishelper(24120)
trigger7 = time = 36
trigger7 = ishelper(24121)
value = 64110

[State 24110, CVS]
type = null
triggerall = time = 0
trigger1 = ishelper(24110)
trigger1 = (var(0):=0+10)||1
trigger2 = ishelper(24111)
trigger2 = (var(0):=180+10)||1
trigger3 = ishelper(24112)
trigger3 = (var(0):=60+10)||1
trigger4 = ishelper(24113)
trigger4 = (var(0):=120+10)||1
trigger5 = ishelper(24114)
trigger5 = (var(0):=240+10)||1
trigger6 = ishelper(24115)
trigger6 = (var(0):=300+10)||1
trigger7 = ishelper(24116)
trigger7 = (var(0):=30+10)||1
trigger8 = ishelper(24117)
trigger8 = (var(0):=210+10)||1
trigger9 = ishelper(24118)
trigger9 = (var(0):=90+10)||1
trigger10 = ishelper(24119)
trigger10 = (var(0):=270+10)||1
trigger11 = ishelper(24120)
trigger11 = (var(0):=150+10)||1
trigger12 = ishelper(24121)
trigger12 = (var(0):=330+10)||1

[State 24110, PS]
type = posset
trigger1 = time = 0
x = floor(100*cos(var(0)*pi/180.0))
y = floor(100*sin(var(0)*pi/180.0))-(screenpos y)+120

[State 24110, AD]
type = angledraw
trigger1 = 1
value = var(0)
ignorehitpause = 1

[State 24110, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 24110, CS]
type = changestate
triggerall = root,stateno = 44103
trigger1 = ishelper(24110)
trigger1 = root,animelemtime(8)=0
trigger2 = ishelper(24111)
trigger2 = root,animelemtime(8)=10
trigger3 = ishelper(24112)
trigger3 = root,animelemtime(8)=20
trigger4 = ishelper(24113)
trigger4 = root,animelemtime(8)=30
trigger5 = ishelper(24114)
trigger5 = root,animelemtime(8)=40
trigger6 = ishelper(24115)
trigger6 = root,animelemtime(8)=50
trigger7 = ishelper(24116)
trigger7 = root,animelemtime(8)=60
trigger8 = ishelper(24117)
trigger8 = root,animelemtime(8)=70
trigger9 = ishelper(24118)
trigger9 = root,animelemtime(8)=80
trigger10 = ishelper(24119)
trigger10 = root,animelemtime(8)=90
trigger11 = ishelper(24120)
trigger11 = root,animelemtime(8)=100
trigger12 = ishelper(24121)
trigger12 = root,animelemtime(8)=110
value = 64111

;--------------------------------------------------------------------------
; Lvl 3: "Deflation World"

[Statedef 64111]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24110, AD]
type = angledraw
trigger1 = 1
value = var(0)
ignorehitpause = 1

[State 24110, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 24110, VS]
type = velset
trigger1 = time = 0
x = -5*cos(var(0)*pi/180.0)
y = 5*sin(var(0)*pi/180.0)

[State 24110, PSND]
type = playsnd
trigger1 = time = 5
value = 44100,12
channel = 4

[State 24110, VS]
type = velset
trigger1 = time = 5
x = 20*cos(var(0)*pi/180.0)
y = -20*sin(var(0)*pi/180.0)

[State 24110, Explod]
type = explod
trigger1 = time = 10
id = 8000
anim = 48015+(random%2)
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 10
time = 10
freq = 60
ampl = -4
;phase = 90
;ignorehitpause = 
;persistent = 

[State 24110, HA]
type = hitadd
trigger1 = time = 10
value = 1

[State 24110, PSND]
type = playsnd
trigger1 = time = 10
value = 40001,5
channel = 3

[State 24110, Zeeky]
type = destroyself
trigger1 = time = 10

;--------------------------------------------------------------------------
; Lvl 3: "Deflation World" Projectile

[Statedef 64120]
type = A
movetype = A
physics = N
ctrl = 0
velset = 20,0
anim = 41998
sprpriority = 0

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Knives"
ID = 24121
pos = 0,-10
postype = p1
stateno = 64121
ownpal = 1
facing = 1

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Knives"
ID = 24121
pos = 0,10
postype = p1
stateno = 64121
ownpal = 1
facing = 1

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Knives"
ID = 24122
pos = -5,-10
postype = p1
stateno = 64121
ownpal = 1
facing = 1

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Knives"
ID = 24123
pos = -5,10
postype = p1
stateno = 64121
ownpal = 1
facing = 1

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Knives"
ID = 24124
pos = -10,-20
postype = p1
stateno = 64121
ownpal = 1
facing = 1

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Knives"
ID = 24125
pos = -10,20
postype = p1
stateno = 64121
ownpal = 1
facing = 1

[State 210, 2]
type = Projectile
trigger1 = root,var(39)=0
trigger1 = root,stateno = 44100
persistent = 2
attr = A,HP
projanim = 64120
projid = 24100
projremove = 1
projremovetime = 4
projscale = 1.0,1.0
projpriority = 9999
velocity = 0
offset = 0,0
animtype = hard
damage = 30,80
priority = 4,hit
hitflag = MAF
guardflag = MA
pausetime = 0,10
guard.pausetime = 10,10
sparkno = S48025+(random%2)
guard.sparkno = S48030
sparkxy = -10,0
hitsound = S40001,5
guardsound = S40002,0
ground.type = High
air.type = High
ground.slidetime = 26
ground.hittime = 26
air.hittime = 26
ground.velocity = -15.5,-6
guard.velocity = -7.5
air.velocity = -15.5,-6.5
airguard.velocity = -7.5,-3
getpower = 0,0
givepower = 20,600
yaccel = 0.5
fall = 1
fall.recover = 0
numhits = 6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
forcestand = 1
id = 4100

[State 24120, Zeeky]
type = destroyself
trigger1 = root,stateno != 44100
trigger2 = root,movetype = H
trigger3 = frontedgedist < -10
trigger4 = time >= 600

;--------------------------------------------------------------------------
; Lvl 3: "Deflation World" Projectile

[Statedef 64121]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 64110
sprpriority = 5

[State 24121, VS]
type = null
triggerall = time = 0
trigger1 = ishelper(24121)
trigger1 = (var(10):=0)||1
trigger2 = ishelper(24122)
trigger2 = (var(10):=5)||1
trigger3 = ishelper(24123)
trigger3 = (var(10):=-5)||1
trigger4 = ishelper(24124)
trigger4 = (var(10):=10)||1
trigger5 = ishelper(24125)
trigger5 = (var(10):=-10)||1

[State 24121, VS]
type = velset
trigger1 = 1
x = 20.0*cos(var(10)*pi/180.0)
y = -20.0*sin(var(10)*pi/180.0)

[State 24121, AD]
type = angledraw
trigger1 = 1
value = var(10)
ignorehitpause = 1

[State 24121, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 24121, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24120, Zeeky]
type = destroyself
trigger1 = root,stateno != 44100
trigger2 = root,movetype = H
trigger3 = frontedgedist < -10
trigger4 = time >= 600

;--------------------------------------------------------------------------
; Lvl 3: "Deflation World"

[Statedef 44150]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
;anim = 4150
sprpriority = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 44150
;elem = 1
;ignorehitpause = 
;persistent = 

[State 0, Offset]
type = posadd;Offset
trigger1 = animelemtime(3)=0
y = -55
ignorehitpause = 1
;persistent = 

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1
;persistent = 

;--------------------------------------------------------------------------
; Lvl 3: "Deflation World"

[Statedef 44151]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
;anim = 4150
sprpriority = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 4151, AD]
type = angledraw
trigger1 = 1
value = ifelse(time<20,-9*time,180)

[State 4151, VS]
type = velset
trigger1 = time=0
x = -(pos x/20.0)*facing
y = -(screenpos y - floor(gameheight/2.0))/20.0

[State 4151, VS]
type = velset
trigger1 = time=20
x = 0
y = 0

;--------------------------------------------------------------------------
; Lvl 3: "Deflation World"

[Statedef 44152]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
;anim = 4150
sprpriority = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 4151, AD]
type = angledraw
trigger1 = 1
value = ifelse(time<10,-180+18*time,0)

;[State 0, Offset]
;type = Offset
;trigger1 = 1
;;y = const(size.mid.pos.y)
;ignorehitpause = 1

;--------------------------------------------------------------------------
; Lvl 3: "Jill the Ripper"

[Statedef 44200]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 44200
sprpriority = 1
facep2 = 1

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 3999
stateno = 60000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = cond(var(50),99999999999,0)
supermovetime = cond(var(50),99999999999,0)

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 40701
ownpal = 1
facing = 1
pausemovetime = cond(var(50),99999999999,0)
supermovetime = cond(var(50),99999999999,0)

[State 4100, PNSD]
type = playsnd
trigger1 = time=0
value = 40004,1

[State 4100, PNSD]
type = playsnd
trigger1 = animelemtime(4)=0
value = 44200,0
channel = 0

[State 4100, PNSD]
type = playsnd
trigger1 = animelemtime(7)=0
value = 44200,10

[State 4100, STS]
type = statetypeset
trigger1 = animelemtime(7)=0
physics = N
statetype = A

[State 4100, STS]
type = statetypeset
trigger1 = animelemtime(13)=0
physics = S
statetype = S

[State 4100, VS]
type = velset
trigger1 = animelemtime(7)=0
x = 1.0
y = -1.0

[State 4000, Effect]
type = helper
trigger1 = animelemtime(7)=0
helpertype = normal
name = "Afterimage1"
ID = 24210
pos = 0,0
postype = p1
stateno = 64210
ownpal = 1
facing = 1
pausemovetime = cond(var(50),99999999999,0)
supermovetime = cond(var(50),99999999999,0)

[State 4000, Effect]
type = helper
trigger1 = animelemtime(8)=0
helpertype = normal
name = "Afterimage1"
ID = 24211
pos = 0,0
postype = p1
stateno = 64210
ownpal = 1
facing = 1
pausemovetime = cond(var(50),99999999999,0)
supermovetime = cond(var(50),99999999999,0)

[State 4000, Effect]
type = helper
trigger1 = animelemtime(9)=0
helpertype = normal
name = "Afterimage1"
ID = 24212
pos = 0,0
postype = p1
stateno = 64210
ownpal = 1
facing = 1
pausemovetime = cond(var(50),99999999999,0)
supermovetime = cond(var(50),99999999999,0)

[State 4000, Effect]
type = helper
trigger1 = animelemtime(10)=0
helpertype = normal
name = "Afterimage1"
ID = 24213
pos = 0,0
postype = p1
stateno = 64210
ownpal = 1
facing = 1
pausemovetime = cond(var(50),99999999999,0)
supermovetime = cond(var(50),99999999999,0)

[State 4000, Effect]
type = helper
trigger1 = animelemtime(11)=0
helpertype = normal
name = "Afterimage1"
ID = 24214
pos = 0,0
postype = p1
stateno = 64210
ownpal = 1
facing = 1
pausemovetime = cond(var(50),99999999999,0)
supermovetime = cond(var(50),99999999999,0)

[State 4100, VS]
type = veladd
trigger1 = animelemtime(7)>0 && animelemtime(12)<0
y = 0.01

[State 4100, VS]
type = velset
trigger1 = animelemtime(12)=0
x = 0
y = 0

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(11)=0
trigger2 = animelemtime(13)=0
value = 41200,10

[State 4100, ASS]
type = assertspecial
trigger1 = animelemtime(11)>0 && animelemtime(12)<0
flag = invisible
persistent = 2

[State 4200, PS]
type = posset
trigger1 = animelemtime(13)=0
x = 0
y = 0

[State 1200, Teleport FX]
type = explod
trigger1 = animelemtime(13)=0
anim = 61201
id = 21201
pos = 20,0
vel = -2,0
ownpal = 1
facing = 1
sprpriority = 5
pausemovetime = cond(var(50),99999999999,0)
[State 1200, Teleport FX]
type = explod
trigger1 = animelemtime(13)=0
anim = 61201
id = 21201
pos = -20,0
vel = 2,0
ownpal = 1
facing = 1
sprpriority = 5
pausemovetime = cond(var(50),99999999999,0)

[State 4200, PNSD]
type = playsnd
trigger1 = animelemtime(15)>=0 && animelemtime(45)<0
persistent = 4
value = 40001,5
channel = 2

[State 4200, PNSD]
type = playsnd
trigger1 = animelemtime(15)>=0 && animelemtime(45)<0
persistent = 4
value = 42100,10
channel = 1
abspan = cond(numtarget(4200),(target(4200),pos x)*facing,0)

[State 0, Explod]
type = Explod
trigger1 = numenemy
trigger1 = animelemtime(15)>=0 && animelemtime(45)<0
persistent = 4 
anim = 64210+floor(6.0*random/1000.0)
ID = 24210
pos = floor(p2dist x)-40+floor(41.0*random/1000.0),floor(p2dist y)+(enemynear,-55)+20-floor(41.0*random/1000.0)
postype = p1 ;p2,front,back,left,right
facing = 1-2*(random%2)
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 5
shadow = 0,0,0
ownpal = 1
pausemovetime = cond(var(50),99999999999,0)

[State 1000, 5]
type = Projectile
trigger1 = numenemy
trigger1 = animelemtime(15)>=0 && animelemtime(45)<0
persistent = 4
attr = S,HA
projanim = 64200
projid = 24200
projremove = 1
projremovetime = 4
projscale = 1.0,1.0
projpriority = 9999
velocity = 0
offset = floor(p2dist x),floor(p2dist y)+(enemynear,-55)
animtype = Hard
damage = ceil(7.5/fvar(11)),ceil(7.5/fvar(11))
priority = 7,Hit
hitflag = MAFDP
guardflag =  
pausetime = 0,6
sparkxy = -20+floor(41.0*random/1000.0),-20+floor(41.0*random/1000.0)
sparkno = S48015+(random%2)
guard.sparkno = S48030
hitsound = -1;s1,5
guardsound = -1;s2,0
ground.type = High
ground.slidetime = 29
ground.hittime = 29
air.hittime = 29
guard.slidetime = 11
ground.slidetime = 11
ground.velocity = -5.5,-7.5
guard.velocity = -5.5
air.velocity = -5.5,-7.5
airguard.velocity = -5.5,-7.5
yaccel = 0.5
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 0,0
givepower = 20,20
ownpal = 1
id = 4200
guard.dist = 0
p2facing = 1

[State 21000, STS]
type = statetypeset
trigger1 = animelemtime(45)>=2
movetype = I
ignorehitpause = 1
persistent = 0

[State 0, Hard Knockdown]
type = TargetState
trigger1 = numenemy
trigger1 = p2statetype=A && (projhit24200=1) && (p2stateno!=[6020,6110])
value = 46020
ID = 4200
ignorehitpause = 1

[State 4200, VS]
type = varset
trigger1 = animelemtime(46)=0
fvar(10)= fvar(10)*0.65*cond(fvar(10)>=1.0,(fvar(30)),1.0)

[State 4200, VS]
type = varset
trigger1 = animelemtime(46)=0
var(50) = 0

[State 4000, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------
; Afterimage

[Statedef 64210]
type = A
movetype = I
physics = N
sprpriority = 0
anim = 64220+1*ishelper(24211)+2*ishelper(24212)+3*ishelper(24213)+4*ishelper(24214)
velset = 0,0

[State 4507]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 4507]
type = varset
trigger1 = time = 0
var(17) = -3

[State 4507]
type = varadd
trigger1 = ishelper(24210)
trigger1 = time+11 = [1,75]
trigger2 = ishelper(24211)
trigger2 = time+11 = [1,60]
trigger3 = ishelper(24212)
trigger3 = time+11 = [1,45]
trigger4 = ishelper(24213)
trigger4 = time+11 = [1,30]
trigger5 = ishelper(24214)
trigger5 = time+11 = [1,15]
var(17) = -1

[State 4507]
type = varadd
trigger1 = ishelper(24210)
trigger1 = time+11 > 75
trigger2 = ishelper(24211)
trigger2 = time+11 > 60
trigger3 = ishelper(24212)
trigger3 = time+11 > 45
trigger4 = ishelper(24213)
trigger4 = time+11 > 30
trigger5 = ishelper(24214)
trigger5 = time+11 > 15
var(17) = -12

[State 4507]
type = Palfx
trigger1 = time >= 0
add = var(17),var(17),var(17)
time = 1

[State 4507, DestroySelf]
type = Destroyself
trigger1 = var(17) < -234

[Statedef 40260]
type = A
movetype = H
physics = N
sprpriority = 0
velset = 0,0

[State 250, T]
Type = Turn
Trigger1 = p2dist x < 0

[state 250, CA]
type = changeanim
trigger1 = time = 0
value = 45030

[state 250, CA]
type = ChangeAnim
trigger1 = !hitshakeover
trigger1 = time
value = anim
elem = animelemno(0)

[State 250, CA]
Type = ChangeAnim
Trigger1 = animtime = 0
Trigger1 = Anim = 45030
Value = 45050

[state 4250, VelS]
type = velset
trigger1 = hitshakeover
x = gethitvar(xvel)*facing;*hitshakeover
y = gethitvar(yvel);*hitshakeover
persistent = 0

[State 250, VA]
type = veladd
trigger1 = hitshakeover
y = gethitvar(yaccel)

[State 4250, SB]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1,0
ignorehitpause = 0

[State 250, CS]
type = changestate
trigger1 = frontedgebodydist <= 0
trigger2 = backedgebodydist <= 0
value = 40261

[State 250, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 46100

;---------------------------------------------------------------------------
; Wallslam

[Statedef 40261]
type = A
movetype = H
physics = N
sprpriority = 1

[State 251, Shake]
type = envshake
trigger1 = time = 0
time = 15
freq = 100
phase = 100
ampl = 8

[State 251, CA]
Type = ChangeAnim
Trigger1 = Time < 3
Trigger1 = SelfAnimExist(45035)
Value = 45035

[State 251, PF]
Type = PosFreeze
Trigger1 = Time < 4

[state 4250, CA2]
type = changeanim
trigger1 = time = 3
trigger1 = selfanimexist(45061)
value = 45061

[state 4250, CA2]
type = changeanim2
trigger1 = time = 3
trigger1 = !selfanimexist(45061)
value = 45061

[State 251]
Type = Turn
trigger1 = p2dist x < 0
Trigger1 = Time = 4

[State 1112]
type = VelSet
trigger1 = Time = 4
x = 0.5
y = -8.0

[State 251, VA]
type = VelAdd
trigger1 = time > 4
y = .35

[State 243, Recover] ;Recover near ground (use ChangeState)
type = SelfState
triggerall = time >= 10
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 45200 ;HITFALL_RECOVER

[State 243, Recover] ;Recover in mid air (use SelfState)
type = SelfState
triggerall = time >= 10
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 45210 ;HITFALL_AIRRECOVER

[State -2, PS]
type = posset
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
y = 0

[State 4250, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 40262

;---------------------------------------------------------------------------
; Wallslam

[Statedef 40262]
type = L
movetype = H
physics = N

[State -2, PS]
type = posset
trigger1 = 1
y = 0

[State 4250, CS]
type = changestate
trigger1 = 1
value = 46100

;---------------------------------------------------------------------------
; Groundslam

[Statedef 40450]
type = A
movetype = H
physics = N
velset = 0,0

[State 820, CA]
type = changeanim
trigger1 = time = 0
persistent = 0
value = 45030

[State 820, CA]
type = changeanim
trigger1 = hitshakeover
trigger1 = selfanimexist(45060)
persistent = 0
value = 45060

[State 820, CA]
type = changeanim2
trigger1 = hitshakeover
trigger1 = !selfanimexist(45060)
persistent = 0
value = 40450

[State 250, T]
Type = Turn
Trigger1 = p2dist x < 0

[state 4250, VelS]
type = velset
trigger1 = hitshakeover
x = gethitvar(xvel)*facing;*hitshakeover
y = gethitvar(yvel);*hitshakeover
persistent = 0

[State 250, VA]
type = veladd
trigger1 = hitshakeover
y = gethitvar(yaccel)

[State 250, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 40451

;---------------------------------------------------------------------------
; Groundslam

[Statedef 40451]
type = A
movetype = H
physics = N
velset = 0,0

[State 251, PS]
type = posset
trigger1 = time = 0
y = 0

[State 251, Shake]
type = envshake
trigger1 = time = 0
time = 15
freq = 100
phase = 100
ampl = 8

[State 251, CA]
type = changeanim2
trigger1 = time = 0
value = 40451

[State 251, PF]
type = PosFreeze
trigger1 = time < 4

[State 4250, CA2]
type = changeanim2
trigger1 = time = 3
value = 40452

[State 1112]
type = VelSet
trigger1 = time = 0
x = -1.0
y = -6.0

[State 251, VA]
type = VelAdd
trigger1 = time > 4
y = .3

[State 251, AD]
type = AngleDraw
trigger1 = time = [3,4]
trigger2 = Pos Y < 0
value = (time-3)*30

[State 251, OS]
type = OffSet
trigger1 = time = [3,4]
trigger2 = pos y < 0
y = -55

[State 250, CS]
type = selfstate
triggerall = time >= 10
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 45040

[State 251, AD]
type = AngleDraw
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 0

[State 251, OS]
type = OffSet
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
y = 0

[State 851, SS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 46100

;---------------------------------------------------------------------------
; CUSTOM TRIP (shaking) (Modified)

[Statedef 40470]
type = A
movetype = H
physics = N
velset = 0,0

[State 5070, 1]
type = ChangeAnim
trigger1 = 1
value = 5070 + 40000*(!InCustomState)

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 40471

;---------------------------------------------------------------------------
; CUSTOM TRIP2 (fall through air) (Modded)

[Statedef 40471]
type = A
movetype = H
physics = N

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = 0.7 ;GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
type = changestate
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
value = 46110

;---------------------------------------------------------------------------
; Grabbed - 1

[Statedef 40850]
type = S
movetype = H
physics = S
velset = 0,0

[State 801, PP]
type = playerpush
trigger1 = 1
value = 0

[State 850, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 803, CA]
type = changeanim
trigger1 = time <= 39
value = anim
elem = animelemno(0)-1

;---------------------------------------------------------------------------
; Grabbed - 1

[Statedef 40851]
type = L
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 1

[State 4150, CA2]
type = changeanim2
trigger1 = time = 0
value = 40851

;---------------------------------------------------------------------------
; Grabbed

[Statedef 40852]
type = L
movetype = H
physics = N
sprpriority = 1

[state 852, CA2]
type = changeanim2
trigger1 = time = 0
value = 40852

;---------------------------------------------------------------------------
; Grabbed

[Statedef 40853]
type = A
movetype = H
physics = N
sprpriority = 1

[state 853, CA2]
type = changeanim2
trigger1 = time = 0
value = 40851

[State 853, Bind]
type = velset
trigger1 = animelemtime(1)=0
x = -6
y = -6

[State 853, Accel]
type = veladd ;Gravity
trigger1 = animelemtime(1)>0
y = 0.5

[State 853, Hitground]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 40854

;---------------------------------------------------------------------------
; Hard Knockdown

[Statedef 40854]
type = L
movetype = H
physics = N
velset = 0,0
sprpriority = 1

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + 40000*(!InCustomState) + (anim%10))
trigger1 = (anim - 40000*(!InCustomState)) = [5081,5089]
value = 5110 + 40000*(!InCustomState) + (anim%10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = (anim - 40000*(!InCustomState)) != [5110,5119] ;Not already changed anim
trigger1 = (anim - 40000*(!InCustomState)) != [5161,5169]
trigger2 = !SelfAnimExist(5170 + 40000*(!InCustomState) + (anim%10))
value = 5170 + 40000*(!InCustomState)

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = (anim - 40000*(!InCustomState)) != [5110,5119] ;Not already changed anim
trigger1 = (anim - 40000*(!InCustomState)) = [5161,5169]
trigger1 = SelfAnimExist(5170 + 40000*(!InCustomState) + (anim%10))
value = 5170 + 40000*(!InCustomState) + (anim%10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7,(sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5110, 7]
type = Explod
trigger1 = Time = 0
trigger1 = !SysVar(0)
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0,0
sprpriority = ifelse(sysvar(1) <= Const720p(56),-10,10)

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = (anim - 40000*(!InCustomState)) = [5171,5179]
triggerall = SelfAnimExist(5110 + 40000*(!InCustomState) + (anim%10))
trigger1 = animtime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + 40000*(!InCustomState) + (anim%10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = (anim - 40000*(!InCustomState)) != [5111,5119]
trigger1 = animtime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110 + 40000*(!InCustomState)

[State 5110, 11] ;If just died
type = Selfstate ;ChangeState
triggerall = !alive
trigger1 = animtime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = (anim - 40000*(!InCustomState)) = [5110,5119]
value = 5150 + 40000*(!InCustomState)

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14] ;Friction
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 5110, 15]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 16]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200,7,-.467
time = 30
waveform = sine

[State 852, SS]
type = selfstate
trigger1 = alive
trigger1 = time >= 11
value = 5120 + 40000*(!InCustomState)

;---------------------------------------------------------------------------
; FORCE RECOVERY NEAR GROUND

[Statedef 45205]
type = A
physics = N
movetype = H

[State 5205, End] ;Sends character back to his own recovery states
type = selfstate
trigger1 = 1
value = (ifelse(pos y<-20,5210,5200)) + 40000*(!InCustomState)

;---------------------------------------------------------------------------
; FEET LANDING

[Statedef 45085]
type = A
physics = N
movetype = H
velset = 0,0
facep2 = 1

[State 5025, HFS] ;Resets the fall parameter, so that the opponent will not fall on his back
type = hitfallset
trigger1 = 1
value = 0

[State 5085, CS]
type = changestate
trigger1 = 1
value = 45086

;---------------------------------------------------------------------------
; CUSTOM AIR-HIT (shaking) (Modified)

[Statedef 45086] ;Modified 5020
type = A
movetype = H
physics = N
velset = 0,0

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = (ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)) + 40000*(!InCustomState)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030 + 40000*(!InCustomState)

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + 40000*(!InCustomState) + GetHitVar(animtype)))
value = 5047 + 40000*(!InCustomState) + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 45087

[State 5020, FFB Light]
type = ForceFeedback
trigger1 = (anim - 40000*(!InCustomState)) = 5000
trigger2 = (anim - 40000*(!InCustomState)) = 5010
persistent = 0
time = 6
waveform = square

[State 5020, FFB Medium]
type = ForceFeedback
trigger1 = (anim - 40000*(!InCustomState)) = 5001
trigger2 = (anim - 40000*(!InCustomState)) = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5020, FFB Hard]
type = ForceFeedback
trigger1 = (anim - 40000*(!InCustomState)) = 5012
trigger2 = (anim - 40000*(!InCustomState)) = 5002
trigger3 = (anim - 40000*(!InCustomState)) = 5030
trigger4 = (anim - 40000*(!InCustomState)) = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; Air get-hit (knocked away)

[Statedef 45087] ;Modified 5030
type = A
movetype = H
physics = N
ctrl = 0

[State 5030, 1]
type = ChangeAnim
trigger1 = (anim - 40000*(!InCustomState)) != [5000,5199]
trigger1 = SelfAnimExist(5030 + 40000*(!InCustomState))
value = 5030 + 40000*(!InCustomState)

[State 5030, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 3]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 4]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0 ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 45089 ;HITA_RECOV

[State 5030, 5]
type = selfState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0 ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5050 + 40000*(!InCustomState) ;HITA_FALL

[State 5030, 6]
type = ChangeState
trigger1 = animtime = 0
value = 45088 ;Air get-hit (transition)

;---------------------------------------------------------------------------
; Air get-hit (transition)

[Statedef 45088] ;Modified 5035
type = A
movetype = H
physics = N

[State 5035, 0]
type = ChangeAnim
trigger1 = Time >= 0
trigger1 = (anim - 40000*(!InCustomState)) != [5051,5059] ;Not if in hit up anim
trigger1 = (anim - 40000*(!InCustomState)) != 5090 ;Not if hit off ground anim
trigger1 = (anim - 40000*(!InCustomState)) != 5035
value = 5035 + 40000*(!InCustomState)

[State 5035, 1]
type = ChangeAnim
trigger1 = (anim - 40000*(!InCustomState)) = 5035 && animtime = 0
value = 5035 + 40000*(!InCustomState)
elem = animelemno(-1)

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver ;Hit is over
trigger2 = Vel Y > 0 ;Hit ground
trigger2 = Pos Y >= -(vel y)
value = 45089 ;Air get-hit (recovering in air, not falling)

[State 5035, 4]
type = SelfState
triggerall = HitFall
trigger1 = HitOver ;Hit is over
trigger2 = animtime = 0 ;Anim is over
trigger3 = Vel Y > 0 ;Hit ground
trigger3 = Pos Y >= Const(movement.air.gethit.groundlevel)
trigger4 = Time = 0 ;No transition anim
trigger4 = (anim - 40000*(!InCustomState)) != 5035
value = 5050 + 40000*(!InCustomState) ;Air get-hit (falling)

;---------------------------------------------------------------------------
; Air get-hit (recovering in air, not falling)

[Statedef 45089] ;Modified 5040
type = A
movetype = H
physics = N

[State 5040, 0]
type = selfState
trigger1 = !Alive
value = 5050 + 40000*(!InCustomState)
ctrl = 0

[State 5070, 1]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 3
ignorehitpause = 1

[State 5070, 2]
type = NotHitBy
trigger1 = 1
value2 = ,AT
time = 9
ignorehitpause = 1

[State 5040, 3]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (anim - 40000*(!InCustomState)) != 5040
value = 5040 + 40000*(!InCustomState)

[State 5040, 4]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5040, 5]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5040, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -(vel y)
value = 52 + 40000*(!InCustomState) ;Jump land

[State 5210, 1] ;Blink white
type = PalFX
trigger1 = time = 0
time = 3
add = 128,128,128 ;256,256,256

;---------------------------------------------------------------------------
; Air get-hit (shaking)

[Statedef 46020]
type = A
movetype = H
physics = N
velset = 0,0

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = (ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)) + 40000*(!InCustomState)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030 + 40000*(!InCustomState)

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + 40000*(!InCustomState) + GetHitVar(animtype)))
value = 5047 + 40000*(!InCustomState) + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 46030

[State 5020, FFB Light]
type = ForceFeedback
trigger1 = (anim - 40000*(!InCustomState)) = 5000
trigger2 = (anim - 40000*(!InCustomState)) = 5010
persistent = 0
time = 6
waveform = square

[State 5020, FFB Medium]
type = ForceFeedback
trigger1 = (anim - 40000*(!InCustomState)) = 5001
trigger2 = (anim - 40000*(!InCustomState)) = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5020, FFB Hard]
type = ForceFeedback
trigger1 = (anim - 40000*(!InCustomState)) = 5012
trigger2 = (anim - 40000*(!InCustomState)) = 5002
trigger3 = (anim - 40000*(!InCustomState)) = 5030
trigger4 = (anim - 40000*(!InCustomState)) = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; Air get-hit (knocked away)

[Statedef 46030]
type = A
movetype = H
physics = N
ctrl = 0

[State 5030, 1]
type = ChangeAnim
trigger1 = (anim - 40000*(!InCustomState)) != [5000,5199]
trigger1 = SelfAnimExist(5030 + 40000*(!InCustomState))
value = 5030 + 40000*(!InCustomState)

[State 5030, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 3]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 4]
type = SelfState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0 ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5040 + 40000*(!InCustomState) ;HITA_RECOV

[State 5030, 5]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0 ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 46050 ;HITA_FALL

[State 5030, 6]
type = ChangeState
trigger1 = animtime = 0
value = 46035 ;Air get-hit (transition)

;---------------------------------------------------------------------------
; Air get-hit (transition)

[Statedef 46035]
type = A
movetype = H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035 + 40000*(!InCustomState))
trigger1 = (anim - 40000*(!InCustomState)) != [5051,5059] ;Not if in hit up anim
trigger1 = (anim - 40000*(!InCustomState)) != 5090 ;Not if hit off ground anim
value = 5035 + 40000*(!InCustomState)

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, 3]
type = SelfState
triggerall = !HitFall
trigger1 = HitOver ;Hit is over
trigger2 = animtime = 0 ;Animation over
trigger3 = Vel Y > 0 ;Hit ground
trigger3 = Pos Y >= Const(movement.air.gethit.groundlevel)
trigger4 = Time = 0 ;No transition anim
trigger4 = (anim - 40000*(!InCustomState)) != 5035
value = 5040 + 40000*(!InCustomState) ;Air get-hit (recovering in air, not falling)

[State 5035, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver ;Hit is over
trigger2 = animtime = 0 ;Anim is over
trigger3 = Vel Y > 0 ;Hit ground
trigger3 = Pos Y >= Const(movement.air.gethit.groundlevel)
trigger4 = Time = 0 ;No transition anim
trigger4 = (anim - 40000*(!InCustomState)) != 5035
value = 46050 ;Air get-hit (falling)

;---------------------------------------------------------------------------
; Air get-hit (falling)

[Statedef 46050]
type = A
movetype = H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = animtime = 0
trigger1 = (anim - 40000*(!InCustomState)) = 5035
trigger2 = Time = 0 ;If no transition anim
trigger2 = (anim - 40000*(!InCustomState)) != 5035
trigger2 = ((anim - 40000*(!InCustomState)) != [5051,5059]) && ((anim - 40000*(!InCustomState)) != [5061,5069])
trigger2 = (anim - 40000*(!InCustomState)) != 5090 ;Not if hit off ground anim
value = 5050 + 40000*(!InCustomState)

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = (anim - 40000*(!InCustomState)) = [5050,5059]
trigger1 = Vel Y >= ifelse((anim - 40000*(!InCustomState)) = 5050,Const720p(4),Const720p(-8))
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 + 40000*(!InCustomState) ;Air get-hit (fall recovery on ground)

[State 5050, 5] ;Recover in mid air
type = SelfState
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 + 40000*(!InCustomState) ;Air get-hit (fall recovery in air)

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse(((anim - 40000*(!InCustomState)) = [5051,5059]) || ((anim - 40000*(!InCustomState)) = [5061,5069]),0,Const(movement.air.gethit.groundlevel))
value = 46100 ;Downed get-hit (hit ground from fall)

;---------------------------------------------------------------------------
; Downed get-hit (hit ground from fall)

[Statedef 46100]
type = L
movetype = H
physics = N

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = ((anim - 40000*(!InCustomState)) != [5051,5059]) && ((anim - 40000*(!InCustomState)) != [5061,5069])
trigger2 = !SelfAnimExist(5100 + 40000*(!InCustomState) + (anim%10))
value = 5100 + 40000*(!InCustomState)

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = ((anim - 40000*(!InCustomState)) = [5051,5059]) || ((anim - 40000*(!InCustomState)) = [5061,5069])
trigger1 = SelfAnimExist(5100 + 40000*(!InCustomState) + (anim%10))
value = 5100 + 40000*(!InCustomState) + (anim%10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 46110 ;Downed get-hit (lying down)

[State 5100, 8]
type = Explod
trigger1 = Time = 0
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0,0
sprpriority = ifelse(sysvar(1) <= Const720p(56),-10,10)

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 0
value = F7,(sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = animtime = 0
value = 46101 ;Downed get-hit (bounce off ground)

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; Downed get-hit (bounce off ground)

[Statedef 46101]
type = L
movetype = H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim - 40000*(!InCustomState)) != [5101,5109]
trigger2 = !SelfAnimExist(5160 + 40000*(!InCustomState) + (anim%10))
value = 5160 + 40000*(!InCustomState)

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim - 40000*(!InCustomState)) = [5101,5109]
trigger1 = SelfAnimExist(5160 + 40000*(!InCustomState) + (anim%10))
value = 5160 + 40000*(!InCustomState) + (anim%10)

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = Const(movement.down.bounce.offset.y)

[State 5101, 5]
type = PosAdd
trigger1 = Time = 0
x = Const(movement.down.bounce.offset.x)

[State 5101, 6] ;Acceleration
type = VelAdd
trigger1 = 1
y = Const(movement.down.bounce.yaccel)

[State 5101, 7] ;Hit ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.down.bounce.groundlevel)
value = 46110

;---------------------------------------------------------------------------
; Downed get-hit (lying down)

[Statedef 46110]
type = L
movetype = H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + 40000*(!InCustomState) + (anim%10))
trigger1 = (anim - 40000*(!InCustomState)) = [5081,5089]
value = 5110 + 40000*(!InCustomState) + (anim%10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = (anim - 40000*(!InCustomState)) != [5110,5119] ;Not already changed anim
trigger1 = (anim - 40000*(!InCustomState)) != [5161,5169]
trigger2 = !SelfAnimExist(5170 + 40000*(!InCustomState) + (anim%10))
value = 5170 + 40000*(!InCustomState)

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = (anim - 40000*(!InCustomState)) != [5110,5119] ;Not already changed anim
trigger1 = (anim - 40000*(!InCustomState)) = [5161,5169]
trigger1 = SelfAnimExist(5170 + 40000*(!InCustomState) + (anim%10))
value = 5170 + 40000*(!InCustomState) + (anim%10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7,(sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5110, 7]
type = Explod
trigger1 = Time = 0
trigger1 = !SysVar(0)
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0,0
sprpriority = ifelse(sysvar(1) <= Const720p(56),-10,10)

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = (anim - 40000*(!InCustomState)) = [5171,5179]
triggerall = SelfAnimExist(5110 + 40000*(!InCustomState) + (anim%10))
trigger1 = animtime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + 40000*(!InCustomState) + (anim%10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = (anim - 40000*(!InCustomState)) != [5111,5119]
trigger1 = animtime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110 + 40000*(!InCustomState)

[State 5110, 11] ;If just died
type = SelfState
triggerall = !alive
trigger1 = animtime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = (anim - 40000*(!InCustomState)) = [5110,5119]
value = 5150 + 40000*(!InCustomState)

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14] ;Friction
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 5110, 15]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 16]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200,7,-.467
time = 30
waveform = sine

[State 6110, SS]
type = selfstate
trigger1 = alive
trigger1 = time >= 11
value = 5120 + 40000*(!InCustomState)

[Statedef 40999]
type = A
physics = N
movetype = I
anim = 41998 ;Your blank animation
velset = 0,0
ctrl = 0
movehitpersist = 1

[State -2, P2 Safe Fall]
type = targetstate
triggerall = numtarget=1 ;Just to prevent Simul mode shenanigans
triggerall = target,pos y>=-20 && target,vel y>0
triggerall = target,alive && target,hitfall && target,gethitvar(fall.recover)
triggerall = target,stateno=5030 || target,stateno=5035 || target,stateno=5050 || target,stateno=5071
trigger1 = target,AILevel <= 0
trigger1 = target,command="recovery"
trigger2 = target,AILevel > 0
trigger2 = random%100 <= 10*ceil((target,AILevel)*(target,AILevel)/64.0)
value = 45205
ignorehitpause = 1

[State 1112, nothitby]
type = nothitby
trigger1 = ishelper
time = 1
value = SCA
ignorehitpause = 1

[State 1112, Noshadow]
type = assertspecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 1112, End]
type = destroyself
triggerall = ishelper
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = target,time <= 1 && !(target,hitshakeover)
ignorehitpause = 1

;-----------------------
; Spellcard Use Effect

[Statedef 60000]
anim = 41999
velset = 0,0
sprpriority = 3

[State 20000, Noshadow]
type = assertspecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_Name"
id = 1998
stateno = 60001
pos = 0,-floor(pos y)
postype = left
ownpal = 1
facing = 1
pausemovetime = 9999999
supermovetime = 9999999

[State 4000, Superportrait]
type = explod
triggerall = time = 0
trigger1 = root,stateno = 44000
trigger2 = root,stateno = 44100
trigger3 = root,stateno = 44200
id = 4000
removetime = 60;40
;scale = 0.5,0.5
anim = 43998
pos = floor(const240p(gamewidth/2.0))+16,floor(const240p(gameheight/2.0))-40;36
postype = back
bindtime = -1
ownpal = 1
sprpriority = -2
scale = const240p(0.5*0.8),const240p(0.5*0.8)
removeongethit = 1
ignorehitpause = 1
pausemovetime = 60
supermovetime = 60

[State 4000, MEX]
type = modifyexplod
trigger1 = numexplod(4000) = 1
trigger1 = time >= 30
id = 4000
scale = const240p(0.8*(0.5+(0.25*(time-30)))),const240p(0.8*(0.5+(0.25*(time-30))))
trans = addalpha
alpha = 256-floor(256.0*(time-30)/30.0),0+floor(256.0*(time-30)/30.0)

[State 1999, CA]
type = changeanim
trigger1 = time = 0
value = 40000+(ifelse(ishelper(2999),2999,ifelse(ishelper(3999),3999,1999)))

[State 1999, Angleset]
type = angleadd
trigger1 = 1
value = -10

[State 1999, Varadd]
type = varadd
trigger1 = time <= 20
var(0) = 1

[State 1999, Angledraw]
type = angledraw
trigger1 = 1
scale = 0.5+0.15*var(0),0.5+0.15*var(0)

[State 700, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-ifelse(time<30,0,floor(256.0*(time-30)/40.0)),256

[State 700, Zeeky]
type = destroyself
trigger1 = time >= 70

;-----------------------
; Spellcard Name Effect

[Statedef 60001]
velset = 0,0
anim = 41998

[State Screen Scretch?]
type = VarSet
trigger1 = 1
fvar(0) = Gamewidth/320.0
[State friction coefficient (for text scaling and vertical movement) (0 to 1)]
type = VarSet
trigger1 = 1
fvar(1) = 0.75
[State friction coefficient 2 (for text horizontal movement) (0 to 1)]
type = VarSet
trigger1 = 1
fvar(2) = 0.75
[State friction coefficient 3 (for text final vertical movement) (0 to 1)]
type = VarSet
trigger1 = 1
fvar(3) = 0.85

[State 10000, Explod]
type = Explod
trigger1 = Time = 0
pos = 0,0
Anim = 60015+ifelse(teamside=1,0,1)
postype = left
ownpal = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermove = 1
ontop = 1
ID = 20011
[State 10000, Explod]
type = Explod
trigger1 = Time = 0
Anim = 42090+ifelse(teamside=1,0,1)+100*(root,stateno = 42100)+2000*(root,stateno = 44000)+2100*(root,stateno = 44100)+2200*(root,stateno = 44200)
pos = 0,0
postype = left
ownpal = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermove = 1
ontop = 1
ID = 20010

[State Zoom Out]
type = ModifyExplod
trigger1 = Time<=60
ID = 20010
pos = ifelse(teamside=2,0,floor(Gamewidth/1.0))-floor((1-fvar(2)**(time))*310*fvar(0)*ifelse(teamside=2,-1,1)), GameHeight - (-10)-floor((1-fvar(1)**(time))*85)
postype = left
facing = 1
bindtime = -1
scale = .25+8.75*(fvar(1)**(time)),.25+8.75*(fvar(1)**(time))

[State Zoom Out]
type = ModifyExplod
trigger1 = Time>60 && time < 125
ID = 20010
pos = ifelse(teamside=2,0,floor(Gamewidth/1.0))-floor((1-fvar(2)**(time))*310*fvar(0)*ifelse(teamside=2,-1,1)), GameHeight - (-10)-floor((1-fvar(1)**(time))*85)-floor((1-fvar(3)**(time-60))*120)
postype = left
facing = 1
bindtime = -1
scale = .25+8.75*(fvar(1)**(time)),.25+8.75*(fvar(1)**(time))

[State Zoom Out]
type = ModifyExplod
trigger1 = Time<=60
ID = 20011
pos = ifelse(teamside=2,0,floor(Gamewidth/1.0))-floor((1-fvar(2)**(time))*345*fvar(0)*ifelse(teamside=2,-1,1)), GameHeight - (-10)-floor((1-fvar(1)**(time))*85)
postype = left
facing = 1
bindtime = -1
scale = 4*(.25+8.75*(fvar(1)**(time))),4*(.25+8.75*(fvar(1)**(time)))

[State Zoom Out]
type = ModifyExplod
trigger1 = Time>60 && time < 125
ID = 20011
pos = ifelse(teamside=2,0,floor(Gamewidth/1.0))-floor((1-fvar(2)**(time))*345*fvar(0)*ifelse(teamside=2,-1,1)), GameHeight - (-10)-floor((1-fvar(1)**(time))*85)-floor((1-fvar(3)**(time-60))*120)
postype = left
facing = 1
bindtime = -1
scale = 4*(.25+8.75*(fvar(1)**(time))),4*(.25+8.75*(fvar(1)**(time)))

[State Sas]
type = VarAdd
trigger1 = var(0)>=1
var(0) = 1

[State Sas]
type = VarSet
triggerall = var(0)<=0
trigger1 = root,stateno != 42000 ;Killing Doll
trigger1 = root,stateno != [42100,42101] ;Inscribe Red Soul
trigger1 = root,stateno != 44000 ;Sakuya's World
trigger1 = root,stateno != [44100,44106] ;Deflation World
trigger1 = root,stateno != [44200,44299] ;Jill the Ripper
var(0) = 1

[State Zoom Out]
type = ModifyExplod
trigger1 = var(0)>0
ID = 20010
trans = addalpha
alpha = ceil(256*(1-var(0)/30.0)),ceil(256*(var(0)/30.0))
[State Zoom Out]
type = ModifyExplod
trigger1 = var(0)>0
ID = 20011
trans = addalpha
alpha = ceil(256*(1-var(0)/30.0)),256
[State ass]
type = RemoveExplod
trigger1 = var(0)>=30
id = 20010
[State ass]
type = RemoveExplod
trigger1 = var(0)>=30
id = 20011
[State thend]
type = DestroySelf
trigger1 = var(0)>=30

;-----------------------
; Palette Selector
; The following state utilizes pieces of code from Flawless's X-Costume selector
; with modifications by RicePigeon.

[Statedef 50100]
physics = N
velset = 0,0
anim = 50100
sprpriority = 5

[State 10100, Noshadow]
type = assertspecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 700, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/10.0),256

[State 700, AD]
type = angledraw
trigger1 = 1
scale = 0.7+(0.1*time),0.7+(0.1*time)

[State 700, Zeeky]
type = destroyself
trigger1 = time >= 10

;-----------------------
; Darkness Effect

[Statedef 40701]
anim = 41998
velset = 0,0

[State 701, BGPFX]
type = bgpalfx
trigger1 = time < 32
time = 1
mul = 256-(6*time),256-(6*time),256-(6*time)

[State 701, BGPFX]
type = bgpalfx
trigger1 = time >= 32
time = 1
mul = 64,64,64

[state 701, CS]
type = changestate
trigger1 = root,stateno != 42000
trigger1 = root,stateno != 42100
trigger1 = (root,stateno != [44000,44299])
trigger2 = root,movetype = H
value = 40702

[state 701, CS]
type = destroyself
trigger1 = root,var(50)>0
trigger1 = root,stateno != 44200

;-----------------------
; Darkness Effect - Fade back in

[Statedef 40702]
anim = 41998+0*(var(0):=192)
velset = 0,0

[state 701, VS]
type = null
trigger1 = var(0)>0
trigger1 = var(0):=var(0)-(6*time)

[state 701, CS]
type = destroyself
trigger1 = var(0)<=0

[State 701, BGPFX]
type = bgpalfx
trigger1 = var(0)>0
time = 1
mul = 256-var(0),256-var(0),256-var(0)

;------------------------------
; Time Counter

[Statedef 70000]
type = A
movetype = I
physics = N
sprpriority = 0
anim = 41998
velset = 0,0

[State 30000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 30000, BTR]
type = bindtoroot
trigger1 = 1
ignorehitpause = 1
pos = 0,5

[State 30000, VS]
type = varset
trigger1 = var(56)!=(root,var(50))
var(56) = root,var(50)

[State 30000, Explod]
type = explod
trigger1 = numexplod(30000)=0
anim = 70000
id = 30000
scale = 1.0,0.75
pos = -41*ifelse(root,facing=1,1,-1),0
postype = p1
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
pausemovetime = 9999999
supermovetime = 9999999

[State 30000, Explod]
type = explod
trigger1 = numexplod(30001)=0
anim = 70001
id = 30001
scale = 1.0,0.75
pos = -41*ifelse(root,facing=1,1,-1),0
postype = p1
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
pausemovetime = 9999999
supermovetime = 9999999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(30001)=1
ID = 30001
scale = 1.0*(var(56)/420.0),0.75
ignorehitpause = 1

;[State 0, ModifyExplod]
;type = palfx
;trigger1 = root,var(50)<140
;add = 256,0,0
;mul = 256,0,0
;time = -1
;ignorehitpause =1

[State 30000, REX]
type = removeexplod
trigger1 = root,var(50)<=0
trigger2 = root,stateno = [44200,44299]
id = 30000

[State 30000, REX]
type = removeexplod
trigger1 = root,var(50)<=0
trigger2 = root,stateno = [44200,44299]
id = 30001

[State 30000, REX]
type = destroyself
trigger1 = root,var(50)<=0
trigger2 = root,stateno = [44200,44299]
