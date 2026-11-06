;===========================================================================
;†††HYPERS†††
;===========================================================================
;■ラピッドファイアアロー
[statedef 3000]
type = s
movetype = a
physics = s
velset = 0,0
ctrl = 0
anim = 3000

[state 3000, nothitby]
type = nothitby
trigger1 = animelemtime(10) < 3
value = sca,aa
ignorehitpause = 1

[state 3000, superpause]
type = superpause
trigger1 = animelemtime(2) = 0
time = 40
movetime = 40
anim = s1
pos = floor(const(size.xscale)*32),-floor(const(size.yscale)*76)
sound = s2,100
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -1000

[state 3000, explod]
type = explod
trigger1 = animelemtime(6) = 0
id = 32300
anim = 32300
postype = p1
pos = floor(const(size.xscale)*45),-floor(const(size.yscale)*80)
sprpriority = 4
ownpal = 1
bindtime = 1
removetime = -2
supermovetime = 100
scale = const(size.xscale),const(size.yscale)

[state 3000, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 9,42
channel = 0

[state 3000, playsnd]
type = playsnd
trigger1 = animelemtime(8) = 0
value = 2,100

[state 3000, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = -floor(const(size.xscale)*8)

[state 3000, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = -floor(const(size.xscale)*5)

[state 3000, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind3000"
id = 13000
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3000, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(9000) = 0
name = "string"
id = 9000
stateno = 9000
postype = p1
pos = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3000, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 2
value = 6,1

[state 3000, explod]
type = explod
trigger1 = animelemtime(5) = 2
id = 24000
anim = 24000
postype = p1
pos = floor(const(size.xscale)*27),-floor(const(size.yscale)*109)
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
scale = const(size.xscale),const(size.yscale)

[state 3000, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(6) = 0
id = 24000
postype = p1
pos = floor(const(size.xscale)*30),-floor(const(size.yscale)*114)

[state 3000, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(7) = 0
id = 24000
postype = p1
pos = floor(const(size.xscale)*21),-floor(const(size.yscale)*108)

[state 3000, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(8) = 0
id = 24000
postype = p1
pos = floor(const(size.xscale)*19),-floor(const(size.yscale)*106)

[state 3000, removeexplod]
type = removeexplod
trigger1 = animelemtime(9) = 0
id = 24000

[state 3000, explod]
type = explod
trigger1 = animelemtime(9) = 0
id = 24010
anim = 24010
postype = p1
pos = floor(const(size.xscale)*41),-floor(const(size.yscale)*114)
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
supermovetime = 999
pausemovetime = 999
scale = const(size.xscale),const(size.yscale)

[state 3000, helper]
type = helper
trigger1 = animelemtime(9) = 0
trigger2 = animelemtime(9) = 3
trigger3 = animelemtime(10) = 0
trigger4 = animelemtime(10) = 3
trigger5 = animelemtime(10) = 6
trigger6 = animelemtime(10) = 9
trigger7 = animelemtime(10) = 12
name = "h magical arrow"
id = 6400
stateno = 6400
postype = p1
pos = floor(const(size.xscale)*38),-floor(const(size.yscale)*80)
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3000, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■ゴッズメッセージ
[statedef 3200]
type = s
movetype = a
physics = s
velset = 0,0
ctrl = 0
anim = 3200

[state 3200, varset]
type = varset
triggerall = var(50) = 0
triggerall = time = 0
trigger1 = command = "msg1"
trigger2 = var(6) = 1
var(7) = 3

[state 3200, varset]
type = varset
triggerall = var(50) = 0
triggerall = time = 0
trigger1 = command = "msg2"
trigger2 = var(6) = 2
var(7) = 5

[state 3200, varset]
type = varset
triggerall = var(50) = 0
triggerall = time = 0
trigger1 = command = "msg3"
trigger2 = var(6) = 3
var(7) = 7

[state 3200, nothitby]
type = nothitby
trigger1 = animelemtime(10) < 0
value = sca,aa
ignorehitpause = 1

[state 3200, bgpalfx]
type = bgpalfx
trigger1 = time = 0
time = 120
add = -128,-128,-128

[state 3200, superpause]
type = superpause
trigger1 = animelemtime(7) = 0
time = 60
movetime = 60
anim = s32400
pos = -floor(const(size.xscale)*1),-floor(const(size.yscale)*113)
sound = s2,100
darken = 0;1
unhittable = 1
p2defmul = 1
poweradd = -1000

[state 3200, helper]
type = helper
trigger1 = animelemtime(7) = 0
name = "torus circle"
id = 27000
stateno = 27000
postype = left
pos = 160,120
ownpal = 1
supermovetime = 900
pausemovetime = 900

[state 3200, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind3200"
id = 13200
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3200, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(9000) = 0
name = "string"
id = 9000
stateno = 9000
postype = p1
pos = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3200, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 9,47
channel = 0

[state 3200, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 4
value = 6,1

[state 3200, explod]
type = explod
trigger1 = animelemtime(2) = 4
id = 24000
anim = 24000
postype = p1
pos = -floor(const(size.xscale)*12),-floor(const(size.yscale)*58)
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
scale = const(size.xscale),const(size.yscale)

[state 3200, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(3) = 0
id = 24000
postype = p1
pos = -floor(const(size.xscale)*17),-floor(const(size.yscale)*99)

[state 3200, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(4) = 0
id = 24000
postype = p1
pos = -floor(const(size.xscale)*36),-floor(const(size.yscale)*105)

[state 3200, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(5) = 0
id = 24000
postype = p1
pos = -floor(const(size.xscale)*44),-floor(const(size.yscale)*113)

[state 3200, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(6) = 0
id = 24000
postype = p1
pos = -floor(const(size.xscale)*39),-floor(const(size.yscale)*93)

[state 3200, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(7) = 0
id = 24000
postype = p1
pos = -floor(const(size.xscale)*37),-floor(const(size.yscale)*93)

[state 3200, removeexplod]
type = removeexplod
trigger1 = animelemtime(8) = 0
id = 24000

[state 3200, explod]
type = explod
trigger1 = animelemtime(8) = 0
id = 24030
anim = 24030
postype = p1
pos = -floor(const(size.xscale)*46),-floor(const(size.yscale)*118)
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
supermovetime = 999
pausemovetime = 999
scale = const(size.xscale),const(size.yscale)

[state 3200, envshake]
type = envshake
trigger1 = animelemtime(8) = 0
time = 20
freq = 60
ampl = 10
phase = 90

[state 3200, helper]
type = helper
trigger1 = animelemtime(8) = 0
name = "god arrow"
id = 7200
stateno = 7200
postype = p1
pos = -floor(const(size.xscale)*1),-floor(const(size.yscale)*111)
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3200, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■レイジングスター
[statedef 3300]
type = s
movetype = a
physics = s
velset = 0,0
ctrl = 0
anim = 3300

[state 3300, nothitby]
type = nothitby
trigger1 = animelemtime(11) < 0
value = sca,aa
ignorehitpause = 1

[state 3300, superpause]
type = superpause
trigger1 = animelemtime(2) = 0
time = 90
movetime = 90
anim = s1
pos = 0,0
sound = s2,100
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -3000

[state 3300, helper]
type = helper
trigger1 = animelemtime(2) = 0
name = "clear fg"
id = 7900
stateno = 7900
postype = p1
pos = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3300, explod]
type = explod
trigger1 = animelemtime(2) = 0
id = 30000
anim = 30000
postype = left
pos = 160,0
bindtime = 1
removetime = -2
removeongethit = 1
scale = 0.5,0.5
sprpriority = 5
supermovetime = 999
pausemovetime = 999
ownpal = 1

[state 3300, explod]
type = explod
trigger1 = animelemtime(2) = 0
id = 30001
anim = 30001
postype = left
pos = 160,0
bindtime = 1
removetime = -2
removeongethit = 1
scale = 0.5,0.5
sprpriority = 5
supermovetime = 999
pausemovetime = 999
ownpal = 1

[state 3300, explod]
type = explod
trigger1 = animelemtime(6) = 0
id = 32500
anim = 32500
postype = p1
pos = floor(const(size.xscale)*45),-floor(const(size.yscale)*80)
sprpriority = 4
ownpal = 1
ontop = 1
bindtime = 1
removetime = -2
supermovetime = 100
scale = const(size.xscale),const(size.yscale)

[state 3300, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 9,40
channel = 0

[state 3300, playsnd]
type = playsnd
trigger1 = animelemtime(8) = 0
value = 2,100

[state 3300, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = -floor(const(size.xscale)*8)

[state 3300, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = -floor(const(size.xscale)*5)

[state 3300, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind3300"
id = 13300
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3300, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(9000) = 0
name = "string"
id = 9000
stateno = 9000
postype = p1
pos = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3300, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 2
value = 6,1

[state 3300, explod]
type = explod
trigger1 = animelemtime(5) = 2
id = 24000
anim = 24000
postype = p1
pos = floor(const(size.xscale)*27),-floor(const(size.yscale)*109)
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
scale = const(size.xscale),const(size.yscale)

[state 3300, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(6) = 0
id = 24000
postype = p1
pos = floor(const(size.xscale)*30),-floor(const(size.yscale)*114)

[state 3300, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(7) = 0
id = 24000
postype = p1
pos = floor(const(size.xscale)*21),-floor(const(size.yscale)*108)

[state 3300, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(8) = 0
id = 24000
postype = p1
pos = floor(const(size.xscale)*19),-floor(const(size.yscale)*106)

[state 3300, removeexplod]
type = removeexplod
trigger1 = animelemtime(9) = 0
id = 24000

[state 3300, explod]
type = explod
trigger1 = animelemtime(9) = 0
id = 24010
anim = 24010
postype = p1
pos = floor(const(size.xscale)*41),-floor(const(size.yscale)*114)
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
supermovetime = 999
pausemovetime = 999
scale = const(size.xscale),const(size.yscale)

[state 3300, helper]
type = helper
trigger1 = animelemtime(9) = 0
name = "raging star"
id = 7000
stateno = 7000
postype = p1
pos = floor(const(size.xscale)*38),-floor(const(size.yscale)*80)
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3300, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■トーラスアセンション
[statedef 3500]
type = s
movetype = a
physics = s
velset = 0,0
ctrl = 0
anim = 3500

[state 3500, nothitby]
type = nothitby
trigger1 = time < 72
value = sca,aa
ignorehitpause = 1

[state 3500, superpause]
type = superpause
trigger1 = animelemtime(2) = 0
time = 60
movetime = 60
anim = s1
pos = 0,0
sound = s2,100
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -3000

[state 3500, explod]
type = explod
trigger1 = animelemtime(2) = 0
id = 32300
anim = 32300
postype = p1
pos = floor(const(size.xscale)*0),-floor(const(size.yscale)*70)
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
supermovetime = 100
scale = const(size.xscale),const(size.yscale)

[state 3500, explod]
type = explod
trigger1 = animelemtime(2) = 15
id = 32400
anim = 32400
postype = p1
pos = floor(const(size.xscale)*0),-floor(const(size.yscale)*70)
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
supermovetime = 100
scale = const(size.xscale),const(size.yscale)

[state 3500, explod]
type = explod
trigger1 = animelemtime(2) = 30
id = 32500
anim = 32500
postype = p1
pos = floor(const(size.xscale)*0),-floor(const(size.yscale)*70)
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
supermovetime = 100
scale = const(size.xscale),const(size.yscale)

[state 3500, hitdef]
type = hitdef
trigger1 = p2stateno != 40
trigger1 = p2stateno != [140,155]
trigger1 = p2stateno != [5000,5011]
id = 3500
;---------
affectteam = e
attr = s,ht
hitflag = m-
priority = 1,miss
guard.dist = 0
;---------
getpower = 0,0
p1stateno = 3510
p2stateno = 3590
p2facing = 1
hitsound = s1,6

[state 3500, velset]
type = velset
trigger1 = animelemtime(3) = 0
x = 10

[state 3500, changestate]
type = changestate
trigger1 = animtime = 0
value = 3505
;---------------------------------------------------------------------------
;■トーラスアセンション・失敗
[statedef 3505]
type = s
movetype = i
physics = s
anim = 3505

[state 3505, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;■トーラスアセンション・成功
[statedef 3510]
type = s
movetype = a
physics = s
anim = 3510

[state 3510, varset]
type = varset
trigger1 = time = 0
var(8) = 0

[state 3510, varadd]
type = varadd
trigger1 = animelemtime(30) > 0
trigger1 = var(8) < 256
var(8) = 2

[state 3510, allpalfx]
type = allpalfx
trigger1 = 1
time = 1
add = var(8),var(8),var(8)

[state 3510, width]
type = width
trigger1 = 1
edge = floor(const(size.xscale)*60),0

[state 3510, varrandom]
type = varrandom
trigger1 = 1
v = 4
range = 0,3

[state 3510, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,3

[state 3510, explod]
type = explod
trigger1 = animelemtime(1) > 0
trigger1 = animelemtime(30) < 0
trigger1 = time%30 = 0
id = 17000
anim = 17000+10*var(4)
postype = p1
pos = 0,-floor(const(size.yscale)*50)
random = 30,30
sprpriority = 4
ownpal = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)

[state 3510, explod]
type = explod
trigger1 = animelemtime(3) > 0
trigger1 = animelemtime(30) < 0
trigger1 = time%20 = 10
id = 17000
anim = 17000+10*var(5)
postype = p1
pos = floor(const(size.xscale)*30),-floor(const(size.yscale)*50)
random = 30,30
sprpriority = 4
ownpal = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)

[state 3510, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind3510"
id = 13510
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3510, helper]
type = helper
trigger1 = time = 0
name = "galaxy"
id = 29000
stateno = 29000
postype = left
pos = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 1
size.yscale = 1

[state 3510, playsnd]
type = playsnd
trigger1 = time = 30
value = 9,50
channel = 0

[state 3510, playsnd]
type = playsnd
trigger1 = time = 0
value = 4,21

[state 3510, playsnd]
type = playsnd
trigger1 = animelemtime(24) = 0
value = 4,20

[state 3510, targetbind]
type = targetbind
trigger1 = numtarget(3500) > 0
trigger1 = animelemtime(3) < 0
id = 3500
pos = floor(const(size.xscale)*10),0

[state 3510, targetbind]
type = targetbind
trigger1 = numtarget(3500) > 0
trigger1 = animelemtime(3) >= 0
id = 3500
pos = floor(const(size.xscale)*30),0

[state 3510, targetstate]
type = targetstate
trigger1 = numtarget(3500)
trigger1 = animelemtime(3) = 0
value = 3591
ignorehitpause = 1

[state 3510, changestate]
type = changestate
trigger1 = animtime = 0
value = 3520
;---------------------------------------------------------------------------
;■トーラスアセンション・女神化
[statedef 3520]
type = a
movetype = a
physics = n
anim = 3520

[state 3520, targetstate]
type = targetstate
trigger1 = numtarget
value = 3592
ignorehitpause = 1

[state 3520, varadd]
type = varadd
trigger1 = var(8) > 0
var(8) = -2

[state 3520, allpalfx]
type = allpalfx
trigger1 = var(8) > 0
time = 1
add = var(8),var(8),var(8)

[state 3520, varset]
type = varset
trigger1 = var(8) < 0
var(8) = 0

[state 3520, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(28000) = 0
name = "galaxy lining"
id = 28000
stateno = 28000
postype = p1
pos = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3520, helper]
type = helper
trigger1 = (p2bodydist x < 130) || (numenemy > 1)
trigger1 = time = [20,80]
trigger1 = time%20 = 0
name = "pusher"
id = 6900
stateno = 6900
postype = p1
pos = -floor(const(size.xscale)*80),0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3520, explod]
type = explod
trigger1 = time = 100
id = 18000
anim = 18000
postype = p1
pos = -floor(const(size.xscale)*2),-floor(const(size.yscale)*70)
sprpriority = 3
ownpal = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
supermovetime = 999
pausemovetime = 999

[state 3520, width]
type = width
trigger1 = 1
edge = 240,30

[state 3520, playsnd]
type = playsnd
trigger1 = time = 60
value = 9,51
channel = 0

[state 3520, changestate]
type = changestate
trigger1 = animtime = 0
value = 3530
;---------------------------------------------------------------------------
;■トーラスアセンション・ビーム
[statedef 3530]
type = a
movetype = a
physics = n
anim = 3530

[state 3530, targetstate]
type = targetstate
trigger1 = numtarget
trigger1 = animelemtime(12) < 0
value = 3592
ignorehitpause = 1

[state 3530, targetstate]
type = targetstate
trigger1 = numtarget
trigger1 = animelemtime(12) = [0,10]
value = 3593
ignorehitpause = 1

[state 3530, width]
type = width
trigger1 = 1
edge = 240,30

[state 3530, helper]
type = helper
trigger1 = time = 0
name = "torus circle 2"
id = 27200
stateno = 27200
postype = p1
pos = -50,-100
ownpal = 1
supermovetime = 900
pausemovetime = 900

[state 3530, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(9000) = 0
name = "string"
id = 9000
stateno = 9000
postype = p1
pos = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3530, superpause]
type = superpause
trigger1 = animelemtime(12) = 0
time = 108
movetime = 108
anim = s32500
pos = floor(const(size.xscale)*30),-floor(const(size.yscale)*80)
sound = s7,2;s2,100
darken = 1
unhittable = 1
p2defmul = 1
poweradd = 0

[state 3530, explod]
type = explod
trigger1 = animelemtime(12) = 0
id = 30100
anim = 30100
postype = left
pos = 160,0
bindtime = 1
removetime = -2
removeongethit = 1
scale = 0.5,0.5
sprpriority = 5
supermovetime = 999
pausemovetime = 999
ownpal = 1

[state 3530, explod]
type = explod
trigger1 = animelemtime(12) = 0
id = 30101
anim = 30101
postype = left
pos = 160,0
bindtime = 1
removetime = -2
removeongethit = 1
scale = 0.5,0.5
sprpriority = 5
supermovetime = 999
pausemovetime = 999
ownpal = 1

[state 3530, playsnd]
type = playsnd
trigger1 = animelemtime(7) = 0
value = 7,1

[state 3530, helper]
type = helper
trigger1 = animelemtime(30) = 0
name = "rainbow star"
id = 26000
stateno = 26000
postype = p1
pos = floor(const(size.xscale)*10),-floor(const(size.yscale)*80)
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 3530, explod]
type = explod
trigger1 = animelemtime(7) = 0
id = 24000
anim = 24000
postype = p1
pos = floor(const(size.xscale)*21),-floor(const(size.yscale)*105)
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
scale = const(size.xscale),const(size.yscale)

[state 3530, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(10) = 0
id = 24000
postype = p1
pos = floor(const(size.xscale)*23),-floor(const(size.yscale)*114)

[state 3530, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(11) = 0
id = 24000
postype = p1
pos = floor(const(size.xscale)*14),-floor(const(size.yscale)*109)

[state 3530, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(12) = 0
id = 24000
postype = p1
pos = floor(const(size.xscale)*13),-floor(const(size.yscale)*107)

[state 3530, removeexplod]
type = removeexplod
trigger1 = animelemtime(30) = 0
id = 24000

[state 3530, explod]
type = explod
trigger1 = animelemtime(30) = 0
id = 24010
anim = 24010
postype = p1
pos = floor(const(size.xscale)*35),-floor(const(size.yscale)*114)
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
supermovetime = 999
pausemovetime = 999
scale = const(size.xscale),const(size.yscale)

[state 3530, playsnd]
type = playsnd
trigger1 = animelemtime(43) = 0
value = 4,22

[state 3530, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;■トーラスアセンションやられ（無敵）
[statedef 3590]
type = s
movetype = h
physics = s
velset = 0,0

[state 3590, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 3590, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3590, changeanim2]
type = changeanim2
trigger1 = time = 0
value = 3590
;---------------------------------------------------------------------------
;■トーラスアセンションやられ（魔法少女）
[statedef 3591]
type = s
movetype = h
physics = s
velset = 0,0

[state 3591, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 3591, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 3591, changeanim]
type = changeanim
trigger1 = selfanimexist(100327)
value = 100327

[state 3591, changeanim]
type = changeanim
trigger1 = !selfanimexist(100327)
trigger1 = selfanimexist(9020)
value = 9020

[state 3591, changeanim]
type = changeanim
trigger1 = !selfanimexist(100327)
trigger1 = !selfanimexist(9020)
trigger1 = selfanimexist(66660)
value = 66660

[state 3591, changeanim]
type = changeanim
trigger1 = !selfanimexist(100327)
trigger1 = !selfanimexist(9020)
trigger1 = !selfanimexist(66660)
value = 0
;---------------------------------------------------------------------------
;■トーラスアセンションやられ１
[statedef 3592]
type = s
movetype = h
physics = s
velset = 0,0

[state 3592, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 3592, width]
type = width
trigger1 = 1
edge = 240,30

[state 3592, changeanim2]
type = changeanim2
trigger1 = time = 0
value = 3590

[state 3592, defencemulset]
type = defencemulset
trigger1 = 1
value = 0.5-0.45*(life<100)

[state 3592, lifeset]
type = lifeset
trigger1 = life < 10
value = 10

[state 3592, posfreeze]
type = posfreeze
trigger1 = 1

[state 3592, posset]
type = posset
trigger1 = 1
y = 0

[state 3592, palfx]
type = palfx
trigger1 = 1
time = 1
add = -128,-128,-128

[state 3592, selfstate]
type = selfstate
trigger1 = time = 100
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;■トーラスアセンションやられ２
[statedef 3593]
type = s
movetype = h
physics = s
velset = 0,0

[state 3593, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 3593, width]
type = width
trigger1 = 1
edge = 240,30

[state 3593, changeanim2]
type = changeanim2
trigger1 = time = 0
value = 3590

[state 3593, defencemulset]
type = defencemulset
trigger1 = 1
value = 1

[state 3593, selfstate]
type = selfstate
trigger1 = time = 100
value = 0
ctrl = 1
;===========================================================================
;■ルミナスワールドエンド
[statedef 4000]
type = s
movetype = a
physics = s
velset = 0,0
ctrl = 0
anim = 4000

[state 4000, nothitby]
type = nothitby
trigger1 = animelemtime(4) < 0
value = sca,aa
ignorehitpause = 1

[state 4000, superpause]
type = superpause
trigger1 = animelemtime(2) = 0
time = 60
movetime = 60
anim = s1
pos = 0,0
sound = s2,100
darken = 1
unhittable = 1
p2defmul = 1
poweradd = -2000

[state 4000, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 12,1
channel = 0

[state 4000, explod]
type = explod
trigger1 = animelemtime(2) = 0
id = 32300
anim = 32300
postype = p1
pos = floor(const(size.xscale)*0),-floor(const(size.yscale)*70)
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
supermovetime = 100
scale = const(size.xscale),const(size.yscale)

[state 4000, explod]
type = explod
trigger1 = animelemtime(2) = 5
id = 32300
anim = 32300
postype = p1
pos = floor(const(size.xscale)*35),-floor(const(size.yscale)*85)
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
supermovetime = 100
scale = const(size.xscale),const(size.yscale)

[state 4000, explod]
type = explod
trigger1 = animelemtime(2) = 10
id = 32300
anim = 32300
postype = p1
pos = floor(const(size.xscale)*50),-floor(const(size.yscale)*50)
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
supermovetime = 100
scale = const(size.xscale),const(size.yscale)

[state 4000, explod]
type = explod
trigger1 = animelemtime(2) = 15
id = 32300
anim = 32300
postype = p1
pos = floor(const(size.xscale)*35),floor(const(size.yscale)*15)
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
supermovetime = 100
scale = const(size.xscale),const(size.yscale)

[state 4000, explod]
type = explod
trigger1 = animelemtime(2) = 20
id = 32300
anim = 32300
postype = p1
pos = floor(const(size.xscale)*0),floor(const(size.yscale)*0)
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
supermovetime = 100
scale = const(size.xscale),const(size.yscale)

[state 4000, explod]
type = explod
trigger1 = animelemtime(2) = 25
id = 32300
anim = 32300
postype = p1
pos = -floor(const(size.xscale)*35),floor(const(size.yscale)*15)
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
supermovetime = 100
scale = const(size.xscale),const(size.yscale)

[state 4000, explod]
type = explod
trigger1 = animelemtime(2) = 30
id = 32300
anim = 32300
postype = p1
pos = -floor(const(size.xscale)*50),floor(const(size.yscale)*0)
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
supermovetime = 100
scale = const(size.xscale),const(size.yscale)

[state 4000, explod]
type = explod
trigger1 = animelemtime(2) = 35
id = 32300
anim = 32300
postype = p1
pos = -floor(const(size.xscale)*35),-floor(const(size.yscale)*85)
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
supermovetime = 100
scale = const(size.xscale),const(size.yscale)

[state 4000, explod]
type = explod
trigger1 = animelemtime(2) = 40
id = 32300
anim = 32300
postype = p1
pos = floor(const(size.xscale)*0),-floor(const(size.yscale)*100)
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
supermovetime = 100
scale = const(size.xscale),const(size.yscale)

[state 4000, explod]
type = explod
trigger1 = animelemtime(2) = 0
id = 32400
anim = 32400
postype = p1
pos = floor(const(size.xscale)*0),-floor(const(size.yscale)*70)
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
supermovetime = 100
scale = const(size.xscale),const(size.yscale)

[state 4000, explod]
type = explod
trigger1 = animelemtime(2) = 15
id = 32500
anim = 32500
postype = p1
pos = floor(const(size.xscale)*0),-floor(const(size.yscale)*70)
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
supermovetime = 100
scale = const(size.xscale),const(size.yscale)

[state 4000, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
trigger2 = numtarget
trigger2 = !(target,name = "akemi-homura")
id = 4000
;---------
affectteam = f
attr = a,ht
hitflag = ma-
priority = 1,miss
guardflag = !
;---------
damage = 0,0
getpower = 0,0
givepower = 0,0
;---------
priority = 1,miss
;---------
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1,0
guardsound = -1,0
;---------
numhits = 0

[state 4000, targetstate]
type = targetstate
trigger1 = numtarget
trigger1 = target,name = "akemi-homura"
value = 4500

[state 4000, changestate]
type = changestate
trigger1 = numtarget
trigger1 = target,name = "akemi-homura"
value = 4100

[state 4000, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■合体攻撃まどか１
[statedef 4100]
type = a
movetype = a
physics = n
velset = 0,0
anim = 4100

[state 4100, changestate]
type = changestate
trigger1 = numtarget
trigger1 = !(target,name = "akemi-homura")
value = 0
ctrl = 1

[state 4100, targetstate]
type = targetstate
trigger1 = numtarget
trigger1 = target,stateno != 4500
value = 4500
ignorehitpause = 1

[state 4100, sprpriority]
type = sprpriority
trigger1 = 1
value = 0

[state 4100, turn]
type = turn
trigger1 = time = 0

[state 4100, targetfacing]
type = targetfacing
trigger1 = time = 0
value = -1

[state 4100, width]
type = width
trigger1 = 1
edge = floor(const(size.xscale)*60),0

[state 4100, targetbind]
type = targetbind
trigger1 = 1
time = 1
id = 4000
pos = floor(const(size.xscale)*50),0

[state 4100, nothitby]
type = nothitby
trigger1 = 1
time = 10
value = sca,aa
ignorehitpause = 1

[state 4100, playsnd]
type = playsnd
trigger1 = time = 0
value = 8,0
abspan = 0

[state 4100, playsnd]
type = playsnd
trigger1 = time = 0
value = 12,0
abspan = 0

[state 4100, playsnd]
type = playsnd
trigger1 = time = 0
value = 12,0
abspan = 0

[state 4100, playsnd]
type = playsnd
trigger1 = time = 10
value = 12,2
pan = floor(const(size.xscale)*50)

[state 4100, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind4100"
id = 14100
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 4100, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(4200) = 0
name = "bind"
id = 4200
stateno = 4200
postype = p1
pos = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 4100, varset]
type = varset
trigger1 = time = 0
var(8) = 0

[state 4100, varadd]
type = varadd
trigger1 = time > 90
trigger1 = var(8) < 256
var(8) = 2

[state 4100, allpalfx]
type = allpalfx
trigger1 = 1
time = 1
add = var(8),var(8),var(8)

[state 4100, changestate]
type = changestate
trigger1 = animelemtime(8) = 0
value = 4110
;---------------------------------------------------------------------------
;■合体攻撃まどか２
[statedef 4110]
type = a
movetype = a
physics = n
velset = 0,0

[state 4110, targetstate]
type = targetstate
trigger1 = numtarget
trigger1 = target,stateno != 4500
value = 4500
ignorehitpause = 1

[state 4110, sprpriority]
type = sprpriority
trigger1 = 1
value = 0

[state 4110, width]
type = width
trigger1 = 1
edge = floor(const(size.xscale)*50),floor(const(size.xscale)*50)

[state 4110, posset]
type = posset
trigger1 = time = 0
x = -facing*floor(const(size.xscale)*25)

[state 4110, posset]
type = posset
trigger1 = 1
y = -60

[state 4110, targetbind]
type = targetbind
trigger1 = animtime < 0
time = 1
id = 4000
pos = floor(const(size.xscale)*50),0
ignorehitpause = 1

[state 4110, helper]
type = helper
trigger1 = time = 0
name = "blessing"
id = 7400
stateno = 7400
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 4110, helper]
type = helper
trigger1 = time = 0
name = "yggdrasill"
id = 8000
stateno = 8000
postype = p1
pos = 0,0
facing = -1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 4110, varadd]
type = varadd
trigger1 = var(8) > 0
var(8) = -2

[state 4110, allpalfx]
type = allpalfx
trigger1 = var(8) > 0
time = 1
add = var(8),var(8),var(8)

[state 4110, varset]
type = varset
trigger1 = var(8) < 0
var(8) = 0

[state 4110, explod]
type = explod
trigger1 = time = 0
id = 29500
anim = 29500
postype = left
pos = 0,0
ownpal = 1
ontop = 1
removetime = -2
bindtime = 1
supermovetime = 999
pausemovetime = 999
scale = 0.5,0.5

[state 4110, helper]
type = helper
trigger1 = animelemtime(10) = 0
name = "world end"
id = 7500
stateno = 7500
postype = p1
pos = floor(const(size.xscale)*17),-floor(const(size.yscale)*124)
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 4110, nothitby]
type = nothitby
trigger1 = 1
time = 20
value = sca,aa
ignorehitpause = 1

[state 4110, varadd]
type = varadd
trigger1 = animtime = 0
var(1) = 260

[state 4110, varset]
type = varset
trigger1 = animtime = 0
var(40) = 2

[state 4110, velset]
type = velset
trigger1 = animtime = 0
x = -2

[state 4110, changestate]
type = changestate
trigger1 = animtime = 0
value = 50
ctrl = 1
;===========================================================================
;■合体バインド本体
[statedef 4200]
type = a
movetype = i
physics = n
sprpriority = 2

[state 4200, changeanim]
type = changeanim
trigger1 = animexist(root,anim+100)
value = root,anim+100
elem = root,animelemno(0)
ignorehitpause = 1

[state 4200, bindtoroot]
type = bindtoroot
trigger1 = 1
facing = 1
pos = 0,0
ignorehitpause = 1

[state 4200, destroyself]
type = destroyself
trigger1 = !animexist(root,anim+100)
trigger2 = root,movetype = h
trigger3 = root,ctrl = 1
ignorehitpause = 1
;===========================================================================
;■合体攻撃ほむら
[statedef 4500]
type = s
movetype = h
physics = s
sprpriority = 1
velset = 0,0

[state 4500, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 4500, nothitby]
type = nothitby
trigger1 = !(name = "akemi-homura")
time = 60
value = sca,aa
ignorehitpause = 1

[state 4500, changestate]
type = changestate
trigger1 = !(name = "akemi-homura")
value = 50
ctrl = 1

[state 4500, nothitby]
type = nothitby
trigger1 = 1
time = 20
value = ,aa,at
ignorehitpause = 1

[state 4500, changeanim]
type = changeanim
trigger1 = numpartner
value = 4500
elem = partner,animelemno(0)
ignorehitpause = 1

[state 4500, playsnd]
type = playsnd
trigger1 = time = 0
trigger1 = animelemtime(1) = 0;アーマー
value = 90,9
channel = 0

[state 4500, defencemulset]
type = defencemulset
trigger1 = 1
value = 0.0001

[state 4500, lifeset]
type = lifeset
trigger1 = life < 10
value = 10

[state 4500, velset]
type = velset
trigger1 = partner,ctrl
trigger1 = !gethitvar(isbound)
trigger2 = partner,movetype = h
x = -2

[state 4500, selfstate]
type = selfstate
;trigger1 = !gethitvar(isbound)
trigger1 = partner,ctrl
trigger2 = partner,movetype = h
value = 50
ctrl = 1









