;---------------------------------------------------------------------------
; "Colorful Windchime"
[Statedef 2000]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 2000+0*(var(10):=0)+0*floor(var(57):=0)
sprpriority = 1
facep2 = 1

[State 2200, IKEMEN Bugs LOL]
type = nothitby
trigger1 = time = 0
value = SCA
time = 40

[State 200, Damage Dampen]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10) = fvar(10)*0.925
ignorehitpause = 1
persistent = 0

[State 210, PSND]
type = playsnd
trigger1 = time = 0
value = 2000,0
channel = 0

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 1999
stateno = 20000
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
sound = S4,0
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
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[State 2000, Playsnd]
type = playsnd
trigger1 = animelemtime(5)=0
value = 1500,0
channel = 0

[State 2000, NHB]
type = nothitby
trigger1 = animelemtime(7)>=0 && animelemtime(27)<0
value = ,AP
time = 1
ignorehitpause = 1
;persistent = 

[State 2000, VelS]
type = velset
trigger1 = animelemtime(7)>=0 && animelemtime(27)<0
x = 7.0

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(7)=0
value = 2000,10

[state 2000, Dust]
type = Explod
trigger1 = animelemtime(7)>=0 && animelemtime(27)<0
persistent = 20
anim = 22001
pos = 10,0
vel = 3,0
id = 22001
ownpal = 1
sprpriority = 5
scale = 0.75,0.75
IgnoreHitPause = 1

[state 2001, Dust]
type = Explod
trigger1 = animelemtime(7)>=0 && animelemtime(27)<0
persistent = 20
anim = 22001
pos = -10,0
vel = -3,0
id = 22001
ownpal = 1
sprpriority = 5
scale = 0.75,0.75
IgnoreHitPause = 1

[State 2000, Explod]
type = Explod
trigger1 = animelemtime(7)>=0 && animelemtime(27)<0
persistent = 13
anim = 22000
ID = 22000
pos = 0,-50
postype = p1 ;p2,front,back,left,right
facing = -1
bindtime = -1
removetime = -2
scale = 1.0,1.0;1.5,1
sprpriority = 5
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 2000, VA]
type = varadd
trigger1 = movecontact = 1
var(10) = 1
;ignorehitpause = 1

[State 2000, MHR]
type = movehitreset
trigger1 = animelemtime(7)>=0 && animelemtime(27)<0
persistent = 5

[State 200, 1]
type = HitDef
trigger1 = var(10)<11
trigger1 = animelemtime(7)>=0 && animelemtime(27)<0
trigger1 = !movecontact && ! movereversed
persistent = 5
attr = S,HA
damage = ceil(26*(fvar(11)/cond(var(57)=5,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),4
animtype = Hard
air.animtype = Back
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 1,6
sparkno = S8010+(random%2)
guard.sparkno = S8030
sparkxy = -(random%21),-50-(random%20)
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 24+3*(var(42))
ground.hittime = 24+3*(var(42))
air.hittime = 24+3*(var(42))
guard.slidetime = 21
guard.hittime = 21
ground.velocity = -5.5,-4.75
airguard.velocity = -5.5,-4.75
air.type = High
air.velocity = -5.5,-4.75
fall = 1
fall.recover = 0
yaccel = 0.5
Ground.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Down.CornerPush.VelOff = 0
getpower = 0,0
givepower = 28,28
p2facing = 1
id = 2000

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(2000)
trigger1 = target(2000),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 5;Change index
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit=1
fvar(10) = fvar(10)*0.96*cond(fvar(10)>=1.0,(fvar(30)),1.0)
;ignorehitpause = 1
;persistent = 0

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 2000
ignorehitpause = 1

[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = animelemtime(27)>=0
trigger2 = var(10)>=11
movetype = I
ignorehitpause = 1
persistent = 0

[State 2001, Friction]
type = velmul
trigger1 = animelemtime(27)>=0
trigger1 = vel x > 0
x = 0.94

[State 2000, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Strike Sign "Roc's Fist"
[Statedef 2100]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 2100+0*floor(var(57):=0)
sprpriority = 1
facep2 = 1

[State 200, Damage Dampen]
type = varset
trigger1 = fvar(10)<1.0
trigger1 = time=0
fvar(10) = fvar(10)*0.925
ignorehitpause = 1
persistent = 0

[State 0, Width]
type = Width
trigger1 = 1
edge = 20,0

[State 210, PSND]
type = playsnd
trigger1 = time = 0
value = 2200,0
channel = 0

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 60
supermovetime = 60

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 1999
stateno = 20000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 60
supermovetime = 60

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 60
anim = -1
sound = S4,0
p2defmul = 1
poweradd = -1000
unhittable = 1
movetime = 60
darken = 0

[State 2100, NHB]
type = nothitby
trigger1 = time <= 71
value = SCA
time = 1
ignorehitpause = 1

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(18)=0
trigger2 = animelemtime(28)=0
trigger3 = animelemtime(38)=0
value = 2200,10

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(18)=0
value = 200,0
channel = 0

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(28)=0
value = 420,0
channel = 0

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(38)=0
value = 2200,1
channel = 0

[State 2100, VS]
type = velset
trigger1 = animelemtime(26)=0
trigger2 = animelemtime(18)=0
x = 3

[State 2100, PSND]
type = playsnd
trigger1 = animelemtime(34)=0
value = 7,2

[State 1400, Dust]
type = explod
trigger1 = animelemtime(34)=0
anim = 4002
ownpal = 1
pos = -82,0
sprpriority = 3
;scale = (var(10)/3.0),(var(10)/3.0)
[State 1400, Dust]
type = explod
trigger1 = animelemtime(34)=0
anim = 4002
ownpal = 1
pos = 128,0
facing = -1
sprpriority = 3

[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(34)=0
time = 12
freq = 60
;ampl = -4
;phase = 90
;ignorehitpause = 
;persistent = 

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(18)=0
helpertype = normal
name = "Rocs Fist FX1"
id = 22102
stateno = 22100
pos = 61,-48
postype = p1
;size.xscale = 0.5
;size.yscale = 0.5
ownpal = 1
facing = 1

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(28)=0
helpertype = normal
name = "Rocs Fist FX1"
id = 22101
stateno = 22100
pos = 40,-70
postype = p1
;size.xscale = 0.5
;size.yscale = 0.5
ownpal = 1
facing = 1

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(38)=0
helpertype = normal
name = "Rocs Fist FX1"
id = 22100
stateno = 22100
pos = 45,-80
size.xscale = 2.0
size.yscale = 2.0
postype = p1
ownpal = 1
facing = 1

[State 2100, HDEF]
type = HitDef
trigger1 = animelemtime(18)>=0 && animelemtime(19)<0
trigger1 = !movecontact && !movereversed
attr = S,HA
damage = ceil((30-10*(var(7)>0))*(fvar(11)/cond(var(57)=6,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),6-2*(var(7)>0)
animtype = Back
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = s8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,-82
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 32+3*(var(42))
ground.hittime = 32+3*(var(42))
air.hittime = 32+3*(var(42))
ground.velocity = -0.0
guard.velocity = -5.0
airguard.velocity = -5.0,-3.0
air.type = High
air.velocity = -0.0,-1.5;-4.5
fall = 0
air.fall = 1
fall.recover = 0
fall.yvelocity = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4
getpower = 0,0
givepower = 50,50
p2facing = 1
id = 2100

[State 2100, Customstate]
type = targetstate
trigger1 = movehit
trigger1 = animelemtime(28)<0
trigger1 = numtarget(2100)
trigger1 = !(target(2100),ishelper)
ignorehitpause = 1
persistent = 0
value = 2150

[State 2100, TB]
type = Targetbind
trigger1 = numtarget(2100)
trigger1 = animelemtime(28)<0
trigger1 = movehit
trigger1 = target,pos x > 60
pos = 50,0
ignorehitpause = 1
persistent = 0

[State 2100, Reset]
type = movehitreset
trigger1 = animelemtime(28)=0||animelemtime(38)=0

[State 2100, HDEF]
type = HitDef
trigger1 = animelemtime(28)>=0 && animelemtime(29)<0
trigger1 = !movecontact && !movereversed
attr = S,HA
damage = ceil((45-10*(var(7)>0))*(fvar(11)/cond(var(57)=6,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),8-2*(var(7)>0)
animtype = Back
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = s8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,-52
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 32+3*(var(42))
ground.hittime = 32+3*(var(42))
air.hittime = 32+3*(var(42))
guard.slidetime = 60;32
guard.hittime = 60
ground.velocity = -0.5,-11.25
guard.velocity = -5.0
airguard.velocity = -5.0,-3.0
air.type = High
air.velocity = -0.5,-11.25;-0.2,-8.5
fall = 1
fall.recover = 0
fall.yvelocity = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5;44
getpower = 0,0
givepower = 90,90
p2facing = 1
id = 2101

[State 2100, HDEF]
type = HitDef
trigger1 = animelemtime(38)>=0 && animelemtime(39)<0
trigger1 = !movecontact && !movereversed
attr = S,HA
damage = ceil(204*(fvar(11)/cond(var(57)=6,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),36
animtype = up
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 15,15
sparkno = -1
guard.sparkno = S8030
sparkxy = -10,-80
hitsound = s1,4
guardsound = s2,0
ground.type = High
ground.slidetime = 32+3*(var(42))
ground.hittime = 32+3*(var(42))
air.hittime = 32+3*(var(42))
ground.velocity = -1.0,-24
airguard.velocity = -1.0,-8
air.type = High
air.velocity = -1.0,-24;17
fall = 1
fall.recover = 0
fall.yvelocity = 0
yaccel = 0.5
getpower = 0,0
givepower = 160,160
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
envshake.time = 20
envshake.freq = 100
envshake.ampl = 8
p2facing = 1
id = 2101

[State 220, First Combo Hit]
type = varset
triggerall = var(57)=0
trigger1 = numtarget(2100)
trigger1 = target(2100),gethitvar(hitcount)=1
trigger2 = numtarget(2101)
trigger2 = target(2101),gethitvar(hitcount)=1
var(57) = 6;Change index
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit;=1
trigger1 = animelemtime(28)<0
fvar(10) = fvar(10)*0.93*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit;=1
trigger1 = animelemtime(28)>=0 && animelemtime(38)<0
fvar(10) = fvar(10)*0.93*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit;=1
trigger1 = animelemtime(38)>=0
fvar(10) = fvar(10)*0.75*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 2200, STS]
type = statetypeset
trigger1 = animelemtime(39)>=0
trigger2 = animelemtime(38)>=0 && animelemtime(39)<0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 0, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 2101
ignorehitpause = 1

[State 2200, CA]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hit by 1st Hit Rocs Fist
[Statedef 2150]
type = U
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 2150, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S
physics = S

[State 2150, CA]
type = changeanim2
trigger1 = time = 0
value = 2150+1*(statetype != A)
ignorehitpause = 1

[State 2150, SS]
type = SelfState
trigger1 = statetype = A
trigger1 = time >= 100
value = 5030
ignorehitpause = 1

[State 2150, SS]
type = SelfState
trigger1 = statetype !=A
trigger1 = time >= 100
value = 0
ctrl = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
; Rocs Fist FX
[Statedef 22100]
type = A
movetype = I
physics = N
anim = 22100
velset = 0,0
sprpriority = 5

[State 22100, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Rocs Fist FX2"
id = 22110+1*(!ishelper(22100))
stateno = 22101
pos = 0,0
postype = p1
size.xscale = 1.0+1.0*(ishelper(22100))
size.yscale = 1.0+1.0*(ishelper(22100))
ownpal = 1
facing = 1

[State 22100, T]
type = trans
trigger1 = time<20
trans = add
ignorehitpause = 1

[State 22100, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 22100, VA]
type = null
trigger1 = time < 10
trigger1 = fvar(0):=fvar(0)+0.2
trigger2 = time >= 10
trigger2 = fvar(0):=fvar(0)+0.02

[State 22100, AD]
type = angledraw
trigger1 = 1
value = 45*ishelper(22100)+60*ishelper(22101)
scale = (fvar(0)/3.0),fvar(0)

[State 22100, PALFX]
type = trans
trigger1 = time>=21
trans = addalpha
alpha = 256-floor(256.0*(time-21)/10.0),256
ignorehitpause = 1

[State 22100, Zeeky]
type = destroyself
trigger1 = time >= 31

;---------------------------------------------------------------------------
; Rocs Fist FX2
[Statedef 22101]
type = A
movetype = I
physics = N
anim = 22101+1*(ishelper(22111))
velset = 0,0
sprpriority = 4

[State 22101, T]
type = trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 22101, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 22101, VA]
type = null
trigger1 = time < 10
trigger1 = fvar(0):=fvar(0)+0.2
trigger2 = time >= 10
trigger2 = fvar(0):=fvar(0)+0.02

[State 22101, AD]
type = angledraw
trigger1 = 1
scale = (fvar(0)/4.0),(fvar(0)/4.0)

[State 22101, PFX]
type = palfx
trigger1 = !ishelper(22111) && time >= 25
time = 1
mul = 256-15*(time-25),256-15*(time-25),255-15*(time-25)

[State 22101, Zeeky]
type = destroyself
trigger1 = !ishelper(22111)
trigger1 = time >= 41
trigger2 = ishelper(22111)
trigger2 = time >= 31

[State 22101, PFX]
type = palfx
trigger1 = ishelper(22111) && time >= 21
time = 1
mul = 256-floor(256.0*(time-21)/10.0),256-floor(256.0*(time-21)/10.0),255-floor(256.0*(time-21)/10.0)

;---------------------------------------------------------------------------
; Lvl 2: Qi Sign "Fierce Tiger's Strength"
[Statedef 3000]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 3000
sprpriority = 1
facep2 = 1

[State 2200, IKEMEN Bugs LOL]
type = nothitby
trigger1 = time = 0
value = SCA
time = 188

[State 200, Damage Dampen]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10) = fvar(10)*0.925
ignorehitpause = 1
persistent = 0

[State 4100, TimerSet]
type = varset
trigger1 = time = 0
var(10) = power

[State 4100, VS]
type = varset
trigger1 = time = 0
trigger1 = var(10)>3000
var(10) = 3000

[State 1300, PSND]
type = playsnd
trigger1 = time = 0
value = 3000,2
channel = 0

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 1999+1000*(var(10)=[2000,2999])+2000*(var(10)>=3000)
stateno = 20000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 188
supermovetime = 188

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 188
anim = -1
sound = S4,0+1*(var(10)=[2000,2999])+2*(var(10)>=3000)
p2defmul = 1
poweradd = -3000
unhittable = 1
movetime = 188
darken = 0

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 188
supermovetime = 188

[State 181, PSND]
type = playsnd
trigger1 = time = 30;(time*7)%90 = 0
value = 3000,10
channel = 1

[State 3000, Aura]
type = helper
trigger1 = time = [30,70]
persistent = 10
helpertype = normal
name = "Aura"
id = 23010
stateno = 23010
pos = 0,0
postype = p1
ownpal = 1
facing = 1
pausemovetime = 300
supermovetime= 300

[State 3000, Aura]
type = helper
trigger1 = time = 30
helpertype = normal
name = "Aura"
id = 23011
stateno = 23011
pos = 0,0
postype = p1
ownpal = 1
facing = 1
pausemovetime = 300
supermovetime= 300

[State 1200, PSND]
type = PlaySnd
trigger1 = animelemtime(28)=0
value = 3000,3
[State 1200, PSND]
type = PlaySnd
trigger1 = animelemtime(28)=0
value = 3000,3

[State 4000, Murder Floof]
type = explod
trigger1 = animelemtime(28)=0
anim = 23002
id = 23000
removetime = -2
scale = 1.5,1.5
pos = GameWidth/2 + (0), GameHeight/2 + (0)
postype = back
bindtime = -1
ownpal = 1
sprpriority = -1
removeongethit = 1
ignorehitpause = 1
pausemovetime = 40
supermovetime = 40

[State 4000, MEX]
type = modifyexplod
trigger1 = numexplod(23000)=1
id = 23000
scale = 1.5+((time-129)/80.0),1.5+((time-129)/80.0)

[State 1300, PSND]
type = playsnd
trigger1 = animelemtime(27)=0
value = 3000,0
channel = 0

[State 1200, PSND]
type = PlaySnd
trigger1 = animelemtime(28)=0
value = 7,2

[state 1301, ES]
type = envshake
trigger1 = animelemtime(28)=0
time = 24
ampl = -8
freq = 90

[State 3000, PalFX]
type = varset
trigger1 = animelemtime(28)>=0
var(7) = 240+cond((var(10)<=1500),0,floor(((var(10)-1500)*480.0/1500.0)));Max 720

[State 4000, Effect]
type = helper
trigger1 = time = 181
helpertype = normal
name = "Timer"
ID = 23000
pos = 0,0
postype = p1
stateno = 23000
ownpal = 1
facing = 1
pausemovetime = 999999
supermovetime = 999999

[State 1300, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------
; Tiger Counter
[StateDef 23000]
Type = A
MoveType = I
Physics = N
anim = 1998
SprPriority = -1
velset = 0,0

[State 30050, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 30050, BTR]
type = bindtoroot
trigger1 = 1
pos = 0,0

[State 24000, VS]
type = varset
trigger1 = var(54)!=(root,var(7))
var(54) = root,var(7)

[State 24000, VS]
type = varset
trigger1 = time = 0
var(55) = root,var(7)

[State 21000, Explod]
type = explod
trigger1 = numexplod(30000)=0
anim = 30000
id = 30000
scale = 1.0,0.75
pos = -44*ifelse(root,facing=1,1,-1),5
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

[State 0, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 0,256,0
mul = 0,256,0
invertall = 0
color = 256
;ignorehitpause = 
;persistent = 

[State 21000, Explod]
type = explod
trigger1 = numexplod(30001)=0
anim = 30001
id = 30001
scale = 1.0,0.75
pos = -44*ifelse(root,facing=1,1,-1),5
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
scale = (1.0*var(54)/var(55)),0.75
ignorehitpause =1

[State 21000, REX]
type = removeexplod
trigger1 = root,var(7)<=0
id = 30000

[State 21000, REX]
type = removeexplod
trigger1 = root,var(7)<=0
id = 30001

[State 0, PalFX]
type = PalFX
trigger1 = root,var(7)<=0
time = 0
add = 0,0,0
mul = 256,256,256
invertall = 0
color = 256

[State 30050, Time Over]
type = Destroyself;changestate
trigger1 = time
trigger1 = root,var(7)<=0

;---------------------------------------------------------------------------
; Tiger Aura FX1
[Statedef 23010]
type = A
movetype = I
physics = N
anim = 23000
velset = 0,0
sprpriority = 4

[State 23010, SPR]
type = sprpriority
trigger1 = 1
value = 4
ignorehitpause = 1

[State 23010, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/12.0),256
ignorehitpause = 1

[State 23010, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 23010, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[state 23010, AD]
type = angledraw
trigger1 = 1
scale = 0.85*(1-time*0.04),0.8*(1+time*0.05)
;scale = 1.0*cos((7*time)%90*pi/180.0),1.5*sin((7*time)%90*pi/180.0)

[State 23010, Zeeky]
type = destroyself
trigger1 = time >= 12

;---------------------------------------------------------------------------
; Tiger Aura FX2
[Statedef 23011]
type = A
movetype = I
physics = N
anim = 23001
sprpriority = 5

[State 23011, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 23011, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[state 23011, AD]
type = AngleDraw
trigger1 = 1
scale = 0.5*(1+(0.25+0.25*time)*0.1),0.5
ignorehitpause = 1

[State 23011, Tù]
type = Trans
trigger1 = time <= 10
trans = addalpha
alpha = floor(256.0*time/10.0),256
ignorehitpause = 1

[State 23011, Tù]
type = Trans
trigger1 = time = [11,27]
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 23011, Tù]
type = Trans
trigger1 = time > 27
trans = addalpha
alpha = 256-floor(256.0*(time-27)/37.0),256
ignorehitpause = 1

[State 23011, Zeeky]
type = Destroyself
trigger1 = time >= 54
trigger2 = root,movetype = H
trigger3 = root,stateno != 3000

;---------------------------------------------------------------------------
; Lvl 3: Colorful Light Lotus Flower Palm
[Statedef 4000]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 4000
sprpriority = 1
facep2 = 1

[State 2200, IKEMEN Bugs LOL]
type = nothitby
trigger1 = time = 0
value = SCA
time = 60

[State 210, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 4000,0
channel = 0

[State 200, Damage Dampen]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10) = fvar(10)*0.925
ignorehitpause = 1
persistent = 0

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_FX"
id = 3999
stateno = 20000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 60
supermovetime = 60

[State 4000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Blackout Effect"
ID = 701
pos = 0,0
postype = p1
stateno = 701
ownpal = 1
facing = 1
pausemovetime = 60
supermovetime = 60

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 60
anim = -1
sound = S4,2
p2defmul = 1
poweradd = -3000
unhittable = 1
movetime = 60
darken = 0

[State 2001, Dust]
type = explod
trigger1 = animelemtime(19)=0
persistent = 0
anim = 4002
ID = 4002
pos = -60,0
postype = p1
scale = 0.5,0.5
removetime = 12
ownpal = 1
sprpriority = 3

[State 4001, Xpos Offset]
type = velset
trigger1 = animelemtime(19)=0
x = 8

[State 2200, Proj Inv]
type = nothitby
trigger1 = animelemtime(23)<0
value = ,AP
time = 1

[State 4001, Xpos Offset]
type = posadd
trigger1 = animelemtime(20)=0
x = 12
[State 4001, Xpos Offset]
type = posadd
trigger1 = animelemtime(21)=0
x = 43

[State 4001, VS]
Type = playsnd
trigger1 = animelemtime(21)=0
value = 4000,1
channel = 0

[State 4001, VS]
Type = playsnd
trigger1 = animelemtime(21)=0
value = 0,2

[State 4001, VS]
Type = VelSet
trigger1 = animelemtime(21)=0
x = 6

[State 3002]
Type = Veladd
trigger1 = Time = [68,72]
x = 1

[State 4001, PP]
type = Playerpush
trigger1 = animelemtime(23)<0
Value = 0
ignorehitpause = 1

[State 4001, W]
type = width
trigger1 = animelemtime(21)>=0
edge = 33,0

[State 4001, HD]
type = HitDef
trigger1 = animelemtime(21)>=0 && animelemtime(22)<0
trigger1 = !movecontact && !movereversed
attr = A,HA
animtype = Hard
damage = ceil(100*ifelse(var(42),1.25,1.0)),80
priority = 4,Hit
kill = 0
guard.kill = 1
hitflag = MAF
guardflag = M;A
pausetime = 0,10
sparkxy = -30+(random%20),-70+(random%20)
sparkno = -1;s8020;+(random%2)
guard.sparkno = s8030
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 22+3*(var(42))
ground.hittime = 22+3*(var(42))
air.hittime = 22+3*(var(42))
ground.velocity = -5,0
air.velocity = -5,-5
yaccel = .5
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0,0
givepower = 100,600
envshake.time = 8
envshake.freq = 100
envshake.ampl = 3
Ground.CornerPush.VelOff = 0
Guard.CornerPush.VelOff = 0
Air.CornerPush.VelOff = 0
Down.CornerPush.VelOff = 0
p2facing = 1
id = 4000

[State 701, BGPFX]
type = bgpalfx
trigger1 = movehit
time = 30
persistent = 0
ignorehitpause = 1
mul = 64,64,64

[State 4001, Explod]
type = Explod
trigger1 = movehit
ignorehitpause = 1
persistent = 0
anim = 8020+(random%2)
pos = (floor(target,pos x-pos x)-35+random%20)*facing,floor(target,pos y-pos y)-63+random%30
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 3

[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = animelemtime(22)>=0
trigger2 = moveguarded||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 4001, CS]
Type = Changestate
trigger1 = numtarget(4000)
trigger1 = movehit && !movereversed
trigger1 = !(target(4000),ishelper)
value = 4001

[State 4001, CS]
Type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Lvl 3: Lotus Palm Hit
[Statedef 4001]
type = S
movetype = A
physics = S
ctrl = 0
anim = 4001

[State 4002, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
;flag = unguardable

[State 4002, P2State]
type = targetstate
trigger1 = time = 0
value = 4050

[State 4002, NHB]
type = nothitby
trigger1 = 1
value = SCA

[State 4001, PP]
type = Playerpush
trigger1 = 1
Value = 0
ignorehitpause = 1

[State 4001, W]
type = width
trigger1 = 1;animelemtime(3)>=0
edge = 80,0

[State 4002, PlaySnd]
type = PlaySnd
trigger1 = Time = 30
value = S4010,0

[State 4002, Helper]
type = Helper
trigger1 = time = 20
helpertype = normal
name = "Rainbow"
ID = 24000
pos = -10,-50
postype = p2
stateno = 24000
keyctrl = 0
ownpal = 1
supermovetime = 1

[State 4002, Helper]
type = Helper
trigger1 = time = 40
ID = 24001
pos = -10,-50
postype = p2
stateno = 24000
helpertype = normal
name = "Rainbow"
keyctrl = 0
ownpal = 1
supermovetime = 1

[State 4002, Helper]
type = Helper
trigger1 = time = 60
ID = 24002
pos = -10,-50
postype = p2
stateno = 24000
helpertype = normal
name = "Rainbow"
keyctrl = 0
ownpal = 1
supermovetime = 1

[State 4002, Helper]
type = Helper
trigger1 = time = 80
ID = 24003
pos = -10,-50
postype = p2
stateno = 24000
helpertype = normal
name = "Rainbow"
keyctrl = 0
ownpal = 1
supermovetime = 1

[State 4002, Helper]
type = Helper
trigger1 = time = 100
ID = 24004
pos = -10,-50
postype = p2
stateno = 24000
helpertype = normal
name = "Rainbow"
keyctrl = 0
ownpal = 1
supermovetime = 1

[State 4002, Helper]
type = Helper
trigger1 = time = 120
ID = 24005
pos = -10,-50
postype = p2
stateno = 24000
helpertype = normal
name = "Rainbow"
keyctrl = 0
ownpal = 1
supermovetime = 1

[State 4002, Helper]
type = Helper
trigger1 = time = 140
ID = 24006
pos = -10,-50
postype = p2
stateno = 24000
helpertype = normal
name = "Rainbow"
keyctrl = 0
ownpal = 1
supermovetime = 1

[State 4002, Helper]
Type = Helper
Trigger1 = Time = 20
Name = "Charge"
ID = 24010
StateNo = 24001
PauseMoveTime = 0
Persistent = 0
OwnPal = 1
PosType = p2
Pos = -5,-50

[State 4001, VS]
Type = playsnd
trigger1 = time = 120
value = 4000,2
channel = 0

[State 4002, PlaySnd]
type = PlaySnd
trigger1 = Time = 170
value = S4010,1

[State 701, BGPFX]
type = bgpalfx
trigger1 = time < 170
time = 1
mul = 64,64,64

[State 4002, PFX]
type = AllPalFX
trigger1 = Time = 170
time = 30
sinadd = 255,255,255,120

[State 4002, TargetState]
type = TargetState
trigger1 = Time = 170
value = 4051

[State 4002, HA]
type = hitadd
trigger1 = time = 170
value = 1

[State 4002, TPA]
type = targetpoweradd
trigger1 = time = 170
value = 500

[State 4002, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 170
value = -300
ID = -1
kill = 1
absolute = 1

[State 200, Damage Dampen]
type = varset
trigger1 = time = 170
fvar(10) = fvar(10)*0.40*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 4001, CS]
type = changestate
trigger1 = time >= 230
value = 4002

;---------------------------------------------------------------------------
; Lvl 3: Lotus Palm Hit End
[Statedef 4002]
type = S
movetype = I
physics = S
ctrl = 0
anim = 4003

[State 4001, PP]
type = Playerpush
trigger1 = 1
Value = 0
ignorehitpause = 1

[State 4001, W]
type = width
trigger1 = 1
edge = 80,0

[State 4003, CS]
Type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Lotus Palm Hitstate 1
[Statedef 4050]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 1

[State 4050, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 4050, CA2]
type = changeanim2
trigger1 = time = 0
value = 4050

;---------------------------------------------------------------------------
; Lotus Palm Hitstate 2
[Statedef 4051]
type = A
movetype = H
physics = N
ctrl = 0

[State 4051, NHB]
type = NotHitBy
trigger1 = 1
value = ,AT

[State 4051, VS]
type = VelSet
trigger1 = Time = 0
x = 0
y = -8

[State 4051, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 4051, VA]
type = VelAdd
trigger1 = time >= 25
y = 0.6

[State 4051, CA2]
type = ChangeAnim2
trigger1 = Time = 0
value = 4051

[State 4051]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -(vel y)
value = 6100

;---------------------------------------------------------------------------
; Lotus Flower Strike FX1
[Statedef 24000]
type = A
movetype = I
physics = N
anim = 24000
velset = 0,0
sprpriority = 10

[State 24000, PalFX]
type = PalFX
trigger1 = IsHelper(24000)
trigger1 = 1
add = 0,0,0
mul = 255,0,0
invertall = 0
color = 0
time = 1

[State 24000, PalFX]
type = PalFX
trigger1 = IsHelper(24001)
trigger1 = 1
add = 0,0,0
mul = 255,255,0
invertall = 0
color = 0
time = 1

[State 24000, PalFX]
type = PalFX
trigger1 = IsHelper(24002)
trigger1 = 1
add = 0,0,0
mul = 124,252,0
invertall = 0
color = 0
time = 1

[State 24000, PalFX]
type = PalFX
trigger1 = IsHelper(24003)
trigger1 = 1
add = 0,0,0
mul = 0,191,255
invertall = 0
color = 0
time = 1

[State 24000, PalFX]
type = PalFX
trigger1 = IsHelper(24004)
trigger1 = 1
add = 0,0,0
mul = 25,25,112
invertall = 0
color = 0
time = 1

[State 24000, PalFX]
type = PalFX
trigger1 = IsHelper(24005)
trigger1 = 1
add = 0,0,0
mul = 160,32,240
invertall = 0
color = 0
time = 1

[State 24000, PalFX]
type = PalFX
trigger1 = IsHelper(24006)
trigger1 = 1
add = 0,0,0
mul = 255,192,203
invertall = 0
color = 0
time = 1

[State 24000, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = Noshadow
ignorehitpause = 1

[State 24000, Trans]
type = Trans
trigger1 = 1
trans = Addalpha
alpha = 256,256
ignorehitpause = 1

[State 24000]
type = VarSet
trigger1 = 1
fv = 0
value = parent,fvar(3)

[State 24000]
type = ParentVarSet
triggerall = numenemy
trigger1 = facing != enemy,facing
trigger1 = facing = 1
fv = 3
value = fvar(0)+(Pi/2)

[State 24000]
type = ParentVarSet
triggerall = numenemy
trigger1 = facing != enemy,facing
trigger1 = facing = -1
fv = 3
value = fvar(0)-(Pi/2)

[State 24000]
type = VarAdd
trigger1 = 1
fv = 0
value = 1

[State 24000]
type = TargetBind
trigger1 = Facing = 1
pos = floor(55*(sin(fvar(0)))),(floor(55*(cos(fvar(0)))))-30
time = 1

[State 24000]
type = TargetBind
trigger1 = Facing = -1
pos = floor(55*(cos(fvar(0)))),(floor(55*(sin(fvar(0)))))-30
time = 1

[State 24000, AngleDraw]
type = AngleDraw
trigger1 = 1
Value = 3*time
scale = 2,2

[State 24000, DestroySelf]
type = DestroySelf
trigger1 = Root,time = 200

;---------------------------------------------------------------------------
; Lotus Flower Strike FX1
[Statedef 24001]
type = A
movetype = I
physics = N
anim = 24001
sprPriority = 9

[state 24001, fadein]
type = trans
trans = addalpha
alpha = 8*(time+1),256
trigger1 = time<32

[State 24001, Trans]
type = Trans
trigger1 = time>31
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 24001, TargetBind]
type = TargetBind
trigger1 = 1
time = 1
pos = 44,-60

[State 24001, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = Noshadow
ignorehitpause = 1

[State 24001, AD]
type = angledraw
trigger1 = time <= 180
scale = 0.5+(time-0)*0.002,0.5+(time-0)*0.002

[State 24001, DestroySelf]
type = DestroySelf
trigger1 = root,time = 200
trigger2 = parent,movetype = H