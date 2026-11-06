; ________________________
;| Broly by Mr.Ansatsuken |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================< HELPER STATES >========================================
;============================================================================================

;========================< PALETTE SELECTOR >=============================
;Palette Selector
[Statedef 256]
physics = N
anim = 256
velset=0,0
sprpriority=99999
 
[State 256, PosSet]
type = PosSet
trigger1 =!time 
x = root, facing * ifelse(root,stateno=192,90,-90)
y = 20
ignorehitpause = 1

[State 256, AS]
type=assertspecial
trigger1=1
flag=intro
flag2=noshadow
[State 256, Reset]
type=varset
trigger1=!time
var(28)=200
[State 256, Pal]
type=varset
trigger1=!time
var(2)=root,var(2)

[State 256, Varset]
type=varset
trigger1=var(2)<1||var(2)>118
var(2)=1+(var(2)<1)*117

[State 256, PlaySnd]
type = PlaySnd
trigger1 =var(10)=2 
value = S256,0
volumescale = 50
channel = 20
[State 256, PlaySnd]
type = PlaySnd
triggerall=ishelper(256)
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="start"||roundstate=2
trigger2=var(28)<=5
value = S256,1
volumescale = 50
channel = 20
persistent =0 

[State 256, Countdown]
type = VarAdd
trigger1 =1 
var(28)=-1
[State 256, Countdown]
type = VarAdd
trigger1=!var(10)&&var(28)<150
trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
var(28)=25

[State 256, Varadd]
type=varadd
trigger1=!var(10)
trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
var(2)=1-(root,command="holddown"||root,command="holdback"&&facing=1||root,command="holdfwd"&&facing=-1)*2

[State 256, Varadd]
type=varadd
trigger1=(root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd")&&!var(10)||var(10)
var(10)=1

[State 256, Varset]
type=varset
trigger1=!time||var(10)>=17
var(10)=0

[State 256, End]
type=changestate
triggerall=ishelper(256) && root, var(28) = [2,3]
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="start"||roundstate=2
trigger2=var(28)<=0
trigger3=root, var(28) = 3
value = 257

[State 256, End]
type=destroyself
triggerall=ishelper(256)
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="start"||roundstate=2
trigger2=var(28)<=0
trigger3=root,AILevel


;Mode Select
[Statedef 257]
physics = N
anim = 257+root,var(50)
velset=0,0
sprpriority=99999
 
[State 257, PosSet]
type = PosSet
trigger1 =!time 
y = -4
ignorehitpause = 1

[State 257, AS]
type=assertspecial
trigger1=1
flag=intro
flag2=noshadow
[State 257, Reset]
type=varset
trigger1=!time
var(28)=150
[State 257, Reset]
type=varset
trigger1=!time
var(11)=parent,var(50)
[State 257, Reset]
type=parentvarset
trigger1=1
var(50)=(anim-257)

[State 257, Varset]
type=varset
trigger1 =var(10)=1
var(10)=Ifelse(var(11)=0,1,0)
[State 257, ChangeAnim]
type = ChangeAnim
trigger1 =var(10)=1
value = Ifelse(anim=257,258,257)

[State 257, PlaySnd]
type = PlaySnd
trigger1 =var(10)=2 
value = S257,0
volumescale = 50
channel = 25
[State 257, PlaySnd]
type = PlaySnd
triggerall = time >= 8
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="start"||roundstate=2
trigger2=var(28)<=5
value = S257,1
volumescale = 50
channel = 20
persistent =0 

[State 257, Countdown]
type = VarAdd
trigger1 =1 
var(28)=-1
[State 257, Countdown]
type = VarAdd
trigger1=!var(10)&&var(28)<100
trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
var(28)=20

[State 257, Varadd]
type=varadd
trigger1=(root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd")&&!var(10)||var(10)
var(10)=1

[State 257, Varset]
type=varset
trigger1=!time||var(10)>=17
var(10)=0

[State 257, End]
type=destroyself
trigger1=root,AILevel
[State 257, Change]
type=destroyself
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="start"||roundstate=2
trigger2=var(28)<=0


;========================< ERASER SHOT >=============================
; Eraser Shot
[Statedef 1005]
type = S
physics = N
movetype = A
anim = 1007 + root, var(56)*7993
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 0, VarAdd]
type = VarAdd
trigger1 = anim = 9000
var(56)=1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 9000
value = 30-var(56)*5
scale = 1, 1
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = !time && anim = 1007
anim = 1017-(root,var(44)=3||root,var(44)=1)*8
ID = 1015
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
sprpriority = 3
removeongethit = 1
[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1006
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1005, timevar]
type = varadd
trigger1 = time && var(1) < 60
var(1) = 1

[State 1005, Vel]
type = velset
trigger1 = 1
x = 5+(time*0.1)
y = ifelse(var(10) = 3, -11+(time), ifelse(var(10) = 2, 0, 11-(time)))

[State 1005, Assert]
type = trans
trigger1 = anim = 1007
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
;
[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 12
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = var(10)!=3
priority = 4, Hit
attr = S, SP
damage = ceil(80 * (root, fvar(12))), 7
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 12
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
air.velocity = -3, -3
air.fall = 1
getpower = ifelse(p2movetype = H, 72, 144) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 4
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1
fall.recover = 1
fall.recovertime = 22

[State 1005, Hit]
type = hitdef
trigger1 = var(10)=3
priority = 4, Hit
attr = S, SP
damage = ceil(80 * (root, fvar(12))), 7
animtype = Hard
hitflag = MAFD
guardflag = H
pausetime = 0, 12
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
down.velocity = 0, -4
air.velocity = -3, -3
air.fall = 1
getpower = ifelse(p2movetype = H, 72, 144) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 4
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1
fall.recover = 1
fall.recovertime = 22

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1005, End]
type = changestate
trigger1 = movecontact || (pos y >=0 && var(10)=3)
value = 1006
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = pos x != [ -280 , 280]
id = 1015 
[State 1005, End]
type = destroyself
trigger1 = pos x != [ -280 , 280]

[Statedef 1006]
type = A
physics = N
movetype = I
anim = 1006 + root, var(56)*7995
ctrl = 0
sprpriority = 4
velset = 0,0
movehitpersist = 1

[State 0, VarAdd]
type = VarAdd
trigger1 = anim = 9001 && time
var(56)=1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 9001 && time
value = 30-var(56)*5
scale = 1+0.01*time, 1+0.01*time
ignorehitpause = 1
persistent = 1
[State 1000, Snd]
type = playsnd
trigger1 = !time && anim = 9001; && anim = 1006
value = s9000, 98
[State 1000, Snd]
type = playsnd
trigger1 = !time && anim = 9001; && anim = 1006
value = s9000, 98

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 1015 

[State 0, Explod]
type = Explod
trigger1 = !time && anim = 1006
anim = 1006
ID = 1006
pos = 0,0
scale = const(size.xscale), const(size.yscale)
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
supermovetime = 12
pausemovetime = 12

[State 0, Explod]
type = Explod
trigger1 = !time && anim = 1006
anim = 1016
ID = 1016
pos = 0,0
scale = const(size.xscale), const(size.yscale)
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1
supermovetime = 12
pausemovetime = 12

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = prevstateno = 1015 && time >= 38
flag = invisible

;[State 1006, Vel]
;type = velmul
;trigger1 = 1
;x = 0.8
[State 1006, Assert]
type = trans
trigger1 = anim = 1006
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1000, Snd]
type = playsnd
trigger1 = !time && anim = 1006
value = 2, 13
[State 1006, End]
type = destroyself
trigger1 = !animtime && prevstateno != 1015
trigger2 = !animtime && prevstateno = 1015
trigger2 = var(10) != 3 || enemynear, movetype != H || enemynear, statetype = A



;========================< EX ERASER SHOT >=============================
; EX Eraser Shot
[Statedef 1015]
type = S
physics = N
movetype = A
anim = 1007 + root, var(56)*7993
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 0, VarAdd]
type = VarAdd
trigger1 = anim = 9000
var(56)=1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 9000
value = 30-var(56)*5
scale = 1, 1
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = !time && anim = 1007
anim = 1017-(root,var(44)=3||root,var(44)=1)*8
ID = 1015
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
sprpriority = 3
removeongethit = 1
[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1006
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = root,var(10)
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1005, timevar]
type = varadd
trigger1 = time && var(1) < 60
var(1) = 1

[State 1005, Vel]
type = velset
trigger1 = 1
x = ifelse(var(10) = 3, ifelse(p2dist x < 0, 1, 6), ifelse(var(10) = 2, 7, 8))
y = ifelse(var(10) = 3, -13+(time), ifelse(var(10) = 2, 0, 12-(time)))

[State 1005, Assert]
type = trans
trigger1 = anim = 1007
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
;
[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 12
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = var(10)!=3
priority = 4, Hit
attr = S, SP
damage = ceil(50 * (root, fvar(12))), 7
animtype = Hard
hitflag = MAF
guardflag = M
pausetime = 0, 12
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 32
ground.hittime = 32
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
air.velocity = -3, -3
air.fall = 1
getpower = 0,0
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 4
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1
fall.recover = 1
fall.recovertime = 22

[State 1005, Hit]
type = hitdef
trigger1 = var(10)=3
priority = 4, Hit
attr = S, SP
damage = ceil(50 * (root, fvar(12))), 7
animtype = Hard
hitflag = MAFD
guardflag = H
pausetime = 0, 12
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
down.velocity = 0, -4
air.velocity = -3, -3
air.fall = 1
getpower = 0,0
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 4
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1
fall.recover = 1
fall.recovertime = 22

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1005, End]
type = changestate
trigger1 = movecontact || (pos y >=0 && var(10)=3)
value = 1006
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = pos x != [ -280 , 280]
id = 1015 
[State 1005, End]
type = destroyself
trigger1 = pos x != [ -280 , 280]


;========================< BLASTER SHOT >=============================
; Blaster Shot
[Statedef 1055]
type = A
physics = N
movetype = A
anim = 1007 + root, var(56)*7993
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 0, VarAdd]
type = VarAdd
trigger1 = anim = 9000
var(56)=1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 9000
value = 30-var(56)*5
scale = 1, 1
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = !time && anim = 1007
anim = 1017-(root,var(44)=3||root,var(44)=1)*8
ID = 1015
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
sprpriority = 3
removeongethit = 1
[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1006
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1005, timevar]
type = varadd
trigger1 = time && var(1) < 60
var(1) = 1

[State 1005, Vel]
type = velset
trigger1 = 1
x = ifelse(var(10) = 3, 9.6-(time*0.21), ifelse(var(10) = 2, 7-(time*0.18), 3-(time*0.27)))
y = ifelse(var(10) = 3, -3+(time*0.8), ifelse(var(10) = 2, -1+(time*1), 2+(time*0.6)))

[State 1005, Assert]
type = trans
trigger1 = anim = 1007
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
;
[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 12
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, SP
damage = ceil(80 * (root, fvar(12))), 7
animtype = Hard
hitflag = MAFD
guardflag = H
pausetime = 0, 12
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
down.velocity = 0, -4
air.velocity = -3, -3
air.fall = 1
getpower = ifelse(p2movetype = H, 72, 144) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 4
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1
fall.recover = 1
fall.recovertime = 22

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1005, End]
type = changestate
trigger1 = movecontact || pos y >=0
value = 1006
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = pos x != [ -280 , 280]
id = 1015 
[State 1005, End]
type = destroyself
trigger1 = pos x != [ -280 , 280]


;========================< EX BLASTER SHOT >=============================
; EX Blaster Shot
[Statedef 1065]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !time && !prevstateno
value = 1005

[State 0, Explod]
type = Explod
trigger1 = !time && !prevstateno
anim = 1015-(root,var(44)=3||root,var(44)=1)*8
ID = 1015
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
ignorehitpause = 0
bindtime = -1
removetime = -1
sprpriority = 3
removeongethit = 0
[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2)<3,1065,1006)
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA;, NP, SP, HP
ignorehitpause = 1

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1005, timevar]
type = varadd
trigger1 = time && var(1) < 60
var(1) = 1

[State 1005, Vel]
type = velset
trigger1 = 1
x = ifelse(anim=1005,9,0)
y = ifelse(anim=1005,9,0)

[State 1005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
;
[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 12
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = var(2)=1 && anim = 1005
trigger2 = var(2)=2 && anim = 1005
priority = 4, Hit
attr = S, SP
damage = ceil(45 * (root, fvar(12))), 7
animtype = Hard
hitflag = MAFD
guardflag = H
pausetime = 4, 12
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = ifelse(anim=1055,-1,-3), ifelse(anim=1055,-6,0)
ground.cornerpush.veloff = 0
down.velocity = ifelse(anim=1055,-1,-3), ifelse(var(2)=2,-2,0)
air.velocity = ifelse(anim=1055,-1,-3), ifelse(anim=1055,-6,-3)
fall = ifelse(anim=1055,1,0)
air.fall = 1
getpower = 0, 0
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 4
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1
fall.recover = 1
fall.recovertime = 22

[State 1005, Hit]
type = hitdef
trigger1 = anim = 1055 && animelem = 2
priority = 4, Hit
attr = S, SP
damage = ceil(50 * (root, fvar(12))), 7
animtype = Hard
hitflag = MAFD
guardflag = H
pausetime = 4, 12
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = ifelse(anim=1055,-1,-3), ifelse(anim=1055,-6,0)
ground.cornerpush.veloff = 0
down.velocity = ifelse(anim=1055,-1,-3), ifelse(anim=1055,-6,-3)
air.velocity = ifelse(anim=1055,-1,-3), ifelse(anim=1055,-6,-3)
fall = 1
air.fall = 1
getpower = 0, 0
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 4
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1
fall.recover = 1
fall.recovertime = 22

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1005, End]
type = changeanim
trigger1 = anim != 1055 && pos y >=0
value = 1055
ignorehitpause = 1
[State 0, PosSet]
type = PosSet
trigger1 = anim = 1055
y = 0
ignorehitpause = 1 
persistent = 1
[State 3005, End]
type = changestate
trigger1 = movecontact || pos y >=0 && var(2)=1
value = ifelse(var(2) < 3 && pos y <0, 1065, 1006)
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = pos y >=0
;trigger2 = pos x != [ -280 , 280]
id = 1015 
[State 1005, End]
type = destroyself
trigger1 = anim = 1055 && !animtime
;trigger2 = pos x != [ -280 , 280]


;========================< ERASER BLOW >=============================
; Eraser Blow
[Statedef 1305]
type = S
physics = N
movetype = A
anim = 1305 + root, var(56)*7695
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 0, VarAdd]
type = VarAdd
trigger1 = anim = 9000
var(56)=1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 9000
value = 30-var(56)*5
scale = 1, 1
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = !time && anim = 1305
anim = 1307;3205
ID = 1315
scale = 0.25*const(size.xscale), 0.25*const(size.yscale)
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
sprpriority = 4
removeongethit = 1
[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1306
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1005, timevar]
type = varadd
trigger1 = time && var(1) < 60
var(1) = 1

[State 1005, Vel]
type = velset
trigger1 = 1
x = 1 + (0.025*time)

[State 1005, Assert]
type = trans
trigger1 = anim = 1305
trans = sub
alpha = 256, 256
ignorehitpause = 1
;
[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 12
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, SP
damage = ceil(80 * (root, fvar(12))), 7
animtype = Diagup
hitflag = MAF
guardflag = H
pausetime = 0, 12
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -1.5, -5
ground.cornerpush.veloff = 0
down.velocity = 0, -5
air.velocity = -1.5, -4.5
fall = 1
getpower = ifelse(p2movetype = H, 72, 144) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 3
yaccel = 0.3
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1
fall.recover = 1
fall.recovertime = 22
palfx.color = ifelse((root,var(44)=[2,3]),50,128)
palfx.sinadd=ifelse((root,var(44)=[2,3]),50,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),25,ifelse(root,var(44)=1,0,64)),ifelse((root,var(44)=[2,3]),80,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),128,ifelse(root,var(44)=1,96,0)),ifelse((root,var(44)=[2,3]),256,ifelse(root,var(44)=1,0,192)),ifelse((root,var(44)=[2,3]),512,ifelse(root,var(44)=1,192,96))
palfx.time = 48

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1 && root, var(44)!=1 && root, var(44)!=3
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7182) < 1 && (root, var(44)=1 || root, var(44)=3)
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7182
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1


[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1005, End]
type = changestate
trigger1 = movecontact || (pos y >=0 && var(10)=3)
value = 1306
ignorehitpause = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 5*time
scale = 0.25, 0.25
ignorehitpause = 1
persistent = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 75-15*var(10)
id = 1315
[State 1000, Glow]
type = helper
trigger1 = time = 75-15*var(10)
helpertype = normal
stateno = 1307
ID = 1305
name = "Eraser Blow"
postype = p1
supermovetime = 65535
pos = 0,0
size.xscale = 0.4*const(size.xscale)
size.yscale = 0.4*const(size.yscale)
ownpal = 1
[State 1005, End]
type = destroyself
trigger1 = time = 75-15*var(10)


;========================< EX ERASER BLOW >=============================
; EX Eraser Blow
[Statedef 1315]
type = S
physics = N
movetype = A
anim = 1305 + root, var(56)*7695
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 0, VarAdd]
type = VarAdd
trigger1 = anim = 9000
var(56)=1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 9000
value = 30-var(56)*5
scale = 1, 1
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = !time && anim = 1305
anim = 1307;3205
ID = 1315
scale = 0.25*const(size.xscale), 0.25*const(size.yscale)
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
sprpriority = 4
removeongethit = 1
[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1306
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1005, timevar]
type = varadd
trigger1 = time && var(1) < 60
var(1) = 1

[State 1005, Vel]
type = velset
trigger1 = 1
x = 3 + (0.05*time)

[State 1005, Assert]
type = trans
trigger1 = anim = 1305
trans = sub
alpha = 256, 256
ignorehitpause = 1
;
[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 12
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, SP
damage = ceil(90 * (root, fvar(12))), 7
animtype = Diagup
hitflag = MAF
guardflag = H
pausetime = 0, 12
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
numhits = 2
ground.velocity = -1.5, -5.5
ground.cornerpush.veloff = 0
down.velocity = 0, -6
air.velocity = -1.5, -5
fall = 1
getpower = ifelse(p2movetype = H, 72, 144) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 3
yaccel = 0.3
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1
fall.recover = 1
fall.recovertime = 22
palfx.color = ifelse((root,var(44)=[2,3]),50,128)
palfx.sinadd=ifelse((root,var(44)=[2,3]),50,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),25,ifelse(root,var(44)=1,0,64)),ifelse((root,var(44)=[2,3]),80,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),128,ifelse(root,var(44)=1,96,0)),ifelse((root,var(44)=[2,3]),256,ifelse(root,var(44)=1,0,192)),ifelse((root,var(44)=[2,3]),512,ifelse(root,var(44)=1,192,96))
palfx.time = 48

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1 && root, var(44)!=1 && root, var(44)!=3
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7182) < 1 && (root, var(44)=1 || root, var(44)=3)
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7182
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1


[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1005, End]
type = changestate
trigger1 = movecontact
value = 1306
ignorehitpause = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim != 9000
value = 5*time
scale = 0.25, 0.25
ignorehitpause = 1
persistent = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = pos x != [ -300 , 300]
id = 1315 
[State 1005, End]
type = destroyself
trigger1 = pos x != [ -300 , 300]


[Statedef 1306]
type = A
physics = N
movetype = I
anim = 1016 + root, var(56)*7985
ctrl = 0
sprpriority = 4
velset = 0,0
movehitpersist = 1

[State 0, VarAdd]
type = VarAdd
trigger1 = anim = 9001 && time
var(56)=1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 9001 && time
value = 30-var(56)*5
scale = 1+0.01*time, 1+0.01*time
ignorehitpause = 1
persistent = 1
[State 1000, Snd]
type = playsnd
trigger1 = !time && anim = 9001; && anim = 1006
value = s9000, 98
[State 1000, Snd]
type = playsnd
trigger1 = !time && anim = 9001; && anim = 1006
value = s9000, 98

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 1315 

[State 0, Explod]
type = Explod
trigger1 = !time && anim = 1016
anim = 1006
ID = 1306
pos = 0,0
scale = const(size.xscale), const(size.yscale)
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1
supermovetime = 12
pausemovetime = 12

[State 0, Explod]
type = Explod
trigger1 = !time && anim = 1016
anim = 1016
ID = 1306
pos = 0,0
scale = const(size.xscale), const(size.yscale)
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
supermovetime = 12
pausemovetime = 12

;[State 1006, Vel]
;type = velmul
;trigger1 = 1
;x = 0.8
[State 1006, Assert]
type = trans
trigger1 = anim = 1016
trans = sub
alpha = 256, 256
ignorehitpause = 1
[State 1000, Snd]
type = playsnd
trigger1 = !time && anim = 1016
value = 2, 15
[State 1006, End]
type = destroyself
trigger1 = !animtime

[Statedef 1307]
type = A
physics = N
movetype = I
anim = 1306
ctrl = 0
sprpriority = 4
velset = 0,0
movehitpersist = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*2
scale = 0.5+0.02*time,0.5+0.02*time
ignorehitpause = 1
persistent = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5,17

[State 1250, NHB]
type=nothitby
trigger1= 1
time=1
value=SCA
ignorehitpause=1

[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-16*time, 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = !animtime

;========================< ERASER CANNON >=============================
; Eraser Cannon
[Statedef 3005]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 0, Explod]
type = Explod
trigger1 = !time && !prevstateno
anim = 3006
ID = 3006
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
ignorehitpause = 0
bindtime = -1
removetime = -1
sprpriority = 3
removeongethit = 0
[State 4305, Dust]
type = explod
trigger1 = !(time % 6)
anim = 8122
ID = 8122
sprpriority = 4
bindtime = -1
postype = p1
pos = 0, -ceil(pos y) + 7
scale = 0.5, 0.5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3025, particles]
type = explod
trigger1 = 1
vel = -5 -(random / 2000.0), 0
accel = 0, 0.100- (0.002*(random%100))
anim = 7180
sprpriority = 2
postype = p1
pos = -20, 0
random = 40, 20
facing = -1 + (random < 500) * 2
vfacing = -1 + (random < 500) * 2
scale = 0.25, 0.25
ownpal = 1
ignorehitpause = 1

[State 3025, particles]
type = explod
trigger1 = 1
vel = -5 -(random / 2000.0), 0
accel = 0, 0.100- (0.002*(random%100))
anim = 8150
trans = Sub
sprpriority = -1
postype = p1
pos = -20, 0
random = 40, 20
facing = -1 + (random < 500) * 2
vfacing = -1 + (random < 500) * 2
scale = 0.125, 0.125
ownpal = 1
ignorehitpause = 1

[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < 8, 3005, 3006)
ignorehitpause = 1
[State 3005, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3005, Strength]
type = varset
trigger1 = !time && !prevstateno
var(10) = 5
[State 3005, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 3005

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 3005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3005, timevar]
type = varadd
trigger1 = time
var(1) = 1

[State 3005, Vel]
type = velset
trigger1 = 1
x = ifelse((time < 2 && var(2) > 1 && pos x !=[-200,200]), 4, 12)
y = 0

[State 3005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 12
channel = 1
persistent = 0
ignorehitpause = 1

[State 3005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, HP
damage = ceil(33 * (root, fvar(12))), 4
animtype = diagup
hitflag = MAF
guardflag = M
pausetime = ifelse(var(2)<8,4,0), ifelse(var(2)<8,4,0)
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1; = s7001
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -8, -ifelse(var(2)<8,2,6)
yaccel = 0.3
ground.cornerpush.veloff = 0
air.velocity = -8, -ifelse(var(2)<8,2,6)
guard.velocity = -10.52
sprpriority = 4
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((root,var(44)=[2,3]),50,128)
palfx.sinadd=ifelse((root,var(44)=[2,3]),50,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),25,ifelse(root,var(44)=1,0,64)),ifelse((root,var(44)=[2,3]),80,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),128,ifelse(root,var(44)=1,96,0)),ifelse((root,var(44)=[2,3]),256,ifelse(root,var(44)=1,0,192)),ifelse((root,var(44)=[2,3]),512,ifelse(root,var(44)=1,192,96))
palfx.time = 48

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1 && root, var(44)!=1 && root, var(44)!=3
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7182) < 1 && (root, var(44)=1 || root, var(44)=3)
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7182
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 3005, End]
type = changestate
trigger1 = movecontact
value = ifelse(var(2) < 8, 3005, 3006)
ignorehitpause = 1
[State 3005, End]
type = removeexplod
trigger1 = pos x != [ -280 , 280]
ID = 3006
[State 3005, End]
type = destroyself
trigger1 = pos x != [ -280 , 280]

[Statedef 3006]
type = A
physics = N
movetype = I
anim = 1006
ctrl = 0
sprpriority = 4
velset = 0,0
movehitpersist = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno = 810
pos = 42*root,const(size.xscale),-123*root,const(size.yscale)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 3006

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 1016
ID = 1016
pos = 0,0
scale = const(size.xscale), const(size.yscale)
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

;[State 1006, Vel]
;type = velmul
;trigger1 = 1
;x = 0.8
[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1000, Snd]
type = playsnd
trigger1 = !time
value = 2, 15
[State 1006, End]
type = destroyself
trigger1 = !animtime


;========================< GIGANTIC ROAR >=============================
; Gigantic Roar
[Statedef 3105]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4
;
;[State 0, AngleDraw]
;type = AngleDraw
;trigger1 = 1
;value = 15
;scale = ifelse(time<=20,0.25+(time*0.0375),1),1
;ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = !time && !prevstateno
anim = 3106
ID = 3106
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
ignorehitpause = 0
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 0
[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < 8, 3105, 3106)
ignorehitpause = 1
[State 3005, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3005, Strength]
type = varset
trigger1 = !time && !prevstateno
var(10) = 5
[State 3005, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 3105

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 3005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3005, timevar]
type = varadd
trigger1 = time
var(1) = 1
;
;[State 3005, Vel]
;type = velset
;trigger1 = 1
;x = 15;ifelse((time < 1 && var(2) > 1), 8, 12)
;y = -3.5

[State 3005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 16
channel = 1
persistent = 0
ignorehitpause = 1

[State 3005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, HP
damage = ceil(222 * (root, fvar(12))), 4
animtype = diagup
hitflag = MAF
guardflag = M
pausetime = 0, 4
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1; = s7001
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -8, -8
yaccel = 0.3
ground.cornerpush.veloff = 0
air.velocity = -8, -8
guard.velocity = -10.52
sprpriority = 4
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((root,var(44)=[2,3]),50,128)
palfx.sinadd=ifelse((root,var(44)=[2,3]),50,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),25,ifelse(root,var(44)=1,0,64)),ifelse((root,var(44)=[2,3]),80,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),128,ifelse(root,var(44)=1,96,0)),ifelse((root,var(44)=[2,3]),256,ifelse(root,var(44)=1,0,192)),ifelse((root,var(44)=[2,3]),512,ifelse(root,var(44)=1,192,96))
palfx.time = 64

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1 && root, var(44)!=1 && root, var(44)!=3
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7182) < 1 && (root, var(44)=1 || root, var(44)=3)
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7182
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P2
pos = 0, -120
facing = 1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P2
pos = 0, -120
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3005, End]
type = changestate
trigger1 = movecontact
value = ifelse(var(2) < 8&&(target,ishelper), 3105, 3106)
ignorehitpause = 1
[State 3005, End]
type = destroyself
trigger1 = !animtime



[Statedef 3106]
type = A
physics = N
movetype = I
ctrl = 0
movehitpersist = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = !animtime


;========================< BURST ERASER >=============================
; Burst Eraser
[Statedef 3205]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4
facep2 = 1

[State 0, Explod]
type = Explod
trigger1 = !time && !prevstateno
anim = 3205
ID = 3205
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removeongethit = 0
removetime = -1
sprpriority = 4

[State 0, Explod]
type = Explod
trigger1 = !time && !prevstateno
anim = 3207+(root,var(44)=3||root,var(44)=1)
ID = 3205
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
removeongethit = 0
sprpriority = -4

[State 4305, Dust]
type = explod
trigger1 = !(time % 6)
anim = 8106
ID = 8106
sprpriority = -1
postype = p1
pos = 0, -ceil(pos y) + 4
scale = 1, 1
[State 0, VarSet]
type = VarSet
trigger1 = 1
var(11) = (0.75+(0.25*(1+(random%60))))*ifelse(random<500,1,-1)
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = 1
var(12) = (0.75+(0.25*(1+(random%60))))*ifelse(random<500,1,-1)
ignorehitpause = 1

[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3205
ignorehitpause = 1
[State 3005, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3005, Strength]
type = varset
trigger1 = !time && !prevstateno
var(10) = 5
[State 3005, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 3205
[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0, floor(-80 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 3005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3005, timevar]
type = varadd
trigger1 = time
var(1) = 1

[State 3005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 0, 256
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 12
channel = 1
persistent = 0
ignorehitpause = 1

[State 3005, Hit]
type = hitdef
;trigger1 = var(2)<=8
trigger1 = 1
priority = 4, Hit
attr = S, HP
damage = ceil(32 * (root, fvar(12))), 4
animtype = up
hitflag = MAFD
guardflag = MA
pausetime = ifelse(var(2)<8,8,0), ifelse(var(2)<8,10,0)
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1; = s7001
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
sprpriority = 4
ground.hittime = 16
;ground.velocity = -ifelse(var(2)<8,0,6), -ifelse(var(2)<8,0,7)
ground.velocity = -ifelse(var(2)<8,6,6), -ifelse(var(2)<8,7,7)
;down.velocity = -ifelse(var(2)<8,0,6), -ifelse(var(2)<8,0,7)
down.velocity = -ifelse(var(2)<8,6,6), -ifelse(var(2)<8,7,7)
yaccel = 0.3
ground.cornerpush.veloff = 0
;air.velocity = -ifelse(var(2)<8,-1,6), -ifelse(var(2)<8,0,7)
air.velocity = -ifelse(var(2)<8,6,6), -ifelse(var(2)<8,7,7)
guard.velocity = -10.52
fall = 1
air.fall = 1
p2facing = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((root,var(44)=2),50,128)
palfx.sinadd=ifelse(root,var(44)=2,50,ifelse(root,var(44)=1||root,var(44)=3,64,0)),ifelse(root,var(44)=2,25,ifelse(root,var(44)=1,0,64)),ifelse(root,var(44)=2,80,ifelse(root,var(44)=1,64,0)),ifelse(root,var(44)=2,8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),192,ifelse(root,var(44)=1,192,0)), ifelse((root,var(44)=2),256,ifelse(root,var(44)=1,0,ifelse(root,var(44)=3,128,192))), ifelse(root,var(44)=3,0,ifelse((root,var(44)=2),512,96))
palfx.time = 48

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P2
pos = 0, -80
facing = 1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P2
pos = 0, -80
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3005, End]
type = changestate
trigger1 = movecontact || root, anim != 3200
value = ifelse(root, anim = 3200 && (var(2) < 8 || !numtarget), 3205, 3206)
;value = ifelse(root, anim != 3200, 3206, 3205)
ignorehitpause = 1

[Statedef 3206]
type = A
physics = N
movetype = I
anim = 3206
ctrl = 0
sprpriority = 4
velset = 0,0
movehitpersist = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*2
scale = 1+0.1*time,1+0.1*time
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = !time && prevstateno = 3905
anim = 3906
ID = 1016
pos = 0,0
scale = const(size.xscale)*2, const(size.yscale)*2
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = !time && prevstateno = 3905
anim = 3907
ID = 1016
pos = 0,0
scale = const(size.xscale)*2, const(size.yscale)*2
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 1000, Snd]
type = playsnd
trigger1 = !time && (prevstateno = 3905 || prevstateno = 4405)
value = 2, 15

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 3205 

[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-8*time, 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = !animtime


; Gigantic Impact
[Statedef 3207]
type = A
physics = N
movetype = I
anim = 813
ctrl = 0
sprpriority = 4
velset = 0,0
movehitpersist = 1
[State 235, Snd]
type = playsnd
trigger1 = !time
value = s5, 7
channel = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = time<=32
value = time*4
scale = (9-0.25*time),(9-0.25*time)
ignorehitpause = 1
persistent = 1
[State 0, Explod]
type = Explod
trigger1 = !time
anim = 812
ID = 1015
scale = 0.25,0.25
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
sprpriority = 3
removeongethit = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time <= 32
ID = 1015
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = (0.03125*time)*const(size.xscale),(0.03125*time)*const(size.yscale)
trans = addalpha
alpha = (8*time),256
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 42*root,const(size.xscale),-123*root,const(size.yscale)


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 3205 
[State 1006, Assert]
type = trans
trigger1 = time<=32
trans = addalpha
alpha = 8*time, 256
ignorehitpause = 1
[State 1000, Explod]
type = helper
trigger1 = time>=32
helpertype = normal
stateno = 3006
ID = 813
name = "Explod"
postype = p1
pos = 0,0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
[State 1006, End]
type = removeexplod
trigger1 = time>=32
ID = 1015
[State 1006, End]
type = stopsnd
trigger1 = time>=32
channel = 1
[State 1006, End]
type = destroyself
trigger1 = time>=32


;========================< FULL POWER ENERGY WAVE >=============================
; FullPower EnergyWave
[Statedef 3305]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4
facep2 = 0

[State 3000, Full Power Energy Wave]
type = helper
trigger1 = !time && !prevstateno
helpertype = normal
stateno = 3307
ID = 3307
name = "Full Power Energy Wave"
postype = p1
facing = 1
pos = 0,0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
[State 0, AngleDraw]
type = AngleDraw
trigger1 = !prevstateno || (time && prevstateno)
value = -33
scale = 0.5,0.5
ignorehitpause = 1
persistent = 1

[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3205
ignorehitpause = 1
[State 3005, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3005, Strength]
type = varset
trigger1 = !time && !prevstateno
var(10) = 5
[State 3005, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 3305
[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 55, floor(-105 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 3005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3005, timevar]
type = varadd
trigger1 = time
var(1) = 1

[State 3005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 12
channel = 1
persistent = 0
ignorehitpause = 1

[State 3005, Hit]
type = hitdef
trigger1 = !prevstateno || (time=6&&prevstateno)
priority = 4, Hit
attr = S, HP
damage = ceil(32 * (root, fvar(12))), 4
animtype = up
hitflag = MAFD
guardflag = M
pausetime = 0, ifelse(var(2)<8,10,0)
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1; = s7001
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
;ground.velocity = -ifelse(var(2)<8,0,6), -ifelse(var(2)<8,0,7)
ground.velocity = -ifelse(var(2)<8,6,6), -ifelse(var(2)<8,7,7)
;down.velocity = -ifelse(var(2)<8,0,6), -ifelse(var(2)<8,0,7)
down.velocity = -ifelse(var(2)<8,6,6), -ifelse(var(2)<8,7,7)
yaccel = 0.3
ground.cornerpush.veloff = 0
;air.velocity = -ifelse(var(2)<8,-1,6), -ifelse(var(2)<8,0,7)
air.velocity = -ifelse(var(2)<8,6,6), -ifelse(var(2)<8,7,7)
guard.velocity = -10.52
fall = 1
air.fall = 1
p2facing = 1
sprpriority = 4
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((root,var(44)=[2,3]),50,128)
palfx.sinadd=ifelse((root,var(44)=[2,3]),50,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),25,ifelse(root,var(44)=1,0,64)),ifelse((root,var(44)=[2,3]),80,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),128,ifelse(root,var(44)=1,96,0)),ifelse((root,var(44)=[2,3]),256,ifelse(root,var(44)=1,0,192)),ifelse((root,var(44)=[2,3]),512,ifelse(root,var(44)=1,192,96))
palfx.time = 48

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1 && root, var(44)!=1 && root, var(44)!=3
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7182) < 1 && (root, var(44)=1 || root, var(44)=3)
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7182
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P2
pos = 0, -80
facing = 1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P2
pos = 0, -80
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3005, End]
type = changestate
trigger1 = movecontact || root, anim != 3300
value = ifelse(root, anim = 3300 && (var(2) < 8), 3305, 3306)
;value = ifelse(root, anim != 3200, 3206, 3205)
ignorehitpause = 1



[Statedef 3306]
type = A
physics = N
movetype = I
ctrl = 0
movehitpersist = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time && prevstateno=3305
value = -33
scale = 0.5+0.02*time,0.5+0.02*time
ignorehitpause = 1
persistent = 1
[State 0, AngleDraw]
type = removeexplod
trigger1 = time
ID = 3306
ignorehitpause = 1
persistent = 1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = ifelse(time>=16,0,256-16*time), 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = time >= 40

[Statedef 3307]
type = A
physics = N
movetype = I
anim = 3306
ctrl = 0
sprpriority = -4
velset = 0,0
movehitpersist = 1
[State 0, BindToParent]
type = BindToParent
trigger1 = 1
pos = 0,0
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -33
;scale = 0.6,0.6
scale = 0.5,0.5
ignorehitpause = 1
persistent = 1
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1006, Assert]
type = trans
trigger1 = 1
trans = sub
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = parent, stateno != 3305


;========================< ERASER SHOT VOLLEY >=============================
; Eraser Shot Volley (L)
[Statedef 3505]
type = S
physics = N
movetype = A
anim = 1005 + root, var(56)*7997
ctrl = 0
velset = 0, 0

[State 0, VarAdd]
type = VarAdd
trigger1 = anim = 9002
var(56)=1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 9002
value = 30-var(56)*5
scale = 1, 1
ignorehitpause = 1
persistent = 1

[State 1005, sprpriority]
type = varadd
trigger1 = !time
var(4) = ifelse(random<600,-2,-4)
[State 0, SprPriority]
type = SprPriority
trigger1 = !time
value = var(4)
ignorehitpause = 1
persistent = 1
[State 0, Explod]
type = Explod
trigger1 = !time && anim = 1005
anim = 1015-(root,var(44)=3||root,var(44)=1)*7
ID = 1015
scale = 0.25, 0.25
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
sprpriority = var(4)-1
removeongethit = 1
[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3506
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = root,var(10)
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1005, directionvar]
type = varadd
trigger1 = !time
var(1) = 0+(random%8)
[State 1005, directionvar]
type = varadd
trigger1 = !time
var(2) = 6+(random%6)

[State 1005, Vel]
type = velset
trigger1 = 1
x = var(2)+(0.2*time)
y = (10+(var(1))-ifelse(time>=var(1),(time*2),0))

[State 1005, Assert]
type = trans
trigger1 = anim = 1005
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
;
[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget && winko
trigger1 = !(target, time) && target, movetype = H
value = 2, 12
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, SP
damage = ceil(24 * (root, fvar(12))), 2
animtype = Hard
hitflag = MAF
guardflag = M
pausetime = 0, 0
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
;guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -6, -6
ground.cornerpush.veloff = 0
air.velocity = -3, -1.25
fall = 1
getpower = 0,0
givepower = 36, 36
envshake.time = 14
sprpriority = var(4)
envshake.freq = 120
envshake.ampl = 4
p2facing = 1
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1
fall.recover = 1
fall.recovertime = 22
palfx.color = ifelse((root,var(44)=2),50,128)
palfx.sinadd=ifelse(root,var(44)=2,50,ifelse(root,var(44)=1||root,var(44)=3,64,0)),ifelse(root,var(44)=2,25,ifelse(root,var(44)=1,0,64)),ifelse(root,var(44)=2,80,ifelse(root,var(44)=1,64,0)),ifelse(root,var(44)=2,8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),192,ifelse(root,var(44)=1,192,0)), ifelse((root,var(44)=2),256,ifelse(root,var(44)=1,0,ifelse(root,var(44)=3,128,192))), ifelse(root,var(44)=3,0,ifelse((root,var(44)=2),512,96))
palfx.time = 48

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget && (numhelper(8000)<1)
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1005, End]
type = changestate
trigger1 = movecontact
value = 3506
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = pos x != [ -280 , 280]
id = 1015 
[State 1005, End]
type = destroyself
trigger1 = pos x != [ -280 , 280]



; Eraser Shot Volley (M)
[Statedef 3515]
type = S
physics = N
movetype = A
anim = 1005 + root, var(56)*7997
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 0, VarAdd]
type = VarAdd
trigger1 = anim = 9002
var(56)=1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 9002
value = 30-var(56)*5
scale = 1, 1
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = !time && anim = 1005
anim = 1015-(root,var(44)=3||root,var(44)=1)*7
ID = 1015
scale = 0.25, 0.25
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
sprpriority = 3
removeongethit = 1
[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3506
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = root,var(10)
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 1005, Vel]
type = velset
trigger1 = 1
x = 12+(0.2*time)

[State 1005, Assert]
type = trans
trigger1 = anim = 1005
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
;
[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 12
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, SP
damage = ceil(25 * (root, fvar(12))), 3
animtype = Hard
hitflag = MAF
guardflag = M
pausetime = 0, 0
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -6, -6
ground.cornerpush.veloff = 0
air.velocity = -3, -1.25
fall = 1
getpower = 0,0
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
p2facing = 1
yaccel = 0.5
sprpriority = 4
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1
fall.recover = 1
fall.recovertime = 22
palfx.color = ifelse((root,var(44)=2),50,128)
palfx.sinadd=ifelse(root,var(44)=2,50,ifelse(root,var(44)=1||root,var(44)=3,64,0)),ifelse(root,var(44)=2,25,ifelse(root,var(44)=1,0,64)),ifelse(root,var(44)=2,80,ifelse(root,var(44)=1,64,0)),ifelse(root,var(44)=2,8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),192,ifelse(root,var(44)=1,192,0)), ifelse((root,var(44)=2),256,ifelse(root,var(44)=1,0,ifelse(root,var(44)=3,128,192))), ifelse(root,var(44)=3,0,ifelse((root,var(44)=2),512,96))
palfx.time = 48

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1005, End]
type = changestate
trigger1 = movecontact || pos y >=0
value = 3506
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = pos x != [ -280 , 280]
id = 1015 
[State 1005, End]
type = destroyself
trigger1 = pos x != [ -280 , 280]



; Eraser Shot Volley (H)
[Statedef 3525]
type = S
physics = N
movetype = A
anim = 1005 + root, var(56)*7997
ctrl = 0
velset = 0, 0

[State 0, VarAdd]
type = VarAdd
trigger1 = anim = 9002
var(56)=1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 9002
value = 30-var(56)*5
scale = 1, 1
ignorehitpause = 1
persistent = 1

[State 1005, sprpriority]
type = varadd
trigger1 = !time
var(4) = ifelse(random<600,-2,-4)
[State 0, SprPriority]
type = SprPriority
trigger1 = !time
value = var(4)
ignorehitpause = 1
persistent = 1
[State 0, Explod]
type = Explod
trigger1 = !time && anim = 1005
anim = 1015-(root,var(44)=3||root,var(44)=1)*7
ID = 1015
scale = 0.25, 0.25
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
sprpriority = var(4)-1
removeongethit = 1
[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3506
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = root,var(10)
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1005, directionvar]
type = varadd
trigger1 = !time
var(1) = 0+(random%8)
[State 1005, directionvar]
type = varadd
trigger1 = !time
var(2) = 6+(random%6)

[State 1005, Vel]
type = velset
trigger1 = 1
x = var(2)+(0.2*time)
y = -(10+(var(1))-ifelse(time>=var(1),(time*2),0))

[State 1005, Assert]
type = trans
trigger1 = anim = 1005
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
;
[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget && winko
trigger1 = !(target, time) && target, movetype = H
value = 2, 12
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, SP
damage = ceil(24 * (root, fvar(12))), 2
animtype = Hard
hitflag = MAF
guardflag = M
pausetime = 0, 0
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
;guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -6, -6
ground.cornerpush.veloff = 0
air.velocity = -3, -1.25
fall = 1
getpower = 0,0
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
p2facing = 1
sprpriority = var(4)
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1
fall.recover = 1
fall.recovertime = 22
palfx.color = ifelse((root,var(44)=2),50,128)
palfx.sinadd=ifelse(root,var(44)=2,50,ifelse(root,var(44)=1||root,var(44)=3,64,0)),ifelse(root,var(44)=2,25,ifelse(root,var(44)=1,0,64)),ifelse(root,var(44)=2,80,ifelse(root,var(44)=1,64,0)),ifelse(root,var(44)=2,8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),192,ifelse(root,var(44)=1,192,0)), ifelse((root,var(44)=2),256,ifelse(root,var(44)=1,0,ifelse(root,var(44)=3,128,192))), ifelse(root,var(44)=3,0,ifelse((root,var(44)=2),512,96))
palfx.time = 48

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget && (numhelper(8000)<1)
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1005, End]
type = changestate
trigger1 = movecontact || pos y >=0
value = 3506
ignorehitpause = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = pos x != [ -280 , 280]
id = 1015 
[State 1005, End]
type = destroyself
trigger1 = pos x != [ -280 , 280]


[Statedef 3506]
type = A
physics = N
movetype = I
anim = 1006 + root, var(56)*7995
ctrl = 0
;sprpriority = 4
velset = 0,0
movehitpersist = 1

[State 0, VarAdd]
type = VarAdd
trigger1 = anim = 9001 && time
var(56)=1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 9001 && time
value = 30-var(56)*5
scale = 1+0.01*time, 1+0.01*time
ignorehitpause = 1
persistent = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 1015 
;
;[State 0, Explod]
;type = Explod
;trigger1 = !time
;anim = 1006
;ID = 1006
;pos = 0,0
;scale = 0.25, 0.25
;postype = p1  ;p2,front,back,left,right
;facing = 1
;bindtime = -1
;removetime = -2
;sprpriority = 4
;removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = !time && anim = 1006
anim = 1016
ID = 1016
pos = 0,0
scale = const(size.xscale), const(size.yscale)
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
sprpriority = ifelse(prevstateno=3515,3,var(4)-1)
removeongethit = 1

;[State 1006, Vel]
;type = velmul
;trigger1 = 1
;x = 0.8
[State 1006, Assert]
type = trans
trigger1 = anim = 1006
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1000, Snd]
type = playsnd
trigger1 = !time && prevstateno=3515 && anim = 1006
;trigger2 = (numhelper(8000)<1) && (prevstateno=[3505,3525]) && prevstateno!=3515
value = 2, 13
[State 1006, End]
type = destroyself
trigger1 = !animtime


;========================< PLANET GEYSER >=============================
; Planet Geyser
[Statedef 3605]
type = S
physics = N
movetype = A
anim = 1007 + root, var(56)*7993
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 0, VarAdd]
type = VarAdd
trigger1 = anim = 9000
var(56)=1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 9000
value = 30-var(56)*5
scale = 1, 1
ignorehitpause = 1
persistent = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, Explod]
type = Explod
trigger1 = !time && anim = 1007
anim = 1017-(root,var(44)=3||root,var(44)=1)*8
ID = 1015
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
sprpriority = 3
removeongethit = 1
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1005, timevar]
type = varadd
trigger1 = time && var(1) < 60
var(1) = 1

[State 1005, Vel]
type = velset
trigger1 = 1
x = 3
y = 10

[State 1005, Assert]
type = trans
trigger1 = anim = 1007
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
;
[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 12
persistent = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1005, End]
type = removeexplod
trigger1 = pos y >=0
ID = 1015
ignorehitpause = 1
[State 1005, End]
type = changestate
trigger1 = pos y >=0
value = 3606
ignorehitpause = 1


;
[Statedef 3606]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4
[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1000, Snd]
type = playsnd
trigger1 = !time
value = 2, 15

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, Explod]
type = Explod
trigger1 = !time && prevstateno = 3605
anim = 3606
ID = 3606
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
ignorehitpause = 0
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 0
[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3606
ignorehitpause = 1
[State 3005, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3005, Strength]
type = varset
trigger1 = !time && !prevstateno
var(10) = 5
[State 3005, Anim]
type = changeanim
trigger1 = !time && prevstateno = 3605
value = 3605

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 3005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3005, timevar]
type = varadd
trigger1 = time
var(1) = 1
;
;[State 3005, Vel]
;type = velset
;trigger1 = 1
;x = 15;ifelse((time < 1 && var(2) > 1), 8, 12)
;y = -3.5

[State 3005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 16
channel = 1
persistent = 0
ignorehitpause = 1

[State 3005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, HP
damage = ceil(111 * (root, fvar(12))), 4
animtype = diagup
hitflag = MAFD
guardflag = M
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1; = s7001
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -7, -7
yaccel = 0.3
ground.cornerpush.veloff = 0
air.velocity = -7, -7
guard.velocity = -10.52
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
sprpriority = 4
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((root,var(44)=[2,3]),50,128)
palfx.sinadd=ifelse((root,var(44)=[2,3]),50,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),25,ifelse(root,var(44)=1,0,64)),ifelse((root,var(44)=[2,3]),80,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),128,ifelse(root,var(44)=1,96,0)),ifelse((root,var(44)=[2,3]),256,ifelse(root,var(44)=1,0,192)),ifelse((root,var(44)=[2,3]),512,ifelse(root,var(44)=1,192,96))
palfx.time = 64

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1 && root, var(44)!=1 && root, var(44)!=3
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7182) < 1 && (root, var(44)=1 || root, var(44)=3)
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7182
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P2
pos = 40, -120
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P2
pos = 0, -120
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1000, Plaent Geyser]
type = helper
trigger1 = var(1)=11
helpertype = normal
stateno = 3607
ID = 3605
name = "Plant Geyser"
postype = p1
pos = 80,0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
[State 3005, End]
type = changestate
trigger1 = movecontact
value = 3106
ignorehitpause = 1
[State 3005, End]
type = destroyself
trigger1 = !animtime


[Statedef 3607]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4
[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1000, Snd]
type = playsnd
trigger1 = !time
value = 2, 15

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, Explod]
type = Explod
trigger1 = !time && !prevstateno
anim = 3606
ID = 3606
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
ignorehitpause = 0
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 0
[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3607
ignorehitpause = 1
[State 3005, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3005, Strength]
type = varset
trigger1 = !time && !prevstateno
var(10) = 5
[State 3005, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 3605

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 3005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3005, timevar]
type = varadd
trigger1 = time
var(1) = 1
;
;[State 3005, Vel]
;type = velset
;trigger1 = 1
;x = 15;ifelse((time < 1 && var(2) > 1), 8, 12)
;y = -3.5

[State 3005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 16
channel = 1
persistent = 0
ignorehitpause = 1

[State 3005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, HP
damage = ceil(111 * (root, fvar(12))), 4
animtype = diagup
hitflag = MAFD
guardflag = M
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1; = s7001
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -7, -7
yaccel = 0.3
ground.cornerpush.veloff = 0
air.velocity = -7, -7
guard.velocity = -10.52
fall = 1
air.fall = 1
fall.recover = 0
sprpriority = 4
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((root,var(44)=[2,3]),50,128)
palfx.sinadd=ifelse((root,var(44)=[2,3]),50,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),25,ifelse(root,var(44)=1,0,64)),ifelse((root,var(44)=[2,3]),80,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),128,ifelse(root,var(44)=1,96,0)),ifelse((root,var(44)=[2,3]),256,ifelse(root,var(44)=1,0,192)),ifelse((root,var(44)=[2,3]),512,ifelse(root,var(44)=1,192,96))
palfx.time = 64

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1 && root, var(44)!=1 && root, var(44)!=3
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7182) < 1 && (root, var(44)=1 || root, var(44)=3)
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7182
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P2
pos = 40, -120
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P2
pos = 0, -120
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1000, Plaent Geyser]
type = helper
trigger1 = var(1)=11
helpertype = normal
stateno = 3608
ID = 3605
name = "Plant Geyser"
postype = p1
pos = 80,0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
[State 3005, End]
type = changestate
trigger1 = movecontact
value = 3106
ignorehitpause = 1
[State 3005, End]
type = destroyself
trigger1 = !animtime

[Statedef 3608]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4
[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1000, Snd]
type = playsnd
trigger1 = !time
value = 2, 15

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, Explod]
type = Explod
trigger1 = !time && (!prevstateno || prevstateno = 3822)
anim = ifelse(prevstateno,3609,3606)
ID = 3606
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
ignorehitpause = 0
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 0
[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3608
ignorehitpause = 1
[State 3005, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3005, Strength]
type = varset
trigger1 = !time && !prevstateno
var(10) = 5
[State 3005, Anim]
type = changeanim
trigger1 = !time && (!prevstateno || prevstateno = 3822)
value = ifelse(prevstateno,3608,3607)

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 3005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3005, timevar]
type = varadd
trigger1 = time
var(1) = 1
;
;[State 3005, Vel]
;type = velset
;trigger1 = 1
;x = 15;ifelse((time < 1 && var(2) > 1), 8, 12)
;y = -3.5

[State 3005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 16
channel = 1
persistent = 0
ignorehitpause = 1

[State 3005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, HP
damage = ceil(111 * (root, fvar(12))), 4
animtype = diagup
hitflag = MAFD
guardflag = M
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1; = s7001
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = ifelse(prevstateno=3822,-1,-7), -7
down.velocity = ifelse(prevstateno=3822,-1,-7), -9
yaccel = 0.3
sprpriority = 4
ground.cornerpush.veloff = 0
air.velocity = ifelse(prevstateno=3822,-1,-7), -7
guard.velocity = -10.52
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((root,var(44)=[2,3]),50,128)
palfx.sinadd=ifelse((root,var(44)=[2,3]),50,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),25,ifelse(root,var(44)=1,0,64)),ifelse((root,var(44)=[2,3]),80,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),128,ifelse(root,var(44)=1,96,0)),ifelse((root,var(44)=[2,3]),256,ifelse(root,var(44)=1,0,192)),ifelse((root,var(44)=[2,3]),512,ifelse(root,var(44)=1,192,96))
palfx.time = 64

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1 && root, var(44)!=1 && root, var(44)!=3
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7182) < 1 && (root, var(44)=1 || root, var(44)=3)
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7182
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P2
pos = 40, -120
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P2
pos = 0, -120
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 3005, End]
type = changestate
trigger1 = movecontact
value = 3106
ignorehitpause = 1
[State 3005, End]
type = destroyself
trigger1 = !animtime

;========================< GIGANTIC BUSTER >=============================
; Gigantic Buster
[Statedef 3822]
type = S
physics = N
movetype = A
anim = 1007 + root, var(56)*7993
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 0, VarAdd]
type = VarAdd
trigger1 = anim = 9000
var(56)=1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 9000
value = 30-var(56)*5
scale = 0.25, 0.25
ignorehitpause = 1
persistent = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 1007
value = 0
scale = 0.25, 0.25
ignorehitpause = 1
persistent = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, Explod]
type = Explod
trigger1 = !time && anim = 1007
anim = 1017
ID = 1015
scale = 0.25*const(size.xscale), 0.25*const(size.yscale)
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
sprpriority = 3
removeongethit = 1
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = ifelse((pos x = [-150,150]),1,0)
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1005, timevar]
type = varadd
trigger1 = time && var(1) < 60
var(1) = 1

[State 1005, Vel]
type = velset
trigger1 = 1
x = (1.75-time*0.125)*var(10)
y = 7+time*0.05

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = !var(10)
movecamera = 0,1

[State 1005, Assert]
type = trans
trigger1 = anim = 1007
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
;
[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 12
persistent = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1005, End]
type = removeexplod
trigger1 = pos y >=0
ID = 1015
ignorehitpause = 1
[State 1005, End]
type = changestate
trigger1 = pos y >=0
value = 3608
ignorehitpause = 1


;========================< GIGANTIC METEOR >=============================
; Gigantic Meteor
[Statedef 3905]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4
facep2 = 0

[State 0, Explod]
type = Explod
trigger1 = !time && !prevstateno
anim = 1305
ID = 3205
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removeongethit = 0
removetime = -1
sprpriority = 4

[State 0, Explod]
type = Explod
trigger1 = !time && !prevstateno
anim = 1307
ID = 3205
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removeongethit = 0
removetime = -1
sprpriority = 5

[State 0, Explod]
type = Explod
trigger1 = !time && !prevstateno
anim = 3205
ID = 3205
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
removeongethit = 0
sprpriority = -4

[State 4305, Dust]
type = explod
trigger1 = !(time % 6)
anim = 8106
ID = 8106
sprpriority = -1
postype = p1
pos = 0, -ceil(pos y) + 4
scale = 1, 1
[State 0, VarSet]
type = VarSet
trigger1 = 1
var(11) = (0.75+(0.25*(1+(random%60))))*ifelse(random<500,1,-1)
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = 1
var(12) = (0.75+(0.25*(1+(random%60))))*ifelse(random<500,1,-1)
ignorehitpause = 1

[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3905
ignorehitpause = 1
[State 3005, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3005, Strength]
type = varset
trigger1 = !time && !prevstateno
var(10) = 5
[State 3005, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 3205
[State 0, VelSet]
type = VelSet
trigger1 = time>=2
x = ifelse((time < 30 && var(2) > 1 && pos x !=[-200,200]), 1.8, 4.5+var(1)*0.45)
y = 3+var(1)*0.3

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 3005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3005, timevar]
type = varadd
trigger1 = 1
var(1) = 1

[State 3005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 0, 256
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 12
channel = 1
persistent = 0
ignorehitpause = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 3205
scale = ifelse(var(1)>=32,1,0.05+0.0296875*var(1))*0.75,ifelse(var(1)>=32,1,0.05+0.0296875*var(1))*0.75

[State 3005, Hit]
type = hitdef
trigger1 = var(2)<=12
trigger1 = var(1)>=8 && time >= 2
priority = 4, Hit
attr = S, HP
damage = ceil(38 * (root, fvar(12))), 6
animtype = up
hitflag = MAFD
guardflag = H
pausetime = ifelse(var(2)<12,7,0), ifelse(var(2)<12,7,0)
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1; = s7001
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
sprpriority = 4
ground.hittime = 16
;ground.velocity = -ifelse(var(2)<8,0,6), -ifelse(var(2)<8,0,7)
ground.velocity = -ifelse(var(2)<12,6,6), -ifelse(var(2)<12,7,7)
;down.velocity = -ifelse(var(2)<8,0,6), -ifelse(var(2)<8,0,7)
down.velocity = -ifelse(var(2)<12,6,6), -ifelse(var(2)<12,7,7)
yaccel = 0.3
ground.cornerpush.veloff = 0
;air.velocity = -ifelse(var(2)<8,-1,6), -ifelse(var(2)<8,0,7)
air.velocity = -ifelse(var(2)<12,6,6), -ifelse(var(2)<12,-1,7)
guard.velocity = -10.52
fall = 1
air.fall = 1
p2facing = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((root,var(44)=[2,3]),50,128)
palfx.sinadd=ifelse((root,var(44)=[2,3]),50,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),25,ifelse(root,var(44)=1,0,64)),ifelse((root,var(44)=[2,3]),80,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),128,ifelse(root,var(44)=1,96,0)),ifelse((root,var(44)=[2,3]),256,ifelse(root,var(44)=1,0,192)),ifelse((root,var(44)=[2,3]),512,ifelse(root,var(44)=1,192,96))
palfx.time = 64

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P2
pos = 0, -80
facing = 1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P2
pos = 0, -80
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 0, DUSTO]
type = Explod
triggerall = pos y >=-30
trigger1 = !(time%3)
ID = 8130
anim = 8130
postype = p1
pos = -120, -pos y
removetime = -2
ignorehitpause = 1
supermovetime = 0
sprpriority = 2
ownpal = 1
scale = 0.125,0.125
removeongethit = 1
[State 0, DUSTO]
type = Explod
triggerall = pos y >=-30
trigger1 = !(time%3)
ID = 8130
anim = 8130
postype = p1
pos = 120,  -pos y
removetime = -2
ignorehitpause = 1
supermovetime = 0
facing = -1
sprpriority = 2
ownpal = 1
scale = 0.125,0.125
removeongethit = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3005, End]
type = changestate
trigger1 = movecontact
value = 3905
;value = ifelse(root, anim != 3200, 3206, 3205)
ignorehitpause = 1
[State 3005, End]
type = changestate
trigger1 = pos y >=0 && time>=3
value = 3206
;value = ifelse(root, anim != 3200, 3206, 3205)
ignorehitpause = 1



;========================< BLASTER METEOR >=============================
; Blaster Meteor
[Statedef 4005]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4
facep2 = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time && !prevstateno
value = s5,48
channel = 2
loop = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = animelemtime(1)*5
scale = 1+0.2*!(gametime%2),1+0.2*!(gametime%2)
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = !time && !prevstateno
anim = 3205
ID = 3205
scale = const(size.xscale), const(size.yscale)
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removeongethit = 0
removetime = -1
sprpriority = 4

[State 0, Explod]
type = Explod
trigger1 = !time && !prevstateno
anim = 3207+(root,var(44)=3||root,var(44)=1)
ID = 3205
scale = const(size.xscale), const(size.yscale)
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
removeongethit = 0
sprpriority = -4

[State 4305, Dust]
type = explod
trigger1 = !(time % 6)
anim = 8106
ID = 8106
sprpriority = -1
postype = p1
pos = 0, -ceil(pos y) + 4
scale = 1, 1
[State 0, VarSet]
type = VarSet
trigger1 = 1
var(11) = (0.75+(0.25*(1+(random%60))))*ifelse(random<500,1,-1)
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = 1
var(12) = (0.75+(0.25*(1+(random%60))))*ifelse(random<500,1,-1)
ignorehitpause = 1

[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 4005
ignorehitpause = 1
[State 3005, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3005, Strength]
type = varset
trigger1 = !time && !prevstateno
var(10) = 5
[State 3005, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 8523
[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0, floor(-80 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 3005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3005, timevar]
type = varadd
trigger1 = time
var(1) = 1

[State 3005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, ifelse(var(2)<16,12,7)
channel = 1
persistent = 0
ignorehitpause = 1

[State 3005, Hit]
type = hitdef
;trigger1 = var(2)<=8
trigger1 = 1
priority = 4, Hit
attr = S, HP
damage = ceil(33 * (root, fvar(12))), 4
animtype = up
hitflag = MAFD
guardflag = MA
pausetime = ifelse(var(2)<16,7,0), ifelse(var(2)<16,9,0)
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1; = s7001
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
;ground.velocity = -ifelse(var(2)<8,0,6), -ifelse(var(2)<8,0,7)
ground.velocity = -ifelse(var(2)<16,6,6), -ifelse(var(2)<16,7,7)
;down.velocity = -ifelse(var(2)<8,0,6), -ifelse(var(2)<8,0,7)
down.velocity = -ifelse(var(2)<16,6,6), -ifelse(var(2)<16,7,7)
yaccel = 0.3
ground.cornerpush.veloff = 0
;air.velocity = -ifelse(var(2)<8,-1,6), -ifelse(var(2)<8,0,7)
air.velocity = -ifelse(var(2)<16,6,6), -ifelse(var(2)<16,7,7)
guard.velocity = -10.52
fall = 1
air.fall = 1
p2facing = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((root,var(44)=2),50,128)
palfx.sinadd=ifelse(root,var(44)=2,50,ifelse(root,var(44)=1||root,var(44)=3,64,0)),ifelse(root,var(44)=2,25,ifelse(root,var(44)=1,0,64)),ifelse(root,var(44)=2,80,ifelse(root,var(44)=1,64,0)),ifelse(root,var(44)=2,8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),192,ifelse(root,var(44)=1,192,0)), ifelse((root,var(44)=2),256,ifelse(root,var(44)=1,0,ifelse(root,var(44)=3,128,192))), ifelse(root,var(44)=3,0,ifelse((root,var(44)=2),512,96))
palfx.time = 48

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1;ifelse(var(2)<16,1,2)
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P2
pos = 0, -80
facing = 1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P2
pos = 0, -80
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3005, End]
type = changestate
trigger1 = movecontact || root, anim != 4000
value = ifelse(root, anim = 4000 && (var(2) < 16 || !numtarget), 4005, 4006)
;value = ifelse(root, anim != 3200, 3206, 3205)
ignorehitpause = 1

[Statedef 4006]
type = A
physics = N
movetype = I
anim = 3206
ctrl = 0
sprpriority = 4
velset = 0,0
movehitpersist = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*2
scale = 1+0.1*time,1+0.1*time
ignorehitpause = 1
persistent = 1
[State 0, PlaySnd]
type = stopsnd
trigger1 = !time
channel = 2
[State 4001, fadeout]
type = bgpalfx
trigger1 = time = 1
time = 32
add = -128, -128, -128
sinadd = 128, 128, 128, 128

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 3205 

[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-8*time, 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = !animtime


;========================< OMEGA BLASTER >=============================
; Omega Blaster
[Statedef 4122]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = root, var(37) + 4
facep2 = 0
anim = 4110
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5,57
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5,57
[State 0, VelSet]
type = VelSet
trigger1 = 1
x = ifelse(ifelse(facing=-1,pos x >=0, pos x <=0),0,(((4.5-(0.15*time))*0.25)))
y = 0.1
[State 0, VelSet]
type = posset
trigger1 = time >= 70 && vel x = 0
x = 0
[State 0, ChangeState]
type = ChangeState
trigger1 = time >=90
value = 4123
ctrl = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -time*8
scale = 0.75*ifelse(((time%4)=[2,3]),1.1,1),0.75*ifelse(((time%4)=[2,3]),1.1,1)


[Statedef 4123]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = root, var(37) + 6
anim = 4111
facep2 = 0

;[State 0, Explod]
;type = Explod
;trigger1 = !time && prevstateno = 4122
;anim = 1305
;ID = 3206
;scale = 0.5, 0.5
;pos = 0,0
;postype = p1  ;p2,front,back,left,right
;facing = 1
;bindtime = -1
;removeongethit = 0
;removetime = -1
;sprpriority = root, var(37) + 4

;[State 4001, fadeout]
;type = bgpalfx
;trigger1 = 1
;time = 1
;add = -128, -128, -128
;sinadd = 0, 0, 0, 1
;persistent = 1

[State 3055, bgpal]
type = bgpalfx
trigger1 = root, var(44)!=[1,3]
trigger1 = !(time%5)
mul = 0, 256, 0
time = 5
add = -85, -85, -85
sinadd = 30, 30, 30, 5
color = 128
ignorehitpause = 1
[State 3056, bgpal]
type = bgpalfx
trigger1 = root, var(44)=2
trigger1 = !(time%5)
mul = 0, 0, 256
time = 5
add = -85, -85, -85
sinadd = 30, 30, 30, 5
color = 128
ignorehitpause = 1
[State 3056, bgpal]
type = bgpalfx
trigger1 = root, var(44)=3
trigger1 = !(time%5)
mul = 0, 128, 256
time = 5
add = -85, -85, -85
sinadd = 30, 30, 30, 5
color = 128
ignorehitpause = 1
[State 3055, bgpal]
type = bgpalfx
trigger1 = root, var(44)=1
trigger1 = !(time%5)
mul = 256, 0, 256
time = 5
add = -85, -85, -85
sinadd = 30, 30, 30, 5
color = 128
ignorehitpause = 1



[State 3005, timevar]
type = varadd
trigger1 = time
var(1) = 1
[State 1000, Glow]
type = helper
trigger1 = var(1) = 485
helpertype = normal
stateno = 4125
ID = 4111
name = "Omega Blaster"
postype = p1
supermovetime = 65535
pos = 0,0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal = 1

;[State 0, Explod]
;type = Explod
;trigger1 = !time && prevstateno = 4122
;anim = 4111
;ID = 3207
;scale = 0.5, 0.5
;pos = 0,0
;postype = p1  ;p2,front,back,left,right
;facing = 1
;bindtime = -1
;removeongethit = 0
;removetime = -1
;sprpriority = root, var(37) + 5
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5,56
channel = 2
persistent = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5,56
channel = 4
persistent = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = var(1) = 210
value = S5,55
channel = 2
persistent = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = var(1) = 210
value = S5,55
channel = 4
persistent = 1
[State 0, VarSet]
type = VarSet
trigger1 = !time
trigger2 = var(1) = 90
trigger3 = var(1) = 360
var(10)= pos y
[State 0, VarSet]
type = posset
trigger1 = 1
x = 0
[State 0, VarSet]
type = posset
trigger1 = var(1) = 210
y = -480
[State 0, VarSet]
type = posset
trigger1 = var(1) = 360
y = 240
[State 0, VarSet]
type = posset
trigger1 = var(1) = 540
y = var(10)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = var(1) = 210
value = S5,5
channel = 5
loop = 1


[State 0, VelSet]
type = VelSet
triggerall = var(1) < 210
trigger1 = var(1) >=90
trigger1 = pos y <= (var(10)+((var(1)-90)*4))
y = 10
[State 0, VelSet]
type = VelSet
triggerall = var(1) < 210
trigger1 = var(1) >=90
trigger1 = pos y >= (var(10)+10+((var(1)-90)*4))
y = -10

[State 0, VelSet]
type = VelSet
trigger1 = var(1) >= 210 && time <360
trigger2 = var(1) >= 540
y = 1
[State 0, VelSet]
type = VelSet
trigger1 = var(1) >= 360 && time <540
y = 0
[State 0, VelSet]
type = VelSet
trigger1 = var(1) >= 210 && time <360
y = 1
;
;[State 0, Explod]
;type = Explod
;trigger1 = !time && prevstateno = 4122
;anim = 4112
;ID = 3205
;scale = 0.5, 0.5
;pos = 0,0
;postype = p1  ;p2,front,back,left,right
;facing = 1
;bindtime = -1
;removetime = -1
;removeongethit = 0
;sprpriority = root, var(37) -4

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = root, var(37) + 6
;[State 0, ModifyExplod]
;type = ModifyExplod
;trigger1 = 1
;ID = 3205
;pos = 0,0
;postype = p1  ;p2,front,back,left,right
;bindtime = -1
;sprpriority = root, var(37) - 4
;scale = ifelse(var(1)>=32,1,0.05+0.0296875*var(1))*0.75,ifelse(var(1)>=32,1,0.05+0.0296875*var(1))*0.75
;ignorehitpause = 1
;trans = addalpha
;alpha = 256, 256

;[State 0, ModifyExplod]
;type = ModifyExplod
;trigger1 = 1
;ID = 3206
;pos = 0,0
;postype = p1  ;p2,front,back,left,right
;bindtime = -1
;sprpriority = root, var(37) + 4
;scale = ifelse(var(1)>=64,1,0.05+0.01484375*var(1))*ifelse(((time%4)=[2,3]),0.9,0.75),ifelse(var(1)>=64,1,0.05+0.01484375*var(1))*ifelse(((time%4)=[2,3]),0.9,0.75)
;ignorehitpause = 1
;trans = sub
[State 0, AngleDraw]
type = AngleDraw
trigger1 = var(1)<210
value = -8*var(1)
scale = ifelse(var(1)>=64,1,0.05+0.01484375*var(1))*ifelse(((time%4)=[2,3]),0.9,0.75),ifelse(var(1)>=64,1,0.05+0.01484375*var(1))*ifelse(((time%4)=[2,3]),0.9,0.75)
ignorehitpause = 1
persistent = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = var(1)>=210
value = -8*var(1)
scale = (1+((var(1)-210)*0.005))*ifelse(((time%4)=[2,3]),0.9,0.75),(1+((var(1)-210)*0.005))*ifelse(((time%4)=[2,3]),0.9,0.75)
ignorehitpause = 1
persistent = 1

;[State 0, ModifyExplod]
;type = ModifyExplod
;trigger1 = 1
;ID = 3207
;pos = 0,0
;postype = p1  ;p2,front,back,left,right
;bindtime = -1
;sprpriority = root, var(37) + 5
;scale = ifelse(var(1)>=32,1,0.05+0.0296875*var(1))*0.75,ifelse(var(1)>=32,1,0.05+0.0296875*var(1))*0.75
;ignorehitpause = 1
;trans = addalpha
;alpha = 256, 256


[State 4305, Dust]
type = explod
trigger1 = !(time % 6)
anim = 8106
ID = 8106
sprpriority = -1
postype = p1
pos = 0, -ceil(pos y) + 4
scale = (0.5+(var(1)-ifelse(var(1)>=440,440,210))*0.01), 0.5
[State 0, DUSTO]
type = Explod
trigger1 = !(time % 16)
ID = 8130
anim = 8132
postype = p1
pos = (-30-(var(1)-ifelse(var(1)>=440,440,210))*0.7), -pos y+4
removetime = -2
supermovetime = 0
sprpriority = 4
ownpal = 1
scale = (0.5+(var(1)-ifelse(var(1)>=440,440,210))*0.01)*0.5,0.5
removeongethit = 1
[State 0, DUSTO]
type = Explod
trigger1 = !(time % 16)
ID = 8130
anim = 8132
postype = p1
pos = (30+(var(1)-ifelse(var(1)>=440,440,210))*0.7), -pos y+4
removetime = -2
supermovetime = 0
facing = -1
sprpriority = 4
ownpal = 1
scale = (0.5+(var(1)-ifelse(var(1)>=440,440,210))*0.01)*0.5,0.5
removeongethit = 1

[State 0, VarSet]
type = VarSet
trigger1 = 1
var(11) = (0.75+(0.25*(1+(random%60))))*ifelse(random<500,1,-1)
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = 1
var(12) = (0.75+(0.25*(1+(random%60))))*ifelse(random<500,1,-1)
ignorehitpause = 1

[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 4123
ignorehitpause = 1
[State 3005, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1

[State 3005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1000, Glow]
type = helper
trigger1 = var(1) = 574
helpertype = normal
stateno = 4124
ID = 4111
name = "Omega Blaster"
postype = p1
supermovetime = 65535
pos = 0,0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal = 1
[State 0, PlaySnd]
type = stopsnd
trigger1 = var(1) >= 630
channel = 5
[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(1) >= 630


[Statedef 4124]
type = A
physics = N
movetype = A
anim = 4113
ctrl = 0
sprpriority = 25
velset = 0,0
movehitpersist = 1
[State 0, VarSet]
type = posset
trigger1 = 1
x = 0

[State 0, HitAdd]
type = HitAdd
;trigger1 = animelem = 1 || animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5
;trigger2 = animelem = 6 || animelem = 7 || animelem = 8 || animelem = 9 || animelem = 10
;trigger3 = animelem = 11 || animelem = 12 || animelem = 13 || animelem = 14
trigger1 = animelemtime(15)<36
trigger1 = !(time%7)
value = 1
ignorehitpause = 1
persistent = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(15)<35
trigger1 = !(time%7)
value = 2,12
channel = 1
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(15)<35
trigger1 = !(time%7)
value = 2,12
channel = 3
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(15)=35
value = 2,7
channel = 1
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(15)=35
value = 2,7
channel = 3
ignorehitpause = 1
[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelemtime(15)=35
value = -2
kill = 1

[State 3005, Hit]
type = hitdef
trigger1 = animelemtime(13) = 0 || animelemtime(13) = 60
priority = 4, Hit
attr = A, HP
damage = ceil(121 * (root, fvar(12))), 4
animtype = diagup
hitflag = MAFD
;guardflag = M
pausetime = 0, 0
sparkno = -1
numhits = 0
kill = 0
sparkxy = 0, 0
guard.sparkno = -1; = s7001
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -1, -10
yaccel = 0.3
ground.cornerpush.veloff = 0
air.velocity =  -1, -10
guard.velocity = -10.52
sprpriority = 4
ID = 4124
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((root,var(44)=[2,3]),50,128)
palfx.sinadd=ifelse((root,var(44)=[2,3]),50,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),25,ifelse(root,var(44)=1,0,64)),ifelse((root,var(44)=[2,3]),80,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),128,ifelse(root,var(44)=1,96,0)),ifelse((root,var(44)=[2,3]),256,ifelse(root,var(44)=1,0,192)),ifelse((root,var(44)=[2,3]),512,ifelse(root,var(44)=1,192,96))
palfx.time = 96
[State 0, TargetState]
type = TargetState
trigger1 = animelemtime(13) > 60 && NumTarget(4124) && movehit && matchover && winko
value = 1111193
ID = 4124
ignorehitpause = 1
persistent = 1

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1 && root, var(44)!=1 && root, var(44)!=3
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7182) < 1 && (root, var(44)=1 || root, var(44)=3)
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7182
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1


[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*8
scale = 1,1
ignorehitpause = 1
persistent = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = animelemtime(15)<64
flag = noshadow
flag2 = nofg
flag3 = nobardisplay
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = animelemtime(15)>=64
flag = noshadow

[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-ifelse(animelemtime(15)>=64,4*(animelemtime(15)-64),0), 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = !animtime


[Statedef 4125]
type = A
physics = N
movetype = I
ctrl = 0
anim = 8523
sprpriority = root, var(37) + 6
movehitpersist = 1
[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0
[State 0, VarSet]
type = VarSet
trigger1 = !time
var(1)= parent, var(1)
[State 0, VarSet]
type = Varadd
trigger1 = time
var(1)= 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5,30
persistent = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5,30
persistent = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 8*var(1)
scale = ceil((1+((var(1)-210)*0.005))*ifelse(((time%4)=[2,3]),1.8,1.5)),ceil((1+((var(1)-210)*0.005))*ifelse(((time%4)=[2,3]),1.8,1.5))
ignorehitpause = 1
persistent = 1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = !numhelper(4122)


;========================< DOUBLE ERASER CANNON >=============================
; Double Eraser Cannon
[Statedef 4205]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4
anim = 4205

[State 0, Explod]
type = Explod
trigger1 = !time && !prevstateno
anim = 4112
ID = 4112
scale = 0.125, 0.125
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
ignorehitpause = 0
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 0

[State 7180, flames]
type = explod
trigger1 = 1
anim = 7180
ID = 7180
sprpriority = 3
postype = p1
vel = -1, 0
pos = 0, 0
random = 40, 40
scale = 0.5, 0.5
ownpal = 1
[State 7180, flames]
type = explod
trigger1 = root,var(44)!=3
anim = 8150
ID = 8150
sprpriority = -3
postype = p1
vel = -1, 0
pos = 0, 0
random = 40, 40
scale = 0.5, 0.5
ownpal = 1

[State 4001, fadeout]
type = bgpalfx
trigger1 = 1
time = 1
add = -128, -128, -128
sinadd = 0, 0, 0, 1
persistent = 1
[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < 12, 4205, 4207)
ignorehitpause = 1
[State 3005, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3005, Vel]
type = velset
trigger1 = 1
x = ifelse(time < 2 && var(2) > 1, 4, 20)
y = 0

[State 3005, Strength]
type = varset
trigger1 = !time && !prevstateno
var(10) = 5

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 3005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3005, timevar]
type = varadd
trigger1 = time
var(1) = 1
;
;[State 3005, Vel]
;type = velset
;trigger1 = 1
;x = 15;ifelse((time < 1 && var(2) > 1), 8, 12)
;y = -3.5

[State 3005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 16
channel = 1
persistent = 0
ignorehitpause = 1

[State 3005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, HP
damage = ceil(90 * (root, fvar(12))), 27
animtype = diagup
hitflag = MAF
guardflag = M
pausetime = 0, 4
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1; = s7001
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -8, -8
yaccel = 0.3
ground.cornerpush.veloff = 0
air.velocity = -8, -8
guard.velocity = -10.52
sprpriority = 4
fall = 1
kill = 0
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((root,var(44)=[2,3]),50,128)
palfx.sinadd=ifelse((root,var(44)=[2,3]),50,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),25,ifelse(root,var(44)=1,0,64)),ifelse((root,var(44)=[2,3]),80,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),128,ifelse(root,var(44)=1,96,0)),ifelse((root,var(44)=[2,3]),256,ifelse(root,var(44)=1,0,192)),ifelse((root,var(44)=[2,3]),512,ifelse(root,var(44)=1,192,96))
palfx.time = 64

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P2
pos = 0, -120
facing = 1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P2
pos = 0, -120
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, VarSet]
type = parentvarset
trigger1 = moveguarded
var(11)=1

[State 3005, End]
type = changestate
trigger1 = movecontact
value = ifelse(movecontact && numtarget,4206,ifelse(!numtarget,4205,4207))
ignorehitpause = 1

[State 3005, End]
type = changestate
trigger1 = pos x != [ -280 , 280]
value = 4207
ignorehitpause = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 4112
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
scale = const(size.xscale)*0.125*ifelse(((time%4)=[2,3]),1.1,1), const(size.yscale)*0.125*ifelse(((time%4)=[2,3]),1.1,1)
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 8*var(1)
scale = 0.125*ifelse(((time%4)=[2,3]),1.1,1),0.125*ifelse(((time%4)=[2,3]),1.1,1)
ignorehitpause = 1
persistent = 1


[Statedef 4206]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4
anim = 4235

[State 1200,1]
type = Targetstate
trigger1 = !time
value = 1207
[State 1200,1]
type = TargetBind
trigger1 = 1
pos = 20, 50
time = 1

[State 0, Explod]
type = Explod
trigger1 = !time && !prevstateno
anim = 4112
ID = 4112
scale = 0.125, 0.125
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
ignorehitpause = 0
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 0

[State 7180, flames]
type = explod
trigger1 = 1
anim = 7180
ID = 7180
sprpriority = 3
postype = p1
vel = -1, 0
pos = 0, 0
random = 40, 40
scale = 0.5, 0.5
ownpal = 1
[State 7180, flames]
type = explod
trigger1 = root,var(44)!=3
anim = 8150
ID = 8150
sprpriority = -3
postype = p1
vel = -1, 0
pos = 0, 0
random = 40, 40
scale = 0.5, 0.5
ownpal = 1

[State 4001, fadeout]
type = bgpalfx
trigger1 = 1
time = 1
add = -128, -128, -128
sinadd = 0, 0, 0, 1
persistent = 1
ignorehitpause = 1
[State 3005, hitby]
type = nothitby
trigger1 = 1
time = 1
value = SCA
ignorehitpause = 1

[State 3005, Vel]
type = velset
trigger1 = 1
x = ifelse((time < 2 && var(2) > 1 && pos x !=[-200,200]), 4, 16)
y = -1

[State 3005, Strength]
type = varset
trigger1 = !time && !prevstateno
var(10) = 5
[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1
ignorehitpause = 1
[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 3005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3005, timevar]
type = varadd
trigger1 = time
var(1) = 1
;
;[State 3005, Vel]
;type = velset
;trigger1 = 1
;x = 15;ifelse((time < 1 && var(2) > 1), 8, 12)
;y = -3.5

[State 3005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 16
channel = 1
persistent = 0
ignorehitpause = 1

[State 3005, Hit]
type = hitdef
trigger1 = FrontEdgeBodyDist <= 10
trigger2 = Time >= 150
priority = 4, Hit
attr = S, HP
damage = ceil(ifelse((root,var(11)),27,90) * (root, fvar(12))), 27
animtype = diagup
hitflag = MAFD
pausetime = 0, 4
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1; = s7001
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -3, -3
yaccel = 0.075
ground.cornerpush.veloff = 0
air.velocity = -3, -3
guard.velocity = -10.52
sprpriority = 4
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
kill = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((root,var(44)=[2,3]),50,128)
palfx.sinadd=ifelse((root,var(44)=[2,3]),50,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),25,ifelse(root,var(44)=1,0,64)),ifelse((root,var(44)=[2,3]),80,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),128,ifelse(root,var(44)=1,96,0)),ifelse((root,var(44)=[2,3]),256,ifelse(root,var(44)=1,0,192)),ifelse((root,var(44)=[2,3]),512,ifelse(root,var(44)=1,192,96))
palfx.time = 64

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1 && root, var(44)!=1 && root, var(44)!=3
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7182) < 1 && (root, var(44)=1 || root, var(44)=3)
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7182
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P2
pos = 0, -120
facing = 1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3005, End]
type = changestate
trigger1 = movecontact
value = 4207
ignorehitpause = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 4112
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
scale = const(size.xscale)*(0.125+(0.006125*time))*ifelse(((time%4)=[2,3]),1.1,1), const(size.yscale)*(0.125+(0.006125*time))*ifelse(((time%4)=[2,3]),1.1,1)
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 8*var(1)
scale = (0.125+(0.006125*time))*ifelse(((time%4)=[2,3]),1.1,1),(0.125+(0.006125*time))*ifelse(((time%4)=[2,3]),1.1,1)
ignorehitpause = 1
persistent = 1


[Statedef 4207]
type = A
physics = N
movetype = I
anim = ifelse(prevstateno = 4205,1006,4208)
ctrl = 0
sprpriority = 4
velset = 0,0
movehitpersist = 1
[State 1200,1]
type = TargetBind
trigger1 = !time && prevstateno = 4206
pos = 20, 50
time = 1

[State 4001, fadeout]
type = bgpalfx
trigger1 = time = 1 && prevstateno = 4205
time = 32
add = -128, -128, -128
sinadd = 128, 128, 128, 128
[State 4001, fadeout]
type = bgpalfx
trigger1 = prevstateno = 4206
time = 1
add = -128, -128, -128
sinadd = 0, 0, 0, 1
persistent = 1
[State 740, FX]
type = helper
trigger1 = !time && prevstateno = 4206
helpertype = normal
stateno = 6028
ID = 6028
name = "Enviroment Color Distortion"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 0
supermovetime = 0
ownpal = 1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 4112

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 1016
ID = 1016
pos = 0,0
scale = const(size.xscale), const(size.yscale)
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

;[State 1006, Vel]
;type = velmul
;trigger1 = 1
;x = 0.8
[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1000, Snd]
type = playsnd
trigger1 = !time
value = 2, 15
[State 1006, End]
type = destroyself
trigger1 = !animtime


[Statedef 4215]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 0, Explod]
type = Explod
trigger1 = !time && !prevstateno
anim = 4216
ID = 3006
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
ignorehitpause = 0
bindtime = -1
removetime = -1
sprpriority = 3
removeongethit = 0
[State 4305, Dust]
type = explod
trigger1 = !(time % 6)
anim = 8122
ID = 8122
sprpriority = 4
bindtime = -1
postype = p1
pos = 0, -ceil(pos y) + 7
scale = 0.5, 0.5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3025, particles]
type = explod
trigger1 = 1
vel = -5 -(random / 2000.0), 0
accel = 0, 0.100- (0.002*(random%100))
anim = 7180
sprpriority = 2
postype = p1
pos = -20, 0
random = 40, 20
facing = -1 + (random < 500) * 2
vfacing = -1 + (random < 500) * 2
scale = 0.25, 0.25
ownpal = 1
ignorehitpause = 1

[State 3025, particles]
type = explod
trigger1 = 1
vel = -5 -(random / 2000.0), 0
accel = 0, 0.100- (0.002*(random%100))
anim = 8150
trans = Sub
sprpriority = -1
postype = p1
pos = -20, 0
random = 40, 20
facing = -1 + (random < 500) * 2
vfacing = -1 + (random < 500) * 2
scale = 0.125, 0.125
ownpal = 1
ignorehitpause = 1

[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < 12, 4215, 4216)
ignorehitpause = 1
[State 3005, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3005, Strength]
type = varset
trigger1 = !time && !prevstateno
var(10) = 5
[State 3005, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 4215

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 3005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3005, timevar]
type = varadd
trigger1 = time
var(1) = 1

[State 3005, Vel]
type = velset
trigger1 = 1
x = ifelse((time < 2 && var(2) > 1 && pos x !=[-200,200]), 4, 12)
y = 0

[State 3005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 12
channel = 1
persistent = 0
ignorehitpause = 1

[State 3005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, HP
damage = ceil(ifelse((root,var(11)),7,22) * (root, fvar(12))), 7
animtype = diagup
hitflag = MAF
;guardflag = M
pausetime = ifelse(var(2)<8,4,0), ifelse(var(2)<8,4,0)
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1; = s7001
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -0, -ifelse(var(2)<8,1,3.4)
yaccel = 0.06
ground.cornerpush.veloff = 0
air.velocity = -0, -ifelse(var(2)<8,1,3.4)
guard.velocity = -10.52
sprpriority = 4
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
kill = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((root,var(44)=2),50,128)
palfx.sinadd=ifelse(root,var(44)=2,50,ifelse(root,var(44)=1||root,var(44)=3,64,0)),ifelse(root,var(44)=2,25,ifelse(root,var(44)=1,0,64)),ifelse(root,var(44)=2,80,ifelse(root,var(44)=1,64,0)),ifelse(root,var(44)=2,8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),192,ifelse(root,var(44)=1,192,0)), ifelse((root,var(44)=2),256,ifelse(root,var(44)=1,0,ifelse(root,var(44)=3,128,192))), ifelse(root,var(44)=3,0,ifelse((root,var(44)=2),512,96))
palfx.time = 96

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 3005, End]
type = changestate
trigger1 = movecontact
value = ifelse(var(2) < 8, 4215, 4216)
ignorehitpause = 1
[State 3005, End]
type = removeexplod
trigger1 = pos x != [ -280 , 280]
ID = 3006
[State 3005, End]
type = destroyself
trigger1 = pos x != [ -280 , 280]


[Statedef 4216]
type = A
physics = N
movetype = I
anim = 4208
ctrl = 0
sprpriority = 4
velset = 0,0
movehitpersist = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno = 810
pos = 42*root,const(size.xscale),-123*root,const(size.yscale)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 3006

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 1016
ID = 1016
pos = 0,0
scale = const(size.xscale), const(size.yscale)
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

;[State 1006, Vel]
;type = velmul
;trigger1 = 1
;x = 0.8
[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1000, Snd]
type = playsnd
trigger1 = !time
value = 2, 15
[State 1006, End]
type = destroyself
trigger1 = !animtime




;============================< GIGANTIC OMEGASTORM >=================================
; Gigantic Omegastorm
[Statedef 4225]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 0
juggle = 0

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State 3055, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 4225
ignorehitpause = 1

[State 3055, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3055, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 4225

[State 3055, Bind]
type = bindtoroot
trigger1 = 1
pos = floor(90 * root, const(size.xscale)), floor(-116 * root, const(size.yscale))
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 4227
ID = 3080
pos = 3,0
postype = p1
bindtime = -1
removetime = 138
scale = .55,.55
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0
trans = addalpha
alpha = 256, 256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time <= 118
ID = 3080
scale = .55,.55
trans = addalpha
alpha = 256, 256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 118
ID = 3080
scale = .55,.55-((time-110)*.0275)
trans = addalpha
alpha = 256, 256

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 4226
ID = 3086
pos = 25,0
postype = p1
bindtime = -1
removetime = -2;75
scale = .5,.75;.5,1.25
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0
trans = addalpha
alpha = 150,256

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 4226
ID = 3083
pos = 25,0
postype = p1
bindtime = -1
removetime = -2;75
scale = .5,.75;.5,1.25
sprpriority = -3
ownpal = 1
removeongethit = 1
ignorehitpause = 0
trans = addalpha
alpha = 106,256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(3083)
ID = 3083
scale = .5,.75;.5,1.25
trans = addalpha
alpha = 150,256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(3086)
ID = 3086
scale = .5,.75;.5,1.25
trans = addalpha
alpha = 106,256

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(time%10) && animelemtime(55) <=1
trigger2 = animelemtime(55) = 0
value = 2, ifelse((animelem=55),7,12)
channel = 1
postype = p2
persistent = 1
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(time%10) && animelemtime(55) <=1
trigger2 = animelemtime(55) = 0
value = 2, ifelse((animelem=55),7,12)
channel = 3
postype = p2
persistent = 1
ignorehitpause = 1

[State 3005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3005, timevar]
type = varadd
trigger1 = time
var(1) = 1

[State 3005, Hit]
type = hitdef
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(5) = 0
trigger3 = animelemtime(10) = 0
trigger4 = animelemtime(15) = 0
trigger5 = animelemtime(20) = 0
trigger6 = animelemtime(25) = 0
trigger7 = animelemtime(30) = 0
trigger8 = animelemtime(35) = 0
trigger9 = animelemtime(40) = 0
trigger10 = animelemtime(45) = 0
trigger11 = animelemtime(50) = 0
priority = 4, Hit
attr = S, HP
damage = ceil(ifelse((root,var(11)),15,44) * (root, fvar(12))), 15
animtype = diagup
hitflag = MAFD
pausetime = 0, 12
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1; = s7001
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, -2
yaccel = 0.3
ground.cornerpush.veloff = 0
air.velocity = 0, -2
guard.velocity = -10.52
sprpriority = 4
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((root,var(44)=[2,3]),50,128)
palfx.sinadd=ifelse((root,var(44)=[2,3]),50,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),25,ifelse(root,var(44)=1,0,64)),ifelse((root,var(44)=[2,3]),80,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),128,ifelse(root,var(44)=1,96,0)),ifelse((root,var(44)=[2,3]),256,ifelse(root,var(44)=1,0,192)),ifelse((root,var(44)=[2,3]),512,ifelse(root,var(44)=1,192,96))
palfx.time = 48

[State 3005, Hit]
type = hitdef
trigger1 = animelemtime(55) = 0
priority = 4, Hit
attr = S, HP
damage = ceil(ifelse((root,var(11)),16,44) * (root, fvar(12))), 16
animtype = diagup
hitflag = MAFD
;guardflag = M
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1; = s7001
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, -9
yaccel = 0.3
ground.cornerpush.veloff = 0
air.velocity = 0, -9
guard.velocity = -10.52
sprpriority = 4
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((root,var(44)=[2,3]),50,128)
palfx.sinadd=ifelse((root,var(44)=[2,3]),50,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),25,ifelse(root,var(44)=1,0,64)),ifelse((root,var(44)=[2,3]),80,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),128,ifelse(root,var(44)=1,96,0)),ifelse((root,var(44)=[2,3]),256,ifelse(root,var(44)=1,0,192)),ifelse((root,var(44)=[2,3]),512,ifelse(root,var(44)=1,192,96))
palfx.time = 96

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1 && root, var(44)!=1 && root, var(44)!=3
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7182) < 1 && (root, var(44)=1 || root, var(44)=3)
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7182
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = movehit && numtarget
trigger1 = !(time%10) && animelemtime(55) <=1
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P2
pos = 0, -80
facing = 1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelemtime(55)>=1
movetype = I

[State 0, DestroySelf]
type = removeexplod
trigger1 = !animtime
ID = 3080
[State 0, DestroySelf]
type = DestroySelf
trigger1 = !animtime


;========================< ERASER BLOW (GIGANTIC CATASTROPHE) >=============================
; Gigantic Catastrophe 1
[Statedef 4305]
type = S
physics = N
movetype = A
anim = 4312
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 0, Explod]
type = Explod
trigger1 = !time && anim = 4312
anim = 1307;3205
ID = 1315
scale = 0.25*const(size.xscale), 0.25*const(size.yscale)
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
sprpriority = 4
removeongethit = 1
[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 4305
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1005, timevar]
type = varadd
trigger1 = time && var(1) < 60
var(1) = 1

[State 1005, Vel]
type = velset
trigger1 = 1
x = 3

[State 1005, Assert]
type = trans
trigger1 = anim = 1007
trans = sub
alpha = 256, 256
ignorehitpause = 1
;
[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 12
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, HP
damage = ceil(110 * (root, fvar(12))), 7
animtype = Diagup
hitflag = MAFD
;guardflag = H
pausetime = 0, 12
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
numhits = 0
ground.velocity = -0, -15
ground.cornerpush.veloff = 0
kill = 0
down.velocity = 0, -6
air.velocity = 0, -5
fall = 1
getpower = ifelse(p2movetype = H, 72, 144) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 3
yaccel = 0.3
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1
fall.recover = 1
fall.recovertime = 22
palfx.color = ifelse((root,var(44)=2),50,128)
palfx.sinadd=ifelse(root,var(44)=2,50,ifelse(root,var(44)=1||root,var(44)=3,64,0)),ifelse(root,var(44)=2,25,ifelse(root,var(44)=1,0,64)),ifelse(root,var(44)=2,80,ifelse(root,var(44)=1,64,0)),ifelse(root,var(44)=2,8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),192,ifelse(root,var(44)=1,192,0)), ifelse((root,var(44)=2),256,ifelse(root,var(44)=1,0,ifelse(root,var(44)=3,128,192))), ifelse(root,var(44)=3,0,ifelse((root,var(44)=2),512,96))
palfx.time = 48

[State 0, TargetState]
type = TargetState
trigger1 = movehit = 1 && numtarget
value = 1111152
ignorehitpause = 1
persistent = 0

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1005, End]
type = changestate
trigger1 = movecontact
value = 4306
ignorehitpause = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim != 9000
value = 5*time
scale = 0.25, 0.25
ignorehitpause = 1
persistent = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = pos x != [ -280 , 280]
id = 1315 
[State 1005, End]
type = destroyself
trigger1 = pos x != [ -300 , 300]


[Statedef 4306]
type = A
physics = N
movetype = I
anim = 1016 + root, var(56)*7985
ctrl = 0
sprpriority = 3
velset = 0,0
movehitpersist = 1

[State 0, VarAdd]
type = VarAdd
trigger1 = anim = 9001 && time
var(56)=1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 9001 && time
value = 30-var(56)*5
scale = 1+0.01*time, 1+0.01*time
ignorehitpause = 1
persistent = 1
[State 1000, Snd]
type = playsnd
trigger1 = !time && anim = 9001; && anim = 1006
value = s9000, 98
[State 1000, Snd]
type = playsnd
trigger1 = !time && anim = 9001; && anim = 1006
value = s9000, 98

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 1315 

[State 0, Explod]
type = Explod
trigger1 = !time && anim = 1016
anim = 1006
ID = 1306
pos = 0,0
scale = const(size.xscale), const(size.yscale)
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1

;[State 1006, Vel]
;type = velmul
;trigger1 = 1
;x = 0.8
[State 1006, Assert]
type = trans
trigger1 = anim = 1016
trans = sub
alpha = 256, 256
ignorehitpause = 1
[State 1000, Snd]
type = playsnd
trigger1 = !time && anim = 1016
value = 2, 15
[State 1006, End]
type = destroyself
trigger1 = !animtime

;========================< GIGANTIC CATSTROPHE HYPE BEAM >=============================
; GIGANTIC HYPE!
[StateDef 4315]
type = A
velSet = 0,0
anim = 4303
sprpriority = 14
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = animelemtime(19)>=0 && animelemtime(40) <=0
flag = nobardisplay
flag2 = noshadow
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = animelemtime(19)<0
trigger2 = animelemtime(40)>0
flag = noshadow
[State 0, VarSet]
type = VarSet
trigger1 = !time
var(2) = root, var(2)

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(5) = root, var(5)

[State -3, Energy Color]
type = remappal
trigger1 = animelemtime(19)=0
trigger1 = root,var(44)=1 || root,var(44)=3
source = 4050, 35
dest = 4050, ifelse((root,var(44)=1),3,16)
[State -3, Energy Color]
type = remappal
trigger1 = animelemtime(19)=0
trigger1 = root,var(44)=1 || root,var(44)=3
source = 4050, 27
dest = 4050, ifelse((root,var(44)=1),6,13)
[State -3, Energy Color]
type = remappal
trigger1 = animelemtime(19)=0
trigger1 = root,var(44)=1 || root,var(44)=3
source = 4050, 32
dest = 4050, ifelse((root,var(44)=1),6,13)

[State -2, Glowing Hair]
type = VarAdd
triggerall = !(gametime%3)
trigger1 = var(2) = 31 || var(2) = 52 || var(2) = 70 || var(2) = [112,113]
var(5) = ifelse(var(5)>=19000||var(5)<=1000&&(!life&&stateno!=[2183,2186]),-var(5),1000)
[State -2, Glowing Hair]
type = RemapPal
trigger1 = var(2) = 31 || var(2) = 52 || var(2) = 70 || var(2) = [112,113]
source = 1,1
dest = 1,var(2)+var(5)-ifelse(var(5)>=11000,2*(var(5)-10000),0)

[State -2, Glowing Hair]
type = Varset
triggerall=numenemy
triggerall=var(2)&&!numhelper(256)&&matchno=1&&roundno=1
triggerall=enemy,authorname="Mr.Ansatsuken"&&enemy,name="Broly"&&var(2)=enemy,var(2)
triggerall=(teamside!=1 && enemynear,Numhelper(256)=0)
trigger1 = var(2) = 31 || var(2) = 52 || var(2) = 70 || var(2) = [112,113]
ignorehitpause = 1
var(2) = ifelse(enemy, var(2)=112, 113, 112)

[State 0, Pause]
type = Pause
trigger1 = !time
time = 300
movetime = 300

[State 4001, fadeout]
type = bgpalfx
trigger1 = 1
time = 1
add = -128, -128, -128
sinadd = 128, 128, 128, 128

[State -3, Lv3 Shadows]
type = afterimage
trigger1 = !time
time = 180
timegap = 1
framegap = 10
length = 21
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 160, 32, 32
palpostbright = 0, 0, 0
trans = add1

[State 7610, Black BG]
type = explod
trigger1 = !time
anim = 4303
ID = 4303
sprpriority = 12
ontop = 4303
removetime = -2
ownpal = 0
pausemovetime = 300
posType = Back
pos = GameWidth/2 + (0), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5
bindtime = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !animtime

;========================< GIGANTIC CATASTROPHE >=============================
; Gigantic Catastrophe 2
[Statedef 4325]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4
facep2 = 0


[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 4325
ignorehitpause = 1
[State 3005, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = !time && !prevstateno
anim = 4306
ID = 4306
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
ignorehitpause = 0
bindtime = -1
removetime = -1
sprpriority = 3
removeongethit = 0

[State 3005, Strength]
type = varset
trigger1 = !time && !prevstateno
var(10) = 5
[State 3005, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 4305
[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = -2, floor(-158 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 3005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3005, timevar]
type = varadd
trigger1 = time
var(1) = 1

[State 3005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, ifelse(var(2)<11,12,7)
channel = 1
persistent = 0
ignorehitpause = 1

[State 3005, Hit]
type = hitdef
trigger1 = !prevstateno || (time=6&&prevstateno)
priority = 4, Hit
attr = S, HP
damage = ceil(32 * (root, fvar(12))), 4
animtype = up
hitflag = MAFD
;guardflag = MA
pausetime = 0, ifelse(var(2)<11,10,0)
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1; = s7001
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
numhits = ifelse(prevstateno,2,1)
ground.slidetime = 16
ground.hittime = 16
;ground.velocity = -ifelse(var(2)<8,0,6), -ifelse(var(2)<8,0,7)
ground.velocity = -ifelse(var(2)<15,6,6), -ifelse(var(2)<15,7,7)
;down.velocity = -ifelse(var(2)<8,0,6), -ifelse(var(2)<8,0,7)
down.velocity = -ifelse(var(2)<15,6,6), -ifelse(var(2)<15,7,7)
yaccel = 0.2
ground.cornerpush.veloff = 0
;air.velocity = -ifelse(var(2)<8,-1,6), -ifelse(var(2)<8,0,7)
air.velocity = -2, -15.1
guard.velocity = -10.52
fall = 1
air.fall = 1
p2facing = 1
kill = 0
sprpriority = 4
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1
palfx.color = ifelse((root,var(44)=[2,3]),50,128)
palfx.sinadd=ifelse((root,var(44)=[2,3]),50,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),25,ifelse(root,var(44)=1,0,64)),ifelse((root,var(44)=[2,3]),80,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),128,ifelse(root,var(44)=1,96,0)),ifelse((root,var(44)=[2,3]),256,ifelse(root,var(44)=1,0,192)),ifelse((root,var(44)=[2,3]),512,ifelse(root,var(44)=1,192,96))
palfx.time = 48

[State 0, TargetState]
type = TargetState
trigger1 = movehit = 1 && numtarget && var(2)>=11
value = ifelse(root,var(57),1111154,1111153)
ignorehitpause = 1
persistent = 0

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1 && root, var(44)!=1 && root, var(44)!=3
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7182) < 1 && (root, var(44)=1 || root, var(44)=3)
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7182
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P2
pos = 0, -80
facing = 1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P2
pos = 0, -80
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = root, anim != 4307 || (movecontact && var(2) >= 11)
id = 4306

[State 3005, End]
type = changestate
trigger1 = movecontact || root, anim != 4307
value = ifelse((var(2) < 11)&&root,anim=4307, 4325, 4326)
;value = ifelse(root, anim != 3200, 3206, 3205)
ignorehitpause = 1


[Statedef 4326]
type = A
physics = N
movetype = I
ctrl = 0
movehitpersist = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time
value = 0
scale = 0.5,0.5+0.02*time
ignorehitpause = 1
persistent = 1
[State 0, AngleDraw]
type = removeexplod
trigger1 = time
ID = 4306
ignorehitpause = 1
persistent = 1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = ifelse(time>=16,0,256-16*time), 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = time >=16

;============================< GIGANTIC CATASTROPHE >=================================
; Gigantic Catastrophe 3
[Statedef 4335]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4
juggle = 0

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = -1
ignorehitpause = 1
[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 106, 256
ignorehitpause = 1

[State 3000, Main FX]
type = helper
trigger1 = !time && !prevstateno
helpertype = normal
stateno = 4336
ID = 4336
name = "Gigantic Catastrophe"
postype = p1
facing = 1
pos = 0,0
size.xscale = 0.55
size.yscale = 0.55

[State 3000, Main FX]
type = helper
trigger1 = !time && !prevstateno
helpertype = normal
stateno = 4337
ID = 4337
name = "Gigantic Catastrophe"
postype = p1
facing = 1
pos = 0,0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3055, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 4335
ignorehitpause = 1

[State 3055, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3055, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 4226

[State 3055, Bind]
type = bindtoroot
trigger1 = 1
pos = floor(60 * root, const(size.xscale)), floor(-175 * root, const(size.yscale))
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(time%10) && animelemtime(55) <=1
trigger2 = animelemtime(55) = 0
value = 2, ifelse((animelem=55),7,12)
channel = 1
postype = p2
persistent = 1
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(time%10) && animelemtime(55) <=1
trigger2 = animelemtime(55) = 0
value = 2, ifelse((animelem=55),7,12)
channel = 3
postype = p2
persistent = 1
ignorehitpause = 1

[State 3005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3005, timevar]
type = varadd
trigger1 = time
var(1) = 1

[State 3005, Hit]
type = hitdef
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(5) = 0
trigger3 = animelemtime(10) = 0
trigger4 = animelemtime(15) = 0
trigger5 = animelemtime(20) = 0
trigger6 = animelemtime(25) = 0
trigger7 = animelemtime(30) = 0
trigger8 = animelemtime(35) = 0
trigger9 = animelemtime(40) = 0
trigger10 = animelemtime(45) = 0
trigger11 = animelemtime(50) = 0
priority = 4, Hit
attr = S, HP
damage = ceil(77 * (root, fvar(12))), 4
animtype = diagup
hitflag = MAFD
pausetime = 0, 12
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1; = s7001
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, -2
yaccel = 0.3
ground.cornerpush.veloff = 0
air.velocity = 0, -2
guard.velocity = -10.52
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((root,var(44)=[2,3]),50,128)
palfx.sinadd=ifelse((root,var(44)=[2,3]),50,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),25,ifelse(root,var(44)=1,0,64)),ifelse((root,var(44)=[2,3]),80,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),128,ifelse(root,var(44)=1,96,0)),ifelse((root,var(44)=[2,3]),256,ifelse(root,var(44)=1,0,192)),ifelse((root,var(44)=[2,3]),512,ifelse(root,var(44)=1,192,96))
palfx.time = 48

[State 3005, Hit]
type = hitdef
trigger1 = animelemtime(55) = 0
priority = 4, Hit
attr = S, HP
damage = ceil(77 * (root, fvar(12))), 4
animtype = diagup
hitflag = MAFD
;guardflag = M
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1; = s7001
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, -9
yaccel = 0.3
ground.cornerpush.veloff = 0
air.velocity = -3, -9
guard.velocity = -10.52
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((root,var(44)=2),50,128)
palfx.sinadd=ifelse(root,var(44)=2,50,ifelse(root,var(44)=1||root,var(44)=3,64,0)),ifelse(root,var(44)=2,25,ifelse(root,var(44)=1,0,64)),ifelse(root,var(44)=2,80,ifelse(root,var(44)=1,64,0)),ifelse(root,var(44)=2,8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),192,ifelse(root,var(44)=1,192,0)), ifelse((root,var(44)=2),256,ifelse(root,var(44)=1,0,ifelse(root,var(44)=3,128,192))), ifelse(root,var(44)=3,0,ifelse((root,var(44)=2),512,96))
palfx.time = 96

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = movehit = 1 && numtarget && animelemtime(5)<0
var(10) = p2dist x
ignorehitpause = 1

[State 0, TargetBind]
type = TargetBind
trigger1 = animelemtime(5)<0
pos = var(10), -(var(10)*0.28)
time = 1

[State 1005, hitspark]
type = helper
trigger1 = movehit && numtarget
trigger1 = !(time%10) && animelemtime(55) <=1
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P2
pos = 0, -80
facing = 1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelemtime(55)>=1
movetype = I

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !animtime

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1 
value = 30
scale = 1, 1
ignorehitpause = 1
persistent = 1


[Statedef 4336]
type = A
physics = N
movetype = I
ctrl = 0
anim = 4227
sprpriority = 4
movehitpersist = 1
[State 0, BindToTarget]
type = BindToParent
trigger1 = 1
time = 1
pos = 3,-1;, Foot;"Mid","Head"
ignorehitpause = 1 
persistent = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time <= 118
value = 30
scale = 1,1
ignorehitpause = 1
persistent = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time > 118
value = 30
scale = 1,1-((time-118)*.05)
ignorehitpause = 1
persistent = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = time >= 138 ;|| !parent


[Statedef 4337]
type = A
physics = N
movetype = I
ctrl = 0
anim = 4226
sprpriority = 3
movehitpersist = 1

[State 3055, Bind]
type = bindtoroot
trigger1 = 1
pos = floor(60 * root, const(size.xscale)), floor(-175 * root, const(size.yscale))
ignorehitpause = 1
[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 156, 256
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !animtime

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1 
value = 30
scale = 1, 1
ignorehitpause = 1
persistent = 1


;========================< GIGANTIC METEOR (TEAM LV3 SUPER) >=============================
; Gigantic Meteor
[Statedef 4405]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4
facep2 = 0

[State 0, Explod]
type = Explod
trigger1 = !time && !prevstateno
anim = 1305
ID = 3205
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removeongethit = 0
removetime = -1
sprpriority = 4
;
;[State 0, Explod]
;type = Explod
;trigger1 = !time && !prevstateno
;anim = 1307
;ID = 3205
;scale = 0.5, 0.5
;pos = 0,0
;postype = p1  ;p2,front,back,left,right
;facing = 1
;bindtime = -1
;removeongethit = 0
;removetime = -1
;sprpriority = 5

[State 0, Explod]
type = Explod
trigger1 = !time && !prevstateno
anim = 3205
ID = 3205
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
removeongethit = 0
sprpriority = -4

[State 4305, Dust]
type = explod
trigger1 = !(time % 6)
anim = 8106
ID = 8106
sprpriority = -1
postype = p1
pos = 0, -ceil(pos y) + 4
scale = 1, 1
[State 0, VarSet]
type = VarSet
trigger1 = 1
var(11) = (0.75+(0.25*(1+(random%60))))*ifelse(random<500,1,-1)
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = 1
var(12) = (0.75+(0.25*(1+(random%60))))*ifelse(random<500,1,-1)
ignorehitpause = 1

[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 4405
ignorehitpause = 1
[State 3005, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3005, Strength]
type = varset
trigger1 = !time && !prevstateno
var(10) = 5
[State 3005, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 4405
[State 0, VelSet]
type = VelSet
trigger1 = time>=2
x = ifelse((time < 30 && var(2) > 1 && pos x !=[-200,200]), 1.8, 4.5+var(1)*0.45)
y = 3+var(1)*0.3

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 3005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3005, timevar]
type = varadd
trigger1 = 1
var(1) = 1

[State 3005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 12
channel = 1
persistent = 0
ignorehitpause = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 3205
scale = ifelse(var(1)>=32,1,0.05+0.0296875*var(1))*0.75,ifelse(var(1)>=32,1,0.05+0.0296875*var(1))*0.75

[State 3005, Hit]
type = hitdef
trigger1 = var(2)<=12
trigger1 = var(1)>=8 && time >= 2
priority = 4, Hit
attr = S, HP
damage = ceil(38 * (root, fvar(12))), 6
animtype = diagup
hitflag = MAFD
pausetime = ifelse(var(2)<12,8,0), ifelse(var(2)<12,8,0)
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1; = s7001
sparkno = -1
guard.sparkno = -1; = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
sprpriority = 4
ground.hittime = 16
kill = var(2)>=9
;ground.velocity = -ifelse(var(2)<8,0,6), -ifelse(var(2)<8,0,7)
ground.velocity = -ifelse(var(2)<12,6,6), -ifelse(var(2)<12,7,6)
;down.velocity = -ifelse(var(2)<8,0,6), -ifelse(var(2)<8,0,7)
down.velocity = -ifelse(var(2)<12,6,6), -ifelse(var(2)<12,7,6)
yaccel = 0.15
ground.cornerpush.veloff = 0
;air.velocity = -ifelse(var(2)<8,-1,6), -ifelse(var(2)<8,0,7)
air.velocity = -ifelse(var(2)<12,6,6), -ifelse(var(2)<12,-1,6)
guard.velocity = -10.52
fall = 1
air.fall = 1
p2facing = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((root,var(44)=[2,3]),50,128)
palfx.sinadd=ifelse((root,var(44)=[2,3]),50,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),25,ifelse(root,var(44)=1,0,64)),ifelse((root,var(44)=[2,3]),80,ifelse(root,var(44)=1,64,0)),ifelse((root,var(44)=[2,3]),8,4)
palfx.mul = ifelse((root,var(44)=[2,3]),128,ifelse(root,var(44)=1,96,0)),ifelse((root,var(44)=[2,3]),256,ifelse(root,var(44)=1,0,192)),ifelse((root,var(44)=[2,3]),512,ifelse(root,var(44)=1,192,96))
palfx.time = 128

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P2
pos = 0, -80
facing = 1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1000, Glow]
type = helper
trigger1 = var(2) = 7 && !numhelper(4111)
helpertype = normal
stateno = 4406
ID = 4111
name = "Omega Blaster"
postype = p1
supermovetime = 65535
pos = 0,0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal = 1

[State 1000, Glow]
type = helper
trigger1 = var(2) = 7 && !numhelper(4112)
helpertype = normal
stateno = 4407
ID = 4112
name = "Omega Blaster"
postype = p1
supermovetime = 65535
pos = 0,0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(59))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P2
pos = 0, -80
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 0, DUSTO]
type = Explod
triggerall = pos y >=-30
trigger1 = !(time%3)
ID = 8130
anim = 8130
postype = p1
pos = -120, -pos y
removetime = -2
ignorehitpause = 1
supermovetime = 0
sprpriority = 2
ownpal = 1
scale = 0.125,0.125
removeongethit = 1
[State 0, DUSTO]
type = Explod
triggerall = pos y >=-30
trigger1 = !(time%3)
ID = 8130
anim = 8130
postype = p1
pos = 120,  -pos y
removetime = -2
ignorehitpause = 1
supermovetime = 0
facing = -1
sprpriority = 2
ownpal = 1
scale = 0.125,0.125
removeongethit = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3005, End]
type = changestate
trigger1 = movecontact
value = 4405
;value = ifelse(root, anim != 3200, 3206, 3205)
ignorehitpause = 1
[State 3005, End]
type = changestate
trigger1 = pos y >=0 && time>=3
value = 3206
;value = ifelse(root, anim != 3200, 3206, 3205)
ignorehitpause = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = var(1)*8
scale = ifelse(var(1)>=32,1,0.05+0.0296875*var(1))*0.8,ifelse(var(1)>=32,1,0.05+0.0296875*var(1))*0.8
ignorehitpause = 1
persistent = 1


[Statedef 4406]
type = A
physics = N
movetype = A
anim = 4113
ctrl = 0
sprpriority = 25
velset = 0,0
movehitpersist = 1
[State 0, bindtoparent]
type = bindtoparent
trigger1 = animelemtime(15)<0
pos = 0, 0
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = animelemtime(15)>=0 && animelemtime(15)<=64
flag = nofg
flag2 = noshadow
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = animelemtime(15)<0 || animelemtime(15)>64
flag = noshadow
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*8
scale = 1,1
ignorehitpause = 1
persistent = 1

[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-ifelse(animelemtime(15)>=34,4*(animelemtime(15)-34),0), 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = !animtime

[Statedef 4407]
type = A
physics = N
movetype = I
ctrl = 0
anim = 8523
sprpriority = 2
movehitpersist = 1
[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 8*time
scale = (1+(time*0.02))*ifelse(((time%4)=[2,3]),1.2,1),(1+(time*0.02))*ifelse(((time%4)=[2,3]),1.2,1)
ignorehitpause = 1
persistent = 1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = parent, stateno != 4405

; Dramatic Finish effect 1
[Statedef 4904]
type = A
physics = N
movetype = I
ctrl = 0
anim = 3185
sprpriority = 4
movehitpersist = 1
[State 0, BindToParent]
type = BindToroot
trigger1 = 1
time = 1
pos = ceil(15 * root, const(size.xscale)), ceil(-119 * root, const(size.yscale))
[State 1000, Glow]
type = helper
trigger1 = numhelper(4905) < 8 && !(time%2)
helpertype = normal
stateno = 4905
ID = 4905
name = "Miracle Punch"
postype = p1
supermovetime = 65535
pos = 0,0
size.xscale = 0.25
size.yscale = 0.25
ownpal = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5,30
persistent = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5,30
persistent = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 0+(random%360)
scale = (0.5+((time)*0.005))*ifelse(((time%4)=[2,3]),1.5,1),(0.5+((time)*0.005))*ifelse(((time%4)=[2,3]),1.5,1)
ignorehitpause = 1
persistent = 1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = root, anim = 9741


; Dramatic Finish effect 2
[Statedef 4905]
type = A
physics = N
movetype = I
anim = 3184
ctrl = 0
sprpriority = 4
velset = 0,0
movehitpersist = 1
[State 0, VarSet]
type = VarSet
trigger1 = !(time%2)
var(10) = 0+(random%360)

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 0+(random%360)
scale = 1,0.2+0.005*time
ignorehitpause = 1
persistent = 1
[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 1000, Glow]
type = helper
trigger1 = time = 190
helpertype = normal
stateno = 4406
ID = 4111
name = "Omega Blaster"
postype = p1
supermovetime = 65535
pos = 0,0
size.xscale = 2*const(size.xscale)
size.yscale = 2*const(size.yscale)
ownpal = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1006, End]
type = destroyself
trigger1 = root, anim = 9741


;========================< JUMP DUST >=============================
[Statedef 7100]
physics = N
velset = 0, 0
anim = 9741
[State 7100, Bind]
type = bindtoroot
trigger1 = time
[State 7100, Dust]
type = explod
trigger1 = !time
anim = 8100
ID = 8100
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
[State 7100, Dust]
type = explod
trigger1 = !time || time = 2 || time = 6
anim = 8101
ID = 8100
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
[State 7100, Assert]
type = assertspecial
trigger1 = 1
flag = invisible
[State 7100, End]
type = destroyself
trigger1 = time >= 7

; LSSJ Aura
[Statedef 6000]
physics = N
velset = 0, 0
;anim = 3403
anim = 6000
sprpriority = 5

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(10) = root, anim

[State 0, VarSet]
type = VarSet
trigger1 = !time && root, stateno = [896,899]
var(37) = root, var(37)

[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6000
anim = 6001
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
ownpal = 0
supermovetime = -1
sprpriority = -5 + var(37)
scale = const(size.xscale),const(size.yscale)
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6001
anim = 6003
postype = p1
pos = 0, 0
bindtime = -1
ownpal = 0
removetime = -1
supermovetime = -1
sprpriority = 4 + var(37)
scale = const(size.xscale),const(size.yscale)
removeongethit = 0
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6002
anim = 6004
postype = p1
pos = 0, 0
bindtime = -1
ownpal = 0
removetime = -1
supermovetime = -1
sprpriority = -6 + var(37)
scale = const(size.xscale),const(size.yscale)
removeongethit = 0
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time <= 8 && var(10) != 730
ID = 6000
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = (0.5+0.0625*time)*const(size.xscale), (0.5+0.0625*time)*const(size.yscale)
trans = addalpha
sprpriority = -5 + var(37)
alpha = 0+(32*time),256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 8 && var(37)
ID = 6000
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = const(size.xscale), const(size.yscale)
trans = addalpha
sprpriority = -5 + var(37)
alpha = 256,256
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 8 && var(37)
ID = 6001
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = const(size.xscale), const(size.yscale)
trans = sub
sprpriority = 4 + var(37)
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 8 && var(37)
ID = 6002
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = const(size.xscale), const(size.yscale)
trans = sub
sprpriority = -6 + var(37)
[State 0, SprPriority]
type = SprPriority
trigger1 = var(37)
value = 5+var(37)
[State 0, SprPriority]
type = angledraw
trigger1 = var(37)
value = 0
scale = 1,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time && root, stateno != 898 && root, stateno != 193
value = S5,10
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time && root, stateno = 730
value = S5,11
loop = 1
channel = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time <= 8 && var(10) != 730
value = 0
scale = 2-(0.125*time) ,2-(0.125*time)
[State 0, Trans]
type = Trans
trigger1 = time <= 8
trans = addalpha ;none, add, addalpha, add1, sub
alpha = 0+(32*time),256
[State 0, Trans]
type = Trans
trigger1 = time >= 8
trans = addalpha ;none, add, addalpha, add1, sub
alpha = 256,256
[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 8 && root, stateno = 181
value = 0
scale = 1+(time-8)*0.0015,1+(time-8)*0.0015
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time >= 8 && root, stateno = 181
ID = 6000
postype = p1  ;p2,front,back,left,right
pos = 0, 0
trans = addalpha ;none, add, addalpha, add1, sub
alpha = 256,256
scale = (1+(time-8)*0.0015)*const(size.xscale),(1+(time-8)*0.0015)*const(size.yscale)
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time >= 8 && root, stateno = 181
ID = 6001
postype = p1  ;p2,front,back,left,right
pos = 0, 0
trans = sub
scale = (1+(time-8)*0.0015)*const(size.xscale),(1+(time-8)*0.0015)*const(size.yscale)
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time >= 8 && root, stateno = 181
ID = 6002
postype = p1  ;p2,front,back,left,right
pos = 0, 0
trans = sub
scale = (1+(time-8)*0.0015)*const(size.xscale),(1+(time-8)*0.0015)*const(size.yscale)

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time <= 8 && var(10) = 730
value = 0
scale = (2+2*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))-((0.125+0.125*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))*time),(2+2*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))-((0.125+0.125*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))*time)
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time <= 8 && var(10) = 730
ID = 6000
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = ((0.5+0.5*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))+((0.0625+0.0625*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))*time))*const(size.xscale),((0.5+0.5*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))+((0.0625+0.0625*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))*time))*const(size.yscale)
trans = addalpha
sprpriority = -5 + var(37)
alpha = 0+(32*time),256

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 8 && var(10) = 730
value = 0
scale = 1+1*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))),1+1*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0))))
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time >= 8 && var(10) = 730
ID = 6000
postype = p1  ;p2,front,back,left,right
pos = 0, 0
trans = addalpha ;none, add, addalpha, add1, sub
alpha = 256,256
scale = (1+1*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))*const(size.xscale),(1+1*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))*const(size.yscale)
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time >= 8 && var(10) = 730
ID = 6001
postype = p1  ;p2,front,back,left,right
pos = 0, 0
trans = sub
scale = (1+1*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))*const(size.xscale),(1+1*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))*const(size.yscale)
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time >= 8 && var(10) = 730
ID = 6002
postype = p1  ;p2,front,back,left,right
pos = 0, 0
trans = sub
scale = (1+1*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))*const(size.xscale),(1+1*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))*const(size.yscale)

;ignorehitpause = 
;persistent = 
;
;[State 6000, Shadows]
;type = afterimage
;trigger1 = !time
;time = 999
;timegap = 1
;framegap = 1
;length = 2
;palcontrast = 100, 100, 100
;trans = S

[State 1056, Trans]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 6000, Bind]
type = bindtoroot
trigger1 = root, stateno != 193
pos = 0, 0
[State 6000, Bind]
type = bindtoroot
trigger1 = root, stateno = 193
pos = -3, 0
[State 6000, End]
type = removeexplod
triggerall = time > 8
trigger1 = root, anim != var(10) || root, stateno = 3200 && numhelper(3205)
trigger1 = root, stateno != 899 && root, stateno != 4200
trigger2 = root, stateno = 4200 && (root, anim = 100 || root, anim = 710)
trigger3 = var(10) = 3186 && root, animelemtime(7)>=-4
ID = 6001
[State 6000, End]
type = removeexplod
triggerall = time > 8
trigger1 = root, anim != var(10) || root, stateno = 3200 && numhelper(3205)
trigger1 = root, stateno != 899 && root, stateno != 4200
trigger2 = root, stateno = 4200 && (root, anim = 100 || root, anim = 710)
trigger3 = var(10) = 3186 && root, animelemtime(7)>=-4
ID = 6002
[State 6000, End]
type = changestate
triggerall = time > 8
trigger1 = root, anim != var(10) || root, stateno = 3200 && numhelper(3205)
trigger1 = root, stateno != 899 && root, stateno != 4200
trigger2 = root, stateno = 4200 && (root, anim = 100 || root, anim = 710)
trigger3 = var(10) = 3186 && root, animelemtime(7)>=-4
value = 6001
ctrl = 0

[Statedef 6001]
physics = N
velset = 0, 0
;anim = 1216
;sprpriority = -4
[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time && ((root, stateno = [896,899]) || root, power >= powermax)
value = S5,17

[State 0, AngleDraw]
type = AngleDraw
trigger1 = !var(22)
trigger1 = time <= 8
value = 0
scale = 1+(0.125*time),1+(0.125*time)

[State 0, AngleDraw]
type = AngleDraw
trigger1 = var(22)
trigger1 = time <= 8
value = 0
scale = (1+(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))+((0.125+(0.125*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0))))))*time),(1+(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))+((0.125+(0.125*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0))))))*time)
ignorehitpause = 1
persistent = 1

[State 0, Trans]
type = Trans
trigger1 = time <= 8
trans = addalpha ;none, add, addalpha, add1, sub
alpha = 256-(32*time),256
;ignorehitpause = 
;persistent = 

[State 1056, Trans]
type = assertspecial
trigger1 = 1
flag = noshadow

;[State 6000, Bind]
;type = bindtoroot
;trigger1 = root, anim = 1201
;pos = 0, 0
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time <= 8 && !var(22)
ID = 6000
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = (1-(0.0625*time))*const(size.xscale),(1-(0.0625*time))*const(size.yscale)
trans = addalpha
alpha = 256-(32*time),256
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time <= 8 && var(22)
ID = 6000
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = ((1+(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))-((0.0625+0.0625*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))*time))*const(size.xscale),((1+(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))-((0.0625+0.0625*(0.5*ifelse(root,powermax>=5000,ifelse(root,power>=5000,1,(root,power/5000.0)),ifelse(root,power>=3000,1,(root, power / 3000.0)))))*time))*const(size.yscale)
trans = addalpha
alpha = 256-(32*time),256
[State 6000, End]
type = removeexplod
trigger1 = time > 8
ID = 6000
[State 6000, End]
type = destroyself
trigger1 = time > 8

[Statedef 6002]
physics = N
velset = 0, 0
;anim = 3403
anim = 6030
sprpriority = ifelse(root,stateno=2184,-1,5)

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(10) = root, anim

[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6000
anim = 6031
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
ownpal = 0
supermovetime = -1
sprpriority = -5
scale = const(size.xscale),const(size.yscale)
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6001
anim = 6033
postype = p1
pos = 0, 0
bindtime = -1
ownpal = 0
removetime = -1
supermovetime = -1
sprpriority = ifelse(root,stateno=2184,-2,4)
scale = const(size.xscale),const(size.yscale)
removeongethit = 0
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6001
anim = 6034
postype = p1
pos = 0, 0
bindtime = -1
ownpal = 0
removetime = -1
supermovetime = -1
sprpriority = -6
scale = const(size.xscale),const(size.yscale)
removeongethit = 0
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time <= 8
ID = 6000
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = (0.5+0.0625*time)*const(size.xscale), (0.5+0.0625*time)*const(size.yscale)
trans = addalpha
alpha = 0+(32*time),256

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5,10
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time && root, stateno = 730
value = S5,11
loop = 1
channel = 3

[State 0, Trans]
type = Trans
trigger1 = time <= 8
trans = addalpha ;none, add, addalpha, add1, sub
alpha = 0+(32*time),256
[State 0, Trans]
type = Trans
trigger1 = time >= 8
trans = addalpha ;none, add, addalpha, add1, sub
alpha = 256,256
[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 8 && root, stateno = 181
value = 0
scale = 1+(time-8)*0.0015,1+(time-8)*0.0015
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time >= 8 && root, stateno = 181
ID = 6000
postype = p1  ;p2,front,back,left,right
pos = 0, 0
trans = addalpha ;none, add, addalpha, add1, sub
alpha = 256,256
scale = (1+(time-8)*0.0015)*const(size.xscale),(1+(time-8)*0.0015)*const(size.yscale)
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time >= 8 && root, stateno = 181
ID = 6001
postype = p1  ;p2,front,back,left,right
pos = 0, 0
trans = sub
scale = (1+(time-8)*0.0015)*const(size.xscale),(1+(time-8)*0.0015)*const(size.yscale)
;ignorehitpause = 
;persistent = 
;
;[State 6000, Shadows]
;type = afterimage
;trigger1 = !time
;time = 999
;timegap = 1
;framegap = 1
;length = 2
;palcontrast = 100, 100, 100
;trans = S

[State 1056, Trans]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 6000, Bind]
type = bindtoroot
trigger1 = 1
pos = 60, -70
[State 6000, End]
type = removeexplod
triggerall = time > 8
trigger1 = (root, anim != var(10)) && var(10) != 1200
trigger2 = var(10)=1200&&(((root,stateno!=[1200,1213])&&(root,stateno!=[893,894])&&(root,stateno!=3701))||root,anim=1201||root,anim=1202&&root,animelemtime(2)>=0)
ID = 6001
[State 6000, End]
type = changestate
triggerall = time > 8
trigger1 = (root, anim != var(10)) && var(10) != 1200
trigger2 = var(10)=1200&&(((root,stateno!=[1200,1213])&&(root,stateno!=[893,894])&&(root,stateno!=3701))||root,anim=1201||root,anim=1202&&root,animelemtime(2)>=0)
value = 6001
ctrl = 0
[State 0, AngleDraw]
type = AngleDraw
trigger1 = time <= 8
value = 0
scale = 2-(0.125*time) ,2-(0.125*time)
[State 0, AngleDraw]
type = AngleDraw
trigger1 = time > 8
value = 0
scale = 1,1

[Statedef 6003]
physics = N
velset = 0, 0
;anim = 3403
anim = 6040
sprpriority = 5

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(10) = root, anim

[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6000
anim = 6001
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
ownpal = 0
vfacing = -1
supermovetime = -1
sprpriority = -5
scale = const(size.xscale),const(size.yscale)
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6001
anim = 6003
postype = p1
pos = 0, 0
bindtime = -1
ownpal = 0
removetime = -1
vfacing = -1
supermovetime = -1
sprpriority = ifelse(root,stateno=2184,-2,4)
scale = const(size.xscale),const(size.yscale)
removeongethit = 0
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6002
anim = 6004
postype = p1
pos = 0, 0
bindtime = -1
ownpal = 0
removetime = -1
vfacing = -1
supermovetime = -1
sprpriority = -6
scale = const(size.xscale),const(size.yscale)
removeongethit = 0
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time <= 8
ID = 6000
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = (0.5+0.0625*time)*const(size.xscale), (0.5+0.0625*time)*const(size.yscale)
trans = addalpha
alpha = 0+(32*time),256
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time >= 8
ID = 6000
postype = p1  ;p2,front,back,left,right
pos = 0, 0
sprpriority = root, var(37) -5
scale = const(size.xscale), const(size.yscale)
trans = addalpha
alpha = 256,256
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time >= 8
ID = 6001
postype = p1  ;p2,front,back,left,right
pos = 0, 0
sprpriority = root, var(37) +4
scale = const(size.xscale), const(size.yscale)
trans = sub
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time >= 8
ID = 6002
postype = p1  ;p2,front,back,left,right
pos = 0, 0
sprpriority = root, var(37) -6
scale = const(size.xscale), const(size.yscale)
trans = sub
[State 0, SprPriority]
type = SprPriority
trigger1 = time >= 8
value = root, var(37)+5
[State 0, SprPriority]
type = angledraw
trigger1 = time >= 8
value = 0
scale = 1,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5,10
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time && root, stateno = 730
value = S5,11
loop = 1
channel = 3

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time <= 8
value = 0
scale = (2-(0.125*time)),(2-(0.125*time))
[State 0, Trans]
type = Trans
trigger1 = time <= 8
trans = addalpha ;none, add, addalpha, add1, sub
alpha = 0+(32*time),256
[State 0, Trans]
type = Trans
trigger1 = time >= 8
trans = addalpha ;none, add, addalpha, add1, sub
alpha = 256,256
;ignorehitpause = 
;persistent = 
;
;[State 6000, Shadows]
;type = afterimage
;trigger1 = !time
;time = 999
;timegap = 1
;framegap = 1
;length = 2
;palcontrast = 100, 100, 100
;trans = S

[State 1056, Trans]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 6000, Bind]
type = bindtoroot
trigger1 = 1
pos = 10, -170
[State 6000, End]
type = removeexplod
triggerall = time > 8
trigger1 = root, anim != var(10) && root, anim != 4105
ID = 6001
[State 6000, End]
type = removeexplod
triggerall = time > 8
trigger1 = root, anim != var(10) && root, anim != 4105
ID = 6002
[State 6000, End]
type = changestate
triggerall = time > 8
trigger1 = root, anim != var(10) && root, anim != 4105
value = 6001
ctrl = 0


; Movie 8 Intro Sphere
[Statedef 6004]
type=A
physics=N
movetype=I
anim=6060
sprpriority = 7
ctrl=0
velset=0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 4305, Dust]
type = explod
triggerall = var(3)>=8
trigger1 = !(time % 24) && root, statetype != A
trigger2 = !(time % 16) && root, stateno = 181
anim = 8106
ID = 8106
sprpriority = -1
postype = p1
pos = 0, -ceil(pos y) + 4
scale = 1, 1

;[State 195, Snd]
;type = playsnd
;trigger1 = !time  && !prevstateno
;value = 5, 48
;channel = 1
;loop = 1
[State 1000, Glow]
type = helper
trigger1 = !numhelper(1156) && var(3)>=8 && !var(1)
helpertype = normal
stateno = 1157
ID = 1156
name = "Powered Shell"
postype = p1
supermovetime = 65535
pos = 0,0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 0
[State 0, AngleDraw]
type = AngleDraw
trigger1 = var(3) <= 8
value = 0
scale = 0+(0.125*var(3)), 0+(0.125*var(3))
[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha ;none, add, addalpha, add1, sub
alpha = 256,256

[State 0, Explod]
type = Explod
trigger1 = var(3) >= 8 && !numexplod(1156)
anim = 1156+(root,var(44)=3||root,var(44)=1)
ID = 1156
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
ownpal = 0
sprpriority = -2
removeongethit = 1
[State 0, VarAdd]
type = VarAdd
trigger1 = !time
var(2) = 1
[State 0, VarAdd]
type = VarAdd
trigger1 = 1
var(3) = 1
[State 1250, HitOverride]
type=hitoverride
trigger1= 1
attr=SCA,AA,AP,AT
time=-1
stateno=1155
ignorehitpause=1

[State 0, VarAdd]
type = VarAdd
trigger1 = time >=ifelse(root,var(11),240,360)
var(1)=1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = var(3) > 8 && !var(1)
value = var(3)*2
scale = 1*ifelse(((time%4)=[2,3]),1.2,1),1*ifelse(((time%4)=[2,3]),1.2,1)
ignorehitpause = 1
persistent = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = var(1)
value = var(3)*2
scale = 1-(0.03125*var(1)),1-(0.03125*var(1))
ignorehitpause = 1
persistent = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 1156
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = 1
vel = 0,0
scale = 0.5+(!time%2)*0.05,0.5+(!time%2)*0.05


[State 1250, NHB]
type=nothitby
trigger1= 1
time=-1
value=SCA
ignorehitpause=1

[State 1155, HB]
type=hitby
trigger1= 1
value=SCA,NP,SP,HP
time=-1
ignorehitpause=1
[State 0, NotHitBy]
type = NotHitBy
trigger1 = root, movetype = H
value = ,AA,HP,AT
time = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos=0,floor(-80*root,const(size.yscale))-30*(root,statetype=A&&root,stateno!=3200&&root,anim!=3300&&root,anim!=3900&&!(root,anim=3301&&animelemtime(2)<0))-((root,stateno=225&&root,animelemtime(2)>=0&&root,animelemtime(12)<0)*ifelse(root,animelemtime(3)>=0&&root,animelemtime(11)<0,27,13))
ignorehitpause = 1
persistent = 1

;[State 1155, End]
;type=destroyself
;trigger1= var(2) > 3 || var(3) >= 400

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = var(1)
id = 1156
;[State 3005, End]
;type = stopsnd
;triggerall = var(3) >= 8
;trigger1 = var(2) > ifelse(root,AIlevel,5,3) && time>=2 || var(3) >= 424
;trigger2 = var(3) > 44 && root, stateno = 195 && root, animelemtime(3)>=1
;trigger3 = root, stateno = 3200 || roundstate = 3
;trigger4 = root, AIlevel=0 && (root, ctrl = 0||root,statetype=A) && root, stateno != 195 && root, command = "start"
;channel = 1
[State 3005, End]
type = destroyself
trigger1 = var(1)>=32


;========================< POWERED SHELL >=============================
; Powered Shell
[Statedef 1155]
type=A
physics=N
movetype=I
anim=1155
sprpriority = 4
ctrl=0
velset=0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State -3, Energy Color]
type = remappal
trigger1 = root, var(44)=1 || root, var(44)=3
source = 4050, 35
dest = 4050, ifelse(root,var(44)=1,1,16)
[State -3, Energy Color]
type = remappal
trigger1 = root, var(44)=1 || root, var(44)=3
source = 4050, 27
dest = 4050, ifelse(root,var(44)=1,4,13)
[State -3, Energy Color]
type = remappal
trigger1 = root, var(44)=1 || root, var(44)=3
source = 4050, 32
dest = 4050, ifelse(root,var(44)=1,4,13)
[State 0, VarSet]
type = VarSet
trigger1 = !time && enemy, authorname = "Infinite"
trigger1 = enemy, name = "Dr.Doom" || enemy, name = "Deadpool" || enemy, name = "Dormammu" || enemy, name = "Magneto"
var(10) = 1

[State 4305, Dust]
type = explod
triggerall = var(3)>=8
trigger1 = !(time % 24) && root, statetype != A
trigger2 = !(time % 16) && root, stateno = 181
anim = 8106
ID = 8106
sprpriority = -1
postype = p1
pos = 0, -ceil(pos y) + 4
scale = 1, 1

[State 195, Snd]
type = playsnd
trigger1 = !time  && !prevstateno && root, stateno != 181
value = 5, 15
;[State 195, Snd]
;type = playsnd
;trigger1 = !time  && !prevstateno
;value = 5, 48
;channel = 1
;loop = 1
[State 1000, Glow]
type = helper
trigger1 = !numhelper(1157) && var(3)>=8
helpertype = normal
stateno = ifelse(var(3)=8 && !prevstateno,1156,ifelse(var(3)>=ifelse(root,AIlevel,560,280)||var(2)>=3+(var(10)*5),1158,1157))
ID = 1157
name = "Powered Shell"
postype = p1
supermovetime = 65535
pos = 0,0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = var(3) <= 8
value = 0
scale = 2-(0.125*var(3)) ,2-(0.125*var(3))
[State 0, Trans]
type = Trans
trigger1 = var(3) <= 8
trans = addalpha ;none, add, addalpha, add1, sub
alpha = 0+(32*var(3)),256
[State 0, Trans]
type = Trans
trigger1 = var(3) > 8
trans = addalpha ;none, add, addalpha, add1, sub
alpha = 256,256

[State 0, Explod]
type = Explod
trigger1 = var(3) >= 8 && !numexplod(1156)
anim = 1156+(root,var(44)=3||root,var(44)=1)
ID = 1156
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
sprpriority = -2
removeongethit = 1
[State 0, VarAdd]
type = VarAdd
trigger1 = !time
var(2) = 1
[State 0, VarAdd]
type = VarAdd
trigger1 = 1
var(3) = 1
[State 1250, HitOverride]
type=hitoverride
trigger1= 1
attr=SCA,AA,AP,AT
time=-1
stateno=1155
ignorehitpause=1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = var(3) > 8
value = var(3)*2
scale = 1+(!time%2)*0.1,1+(!time%2)*0.1
ignorehitpause = 1
persistent = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 1156
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = 1
vel = 0,0
scale = 0.5+(!time%2)*0.05,0.5+(!time%2)*0.05


[State 1250, NHB]
type=nothitby
trigger1= 1
time=-1
value=SCA
ignorehitpause=1

[State 1155, HB]
;Abstract Reordered: only special and super attacks (melee and projectiles) are stopped
type=hitby
trigger1= 1
value=SCA,SA,HA,SP,HP
time=-1
ignorehitpause=1
[State 0, NotHitBy]
type = NotHitBy
trigger1 = root, movetype = H
value = ,AA,HP,AT
time = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos=0,floor(-80*root,const(size.yscale))-30*(root,statetype=A&&root,stateno!=3200&&root,anim!=3300&&root,anim!=3900&&!(root,anim=3301&&animelemtime(2)<0))-((root,stateno=225&&root,animelemtime(2)>=0&&root,animelemtime(12)<0)*ifelse(root,animelemtime(3)>=0&&root,animelemtime(11)<0,27,13))
ignorehitpause = 1
persistent = 1

;[State 1155, End]
;type=destroyself
;trigger1= var(2) > 3 || var(3) >= 400

[State 1000, Eraser Shot]
type = helper
triggerall = var(3) >= ifelse(root,alive&&root, AIlevel,48,8)
trigger1 = var(2) > ifelse(root,AIlevel,5+(var(10)*5),3+(var(10)*2)) || var(3) >= ifelse(root,AIlevel,848,424)
trigger2 = var(3) > 44 && root, stateno = 195 && root, animelemtime(3)>=1
trigger3 = (numhelper(3205)&&root,stateno!=195)||root,stateno=3400||root,stateno=3700||root,stateno=3800||root,stateno=4000||root,stateno=4100||roundstate=3&&stateno!=181
trigger4 = root, AIlevel=0 && (root, ctrl = 0||root,statetype=A) && root, stateno != 195 && root, command = "start"
trigger5 = !(root, alive) || root, statetype = L || (root, movetype = H && root, AIlevel <= 0)
helpertype = normal
stateno = 1156
ID = 1156
name = "Powered Shell"
postype = p1
pos = 0,0
supermovetime = 65535
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = var(3) >= ifelse(root,alive&&root, AIlevel,48,8)
trigger1 = var(2) > ifelse(root,AIlevel,5+(var(10)*5),3+(var(10)*2)) || var(3) >= ifelse(root,AIlevel,848,424)
trigger2 = var(3) > 44 && root, stateno = 195 && root, animelemtime(3)>=1
trigger3 = (numhelper(3205)&&root,stateno!=195)||root,stateno=3400||root,stateno=3700||root,stateno=3800||root,stateno=4000||root,stateno=4100||roundstate=3&&stateno!=181
trigger4 = root, AIlevel=0 && (root, ctrl = 0||root,statetype=A) && root, stateno != 195 && root, command = "start"
trigger5 = !(root, alive) || root, statetype = L || (root, movetype = H && root, AIlevel <= 0)
id = 1156
;[State 3005, End]
;type = stopsnd
;triggerall = var(3) >= 8
;trigger1 = var(2) > ifelse(root,AIlevel,5,3) && time>=2 || var(3) >= 424
;trigger2 = var(3) > 44 && root, stateno = 195 && root, animelemtime(3)>=1
;trigger3 = root, stateno = 3200 || roundstate = 3
;trigger4 = root, AIlevel=0 && (root, ctrl = 0||root,statetype=A) && root, stateno != 195 && root, command = "start"
;channel = 1
[State 3005, End]
type = destroyself
triggerall = var(3) >= ifelse(root,alive&&root, AIlevel,48,8)
trigger1 = var(2) > ifelse(root,AIlevel,5+(var(10)*5),3+(var(10)*2)) || var(3) >= ifelse(root,AIlevel,848,424)
trigger2 = var(3) > 44 && root, stateno = 195 && root, animelemtime(3)>=1
trigger3 = (numhelper(3205)&&root,stateno!=195)||root,stateno=3400||root,stateno=3700||root,stateno=3800||root,stateno=4000||root,stateno=4100||roundstate=3&&stateno!=181
trigger4 = root, AIlevel=0 && (root, ctrl = 0||root,statetype=A) && root, stateno != 195 && root, command = "start"
trigger5 = !(root, alive) || root, statetype = L || (root, movetype = H && root, AIlevel <= 0)

[Statedef 1156]
type = A
physics = N
movetype = I
anim = 1155
ctrl = 0
sprpriority = 4
velset = 0,0
movehitpersist = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*2
scale = 1+0.1*time,1+0.1*time
ignorehitpause = 1
persistent = 1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5,17

[State 0, BindToRoot]
type = BindToparent
trigger1 = !numhelper(1156)
trigger1 = parent,stateno=1155
time = 1
pos = 0, 0
ignorehitpause = 1
persistent = 1

[State 1250, NHB]
type=nothitby
trigger1= 1
time=1
value=SCA
ignorehitpause=1

[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-8*time, 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = !animtime

[Statedef 1157]
type = A
physics = N
movetype = I
anim = 1159
ctrl = 0
sprpriority = -5
velset = 0,0
movehitpersist = 1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*2
scale = 1+0.0125*time,1+0.0125*time
ignorehitpause = 1
persistent = 1

[State 0, BindToRoot]
type = BindToparent
trigger1 = !numhelper(1156)
time = 1
pos = 0, 0
ignorehitpause = 1
persistent = 1

[State 1250, NHB]
type=nothitby
trigger1= 1
time=1
value=SCA
ignorehitpause=1

[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-8*time, 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = !animtime

[Statedef 1158]
type = A
physics = N
movetype = I
anim = 1157
ctrl = 0
sprpriority = -5
velset = 0,0
movehitpersist = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*2
scale = 1+0.025*time,1+0.025*time
ignorehitpause = 1
persistent = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, BindToRoot]
type = BindToparent
trigger1 = !numhelper(1156)
time = 1
pos = 0, 0
ignorehitpause = 1
persistent = 1

[State 1250, NHB]
type=nothitby
trigger1= 1
time=1
value=SCA
ignorehitpause=1

[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 128-8*time, 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = !animtime


; Gigatic Press
[Statedef 1159]
type=A
physics=N
movetype=I
anim=1155
sprpriority = 4
ctrl=0
velset=0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State -3, Energy Color (Zoom)]
type = remappal
trigger1 = root, var(44)=1 || root, var(44)=3
source = 4050, 35
dest = 4050, ifelse(root,var(44)=1,1,16)
[State -3, Energy Color (Zoom)]
type = remappal
trigger1 = root, var(44)=1 || root, var(44)=3
source = 4050, 27
dest = 4050, ifelse(root,var(44)=1,4,13)
[State -3, Energy Color (Zoom)]
type = remappal
trigger1 = root, var(44)=1 || root, var(44)=3
source = 4050, 32
dest = 4050, ifelse(root,var(44)=1,4,13)

[State 4305, Dust]
type = explod
triggerall = var(3)>=32
trigger1 = !(time % 24) && root, statetype != A
trigger2 = !(time % 16) && root, stateno = 181
anim = 8106
ID = 8106
sprpriority = -1
postype = p1
pos = 0, -ceil(pos y) + 4
scale = 1, 1

[State 195, Snd]
type = playsnd
trigger1 = !time  && !prevstateno && root, stateno != 181
value = 5, 15
;[State 195, Snd]
;type = playsnd
;trigger1 = !time  && !prevstateno
;value = 5, 48
;channel = 1
;loop = 1
[State 1000, Glow]
type = helper
trigger1 = !numhelper(1257) && var(3)>=8
helpertype = normal
stateno = ifelse(var(3)=8 && !prevstateno,1156,ifelse(var(2)>=3,1158,1157))
ID = 1257
name = "Powered Shell"
postype = p1
supermovetime = 65535
pos = 0,0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = var(3) <= 32
value = 0
scale = 2-(0.125*0.25*var(3)) ,2-(0.125*0.25*var(3))
[State 0, Trans]
type = Trans
trigger1 = var(3) <= 32
trans = addalpha ;none, add, addalpha, add1, sub
alpha = 0+(8*var(3)),256
[State 0, Trans]
type = Trans
trigger1 = var(3) > 8
trans = addalpha ;none, add, addalpha, add1, sub
alpha = 256,256

[State 0, Explod]
type = Explod
trigger1 = time >= 32 && !numexplod(1256)
anim = 1156+(root,var(44)=3||root,var(44)=1)
ID = 1256
scale = 0.5, 0.5
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
sprpriority = -2
removeongethit = 1
[State 0, VarAdd]
type = VarAdd
trigger1 = !time
var(2) = 1
[State 0, VarAdd]
type = VarAdd
trigger1 = 1
var(3) = 1
[State 1250, HitOverride]
type=hitoverride
trigger1= 1
attr=SCA,AA,AP,AT
time=-1
stateno=1159
ignorehitpause=1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = var(3) > 32
value = var(3)*2
scale = 1+(!time%2)*0.1,1+(!time%2)*0.1
ignorehitpause = 1
persistent = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 1156
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = 1
vel = 0,0
scale = 0.5+(!time%2)*0.05,0.5+(!time%2)*0.05


[State 1250, NHB]
type=nothitby
trigger1= time <=42
time=1
value=SCA
ignorehitpause=1

[State 1155, HB]
type=hitby
trigger1= time > 42
value=SCA,NP,SP,HP
time=-1
ignorehitpause=1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos=0,floor(-80*root,const(size.yscale))-30*(root,statetype=A&&root,anim!=3400&&root,stateno!=3800&&root,stateno!=4000&&root,anim!=[4100,4101]);
ignorehitpause = 1
persistent = 1

;[State 1155, End]
;type=destroyself
;trigger1= var(2) > 3 || var(3) >= 400

[State 1000, Eraser Shot]
type = helper
triggerall = var(3) >= 32
trigger1 = var(2) > ifelse(root,AIlevel,12,8)
trigger2 = root, anim != 3400 && root, anim != 4100 && root, anim != 4101 && root, anim != 4000 && root, anim != 3800 && root, stateno != 3705 && root, stateno != [3801,3807]
trigger3 = numhelper(4005)
helpertype = normal
stateno = 1156
ID = 1156
name = "Powered Shell"
postype = p1
pos = 0,0
supermovetime = 65535
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = var(3) >= 32
trigger1 = var(2) > ifelse(root,AIlevel,12,8)
trigger2 = root, anim != 3400 && root, anim != 4100 && root, anim != 4101 && root, anim != 4000 && root, anim != 3800 && root, stateno != 3705 && root, stateno != [3801,3807]
trigger3 = numhelper(4005)
id = 1256
;[State 3005, End]
;type = stopsnd
;triggerall = var(3) >= 8
;trigger1 = var(2) > ifelse(root,AIlevel,5,3) && time>=2 || var(3) >= 424
;trigger2 = var(3) > 44 && root, stateno = 195 && root, animelemtime(3)>=1
;trigger3 = root, stateno = 3200 || roundstate = 3
;trigger4 = root, AIlevel=0 && (root, ctrl = 0||root,statetype=A) && root, stateno != 195 && root, command = "start"
;channel = 1
[State 3005, End]
type = destroyself
triggerall = var(3) >= 32
trigger1 = var(2) > ifelse(root,AIlevel,12,8)
trigger2 = root, anim != 3400 && root, anim != 4100 && root, anim != 4101 && root, anim != 4000 && root, anim != 3800 && root, stateno != 3705 && root, stateno != [3801,3807]
trigger3 = numhelper(4005)


;========================< COLOR DISTORTION >=============================
; Green (expanding)
[Statedef 6005]
type = A
physics = N
movetype = I
anim = 6005
sprpriority = -8
ctrl = 0
velset = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(10) = ifelse(root, stateno = 181,90,64)

[State 3000, Snd]
type = playsnd
trigger1 = !time && root, stateno != 193
value = S5, 47

[State 3000, Snd]
type = playsnd
trigger1 = !time ;&& root, stateno != 193
value = S5, 47

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0, floor(-80 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6006
anim = 6009
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
supermovetime = -1
sprpriority = -7
ownpal = 1
scale = const(size.xscale),const(size.yscale)
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6006
anim = 6009
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
supermovetime = -1
sprpriority = -7
ownpal = 1
scale = const(size.xscale),const(size.yscale)
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6007
anim = 6015
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
supermovetime = -1
sprpriority = -9
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[State 0, ChangeState]
type = ChangeState
trigger1 = time = var(10)
value = stateno+1
ctrl = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 6006
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = (1.1+0.5*time)*const(size.xscale),(1.1+0.5*time)*const(size.yscale)
trans = Sub
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 6007
postype = p1  ;p2,front,back,left,right
pos = 0, 0
anim = 6015
scale = (1.1+0.5*time)*const(size.xscale),(1.1+0.5*time)*const(size.yscale)
trans = Sub


[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*2
scale = (1.1+0.5*time),(1.1+0.5*time)
ignorehitpause = 1
persistent = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256


; Green into Turquoise
[Statedef 6006]
type = A
physics = N
movetype = I
anim = 6006
sprpriority = -8
ctrl = 0
velset = 0,0

[State 0, ChangeState]
type = removeexplod
trigger1 = !time
ID = 6007
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6007
anim = 6016
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
supermovetime = -1
sprpriority = -9
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[State 3000, Snd]
type = playsnd
trigger1 = !time ;&& root, stateno != 193
value = S5, 47

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0, floor(-80 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = var(10)
value = stateno+1
ctrl = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 6006
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = (1.1+0.5*time)*const(size.xscale),(1.1+0.5*time)*const(size.yscale)
trans = Sub
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 6007
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = (1.1+0.5*time)*const(size.xscale),(1.1+0.5*time)*const(size.yscale)
trans = Sub

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*2
scale = (1.1+0.5*time),(1.1+0.5*time)
ignorehitpause = 1
persistent = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256

; Turquoise into Indigo
[Statedef 6007]
type = A
physics = N
movetype = I
anim = 6007
sprpriority = -8
ctrl = 0
velset = 0,0

[State 0, ChangeState]
type = removeexplod
trigger1 = !time
ID = 6007
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6007
anim = 6017
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
supermovetime = -1
sprpriority = -9
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[State 3000, Snd]
type = playsnd
trigger1 = !time ;&& root, stateno != 193
value = S5, 47

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0, floor(-80 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = var(10)
value = stateno+1
ctrl = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 6006
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = (1.1+0.5*time)*const(size.xscale),(1.1+0.5*time)*const(size.yscale)
trans = Sub
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 6007
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = (1.1+0.5*time)*const(size.xscale),(1.1+0.5*time)*const(size.yscale)
trans = Sub


[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*2
scale = (1.1+0.5*time),(1.1+0.5*time)
ignorehitpause = 1
persistent = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256

; Indigo fading out
[Statedef 6008]
type = A
physics = N
movetype = I
anim = 6008
sprpriority = -8
ctrl = 0
velset = 0,0

[State 0, ChangeState]
type = removeexplod
trigger1 = !time
ID = 6007
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6007
anim = 6018
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
supermovetime = -1
sprpriority = -9
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[State 3000, Snd]
type = playsnd
trigger1 = !time && root, stateno != 193
value = S5, 47

[State 3000, Snd]
type = playsnd
trigger1 = !time ;&& root, stateno != 193
value = S5, 47

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0, floor(-80 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 6006
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = (1.1+0.5*time)*const(size.xscale),(1.1+0.5*time)*const(size.yscale)
trans = Sub
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 6007
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = (1.1+0.5*time)*const(size.xscale),(1.1+0.5*time)*const(size.yscale)
trans = Sub


[State 0, ChangeState]
type = removeexplod
trigger1 = time = var(10)
ID = 6006
[State 0, ChangeState]
type = removeexplod
trigger1 = time = var(10)
ID = 6007
[State 0, ChangeState]
type = destroyself
trigger1 = time = var(10)


[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = time*2
scale = (1.1+0.5*time),(1.1+0.5*time)
ignorehitpause = 1
persistent = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256


; Green (contracting)
[Statedef 6025]
type = A
physics = N
movetype = I
anim = 74140108
sprpriority = 8
ctrl = 0
velset = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(10) = ifelse(root, stateno = 4000,50,ifelse(root, stateno = 899,41,ifelse(root,stateno=897||root,stateno=4301,20,ifelse(root, stateno = 4200, 15, ifelse(root,stateno=4303,15,12)))))

[State 3000, Snd]
type = playsnd
trigger1 = (root, stateno != 4200 && root, stateno != 3900 && root, stateno != 4403) && time = var(10)-20
trigger2 = (root, stateno = 4200 || root, stateno = 3900 || root, stateno = 4403 || root, stateno = 4303) && !time
value = S5, 47

[State 3000, Snd]
type = playsnd
trigger1 = (root, stateno != 4200 && root, stateno != 3900 && root, stateno != 4403) && time = var(10)-20
;trigger2 = root, stateno = 3900 && !time
value = S5, 47

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=4000
time = 1
pos = 0, floor(-101 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=3900 || root,stateno=4403
time = 1
pos = floor(95 * root, const(size.xscale)), floor(-123 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=899
time = 1
pos = floor(72 * root, const(size.xscale)), floor(-106 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=897
time = 1
pos = floor(-34 * root, const(size.xscale)), floor(-223 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=4200
time = 1
pos = floor(66 * root, const(size.xscale)), floor(-82 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=4301
time = 1
pos = floor(-45 * root, const(size.xscale)), floor(-113 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=4303
time = 1
pos = floor(63 * root, const(size.xscale)), floor(-144 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6007
anim = 6035
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
supermovetime = -1
sprpriority = -9
ownpal = 1
scale = const(size.xscale),const(size.yscale)
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6008
anim = 6025
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
ontop = 1
supermovetime = -1
sprpriority = 8
ownpal = 1
scale = const(size.xscale),const(size.yscale)
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6006
anim = 6009
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
ontop = 1
supermovetime = -1
sprpriority = 9
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[State 0, ChangeState]
type = ChangeState
trigger1 = time = var(10)
value = stateno+1
ctrl = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 6006
postype = p1  ;p2,front,back,left,right
pos = 0, 0
ontop = 1
scale = ((1.1+0.5*var(10))-0.5*time)*const(size.xscale),((1.1+0.5*var(10))-0.5*time)*const(size.yscale)
trans = Sub
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 6007
postype = p1  ;p2,front,back,left,right
pos = 0, 0
ontop = 1
scale = ((1.1+0.5*var(10))-0.5*time)*const(size.xscale),((1.1+0.5*var(10))-0.5*time)*const(size.yscale)
trans = Sub
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 6008
postype = p1  ;p2,front,back,left,right
pos = 0, 0
ontop = 1
scale = ((1.1+0.5*var(10))-0.5*time)*const(size.xscale),((1.1+0.5*var(10))-0.5*time)*const(size.yscale)
trans = addalpha
alpha = ifelse(time>=ifelse(var(10)<64,32,ifelse(var(10)<32,16,ifelse(var(10)<16,8,64))),256,ifelse(var(10)<64,8*time,ifelse(var(10)<32,16*time,ifelse(var(10)<16,32*time,4*time)))),256

; Turquoise into Indigo
[Statedef 6026]
type = A
physics = N
movetype = I
anim = 74140108
sprpriority = 8
ctrl = 0
velset = 0,0

[State 3000, Snd]
type = playsnd
trigger1 = (root, stateno != 4200 && root, stateno != 3900 && root, stateno != 4403) && time = var(10)-20
trigger2 = (root, stateno = 4200 || root, stateno = 3900 || root, stateno = 4403 || root, stateno = 4303) && !time
value = S5, 47

[State 3000, Snd]
type = playsnd
trigger1 = (root, stateno != 4200 && root, stateno != 3900 && root, stateno != 4403) && time = var(10)-20
;trigger2 = root, stateno = 3900 && !time
value = S5, 47

[State 0, ChangeState]
type = removeexplod
trigger1 = !time
ID = 6006
[State 0, ChangeState]
type = removeexplod
trigger1 = !time
ID = 6007
[State 0, ChangeState]
type = removeexplod
trigger1 = !time
ID = 6008
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6007
anim = 6036
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
supermovetime = -1
sprpriority = -9
ownpal = 1
scale = const(size.xscale),const(size.yscale)
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6008
anim = 6026
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
ontop = 1
supermovetime = -1
sprpriority = 8
ownpal = 1
scale = const(size.xscale),const(size.yscale)
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6006
anim = 6009
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
ontop = 1
supermovetime = -1
sprpriority = 9
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=4000
time = 1
pos = 0, floor(-101 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=3900 || root,stateno=4403
time = 1
pos = floor(95 * root, const(size.xscale)), floor(-123 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=899
time = 1
pos = floor(72 * root, const(size.xscale)), floor(-106 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=897
time = 1
pos = floor(-34 * root, const(size.xscale)), floor(-223 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=4200
time = 1
pos = floor(66 * root, const(size.xscale)), floor(-82 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=4301
time = 1
pos = floor(-45 * root, const(size.xscale)), floor(-113 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=4303
time = 1
pos = floor(63 * root, const(size.xscale)), floor(-144 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = var(10)
value = stateno+1
ctrl = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 6006
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = ((1.1+0.5*var(10))-0.5*time)*const(size.xscale),((1.1+0.5*var(10))-0.5*time)*const(size.yscale)
trans = Sub
ontop = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 6007
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = ((1.1+0.5*var(10))-0.5*time)*const(size.xscale),((1.1+0.5*var(10))-0.5*time)*const(size.yscale)
trans = Sub
ontop = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 6008
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = ((1.1+0.5*var(10))-0.5*time)*const(size.xscale),((1.1+0.5*var(10))-0.5*time)*const(size.yscale)
trans = addalpha
ontop = 1
alpha = 256, 256

; Indigo fading out
[Statedef 6027]
type = A
physics = N
movetype = I
anim = 74140108
sprpriority = 8
ctrl = 0
velset = 0,0

[State 3000, Snd]
type = playsnd
trigger1 = (root, stateno != 4200 && root, stateno != 3900 && root, stateno != 4403) && time = var(10)-20
trigger2 = (root, stateno = 4200 || root, stateno = 3900 || root, stateno = 4403 || root, stateno = 4303) && !time
value = S5, 47

[State 3000, Snd]
type = playsnd
trigger1 = (root, stateno != 4200 && root, stateno != 3900 && root, stateno != 4403) && time = var(10)-20
;trigger2 = root, stateno = 3900 && !time
value = S5, 47

[State 0, ChangeState]
type = removeexplod
trigger1 = !time
ID = 6006
[State 0, ChangeState]
type = removeexplod
trigger1 = !time
ID = 6007
[State 0, ChangeState]
type = removeexplod
trigger1 = !time
ID = 6008
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6007
anim = 6037
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
supermovetime = -1
sprpriority = -9
ownpal = 1
scale = const(size.xscale),const(size.yscale)
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6008
anim = 6027
postype = p1
pos = 0, 0
bindtime = -1
ontop = 1
removetime = -1
supermovetime = -1
sprpriority = 8
ownpal = 1
scale = const(size.xscale),const(size.yscale)
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6006
anim = 6009
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
ontop = 1
supermovetime = -1
sprpriority = 9
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=4000
time = 1
pos = 0, floor(-101 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=3900 || root,stateno=4403
time = 1
pos = floor(95 * root, const(size.xscale)), floor(-123 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=899
time = 1
pos = floor(72 * root, const(size.xscale)), floor(-106 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=897
time = 1
pos = floor(-34 * root, const(size.xscale)), floor(-223 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=4200
time = 1
pos = floor(66 * root, const(size.xscale)), floor(-82 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=4301
time = 1
pos = floor(-45 * root, const(size.xscale)), floor(-113 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=4303
time = 1
pos = floor(63 * root, const(size.xscale)), floor(-144 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 6006
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = ((1.1+0.5*var(10))-0.5*time)*const(size.xscale),((1.1+0.5*var(10))-0.5*time)*const(size.yscale)
trans = Sub
ontop = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 6007
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = ((1.1+0.5*var(10))-0.5*time)*const(size.xscale),((1.1+0.5*var(10))-0.5*time)*const(size.yscale)
trans = Sub
ontop = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 6008
postype = p1  ;p2,front,back,left,right
pos = 0, 0
scale = ((1.1+0.5*var(10))-0.5*time)*const(size.xscale),((1.1+0.5*var(10))-0.5*time)*const(size.yscale)
trans = addalpha
ontop = 1
alpha = 256, 256


[State 0, ChangeState]
type = removeexplod
trigger1 = time = var(10)+3
ID = 6006
[State 0, ChangeState]
type = removeexplod
trigger1 = time = var(10)+3
ID = 6007
[State 0, ChangeState]
type = removeexplod
trigger1 = time = var(10)+3
ID = 6008
[State 0, ChangeState]
type = destroyself
trigger1 = time = var(10)+3

; Green (contracting) x1
[Statedef 6028]
type = A
physics = N
movetype = I
anim = 74140108
sprpriority = 8
ctrl = 0
velset = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(10) = ifelse(root,stateno=4000||root,stateno=899,123,ifelse(root,stateno=896||root,stateno=4200,180,12))

[State 0, VarSet]
type = VarSet
trigger1 = root, stateno = 4200 && root, anim = 4210 && root, animelemtime(1)=0
var(10) = 50

[State 3000, Snd]
type = playsnd
trigger1 = time = var(10)-20
value = S5, 47

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=4000
time = 1
pos = 0, floor(-101 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root, stateno = 4200 && root, anim = 4210
time = 1
pos = floor(-30 * root, const(size.xscale)), floor(-105 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=3900
time = 1
pos = floor(95 * root, const(size.xscale)), floor(-123 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=899
time = 1
pos = floor(72 * root, const(size.xscale)), floor(-106 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=897 || root,stateno=896
time = 1
pos = floor(-34 * root, const(size.xscale)), floor(-223 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
;[State 0, Energy Charge]
;type = Explod
;trigger1 = !time
;ID = 6007
;anim = 6005
;postype = p1
;pos = 0, 0
;bindtime = -1
;removetime = -1
;supermovetime = -1
;sprpriority = -9
;ownpal = 1
;scale = const(size.xscale),const(size.yscale)
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6006
anim = 6046+(root,var(44)*2);ifelse(root,var(44)=1,6048,ifelse((root,var(44)=[2,3]),6050,6046))
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
ontop = 1
supermovetime = -1
sprpriority = 9
ownpal = 1
scale = const(size.xscale),const(size.yscale)
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6008
anim = 6045+(root,var(44)*2);ifelse(root,var(44)=1,6047,ifelse((root,var(44)=[2,3]),6049,6045))
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
ontop = 1
supermovetime = -1
sprpriority = 8
ownpal = 1
scale = const(size.xscale),const(size.yscale)
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 6006
anim = 6009
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
ontop = 1
supermovetime = -1
sprpriority = 9
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = root, stateno != 4200
ID = 6006
postype = p1  ;p2,front,back,left,right
pos = 0, 0
ontop = 1
;scale = ((0.3+0.1*var(10))-0.1*time)*const(size.xscale),((0.3+0.1*var(10))-0.1*time)*const(size.yscale)
scale = ((0.5+0.2*var(10))-0.2*time)*const(size.xscale),((0.5+0.2*var(10))-0.2*time)*const(size.yscale)
;scale = ((1.1+0.3*var(10))-0.3*time)*const(size.xscale),((1.1+0.3*var(10))-0.3*time)*const(size.yscale)
trans = Sub
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = root, stateno != 4200
ID = 6008
postype = p1  ;p2,front,back,left,right
pos = 0, 0
ontop = 1
;scale = ((0.3+0.1*var(10))-0.1*time)*const(size.xscale),((0.3+0.1*var(10))-0.1*time)*const(size.yscale)
scale = ((0.5+0.2*var(10))-0.2*time)*const(size.xscale),((0.5+0.2*var(10))-0.2*time)*const(size.yscale)
;scale = ((1.1+0.3*var(10))-0.3*time)*const(size.xscale),((1.1+0.3*var(10))-0.3*time)*const(size.yscale)
trans = addalpha
alpha = ifelse(time>=ifelse(var(10)<128,64,ifelse(var(10)<64,32,ifelse(var(10)<32,16,ifelse(var(10)<16,8,128)))),256,ifelse(var(10)<128,4*time,ifelse(var(10)<64,8*time,ifelse(var(10)<32,16*time,ifelse(var(10)<16,32*time,2*time))))),256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = root, stateno = 4200
ID = 6006
postype = p1  ;p2,front,back,left,right
pos = 0, 0
ontop = 1
;scale = ((0.3+0.1*var(10))-0.1*time)*const(size.xscale),((0.3+0.1*var(10))-0.1*time)*const(size.yscale)
scale = ((0.5+0.4*var(10))-0.4*time)*const(size.xscale),((0.5+0.4*var(10))-0.4*time)*const(size.yscale)
;scale = ((1.1+0.3*var(10))-0.3*time)*const(size.xscale),((1.1+0.3*var(10))-0.3*time)*const(size.yscale)
trans = Sub
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = root, stateno = 4200
ID = 6008
postype = p1  ;p2,front,back,left,right
pos = 0, 0
ontop = 1
;scale = ((0.3+0.1*var(10))-0.1*time)*const(size.xscale),((0.3+0.1*var(10))-0.1*time)*const(size.yscale)
scale = ((0.5+0.4*var(10))-0.4*time)*const(size.xscale),((0.5+0.4*var(10))-0.4*time)*const(size.yscale)
;scale = ((1.1+0.3*var(10))-0.3*time)*const(size.xscale),((1.1+0.3*var(10))-0.3*time)*const(size.yscale)
trans = addalpha
alpha = ifelse(time>=ifelse(var(10)<128,64,ifelse(var(10)<64,32,ifelse(var(10)<32,16,ifelse(var(10)<16,8,128)))),256,ifelse(var(10)<128,4*time,ifelse(var(10)<64,8*time,ifelse(var(10)<32,16*time,ifelse(var(10)<16,32*time,2*time))))),256

[State 0, ChangeState]
type = removeexplod
trigger1 = time = var(10)+2
[State 0, ChangeState]
type = destroyself
trigger1 = time = var(10)+2



;Shisshou B Shockwave
[Statedef 4050]
physics = N
velset = 0, 0
anim = 9741
[State 7050, palfx]
type = palfx
trigger1 = time = 5
time = 10
add = 0, 0, 0
sinadd = -255, -255, -255, 40
[State 7050, Circle]
type = explod
trigger1 = !time
anim = 7051
ID = 7051
sprpriority = 5
postype = p1
removetime = 15
pausemovetime = -1
supermovetime = -1
[State 7050, Circle]
type = explod
trigger1 = !time
anim = 7050
ID = 7050
sprpriority = 5
postype = p1
removetime = 15
pausemovetime = -1
supermovetime = -1
[State 7050, Shrink]
type = modifyexplod
trigger1 = 1
ID = 7051
scale = 0.0375 * time, 0.0375 * time
[State 7050, Shrink]
type = modifyexplod
trigger1 = 1
ID = 7050
scale = 0.05 * time, 0.05 * time
[State 7050, No Shadow]
type = assertspecial
trigger1 = 1
flag = invisible
ignorehitpause = 1
[State 7050, End]
type = destroyself
trigger1 = time >= 15

;========================< DEADLY SOUBLE COM. SHOCKWAVE >=============================
[Statedef 7050]
physics = N
velset = 0, 0
anim = 9741
[State 7050, palfx]
type = palfx
trigger1 = time = 5
time = 10
add = 0, 0, 0
sinadd = -255, -255, -255, 40
[State 7050, Circle]
type = explod
trigger1 = !time
anim = 7051
ID = 7051
facing = ifelse(random>500, 1, -1)
vfacing = ifelse(random>500, 1, -1)
sprpriority = 5
postype = p1
removetime = 15
pausemovetime = -1
supermovetime = -1
[State 7050, Circle]
type = explod
trigger1 = !time
anim = 7050
ID = 7052
facing = ifelse(random>500, 1, -1)
sprpriority = 5
postype = p1
removetime = 15
pausemovetime = -1
supermovetime = -1
[State 7050, Shrink]
type = modifyexplod
trigger1 = 1
ID = 7051
scale = 0.15 * time, 0.15 * time
[State 7050, Shrink]
type = modifyexplod
trigger1 = 1
ID = 7050
scale = 0.08 * time, 0.08 * time
[State 7050, Shrink]
type = modifyexplod
trigger1 = 1
ID = 7052
scale = 0.05 * time, 0.05 * time
[State 7050, No Shadow]
type = assertspecial
trigger1 = 1
flag = invisible
ignorehitpause = 1
[State 7050, Safety]
type = removeexplod
trigger1 = time >= 15
ID = 7050
[State 7050, End]
type = destroyself
trigger1 = time >= 15


;========================< DEADLY SOUBLE COM. SHOCKWAVE >=============================
[Statedef 7051]
physics = N
velset = 0, 0
anim = 9741
[State 7050, palfx]
type = palfx
trigger1 = time = 5
time = 10
add = 0, 0, 0
sinadd = -255, -255, -255, 40
[State 7050, Circle]
type = explod
trigger1 = !time
anim = 8200
ID = 7051
facing = ifelse(random>500, 1, -1)
vfacing = ifelse(random>500, 1, -1)
sprpriority = 5
postype = p1
removetime = 15
pausemovetime = -1
supermovetime = -1
[State 7050, Circle]
type = explod
trigger1 = !time
anim = 8014
ID = 7050
facing = ifelse(random>500, 1, -1)
sprpriority = 5
postype = p1
removetime = 15
pausemovetime = -1
supermovetime = -1
[State 7050, Shrink]
type = modifyexplod
trigger1 = 1
ID = 7051
scale = 0.15 * time, 0.15 * time
[State 7050, Shrink]
type = modifyexplod
trigger1 = 1
ID = 7050
scale = 0.08 * time, 0.08 * time
[State 7050, Shrink]
type = modifyexplod
trigger1 = 1
ID = 7052
scale = 0.05 * time, 0.05 * time
[State 7050, No Shadow]
type = assertspecial
trigger1 = 1
flag = invisible
ignorehitpause = 1
[State 7050, Safety]
type = removeexplod
trigger1 = time >= 15
ID = 7050
[State 7050, End]
type = destroyself
trigger1 = time >= 15


[Statedef 3125]
physics = N
anim = 9741
[State 3125, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 3125, Dust]
type = explod
trigger1 = !time
anim = 3125
ID = 3125
sprpriority = -2
postype = p1
removetime = 16
[State 3125, Fade]
type = palfx
trigger1 = !time
color = 0
mul = 384, 384, 384
sinadd = -255, -255, -255, 64
time = 16
[State 3125, Shrink]
type = modifyexplod
trigger1 = 1
ID = 3125
scale = 0.2 + (0.05 * time) * const(size.xscale), 0.05 + (0.0125 * time) * const(size.yscale)
[State 3125, End]
type = destroyself
trigger1 = time >= 17

;========================< FLAMES >=============================
;--- GREEN LIGHT ---
[Statedef 7180]
physics = N
velset = 0, 0
anim = 9741
sprpriority = 4
[State 7180, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 7180, flames]
type = explod
trigger1 = 1
anim = 7180
ID = 7180
sprpriority = 3
postype = p2
vel = -.2, -.75
pos = (enemynear, const(size.mid.pos.x)), ifelse((enemynear, statetype = L)||(enemynear,stateno=[1116711,1116712]), 0, (enemynear, const(size.mid.pos.y) + 10))
random = 40, 40
scale = 0.5, 0.5
ownpal = 1
[State 7180, flames]
type = explod
trigger1 = root,var(44)!=3
anim = 8150
ID = 8150
sprpriority = -3
postype = p2
vel = -.2, -.75
pos = (enemynear, const(size.mid.pos.x)), ifelse((enemynear, statetype = L)||(enemynear,stateno=[1116711,1116712]), 0, (enemynear, const(size.mid.pos.y) + 10))
random = 40, 40
scale = 0.5, 0.5
ownpal = 1
[State 7180, Pos]
type = posadd
trigger1 = 1
x = ceil(p2dist x)
y = ceil(p2dist y)
[State End]
type = destroyself
triggerall = numenemy
trigger1 = enemynear, ctrl
trigger2 = enemynear, movetype != H && (enemynear, stateno!=[1251110,1251113])|| enemynear, stateno = 5300
trigger3 = enemynear, statetype = L && (enemynear, stateno != [5080, 5081])
[State End]
type = destroyself
trigger1 = !numenemy || time >= 300 || root, anim = 1502 || (root, stateno = 4200 && root, time <=44)


;--- FIRE ---
[Statedef 7181]
physics = N
velset = 0, 0
anim = 9741
sprpriority = 4
[State 7180, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7180, flames]
type = explod
trigger1 = 1
anim = 7181
ID = 7181
sprpriority = 3
postype = p2
vel = -.2, -.75
pos = (enemynear, const(size.mid.pos.x)), ifelse((enemynear, statetype = L)||(enemynear,stateno=[1116711,1116712]), 0, (enemynear, const(size.mid.pos.y) + 10))
random = 40, 40
scale = 0.5, 0.5
ownpal = 1
[State 7180, Pos]
type = posadd
trigger1 = 1
x = ceil(p2dist x)
y = ceil(p2dist y)
[State End]
type = destroyself
triggerall = numenemy
trigger1 = enemynear, ctrl
trigger2 = enemynear, movetype != H && (enemynear, stateno!=[1251110,1251113])|| enemynear, stateno = 5300
trigger3 = enemynear, statetype = L && (enemynear, stateno != [5080, 5081])
[State End]
type = destroyself
trigger1 = !numenemy || time >= 120




;--- DARK GREEN ---
[Statedef 8150]
physics = N
velset = 0, 0
anim = 9741
sprpriority = 4
[State 7180, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7180, flames]
type = explod
trigger1 = 1
anim = 8150
ID = 8150
sprpriority = 3
postype = p2
vel = -.2, -.75
pos = (enemynear, const(size.mid.pos.x)), ifelse((enemynear, statetype = L), 0, (enemynear, const(size.mid.pos.y) + 10))
random = 40, 40
scale = 0.5, 0.5
ownpal = 1
[State 7180, Pos]
type = posadd
trigger1 = 1
x = ceil(p2dist x)
y = ceil(p2dist y)
[State End]
type = destroyself
triggerall = numenemy
trigger1 = enemynear, ctrl
trigger2 = enemynear, movetype != H && (enemynear, stateno!=[1251110,1251113])|| enemynear, stateno = 5300
trigger3 = enemynear, statetype = L && (enemynear, stateno != [5080, 5081])
[State End]
type = destroyself
trigger1 = !numenemy || time >= 120



;========================< SPARKS >=============================
;--- Guard Normal ---
[Statedef 8000]
type = A
physics = N
movetype = I
anim = 8000
velset = 0, 0
sprpriority = 5

[State 8000, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8000, Scale]
type = angledraw
trigger1 = 1
scale = 0.125 + (0.046875 * time), 0.125 + (0.046875 * time)
[State 8000, Trans]
type = trans
trigger1 = time < 4
trans = addalpha
alpha = 256, 256
[State 8000, Trans]
type = trans
trigger1 = time >= 4
trans = addalpha
alpha = 256 - 64 * (time -4), 256

[State 8000, End]
type = destroyself
trigger1 = time >= 8


;--- Guard Special ---
[Statedef 8001]
type = A
physics = N
movetype = I
anim = 8001
velset = 0, 0
sprpriority = 5

[State 8001, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8001, Scale]
type = angledraw
trigger1 = 1
scale = 0.25 + (0.03125 * time), 0.25 + (0.03125 * time)
[State 8001, Trans]
type = trans
trigger1 = time < 4
trans = addalpha
alpha = 256, 256
[State 8001, Trans]
type = trans
trigger1 = time >= 4
trans = addalpha
alpha = 256 - 64 * (time -4), 256

[State 8001, End]
type = destroyself
trigger1 = time >= 8


;--- Weak ---
[Statedef 8010]
type = A
physics = N
movetype = I
anim = 8010
velset = 0, 0
sprpriority = 5

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8010, Angle]
type = angleset
trigger1 = !time
value = 30 * (random % 12)
[State 8010, Angle]
type = angleadd
trigger1 = 1
value = 30
[State 8010, Scale]
type = angledraw
trigger1 = time < 10
scale = 0.3 -(time * 0.03), 0.3 -(time * 0.03)
[State 8010, Scale]
type = angledraw
trigger1 = time >= 10
scale = 0, 0
[State 8010, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8011
ID = 1
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 5
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.15 + (0.009375 * time), 0.15 + (0.009375 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8010, Streaks]
type = explod
trigger1 = !time
anim = 8012
ID = 2
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 5
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.15 + (0.009375 * time), 0.15 + (0.009375 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8010, Impact]
type = explod
trigger1 = !time
anim = 8014
ID = 4
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 3
removetime = 8
pausemovetime = -1
supermovetime = -1
[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 0.3 -(0.0375 * time), 0.3 -(0.0375 * time)
trans = addalpha
alpha = 128 -(16 * time), 256

[State 8010, End]
type = removeexplod
trigger1 = time >= 16
[State 8010, End]
type = destroyself
trigger1 = time >= 16


;--- Medium ---
[Statedef 8011]
type = A
physics = N
movetype = I
anim = 8010
velset = 0, 0
sprpriority = 5

[State 8011, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8011, Angle]
type = angleset
trigger1 = !time
value = 30 * (random % 12)
[State 8011, Angle]
type = angleadd
trigger1 = 1
value = 30
[State 8011, Scale]
type = angledraw
trigger1 = time < 10
scale = 0.35 -(time * 0.035), 0.35 -(time * 0.035)
[State 8011, Scale]
type = angledraw
trigger1 = time >= 10
scale = 0, 0
[State 8011, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8011, Center]
type = explod
trigger1 = !time
anim = 8011
ID = 1
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 5
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8011, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.175 + (0.0109375 * time), 0.175 + (0.0109375 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8011, Streaks]
type = explod
trigger1 = !time
anim = 8012
ID = 2
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 5
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8011, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.175 + (0.0109375 * time), 0.175 + (0.0109375 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8011, Impact]
type = explod
trigger1 = !time
anim = 8014
ID = 4
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 3
removetime = 8
pausemovetime = -1
supermovetime = -1
[State 8011, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 0.35 -(0.04375 * time), 0.35 -(0.04375 * time)
trans = addalpha
alpha = 128 -(16 * time), 256

[State 8011, End]
type = removeexplod
trigger1 = time >= 16
[State 8011, End]
type = destroyself
trigger1 = time >= 16


;--- Strong ---
[Statedef 8012]
type = A
physics = N
movetype = I
anim = 8010
velset = 0, 0
sprpriority = 5

[State 8012, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8012, Angle]
type = angleset
trigger1 = !time
value = 30 * (random % 12)
[State 8012, Angle]
type = angleadd
trigger1 = 1
value = 30
[State 8012, Scale]
type = angledraw
trigger1 = time < 10
scale = 0.4 -(time * 0.04), 0.4 -(time * 0.04)
[State 8012, Scale]
type = angledraw
trigger1 = time >= 10
scale = 0, 0
[State 8012, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8012, Center]
type = explod
trigger1 = !time
anim = 8011
ID = 1
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 5
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8012, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.2 + (0.0125 * time), 0.2 + (0.0125 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8012, Streaks]
type = explod
trigger1 = !time
anim = 8012
ID = 2
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 5
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8012, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.2 + (0.0125 * time), 0.2 + (0.0125 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8012, Impact]
type = explod
trigger1 = !time
anim = 8014
ID = 4
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 3
removetime = 8
pausemovetime = -1
supermovetime = -1
[State 8012, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 0.4 -(0.05 * time), 0.4 -(0.05 * time)
trans = addalpha
alpha = 128 -(16 * time), 256

[State 8012, End]
type = removeexplod
trigger1 = time >= 16
[State 8012, End]
type = destroyself
trigger1 = time >= 16


;--- Special ---
[Statedef 8013]
type = A
physics = N
movetype = I
anim = 8010+(root,var(49))*10
velset = 0, 0
sprpriority = 5

[State 8013, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8013, Angle]
type = angleset
trigger1 = !time
value = 30 * (random % 12)
[State 8013, Angle]
type = angleadd
trigger1 = 1
value = 30
[State 8013, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.45 - (Time * 0.045), 0.45 - (Time * 0.045)
ignoreHitPause = 1
[State 8012, Scale]
type = angledraw
trigger1 = time >= 10
scale = 0, 0
[State 8013, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8013, Center]
type = explod
trigger1 = !time
anim = 8011+(root,var(49))*10
ID = 1
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 5
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8013, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.225 + (0.0140625 * time), 0.225 + (0.0140625 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8013, Streaks]
type = explod
trigger1 = !time
anim = 8012+(root,var(49))*10
ID = 2
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 5
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8013, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.225 + (0.0140625 * time), 0.225 + (0.0140625 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8013, P2 Back]
type = explod
trigger1 = !time
anim = 8013+(root,var(49))*10
ID = 3
postype = p1
vfacing = ifelse(random < 500, -1, 1)
sprpriority = -3
removetime = 8
pausemovetime = -1
supermovetime = -1
[State 8013, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 0.4, 0.4
trans = addalpha
alpha = 256 -(32 * time), 256

[State 8013, Impact]
type = explod
trigger1 = !time
anim = 8014
ID = 4
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 3
removetime = 8
pausemovetime = -1
supermovetime = -1
[State 8013, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 0.45 -(0.05625 * time), 0.45 -(0.05625 * time)
trans = addalpha
alpha = 192 -(24 * time), 256

[State 8013, End]
type = removeexplod
trigger1 = time >= 16
[State 8013, End]
type = destroyself
trigger1 = time >= 16


;--- Super ---
[Statedef 8014]
type = A
physics = N
movetype = I
anim = 8010+(root,var(49))*20
velset = 0, 0
sprpriority = 5

[State 8014, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8014, Angle]
type = angleset
trigger1 = !time
value = 30 * (random % 12)
[State 8014, Angle]
type = angleadd
trigger1 = 1
value = 30
[State 8014, Scale]
type = angledraw
trigger1 = time < 10
scale = 0.5 -(time * 0.05), 0.5 -(time * 0.05)
[State 8012, Scale]
type = angledraw
trigger1 = time >= 10
scale = 0, 0
[State 8014, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8014, Center]
type = explod
trigger1 = !time
anim = 8011+(root,var(49))*20
ID = 1
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 5
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8014, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.25 + (0.015625 * time), 0.25 + (0.015625 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8014, Streaks]
type = explod
trigger1 = !time
anim = 8012+(root,var(49))*20
ID = 2
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 5
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8014, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.25 + (0.015625 * time), 0.25 + (0.015625 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8014, P2 Back]
type = explod
trigger1 = !time
anim = 8013+(root,var(49))*20
ID = 3
postype = p1
vfacing = ifelse(random < 500, -1, 1)
sprpriority = -3
removetime = 8
pausemovetime = -1
supermovetime = -1
[State 8014, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 0.5, 0.5
trans = addalpha
alpha = 256 -(32 * time), 256

[State 8014, Impact]
type = explod
trigger1 = !time
anim = 8014
ID = 4
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 3
removetime = 8
pausemovetime = -1
supermovetime = -1
[State 8014, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 0.5 -(0.0625 * time), 0.5 -(0.0625 * time)
trans = addalpha
alpha = 256 -(32 * time), 256

[State 8014, End]
type = removeexplod
trigger1 = time >= 16
[State 8014, End]
type = destroyself
trigger1 = time >= 16


[Statedef 8019]
type = A
physics = N
movetype = I
anim = 8010;+(root,var(49))*20
velset = 0, 0
sprpriority = 5

[State 8014, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8014, Angle]
type = angleset
trigger1 = !time
value = 30 * (random % 12)
[State 8014, Angle]
type = angleadd
trigger1 = 1
value = 30
[State 8014, Scale]
type = angledraw
trigger1 = time < 10
scale = 0.5 -(time * 0.05), 0.5 -(time * 0.05)
[State 8012, Scale]
type = angledraw
trigger1 = time >= 10
scale = 0, 0
[State 8014, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8014, Center]
type = explod
trigger1 = !time
anim = 8011;+(root,var(49))*20
ID = 1
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 5
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8014, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.25 + (0.015625 * time), 0.25 + (0.015625 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8014, Streaks]
type = explod
trigger1 = !time
anim = 8012;+(root,var(49))*20
ID = 2
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 5
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8014, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.25 + (0.015625 * time), 0.25 + (0.015625 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8014, P2 Back]
type = explod
trigger1 = !time
anim = 8013;+(root,var(49))*20
ID = 3
postype = p1
vfacing = ifelse(random < 500, -1, 1)
sprpriority = -3
removetime = 8
pausemovetime = -1
supermovetime = -1
[State 8014, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 0.5, 0.5
trans = addalpha
alpha = 256 -(32 * time), 256

[State 8014, Impact]
type = explod
trigger1 = !time
anim = 8014
ID = 4
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 3
removetime = 8
pausemovetime = -1
supermovetime = -1
[State 8014, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 0.5 -(0.0625 * time), 0.5 -(0.0625 * time)
trans = addalpha
alpha = 256 -(32 * time), 256

[State 8014, End]
type = removeexplod
trigger1 = time >= 16
[State 8014, End]
type = destroyself
trigger1 = time >= 16



;--- Reversal ---
[Statedef 8020]
type = A
physics = N
movetype = I
anim = 8020
velset = 0, 0
sprpriority = 5

[State 8020, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8020, Scale]
type = angledraw
trigger1 = 1
scale = 0.25 + (0.09375 * time), 0.25 + (0.09375 * time)
[State 8020, Trans]
type = trans
trigger1 = time < 4
trans = addalpha
alpha = 256, 256
[State 8020, Trans]
type = trans
trigger1 = time >= 4
trans = addalpha
alpha = 256 - 64 * (time -4), 256

[State 8020, End]
type = destroyself
trigger1 = time >= 8


;========================< DUSTS >=============================
;--- Jump ---
[Statedef 8100]
type = S
anim = 9741
velset = 0, 0

[State 8100, Bind]
type = bindtoroot
trigger1 = time

[State 8100, Dust]
type = explod
trigger1 = !time
anim = 8100
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 8100, Dust]
type = explod
trigger1 = !time || time = 2 || time = 6
anim = 8101
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8100, End]
type = destroyself
trigger1 = time >= 7

;--- Dust ---
[Statedef 8101]
type = S
anim = 9741
velset = 0, 0

[State 8100, Bind]
type = bindtoroot
trigger1 = 1
pos = 0, 8

[State 8100, Dust]
type = explod
trigger1 = !time || time = 2 || time = 5 || time = 8 || time = 12
anim = 8101
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8100, End]
type = destroyself
trigger1 = time >= 12
trigger2 = root, movetype = H

;--- Dash ---
[Statedef 8103]
type = A
anim = 9741
velset = 0, 0
sprpriority = 5

[State 8103, Pos]
type = posset
trigger1 = !time = 0
y = 0

[State 8103, Dust]
type = explod
trigger1 = time = 0 || time = 3 || time = 6
anim = 8103
ID = ifelse((time = 6), 3, ifelse((time = 3), 2, 1))
postype = p1
pos = 0, -4
random = 8, 8
vel = -3 -(random / 1000.0), -2 -(random / 2000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
sprpriority = 3
pausemovetime = -1
supermovetime = -1

[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.1 + (0.025 * time), 0.1 + (0.025 * time)
trans = addalpha
alpha = 256 -(16 * time), 256
[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.1 + (0.025 * (time -3)), 0.1 + (0.025 * (time -3))
trans = addalpha
alpha = 256 -(16 * (time -3)), 256
[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 0.1 + (0.025 * (time -6)), 0.1 + (0.025 * (time -6))
trans = addalpha
alpha = 256 -(16 * (time -6)), 256

[State 8103, End]
type = removeexplod
trigger1 = time >= 22
[State 8103, End]
type = destroyself
trigger1 = !numexplod


;--- Impact ---
[Statedef 8110]
type = A
anim = 9741
velset = 0, 0
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S0,699
persistent = 0

[State 8110, FX]
type = explod
trigger1 = !time
anim = 8110
ID = 2;ifelse(time = 8, 3, ifelse(time = 4, 2, 1))
postype = p1
removetime = 8
sprpriority = -4
pausemovetime = -1
supermovetime = -1

[State 8110, FX]
type = explod
trigger1 = !time
anim = 8120
ID = 2
postype = p1
removetime = 8
sprpriority = -4
pausemovetime = -1
supermovetime = -1

[State 8110, Scale]
type = modifyexplod
trigger1 = 1
scale = 0.25 + (0.03125 * time), 0.25 + (0.03125 * time)
trans = addalpha
alpha = ifelse(time < 4, 256, 256 -(64 * (time -4))), 256

[State 8110, End]
type = removeexplod
trigger1 = time >= 8

[State 8110, End]
type = destroyself
trigger1 = !numexplod


;WALL IMPACT DUST
[StateDef 8111]
type = A
anim = 9741
velSet = 0,0
sprPriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S0,699
persistent = 0

[State 8111, Impact Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 8111
ID = ifElse(Time = 8, 3, ifElse(Time = 4, 2, 1))
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Impact Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 8121
ID = 2
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Scale]
type = ModifyExplod
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8111, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8111, End]
type = DestroySelf
trigger1 = !NumExplod


;========================< RECOVER FX >=============================
[Statedef 8200]
type = A
velset = 0, 0
anim = 8200
sprpriority = 5
[State 8200, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8200, Scale]
type = angledraw
trigger1 = 1
scale = 0.25 + (0.017 * time), 0.25 + (0.017 * time)
[State 8200, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(256 -17.1 * time), 256

[State 8200, End]
type = destroyself
trigger1 = time >= 15


;========================< COUNTER FX >=============================
[Statedef 8290]
type = A
physics = N
velset = 0, 0
anim = 9741

[State 8290, Circle]
type = explod
trigger1 = !numexplod(8290)
anim = 8290
ID = 8290
sprpriority = 64
postype = p1
facing = facing
removetime = 32
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8290, Scale]
type = modifyexplod
trigger1 = time < 8
ID = 8290
scale = 0.5, 0.5
trans = addalpha
alpha = 256, 0
[State 8290, Scale]
type = modifyexplod
trigger1 = time >= 8
ID = 8290
scale = 0.5 + .0625 * (time -8), 0.5 + .0625 * (time -8)
trans = addalpha
alpha = 256 -32 * (time -8), 32 * (time -8)

[State 8290, Safety]
type = removeexplod
trigger1 = time >= 16
[State 8290, End]
type = destroyself
trigger1 = time >= 16

;MAX MODE TEXT FX
[StateDef 8291]
type = A
physics = N
velSet = 0,0
anim = 9741

[State 8291, "Power Up!" Text Explod]
type = Explod
trigger1 = !NumExplod(8291)
anim = 8291
ID = 8291
sprPriority = 64
posType = P1
facing = Facing
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8291, Scale]
type = ModifyExplod
trigger1 = Time < 8
ID = 8291
scale = 0.5, .5
trans = AddAlpha
alpha = 256,0

[State 8291, Scale]
type = ModifyExplod
trigger1 = Time >= 8
ID = 8291
scale = 0.5 + 0.0625 * (Time - 8), 0.5 + 0.0625 * (Time - 8)
trans = AddAlpha
alpha = 256 - 32 * (Time - 8), 32 * (Time - 8)

[State 8291, Safety]
type = RemoveExplod
trigger1 = Time >= 16

[State 8291, End]
type = DestroySelf
trigger1 = Time >= 16


;====================< POWER CHARGE >====================
;--- MAIN FX ---
[Statedef 8330]
type = A
physics = N
movetype = I
anim = 9741
ctrl = 0
velset = 0, 0

[State 8330, Bind]
type = bindtoroot
trigger1 = (root, anim = 730)
pos = 0, 0
[State 8330, Snd]
type = playsnd
trigger1 = !time
value = 7, 4
channel = 0

[State 8330, Aura]
type = explod
trigger1 = !numexplod(8330)
ID = 8330
anim = 8330
sprpriority = 3
postype = p1
bindtime = -1
removetime = -1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 8330, Dust]
type = explod
trigger1 = !(time % 6)
anim = 8105
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8330, FX]
type = modifyexplod
trigger1 = root, powermax < 5000
trigger1 = numexplod(8330) && root, power < 3000
ID = 8330
scale = 0.6, 0.15 + (0.6 * (root, power / 3000.0))
[State 8330, FX]
type = modifyexplod
trigger1 = root, powermax < 5000
trigger1 = numexplod(8330) && root, power >= 3000
ID = 8330
scale = 0.6, 0.75

[State 8330, FX]
type = modifyexplod
trigger1 = root, powermax >= 5000
trigger1 = numexplod(8330) && root, power < 5000
ID = 8330
scale = 0.6, 0.15 + (0.6 * (root, power / 5000.0))
[State 8330, FX]
type = modifyexplod
trigger1 = root, powermax >= 5000
trigger1 = numexplod(8330) && root, power >= 5000
ID = 8330
scale = 0.6, 0.75

[State 8330, End]
type = stopsnd
trigger1 = root, anim != 730
channel = 0
[State 8330, End]
type = removeexplod
trigger1 = root, anim != 730
ID = 8330
[State 8330, End]
type = destroyself
trigger1 = root, anim != 730


;--- Particles ---
[Statedef 8331]
type = A
physics = N
movetype = I
anim = 9741
ctrl = 0
velset = 0, 0

[State 8331, BindToRoot]
type = BindToRoot
trigger1 = !(Time % 8)
pos = ceil(-151 + (Random / 3.125)), ceil(98 - (Random / 3.125))

[State 8331, Particle]
type = Explod
trigger1 = (Time % 8) = 1
anim = 8331
sprPriority = ifElse(Random < 750, 5, -1)
posType = P1
vel = ((RootDist x) / 32.0), ((RootDist y - 90) / 32.0)
scale = ifElse(Random < 500, 0.5, -0.5), ifElse(Random < 500, 0.5, -0.5)
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8331, End]
type = removeexplod
trigger1 = root, anim != 730
[State 8331, End]
type = destroyself
trigger1 = root, anim != 730


;====================< ZERO COUNTER PAUSE >====================
[Statedef 8350]
type = A
physics = N
movetype = I
anim = 9741
ctrl = 0
velset = 0, 0

[State 8350, BG PalFX]
type = bgpalfx
trigger1 = 1
time = 1
color = 16 * time
mul = 16 * time, 16 * time, 16 * time

[State 8350, Circle]
type = explod
trigger1 = !time
anim = 8350
ID = 1
sprpriority = 3
postype = p1
removetime = 16
supermovetime = -1
ownpal = 1

[State 8350, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = (0.0625 * time), (0.0625 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8350, Lightning]
type = explod
trigger1 = !time
anim = 8351
ID = 2
sprpriority = -2
postype = p1
pos = 0, -ceil(pos y)
supermovetime = -1
ownpal = 1

[State 8350, End]
type = destroyself
trigger1 = time >= 16

;========================< CUSTOM COMBO >=============================
[Statedef 8400]
type = A
physics = N
movetype = I
anim = 8400
ctrl = 0
velset = 0, 0
sprpriority = 5

[State 8400, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8400, BG PalFX]
type = bgpalfx
trigger1 = time < 25
time = 1
mul = 128, 128, 128

[State 8400, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)
[State 8400, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8400, Scale]
type = angledraw
trigger1 = time < 8
scale = (0.0625 * time), (0.0625 * time)
[State 8400, Scale]
type = angledraw
trigger1 = time >= 8
scale = 0.5, 0.5
[State 8400, Trans]
type = trans
trigger1 = time < 16
trans = addalpha
alpha = 256, 256
[State 8400, Trans]
type = trans
trigger1 = time >= 16
trans = addalpha
alpha = ceil(256 - 25.6 * (time -16)), 256

[State 8400, Lines]
type = explod
trigger1 = !time
anim = 8401
ID = 1
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 2 -(0.125 * time), 2 -(0.125 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 8400, Circle]
type = explod
trigger1 = time = 16
anim = 8402
ID = 2
sprpriority = 5
postype = p1
removetime = 32
supermovetime = -1

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = (0.1 * (time -16)), (0.1 * (time -16))
trans = addalpha
alpha = ceil(256 - 25.6 * (time -16)), 256

[State 8400, Safety]
type = removeexplod
trigger1 = time >= 26
[State 8400, End]
type = destroyself
trigger1 = time >= 26



;========================< SUPERPAUSE FX >=============================
;--- --Level 1 -----
[Statedef 8500]
type = A
velset = 0, 0
anim = 8500
sprpriority = 5

[State 8500, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S7,0
volume = 255
channel = 0
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root, stateno = 3000
time = 1
pos = floor(-30 * root, const(size.xscale)), floor(-105 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root, stateno = 3100
time = 1
pos = floor(16 * root, const(size.xscale)), floor(-151 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root, stateno = 3200
time = 1
pos = floor(0 * root, const(size.xscale)), floor(-101 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root, stateno = 3300
time = 1
pos = floor(-35 * root, const(size.xscale)), floor(-145 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root, stateno = 3400
time = 1
pos = floor(-58 * root, const(size.xscale)), floor(-114 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1

[State 8500, BG PalFX]
type = bgpalfx
trigger1 = time < 39
time = 1
color = 0
mul = 0, 0, 256

[State 8500, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)
[State 8500, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8500, Scale]
type = angledraw
trigger1 = time < 16
scale = (0.03125 * time), (0.03125 * time)
[State 8500, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
[State 8500, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8500, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8501
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256
[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256
[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256
[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8500, Circle]
type = explod
trigger1 = time = 24
anim = 8502
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 32
supermovetime = -1

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8500, Safety]
type = removeexplod
trigger1 = time >= 40
[State 8500, End]
type = destroyself
trigger1 = time >= 40


;--- --Level 2 -----
[Statedef 8510]
type = A
velset = 0, 0
anim = 8510
sprpriority = 5

[State 8510, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S7,0
;value = S7,9
volume = 255
channel = 0

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root, stateno = 3500
time = 1
pos = 86*root,const(size.xscale),-135*root,const(size.yscale)
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root, stateno = 3600
time = 1
pos = ifelse(root,animelemtime(2)>=0,-3,-34)*root,const(size.xscale),ifelse(root,animelemtime(2)>=0,-228,-223)*root,const(size.yscale)
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root, stateno = 3700
time = 1
pos = floor(-58 * root, const(size.xscale)), floor(-114 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root, stateno = 3800
time = 1
pos = floor(-1 * root, const(size.xscale)), floor(-150 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root, stateno = 3900
time = 1
pos = floor(-35 * root, const(size.xscale)), floor(-154 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time < 39
time = 1
color = 0
mul = 192, 0, 256

[State 8510, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)
[State 8510, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8510, Scale]
type = angledraw
trigger1 = time < 16
scale = (0.03125 * time), (0.03125 * time)
[State 8510, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
[State 8510, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8510, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8511
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256
[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256
[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256
[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8510, Circle]
type = explod
trigger1 = time = 24
anim = 8512
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 32
supermovetime = -1

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8510, Safety]
type = removeexplod
trigger1 = time >= 40
[State 8510, End]
type = destroyself
trigger1 = time >= 40


;--- --Level 3 -----
[Statedef 8520]
type = A
velset = 0, 0
anim = 8520
sprpriority = 5

[State 8520, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root, stateno = 4000
time = 1
pos = 0, floor(-101 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root, stateno = 4100 || root, stateno = 4400
time = 1
pos = ceil(12 * root, const(size.xscale)), ceil(-140 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root, stateno = 4200
time = 1
pos = 86*root,const(size.xscale),-135*root,const(size.yscale)
ignorehitpause = 1
persistent = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root, stateno = 4300
time = 1
pos = ceil(55 * root, const(size.xscale)), ceil(-79 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root, stateno = 4403
time = 1
pos = floor(-35 * root, const(size.xscale)), floor(-154 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S7,10
volume = 255
channel = 0

[State 8520, Assert]
type = assertspecial
trigger1 = time < 40
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 8520, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)
[State 8520, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8520, Scale]
type = angledraw
trigger1 = time < 16
scale = (0.03125 * time), (0.03125 * time)
[State 8520, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
[State 8520, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8520, Portrait 1]
type = Explod
trigger1 = !Time
anim = ifelse(root,var(2)=70,8529,ifelse(root, stateno = 4000,8527,ifelse(root, stateno = 4200,8525,ifelse(root,stateno=4300,8528,8526))))
ID = 20
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1
;
[State 8520, Portrait 2]
type = Explod
trigger1 = !Time
anim = ifelse(root,var(2)=70,8529,ifelse(root, stateno = 4000,8527,ifelse(root, stateno = 4200,8525,ifelse(root,stateno=4300,8528,8526))))
ID=21
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1

[State 8520, Scale Portrait 1a]
type = ModifyExplod
trigger1 = NumExplod(20) && Time < 16
ID = 20
posType = Back
pos = GameWidth/2 + (0), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 1 - (0.03125 * Time), 1 - (0.03125 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 2a]
type = ModifyExplod
trigger1 = NumExplod(21) && Time < 16
ID = 21
posType = Back
pos = GameWidth/2 + (0), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 2 - (0.09375 * Time), 2 - (0.09375 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 1b]
type = ModifyExplod
trigger1 = NumExplod(20) && (Time = [16,32])
ID = 20
posType = Back
pos = GameWidth/2 + (0), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 256, 256

[State 8520, Scale Portrait 2b]
type = ModifyExplod
trigger1 = NumExplod(21) && (Time = [16,32])
ID = 21
scale = 0,0

[State 8520, Scale Portrait 1c]
type = ModifyExplod
trigger1 = NumExplod(20) && Time >= 32
ID = 20
posType = Back
pos = GameWidth/2 + (0) + (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Scale Portrait 2c]
type = ModifyExplod
trigger1 = NumExplod(21) && Time >= 32
ID = 21
posType = Back
pos = GameWidth/2 + (0) - (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8521
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256
[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256
[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256
[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8520, Circle]
type = explod
trigger1 = time = 24
anim = 8522
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 32
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8520, Safety]
type = removeexplod
trigger1 = time >= 40
[State 8520, End]
type = destroyself
trigger1 = time >= 40

;---Team Level 3---
[Statedef 8522]
type = A
velset = 0, 0
anim = 8520
sprpriority = 5

[State 8520, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root, stateno = 4403
time = 1
pos = floor(-35 * root, const(size.xscale)), floor(-154 * root, const(size.yscale))
ignorehitpause = 1
persistent = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S7,10
volume = 255
channel = 0

[State 8520, Assert]
type = assertspecial
trigger1 = time < 40
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 8520, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)
[State 8520, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8520, Scale]
type = angledraw
trigger1 = time < 16
scale = (0.03125 * time), (0.03125 * time)
[State 8520, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
[State 8520, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8520, Portrait 1]
type = Explod
trigger1 = !Time
anim = ifelse((partner, name="Bardock"),8530,ifelse(partner, name="Vegeta",8532,8531))
ID = 20
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1
;
[State 8520, Portrait 2]
type = Explod
trigger1 = !Time
anim = ifelse((partner, name="Bardock"),8530,ifelse(partner, name="Vegeta",8532,8531))
ID=21
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1

[State 8520, Scale Portrait 1a]
type = ModifyExplod
trigger1 = NumExplod(20) && Time < 16
ID = 20
posType = Back
pos = GameWidth/2 + (0), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 1 - (0.03125 * Time), 1 - (0.03125 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 2a]
type = ModifyExplod
trigger1 = NumExplod(21) && Time < 16
ID = 21
posType = Back
pos = GameWidth/2 + (0), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 2 - (0.09375 * Time), 2 - (0.09375 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 1b]
type = ModifyExplod
trigger1 = NumExplod(20) && (Time = [16,32])
ID = 20
posType = Back
pos = GameWidth/2 + (0), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 256, 256

[State 8520, Scale Portrait 2b]
type = ModifyExplod
trigger1 = NumExplod(21) && (Time = [16,32])
ID = 21
scale = 0,0

[State 8520, Scale Portrait 1c]
type = ModifyExplod
trigger1 = NumExplod(20) && Time >= 32
ID = 20
posType = Back
pos = GameWidth/2 + (0) + (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Scale Portrait 2c]
type = ModifyExplod
trigger1 = NumExplod(21) && Time >= 32
ID = 21
posType = Back
pos = GameWidth/2 + (0) - (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8521
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256
[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256
[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256
[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8520, Circle]
type = explod
trigger1 = time = 24
anim = 8522
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 32
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8520, Safety]
type = removeexplod
trigger1 = time >= 40
[State 8520, End]
type = destroyself
trigger1 = time >= 40


;========================= SPECIAL FINISH =================
[Statedef 8600]
ctrl = 0
anim = 9741
sprpriority = -10

[State 8600, Assert]
type = AssertSpecial
trigger1 = 1
flag = NoMusic
flag2 = nobardisplay
flag3 = nofg
ignorehitpause=1

[State 8600, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S7,5
volume = 255
channel = 0
persistent=0

[State 8600, Explod]
type = Explod
trigger1 = time = 0
anim =8550
ID = 8600
pos = 0,0
postype = back
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime =30
supermovetime = 9999
pausemovetime = 9999
scale = 1.2,1.2
sprpriority = -990
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 1
;persistent =

[State 8600, ModifyExplod]
type = ModifyExplod
trigger1 = time>=1
ID = 8600
trans = addalpha
alpha=256-((time)*10),256

[State 8600, End]
type=removeexplod
trigger1= time>=120
trigger2= roundstate<3
[State 8600, End]
type=destroyself
trigger1= roundstate!=3

;========================<SUPER FINISH>=============================
; Super Finish
[StateDef 8605]
type = A
velSet = 0,0
anim = 9741

[State 7600, Snd]
type = assertspecial
trigger1 = root, var(55) = [1,2]
trigger1 = time <= 80
flag = nomusic

[State 3000, Broly's Theme - "Akuma no Burori" ("Broly the Devil")]
type = helper
trigger1 = root, var(55) >= 2
trigger1 = (var(0)=1 || var(0)=14 || var(0)=9 || var(0)=20 || var(0)=18) && !numhelper(8998) && matchover
stateno = 8998
ID = 8998
name = "Broly the Devil"
postype = p1
pos = -25, -66
supermovetime = 9999
pausemovetime = 9999
size.xscale = 1
persistent = 1
size.yscale = 1
ownpal = 1

[State 8600, Super Finish Sound]
type = PlaySnd
trigger1 = !Time
value = 7,7
channel = 0

[State 8600, SndPan]
type = SndPan
trigger1 = Time <= 80
channel = 1
absPan = ceil(sin(GameTime / 20.0 * pi) * 160)

[State 8600, BG PalFX]
type = BGpalFX
triggerall = root, stateno != 4000 && root, stateno != 4200 && root, stateno != [4301,4303]
trigger1 = Time < 16
time = 1
mul = 0, 0, 0

[State 8600, BG PalFX]
type = BGpalFX
triggerall = root, stateno != 4000 && root, stateno != 4200 && root, stateno != [4301,4303]
trigger1 = Time = [16,24)
time = 1
mul = 32 * (Time - 16), 32 * (Time - 16), 32 * (Time - 16)

[State 8600, Move Name: Custom Combo]
type = VarSet
trigger1= !Time && Root, var(20)
var(0) = 0

[State 8600, Move Name: Eraser Cannon]
type = VarSet
trigger1 = !Time && numhelper(3005)
var(0) = 4

[State 8600, Move Name: Gigantic Roar]
type = VarSet
trigger1 = !Time && numhelper(3105)
var(0) = 7

[State 8600, Move Name: Burst Eraser]
type = VarSet
trigger1 = !Time && numhelper(3205)
var(0) = 3

[State 8600, Move Name: Full Power Energy Wave]
type = VarSet
trigger1 = !Time && numhelper(3305)
var(0) = 6

[State 8600, Move Name: Eraser Shot Volley]
type = VarSet
trigger1 = !Time && numhelper(3505)
var(0) = 5

[State 8600, Move Name: Planet Geyser]
type = VarSet
trigger1 = !Time && numhelper(3605)
var(0) = 19

[State 8600, Move Name: Gigantic Meteor]
type = VarSet
trigger1 = !Time && numhelper(3905)
var(0) = 12

[State 8600, Move Name: Blaster Meteor]
type = VarSet
trigger1 = !Time && numhelper(4005)
var(0) = 1

[State 8600, Move Name: Gigantic Press]
type = VarSet
trigger1 = !Time && root, stateno = 3400
var(0) = 15

[State 8600, Move Name: Gigantic Hammer]
type = VarSet
trigger1 = !Time && root, stateno = [3700,3706]
var(0) = 11

[State 8600, Move Name: Gigantic Buster]
type = VarSet
trigger1 = !Time && root, stateno = [3800,3807]
var(0) = 8

[State 8600, Move Name: Eraser Cannon]
type = VarSet
trigger1 = !Time && root, stateno = 3000
var(0) = 4

[State 8600, Move Name: Gigantic Roar]
type = VarSet
trigger1 = !Time && root, stateno = 3100
var(0) = 7

[State 8600, Move Name: Burst Eraser]
type = VarSet
trigger1 = !Time && root, stateno = 3200
var(0) = 3

[State 8600, Move Name: Full Power Energy Wave]
type = VarSet
trigger1 = !Time && root, stateno = 3300
var(0) = 6

[State 8600, Move Name: Eraser Shot Volley]
type = VarSet
trigger1 = !Time && root, stateno = 3500
var(0) = 5

[State 8600, Move Name: Planet Geyser]
type = VarSet
trigger1 = !Time && root, stateno = 3600
var(0) = 19

[State 8600, Move Name: Gigantic Meteor]
type = VarSet
trigger1 = !Time && root, stateno = 3900
var(0) = 12

[State 8600, Move Name: Blaster Meteor]
type = VarSet
trigger1 = !Time && root, stateno = 4000
var(0) = 1

[State 8600, Move Name: Gigantic Omegastorm]
type = VarSet
trigger1 = !Time && root, stateno = 4200
var(0) = 14

[State 8600, Move Name: Omega Blaster]
type = VarSet
trigger1 = !Time && root, stateno = [4100,4106]
var(0) = 18

[State 8600, Move Name: Gigantic Catastrophe]
type = VarSet
trigger1 = !Time && root, stateno = [4300,4303]
var(0) = 9

[State 8600, Move Name: Omega Kamehameha / Omega Galick Gun / Omega Spirit Cannon]
type = VarSet
trigger1 = numpartner
trigger1 = !Time && root, stateno = [4400,4409]
var(0) = ifelse(numpartner,ifelse(partner,name="Bardock",21,ifelse(partner,name="Vegeta",22,20)),0)

[State 8600, Super Finish Explod]
type = Explod
trigger1 = !Time
anim = 8600
ID = 8600
ontop = 1
postype = Left
pos = GameWidth/2 + (0), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Super Finish Explod Fade]
type = ModifyExplod
trigger1 = NumExplod(8600)
ID = 8600
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), 256

[State 8600, Text 1]
type = Explod
trigger1 = !Time
anim = 8610 + var(0)
ID = 10
onTop = 1
posType = Left
pos = GameWidth/2 + (0), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 2]
type = Explod
trigger1 = !Time
anim = 8610 + var(0)
ID = 11
onTop = 1
posType = left
pos = GameWidth/2 + (0), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 1 Fade]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), ifElse(Time < 16, 0, 32 * (Time - 16))

[State 8600, Text 2 Fade]
type = ModifyExplod
trigger1 = NumExplod(11)
ID = 11
scale = 0.5 + (0.0625 * Time), 0.5 + (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time), 32 * Time

[State 8600, Circle Explod]
type = Explod
trigger1 = !Time
anim = 8601
ID = 8601
under = 1
posType = Left
pos = GameWidth/2 + (0), floor((1.3333333 * GameHeight / GameWidth) * 120)
bindTime = -1
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Circle Fade]
type = ModifyExplod
trigger1 = NumExplod(8601)
ID = 8601
scale = (0.25 * Time) * (1.3333333 * GameHeight / GameWidth), (0.25 * Time) * (1.3333333 * GameHeight / GameWidth)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8600, Assert: NoFG]
type = AssertSpecial
trigger1 = Time < 16
flag = NoFG

[State 8600, Assert: NoBarDisplay]
type = AssertSpecial
trigger1 = Time < 24
flag = NoBarDisplay

[State 8600, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 24
trigger2 = RoundState < 3

[State 8600, End]
type = DestroySelf
trigger1 = RoundState < 3



;========================< CAMERA CONTROL >=============================
[Statedef 7650]
physics = N
velset = 0, 0
anim = 9741
[State 7650, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1
[State 7650, End]
type = destroyself
trigger1 = roundstate = 2

;========================< CAMERA-ZOOM >=============================
[Statedef 7651]
physics = N
velset = 0, 0
anim = 9741

[State 7650, End]
type = destroyself
trigger1 = 1; MUGEN 1.0 can't handle this power lol

[Statedef 7652]
physics = N
velset = 0, 0
anim = 9741
[State 7650, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1
[State 7650, End]
type = destroyself
trigger1 = root, stateno = 0


; Broly's Death Theme
[Statedef 8997]
type = S
velset = 0, 0
anim = 9741

[State 8600, Sound]
type = playsnd
trigger1 = !time ;&& matchover
value = 7,15
channel = 1

[State 8600, Sound]
type = playsnd
trigger1 = !time ;&& matchover
value = 7,15
channel = 3

[State 8600, Sound]
type = playsnd
trigger1 = !time ;&& matchover
value = 7,15
channel = 5

[State 7600, Snd]
type = assertspecial
trigger1 = 1
flag = nomusic
[State 7600, Snd]
type = assertspecial
trigger1 = 1
flag = nobardisplay
[State 7600, Snd]
type = assertspecial
trigger1 = time <= 1000
flag = roundnotover
;

; Broly's Theme
[Statedef 8998]
type = S
velset = 0, 0
anim = 9741

[State 8600, Sound]
type = playsnd
trigger1 = !time ;&& matchover
value = 7,14
channel = 1

[State 8600, Sound]
type = playsnd
trigger1 = !time ;&& matchover
value = 7,14
channel = 3

[State 8600, Sound]
type = playsnd
trigger1 = !time ;&& matchover
value = 7,14
channel = 5

[State 7600, Snd]
type = assertspecial
trigger1 = 1
flag = nomusic
[State 7600, Snd]
type = assertspecial
trigger1 = 1
flag = nobardisplay
;
;[State 181, 1]
;type = AssertSpecial
;trigger1 = time <= ifelse(helper(8600),var(0)=14,840,580)
;flag = RoundNotOver