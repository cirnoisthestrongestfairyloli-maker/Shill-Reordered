;===========================================================================
;†††HELPERS†††
;===========================================================================
;■汎用バインド
[statedef 10000]
sprpriority = 5
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

[state 10000, trans]
type = trans
trigger1 = root,var(40) = 1
trigger1 = roundstate < 4
trans = sub
ignorehitpause = 1

[state 10000, destroyself]
type = destroyself
trigger1 = !animexist(root,anim+10000)
trigger2 = root,movetype = h
ignorehitpause = 1
;===========================================================================
;■ヤミサヤカ起動ヘルパー
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
var(40) = 2

[state 15000, parentvarset]
type = parentvarset
trigger1 = time < 2
var(41) = 0

[state 15000, parentvarset]
type = parentvarset
trigger1 = time < 2
var(42) = 0

[state 15000, parentvarset]
type = parentvarset
trigger1 = time < 2
var(43) = 0

[state 15000, parentvarset]
type = parentvarset
trigger1 = time < 2
var(44) = 0

[state 15000, parentvarset]
type = parentvarset
trigger1 = time < 2
var(45) = 0

[state 15000, bgpalfx]
type = bgpalfx
trigger1 = time < 2
time = 180
invertall = 1
ignorehitpause = 1
persistent = 0

[state 15000, playsnd]
type = playsnd
trigger1 = time = 1
value = 3,3
abspan = 0
ignorehitpause = 1
persistent = 0

[state 15000, destroyself]
type = destroyself
trigger1 = time > 180;2
ignorehitpause = 1
;===========================================================================
;■影踊るスケルツォ・魔法剣
[statedef 6000]
type = a
movetype = a
physics = n
sprpriority = 4
anim = 6000

[state 6000, veladd]
type = veladd
trigger1 = 1
x = 7

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
damage = floor(10*root,fvar(1)),floor(5*root,fvar(1))
getpower = floor(100*root,fvar(2)),floor(40*root,fvar(2))
givepower = floor(30*root,fvar(3)),floor(15*root,fvar(3))
;---------
ground.hittime = 16
ground.slidetime = 16
air.hittime = 16
guard.hittime = 8
guard.ctrltime = 8
pausetime = 0,10
air.fall = 1
fall.recovertime = 30
;---------
ground.velocity = -3
air.velocity = -2.5,-2
ground.cornerpush.veloff = 0
;---------
sparkno = -1
guard.sparkno = -1
sparkxy = 0,-floor(const(size.yscale)*50)
hitsound = s1,8
guardsound = s2,1

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
trigger1 = target(6000),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 6000, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 6000, varset]
type = varset
trigger1 = playeridexist(var(15))
var(16) = ceil(playerid(var(15)),pos x)

[state 6000, varset]
type = varset
trigger1 = playeridexist(var(15))
var(17) = ceil(playerid(var(15)),pos y)

[state 6000, varset]
type = varset
trigger1 = movehit
var(1) = 1

[state 6000, varset]
type = varset
trigger1 = moveguarded
var(1) = 30

[state 6000, varrandom]
type = varrandom
trigger1 = 1
v = 2
range = -3,3
ignorehitpause = 1

[state 6000, changestate]
type = changestate
trigger1 = movecontact
value = 6005

[state 6000, destroyself]
type = destroyself
trigger1 = frontedgedist < -30
;---------------------------------------------------------------------------
[statedef 6005]
type = a
movetype = i
physics = n
velset = 0,0
anim = ifelse(var(1)=2,6005,1)

[state 6005, posset]
type = posset
trigger1 = var(15) != 0
trigger1 = time <= 1
x = var(16)+var(2)

[state 6005, explod]
type = explod
trigger1 = time = 0
anim = 25000+var(1)
id = 25000
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
supermovetime = 999
pausemovetime = 999
ownpal = 1

[state 6005, destroyself]
type = destroyself
trigger1 = time >= 35
;===========================================================================
;■君想うテンペストーソ・魔法剣
[statedef 6100]
type = a
movetype = a
physics = n
sprpriority = 4
anim = 6000

[state 6100, veladd]
type = veladd
trigger1 = 1
x = 13.5

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

[state 6100, hitdef]
type = hitdef
trigger1 = time = 1
id = 6100
;---------
attr = a,hp
hitflag = mafp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
;---------
damage = floor(12*root,fvar(1)),floor(3*root,fvar(1))
getpower = 0,0
givepower = floor(10*root,fvar(3)),floor(5*root,fvar(3))
;---------
ground.hittime = 25
ground.slidetime = 25
air.hittime = 25
guard.hittime = 10
guard.ctrltime = 10
pausetime = 0,10
air.fall = 1
fall.recover = 0
;---------
ground.velocity = -3,0
air.velocity = -2.5,-2
ground.cornerpush.veloff = 0
;---------
sparkno = -1
guard.sparkno = -1
sparkxy = 0,-floor(const(size.yscale)*50)
hitsound = s1,8
guardsound = s2,1

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
trigger1 = target(6100),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 6100, varset]
type = varset
trigger1 = numtarget
var(15) = target,id

[state 6100, varset]
type = varset
trigger1 = playeridexist(var(15))
var(16) = ceil(playerid(var(15)),pos x)

[state 6100, varset]
type = varset
trigger1 = playeridexist(var(15))
var(17) = ceil(playerid(var(15)),pos y)

[state 6100, varset]
type = varset
trigger1 = movehit
var(1) = 1

[state 6100, varset]
type = varset
trigger1 = moveguarded
var(1) = 30

[state 6100, varrandom]
type = varrandom
trigger1 = 1
v = 2
range = -3,3
ignorehitpause = 1

[state 6100, changestate]
type = changestate
trigger1 = movecontact
value = 6005

[state 6100, destroyself]
type = destroyself
trigger1 = frontedgedist < -30
;===========================================================================
;■勇気を乗せてグランディオーソ・演出補助
[statedef 7200]
type = a
movetype = i
physics = n
sprpriority = -5
anim = 1

[state 7200, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7200, assertspecial]
type = assertspecial
trigger1 = 1
flag = nofg
ignorehitpause = 1

[state 7200, destroyself]
type = destroyself
trigger1 = root,stateno != 3200
ignorehitpause = 1
;===========================================================================
;■誰が為にアフェットゥオーソ・敵サーチバインド
[statedef 7400]
type = a
movetype = i
physics = n
sprpriority = -5
anim = 1

[state 7400, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 7400, varset]
type = varset
trigger1 = 1
var(15) = parent,var(15)

[state 7400, varset]
type = varset
trigger1 = 1
var(16) = parent,var(16)

[state 7400, varset]
type = varset
trigger1 = 1
var(17) = parent,var(17)

[state 7400, parentvarset]
type = parentvarset
trigger1 = 1
var(25) = var(25)

[state 7400, parentvarset]
type = parentvarset
trigger1 = 1
var(26) = var(26)

[state 7400, posset]
type = posset
trigger1 = 1
x = var(16)
y = var(17)

[state 7400, varset]
type = varset
trigger1 = 1
var(25) = ceil(parentdist x)

[state 7400, varset]
type = varset
trigger1 = 1
var(26) = ceil(parentdist y)

[state 7400, destroyself]
type = destroyself
trigger1 = parent,ctrl = 1
trigger2 = parent,movetype = h
ignorehitpause = 1
;===========================================================================
;■煌きのオラトリオ１・バインド
[statedef 11010]
type = a
movetype = i
physics = n
sprpriority = 1
anim = 11010

[state 11010, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 11010, bindtoroot]
type = bindtoroot
trigger1 = root,anim = 1010
trigger1 = time < 10
facing = 1
pos = 0,0
ignorehitpause = 1

[state 11010, trans]
type = trans
trigger1 = root,var(40) = 1
trans = sub
ignorehitpause = 1

[state 11010, changestate]
type = changestate
trigger1 = root,anim != 1010
trigger2 = root,movetype != a
value = 11020
;---------------------------------------------------------------------------
[statedef 11020]
type = a
movetype = i
physics = n
anim = 11020

[state 11020, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 11020, trans]
type = trans
trigger1 = root,var(40) = 1
trans = sub
ignorehitpause = 1

[state 11020, destroyself]
type = destroyself
trigger1 = animtime = 0
trigger2 = root,movetype = h
ignorehitpause = 1
;===========================================================================
;■煌きのオラトリオ２・バインド
[statedef 11040]
type = a
movetype = i
physics = n
sprpriority = 1
anim = 11040

[state 11040, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 11040, bindtoroot]
type = bindtoroot
trigger1 = root,anim = 1040
trigger1 = time < 10
facing = 1
pos = 0,0
ignorehitpause = 1

[state 11040, trans]
type = trans
trigger1 = root,var(40) = 1
trans = sub
ignorehitpause = 1

[state 11040, changestate]
type = changestate
trigger1 = root,anim != 1040
trigger2 = root,movetype != a
value = 11050
;---------------------------------------------------------------------------
[statedef 11050]
type = a
movetype = i
physics = n
anim = 11050

[state 11050, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 11050, trans]
type = trans
trigger1 = root,var(40) = 1
trans = sub
ignorehitpause = 1

[state 11050, destroyself]
type = destroyself
trigger1 = animtime = 0
trigger2 = root,movetype = h
ignorehitpause = 1
;===========================================================================
;■煌きのオラトリオ５・バインド
[statedef 11110]
type = a
movetype = i
physics = n
sprpriority = 1
anim = 11110

[state 11110, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 11110, bindtoroot]
type = bindtoroot
trigger1 = root,anim = 1110
trigger1 = time < 10
facing = 1
pos = 0,0
ignorehitpause = 1

[state 11110, trans]
type = trans
trigger1 = root,var(40) = 1
trans = sub
ignorehitpause = 1

[state 11110, changestate]
type = changestate
trigger1 = root,anim != 1110
trigger2 = root,movetype != a
value = 11120
;---------------------------------------------------------------------------
[statedef 11120]
type = a
movetype = i
physics = n
anim = 11120

[state 11120, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 11120, trans]
type = trans
trigger1 = root,var(40) = 1
trans = sub
ignorehitpause = 1

[state 11120, destroyself]
type = destroyself
trigger1 = animtime = 0
trigger2 = root,movetype = h
ignorehitpause = 1
;===========================================================================
;■勇気を乗せてグランディオーソ・バインド１
[statedef 11140]
type = a
movetype = i
physics = n
sprpriority = 1
anim = 11140

[state 11140, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 11140, bindtoroot]
type = bindtoroot
trigger1 = root,anim = 3200
trigger1 = time < 10
facing = 1
pos = 0,0
ignorehitpause = 1

[state 11140, trans]
type = trans
trigger1 = root,var(40) = 1
trans = sub
ignorehitpause = 1

[state 11140, changestate]
type = changestate
trigger1 = root,anim != 3200
trigger2 = root,movetype != a
value = 11150
;---------------------------------------------------------------------------
[statedef 11150]
type = a
movetype = i
physics = n
anim = 11150

[state 11150, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 11150, trans]
type = trans
trigger1 = root,var(40) = 1
trans = sub
ignorehitpause = 1

[state 11150, destroyself]
type = destroyself
trigger1 = animtime = 0
trigger2 = root,movetype = h
ignorehitpause = 1
;===========================================================================
;■勇気を乗せてグランディオーソ・バインド２
[statedef 11170]
type = a
movetype = i
physics = n
sprpriority = 1
anim = 11170

[state 11170, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 11170, bindtoroot]
type = bindtoroot
trigger1 = root,anim = 3210
trigger1 = time < 10
facing = 1
pos = 0,0
ignorehitpause = 1

[state 11170, trans]
type = trans
trigger1 = root,var(40) = 1
trans = sub
ignorehitpause = 1

[state 11170, changestate]
type = changestate
trigger1 = root,anim != 3210
trigger2 = root,movetype != a
value = 11180
;---------------------------------------------------------------------------
[statedef 11180]
type = a
movetype = i
physics = n
anim = 11180

[state 11180, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 11180, trans]
type = trans
trigger1 = root,var(40) = 1
trans = sub
ignorehitpause = 1

[state 11180, destroyself]
type = destroyself
trigger1 = animtime = 0
trigger2 = root,movetype = h
ignorehitpause = 1
;===========================================================================
;■キラキラ
[statedef 20000]
type = a
movetype = i
physics = n
sprpriority = 5
anim = 20000+(root,var(24))

[state 20000, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 20000, varset]
type = varset
trigger1 = time < 3
var(18) = parent,var(18)

[state 20000, posset]
type = posset
trigger1 = playeridexist(var(18))
trigger1 = playerid(var(18)),movetype = h
trigger1 = playerid(var(18)),stateno != [120,155]
x = (playerid(var(18)),pos x)
y = (playerid(var(18)),pos y)-50

[state 20000, trans]
type = trans
trigger1 = root,var(40) = 1
trans = sub
ignorehitpause = 1

[state 20000, destroyself]
type = destroyself
trigger1 = animtime = 0
ignorehitpause = 1
;===========================================================================
;■キラキラ
[statedef 20001]
type = a
movetype = i
physics = n
sprpriority = 5
anim = 20000+(root,var(24))

[state 20001, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 20001, varset]
type = varset
trigger1 = time < 3
var(19) = parent,var(19)

[state 20001, posset]
type = posset
trigger1 = playeridexist(var(19))
trigger1 = playerid(var(19)),movetype = h
trigger1 = playerid(var(19)),stateno != [120,155]
x = (playerid(var(19)),pos x)
y = (playerid(var(19)),pos y)-50

[state 20001, trans]
type = trans
trigger1 = root,var(40) = 1
trans = sub
ignorehitpause = 1

[state 20001, destroyself]
type = destroyself
trigger1 = animtime = 0
ignorehitpause = 1
;===========================================================================
;■魔法陣
[statedef 21500]
type = a
movetype = i
physics = n
sprpriority = -3+(root,var(40)=1)*8-(root,stateno=3410)*8
anim = 21500

[state 21500, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 21500, varset]
type = varset
trigger1 = time < 1
var(1) = root,facing

[state 21500, trans]
type = trans
trigger1 = root,var(40) = 1
trans = sub
ignorehitpause = 1

[state 21500, parentvaradd]
type = parentvaradd
trigger1 = roundstate > 1
trigger1 = time = 1
var(1) = 80-(parent,var(40)=2)*20-(parent,var(40)=1)*40
ignorehitpause = 0

[state 21500, changestate]
type = changestate
trigger1 = animtime = 0
value = 21510
;---------------------------------------------------------------------------
[statedef 21510]
type = a
anim = 21510

[state 21510, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 21510, angledraw]
type = angledraw
trigger1 = 1
ignorehitpause = 1

[state 21510, angleadd]
type = angleadd
trigger1 = 1
value = -0.3*var(1)
ignorehitpause = 1

[state 21510, trans]
type = trans
trigger1 = root,var(40) != 1
trans = add
ignorehitpause = 1

[state 21510, trans]
type = trans
trigger1 = root,var(40) = 1
trans = sub
ignorehitpause = 1

[state 21510, destroyself]
type = destroyself
trigger1 = time >= 120
;===========================================================================
;■魔法陣クォート
[statedef 21501]
type = a
movetype = i
physics = n
sprpriority = -3+(root,var(40)=1)*8-(root,stateno=3410)*8
anim = 21501

[state 21501, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 21501, varset]
type = varset
trigger1 = time < 1
var(1) = root,facing

[state 21501, trans]
type = trans
trigger1 = root,var(40) = 1
trans = sub
ignorehitpause = 1

[state 21501, parentvaradd]
type = parentvaradd
trigger1 = roundstate > 1
trigger1 = time = 1
var(1) = 80-(parent,var(40)=2)*20-(parent,var(40)=1)*40
ignorehitpause = 0

[state 21501, changestate]
type = changestate
trigger1 = animtime = 0
value = 21511
;---------------------------------------------------------------------------
[statedef 21511]
type = a
anim = 21511

[state 21511, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 21511, angledraw]
type = angledraw
trigger1 = 1
ignorehitpause = 1

[state 21511, angleadd]
type = angleadd
trigger1 = 1
value = -0.3*var(1)
ignorehitpause = 1

[state 21511, trans]
type = trans
trigger1 = root,var(40) != 1
trans = add
ignorehitpause = 1

[state 21511, trans]
type = trans
trigger1 = root,var(40) = 1
trans = sub
ignorehitpause = 1

[state 21511, destroyself]
type = destroyself
trigger1 = time >= 120
;===========================================================================
;■魔法陣ジャンプ
[statedef 20040]
type = a
movetype = i
physics = n
sprpriority = -3
anim = 20040

[state 20040, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 20040, trans]
type = trans
trigger1 = root,var(40) = 1
trigger2 = numhelper(15000) = 1
trans = sub
ignorehitpause = 1

[state 20040, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
;■魔法陣エアダッシュ
[statedef 20110]
type = a
movetype = i
physics = n
sprpriority = -3
anim = 20110

[state 20110, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 20110, trans]
type = trans
trigger1 = root,var(40) = 1
trigger2 = numhelper(15000) = 1
trans = sub
ignorehitpause = 1

[state 20110, destroyself]
type = destroyself
trigger1 = animtime = 0
;===========================================================================
;■魔法陣エアロ
[statedef 21700]
type = a
movetype = i
physics = n
sprpriority = -3
anim = 21700

[state 21700, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 21700, trans]
type = trans
trigger1 = root,var(40) = 1
trigger2 = numhelper(15000) = 1
trans = sub
ignorehitpause = 1

[state 21700, destroyself]
type = destroyself
trigger1 = animtime = 0
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