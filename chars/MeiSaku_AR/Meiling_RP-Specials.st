;---------------------------------------------------------------------------
; Fragrant Wave
[Statedef 1000]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
poweradd = 15*(var(10)>=2)*(var(7)<=0)
anim = 1000+1*(var(10)=2)+2*(var(10)=3)+0*floor(var(24):=0)+floor(var(57):=0)
sprpriority = 1
juggle = 0
facep2 = 1

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

[State 1001, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Fragrant Wave Projectile
[Statedef 21000]
type = A
movetype = A
physics = N
velset = 0,0
anim = 21000
sprpriority = 5
ctrl = 0

[State 21000, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 21000, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
slot = 0
time = -1
stateno = 21001
ignorehitpause = 1

[State 21000, Noshadow]
type = assertspecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

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
var(34) = (root,var(34)) | floor(exp(5*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 21000, Hitdef]
type = Hitdef
trigger1 = ifelse((root,var(34)&floor(exp(5*ln(2)) + 0.5))&&(var(7)<=0),0,1) || root,var(24)
trigger1 = animelemtime(2)>=0 && animelemtime(7)<0
trigger1 = !movecontact && !movereversed
attr = S,SP
animtype = Hard
damage = ceil((37-12*(parent,var(10)>=3))*(root,fvar(11)/cond(root,var(57)=3,(root,fvar(30)),1))),7-3*(parent,var(10)>=3)
priority = 4,Hit
hitflag = MAFP
guardflag = MA
pausetime = 0,8
sparkno = s8010+(random%2)
guard.sparkno = s8030
sparkxy = -10,0
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 24
ground.hittime = 24
air.hittime = 24
guard.slidetime = 19-3*(root,var(7)>0)
guard.hittime = 19-3*(root,var(7)>0)
ground.velocity = -9.6,-7.8
guard.velocity = -9.6
air.velocity = -9.6,-7.8
fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = (20-8*(parent,var(10)>=3))*(root,var(7)<=0),(20-8*(parent,var(10)>=3))*(root,var(7)<=0)
givepower = (10-4*(parent,var(10)>=3)),(10-4*(parent,var(10)>=3))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
id = 1000
p1sprpriority = 5

[State 220, First Combo Hit]
type = rootVarSet
triggerall = numtarget(1000)
trigger1 = target(1000),gethitvar(hitcount)=1
trigger1 = root,var(57)=0
var(57) = 3;Change index
ignorehitpause = 1
persistent = 0

[State 620, Multihit]
type = rootVarSet
trigger1 = movecontact
var(24) = 1
ignorehitpause = 1
persistent = 0

[State 21000, Damage Dampen]
type = rootVarSet
trigger1 = movehit
fvar(10) = root,fvar(10)*0.9*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 220, TS]
type = targetstate
triggerall = numtarget(1000) && movehit
trigger1 = parent,var(10)>=3
trigger1 = target,hitshakeover
trigger1 = !target(1000),ishelper
persistent = 0
ignorehitpause = 1
id = 1000
value = 260

[State 21000, Flag Recovery]
type = statetypeset
trigger1 = animelemtime(7)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

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
value = 5205
ignorehitpause = 1

[State 21000, CS]
type = changestate
trigger1 = animtime = 0
value = 21001

;-----------------------
; Wave Destroy
[Statedef 21001]
type = A
movetype = I
physics = N
anim = 1998
sprpriority = 5
movehitpersist = 1

[State 21001, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 21001, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
slot = 0
time = -1
stateno = 21001
ignorehitpause = 1

[State 21001, Noshadow]
type = assertspecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

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
value = 5205
ignorehitpause = 1

[State 21001, Destroyself]
type = changestate
trigger1 = time >= 5
value = 999

;---------------------------------------------------------------------------
; Cyclone Light Step
[Statedef 1100]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
poweradd = 45*(var(7)<=0)
anim = 1100+1*(var(10)=2)+2*(var(10)=3)+0*floor(var(57):=0)
sprpriority = 1
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

[State 1100, CA]
type = changeanim
trigger1 = time = 0
trigger1 = var(7)>0
value = 1130

[State 1100, NHB]
type = nothitby
trigger1 = var(10)<=1||anim=1130
trigger2 = var(10)=2
trigger2 = animelemtime(6)>=0
trigger3 = var(10)>=3
trigger3 = animelemtime(8)>=0
value = ,AP
ignorehitpause = 1

[State 1100, PA]
type = posadd
trigger1 = animelemtime(3)=0
x = 15

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(8)=0
value = 1500,2
channel = 0

[State 1100, STS]
type = statetypeset
trigger1 = animelemtime(8)=0
statetype = A
physics = N

[State 0, Width]
type = Width
trigger1 = animelemtime(4)>=0
player = 17,0
edge = 37,0
ignorehitpause = 1 
;persistent = 

[State 1100, VS]
type = VelSet
trigger1 = animelemtime(8)>=0
x = 4+4*(var(10)=2)+8*(var(10)=3)

[State 1000]
type = VelSet
trigger1 = animelemtime(8)=0
y = -2

[State 1100, VA]
type = veladd
trigger1 = animelemtime(8)>0
y = 0.25-0.05*(var(10)=3)

[State 1100, Dust]
type = explod
trigger1 = animelemtime(8)=0
anim = 4002
ownpal = 1
pos = -20,0
sprpriority = 3

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(8)=0
value = 1500,1

[State 1100, FX]
type = Helper
trigger1 = animelemtime(8)=0
helpertype = normal
name = "Skittle"
stateno = 21100
id = 21100
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 1003]
type = explod
trigger1 = animelemtime(8)>=0
persistent = 2
anim = 21110+(random%7)
ownpal = 1
pos = 0,-40
sprpriority = 3
random = 20,20
vel = 0,2
scale = 0.5,0.5

[State 1100, MHR]
type = movehitreset
triggerall = anim = 1130
trigger1 = animelemtime(9)=0
trigger2 = animelemtime(10)=0

[State 1100, TIGER TYPE HITDEF]
type = HitDef
triggerall = !movecontact && !movereversed
triggerall = anim = 1130
trigger1 = animelemtime(8)>=0 && animelemtime(9)<0
trigger2 = animelemtime(9)>=0 && animelemtime(10)<0
trigger3 = animelemtime(10)>=0 && animelemtime(11)<0
attr = A,SA
damage = ceil(30*(fvar(11)/cond(var(57)=4,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),6
getpower = 0,0
givepower = 15,15
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = 0,-50
hitsound = S1,2
guardsound = S2,0
ground.type = High
ground.slidetime = 19+3*(var(10)=3)+3*(var(42))-3
ground.hittime = 19+3*(var(10)=3)+3*(var(42))-3
air.hittime = 19+3*(var(10)=3)+3*(var(42))-3
guard.slidetime = 15+3*(var(10)=3)-3
guard.hittime = 15+3*(var(10)=3)-3
ground.velocity = -6.6;,-3
air.type = High
air.velocity = -6.6,-6.6
yaccel = 0.5
fall = 0
air.fall = 1
fall.recovertime = 120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 1100;555

[State 1100, HS]
type = HitDef
triggerall = ifelse((var(34)&floor(exp(4*ln(2)) + 0.5)),0,1)
triggerall = anim != 1130
trigger1 = animelemtime(8)>=0 && animelemtime(10)<0
trigger1 = !movecontact && !movereversed
attr = A,SA
damage = ceil((70+20*(var(10)=2)+40*(var(10)=3))*(fvar(11)/cond(var(57)=4,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),14+4*(var(10)=2)+8*(var(10)=3)
getpower = 80,80
givepower = 40,40
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = 0,-50
hitsound = S1,2
guardsound = S2,0
ground.type = High
ground.slidetime = 26+3*(var(42))
ground.hittime = 26+3*(var(42))
air.hittime = 26+3*(var(42))
guard.slidetime = 19+4*(var(10)<=1)+1*(var(10)=2)-2*(var(10)=3)
guard.hittime = 19+4*(var(10)<=1)+1*(var(10)=2)-2*(var(10)=3)
ground.velocity = -6.6,-7.6
air.velocity = -6.6,-7.6
air.type = High
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 1100

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
trigger1 = anim != 1130
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 1100, Damage Dampen]
type = varset
trigger1 = anim = 1130
trigger1 = animelemtime(8)>=0 && animelemtime(9)<1
trigger1 = movehit
fvar(10) = fvar(10)*0.947*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 1100, Damage Dampen]
type = varset
trigger1 = anim = 1130
trigger1 = animelemtime(9)>=1 && animelemtime(10)<1
trigger1 = movehit
fvar(10) = fvar(10)*0.947*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 1100, Damage Dampen]
type = varset
trigger1 = anim = 1130
trigger1 = animelemtime(10)>=1 && animelemtime(11)<1
trigger1 = movehit
fvar(10) = fvar(10)*0.947*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim != 1130
trigger1 = animelemtime(10)>=0 || (movecontact||movereversed) 
trigger2 = anim = 1130
trigger2 = animelemtime(11)>=0 || (animelemtime(10)>=1 && (movecontact||movereversed))
movetype = I
ignorehitpause = 1
persistent = 0

[State 1100, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -(vel y)
value = 1101

;---------------------------------------------------------------------------
; Cyclone Light Step Land
[Statedef 1101]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 1105+30*(var(7)>0)
sprpriority = 2
movehitpersist = 1

[State 1101, Width]
type = width
trigger1 = time = 0
value = 0,0
edge = 0,0
ignorehitpause = 1

[State 1101, PA]
type = posadd
trigger1 = time = 0
x = 18

[State 1101, PS]
type = posset
trigger1 = time = 0
y = 0

[State 1101, CA]
type = changeanim
trigger1 = var(10)=2
trigger1 = (var(7)<=0)
trigger1 = animelemtime(2)=-1
value = 1105
elem = 2

[State 1101, CA]
type = changeanim
trigger1 = var(10)=3
trigger1 = !(var(7)>0)
trigger1 = animelemtime(2)=-2
value = 1105
elem = 2

[State 1101, CA]
type = changeanim
trigger1 = var(10)=3
trigger1 = !(var(7)>0)
trigger1 = animelemtime(3)=-2
value = 1105
elem = 3

[State 1101, CS]
type = changestate
trigger1 = animtime = 0
trigger2 = animelemtime(3)=3
trigger2 = var(10)=3
trigger2 = !(var(7)>0)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Cyclone Light Step FX
[Statedef 21100]
type = A
movetype = I
physics = N
anim = 21100
sprpriority = 3

[State 1003]
type = AngleDraw
trigger1 = 1
scale = 0.15,0.15

[State 1003]
type = BindToParent
trigger1 = 1
pos = 57,-55

[State 1003]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1003]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 1003]
type = Destroyself
trigger1 = root,stateno != [1100,1101]

[State 1510, CS]
type = changestate
trigger1 = root,stateno = 1101
value = 21101

;---------------------------------------------------------------------------
; Cyclone Light Step FX
[Statedef 21101]
type = A
movetype = I
physics = N
sprpriority = 3

[State 1003]
type = AngleDraw
trigger1 = time
scale = 0.15,0.15

[State 1003]
type = BindToParent
trigger1 = 1
pos = 39,-55

[State 1003, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1003]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/6.0),256
ignorehitpause = 1

[State 1003]
type = Destroyself
trigger1 = time >= 6

;---------------------------------------------------------------------------
; Tremor Kick
[Statedef 1200]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
poweradd = 45*(var(7)<=0)
anim = 1200+1*(var(10)=2)+2*(var(10)=3)
sprpriority = 1
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(3*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1200, CA]
type = changeanim
triggerall = var(7)>0
trigger1 = animelemtime(2)=-2
trigger2 = animelemtime(3)=-2
value = anim
elem = animelemno(0)+1

[State 1200, AttackDist]
type = AttackDist
trigger1 = 1
value = 128
ignorehitpause = 1 
;persistent = 

[State 1400, Dust]
type = explod
trigger1 = animelemtime(5)=0
anim = 4002
ownpal = 1
pos = -82,0
sprpriority = 3

[State 1400, Dust]
type = explod
trigger1 = animelemtime(5)=0
anim = 4002
ownpal = 1
pos = 128,0
facing = -1
sprpriority = 3

[State 210, PSND]
type = playsnd
trigger1 = time = 0
value = 1200,0
channel = 0

[State 1200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 0,2

[State 1200, PSND]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 1200,10

[state 1301, ES]
type = envshake
trigger1 = animelemtime(5)=0
time = 6
ampl = -5
freq = 40

[State 1300, Tremor FX]
type = helper
trigger1 = animelemtime(5)=0
helpertype = normal
name = "Tremor"
id = 21200
stateno = 21200
pos = 0,0
postype = p1
ownpal = 1
size.xscale = 1.2
size.yscale = 0.15

[State 1200, HD]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(3*ln(2)) + 0.5))&&(var(7)<=0),0,1)
trigger1 = animelemtime(5)>=0 && animelemtime(6)<0
trigger1 = !movecontact && !movereversed
attr = S,SA
animtype = Hard
damage = ceil((50-5*(var(7)>0))*fvar(11)*ifelse(var(42),1.25,1.0)),10-1*(var(7)>0)
hitflag = MF
guardflag = L
pausetime = 10,10
sparkno = s8000+(random%2)
guard.sparkno = s8030
sparkxy = -10,0
hitsound = -1
guardsound = -1
ground.type = Low
ground.slidetime = 26+3*(var(42))
ground.hittime = 26+3*(var(42))
air.hittime = 26+3*(var(42))
guard.slidetime = 15+6*(var(10)<=1)+3*(var(10)=2)
guard.hittime = 15+6*(var(10)<=1)+3*(var(10)=2)
ground.velocity = -0.5-3*(var(10)<=1),0-9.5*(var(10)=2)
air.velocity = -1.2,-7
down.velocity = -0.5,0-9.5*(var(10)=2)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0+1*(var(10)>1)
fall.recover = 1
fall.recovertime = 120
getpower = 80*(var(7)<=0),80*(var(7)<=0)
givepower = 40,40
p2facing = 1
id = 1200

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = animelemtime(6)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1200, Crumple]
type = targetstate
trigger1 = var(10)=3
trigger1 = movehit
persistent = 0
id = 1200
value = 1250

[State 1100, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crumple
[Statedef 1250]
type = S
movetype = H
physics = S
sprpriority = 0
velset = 0,0

[State 1250, PS]
type = posset
trigger1 = time = 0
y = 0

[state 1250, CA2]
type = changeanim2
trigger1 = time = 0
value = 1250

[State 1250, VS]
type = velset
trigger1 = time = 0
x = -4.5

[State 1250, Change to Air]
type = statetypeset
trigger1 = animelemtime(7)=0
statetype = A
movetype = H
physics = N

[State 1250, Invin]
type = nothitby
trigger1 = animelemtime(12)>=0
value = SCA

[State 1250, SS]
type = SelfState
trigger1 = animtime = 0
value = ifelse(alive = 1,5110,5150)

;---------------------------------------------------------------------------
; Tremor Kick FX
[Statedef 21200]
type = A
movetype = I
physics = N
anim = 21200
sprpriority = -1

[State 21200, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21200, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[state 21200, HOR]
type = hitoverride
trigger1 = 1
attr = SCA,AA,AP,AT
slot = 6
time = -1
ignorehitpause = 1

[State 21200, PFX]
type = palfx
trigger1 = time
time = 2
mul = 256-floor(256.0*time/50.0),256-floor(256.0*time/50.0),256-floor(256.0*time/50.0)

[State 21200, T]
type = trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 21200, CS]
type = destroyself
trigger1 = animtime = 0
trigger2 = root,movetype = H
trigger3 = !root,alive

;---------------------------------------------------------------------------
; Descending Flower Slam
[Statedef 1300]
type = U
movetype = A
physics = N
ctrl = 0
poweradd = 45*(var(7)<=0)
anim = 1300+1*(var(10)=2)+2*(var(10)=3)+5*(statetype=A)+30*(var(7)>0)
sprpriority = 1
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(6*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1300, STS]
type = StateTypeSet
trigger1 = time = 0
trigger1 = statetype != A
statetype = S
physics = S

[State 1300, STS]
type = velset
trigger1 = time = 0
trigger1 = statetype != A
x = 0
y = 0

[State 1300, Dust]
type = explod
trigger1 = animelemtime(3)=0
anim = 4002
ownpal = 1
pos = -60,0
sprpriority = 3

[State 1300, STS]
type = StateTypeSet
trigger1 = animelemtime(3)=0
statetype = A
physics = N

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(1)=0
value = 1100,1
channel = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(9)=0
value = 1100,0
channel = 0

[State 1300, VS]
type = velset
trigger1 = animelemtime(3)=0
x = 5+5*(var(10)=2)-1*(var(10)=3);+10*(var(10)=3)
y = -6-6*(var(10)=3)

[State 1300, Gravity]
type = velmul
trigger1 = vel x > 0
x = 0.96

[State 1300, VCancel]
type = velset
trigger1 = animelemtime(7)=0
trigger1 = var(10)=3
y = 4.5;3

[State 1300, Gravity]
type = veladd
trigger1 = animelemtime(3)>0
y = 0.44-0.02*(var(10)=2)+0.06*(var(10)=3);-0.04*(var(10)=3)

[State 1300, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 1300,11
channel = 2

[State 1300, PSND]
type = playsnd
trigger1 = animelemtime(7)=0
value = 1300,12
channel = 2

[State 1300, Explod]
type = explod
trigger1 = numexplod(1300)=0
trigger1 = animelemtime(7)=0
;trigger1 = time <= 32
;trigger1 = (time-8)%22=0
anim = 21300
ID = 1300
pos = 20,-60;-50
postype = p1
scale = 0.7,0.7
removetime = -2
ownpal = 1
sprpriority = 5
removeongethit = 1
bindtime = -1
ignorehitpause = 0

[State 1300, FX]
type = Helper
trigger1 = animelemtime(2)=0
helpertype = normal
name = "Skittle"
stateno = 21300
id = 21300
ownpal = 1
pos = -20,-15
size.xscale = 0.1125
size.yscale = 0.1125
persistent = 0

[State 1300, HD]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(6*ln(2)) + 0.5))&&(var(7)<=0),0,1)
trigger1 = animelemtime(9)>=0 && (animelemtime(11)<0||var(10)=3)
trigger1 = !movecontact && !movereversed
attr = A,SA
animtype = Back
priority = 4,Hit
damage = ceil((100+20*(var(10)=3)-5*(var(7)>0))*fvar(11)*ifelse(var(42),1.25,1.0)),20+4*(var(10)=3)-1*(var(7)>0)
hitflag = MAF
guardflag = HA
pausetime = 10,10
sparkno = s8020+(random%2)
guard.sparkno = s8030
sparkxy = 0,-7
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 22+3*(var(42))
ground.hittime = 22+3*(var(42))
air.hittime = 22+3*(var(42))
guard.slidetime = 22-1*(var(10)=2)-2*(var(10)=3)
guard.hittime = 22-1*(var(10)=2)-2*(var(10)=3)
ground.velocity = -11.5,10
air.velocity = -11.5,10
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 80-80*(var(7)>0),80-80*(var(7)>0)
givepower = 40,40
p2facing = 1
id = 1300

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 220, TS]
type = targetstate
trigger1 = (var(42))||anim=1330||anim=1331||anim=1332
trigger1 = numtarget(1300)
trigger1 = movehit
trigger1 = var(15)=0
trigger1 = (fvar(10):=fvar(10)*0.9)||1
trigger1 = (var(15):=1)||1
persistent = 0
ignorehitpause = 1
id = 1300
value = 450

[State 1300, FLAG RECOVERY]
type = statetypeset
trigger1 = var(10)!=3
trigger1 = animelemtime(11)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1300, CS]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -(vel y)
value = 1301

;---------------------------------------------------------------------------
; Descending Flower Slam Land
[Statedef 1301]
type = S
movetype = I
physics = S
velset = 0,0
anim = 1310+1*(var(10)=2)+2*(var(10)=3)
ctrl = 0
sprpriority = 1
movehitpersist=1

[State 1300, 1]
type = PlaySnd
trigger1 = time=0
value = 40,0

[State 1301, REX]
type = removeexplod
trigger1 = time = 0
id = 1300

[State 1301, PS]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1301, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Descend Flower Slam FX
[StateDef 21300]
type = A
movetype = I
physics = N
anim = 21100
sprpriority = 5

[State 21300, T]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21300, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = Noshadow
ignorehitpause = 1

[State 21300, FX Bind]
type = BindToParent
trigger1 = ishelper(21300)
trigger1 = root,animelemno(0)=2
pos = -25,-15
time = -1
ignorehitpause = 1

[State 21300, FX Bind]
type = BindToParent
trigger1 = ishelper(21300)
trigger1 = root,animelemno(0)=3
pos = -30,-28
time = -1
ignorehitpause = 1

[State 21300, FX Bind]
type = BindToParent
trigger1 = ishelper(21300)
trigger1 = root,animelemno(0)=4
pos = -30,-60
time = -1
ignorehitpause = 1

[State 21300, FX Bind]
type = BindToParent
trigger1 = ishelper(21300)
trigger1 = root,animelemno(0)=5
pos = -28,-76
time = -1
ignorehitpause = 1

[State 21300, FX Bind]
type = BindToParent
trigger1 = ishelper(21300)
trigger1 = root,animelemno(0)=6
pos = -27,-77
time = -1
ignorehitpause = 1

[State 21300, FX Bind]
type = BindToParent
trigger1 = ishelper(21300)
trigger1 = root,animelemno(0)=7
pos = 37,-91
time = -1
ignorehitpause = 1

[State 21300, FX Bind]
type = BindToParent
trigger1 = ishelper(21300)
trigger1 = root,animelemno(0)=8
pos = 46,-11
time = -1
ignorehitpause = 1

[State 21300, FX Bind]
type = BindToParent
trigger1 = ishelper(21300)
trigger1 = root,animelemno(0)=9
pos = 31,-5
time = -1
ignorehitpause = 1

[State 21300, FX Bind]
type = BindToParent
trigger1 = ishelper(21300)
trigger1 = root,animelemno(0)=10
pos = 28,-5
time = -1
ignorehitpause = 1

[State 21300, FX Bind]
type = BindToParent
trigger1 = ishelper(20615)
pos = 23,-2
time = -1
ignorehitpause = 1

[State 21300, FX Bind]
type = BindToParent
trigger1 = ishelper(20616)
pos = 34,-4
time = -1
ignorehitpause = 1

[State 21300, AD]
type = angledraw
trigger1 = 1
scale = 1.0+(2.0/3.0)*abs(cos(2.5*time)),1.0+(2.0/3.0)*abs(cos(2.5*time))
ignorehitpause = 1

[State 21300, Sparkle]
type = explod
trigger1 = 1;animelemtime(11)<0
persistent = 2
anim = 21110+(random%7)
ownpal = 1
pos = 0,0
random = 20,20
sprpriority = 5
vel = 2-(random%5),2-(random%5);0,2
scale = 1.2,1.2;0.7,0.7
;supermovetime = 999

[State 21300, Explod]
type = explod
trigger1 = 1
persistent = 5
anim = 21310+floor(7.0*random/1000.0)
postype = p1
pos = 0,0-(random%10)
vel = 2-(random%4),2-(random%4)
random = 30,30
scale = 0.5,0.5
sprpriority = 5
ignorehitpause = 1

[State 21300, CS]
type = destroyself
trigger1 = root,stateno = 1301 || root,stateno = 616
trigger2 = root,stateno != 1300 && root,stateno != 615
trigger3 = root,movetype = H
trigger4 = root,stateno = 1300 || root,stateno = 615
trigger4 = root,time <= 1

;---------------------------------------------------------------------------
; Scarlet Cannon
[Statedef 1400]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
poweradd = 45*(var(7)<=0)*(prevstateno!=1900)
anim = 1400+1*(var(10)=2)+2*(var(10)=3)
sprpriority = 1
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(7*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1400, X Ver Start Inv]
type = nothitby
trigger1 = time = 0 && prevstateno!=1900
trigger1 = var(10)<=1
value = SCA,AA,AP,AT
time = 9
ignorehitpause = 1

[State 1400, GCC Ver Start Inv]
type = nothitby
trigger1 = time = 0 && prevstateno=1900
value = SCA,AA,AP,AT
time = 11
ignorehitpause = 1

[State 1400, CA]
type = changeanim
triggerall = var(7)>0
triggerall = animelemtime(6)<0
trigger1 = animelemtime(1)=1
trigger2 = animelemtime(2)=1
trigger3 = animelemtime(3)=1
trigger4 = animelemtime(4)=1
trigger5 = animelemtime(5)=1
value = anim
elem = animelemno(0)+1

[State 1400, CA]
type = changeanim
triggerall = var(7)>0
trigger1 = var(10)=2
trigger1 = animelemtime(11)=2
trigger2 = var(10)=3
trigger2 = animelemtime(13)=2
value = anim
elem = animelemno(0)+1

[State 1400, VS]
type = posadd
trigger1 = var(10)>=2
trigger1 = animelemtime(4)>=0
trigger1 = animelemtime(6)<0
x = 5+4*(var(10)=3)

[State 1400, PSND]
type = playsnd
trigger1 = animelemtime(6)=0
value = 1400,0
channel = 0

[State 1400, PSND]
type = playsnd
trigger1 = animelemtime(6)=0
value = 1310,0

[State 1400, Dust]
type = explod
trigger1 = animelemtime(6)=0
anim = 4002
ownpal = 1
pos = -80,0
sprpriority = 3

[State 1400, FX]
type = Helper
trigger1 = animelemtime(6)=0
helpertype = normal
name = "Cannon FX"
stateno = 21400
id = 21400
pos = 38,-80
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 1400, Regular Hitdef]
Type = HitDef
trigger1 = ifelse((var(34)&floor(exp(7*ln(2)) + 0.5)),0,1)
trigger1 = var(7)<=0
trigger1 = animelemtime(6)>=0 && animelemtime(7)<0
trigger1 = !movecontact && !movereversed
attr = S,SA
damage = ceil((100+10*(var(10)=2)+20*(var(10)=3))*fvar(11)*ifelse(var(42),1.25,1.0)),20+2*(var(10)=2)+4*(var(10)=3)
getpower = 80*(prevstateno!=1900),80*(prevstateno!=1900)
givepower = 40,40
animtype = Hard
Hitflag = MAF
Guardflag = M
priority = 4,Hit
Pausetime = 10,10
Hitsound = s1,2
Guardsound = s2,0
SparkXY = -10,-80
sparkno = s8020+(random%2)
Guard.Sparkno = s8030
Ground.Type = High
Air.Type = Low
ground.slidetime = 26+3*(var(42))
ground.hittime = 26+3*(var(42))
air.hittime = 26+3*(var(42))
guard.slidetime = 21
guard.hittime = 21
Ground.Velocity = -1.5,-11
Air.Velocity = -1.5,-11
yaccel = 0.5
AirGuard.Velocity = -6,-4.8
Ground.Cornerpush.VelOff = 0
Guard.Cornerpush.VelOff = 0
Air.Cornerpush.VelOff = 0
Down.Cornerpush.VelOff = 0
Fall = 1
Air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1

[State 1400, Tiger Hitdef]
Type = HitDef
trigger1 = var(7)>0
trigger1 = animelemtime(6)>=0 && animelemtime(7)<0
trigger1 = !movecontact && !movereversed
attr = S,SA
damage = ceil((85+10*(var(10)=2)+20*(var(10)=3))*fvar(11)*ifelse(var(42),1.25,1.0)),17+2*(var(10)=2)+4*(var(10)=3)
getpower = 0,0
givepower = 40,40
animtype = Hard
Hitflag = MAF
Guardflag = M
priority = 4,Hit
Pausetime = 10,10
Hitsound = s1,2
Guardsound = s2,0
SparkXY = -10,-80
sparkno = s8020+(random%2)
Guard.Sparkno = s8030
Ground.Type = High
Air.Type = Low
ground.slidetime = 26+3*(var(42))
ground.hittime = 26+3*(var(42))
air.hittime = 26+3*(var(42))
guard.slidetime = 21
guard.hittime = 21
Ground.Velocity = -1.5,-8.5
Air.Velocity = -1.5,-8.5
yaccel = 0.5
AirGuard.Velocity = -6,-4.8
Ground.Cornerpush.Veloff = 0
Guard.Cornerpush.Veloff = 0
Air.Cornerpush.Veloff = 0
Down.Cornerpush.Veloff = 0
Fall = 1
Air.fall = 1
fall.recover = 0
p2facing = 1

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.8*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = animelemtime(7)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1300, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Scarlet Cannon FX
[StateDef 21400]
type = A
movetype = I
physics = N
anim = 21400
sprpriority = 5

[State 21400, BindToParent]
type = BindToParent
trigger1 = 1
pos = 38,-80

[State 21400, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = Noshadow
ignorehitpause = 1

[State 21400, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21400, ASS]
type = AssertSpecial
trigger1 = 1
flag = Noshadow
ignorehitpause = 1

[State 21400, FX1]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Cannon FX2"
stateno = 21401
id = 21400
pos = 0,0
postype = p1
ownpal = 1
facing = 1
persistent = 0

[State 21400, FX2]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "Cannon FX3"
stateno = 21402
id = 21400
pos = 0,0
postype = p1
ownpal = 1
facing = 1
ownpal = 1
persistent = 0

[State 21400, VA]
type = VarAdd
trigger1 = 1
fvar(0) = ifElse(time<10,0.05,0.01)

[State 21400, AD]
type = AngleDraw
trigger1 = 1
value = -40
scale = fvar(0),(fvar(0)/2.0)

[State 21400, VA]
type = VarAdd
trigger1 = time >= 10
var(0) = 1

[State 21400, PFX]
type = Palfx
trigger1 = 1
mul = 255-(25*var(0)),255-(25*var(0)),255-(25*var(0))
time = -1

[State 21400, DestroySelf]
type = DestroySelf
trigger1 = root,stateno != 1400
trigger2 = root,movetype = H
trigger3 = var(0)>=10

;---------------------------------------------------------------------------
; Scarlet Cannon FX2
[Statedef 21401]
type = A
movetype = I
physics = N
anim = 21401
sprpriority = 4

[State 21401, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21401, ASS]
type = AssertSpecial
trigger1 = 1
flag = Noshadow
ignorehitpause = 1

[State 21401, VA]
type = VarAdd
trigger1 = 1
fvar(0) = IfElse(time<10,0.05,0.01)

[State 21401, AD]
type = AngleDraw
trigger1 = 1
value = -40
scale = fvar(0),(fvar(0)/2.0)

[State 21401, VA]
type = VarAdd
trigger1 = time >= 10
var(0) = 1

[State 21401, PFX]
type = Palfx
trigger1 = 1
mul = 255-25*var(0),255-25*var(0),255-25*var(0)
time = -1

[State 21401, Zeeky]
type = Destroyself
trigger1 = root,stateno != 1400
trigger2 = root,movetype = H
trigger3 = var(0)>=10

;---------------------------------------------------------------------------
; Scarlet Cannon FX3
[Statedef 21402]
type = A
movetype = I
physics = N
anim = 21402
sprpriority = 4

[State 21402, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21402, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = Noshadow
ignorehitpause = 1

[State 21402, VA]
type = VarAdd
trigger1 = 1
fvar(0) = IfElse(time<10,0.1,0.02)

[State 21402, AD]
type = AngleDraw
trigger1 = 1
value = -40
scale = fvar(0),(fvar(0)/2.0)

[State 21402, VA]
type = VarAdd
trigger1 = time >= 10
var(0) = 1

[State 21402]
type = Palfx
trigger1 = 1
mul = 255-25*var(0),255-25*var(0),255-25*var(0)
time = -1

[State 21402, Zeeky]
type = Destroyself
trigger1 = root,stateno != 1400
trigger2 = root,movetype = H
trigger3 = var(0)>=10

;---------------------------------------------------------------------------
; Guard Cancel Counter
[Statedef 1900]
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
stateno = 21900;1999
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
sound = S4,3
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
value = 1400

;-----------------------
; Guard Cancel Use Effect
[Statedef 21900]
anim = 1999
velset = 0,0
sprpriority = 3

[State 1003, NoShadow]
type = AssertSpecial
trigger1 = ishelper
flag = Noshadow
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