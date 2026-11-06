;===========================================================================
;†††HELPERS†††
;===========================================================================
;■汎用バインド
[statedef 10000]
sprpriority = 4
anim = 1

[state 10000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 10000, changeanim]
type = changeanim
trigger1 = animexist(root,anim+10000)
value = root,anim+10000
elem = root,animelemno(0)
ignorehitpause = 1

[state 10000, bindtoroot]
type = bindtoroot
trigger1 = 1
facing = 1
pos = 0,0
ignorehitpause = 1

[state 10000, destroyself]
type = destroyself
trigger1 = !animexist(root,anim+10000)
trigger2 = root,movetype = h
ignorehitpause = 1
;===========================================================================
;■ワールドエンド起動ヘルパー
[statedef 15000]
anim = 1

[state 15000, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 15000, parentvarset]
type = parentvarset
trigger1 = time < 2
var(40) = 1

[state 15000, parentvarset]
type = parentvarset
trigger1 = time < 2
var(41) = 0

[state 15000, bgpalfx]
type = bgpalfx
trigger1 = time < 2
time = 180
sinadd = root,var(21),root,var(22),root,var(23),360
ignorehitpause = 1
persistent = 0

[state 15000, playsnd]
type = playsnd
trigger1 = time = 1
value = 4,21
abspan = 0
ignorehitpause = 1
persistent = 0

[state 15000, destroyself]
type = destroyself
trigger1 = time > 180;2
ignorehitpause = 1
;===========================================================================
;■マジカルアロー
[statedef 6000]
type = a
movetype = a
physics = n
sprpriority = 4
anim = 6000

[state 6000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6000, veladd]
type = veladd
trigger1 = 1
x = 5

[state 6000, AR hope]
type = varset
trigger1 = time = 0
var(27) = root,var(27)

[state 6000, AR hope homing]
type = velset
trigger1 = var(27) = 1
trigger1 = numenemy
trigger1 = time > 1
y = clamp(((enemynear,pos y) - 45 - pos y) * 0.3, -9, 9)

[state 6000, AR hope glow]
type = palfx
trigger1 = var(27) = 1
time = 1
add = 90,10,70
ignorehitpause = 1

[state 6000, hitby]
type = hitby
trigger1 = 1
value = sca,ap

[state 6000, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6000, playsnd]
type = playsnd
trigger1 = time = 1
value = 5,0

[state 6000, hitdef]
type = hitdef
trigger1 = time = 1
id = 6000
;---------
attr = a,sp
hitflag = mafp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
;---------
damage = floor(20*root,fvar(1)),floor(3*root,fvar(1))
getpower = floor(80*root,fvar(2)),floor(40*root,fvar(2))
givepower = floor(5*root,fvar(3)),floor(2.5*root,fvar(3))
;---------
ground.hittime = 15
ground.slidetime = 15
air.hittime = 15
guard.hittime = 10
guard.ctrltime = 10
pausetime = 0,10
fall = 1
fall.recovertime = 30
;---------
ground.velocity = -7,-4
air.velocity = -7,-4
ground.cornerpush.veloff = 0
;---------
sparkno = -1;s25003
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,10
guardsound = s2,1
;---------
envshake.time = 16
envshake.freq = 120
envshake.ampl = 2

[state 6000, parentvaradd]
type = parentvaradd
trigger1 = movecontact = 1
var(14) = 1

[state 6000, targetdrop]
type = targetdrop
trigger1 = numtarget(6000) > 1
trigger1 = movehit = 1
excludeid = 6000
ignorehitpause = 1

[state 6000, targetstate]
type = targetstate
trigger1 = numtarget(6000) = 1
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 6000, changestate]
type = changestate
trigger1 = movecontact > 20
trigger2 = frontedgedist < -30
value = 65000
;===========================================================================
;■ブラストスコール・上昇
[statedef 6100]
type = a
movetype = a
physics = n
sprpriority = 4
anim = 6500

[state 6100, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6100, varset]
type = varset
trigger1 = time = 1
var(7) = root,var(7)

[state 6100, AR hope]
type = varset
trigger1 = time = 0
var(27) = root,var(27)

[state 6100, velset]
type = velset
trigger1 = animelemtime(4) = 0
x = 10
y = -30

[state 6100, hitby]
type = hitby
trigger1 = 1
value = sca,ap

[state 6100, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6100, playsnd]
type = playsnd
trigger1 = time = 1
value = 5,2

[state 6100, hitdef]
type = hitdef
trigger1 = time = 1
id = 6100
;---------
attr = a,sp
hitflag = mafp
guardflag = m
affectteam = e
animtype = hard
ground.type = high
;---------
damage = floor(100*root,fvar(1)),floor(10*root,fvar(1))
getpower = floor(120*root,fvar(2)),floor(60*root,fvar(2))
givepower = floor(50*root,fvar(3)),floor(25*root,fvar(3))
;---------
ground.hittime = 15
ground.slidetime = 15
air.hittime = 15
guard.ctrltime = 15
guard.ctrltime = 15
pausetime = 0,10
fall = 1
fall.recovertime = 60
;---------
ground.velocity = -7,-5
air.velocity = -7,-5
ground.cornerpush.veloff = 0
;---------
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,10
guardsound = s2,1
;---------
envshake.time = 16
envshake.freq = 120
envshake.ampl = 2

[state 6100, parentvaradd]
type = parentvaradd
trigger1 = movecontact = 1
var(14) = 1

[state 6100, targetdrop]
type = targetdrop
trigger1 = numtarget(6100) > 1
trigger1 = movehit = 1
excludeid = 6100
ignorehitpause = 1

[state 6100, targetstate]
type = targetstate
trigger1 = numtarget(6100) = 1
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 6100, changestate]
type = changestate
trigger1 = time = 20
value = 6110
;===========================================================================
;■ブラストスコール・雨雲
[statedef 6110]
type = a
movetype = a
physics = n
anim = 1

[state 6110, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6110, varset]
type = varset
trigger1 = time = 1
var(15) = root,var(15)

[state 6110, varset]
type = varset
trigger1 = playeridexist(var(15))
var(16) = ceil(playerid(var(15)),pos x)

[state 6110, varset]
type = varset
trigger1 = playeridexist(var(15))
var(17) = ceil(playerid(var(15)),pos y)

[state 6110, posset]
type = posset
trigger1 = playeridexist(var(15))
x = var(16)-20*facing
y = var(17)-600

[state 6110, AR hope fast]
type = varset
trigger1 = time = 0
trigger1 = var(27) = 1
var(7) = 1

[state 6110, helper]
type = helper
trigger1 = time = var(7)*20
trigger2 = time = var(7)*20+10
trigger3 = time = var(7)*20+20
name = "blast arrow"
id = 6120
stateno = 6120
postype = p1
pos = floor(const(size.xscale)*38),-floor(const(size.yscale)*80)
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 6110, AR hope extra arrows]
type = helper
triggerall = var(27) = 1
trigger1 = time = 25
trigger2 = time = 35
trigger3 = time = 45
name = "blast arrow"
id = 6120
stateno = 6120
postype = p1
pos = floor(const(size.xscale)*38),-floor(const(size.yscale)*80)
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 6110, parentvaradd]
type = parentvaradd
trigger1 = var(14) != 0
var(14) = var(14)

[state 6110, varset]
type = varset
trigger1 = var(14) != 0
var(14) = 0

[state 6110, destroyself]
type = destroyself
trigger1 = time > var(7)*20+100
;===========================================================================
;■ブラストスコール・アロー
[statedef 6120]
type = a
movetype = a
physics = n
sprpriority = 4
anim = 6100+var(1)

[state 6120, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6120, veladd]
type = veladd
trigger1 = 1
y = 5

[state 6120, AR hope]
type = varset
trigger1 = time = 0
var(27) = parent,var(27)

[state 6120, AR hope homing]
type = velset
trigger1 = var(27) = 1
trigger1 = numenemy
trigger1 = time > 1
x = clamp(((enemynear,pos x) - pos x) * facing * 0.15, -7, 7)

[state 6120, AR hope glow]
type = palfx
trigger1 = var(27) = 1
time = 1
add = 90,10,70
ignorehitpause = 1

[state 6120, hitby]
type = hitby
trigger1 = 1
value = sca,ap

[state 6120, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6120, playsnd]
type = playsnd
trigger1 = time = 1
value = 5,0

[state 6120, hitdef]
type = hitdef
trigger1 = time = 1
id = 6120
;---------
attr = a,sp
hitflag = mafp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
;---------
damage = floor(20*root,fvar(1)),floor(3*root,fvar(1))
getpower = floor(120*root,fvar(2)),floor(60*root,fvar(2))
givepower = floor(5*root,fvar(3)),floor(2.5*root,fvar(3))
;---------
ground.hittime = 15
ground.slidetime = 15
air.hittime = 15
guard.hittime = 10
guard.ctrltime = 10
pausetime = 0,10
fall = 1
fall.recovertime = 40
;---------
ground.velocity = 0,-5
air.velocity = 0,-5
ground.cornerpush.veloff = 0
;---------
sparkno = -1;s25004
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,10
guardsound = s2,1
;---------
envshake.time = 16
envshake.freq = 120
envshake.ampl = 2
numhits = 3

[state 6120, parentvaradd]
type = parentvaradd
trigger1 = movecontact = 1
var(14) = 3

[state 6120, targetdrop]
type = targetdrop
trigger1 = numtarget(6120) > 1
trigger1 = movehit = 1
excludeid = 6120
ignorehitpause = 1

[state 6120, targetstate]
type = targetstate
trigger1 = numtarget(6120) = 1
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 6120, changestate]
type = changestate
trigger1 = movecontact > 20
trigger2 = pos y > 100
value = 65000
;===========================================================================
;■ルナティックアロー
[statedef 6200]
type = a
movetype = a
physics = n
sprpriority = 4
anim = 6200+var(1)

[state 6200, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6200, veladd]
type = veladd
trigger1 = 1
y = -10

[state 6200, AR hope]
type = varset
trigger1 = time = 0
var(27) = root,var(27)

[state 6200, AR hope homing]
type = velset
trigger1 = var(27) = 1
trigger1 = numenemy
trigger1 = time > 1
x = clamp(((enemynear,pos x) - pos x) * facing * 0.15, -7, 7)

[state 6200, AR hope glow]
type = palfx
trigger1 = var(27) = 1
time = 1
add = 90,10,70
ignorehitpause = 1

[state 6200, hitby]
type = hitby
trigger1 = 1
value = sca,ap

[state 6200, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6200, playsnd]
type = playsnd
trigger1 = time = 1
value = 5,0

[state 6200, hitdef]
type = hitdef
trigger1 = time = 1
id = 6200
;---------
attr = a,sp
hitflag = mafp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
;---------
damage = floor(20*root,fvar(1)),floor(3*root,fvar(1))
getpower = floor(80*root,fvar(2)),floor(40*root,fvar(2))
givepower = floor(5*root,fvar(3)),floor(2.5*root,fvar(3))
;---------
ground.hittime = 15
ground.slidetime = 15
air.hittime = 15
guard.hittime = 10
guard.ctrltime = 10
pausetime = 0,10
fall = 1
fall.recovertime = 30
;---------
ground.velocity = 5,-5
air.velocity = 5,-5
ground.cornerpush.veloff = 0
;---------
sparkno = -1;s25004
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,10
guardsound = s2,1
;---------
envshake.time = 16
envshake.freq = 120
envshake.ampl = 2
numhits = 3

[state 6200, parentvaradd]
type = parentvaradd
trigger1 = movecontact = 1
var(14) = 3

[state 6200, targetdrop]
type = targetdrop
trigger1 = numtarget(6200) > 1
trigger1 = movehit = 1
excludeid = 6200
ignorehitpause = 1

[state 6200, targetstate]
type = targetstate
trigger1 = numtarget(6200) = 1
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 6200, changestate]
type = changestate
trigger1 = movecontact > 20
trigger2 = pos y < -300
value = 65000
;===========================================================================
;■マジカルアローIS
[statedef 6300]
type = a
movetype = a
physics = n
sprpriority = 4
anim = 6300

[state 6300, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6300, veladd]
type = veladd
trigger1 = 1
x = 5
y = 2.5

[state 6300, AR hope]
type = varset
trigger1 = time = 0
var(27) = root,var(27)

[state 6300, AR hope homing]
type = velset
trigger1 = var(27) = 1
trigger1 = numenemy
trigger1 = time > 1
y = clamp(((enemynear,pos y) - 45 - pos y) * 0.3, -9, 9)

[state 6300, AR hope glow]
type = palfx
trigger1 = var(27) = 1
time = 1
add = 90,10,70
ignorehitpause = 1

[state 6300, hitby]
type = hitby
trigger1 = 1
value = sca,ap

[state 6300, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6300, playsnd]
type = playsnd
trigger1 = time = 1
value = 5,0

[state 6300, hitdef]
type = hitdef
trigger1 = time = 1
id = 6300
;---------
attr = a,sp
hitflag = mafp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
;---------
damage = floor(20*root,fvar(1)),floor(3*root,fvar(1))
getpower = floor(80*root,fvar(2)),floor(40*root,fvar(2))
givepower = floor(5*root,fvar(3)),floor(2.5*root,fvar(3))
;---------
ground.hittime = 15
ground.slidetime = 15
air.hittime = 15
guard.hittime = 10
guard.ctrltime = 10
pausetime = 0,10
fall = 1
fall.recovertime = 30
;---------
ground.velocity = -7,-5
air.velocity = -7,-5
ground.cornerpush.veloff = 0
;---------
sparkno = -1;s25003
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,10
guardsound = s2,1
;---------
envshake.time = 16
envshake.freq = 120
envshake.ampl = 2

[state 6300, parentvaradd]
type = parentvaradd
trigger1 = movecontact = 1
var(14) = 1

[state 6300, targetdrop]
type = targetdrop
trigger1 = numtarget(6300) > 1
trigger1 = movehit = 1
excludeid = 6300
ignorehitpause = 1

[state 6300, targetstate]
type = targetstate
trigger1 = numtarget(6300) = 1
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 6300, destroyself]
type = destroyself
trigger1 = time > 120
trigger2 = moveguarded > 10

[state 6300, changestate]
type = changestate
trigger1 = movecontact > 20
trigger2 = pos y > 100
value = 65000
;===========================================================================
;■ラピッドファイア・アロー
[statedef 6400]
type = a
movetype = a
physics = n
sprpriority = 4
anim = 6000

[state 6400, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6400, veladd]
type = veladd
trigger1 = 1
x = 5

[state 6400, hitby]
type = hitby
trigger1 = 1
value = sca,ap

[state 6400, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 6400, playsnd]
type = playsnd
trigger1 = time = 1
value = 5,0

[state 6400, hitdef]
type = hitdef
trigger1 = time = 1
id = 6400
;---------
attr = a,hp
hitflag = mafp
guardflag = m
affectteam = e
animtype = hard
ground.type = high
;---------
damage = floor(20*root,fvar(1)),floor(3*root,fvar(1))
getpower = 0,0
givepower = floor(5*root,fvar(3)),floor(2.5*root,fvar(3))
;---------
ground.hittime = 15
ground.slidetime = 15
air.hittime = 15
guard.hittime = 10
guard.ctrltime = 10
pausetime = 0,5
fall = 1
fall.recover = 0
;---------
ground.velocity = -15,-3
air.velocity = -15,-3
ground.cornerpush.veloff = 0
;---------
sparkno = -1;s25003
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,10
guardsound = s2,1
;---------
envshake.time = 16
envshake.freq = 120
envshake.ampl = 2

[state 6400, parentvaradd]
type = parentvaradd
trigger1 = movecontact = 1
var(14) = 1

[state 6400, targetdrop]
type = targetdrop
trigger1 = numtarget(6400) > 1
trigger1 = movehit = 1
excludeid = 6400
ignorehitpause = 1

[state 6400, targetstate]
type = targetstate
trigger1 = numtarget(6400) = 1
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 6400, changestate]
type = changestate
trigger1 = movecontact > 20
trigger2 = frontedgedist < -30
value = 65000
;===========================================================================
;■プッシャー
[statedef 6900]
type = a
movetype = i
physics = n
velset = 0,0
anim = 6900

[state 6900, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 6900, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa

[state 6900, playerpush]
type = playerpush
trigger1 = 1
value = 1

[state 6900, veladd]
type = veladd
trigger1 = vel x <= 20
x = 2

[state 6900, destroyself]
type = destroyself
trigger1 = time = 16
trigger2 = root,movetype = h
ignorehitpause = 1
;===========================================================================
;■レイジングスター・アロー
[statedef 7000]
type = a
movetype = a
physics = n
sprpriority = 4
anim = 7000

[state 7000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7000, varset]
type = varset
trigger1 = time = 0
sysvar(1) = 60

[state 7000, varadd]
type = varadd
trigger1 = movecontact
var(2) = 1
ignorehitpause = 1

[state 7000, velset]
type = velset
trigger1 = time = 1
trigger2 = movecontact > 10
x = 30

[state 7000, velset]
type = velset
trigger1 = movecontact = 1
x = 0

[state 7000, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa

[state 7000, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 7000, playsnd]
type = playsnd
trigger1 = time = 1
value = 5,1

[state 7000, hitdef]
type = hitdef
trigger1 = var(2) < 60
trigger1 = var(2)%5 = 0
id = 7000
;---------
attr = a,hp
hitflag = mafp
guardflag = m
affectteam = e
animtype = hard
ground.type = high
;---------
damage = floor(29*root,fvar(1)),floor(5*root,fvar(1))
getpower = 0,0
givepower = floor(5*root,fvar(3)),floor(2.5*root,fvar(3))
;---------
ground.hittime = 15
ground.slidetime = 15
air.hittime = 15
guard.hittime = 10
guard.ctrltime = 10
pausetime = 0,15
fall = 1
fall.recover = 0
;---------
ground.velocity = -15,-3
air.velocity = -15,-3
ground.cornerpush.veloff = 0
;---------
sparkno = -1;s25003
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,12+(var(2)>50)
guardsound = s2,1
;---------
envshake.time = 90
envshake.freq = 90
envshake.ampl = 4
;---------
palfx.time = 120
palfx.add = 150,100,130

[state 7000, parentvaradd]
type = parentvaradd
trigger1 = movecontact = 1
var(14) = 1

[state 7000, targetdrop]
type = targetdrop
trigger1 = numtarget(7000) > 1
trigger1 = movehit = 1
excludeid = 7000
ignorehitpause = 1

[state 7000, targetstate]
type = targetstate
trigger1 = numtarget(7000) = 1
trigger1 = movehit = 1
value = 5060
ignorehitpause = 1

[state 7000, parentvarset]
type = parentvarset
trigger1 = movehit
trigger1 = roundstate = 3
var(36) = 1
ignorehitpause = 1

[state 7000, playsnd]
type = playsnd
trigger1 = var(2) > 50
trigger1 = movehit = 1
value = 1,7
persistent = 0

[state 7000, bgpalfx]
type = bgpalfx
triggerall = movehit = 1
trigger1 = var(2) < 20
trigger2 = var(2) > 50
time = 4
add = 255,255,255

[state 7000, varset]
type = varset
trigger1 = var(15) = 0
trigger1 = movehit = 1
trigger1 = numtarget
var(15) = target,id

[state 7000, helper]
type = helper
trigger1 = numtarget(7000) > 0
trigger1 = numhelper(25300) < numhelper(7000)
trigger1 = var(2) > 50
trigger1 = movehit = 1
name = "flame"
id = 25300
stateno = 25300
postype = front
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ignorehitpause = 1

[state 7000, parentvarset]
type = parentvarset
trigger1 = movehit
trigger1 = roundstate = 3
var(36) = 1
ignorehitpause = 1

[state 7000, changestate]
type = changestate
trigger1 = frontedgedist < -30
value = 65000
;===========================================================================
;■ゴッズメッセージ・上昇
[statedef 7200]
type = a
movetype = a
physics = n
sprpriority = 4
anim = 7200

[state 7200, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7200, varset]
type = varset
trigger1 = time = 1
var(7) = root,var(7)

[state 7200, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa

[state 7200, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 7200, playsnd]
type = playsnd
trigger1 = time = 1
value = 5,3

[state 7200, hitdef]
type = hitdef
trigger1 = time = 1
id = 7200
;---------
attr = a,hp
hitflag = mafp
guardflag = m
affectteam = e
animtype = hard
ground.type = high
;---------
damage = floor(120*root,fvar(1)),floor(10*root,fvar(1))
getpower = floor(100*root,fvar(2)),floor(50*root,fvar(2))
givepower = floor(50*root,fvar(3)),floor(25*root,fvar(3))
;---------
ground.hittime = 15
ground.slidetime = 15
air.hittime = 15
guard.ctrltime = 15
guard.ctrltime = 15
pausetime = 0,10
fall = 1
fall.recover = 0
;---------
ground.velocity = -7,-5
air.velocity = -7,-5
ground.cornerpush.veloff = 0
;---------
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,10
guardsound = s2,1
;---------
envshake.time = 16
envshake.freq = 120
envshake.ampl = 2

[state 7200, targetdrop]
type = targetdrop
trigger1 = numtarget(7200) > 1
trigger1 = movehit = 1
excludeid = 7200
ignorehitpause = 1

[state 7200, targetstate]
type = targetstate
trigger1 = numtarget(7200) = 1
trigger1 = target(7200),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 7200, changestate]
type = changestate
trigger1 = animtime = 0
value = 7210
;===========================================================================
;■ゴッズメッセージ・雨雲
[statedef 7210]
type = a
movetype = a
physics = n
anim = 1

[state 7210, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7210 varrandom]
type = varrandom
trigger1 = 1
v = 1
range = -100,100

[state 7210, posset]
type = posset
trigger1 = time = 1
x = 0
y = -600

[state 7210, helper]
type = helper
trigger1 = time = var(7)*20
trigger2 = time = var(7)*20+10
trigger3 = time = var(7)*20+20
trigger4 = time = var(7)*20+30
trigger5 = time = var(7)*20+40
name = "god arrow"
id = 7300
stateno = 7300
postype = p1
pos = var(1),0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 7210, helper]
type = helper
trigger1 = numpartner
trigger1 = time = 1
name = "blessing"
id = 7400
stateno = 7400
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 7210, parentvaradd]
type = parentvaradd
trigger1 = time = 1
var(1) = 300

[state 7210, parentvaradd]
type = parentvaradd
trigger1 = var(14) != 0
var(14) = var(14)

[state 7210, varset]
type = varset
trigger1 = var(14) != 0
var(14) = 0

[state 7210, changestate]
type = changestate
trigger1 = time > var(7)*20+100
value = 65000
;===========================================================================
;■ゴッズメッセージ・アロー
[statedef 7300]
type = a
movetype = a
physics = n
sprpriority = 4
anim = 7300

[state 7300, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7300, veladd]
type = veladd
trigger1 = 1
y = 5

[state 7300, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa

[state 7300, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 7300, playsnd]
type = playsnd
trigger1 = time = 1
value = 5,4

[state 7300, hitdef]
type = hitdef
trigger1 = time = 1
id = 7300
;---------
attr = a,hp
hitflag = mafp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
;---------
damage = floor(24*root,fvar(1)),floor(5*root,fvar(1))
getpower = 0,0
givepower = floor(5*root,fvar(3)),floor(2.5*root,fvar(3))
;---------
ground.hittime = 15
ground.slidetime = 15
air.hittime = 15
guard.hittime = 10
guard.ctrltime = 10
pausetime = 0,10
fall = 1
fall.recover = 0
;---------
ground.velocity = 0,-5
air.velocity = 0,-5
ground.cornerpush.veloff = 0
;---------
sparkno = -1;s25004
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,10
guardsound = s2,1
;---------
envshake.time = 16
envshake.freq = 120
envshake.ampl = 2
numhits = 3

[state 7300, parentvaradd]
type = parentvaradd
trigger1 = movecontact = 1
var(14) = 3

[state 7300, targetdrop]
type = targetdrop
trigger1 = numtarget(7300) > 1
trigger1 = movehit = 1
excludeid = 7300
ignorehitpause = 1

[state 7300, targetstate]
type = targetstate
trigger1 = numtarget(7300) = 1
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 7300, changestate]
type = changestate
trigger1 = movecontact > 20
trigger2 = pos y > 100
value = 65000
;===========================================================================
;■ゴッズメッセージ・祝福
[statedef 7400]
type = a
movetype = a
physics = n
sprpriority = 4
anim = 7400

[state 7400, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7400, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa

[state 7400, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 7400, hitdef]
type = hitdef
trigger1 = time = 0
id = 7400
;---------
attr = c,hp
hitflag = maf
guardflag = !
affectteam = f
animtype = light
ground.type = high
;---------
damage = 0,0
getpower = 0,0
givepower = 0,0
;---------
ground.hittime = 0
ground.slidetime = 0
air.hittime = 0
guard.hittime = 0
guard.ctrltime = 0
pausetime = 0,10
;---------
ground.velocity = 0,0
air.velocity = 0,0
ground.cornerpush.veloff = 0
;---------
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1,0
guardsound = -1,0
;---------
numhits = 0

[state 7400, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 7400, changestate]
type = changestate
trigger1 = movecontact
value = 7450

[state 7400, changestate]
type = changestate
trigger1 = time = 60
value = 65000
;---------------------------------------------------------------------------
;□祝福発動
[statedef 7450]
type = a
movetype = i
physics = n
velset = 0,0
anim = 1

[state 7450,reversaldef]
type = reversaldef
trigger1 = 1
reversal.attr = sca,aa,at,ap
ignorehitpause = 1

[state 7450, varset]
type = varset
trigger1 = playeridexist(var(15))
var(16) = ceil(playerid(var(15)),pos x)

[state 7450, varset]
type = varset
trigger1 = playeridexist(var(15))
var(17) = ceil(playerid(var(15)),pos y)

[state 7450, posset]
type = posset
trigger1 = playeridexist(var(15))
x = var(16)
y = var(17)

[state 7450, turn]
type = turn
triggerall = playeridexist(var(15))
trigger1 = facing != playerid(var(15)),facing

[state 7450, varset]
type = varset
trigger1 = time = 0
var(1) = 300

[state 7450, targetlifeadd]
type = targetlifeadd
triggerall = numtarget
trigger1 = target,alive = 1
trigger1 = var(1) > 0
trigger1 = time%6 = 0
trigger1 = target,movetype != h
value = 1
ignorehitpause = 1

[state 7450, varadd]
type = varadd
triggerall = numtarget
trigger1 = target,alive = 1
trigger1 = var(1) > 0
trigger1 = time%6 = 0
var(1) = -1
ignorehitpause = 1

[state 7450, explod]
type = explod
triggerall = numtarget
trigger1 = var(1) > 0
trigger1 = time%90 = 0
trigger1 = target,movetype != h
id = 25500
anim = 25500
postype = p1
pos = 0,-floor(const(size.yscale)*30)
random = 30,30
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
ignorehitpause = 1

[state 7450, explod]
type = explod
triggerall = numtarget
trigger1 = var(1) > 0
trigger1 = time%90 = 30
trigger1 = target,movetype != h
id = 25501
anim = 25500
postype = p1
pos = floor(const(size.xscale)*30),-floor(const(size.yscale)*30)
random = 30,30
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
ignorehitpause = 1

[state 7450, explod]
type = explod
triggerall = numtarget
trigger1 = var(1) > 0
trigger1 = time%90 = 60
trigger1 = target,movetype != h
id = 25502
anim = 25500
postype = p1
pos = -floor(const(size.xscale)*30),-floor(const(size.yscale)*30)
random = 30,30
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
ignorehitpause = 1

[state 7450, changestate]
type = changestate
trigger1 = var(1) <= 0
trigger2 = numtarget
trigger2 = target,alive = 0
value = 65000
;===========================================================================
;■ルミナスワールドエンド・上昇
[statedef 7500]
type = a
movetype = a
physics = n
sprpriority = 4
anim = 7500

[state 7500, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7500, varset]
type = varset
trigger1 = time = 1
var(7) = 5;fix

[state 7500, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa

[state 7500, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 7500, playsnd]
type = playsnd
trigger1 = time = 0
value = 8,3

[state 7500, playsnd]
type = playsnd
trigger1 = animelemtime(7) = 0
value = 8,4

[state 7500, hitdef]
type = hitdef
trigger1 = animelemtime(7) = 0
id = 7500
;---------
attr = a,hp
hitflag = mafp
guardflag = m
affectteam = e
animtype = hard
ground.type = high
;---------
damage = floor(200*root,fvar(1)),floor(10*root,fvar(1))
getpower = 0,0
givepower = floor(50*root,fvar(3)),floor(25*root,fvar(3))
;---------
ground.hittime = 15
ground.slidetime = 15
air.hittime = 15
guard.ctrltime = 15
guard.ctrltime = 15
pausetime = 0,10
fall = 1
fall.recover = 0
;---------
ground.velocity = -7,-5
air.velocity = -7,-5
ground.cornerpush.veloff = 0
;---------
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,10
guardsound = s2,1
;---------
envshake.time = 16
envshake.freq = 120
envshake.ampl = 2
numhits = 3

[state 7500, parentvaradd]
type = parentvaradd
trigger1 = movecontact = 1
var(14) = 3

[state 7500, targetdrop]
type = targetdrop
trigger1 = numtarget(7500) > 1
trigger1 = movehit = 1
excludeid = 7500
ignorehitpause = 1

[state 7500, targetstate]
type = targetstate
trigger1 = numtarget(7500) = 1
trigger1 = target(7500),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 7500, changestate]
type = changestate
trigger1 = animtime = 0
value = 7510
;===========================================================================
;■ゴッズメッセージ・雨雲
[statedef 7510]
type = a
movetype = a
physics = n
anim = 1

[state 7510, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7510 varrandom]
type = varrandom
trigger1 = 1
v = 1
range = -100,100

[state 7510, posset]
type = posset
trigger1 = time = 1
x = 0
y = -600

[state 7510, helper]
type = helper
trigger1 = time = var(7)*20
trigger2 = time = var(7)*20+10
trigger3 = time = var(7)*20+20
trigger4 = time = var(7)*20+30
trigger5 = time = var(7)*20+40
trigger6 = time = var(7)*20+50
trigger7 = time = var(7)*20+60
trigger8 = time = var(7)*20+70
trigger9 = time = var(7)*20+80
trigger10 = time = var(7)*20+90
name = "god arrow"
id = 7300
stateno = 7300
postype = p1
pos = var(1),0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 7510, playsnd]
type = playsnd
trigger1 = time = var(7)*20+120
value = 8,5
abspan = 0

[state 7510, parentvaradd]	;1stターゲットが必ずほむらちゃんになるので恐らく機能しない
type = parentvaradd
trigger1 = var(14) != 0
var(14) = var(14)

[state 7510, varset]
type = varset
trigger1 = var(14) != 0
var(14) = 0

[state 7510, destroyself]
type = destroyself
trigger1 = time = var(7)*20+500
;===========================================================================
;■透過演出補助
[statedef 7900]
type = a
movetype = i
physics = n
sprpriority = -5
anim = 1

[state 7900, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7900, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 7900, destroyself]
type = destroyself
trigger1 = time > 80
trigger2 = root,stateno != 3300
ignorehitpause = 1
;===========================================================================
;■世界樹
[statedef 8000]
type = a
movetype = i
physics = n
sprpriority = 0
anim = 8000

[state 8000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 8000, posset]
type = posset
trigger1 = time = 0
x = (root,pos x)+(root,facing)*floor(const(size.xscale)*25)
y = (root,pos y)

[state 8000, explod]
type = explod
trigger1 = time = 0
id = 8001
anim = 8001
postype = p1
pos = 0,0
sprpriority = 3
removetime = -2
bindtime = -1
scale = 1,1

[state 8000, explod]
type = explod
trigger1 = time = 0
id = 8100
anim = 8100
postype = p1
pos = 0,0
sprpriority = 4
removetime = -2
bindtime = -1
scale = 1,1

[state 8000, destroyself]
type = destroyself
trigger1 = animtime = 0
ignorehitpause = 1
;===========================================================================
;■弓弦
[statedef 9000]
type = a
movetype = i
physics = n
sprpriority = 4

[state 9000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 9000, changeanim]
type = changeanim
trigger1 = animexist(root,anim+20000)
value = root,anim+20000
elem = root,animelemno(0)
ignorehitpause = 1

[state 9000, bindtoroot]
type = bindtoroot
trigger1 = 1
facing = 1
pos = 0,0
ignorehitpause = 1

[state 9000, destroyself]
type = destroyself
trigger1 = !animexist(root,anim+20000)
trigger2 = root,movetype = h
trigger3 = root,ctrl = 1
ignorehitpause = 1
;===========================================================================
;■ハート
[statedef 20000]
type = a
movetype = i
physics = n
sprpriority = 0
anim = 20000

[state 20000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 20000, varset]
type = varset
trigger1 = time < 1
var(1) = root,facing

[state 20000, velset]
type = velset
trigger1 = time = 0
x = -(rootdist x)*0.006
y = -(rootdist y-75*const(size.yscale))*0.006

[state 20000, trans]
type = trans
trigger1 = 1
trans = add
ignorehitpause = 1

[state 20000, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
;■おえかきスパーク
[statedef 20550]
type = a
movetype = i
physics = n
sprpriority = 4
anim = 1

[state 20550, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 20550, varrandom]
type = varrandom
trigger1 = 1
v = 1
range = 0,7

[state 20550, changeanim]
type = changeanim
trigger1 = time = 0
value = 20550+var(1)
ignorehitpause = 1

[state 20550, velset]
type = velset
trigger1 = time = 0
x = -(rootdist x)*0.006
y = -(rootdist y)*0.006

[state 20550, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
;■炎バインド１
[statedef 25300]
type = a
movetype = i
physics = n
anim = 1

[state 25300, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 25300, varset]
type = varset
trigger1 = time < 3
sysvar(1) = parent,sysvar(1)

[state 25300, varset]
type = varset
trigger1 = time < 60
var(15) = parent,var(15)

[state 25300, varset]
type = varset
trigger1 = playeridexist(var(15))
var(16) = ceil(playerid(var(15)),pos x)

[state 25300, varset]
type = varset
trigger1 = playeridexist(var(15))
var(17) = ceil(playerid(var(15)),pos y)

[state 25300, posset]
type = posset
trigger1 = 1
x = var(16) 
y = var(17)-50

[state 25300, explod]
type = explod
trigger1 = numexplod(25300) <= 1
trigger1 = time%10 = 0
id = 25300
anim = 25300+floor(random/334)
postype = p1
pos = 0,0
random = 80,80
ontop = 1
ownpal = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)

[state 25300, destroyself]
type = destroyself
trigger1 = time = 60+sysvar(1)
;===========================================================================
;■レインボースター・アロー
[statedef 26000]
type = a
movetype = a
physics = n
sprpriority = 4
anim = 26000

[state 26000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 26000, varset]
type = varset
trigger1 = time = 0
sysvar(1) = 60

[state 26000, varadd]
type = varadd
trigger1 = movecontact
var(2) = 1
ignorehitpause = 1

[state 26000, velset]
type = velset
trigger1 = time = 1
trigger2 = movecontact > 10
x = 30

[state 26000, velset]
type = velset
trigger1 = movecontact = 1
x = 0

[state 26000, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa

[state 26000, hitoverride]
type = hitoverride
trigger1 = 1
attr = sca,aa,ap,at
slot = 0
stateno = 65000
time = -1

[state 26000, playsnd]
type = playsnd
trigger1 = time = 1
value = 5,3

[state 26000, hitdef]
type = hitdef
trigger1 = var(2) < 60
trigger1 = var(2)%5 = 0
id = 26000
;---------
attr = a,hp
hitflag = mafdp
guardflag = !
affectteam = e
animtype = hard
ground.type = high
;---------
damage = floor(29*root,fvar(1)),floor(5*root,fvar(1))
getpower = 0,0
givepower = floor(5*root,fvar(3)),floor(2.5*root,fvar(3))
;---------
ground.hittime = 15
ground.slidetime = 15
air.hittime = 15
guard.hittime = 10
guard.ctrltime = 10
pausetime = 0,15
fall = 1
fall.recover = 0
;---------
ground.velocity = -15,-3
air.velocity = -15,-3
ground.cornerpush.veloff = 0
;---------
sparkno = -1;s25003
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,14-(var(2)>50)
guardsound = s2,1
;---------
envshake.time = 90
envshake.freq = 90
envshake.ampl = 4
;---------
palfx.time = 120
palfx.add = 150,100,130
;---------
kill = var(2) > 40

[state 26000, parentvaradd]
type = parentvaradd
trigger1 = movecontact = 1
var(14) = 1

[state 26000, targetdrop]
type = targetdrop
trigger1 = numtarget(26000) > 1
trigger1 = movehit = 1
excludeid = 26000
ignorehitpause = 1

[state 26000, targetstate]
type = targetstate
trigger1 = numtarget(26000) = 1
trigger1 = movehit = 1
value = 5060
ignorehitpause = 1

[state 26000, parentvarset]
type = parentvarset
trigger1 = movehit
trigger1 = roundstate = 3
var(36) = 1
ignorehitpause = 1

[state 26000, playsnd]
type = playsnd
trigger1 = var(2) > 50
trigger1 = movehit = 1
value = 1,7
persistent = 0

[state 26000, bgpalfx]
type = bgpalfx
triggerall = movehit = 1
trigger1 = var(2) < 20
trigger2 = var(2) > 50
time = 4
add = 255,255,255

[state 26000, varset]
type = varset
trigger1 = var(15) = 0
trigger1 = movehit = 1
trigger1 = numtarget
var(15) = target,id

[state 26000, helper]
type = helper
trigger1 = numtarget(26000) > 0
trigger1 = numhelper(25300) < numhelper(26000)
trigger1 = var(2) > 50
trigger1 = movehit = 1
name = "flame"
id = 25300
stateno = 25300
postype = front
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ignorehitpause = 1

[state 26000, explod]
type = explod
triggerall = numtarget
trigger1 = numexplod(26100) = 0
trigger1 = movehit = 1
id = 26100
anim = 26100
postype = p1
pos = 0,0
sprpriority = 5
ownpal = 1
bindtime = -1
removetime = 150
scale = const(size.xscale),const(size.yscale)
ignorehitpause = 1

[state 26000, varadd]
type = varadd
trigger1 = time > 80
trigger1 = time%2 = 0
var(3) = 1
ignorehitpause = 1

[state 26000, modifyexplod]
type = modifyexplod
trigger1 = movehit != 0
id = 26100
scale = floor(const(size.xscale)*10)+var(3),const(size.yscale)+var(3)

[state 26000, parentvarset]
type = parentvarset
trigger1 = movehit
trigger1 = roundstate = 3
var(36) = 1
ignorehitpause = 1

[state 26000, changestate]
type = changestate
trigger1 = frontedgedist < -30
value = 65000
;===========================================================================
;■円環魔法陣
[statedef 27000]
movetype = i
anim = 1

[state 27000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[state 27000, playsnd]
type = playsnd
trigger1 = time = 1
value = 7,0

[state 27000, explod]
type = explod
trigger1 = time = 1
id = 27000
anim = 27000
postype = left
pos = 160,120
removetime = -2
bindtime = -1
supermovetime = 999
pausemovetime = 999
scale = 1,1
ontop = 1

[state 27000, modifyexplod]
type = modifyexplod
trigger1 = time > 10
id = 27000
scale = 1-(0.005*time),1-(0.005*time)

[state 27000, destroyself]
type = destroyself
trigger1 = time = 120
;===========================================================================
;■円環魔法陣２
[statedef 27200]
movetype = i
anim = 1

[state 27200, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[state 27200, playsnd]
type = playsnd
trigger1 = time = 1
value = 7,0

[state 27200, velset]
type = velset
trigger1 = 1
x = -0.3

[state 27200, explod]
type = explod
trigger1 = time = 1
id = 27200
anim = 27200
postype = p1
pos = 0,0
sprpriority = 3
removetime = -2
bindtime = -1
supermovetime = 999
pausemovetime = 999
scale = 1,1

[state 27200, modifyexplod]
type = modifyexplod
trigger1 = time
id = 27200
scale = 1+(0.001*time),1+(0.001*time)

[state 27200, destroyself]
type = destroyself
trigger1 = time = 120
;===========================================================================
;■裏地バインド
[statedef 28000]
type = a
movetype = i
physics = n
sprpriority = 4

[state 28000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 28000, changeanim]
type = changeanim
trigger1 = animexist(root,anim+24480)
value = root,anim+24480
elem = root,animelemno(0)
ignorehitpause = 1

[state 28000, bindtoroot]
type = bindtoroot
trigger1 = 1
facing = 1
pos = 0,0
ignorehitpause = 1

[state 28000, destroyself]
type = destroyself
trigger1 = !animexist(root,anim+24480)
trigger2 = root,movetype = h
trigger3 = root,ctrl = 1
ignorehitpause = 1
;===========================================================================
;■銀河
[statedef 29000]
movetype = i
sprpriority = -5
anim = 1

[state 29000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = globalnoshadow
ignorehitpause = 1

[state 29000, assertspecial]
type = assertspecial
trigger1 = time = [100,900]
flag = nofg
ignorehitpause = 1

[state 29000, explod]
type = explod
trigger1 = time = 0
id = 29000
anim = 29000
postype = left
pos = 0,0
prpriority = -4
removetime = -2
bindtime = 1
supermovetime = 999
pausemovetime = 999
scale = 1,1

[state 29000, explod]
type = explod
trigger1 = time = 50
id = 29001
anim = 29001
postype = left
pos = 0,0
sprpriority = -5
removetime = -2
bindtime = 1
supermovetime = 999
pausemovetime = 999
scale = 1,1

[state 29000, destroyself]
type = destroyself
trigger1 = time = 1000
;===========================================================================
;■マギアキャンセル結界
[statedef 32000]
type = a
movetype = i
physics = n
sprpriority = -3
anim = 32000

[state 32000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = nofg
ignorehitpause = 1

[state 32000, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
[statedef 65000]
movetype = i

[state 65000, stopsnd]
type = stopsnd
trigger1 = 1
channel = 1

[state 65000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[state 65000, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa

[state 65000, destroyself]
type = destroyself
trigger1 = time = 60