;---------------------------------------------------------------------------
; Insightful Sword
[Statedef 1000]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1000+10*(var(10)=2)
poweradd = 15
ctrl = 0
sprpriority = 1
juggle = 0
facep2 = 1

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(2)=0
value = 1000,10
channel = 1

[State 0, ReversalDef]
type = ReversalDef
trigger1 = animelemtime(2)>=0 && animelemtime(3)<0
reversal.attr = SCA,NA,SA,HA
pausetime = 0,0
sparkno = -1
p1stateno = 1001

[State 1000, CS]
type = changestate
trigger1 = movecontact
value = 1001

[State 1000, STS]
type = statetypeset
trigger1 = animelemtime(3)=0
movetype = I
ignorehitpause = 1
persistent = 0

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Insightful Sword - Counter State
[Statedef 1001]
type = S
movetype = A
physics = S
;velset = 0,0
anim = 1015
ctrl = 0
sprpriority = 1
facep2 = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(1)=0
value = 1000,11

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 1000,12

[State 1001, Unblockable]
type = assertspecial
trigger1 = animelemtime(5)<0
flag = unguardable
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = animelemtime(4)>=0 && animelemtime(5)<0
trigger1 = !movecontact && !movereversed
attr = S,SA
damage = ceil(140.0*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(28*cond(var(54)>0,0.6,1.0))
animtype = Back
guardflag =
hitflag = MAF
priority = 4,Hit
pausetime = 8,8+3*(var(54)>0)
sparkno = S8025+(random%2)
guard.sparkno = S8030
sparkxy = -15,cond(numenemy,ceil(p2dist y+enemynear,const(size.mid.pos.y)),0)
hitsound = s1,3
guardsound = s2,0
ground.type = High
ground.slidetime = 23
ground.hittime = 23
air.hittime = 23
guard.slidetime = 19
guard.hittime = 19
ground.velocity = -12.0,-7.5
air.type = High
air.velocity = -12.0,-7.5
getpower = 80,80
givepower = 40,40
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 0
guard.dist = 0
p2facing = 1
ID = 1000

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.8*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
trigger1 = ishelper
trigger1 = movehit
fvar(10) = root,fvar(10)*0.8*cond(root,fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(5)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = animelemtime(5)>=0
trigger2 = movecontact||movereversed
trigger3 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State 1000, Air CS]
type = changestate
trigger1 = !ishelper
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Netherworld Reflection Slash
[Statedef 1020]
type = S
movetype = I
physics = S
velset = 0,0
anim = 1020
poweradd = 15
ctrl = 0
sprpriority = 1
juggle = 0
facep2 = 1

[State 1000, PSND]
type = playsnd
trigger1 = animelemtime(2)=0
value = 1020,10
channel = 1

[State 1010, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Aegis Reflector?"
ID = 21020
pos = 16,-75
postype = p1
stateno = 21020
ownpal = 1
facing = 1

[State 1000, Air CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; 421z Reflector
[Statedef 21020]
type = A
movetype = A
physics = N
juggle = 0
;anim = 21020
sprpriority = 5

[State 21020, VS]
type = varset
trigger1 = var(0)=0
var(53) = (root,var(53))

[State 21020, CA]
type = changeanim
trigger1 = var(0)=0
value = 21020

[State 21021, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AP
slot = 0
stateno = 21025
time = -1
ignorehitpause = 1

[State 21020, VS]
type = velset
trigger1 = var(0)=0
x = 1

[State 21020, Frict]
type = velmul
trigger1 = var(0)>1
x = 0.95

[State 21020, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21020, AD]
type = angledraw
trigger1 = var(0)=0
trigger2 = time
value = 16
scale = 0.85,2.0
ignorehitpause = 1

[State 21020, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21020, CS]
type = changestate
trigger1 = var(0)>25
trigger2 = (root,stateno != [120,155])&&(root,movetype = H)
value = 21021

[State 21020, Timer]
type = varadd
trigger1 = 1
var(0)=1

;--------------------------
; 421z Reflector
[Statedef 21021]
type = A
movetype = A
physics = N
juggle = 0
anim = 21025
sprpriority = 5

[State 21021, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21020, Frict]
type = velmul
trigger1 = time>1
x = 0.95

[State 21020, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21020, AD]
type = angledraw
trigger1 = time
value = 16
scale = 0.85,2.0
ignorehitpause = 1

[State 21020, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21021, Zeeky]
type = destroyself
trigger1 = animtime=0

;--------------------------
; 421z Reflector
[Statedef 21025]
type = A
movetype = A
physics = N
juggle = 0
;anim = 21020
sprpriority = 5

[State 21021, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21020, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21020, AD]
type = angledraw
trigger1 = time
value = 16
scale = 0.85,2.0
ignorehitpause = 1

[State 21020, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 1010, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Pong"
ID = 21026
pos = 0,0
postype = p1
stateno = 21026
ownpal = 1
facing = 1

[State 21022, CS]
type = changestate
trigger1 = 1
value = 21020

;--------------------------
; 421z Reflected Shot
[Statedef 21026]
type = A
movetype = A
physics = N
juggle = 0
anim = 21026
sprpriority = 5

[State 21021, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
slot = 0
stateno = 21027;999
time = -1
ignorehitpause = 1

[State 21020, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24010, CondVarset]
type = null
triggerall = numenemy
triggerall = time = 0
trigger1 = (fvar(20):=(enemynear(0),pos x - pos x) * facing) || 1
trigger1 = (fvar(21):=enemynear(0),pos y - pos y + enemynear(0),const(size.mid.pos.y)) || 1
trigger1 = (fvar(22):=((fvar(20)**2.0)+(fvar(21)**2.0))**0.5) || 1

[State 21026, VS]
type = velset
trigger1 = 1
x = 10.0*fvar(20)/fvar(22)
y = 10.0*fvar(21)/fvar(22)

[State 21300, AA]
type = varset;add
trigger1 = numenemy
trigger1 = time=0
trigger1 = p2dist y+enemynear,const(size.mid.pos.y) != 0
persistent = 0
;trigger1 = p2dist x > 0
;trigger1 = %360 > ceil(360+fvar(30))%360
fvar(30) = ceil(atan(fvar(21)/fvar(20))*180.0/pi)

[State 21300, AD]
type = angledraw
trigger1 = 1
value = -fvar(30)
scale = 0.4,0.4
ignorehitpause = 1

[State 21020, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 1010, HitDef]
type = Hitdef
trigger1 = !movecontact && !movereversed
attr = S,SP
animtype = Medium
damage = ceil(70*root,fvar(11)),14
priority = 4,Hit
hitflag = MAFP
guardflag = MA
pausetime = 0,8
sparkno = s8020+(random%2)
guard.sparkno = s8030
sparkxy = -10,0+cond(numenemy,floor(enemynear,const(size.mid.pos.y))+floor(p2dist y),0)
p1sprpriority=5
hitsound = s1,7
guardsound = s2,0
ground.type = High
ground.slidetime = 24
ground.hittime = 24
air.hittime = 24
guard.slidetime = 17
guard.hittime = 17
ground.velocity = -4.0,0.0
guard.velocity = -4.0
air.velocity = -4.0,-5.5
airguard.velocity = -4.0,-5.5
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 50,50
givepower = 25,25
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ID = 1020

[State 0, Projectile]
type = Projectile
trigger1 = movecontact
persistent = 0
ProjID = 21020
projanim = 1998
projscale = 1,1
projremove = 1
projremovetime = 1
projhits = 0
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 0,0
postype = p1 ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 0
pausemovetime = 0

[State 21026, CS]
type = changestate
trigger1 = movecontact||movereversed
trigger2 = frontedgedist < -30
trigger3 = backedgedist < -30
value = 21027;999

;---------------
; Universal Projectile Destruction
[Statedef 21027]
type = A
movetype = I
physics = N
anim = 1998
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
value = 5205
ignorehitpause = 1

[State 1112, nothitby]
type = nothitby
trigger1 = 1
time = 1
value = SCA
ignorehitpause = 1

[State 1112, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1112, End]
type = changestate
trigger1 = time>10
value = 999
ignorehitpause = 1

;---------------------------------------------------------------------------
; Crescent Moon Slash
[Statedef 1100]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1100+1*(var(53)=2)+2*(var(53)>=3)+10*(var(10)=2)+20*(var(10)>=3)+0*(var(11):=0)+0*floor(var(24):=0)+0*floor(var(57):=0)
poweradd = 45*(prevstateno!=1900)
ctrl = 0
sprpriority = 1
juggle = 0
facep2 = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
;triggerall = !ishelper
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(2*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1100, Startup Inv]
type = nothitby
triggerall = !ishelper
triggerall = (prevstateno!=1900)
trigger1 = var(10)<=1
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 7+3*(var(10)=2)+7*(var(10)>=3)
ignorehitpause = 1

[State 1100, GC Startup Inv]
type = nothitby
triggerall = !ishelper
triggerall = (prevstateno=1900)
trigger1 = time = 0
value = SCA,AA,AP,AT
time = 12
ignorehitpause = 1

[State 1100, Proj Inv]
type = nothitby
triggerall = !ishelper
trigger1 = var(10)=2
trigger1 = time = 0
value = ,AP
time = 25+3*(var(10)=2)+7*(var(10)>=3)
ignorehitpause = 1

[State 1100, Displacement]
type = posadd
trigger1 = animelemtime(3)=0
trigger2 = var(10)=2
trigger2 = animelemtime(12)=0
trigger3 = var(10)>=3
trigger3 = animelemtime(14)=0||animelemtime(24)=0
x = 25

[State 1100, VelS]
type = velset
trigger1 = var(10)>=3
trigger1 = animelemtime(13)=0||animelemtime(23)=0
trigger2 = var(10)=2
trigger2 = animelemtime(13)=0
x = 7.0

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(5)=0
trigger2 = var(10)=2
trigger2 = animelemtime(15)=0
trigger3 = var(10)>=3
trigger3 = animelemtime(16)=0||animelemtime(26)=0
value = 1100,10
channel = 1

[State 1100, STS]
type = statetypeset
trigger1 = var(10)<=1
trigger1 = animelemtime(6)=0
trigger2 = var(10)=2
trigger2 = animelemtime(17)=0
trigger3 = var(10)>=3
trigger3 = animelemtime(27)=0
statetype = A
physics = N

[State 1100, VS]
type = velset
trigger1 = var(10)<=1
trigger1 = animelemtime(6)=0
trigger2 = var(10)=2
trigger2 = animelemtime(17)=0
trigger3 = var(10)>=3
trigger3 = animelemtime(27)=0
x = 3.5+1.0*(var(10)=2)+2.0*(var(10)=3)
y = -7.5-1.0*(var(10)=2)-2.0*(var(10)=3)

[State 1100, Friction]
type = velmul
triggerall = vel x > 0.5
trigger1 = var(10)<=1
trigger1 = animelemtime(8)>=0
trigger2 = var(10)=2
trigger2 = animelemtime(19)>1
trigger3 = var(10)=2
trigger3 = animelemtime(29)>1
x = 0.9

[State 1100, Grav]
type = veladd
trigger1 = var(10)<=1
trigger1 = animelemtime(6)>1
trigger2 = var(10)=2
trigger2 = animelemtime(17)>1
trigger3 = var(10)>=3
trigger3 = animelemtime(27)>1
y = 0.5

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = var(10)>=2
trigger1 = animelemtime(4)=0
trigger2 = var(10)>=3
trigger2 = animelemtime(15)=0
helpertype = normal
name = "Slash"
ID = 21101
pos = 1,-44
postype = p1
stateno = 21100
ownpal = 1
facing = 1
supermovetime = 40

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = var(10)<=1
trigger1 = animelemtime(3)=0
trigger2 = var(10)=2
trigger2 = animelemtime(13)=0
trigger3 = var(10)>=3
trigger3 = animelemtime(23)=0
helpertype = normal
name = "Slash"
ID = 21100
pos = 1,-44
postype = p1
stateno = 21100
ownpal = 1
facing = 1
supermovetime = 40

[State 1100, MHR]
type = moveHitReset
trigger1 = var(10)=2
trigger1 = animelemtime(17)=0
trigger2 = var(10)>=3
trigger2 = animelemtime(15)=0||animelemtime(27)=0

[State 200, DamageSet]
type = null
triggerall = (var(10)>=2&&animelemno(0)=4)||(var(10)>=3&&animelemno(0)=15)
trigger1 = var(53)<=1
trigger1 = (var(12):=45)||1
trigger1 = (var(13):=6)||1
trigger2 = var(53)=2
trigger2 = (var(12):=47)||1
trigger2 = (var(13):=6)||1
trigger3 = var(53)=3
trigger3 = (var(12):=49)||1
trigger3 = (var(13):=7)||1
trigger4 = var(53)>=4
trigger4 = (var(12):=52)||1
trigger4 = (var(13):=7)||1

[State 200, 1]
type = HitDef
triggerall = !movecontact && !movereversed
triggerall = ifelse((var(34)&floor(exp(2*ln(2)) + 0.5)),0,1) || var(24)
trigger1 = var(10)>=2
trigger1 = animelemtime(4)>=0 && animelemtime(5)<0
trigger2 = var(10)>=3
trigger2 = animelemtime(15)>=0 && animelemtime(16)<0
attr = S,SA
damage = ceil(var(12)*(fvar(11)/cond(var(57)=1,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),ceil(var(13)*cond(var(54)>0,0.6,1.0))
animtype = Back
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 8,8
sparkno = S8015+(random%2)
guard.sparkno = S8030
sparkxy = -10,cond(numenemy,ceil(p2dist y+enemynear,const(size.mid.pos.y)),0)
hitsound = s1,6
guardsound = s2,0
ground.type = High
ground.slidetime = 23+3*(var(42))
ground.hittime = 23+3*(var(42))
air.hittime = 23+3*(var(42))
guard.slidetime = 20
guard.hittime = 20
ground.velocity = -6.5,0.0
air.type = High
air.velocity = -2.8,-5.5
getpower = 40*(prevstateno!=1900),40*(prevstateno!=1900);40-20*(var(10)>=3),40-20*(var(10)>=3)
givepower = 20,20;20-10*(var(10)>=3),20-10*(var(10)>=3)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
p2facing = 1
ID = 1100

[State 200, DamageSet]
type = null
triggerall = (var(10)<=1&&animelemno(0)=5)
trigger1 = var(53)<=1
trigger1 = (var(12):=85)||1
trigger1 = (var(13):=17)||1
trigger2 = var(53)=2
trigger2 = (var(12):=90)||1
trigger2 = (var(13):=18)||1
trigger3 = var(53)=3
trigger3 = (var(12):=95)||1
trigger3 = (var(13):=19)||1
trigger4 = var(53)>=4
trigger4 = (var(12):=95)||1
trigger4 = (var(13):=19)||1

[State 200, 1]
type = HitDef
triggerall = !movecontact && !movereversed
triggerall = ifelse((var(34)&floor(exp(2*ln(2)) + 0.5)),0,1) || var(24)
trigger1 = var(10)<=1
trigger1 = animelemtime(5)>=0 && animelemtime(6)<0
attr = S,SA
damage = ceil(var(12)*(fvar(11)/cond(var(57)=1,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),ceil(var(13)*cond(var(54)>0,0.6,1.0))
animtype = Back
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8025+(random%2)
guard.sparkno = S8030
sparkxy = -10,cond(numenemy,ceil(p2dist y+enemynear,const(size.mid.pos.y)),0)
hitsound = s1,6
guardsound = s2,0
ground.type = High
ground.slidetime = 23+3*(var(42))
ground.hittime = 23+3*(var(42))
air.hittime = 23+3*(var(42))
guard.slidetime = 20
guard.hittime = 20
ground.velocity = -4.5-1.0*(var(10)=2)-2.0*(var(10)=3),-10.0
air.type = High
air.velocity = -4.5-1.0*(var(10)=2)-2.0*(var(10)=3),-10.0
getpower = (80-40*(var(10)>=2))*(prevstateno!=1900),(80-40*(var(10)>=2))*(prevstateno!=1900)
givepower = 40-20*(var(10)>=2),40-20*(var(10)>=2)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 0
p2facing = 1
ID = 1100


[State 200, DamageSet]
type = null
triggerall = (var(10)<=1&&animelemno(0)=6)||(var(10)=2&&animelemno(0)=17)||(var(10)>=3&&animelemno(0)=27)
trigger1 = var(53)<=1
trigger1 = (var(12):=cond(var(10)<=1,85,60))||1 ;X Ver: 80/85/90/90, 16/17/18/18
trigger1 = (var(13):=cond(var(10)<=1,17,cond(var(10)=2,11,12)))||1 
trigger2 = var(53)=2
trigger2 = (var(12):=cond(var(10)<=1,90,62))||1 ;Y Ver: 60/62/65/65, 11/12/13/13
trigger2 = (var(13):=cond(var(10)<=1,18,cond(var(10)=2,12,13)))||1
trigger3 = var(53)=3
trigger3 = (var(12):=cond(var(10)<=1,95,65))||1 ;Z Ver: 60/62/65/65, 12/13/14/14
trigger3 = (var(13):=cond(var(10)<=1,19,cond(var(10)=2,13,14)))||1
trigger4 = var(53)>=4
trigger4 = (var(12):=cond(var(10)<=1,95,65))||1
trigger4 = (var(13):=cond(var(10)<=1,19,cond(var(10)=2,13,14)))||1

[State 200, 1]
type = HitDef
triggerall = !movecontact && !movereversed
triggerall = ifelse((var(34)&floor(exp(2*ln(2)) + 0.5)),0,1) || var(24)
trigger1 = var(10)<=1
trigger1 = animelemtime(6)>=0 && animelemtime(7)<0
trigger2 = var(10)=2
trigger2 = animelemtime(17)>=0 && animelemtime(18)<0
trigger3 = var(10)>=3
trigger3 = animelemtime(27)>=0 && animelemtime(28)<0
attr = S,SA
damage = ceil(var(12)*(fvar(11)/cond(var(57)=1,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),ceil(var(13)*cond(var(54)>0,0.6,1.0))
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8025+(random%2)
guard.sparkno = S8030
sparkxy = -10,cond(numenemy,ceil(p2dist y+enemynear,const(size.mid.pos.y)),0)
hitsound = s1,6
guardsound = s2,0
ground.type = High
ground.slidetime = 23+3*(var(42))
ground.hittime = 23+3*(var(42))
air.hittime = 23+3*(var(42))
guard.slidetime = 20
guard.hittime = 20
ground.velocity = -4.5-1.0*(var(10)=2)-2.0*(var(10)=3),-10.0
air.type = High
air.velocity = -4.5-1.0*(var(10)=2)-2.0*(var(10)=3),-10.0
getpower = (80-40*(var(10)>=2))*(prevstateno!=1900),(80-40*(var(10)>=2))*(prevstateno!=1900)
givepower = 40-20*(var(10)>=2),40-20*(var(10)>=2)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 0
p2facing = 1
ID = 1100

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(1100)
trigger1 = target(1100),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 1;Change index
ignorehitpause = 1
persistent = 0
[State 220, First Combo Hit]
type = parentvarset
triggerall = ishelper && numtarget(1100)
trigger1 = target(1100),gethitvar(hitcount)=1
trigger1 = root,var(57)=0
var(57) = 1;Change index
ignorehitpause = 1
persistent = 0

[State 2000, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 1100
ignorehitpause = 1

[State 210, Multihit]
type = varset
trigger1 = movecontact
var(24) = 1
ignorehitpause = 1
persistent = 0

[State -2, Spirit Gauge Decrease]
type = varadd
triggerall = !movecontact
triggerall = var(50)>0
triggerall = var(11)=0
trigger1 = var(10)<=1
trigger1 = animelemtime(7)=0
trigger2 = var(10)=2
trigger2 = animelemtime(18)=0
trigger3 = var(10)>=3
trigger3 = animelemtime(28)=0
var(50) = -60
persistent = 0

[State -2, Spirit Gauge Decrease]
type = varadd
triggerall = movehit
triggerall = var(50)<1000
trigger1 = var(10)<=1
trigger2 = var(10)>=2
trigger2 = animelemtime(4)>=0 && animelemtime(5)<1
var(50) = 60
ignorehitpause = 1
persistent = 0

[State -2, Spirit Gauge Decrease]
type = varadd
triggerall = movehit
triggerall = var(50)<1000
trigger1 = var(10)=2
trigger1 = animelemtime(17)>=0 && animelemtime(18)<1
trigger2 = var(10)>=3
trigger2 = animelemtime(15)>=0 && animelemtime(16)<1
var(50) = 60
ignorehitpause = 1
persistent = 0

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
trigger1 = var(10)>=3
trigger1 = animelemtime(27)>=0 && animelemtime(28)<1
var(50) = 60
ignorehitpause = 1
persistent = 0

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
var(11) = 1
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = var(10)<=1
fvar(10) = fvar(10)*0.8*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
;----Y----
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = var(10)>=2
trigger1 = animelemtime(4)>=0 && animelemtime(5)<1
fvar(10) = fvar(10)*0.9*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = var(10)=2
trigger1 = animelemtime(17)>=0 && animelemtime(18)<1
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
;----Z----
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = var(10)>=3
trigger1 = animelemtime(15)>=0 && animelemtime(16)<1
fvar(10) = fvar(10)*0.9*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = var(10)>=3
trigger1 = animelemtime(27)>=0 && animelemtime(28)<1
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = parentvarset
triggerall = ishelper
triggerall = movehit
trigger1 = var(10)<=1
fvar(10) = (root,fvar(10))*0.8*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
;----Y----
[State 200, Damage Dampen]
type = parentvarset
triggerall = ishelper
triggerall = movehit
trigger1 = var(10)>=2
trigger1 = animelemtime(4)>=0 && animelemtime(5)<1
fvar(10) = (root,fvar(10))*0.9*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
triggerall = ishelper
triggerall = movehit
trigger1 = var(10)=2
trigger1 = animelemtime(17)>=0 && animelemtime(18)<1
fvar(10) = (root,fvar(10))*0.85*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
;----Z----
[State 200, Damage Dampen]
type = parentvarset
triggerall = ishelper
triggerall = movehit
trigger1 = var(10)>=3
trigger1 = animelemtime(15)>=0 && animelemtime(16)<1
fvar(10) = (root,fvar(10))*0.9*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
triggerall = ishelper
triggerall = movehit
trigger1 = var(10)>=3
trigger1 = animelemtime(27)>=0 && animelemtime(28)<1
fvar(10) = (root,fvar(10))*0.85*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 1100, Flag Recovery]
type = statetypeset
triggerall = !ishelper
trigger1 = var(10)<=1
trigger1 = animelemtime(7)=0 || (movecontact||movereversed)
trigger2 = var(10)=2
trigger2 = animelemtime(18)=0 || ((animelemtime(17)>0 && animelemtime(18)<0) && (movecontact||movereversed))
trigger3 = var(10)>=3
trigger3 = animelemtime(28)=0 || ((animelemtime(27)>0 && animelemtime(28)<0) && (movecontact||movereversed))
movetype = I
ignorehitpause = 1
persistent = 0

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = var(10)<=1
trigger1 = animelemtime(7)=0 || (movecontact||movereversed)
trigger2 = var(10)=2
trigger2 = animelemtime(18)=0 || (animelemtime(17)>0 && (movecontact||movereversed))
trigger3 = var(10)>=3
trigger3 = animelemtime(28)=0 || (animelemtime(27)>0 && (movecontact||movereversed))
trigger4 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State 1100, CS]
type = changestate
triggerall = !ishelper
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1101

;---------------------------------------------------------------------------
; Crescent Moon Slash Landing
[Statedef 1101]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1105
movehitpersist=1
facep2 = 0

[State -3, Landing Sound]
type = PlaySnd
trigger1 = time = 0
value = s40,0

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 4]
type = VelSet
trigger1 = abs(vel x) < Const(movement.stand.friction.threshold)
x = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = 1
movetype = I
ignorehitpause = 1
persistent = 0

[State 1000, VS]
type = varset
trigger1 = movecontact
var(1)=1

[State 52, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crescent Moon Slash
[Statedef 1105]
type = A
movetype = A
physics = N
velset = 0,0
anim = 1130+1*(var(10)=2)+2*(var(10)>=3)+10*(var(53)=2)+20*(var(53)>=3)+0*(var(11):=0)+0*floor(var(24):=0)+0*floor(var(57):=0)
poweradd = 30*(prevstateno!=1900)
ctrl = 0
sprpriority = 1
juggle = 0
facep2 = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(2*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1100, Displacement]
type = posadd
trigger1 = animelemtime(3)=0
x = 25

[State 1100, PSND]
type = playsnd
trigger1 = animelemtime(5)=0
value = 1100,10
channel = 1

[State 1100, VS]
type = velset
trigger1 = animelemtime(6)=0
x = 1.5
y = -7.5-2.0*(var(10)=2)-4.0*(var(10)=3)

[State 1100, Grav]
type = veladd
trigger1 = animelemtime(6)>1
y = 0.5

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(3)=0
helpertype = normal
name = "Slash"
ID = 21100
pos = 1,-44
postype = p1
stateno = 21100
ownpal = 1
facing = 1
supermovetime = 40

[State 1100, MHR]
type = moveHitReset
trigger1 = animelemtime(6)=0||animelemtime(7)=0

[State 200, 1]
type = HitDef
triggerall = !movecontact && !movereversed
triggerall = ifelse((var(34)&floor(exp(2*ln(2)) + 0.5)),0,1) || var(24)
trigger1 = animelemno(0)=5||animelemno(0)=6||animelemno(0)=7
attr = A,SA
damage = ceil((25+5*(var(10)=2)+11*(var(10)>=3)+2*(var(53)>=2))*(fvar(11)/cond(var(57)=2,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),ceil((4+1*(var(10)=2)+2*(var(10)>=3)+1*(var(53)>=3))*cond(var(54)>0,0.6,1.0))
animtype = Diagup
guardflag = HA
hitflag = MAF
priority = 4,Hit
pausetime = 6,6
sparkno = S8015+(random%2)
guard.sparkno = S8030
sparkxy = -20,-70
hitsound = s1,6
guardsound = s2,0
ground.type = High
ground.slidetime = 23+3*(var(42))
ground.hittime = 23+3*(var(42))
air.hittime = 23+3*(var(42))
guard.slidetime = 20
guard.hittime = 20
air.type = High
ground.velocity = -2.5-1.0*(var(10)=2)-2.0*(var(10)=3),-10.0
air.velocity = -2.5-1.0*(var(10)=2)-2.0*(var(10)=3),-10.0
getpower = 30*(prevstateno!=1900),30*(prevstateno!=1900)
givepower = 15,15
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
p2facing = 1
ID = 1105

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(1105)
trigger1 = target(1105),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 2;Change index
ignorehitpause = 1
persistent = 0
[State 220, First Combo Hit]
type = parentvarset
triggerall = ishelper
triggerall = numtarget(1105)
trigger1 = target(1105),gethitvar(hitcount)=1
trigger1 = root,var(57)=0
var(57) = 2;Change index
ignorehitpause = 1
persistent = 0

[State 2000, Hard Knockdown]
type = TargetState
trigger1 = p2statetype=A && movehit && (p2stateno!=[6020,6110])
value = 6020
ID = 1105
ignorehitpause = 1

[State 210, Multihit]
type = varset
trigger1 = movecontact
var(24) = 1
ignorehitpause = 1
persistent = 0

[State -2, Spirit Gauge Decrease]
type = varadd
triggerall = !movecontact
triggerall = var(50)>0
triggerall = var(11)=0
trigger1 = animelemtime(8)=0
var(50) = -90
persistent = 0

[State -2, Spirit Gauge Increase]
type = varadd
triggerall = movehit
triggerall = var(50)<1000
trigger1 = animelemtime(5)>=0 && animelemtime(6)<1
var(50) = 30
ignorehitpause = 1
persistent = 0

[State -2, Spirit Gauge Decrease]
type = varadd
triggerall = movehit
triggerall = var(50)<1000
trigger1 = animelemtime(6)>=1 && animelemtime(7)<1
var(50) = 30
ignorehitpause = 1
persistent = 0

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
trigger1 = animelemtime(7)>=1 && animelemtime(8)<1
var(50) = 30
ignorehitpause = 1
persistent = 0

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
var(11) = 1
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemtime(5)>=0 && animelemtime(6)<1
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemtime(6)>=1 && animelemtime(7)<1
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = varset
trigger1 = movehit
trigger1 = animelemtime(7)>=1 && animelemtime(8)<1
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = parentvarset
triggerall = ishelper
trigger1 = movehit
trigger1 = animelemtime(5)>=0 && animelemtime(6)<1
fvar(10) = (root,fvar(10))*0.92*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
triggerall = ishelper
trigger1 = movehit
trigger1 = animelemtime(6)>=1 && animelemtime(7)<1
fvar(10) = (root,fvar(10))*0.92*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
triggerall = ishelper
trigger1 = movehit
trigger1 = animelemtime(7)>=1 && animelemtime(8)<1
fvar(10) = (root,fvar(10))*0.92*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 0, RECOVERY FRAMES]
type = StateTypeSet
trigger1 = animelemtime(8)=0
trigger2 = animelemtime(7)>=1 && animelemtime(8)<0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent=0

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = animelemno(0)=7
trigger1 = movecontact||movereversed
trigger2 = animelemtime(8)>=0
trigger3 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State 1100, CS]
type = changestate
triggerall = !ishelper
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1101

;--------------------------
; 623 Crescent FX
[Statedef 21100]
type = A
movetype = I
physics = N
juggle = 0
anim = 21100+1*ishelper(21101)
sprpriority = 5

[State 621, CA]
type = changeanim
trigger1 = root,hitpausetime
value = anim
elem = animelemno(-1)

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
type = BindToParent
trigger1 = ishelper(21100)
pos = 1,-44

[State 21100, BTR]
type = BindToParent
trigger1 = ishelper(21101)
pos = 28,-54

[State 21100, Angles]
type = AngleDraw
trigger1 = 1
scale = 1.5,1.5
ignorehitpause = 1

[State 21100, Zeeky]
type = destroyself
trigger1 = animtime = 0
trigger2 = root,stateno != 1100
trigger2 = root,stateno != 1105

;---------------------------------------------------------------------------
; Slash of Life & Death - 1st Hit
[Statedef 1200]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1200+1*(var(53)=2)+2*(var(53)>=3)+3*(var(10)=2)+6*(var(10)>=3);+0*(var(11):=0)
poweradd = 15
ctrl = 0
sprpriority = 1
juggle = 0
facep2 = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = !ishelper
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(3*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 420, PA]
type = posadd
trigger1 = animelemtime(3)=0
x = 4

[State 420, PA]
type = posadd
trigger1 = animelemtime(4)=0
x = 8

[State 1200, VS]
type = velset
trigger1 = animelemtime(5)=0
x = 7.0

[State 420, PA]
type = posadd
trigger1 = animelemtime(5)=0
x = 10

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 1200,10

[State 1010, Effect]
type = helper
trigger1 = !ishelper
trigger1 = animelemtime(5)=0
helpertype = normal
name = "Slash"
ID = 21200
postype = p1
stateno = 21200
ownpal = 1
facing = 1
supermovetime = 40

[State 200, DamageSet]
type = null
trigger1 = var(10)<=1
trigger1 = (var(12):=35)||1
trigger1 = (var(13):=7)||1 
trigger2 = var(10)=2
trigger2 = (var(12):=40)||1
trigger2 = (var(13):=8)||1
trigger3 = var(10)>=3
trigger3 = (var(12):=45)||1
trigger3 = (var(13):=9)||1
;damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(13)*cond(var(54)>0,0.6,1.0))

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(3*ln(2)) + 0.5)),0,1)
trigger1 = animelemtime(7)>=0 && animelemtime(8)<0
trigger1 = !movecontact && !movereversed
attr = S,SA
damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(13)*cond(var(54)>0,0.6,1.0))
animtype = Heavy
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 8,8
sparkno = S8015+(random%2)
guard.sparkno = S8030
sparkxy = -15,-30
hitsound = s1,6
guardsound = s2,0
ground.type = High
ground.slidetime = 24+3*(var(10)>=3)+3*(var(42))
ground.hittime = 24+3*(var(10)>=3)+3*(var(42))
air.hittime = 24+3*(var(10)>=3)+3*(var(42))
guard.slidetime = 21+3*(var(10)>=3)
guard.hittime = 21+3*(var(10)>=3)
ground.velocity = -6.0,0.0
air.type = High
air.velocity = -6.0,-6.5
getpower = 40,40
givepower = 20,20
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 1200

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = animelemtime(8)=0
trigger1 = !movecontact
trigger1 = var(50)>0
var(50) = -30

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
var(50) = 30
ignorehitpause = 1
persistent=0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.9*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
trigger1 = ishelper
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.9*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(8)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = animelemtime(8)=0
trigger2 = movecontact||movereversed
trigger3 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State 1200, CS]
type = changestate
triggerall = !ishelper
triggerall = animelemtime(8)>=1||movecontact
trigger1 = command="z"
trigger1 = (var(10):=3)||1
trigger2 = command="y"
trigger2 = (var(10):=2)||1
trigger3 = command="x"
trigger3 = (var(10):=1)||1
trigger4 = AILevel > 0
trigger4 = movehit
trigger4 = (var(10):=3)||1
value = 1201
ctrl = 0

[State 240, 4]
type = ChangeState
triggerall = !ishelper
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Slash of Life & Death - 2nd Hit
[Statedef 1201]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1210+1*(var(53)=2)+2*(var(53)>=3)+3*(var(10)=2)+6*(var(10)>=3);+0*(var(11):=0)
poweradd = 15
ctrl = 0
sprpriority = 1
juggle = 0
facep2 = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
triggerall = !ishelper
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(4*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1200, VS]
type = velset
trigger1 = animelemtime(5)=0
x = 4.5

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 1200,10

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(7)=0
helpertype = normal
name = "Slash"
ID = 21201
postype = p1
stateno = 21200
ownpal = 1
facing = 1
supermovetime = 40

[State 200, DamageSet]
type = null
trigger1 = var(10)<=1
trigger1 = (var(12):=35)||1
trigger1 = (var(13):=5)||1 
trigger2 = var(10)=2
trigger2 = (var(12):=40)||1
trigger2 = (var(13):=6)||1
trigger3 = var(10)>=3
trigger3 = (var(12):=45)||1
trigger3 = (var(13):=7)||1
;damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(13)*cond(var(54)>0,0.6,1.0))

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(4*ln(2)) + 0.5)),0,1) 
trigger1 = animelemtime(7)>=0 && animelemtime(8)<0
trigger1 = !movecontact && !movereversed
attr = S,SA
damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(13)*cond(var(54)>0,0.6,1.0))
animtype = Heavy
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 8,8
sparkno = S8015+(random%2)
guard.sparkno = S8030
sparkxy = -15,-30
hitsound = s1,6
guardsound = s2,0
ground.type = High
ground.slidetime = 25+5*(var(10)>=3)+3*(var(42))
ground.hittime = 25+5*(var(10)>=3)+3*(var(42))
air.hittime = 25+5*(var(10)>=3)+3*(var(42))
guard.slidetime = 21+5*(var(10)>=3)
guard.hittime = 21+5*(var(10)>=3)
ground.velocity = -6.0,0.0
air.type = High
air.velocity = -6.0,-6.5
getpower = 40,40
givepower = 20,20
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 1200

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = animelemtime(8)=0
trigger1 = !movecontact
trigger1 = var(50)>0
var(50) = -30

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
var(50) = 30
ignorehitpause = 1
persistent=0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.9*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
trigger1 = ishelper
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.9*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(8)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = animelemtime(8)=0
trigger2 = movecontact||movereversed
trigger3 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State 1200, CS]
type = changestate
triggerall = !ishelper
triggerall = animelemtime(8)>=1||movecontact
trigger1 = command="z"
trigger1 = (var(10):=3)||1
trigger2 = command="y"
trigger2 = (var(10):=2)||1
trigger3 = command="x"
trigger3 = (var(10):=1)||1
trigger4 = AILevel > 0
trigger4 = movehit
trigger4 = (var(10):=3)||1
value = 1202
ctrl = 0

[State 240, 4]
type = ChangeState
triggerall = !ishelper
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Slash of Life & Death - Final Hit
[Statedef 1202]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1220
poweradd = 15
ctrl = 0
sprpriority = 1
juggle = 0
facep2 = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
triggerall = !ishelper
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(5*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1200, STS]
type = statetypeset
trigger1 = animelemtime(3)=0
statetype = A
physics = N

[State 1200, VS]
type = velset
trigger1 = animelemtime(3)=0
x = 7.5
y = -4.0

[State 1200, Grav]
type = veladd
trigger1 = animelemtime(3)>1
y = 0.5

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 1200,10

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(7)=0
helpertype = normal
name = "Slash"
ID = 21202
postype = p1
stateno = 21200
ownpal = 1
facing = 1
supermovetime = 40

[State 200, DamageSet]
type = null
trigger1 = var(10)<=1
trigger1 = (var(12):=40)||1
trigger1 = (var(13):=6)||1 
trigger2 = var(10)=2
trigger2 = (var(12):=45)||1
trigger2 = (var(13):=7)||1
trigger3 = var(10)>=3
trigger3 = (var(12):=50)||1
trigger3 = (var(13):=8)||1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(5*ln(2)) + 0.5)),0,1)
trigger1 = animelemtime(8)>=0 && animelemtime(9)<0
trigger1 = !movecontact && !movereversed
attr = S,SA
damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(13)*cond(var(54)>0,0.6,1.0))
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 4,Hit
pausetime = 8,8
sparkno = S8015+(random%2)
guard.sparkno = S8030
sparkxy = -15,-30
hitsound = s1,6
guardsound = s2,0
ground.type = High
ground.slidetime = 25+3*(var(42))
ground.hittime = 25+3*(var(42))
air.hittime = 25+3*(var(42))
guard.slidetime = 22
guard.hittime = 22
ground.velocity = -7.5,-6.5
air.type = High
air.velocity = -7.5,-6.5
getpower = 40,40
givepower = 20,20
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 1200

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = animelemtime(9)=0
trigger1 = !movecontact
trigger1 = var(50)>0
var(50) = -30-30*(var(10)>=2)

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
var(50) = 30+30*(var(10)>=2)
ignorehitpause = 1
persistent=0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.8*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
trigger1 = ishelper
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.8*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(9)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = animelemtime(9)=0
trigger2 = movecontact||movereversed
trigger3 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State 240, 4]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 1203

;---------------------------------------------------------------------------
; Slash of Life & Death Landing
[Statedef 1203]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1230+1*(var(53)=2)+2*(var(53)>=3)+3*(var(10)=2)+6*(var(10)>=3)
movehitpersist=1
facep2 = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State -3, Landing Sound]
type = PlaySnd
trigger1 = time=0
value = s40,0

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 4]
type = VelSet
trigger1 = abs(vel x) < Const(movement.stand.friction.threshold)
x = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = 1
movetype = I
ignorehitpause = 1
persistent = 0

[State 1000, VS]
type = varset
trigger1 = movecontact
var(1)=1

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = 1
trigger2 = movecontact||movereversed
trigger3 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State 52, 5]
type = ChangeState
triggerall = !ishelper
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------
; 236 Slash FX
[Statedef 21200]
type = A
movetype = I
physics = N
juggle = 0
anim = 21200+1*ishelper(21201)+2*ishelper(21202)
sprpriority = 5

[State 621, CA]
type = changeanim
trigger1 = root,hitpausetime
value = anim
elem = animelemno(-1)

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
type = BindToParent
trigger1 = ishelper(21200)
pos = 17,-28

[State 21100, BTR]
type = BindToParent
trigger1 = ishelper(21201)
pos = 2,-77

[State 21100, BTR]
type = BindToParent
trigger1 = ishelper(21202)
pos = 47,-26

[State 21100, Angles]
type = AngleDraw
trigger1 = ishelper(21200)||ishelper(21201)
scale = 1.5,1.5
ignorehitpause = 1

[State 21100, Angles]
type = AngleDraw
trigger1 = ishelper(21202)
scale = 2.0,2.0
ignorehitpause = 1

[State 21100, Zeeky]
type = destroyself
trigger1 = animtime = 0
trigger2 = ishelper(21200)
trigger2 = root,stateno != 1200
trigger3 = ishelper(21201)
trigger3 = root,stateno != 1201
trigger4 = ishelper(21202)
trigger4 = root,stateno != 1202

;---------------------------------------------------------------------------
; Heart Carving Cut
[Statedef 1300]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1300+1*(var(53)=2)+2*(var(53)>=3)+10*(var(10)=2)+20*(var(10)>=3)
poweradd = 45
ctrl = 0
sprpriority = 1
juggle = 0
facep2 = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
trigger1 = !(var(10)>=3 && (animelemtime(6)>=0 && animelemtime(8)<0))
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
triggerall = !ishelper
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(6*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 420, PA]
type = posadd
trigger1 = animelemtime(3)=0
x = 4

[State 420, PA]
type = posadd
trigger1 = animelemtime(4)=0
x = 8

[State 420, PA]
type = posadd
trigger1 = animelemtime(5)=0
x = 10

[State 1200, STS]
type = statetypeset
trigger1 = animelemtime(6)=0
physics = N
ignorehitpause = 1

[State 1200, VS]
type = velset
trigger1 = animelemtime(6)=0
x = 9.0+6.0*(var(10)>=2)

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 1200,10

[State 1200, Friction]
type = velmul
trigger1 = animelemtime(7)>=6
x = 0.85

[State 0, Explod]
type = Explod
trigger1 = animelemtime(6)>=0 && animelemtime(8)<0
trigger1 = animelemtime(6)%5=0
anim = 7000
ID = 7000
pos = 10,0
postype = p1 ;p2,front,back,left,right
facing = 1
vel = 0,0
removetime = -2
scale = 1,1
sprpriority = 0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(6)=0
helpertype = normal
name = "Slash"
ID = 21300
postype = p1
stateno = 21300
ownpal = 1
facing = 1
supermovetime = 40

[State 1300, Z Version Crossup]
type = playerpush
trigger1 = var(10)>=3
trigger1 = animelemtime(6)>=0 && animelemtime(8)<0
value = 0
ignorehitpause = 1

[State 1300, Proj Inv]
type = nothitby
trigger1 = animelemtime(6)>=0 && animelemtime(8)<0
value = ,AP
ignorehitpause = 1

[State 200, DamageSet]
type = null
trigger1 = var(53)<=1
trigger1 = (var(12):=cond(var(10)=2,110,100))||1
trigger1 = (var(13):=cond(var(10)=2,22,20))||1 
trigger2 = var(53)=2
trigger2 = (var(12):=cond(var(10)=2,110,100))||1
trigger2 = (var(13):=cond(var(10)=2,22,20))||1
trigger3 = var(53)=3
trigger3 = (var(12):=cond(var(10)=2,115,105))||1
trigger3 = (var(13):=cond(var(10)=2,23,21))||1
trigger4 = var(53)>=4
trigger4 = (var(12):=cond(var(10)=2,125,115))||1
trigger4 = (var(13):=cond(var(10)=2,25,23))||1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(6*ln(2)) + 0.5)),0,1)
trigger1 = animelemtime(7)>=0 && animelemtime(8)<0
trigger1 = !movecontact && !movereversed
attr = S,SA
damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),ceil(var(13)*cond(var(54)>0,0.6,1.0))
animtype = Heavy
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8025+(random%2)
guard.sparkno = S8030
sparkxy = -15,-30
hitsound = s1,6
guardsound = s2,0
ground.type = Low
ground.slidetime = 27+3*(var(42))
ground.hittime = 27+3*(var(42))
air.hittime = 27+3*(var(42))
guard.slidetime = 24-2*(var(10)>=2)-4*(var(10)>=3)
guard.hittime = 24-2*(var(10)>=2)-4*(var(10)>=3)
ground.velocity = -8.0+8.0*(var(10)>=3),0.0-8.0*(var(10)>=2)
air.type = Low
air.velocity = -8.0+8.0*(var(10)>=3),-8.0
getpower = 120,120
givepower = 60,60
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0+1*(var(10)>=2)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 1200

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = animelemtime(8)=0
trigger1 = !movecontact
trigger1 = var(50)>0
var(50) = -90

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
var(50) = 90
ignorehitpause = 1
persistent=0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.8*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
trigger1 = ishelper
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.8*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(8)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = animelemtime(8)=0
trigger2 = movecontact||movereversed
trigger3 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State 52, 5]
type = ChangeState
triggerall = !ishelper
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; 63214 Slash FX
[Statedef 21300]
type = A
movetype = I
physics = N
juggle = 0
anim = 21300
sprpriority = 5

[State 621, CA]
type = changeanim
trigger1 = root,stateno = 1300
trigger1 = root,hitpausetime
trigger1 = var(0)=0
value = anim
elem = animelemno(-1)

[State 21100, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*var(0)/8.0),256
ignorehitpause = 1

[State 21100, Ass]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21100, BTR]
type = BindToParent
trigger1 = root,stateno = 1300
trigger1 = var(0)=0
pos = 45,2

[State 21100, Angles]
type = AngleDraw
trigger1 = 1
scale = 2.0,2.0
ignorehitpause = 1

[State 21100, Zeeky]
type = destroyself
trigger1 = root,stateno!=1300
trigger2 = var(0)>=8

[State 21300, Counter]
type = varadd
trigger1 = root,stateno=1300
trigger1 = root,animelemtime(8)>=0
trigger2 = var(0)
var(0) = 1

;---------------------------------------------------------------------------
; Lotus Stance Cut
[Statedef 1400]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1400+1*(var(10)=2)+2*(var(10)>=3)+0*floor(var(57):=0)
poweradd = 30
ctrl = 0
sprpriority = 1
juggle = 0
facep2 = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
trigger1 = !(var(10)>=3 && (animelemtime(6)>=0 && animelemtime(8)<0))
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State 1400, Offset]
type = posadd
trigger1 = animelemtime(5)=0
trigger2 = animelemtime(6)=0
x = 5

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(7)=0
trigger2 = var(54)>0
trigger2 = animelemtime(7)=14
value = 1400,10

[State 1010, Effect]
type = helper
triggerall = !ishelper
trigger1 = animelemtime(7)=0
trigger2 = var(54)>0
trigger2 = animelemtime(7)=14
helpertype = normal
name = "Slash"
ID = 21400+1*(var(54)>0 && animelemtime(7)=14)
pos = 27,-47
postype = p1
stateno = 21400
ownpal = 1
facing = 1

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(7)=1
movetype = I
persistent = 0
ignorehitpause = 1

[State -2, Clone Destruct]
type = changestate;destroyself
triggerall = ishelper
trigger1 = animelemtime(7)=1
trigger2 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State 52, 5]
type = ChangeState
triggerall = !ishelper
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Cut Projectile
[Statedef 21400]
type = A
movetype = A
physics = N
;velset = 0,0
sprpriority=5
ctrl = 0
;movehitpersist = 1

[State 1010, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 1010, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA,AA,AP
slot = 0
time = -1
Stateno = 21405
IgnoreHitPause = 1

[State 21100, VS]
type = varset
trigger1 = prevstateno != 21405
trigger1 = time = 0
var(10)=root,var(10)
[State 21100, VS]
type = varset
trigger1 = prevstateno != 21405
trigger1 = time = 0
var(53)=root,var(53)

[State 21100, CA]
type = changeanim
trigger1 = prevstateno != 21405
trigger1 = time = 0
value = 21400

[State 21000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 21000, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 21100, VS]
type = velset
trigger1 = prevstateno != 21405
trigger1 = time = 0
x = 5.0+5.0*(var(10)=2)+10.0*(var(10)>=3)

[State 21400, Friction]
type = veladd
trigger1 = time
trigger1 = vel x > 2.5
x = -0.5

[State Movehitoner]
type = VarSet
trigger1 = numenemy
var(31) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(31)+1,0)
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = parentVarSet
trigger1 = ishelper(21400)
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,gethitvar(fall)) || (target,statetype = L)
var(34) = (root,var(34)) | floor(exp(7*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State Give 'em a lil' 40, taken from The_None]
type = parentVarSet
trigger1 = ishelper(21401)
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,gethitvar(fall)) || (target,statetype = L)
var(34) = (root,var(34)) | floor(exp(8*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 1010, HitDef]
type = Hitdef
triggerall = time
triggerall = !movecontact && !movereversed
trigger1 = ishelper(21400) && (!((root,var(34))&floor(exp(7*ln(2)) + 0.5)) || var(12))
trigger2 = ishelper(21401) && (!((root,var(34))&floor(exp(8*ln(2)) + 0.5)) || var(12))
attr = S,SP
animtype = Hard
damage = ceil((60.0+5*(var(53)=2)+10*(var(53)=3)+20*(var(53)>=4))*(root,fvar(11)/cond(root,var(57)=3,(root,fvar(30)),1))*cond(var(10)<=1,0.4,cond(var(10)=2,0.55,1.0))),ceil((12+1*(var(53)=2)+2*(var(53)=3)+4*(var(53)>=4))*cond((root,var(54)>0),0.6,1.0)*cond(var(10)<=1,0.4,cond(var(10)=2,0.55,1.0)))
priority = 4,Hit
hitflag = MAF
guardflag = MA
pausetime = 0,6
sparkno = s8015+(random%2)
guard.sparkno = s8030
sparkxy = -10,0
hitsound = s1,3
guardsound = s2,0
ground.type = Low
ground.slidetime = 19
ground.hittime = 19
air.hittime = 19
guard.slidetime = 15
guard.hittime = 15
ground.velocity = -(vel x)*0.8,-5.5
guard.velocity = -(vel x)*0.8
air.velocity = -(vel x)*0.8,-5.5
airguard.velocity = -(vel x)*0.8,-5.5
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = cond(var(10)<=1,20,cond(var(10)=2,30,60)),cond(var(10)<=1,20,cond(var(10)=2,30,60));30,30
givepower = cond(var(10)<=1,10,cond(var(10)=2,15,30)),cond(var(10)<=1,10,cond(var(10)=2,15,30))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 1400

[State 220, First Combo Hit]
type = parentvarset
triggerall = numtarget(1400)
trigger1 = target(1400),gethitvar(hitcount)=1
trigger1 = root,var(57)=0
var(57) = 3;Change index
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10))*cond(var(10)<=1,0.947,cond(var(10)=2,0.92,0.85))*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 21100, CS]
type = changestate
trigger1 = movecontact||movereversed
trigger2 = frontedgedist < -100
trigger3 = var(0)>30
value = 21405

[State 21001, Timer]
type = varadd
trigger1 = 1
var(0) = 1

;-----------------------
; Cut Projectile
[Statedef 21405]
type = S
movetype = I
physics = N
sprpriority = 5
;anim = 21401
;velset = 0,0
movehitpersist = 1

[State 21405, VA]
type = varadd
trigger1 = time = 0
var(12) = 1

[State 21405, VS]
type = varset
trigger1 = var(10)>=3
trigger2 = var(10)=2
trigger2 = var(12)>=2
trigger3 = var(10)<=3
trigger3 = var(12)>=3
trigger4 = var(0)>30
var(11)=1

[State 21105, VS]
type = posfreeze
trigger1 = var(11)=0
ignorehitpause = 1

[State -2, Spirit Gauge Decrease]
type = parentvaradd
trigger1 = anim = 21401
trigger1 = !movecontact
trigger1 = root,var(50)>0
var(50) = -40
ignorehitpause = 1
persistent = 0

[State -2, Spirit Gauge Decrease]
type = parentvaradd
trigger1 = movehit
trigger1 = root,var(50)<1000
var(50) = cond(var(10)<=1,40,cond(var(10)=2,21,15));40
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

[State 1015, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1015, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 21105, CS]
type = changestate
triggerall = time>=5
trigger1 = var(11)=0
value = 21400

[State 21405, CA]
type = changeanim
trigger1 = var(11)=1
trigger1 = time = 0
trigger1 = anim != 21401
value = 21401

[State 1015, Destroyself]
type = changestate
trigger1 = var(11)=1
trigger1 = anim = 21401
trigger1 = animtime = 0
value = 999

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
value = 1100

;-----------------------
; Guard Cancel Use Effect
[Statedef 21900]
anim = 1999
velset = 0,0
sprpriority = 3

[State 1112, NoShadow]
type = AssertSpecial
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