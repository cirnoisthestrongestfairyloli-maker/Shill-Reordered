;---------------------------------------------------------------------------
; "Meditation"
[Statedef 2000]
type = S
movetype = A
physics = S
velset = 0,0
anim = 2000+1*(var(53)=2)+2*(var(53)>=3)+0*floor(var(57):=0)
ctrl = 0
sprpriority = 1
facep2 = 1

[State 2000, IKEMEN Safeguard];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 40
ignorehitpause = 1

[State 200, PSND]
type = PlaySnd
trigger1 = time=0
value = 2000,0
channel = 0

[State 2000, VS]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

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
movetime = 40
darken = 0

[State 2000, PSND]
type = playsnd
trigger1 = animelemtime(10)=0
value = 2000,10
channel = 1

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(3)=0
helpertype = normal
name = "Sword"
id = 22000
stateno = 22000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 40
supermovetime = 40

[State -2, Spirit Gauge Decrease]
type = varadd
triggerall = !movecontact
triggerall = var(50)>0
trigger1 = animelemtime(11)=0
trigger2 = animelemtime(12)=0
trigger3 = animelemtime(13)=0
trigger4 = animelemtime(14)=0
trigger5 = animelemtime(15)=0
trigger6 = animelemtime(16)=0
var(50) = -50

[State 200, 1]
type = Movehitreset
trigger1 = animelemtime(11)=0
trigger2 = animelemtime(12)=0
trigger3 = animelemtime(13)=0
trigger4 = animelemtime(14)=0
trigger5 = animelemtime(15)=0

[State 200, 1]
type = HitDef
triggerall = !movecontact && !movereversed
trigger1 = animelemtime(10)>=0 && animelemtime(11)<0
trigger2 = animelemtime(11)>=0 && animelemtime(12)<0
trigger3 = animelemtime(12)>=0 && animelemtime(13)<0
trigger4 = animelemtime(13)>=0 && animelemtime(14)<0
trigger5 = animelemtime(14)>=0 && animelemtime(15)<0
trigger6 = animelemtime(15)>=0 && animelemtime(16)<0
attr = S,HA
damage = ceil((48+4*(var(53)>=4))*(fvar(11)/cond(var(57)=4,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),ceil((7+1*(var(53)>=4))*cond(var(54)>0,0.6,1.0))
animtype = Back
guardflag = H
hitflag = MAFD
priority = 4,Hit
pausetime = 6,8
sparkno = S8025+(random%2)
guard.sparkno = S8030
sparkxy = -10,cond(numenemy,ceil(p2dist y+enemynear,const(size.mid.pos.y)),0)
hitsound = -1;s1,6
guardsound = -1;s2,0
ground.type = High
ground.slidetime = 23+3*(var(42))
ground.hittime = 23+3*(var(42))
air.hittime = 23+3*(var(42))
guard.slidetime = 20
guard.hittime = 20
ground.velocity = -12.5,-6.5
air.type = High
air.velocity = -12.5,-6.5
down.velocity = -12.5,-6.5
getpower = 0,0
givepower = 50,50
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 0
p2facing = 1
ID = 2000

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(2000)
trigger1 = target(2000),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 4;Change index
ignorehitpause = 1
persistent = 0

[State 2000, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 2000
ignorehitpause = 1

[State 2000, PSND]
type = playsnd
trigger1 = movehit=1
value = 1,6
channel = 3
ignorehitpause = 1
persistent = 7

[State 2000, PSND]
type = playsnd
trigger1 = movecontact=1 && !movehit
value = 2,0
channel = 3
ignorehitpause = 1
persistent = 7

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit=1
trigger1 = var(50)<1000
var(50) = 50

[State 200, Damage Dampen]
type = varset
trigger1 = movehit=1
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)

[State 1100, Flag Recovery]
type = statetypeset
trigger1 = animelemtime(16)=0
trigger2 = animelemtime(15)>=1 && animelemtime(16)<0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; 236236x/y/z Slash FX
[Statedef 22000]
type = A
movetype = I
physics = N
juggle = 0
anim = 22000
sprpriority = 5

;[State 621, CA]
;type = changeanim
;trigger1 = root,stateno = 2000
;trigger1 = root,hitpausetime
;trigger1 = var(0)=0
;value = anim
;elem = animelemno(-1)

[State 621, CA]
type = changeanim
trigger1 = animelemtime(82)<0
value = anim
elem = -5+root,animelemtime(1)

[State 21100, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21100, Ass]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21100, BTR]
type = bindtoroot
trigger1 = root,stateno=2000
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
pos = 14,-16

[State 21100, BTR]
type = angleset
trigger1 = root,stateno=2000
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = 10
[State 21100, BTR]
type = bindtoroot
trigger1 = root,stateno=2000
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
pos = 19,-21

[State 21100, BTR]
type = angleset
trigger1 = root,stateno=2000
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = 50
[State 21100, BTR]
type = bindtoroot
trigger1 = root,stateno=2000
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
pos = 33,-47

[State 21100, BTR]
type = angleset
trigger1 = root,stateno=2000
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = 130
[State 21100, BTR]
type = bindtoroot
trigger1 = root,stateno=2000
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
pos = -10,-82

[State 21100, BTR]
type = angleset
trigger1 = root,stateno=2000
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = 155
[State 21100, BTR]
type = bindtoroot
trigger1 = root,stateno=2000
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
pos = -30,-77

[State 21100, BTR]
type = angleset
trigger1 = root,stateno=2000
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = 170
[State 21100, BTR]
type = bindtoroot
trigger1 = root,stateno=2000
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
pos = -39,-70

[State 21100, BTR]
type = angleset
trigger1 = root,stateno=2000
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
value = 0
[State 21100, BTR]
type = bindtoroot
trigger1 = root,stateno=2000
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
pos = 0,3

[State 21100, BTR]
type = varset
trigger1 = root,stateno=2000
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
fvar(0) = 0.1
[State 21100, BTR]
type = bindtoroot
trigger1 = root,stateno=2000
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
pos = 3,8

[State 21100, BTR]
type = bindtoroot
trigger1 = root,stateno=2000
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
pos = 0,2

[State 21100, BTR]
type = bindtoroot
trigger1 = root,stateno=2000
trigger1 = root,animelemtime(12)>=0 && root,animelemtime(13)<0
pos = 0,-1

[State 21100, BTR]
type = varset
trigger1 = root,stateno=2000
trigger1 = root,animelemtime(11)=0; && root,animelemtime(11)<0
fvar(0) = 0.4

[State 21100, BTR]
type = varset
trigger1 = animelemtime(71)=0
fvar(0) = 0.25
[State 21100, BTR]
type = bindtoroot
trigger1 = root,stateno=2000
trigger1 = root,animelemtime(13)>=0 && root,animelemtime(14)<0
pos = 10,-3

[State 21100, BTR]
type = bindtoroot
trigger1 = root,stateno=2000
trigger1 = animelemtime(71)=0
pos = 14,-5

[State 22000, AD]
type = angledraw
trigger1 = 1
scale = 0.5+fvar(0),0.5+fvar(0)
ignorehitpause = 1

[State 22000, Zeeky]
type = destroyself
trigger1 = animtime = 0
trigger2 = root,stateno != 2000

;---------------------------------------------------------------------------
; "Slash of Present"
[Statedef 2100]
type = S
movetype = A
physics = S
velset = 0,0
anim = 2100+1*(var(53)>=4)+0*floor(var(57):=0)
ctrl = 0
sprpriority = 1
facep2 = 1

[State 2000, IKEMEN Safeguard];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 40
ignorehitpause = 1

[State 200, PSND]
type = PlaySnd
trigger1 = time=0
value = 2000,0
channel = 0

[State 2000, VS]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

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
movetime = 40
darken = 0

[State 2100, PA]
type = posadd
trigger1 = animelemtime(8)=0
x = 12

[State 2100, PP]
type = playerpush
trigger1 = var(53)<=3
trigger1 = animelemtime(10)>=0 && animelemtime(12)<0
trigger2 = anim=2101
trigger2 = animelemtime(10)>=0 && animelemtime(14)<0
value = 0
ignorehitpause = 1

[State 2100, STS]
type = statetypeset
trigger1 = animelemtime(8)=0
physics = N
ignorehitpause = 1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(7)=0
trigger2 = anim=2101
trigger2 = animelemtime(11)=0
value = 2100,10
channel = 1

[State 2100, Double Hit]
type = turn
trigger1 = anim=2101
trigger1 = animelemtime(11)=0

[State 2100, VS]
type = velset
trigger1 = anim=2101&&animelemtime(11)=0
x = 0.0

[State 2100, VS]
type = velset
trigger1 = animelemtime(8)=0
trigger2 = anim=2101
trigger2 = animelemtime(12)=0
x = 12.5

[State 0, Explod]
type = Explod
trigger1 = animelemtime(8)=0
trigger2 = anim=2101
trigger2 = animelemtime(11)=0
anim = 7000
ID = 7000
pos = 100,0
postype = p1 ;p2,front,back,left,right
facing = 1
vel = 0,0
removetime = -2
scale = 1,1
sprpriority = 0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(9)=0
trigger2 = anim=2101
trigger2 = animelemtime(11)=0
helpertype = normal
name = "DashFX"
id = 22100
stateno = 22100
pos = 0,-22
postype = p1
ownpal = 1
facing = 1
[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(11)=0
trigger2 = anim=2101
trigger2 = animelemtime(13)=0
helpertype = normal
name = "DashFX"
id = 22101
stateno = 22100
pos = 0,-22
postype = p1
ownpal = 1
facing = 1

[State 2100, NHB]
type = nothitby
trigger1 = animelemtime(8)>=0 && animelemtime(12)<0
trigger2 = anim=2101
trigger2 = animelemtime(8)>=0 && animelemtime(14)<0
value = ,AA,AP
ignorehitpause = 1

[State 2100, MHR]
type = movehitreset
trigger1 = anim=2101
trigger1 = animelemtime(12)=0

[State 200, 1]
type = HitDef
triggerall = !movecontact && !movereversed
trigger1 = animelemtime(10)>=0 && animelemtime(11)<0
trigger2 = anim=2101
trigger2 = animelemtime(12)>=0 && animelemtime(13)<0
attr = S,HA
damage = ceil((220+20*(var(53)=2)+40*(var(53)>=3)-105*(anim=2101))*(fvar(11)/cond(var(57)=5,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),ceil((44+4*(var(53)=2)+8*(var(53)>=3)-24*(anim=2101))*cond(var(54)>0,0.6,1.0));var(53)>=4)
animtype = Back
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 8-4*(anim=2101),8-4*(anim=2101)
sparkno = S8025+(random%2)
guard.sparkno = S8030
sparkxy = -10,cond(numenemy,ceil(p2dist y+enemynear,const(size.mid.pos.y)),0)
hitsound = s2100,11
guardsound = s2,0
ground.type = High
ground.slidetime = 23+3*(var(42))
ground.hittime = 23+3*(var(42))
air.hittime = 23+3*(var(42))
guard.slidetime = 20
guard.hittime = 20
ground.velocity = -0.0,cond(anim=2101&&animelemtime(12)<0,-10.5,-10.5)
air.type = High
air.velocity = -0.0,cond(anim=2101&&animelemtime(12)<0,-10.5,-10.5)
getpower = 0,0
givepower = 300-150*(anim=2101),300-150*(anim=2101)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
p2facing = 1
ID = 2100

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(2100)
trigger1 = target(2100),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 5;Change index
ignorehitpause = 1
persistent = 0

[State 2100, TB]
type = targetbind
trigger1 = anim = 2101
trigger1 = animelemtime(12)<0
trigger1 = movehit
id = 2100
pos = floor(p2dist x),0
ignorehitpause = 1
persistent = 0

[State 2100, TB]
type = targetstate
trigger1 = anim = 2101
trigger1 = animelemtime(12)<0
trigger1 = movehit
id = 2100
value = 2150
ignorehitpause = 1
persistent = 0

[State 2000, Hard Knockdown]
type = TargetState
triggerall = p2statetype=A && movehit && (p2stateno!=[6020,6110])
trigger1 = anim != 2101
trigger2 = anim = 2101 && animelemtime(12)>=0
value = 6020
ID = 2100
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = numenemy
trigger1 = movehit
anim = 22101
ID = 22101
pos = 15+ceil(p2dist x),ceil(p2dist y+enemynear,const(size.mid.pos.y))
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1.5,1.5
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0
[State 0, Explod]
type = Explod
trigger1 = numenemy
trigger1 = anim=2101 && animelemtime(12)>=0
trigger1 = movehit
anim = 22101
ID = 22101
pos = 15+ceil(p2dist x),ceil(p2dist y+enemynear,const(size.mid.pos.y))
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1.5,1.5
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State -2, Spirit Gauge Decrease]
type = varadd
triggerall = !movecontact
triggerall = var(50)>0
trigger1 = anim!=2101
trigger1 = animelemtime(11)=0
trigger2 = anim=2101
trigger2 = animelemtime(13)=0
var(50) = -300

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
var(50) = 300
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = animelemtime(10)>=0 && animelemtime(11)<1
trigger1 = movehit
fvar(10) = fvar(10)*cond(anim=2101,0.84,0.70)*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = anim=2101
trigger1 = animelemtime(12)>=0 && animelemtime(13)<1
trigger1 = movehit
fvar(10) = fvar(10)*0.84*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 1100, Flag Recovery]
type = statetypeset
trigger1 = anim!=2101
trigger1 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1100, Flag Recovery]
type = statetypeset
trigger1 = anim!=2101
trigger1 = animelemtime(11)=0
trigger2 = anim=2101
trigger2 = animelemtime(13)=0
movetype = I
physics = S
ignorehitpause = 1
persistent = 0

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; 214214x/y/z Slash FX
[Statedef 22100]
type = A
movetype = I
physics = N
juggle = 0
anim = 22100
sprpriority = 5

[State 22100, BTR]
type = bindtoroot
trigger1 = root,stateno = 2100
pos = 0,-22
ignorehitpause = 1

[State 22100, VS]
type = varset
trigger1 = time = 0
trigger1 = ishelper(22100)
fvar(0) = 1.0

[State 22100, VA]
type = varadd
trigger1 = fvar(0)>0
trigger1 = ishelper(22100)
fvar(0) = -(1.0/3.0)

[State 22100, VS]
type = varset
trigger1 = time = 0
trigger1 = ishelper(22101)
fvar(0) = 0.0

[State 22100, VA]
type = varadd
trigger1 = fvar(0)<1.0
trigger1 = ishelper(22101)
fvar(0) = (1.0/4.0)

[State 22100, Scaleme]
type = angledraw
trigger1 = 1
scale = 1.0,fvar(0)/1.0
ignorehitpause = 1

[State 22100, Zeeky]
type = destroyself
trigger1 = root,stateno != 2100
trigger2 = ishelper(22100)
trigger2 = time>=3
trigger3 = ishelper(22101)
trigger3 = time>=4

;---------------------------------------------------------------------------
; "Stun Hit"
[Statedef 2150]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0
facep2 = 1

[State 4050, CA2]
type = changeanim2
trigger1 = time = 0
value = 2150

[State 4050, PS]
type = posset
trigger1 = time = 0
y = 0

[State 2150, SS]
type = selfstate
trigger1 = time>=26
value = 5000

;---------------------------------------------------------------------------
; "6-Root Cleansing"
[Statedef 4000]
type = S
movetype = A
physics = S
velset = 0,0
anim = 4000
ctrl = 0
sprpriority = 1
facep2 = 1

[State 800, CS]
type = changestate
trigger1 = numtarget(4000)
trigger1 = movehit
value = 4001
ignorehitpause = 1
persistent = 0

[State 2000, IKEMEN Safeguard];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = animelemtime(5)<0;time = 0
value = SCA,AA,AP,AT
time = 1;40
ignorehitpause = 1

[State 200, PSND]
type = PlaySnd
trigger1 = time=0
value = 2000,0
channel = 0

[State 2000, VS]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

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
pausemovetime = 40
supermovetime = 40

[State 4000, PSND]
type = playsnd
trigger1 = time = 0
value = S4,2

[State 4000, PA]
type = poweradd
trigger1 = time = 0
value = -3000

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 1;0
time = 40
anim = -1
sound = -1;S4,2
p2defmul = 1
poweradd = 0;-3000
unhittable = 1
movetime = 40
darken = 0

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 1000,10
channel = 1

[State 800, IDDQD]
type = HitDef
trigger1 = animelemno(0)=4
trigger1 = var(30)=0 ;Throw Limited
attr = S,HT
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
id = 4000
numhits = 0

[State 1000, STS]
type = statetypeset
trigger1 = animelemtime(5)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = animelemtime(5)=0
trigger1 = var(50)>0
var(50) = -400

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; "6-Root Cleansing"
[Statedef 4001]
type = S
movetype = A
physics = S
velset = 0,0
anim = 4001
ctrl = 0
sprpriority = 1
facep2 = 0
hitdefpersist=1

[State 4001, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 1000,11
channel = 1

[State 4001, TS]
type = targetstate
trigger1 = animelemtime(1)=0
value = 4050
;id = 4000

[State 0, Explod]
type = Explod
trigger1 = numenemy
trigger1 = animelemtime(3)=0
anim = 8015+(random%2)
ID = 8000
pos = 15+ceil(p2dist x-enemynear,const(size.ground.front)),ceil(p2dist y+enemynear,const(size.mid.pos.y))
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 4001, PSND]
type = playsnd
trigger1 = animelemtime(15)=0
value = 4000,10
channel = 1

[State Pos]
type = Posadd
trigger1 = time = [44,63]
x = floor((p2dist x-20)/(20-(time-44)))

[State Pos]
type = Posadd
trigger1 = time > 63
x = floor(p2dist x-20)

[State 4000, Effect]
type = helper
trigger1 = animelemtime(15)=0
helpertype = normal
name = "Clone"
ID = 24000
pos = 0,0
postype = p1
stateno = 24000
ownpal = 0
facing = 1
[State 4000, Effect]
type = helper
trigger1 = animelemtime(15)=0
helpertype = normal
name = "Clone"
ID = 24001
pos = 0,0
postype = p1
stateno = 24000
ownpal = 0
facing = 1
[State 4000, Effect]
type = helper
trigger1 = animelemtime(15)=0
helpertype = normal
name = "Clone"
ID = 24002
pos = 0,0
postype = p1
stateno = 24000
ownpal = 0
facing = 1
[State 4000, Effect]
type = helper
trigger1 = animelemtime(15)=0
helpertype = normal
name = "Clone"
ID = 24003
pos = 0,0
postype = p1
stateno = 24000
ownpal = 0
facing = 1
[State 4000, Effect]
type = helper
trigger1 = animelemtime(15)=0
helpertype = normal
name = "Clone"
ID = 24004
pos = 0,0
postype = p1
stateno = 24000
ownpal = 0
facing = 1

[State 4000, Effect]
type = helper
trigger1 = time = 143
helpertype = normal
name = "Lotus"
ID = 24010
pos = 0,-22
postype = p1
stateno = 24010
ownpal = 1
facing = 1

[State 0, Explod]
type = Explod
trigger1 = numenemy
trigger1 = time = 143
anim = 8025+(random%2)
ID = 8000
pos = 15+ceil(p2dist x-enemynear,const(size.ground.front)),ceil(p2dist y+enemynear,const(size.mid.pos.y))
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 4000, PSND]
type = playsnd
trigger1 = time = 143
value = 1,6

[State 4000, TLA]
type = targetlifeadd
trigger1 = time = 143
value = -250

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 4002

;---------------------------------------------------------------------------
; "6-Root Cleansing"
[Statedef 4002]
type = A
movetype = A
physics = N
velset = 0,25
anim = 4002
ctrl = 0
sprpriority = 1
facep2 = 0
hitdefpersist=1

[State 4002, PS]
type = posset
trigger1 = time = 0
y = -300

[State 4002, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 4003

;---------------------------------------------------------------------------
; "6-Root Cleansing"
[Statedef 4003]
type = S
movetype = A
physics = S
velset = 0,0
anim = 4003
ctrl = 0
sprpriority = 1
facep2 = 0
hitdefpersist=1

[State 4003, Shake Me Up (Inside)]
type = EnvShake
trigger1 = time <= 35
persistent = 5
time = 5
ampl = -10+ceil(time*0.25)
freq = 60
phase = 120

[State 4003, PS]
type = posset
trigger1 = time = 0
y = 0

[State 0, Explod]
type = Explod
trigger1 = numenemy
trigger1 = time = 0
anim = 8025+(random%2)
ID = 8000
pos = 15+ceil(p2dist x-enemynear,const(size.ground.front)),ceil(p2dist y+enemynear,const(size.mid.pos.y))
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 4000, Effect]
type = helper
trigger1 = time=0
helpertype = normal
name = "Shockwave"
ID = 24011
pos = 0,0
postype = p1
stateno = 24011
ownpal = 0
facing = 1

[State 4003, PSND]
type = playsnd
trigger1 = time = 0
value = 4000,11

[State 4003, PSND]
type = playsnd
trigger1 = time = 0
value = 1,3

[State 4000, TLA]
type = targetlifeadd
trigger1 = time = 0
value = -140-90*(var(53)=2)-180*(var(53)=3)-260*(var(53)>=4)+50

[State 4000, TLA]
type = targetpoweradd
trigger1 = time = 0
value = 500+50*(var(53)=2)+100*(var(53)>=3)

[State -2, Spirit Gauge Decrease]
type = varadd
;trigger1 = animelemtime(5)=0
trigger1 = time = 0
trigger1 = var(50)<1000
var(50) = 400
;ignorehitpause = 1
;persistent = 0

[State 4001, TS]
type = targetstate
trigger1 = time=0
value = 4051

[State 200, Damage Dampen]
type = varset
trigger1 = time=0
fvar(10) = fvar(10)*0.4*cond(fvar(10)>=1.0,(fvar(30)),1.0)
;ignorehitpause = 1
;persistent = 0

[State 1100, Flag Recovery]
type = statetypeset
trigger1 = animelemtime(2)=0
movetype = I
ignorehitpause = 1
persistent = 0

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; "6-Root Cleansing"
[Statedef 4050]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0
facep2 = 1

[State 4050, CA2]
type = changeanim2
trigger1 = time = 0
value = 4050

[State 4050, PS]
type = posset
trigger1 = time = 0
y = 0

;---------------------------------------------------------------------------
; "6-Root Cleansing"
[Statedef 4051]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0
facep2 = 0

[State 0, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 1
xvel = -0.5
yvel = -4.5
;ignorehitpause = 
;persistent = 

[state 4250, CA2]
type = changeanim2
trigger1 = time = 0
value = 853

[State 810, Bind]
type = velset
trigger1 = animelemtime(1)=0
x = -1.0
y = -6.5

[State 807, Accel]
type = veladd ;Gravity
trigger1 = animelemtime(1)>0
y = 0.5

[State 807, hitground]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 854

;---------------------------------------------------------------------------
; "6-Root Cleansing"
[Statedef 24000]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 24000
sprpriority = 0
facep2 = 0

[State 24000, VS]
type = null
triggerall = time = 0
trigger1 = ishelper(24000)
trigger1 = (fvar(1):=0.0)||1
trigger2 = ishelper(24001)
trigger2 = (fvar(1):=72.0)||1
trigger3 = ishelper(24002)
trigger3 = (fvar(1):=144.0)||1
trigger4 = ishelper(24003)
trigger4 = (fvar(1):=216.0)||1
trigger5 = ishelper(24004)
trigger5 = (fvar(1):=288.0)||1

[State 24000, VA]
type = varadd
trigger1 = time = [1,59]
trigger1 = (fvar(2):=fvar(2)+0.5)||1
trigger1 = (fvar(0):=fvar(0)+sin((30+time*2)*pi/180)*3.1)||1
fvar(1) = fvar(2)

[State 24000, VA]
type = Varadd
trigger1 = time = [60,85]
trigger1 = (fvar(2):=fvar(2)*0.8725)||1
fvar(1) = ifelse(time < 85, fvar(2),0)

[State 24000, T]
type = turn
trigger1 = time < 90
trigger1 = facing = 1
trigger1 = floor(fvar(1))%360 = [0,179]
trigger2 = time < 90
trigger2 = facing = -1
trigger2 = floor(fvar(1))%360 = [180,359]
trigger3 = time = 90
trigger3 = p2dist x < 0

[State 24000, SPR]
type = sprpriority
trigger1 = time < 97
value = ifelse(floor(fvar(1))%360 < 180, 5,-5)

[State 24000, SPR]
type = sprpriority
trigger1 = time = 97
value = ifelse(floor(fvar(1))%360 < 180, -5,5)

[State 24000, BTR]
type = bindtoroot
trigger1 = time<85
pos = ceil(fvar(0)*cos(fvar(1)*pi/180.0)),ceil(fvar(0)*sin(fvar(1)*pi/180.0)/6.0)

[State 24000, CA]
type = Changeanim
trigger1 = time = 60
value = 24001

[State 24000, VS]
type = Varset
trigger1 = time = 0
fvar(3) = 34

[State 24000, VS]
type = Varset
trigger1 = time = [92,111]
fvar(3) = fvar(3)*0.9

[State 24000, VS]
type = Varadd
trigger1 = time = [91,111]
fvar(4) = fvar(3)

[State 24000, VS]
type = Varset
trigger1 = time = 112
fvar(3) = 0

[State 24000, BTR]
type = BindToParent
trigger1 = time = [90,111]
pos = ceil((fvar(0)-fvar(4))*cos(fvar(1)*pi/180.0)),ceil((fvar(0)-fvar(4))*sin(fvar(1)*pi/180.0)/6.0)

[State 24000, Alpha]
type = trans
trigger1 = time = [112,136]
trans = addalpha
alpha = 256-floor(256.0*(time-112)/24.0),floor(256.0*(time-112)/24.0)
ignorehitpause = 1

[State 24000, CA]
type = destroyself
trigger1 = anim = 24001
trigger1 = animtime=0

;---------------------------------------------------------------------------
; "6-Root Cleansing"
[Statedef 24010]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 1998
sprpriority = 0
facep2 = 0

[State 24010, VS]
type = Varset
trigger1 = time = 0
fvar(0) = 0.4

[State 24010, VS]
type = Varadd
trigger1 = time < 13
fvar(0) = 0.6/13.0

[State 24010, VS]
type = Varset
trigger1 = time = 13
fvar(0) = 1.0

[State 24010, VS]
type = Varadd
trigger1 = time > 35
fvar(0) = 0.015

[State 24010, VS]
type = Varset
trigger1 = 1
fvar(1) = fvar(0)*0.925

[State 24010, VS]
type = Varset
trigger1 = 1
fvar(2) = fvar(0)*0.33

[State 0, Explod]
type = Explod
trigger1 = 1
anim = 24010
ID = 24010
pos = floor(109.0*fvar(1)*cos(270.0*pi/180.0)),floor(109.0*fvar(2)*sin(270.0*pi/180.0))
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = 1
pausemovetime = 0
scale = fvar(1),fvar(2)
sprpriority = 5
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = 1
anim = 24011
ID = 24011
pos = floor(109.0*fvar(1)*cos(198.0*pi/180.0)),floor(109.0*fvar(2)*sin(198.0*pi/180.0))
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = 1
pausemovetime = 0
scale = fvar(1),fvar(2)
sprpriority = 5
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = 1
anim = 24012
ID = 24012
pos = floor(109.0*fvar(1)*cos(126.0*pi/180.0)),floor(109.0*fvar(2)*sin(126.0*pi/180.0))
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = 1
pausemovetime = 0
scale = fvar(1),fvar(2)
sprpriority = 5
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = 1
anim = 24013
ID = 24013
pos = floor(109.0*fvar(1)*cos(54.0*pi/180.0)),floor(109.0*fvar(2)*sin(54.0*pi/180.0))
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = 1
pausemovetime = 0
scale = fvar(1),fvar(2)
sprpriority = 5
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = 1
anim = 24014
ID = 24014
pos = floor(109.0*fvar(1)*cos(342.0*pi/180.0)),floor(109.0*fvar(2)*sin(342.0*pi/180.0))
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = 1
pausemovetime = 0
scale = fvar(1),fvar(2)
sprpriority = 5
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time=[1,26]
anim = 24015
ID = 24015
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = 1
pausemovetime = 0
scale = (0.525*time),(0.2*time)
sprpriority = 5
ownpal = 0
removeongethit = 0

;[State 24010, PFX]
;type = Palfx
;trigger1 = time = [14,26]
;time = 2
;add = 0,0,0
;mul = 256-floor(256.0*(time-14)/12.0),256-floor(256.0*(time-14)/12.0),256-floor(256.0*(time-14)/12.0)
;invertall = 0
;color = 256
;ignorehitpause = 1

[State 0, Explod]
type = modifyExplod
trigger1 = time = [14,26]
ID = 24015
trans = addalpha
alpha = 256-floor(256.0*(time-14)/12.0),256
;persistent =
;supermove = 0
;pausemove = 0

[State 0, Explod]
type = Explod
trigger1 = time>35
anim = 24015
ID = 24015
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = 1
pausemovetime = 0
scale = (0.5+(time-35)*0.075)*0.925,(0.5+(time-35)*0.075)*0.33
sprpriority = 5
ownpal = 0
removeongethit = 0

[State 24010, PFX]
type = Palfx
trigger1 = time >= 36
time = 2
add = 0,0,0
mul = 256-floor(256.0*(time-36)/53.0),256-floor(256.0*(time-36)/53.0),256-floor(256.0*(time-36)/53.0)
invertall = 0
color = 256
ignorehitpause = 1

[State 21400, REX]
type = RemoveExplod
trigger1 = time >= 88

[State 24010, Zeeky]
type = destroyself
trigger1 = time >= 88

;---------------------------------------------------------------------------
; "6-Root Cleansing"
[Statedef 24011]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 1998
sprpriority = 0
facep2 = 0

[State 0, Explod]
type = Explod
trigger1 = time=0
anim = 24016
ID = 24016
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = 43
pausemovetime = 0
scale = 2.0,1.0
sprpriority = 5
ownpal = 1
removeongethit = 0

[State 24011, MEX]
type = modifyexplod
trigger1 = 1
id = 24016
scale = 2.0+(0.075*time),1.0+(0.0375*time)
trans = addalpha
alpha = 256-floor(256.0*time/43.0),256

[State 24011, Zeeky]
type = destroyself
trigger1 = time>=43

;---------------------------------------------------------------------------
; "Secret of Life & Death"
[Statedef 4100]
type = S
movetype = I
physics = S
velset = 0,0
anim = 4100
ctrl = 0
sprpriority = 1
facep2 = 1

[State 2000, IKEMEN Safeguard];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 64
ignorehitpause = 1

[State 4100, TimerSet]
type = varset
trigger1 = time = 0
var(10) = 1500+ifelse(var(50)>=950,1500,ifelse(var(50)>=700,750,0)) ;AR: max spirit = 10 s

[State 4100, AR Spirit spend]
type = varadd
trigger1 = time = 0
var(50) = -950

[State 4100, VS]
type = varset
trigger1 = time =0
trigger1 = var(10)>3000
var(10) = 3000

[State 200, PSND]
type = PlaySnd
trigger1 = time=0
value = 2000,0
channel = 0

[State 2000, VS]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

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
pausemovetime = 64;40
supermovetime = 64;40

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
pausemovetime = 64;40
supermovetime = 64;40

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 64;40
anim = -1
sound = S4,0+1*(var(10)=[2000,2999])+2*(var(10)>=3000)
p2defmul = 1
poweradd = 0
unhittable = 1
movetime = 64;40
darken = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(14)=0
value = 4100,10

[State 4100, VS]
type = varset
trigger1 = animelemtime(14)=0
var(54) = 240+cond((var(10)<=1500),0,floor(((var(10)-1500)*360.0/1500.0)));4~10 sec

[State 0, AfterImage]
type = AfterImage
trigger1 = animelemtime(14)=0
time = -1
length = 12
palcolor = 0
palbright = 0,0,0
paladd = 0,0,0
palmul = 1.0,1.0,1.0
timegap = 1
framegap = 11
trans = add1

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; "Matsuyoi-Reflecting Satellite Slash"
[Statedef 4200]
type = S
movetype = A
physics = S
velset = 0,0
anim = 4200
ctrl = 0
sprpriority = 1
facep2 = 1

[State 2000, IKEMEN Safeguard];IKEMEN ignores unhittable=1 in the superpause for some dumb fucking reason
type = nothitby
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 70
ignorehitpause = 1

[State 200, PSND]
type = PlaySnd
trigger1 = time=0
value = 2000,0
channel = 0

[State 2000, VS]
type = varset
trigger1 = time=0
trigger1 = fvar(10)<1.0
fvar(10)=fvar(10)*0.925

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
pausemovetime = 70;40
supermovetime = 70;40

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
pausemovetime = 70;40
supermovetime = 70;40

[state 1010, Za Warudo!]
type = SuperPause
trigger1 = time = 0
time = 70;40
anim = -1
sound = S4,0+2
p2defmul = 1
poweradd = -5000
unhittable = 1
movetime = 70;40
darken = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(1)=0
value = 4100,10

[State 2100, PA]
type = posadd
trigger1 = animelemtime(23)=0
x = 12

[State 2100, PP]
type = playerpush
trigger1 = animelemtime(25)>=0 && animelemtime(27)<0
value = 0
ignorehitpause = 1

[State 2100, STS]
type = statetypeset
trigger1 = animelemtime(23)=0
physics = N
ignorehitpause = 1

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(22)=0
value = 2100,10
channel = 1

[State 2100, VS]
type = velset
trigger1 = animelemtime(23)=0
x = 12.5

[State 0, Explod]
type = Explod
trigger1 = animelemtime(23)=0
anim = 7000
ID = 7000
pos = 100,0
postype = p1 ;p2,front,back,left,right
facing = 1
vel = 0,0
removetime = -2
scale = 1,1
sprpriority = 0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(24)=0
helpertype = normal
name = "DashFX"
id = 22100
stateno = 22100
pos = 0,-22
postype = p1
ownpal = 1
facing = 1
[State 2000, Spellcard Effect]
type = helper
trigger1 = animelemtime(26)=0
helpertype = normal
name = "DashFX"
id = 22101
stateno = 22100
pos = 0,-22
postype = p1
ownpal = 1
facing = 1

[State 2100, NHB]
type = nothitby
trigger1 = animelemtime(23)>=0 && animelemtime(27)<0
value = ,AA,AP
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = animelemtime(25)>=0 && animelemtime(26)<0
trigger1 = !movecontact && !movereversed
attr = S,HA
damage = ceil(100*ifelse(var(42),1.25,1.0)),116
animtype = Back
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 8,8
kill = 0
guard.kill = 1
sparkno = S8025+(random%2)
guard.sparkno = S8030
sparkxy = -10,cond(numenemy,ceil(p2dist y+enemynear,const(size.mid.pos.y)),0)
hitsound = s4200,10
guardsound = s2,0
ground.type = High
ground.slidetime = 23+3*(var(42))
ground.hittime = 23+3*(var(42))
air.hittime = 23+3*(var(42))
guard.slidetime = 20
guard.hittime = 20
ground.velocity = -0.0,-10.5
air.type = High
air.velocity = -0.0,-10.5
getpower = 0,0
givepower = 100,600
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
p2facing = 1
ID = 4200

[State 0, Explod]
type = Explod
trigger1 = numenemy
trigger1 = movehit
anim = 22101
ID = 22101
pos = 15+ceil(p2dist x),ceil(p2dist y+enemynear,const(size.mid.pos.y))
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1.5,1.5
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State -2, Spirit Gauge Decrease]
type = varadd
triggerall = !movecontact
triggerall = var(50)>0
trigger1 = animelemtime(26)=0
var(50) = -400

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
var(50) = 1000
ignorehitpause = 1
persistent = 0

[State 4200, CS]
type = changestate
trigger1 = movehit
trigger1 = numenemy
trigger1 = numtarget(4200)
trigger1 = target(4200),ishelper=0
value = 4201

[State 1100, Flag Recovery]
type = statetypeset
trigger1 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 1100, Flag Recovery]
type = statetypeset
trigger1 = animelemtime(26)=0
movetype = I
physics = S
ignorehitpause = 1
persistent = 0

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; "Matsuyoi-Reflecting Satellite Slash"
[Statedef 4201]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1998
ctrl = 0
sprpriority = 1
facep2 = 0

[State 2100, TB]
type = targetbind
trigger1 = time = 0
id = 4200
pos = 0,0
ignorehitpause = 1
persistent = 0
[State 2100, TB]
type = targetstate
trigger1 = time = 0
id = 4200
value = 4050
ignorehitpause = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 24200
ID = 24200
pos = floor(gamewidth/2.0),floor(gameheight/2.0)
postype = left
facing = 1
vfacing = 1
vel = 0,0
random = 0,0
removetime = -2
bindtime = -1
pausemovetime = 0
scale = 0.5,0.75
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 24201
ID = 24201
pos = 160,80;120
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0.0,0.0
accel = 0,0
random = 0,0
removetime = 204
pausemovetime = 0
scale = 0.25,0.25
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 4201, PSND]
type = playsnd
trigger1 = time = 8 || time = 18 || time = 28
trigger2 = time = 48 || time = 60 || time = 72
trigger3 = time = 92 || time = 100 || time = 112 || time = 124 
trigger4 = time = 144 || time = 150 || time = 156 || time = 160
trigger5 = time = 166 || time = 170 || time = 176 || time = 180
value = 4200,10
channel = 3

[State 4201, PSND]
type = hitadd
trigger1 = time = 8 || time = 18 || time = 28
trigger2 = time = 48 || time = 60 || time = 72
trigger3 = time = 92 || time = 100 || time = 112 || time = 124 
trigger4 = time = 144 || time = 150 || time = 156 || time = 160
trigger5 = time = 166 || time = 170 || time = 176 || time = 180
value = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 8 || time = 18 || time = 28
trigger2 = time = 48 || time = 60 || time = 72
trigger3 = time = 92 || time = 100 || time = 112 || time = 124 
trigger4 = time = 144 || time = 150 || time = 156 || time = 160
trigger5 = time = 166 || time = 170 || time = 176 || time = 180
time = 8
freq = 200
ampl = -4

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 8 || time = 18 || time = 28
trigger2 = time = 48 || time = 60 || time = 72
trigger3 = time = 92 || time = 100 || time = 112 || time = 124 
trigger4 = time = 144 || time = 150 || time = 156 || time = 160
trigger5 = time = 166 || time = 170 || time = 176 || time = 180
helpertype = normal
name = "SlashFX"
id = 24200
stateno = 24200
pos = 25-floor(51.0*random/1000.0),-50-floor(51.0*random/1000.0)
postype = p1
ownpal = 1
facing = 1

[State 0, Explod]
type = Explod
trigger1 = time = 8 || time = 18 || time = 28
trigger2 = time = 48 || time = 60 || time = 72
trigger3 = time = 92 || time = 100 || time = 112 || time = 124 
trigger4 = time = 144 || time = 150 || time = 156 || time = 160
trigger5 = time = 166 || time = 170 || time = 176 || time = 180
anim = 8015+(random%2)
ID = 8000
pos = 0,-50
postype = p2 ;p2,front,back,left,right
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 0,0
random = 40,40
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 8 || time = 18 || time = 28
trigger2 = time = 48 || time = 60 || time = 72
trigger3 = time = 92 || time = 100 || time = 112 || time = 124 
trigger4 = time = 144 || time = 150 || time = 156 || time = 160
trigger5 = time = 166 || time = 170 || time = 176 || time = 180
value = -10
ID = 4200
kill = 0
absolute = 0 

[State 1000, Air CS]
type = changestate
trigger1 = time = 205
value = 4202
ctrl = 0

;---------------------------------------------------------------------------
; "Matsuyoi-Reflecting Satellite Slash"
[Statedef 4202]
type = S
movetype = A
physics = S
velset = 0,0
anim = 4201
ctrl = 0
sprpriority = 1
facep2 = 0

[State 0, Width]
type = Width
trigger1 = 1
edge = 50,0
player = 0,0
ignorehitpause = 1

[State 4202, PA]
type = posadd
trigger1 = time = 0
x = 10

[State 4202, Timer Freeze]
type = assertspecial
trigger1 = animelemtime(3)<0
flag = timerfreeze
ignorehitpause = 1

[State 2100, TB]
type = targetbind
trigger1 = time = 0
id = 4200
pos = -10,0
ignorehitpause = 1
persistent = 0
[State 4202, TF]
type = targetfacing
trigger1 = time = 0
value = -1 
[State 2100, TB]
type = targetstate
trigger1 = time = 0
id = 4200
value = 4250
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = time = 0
fvar(10) = fvar(10)*0.2*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 4202, PA]
type = velset
trigger1 = time = 0
x = 15.0

[State 2000, Spellcard Effect]
type = helper
trigger1 = time=0
helpertype = normal
name = "Petals"
id = 24210
stateno = 24210
pos = 0,0
postype = p1
ownpal = 1
facing = -1

[State 4201, PSND]
type = playsnd
trigger1 = time = 0
value = 4200,10
channel = 3
[State 4201, PSND]
type = playsnd
trigger1 = time = 0
value = 4000,11
channel = 4
[State 4201, PSND]
type = playsnd
trigger1 = time = 0
value = 1,3
channel = 5

[State 4201, PSND]
type = hitadd
trigger1 = time = 0
value = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 60
freq = 120
ampl = -16

[State 0, Explod]
type = Explod
trigger1 = numenemy
trigger1 = time = 0
anim = 22101
ID = 22101
pos = 15+ceil(p2dist x),ceil(p2dist y+enemynear,const(size.mid.pos.y))
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1.5,1.5
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8025+(random%2)
ID = 8000
pos = 0,-50
postype = p2 ;p2,front,back,left,right
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 0
value = -300
ID = 4200
kill = 1
absolute = 0 

[State 0, TargetLifeAdd]
type = TargetpowerAdd
trigger1 = time = 0
value = 500
ID = 4200

[State 4202, STS]
type = statetypeset
trigger1 = time = 10
movetype = I

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; Matsuyoi Slash FX
[Statedef 24200]
type = A
movetype = I
physics = N
juggle = 0
anim = 22101
sprpriority = 5

;[State 22100, BTR]
;type = bindtoroot
;trigger1 = root,stateno = 4201
;pos = 0,-50
;ignorehitpause = 1

[State 22100, VS]
type = varset
trigger1 = time = 0
var(0) = floor(360.0*random/1000.0)

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Youmu"
id = 24201
stateno = 24201
pos = 0,0
postype = p1
ownpal = 1
facing = 1

[State 22100, Scaleme]
type = angledraw
trigger1 = 1
value = var(0)
scale = 1.5,1.5
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = time>=0
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 24200, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 22100, Zeeky]
type = destroyself
trigger1 = animtime=0

;--------------------------
; Matsuyoi Youmu Afterimage
[Statedef 24201]
type = A
movetype = I
physics = N
juggle  = 0
anim = 22100
sprpriority = 5

[State 0, PalFX]
type = null;PalFX
trigger1 = 1
time = -1
add = 0,0,0
mul = 64,64,64
invertall = 0
color = 64
ignorehitpause = 1
;persistent = 

[State 22100, VS]
type = varset
trigger1 = time = 0
var(0) = parent,var(0)

[State 0, VelSet]
type = VelSet
trigger1 = time=0
x = 25.0*cos(var(0)*pi/180.0)
y = -25.0*sin(var(0)*pi/180.0)

[State 0, VelMul]
type = VelMul
trigger1 = time
x = 0.975
y = 0.975
;ignorehitpause = 
;persistent = 

[State 22100, Scaleme]
type = angledraw
trigger1 = 1
value = var(0)
scale = 1.0,1.0*cond((var(0)=[90,270]),-1,1)
ignorehitpause = 1

[State 24200, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 22100, Zeeky]
type = destroyself
trigger1 = time>=10

;---------------------------------------------------------------------------
; Petal Spawner
[Statedef 24210]
type = A
movetype = I
physics = N
ctrl = 0
anim = 1998
poweradd = 0
sprpriority = 1

[State 24000, BTR]
type = bindtoroot
trigger1 = 1
pos = 0,0
ignorehitpause = 1

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24000, VA]
type = varadd
trigger1 = time < 16 
trigger1 = var(1)<256
var(1)=16
ignorehitpause = 1

[State 24000, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = var(1),256
ignorehitpause = 1

[State 24100, VS]
type = null;varset
triggerall = root,stateno = 4202
trigger1 = time = 0
trigger1 = (var(0):=0)||1
trigger2 = root,animelemtime(3)=0
trigger2 = (var(0):=1)||1
trigger3 = root,animelemtime(30)=0
trigger3 = (var(0):=2)||1
trigger4 = root,animelemtime(39)=0
trigger4 = (var(0):=3)||1

[State 22001, Petals]
type = explod
trigger1 = var(0)!=2
trigger1 = time%12 = 0
trigger1 = (fvar(1):=20.0+floor(20.0*random/1000.0))||1
trigger1 = (fvar(2):=0.1*(3.0+floor(7.0*random/1000.0)))||1
anim = 24210+(random%10)
ID = 22010
pos = -90+floor(120.0*random/1000.0),0
postype = p1 ;p2,front,back,left,right
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 6.0*cos(fvar(1)*pi/180.0),-6.0*sin(fvar(1)*pi/180.0)
scale = fvar(2),fvar(2)
sprpriority = 5
ownpal = 0

[State 22001, Petals]
type = explod
trigger1 = var(0)=2
trigger1 = time%4 = 0
trigger1 = (fvar(1):=40.0+floor(10.0*random/1000.0))||1
trigger1 = (fvar(2):=0.1*(3.0+floor(12.0*random/1000.0)))||1
anim = 24210+(random%10)
ID = 22010
pos = -90+floor(120.0*random/1000.0),0
postype = p1 ;p2,front,back,left,right
facing = 1-2*(random%2)
vfacing = 1-2*(random%2)
vel = 7.0*cos(fvar(1)*pi/180.0),-7.0*sin(fvar(1)*pi/180.0)
scale = fvar(2),fvar(2)
sprpriority = 5
ownpal = 0

[State 24100, CS]
type = changestate
trigger1 = root,stateno != [4200,4202]
trigger2 = root,movetype = H
trigger3 = var(0)=3 && time>=150
trigger4 = time>=60
value = 24211

;---------------------------------------------------------------------------
; Petal Spawner
[Statedef 24211]
type = A
movetype = I
physics = N
ctrl = 0
poweradd = 0
sprpriority = 1

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24100, AD]
type = angledraw
trigger1 = time
scale = 1.0,1.0
ignorehitpause = 1

[State 24000, VA]
type = varadd 
trigger1 = var(1)>0
var(1)=-25
ignorehitpause = 1

[State 24101, Zeeky]
type = destroyself
trigger1 = time >= 10
trigger2 = var(1)<=0

;---------------------------------------------------------------------------
; "6-Root Cleansing"
[Statedef 4250]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0
facep2 = 0

[State 0, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 1
xvel = -0.5
yvel = -4.5
;ignorehitpause = 
;persistent = 

[state 4250, CA2]
type = changeanim2
trigger1 = time = 0
value = 853

[State 810, Bind]
type = velset
trigger1 = animelemtime(1)=0
x = -10.0
y = -10.5

[State 807, Accel]
type = veladd ;Gravity
trigger1 = animelemtime(1)>0
y = 0.5

[State 807, hitground]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 854