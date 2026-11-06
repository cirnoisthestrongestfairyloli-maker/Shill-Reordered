;===========================================================================
;†††SPECIALS†††
;===========================================================================
;■マジカルアロー
[statedef 1000]
type = s
movetype = a
physics = s
ctrl = 0
poweradd = floor(50*fvar(2))

[state 1000, varset]
type = varset
triggerall = var(50) = 0
triggerall = time = 0
trigger1 = command = "arrow1"
trigger2 = var(6) = 1
var(7) = 1

[state 1000, varset]
type = varset
triggerall = var(50) = 0
triggerall = time = 0
trigger1 = command = "arrow2"
trigger2 = var(6) = 2
var(7) = 2

[state 1000, varset]
type = varset
triggerall = var(50) = 0
triggerall = time = 0
trigger1 = command = "arrow3"
trigger2 = var(6) = 3
var(7) = 3

[state 1000, AR hope use]
type = varset
trigger1 = time = 0
var(27) = var(25)

[state 1000, AR hope spent]
type = varset
trigger1 = time = 0
var(25) = 0

[state 1000, AR hope full volley]
type = varset
trigger1 = time = 0
trigger1 = var(27) = 1
var(7) = 3

[state 1000, changeanim]
type = changeanim
trigger1 = time = 0
value = 1000+var(7)

[state 1000, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 30,33

[state 1000, playsnd]
type = playsnd
trigger1 = animelemtime(8) = 0
value = 9,var(5)
channel = 0
;lowpriority = 1

[state 1000, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = -floor(const(size.xscale)*8)

[state 1000, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = -floor(const(size.xscale)*5)

[state 1000, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind1000"
id = 11000
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1000, helper]
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

[state 1000, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 2
value = 6,0

[state 1000, explod]
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
scale = const(size.xscale),const(size.yscale)

[state 1000, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(6) = 0
id = 24000
postype = p1
pos = floor(const(size.xscale)*30),-floor(const(size.yscale)*114)

[state 1000, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(7) = 0
id = 24000
postype = p1
pos = floor(const(size.xscale)*21),-floor(const(size.yscale)*108)

[state 1000, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(8) = 0
id = 24000
postype = p1
pos = floor(const(size.xscale)*19),-floor(const(size.yscale)*106)

[state 1000, removeexplod]
type = removeexplod
trigger1 = animelemtime(9) = 0
id = 24000

[state 1000, explod]
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
scale = const(size.xscale),const(size.yscale)

[state 1000, helper]
type = helper
trigger1 = animelemtime(9) = 0
trigger2 = animelemtime(9) = 4
trigger3 = animelemtime(10) = 1
trigger4 = var(7) >= 2
trigger4 = animelemtime(10) = 5
trigger5 = var(7) = 3
trigger5 = animelemtime(10) = 9
name = "magical arrow"
id = 6000
stateno = 6000
postype = p1
pos = floor(const(size.xscale)*38),-floor(const(size.yscale)*80)
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1000, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■ブラストスコール
[statedef 1100]
type = s
movetype = a
physics = s
ctrl = 0
anim = 1100
poweradd = floor(50*fvar(2))

[state 1100, varset]
type = varset
triggerall = var(50) = 0
triggerall = time = 0
trigger1 = command = "squall1"
trigger2 = var(6) = 1
var(7) = 3

[state 1100, varset]
type = varset
triggerall = var(50) = 0
triggerall = time = 0
trigger1 = command = "squall2"
trigger2 = var(6) = 2
var(7) = 5

[state 1100, varset]
type = varset
triggerall = var(50) = 0
triggerall = time = 0
trigger1 = command = "squall3"
trigger2 = var(6) = 3
var(7) = 7

[state 1100, AR hope use]
type = varset
trigger1 = time = 0
var(27) = var(25)

[state 1100, AR hope spent]
type = varset
trigger1 = time = 0
var(25) = 0

[state 1100, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 43,44

[state 1100, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 9,var(5)
channel = 0
;lowpriority = 1

[state 1100, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = -floor(const(size.xscale)*8)

[state 1100, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = -floor(const(size.xscale)*2)

[state 1100, posadd]
type = posadd
trigger1 = animelemtime(7) = 0
x = -floor(const(size.xscale)*3)

[state 1100, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind1100"
id = 11100
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1100, helper]
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

[state 1100, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 2
value = 6,0

[state 1100, explod]
type = explod
trigger1 = animelemtime(5) = 2
id = 24000
anim = 24000
postype = p1
pos = floor(const(size.xscale)*17),-floor(const(size.yscale)*109)
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -1
removeongethit = 1
scale = const(size.xscale),const(size.yscale)

[state 1100, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(6) = 0
id = 24000
postype = p1
pos = -floor(const(size.xscale)*11),-floor(const(size.yscale)*112)

[state 1100, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(7) = 0
id = 24000
postype = p1
pos = -floor(const(size.xscale)*28),-floor(const(size.yscale)*111)

[state 1100, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(8) = 0
id = 24000
postype = p1
pos = -floor(const(size.xscale)*27),-floor(const(size.yscale)*103)

[state 1100, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(9) = 0
id = 24000
postype = p1
pos = -floor(const(size.xscale)*25),-floor(const(size.yscale)*100)

[state 1100, removeexplod]
type = removeexplod
trigger1 = animelemtime(10) = 0
id = 24000

[state 1100, explod]
type = explod
trigger1 = animelemtime(10) = 0
id = 24020
anim = 24020
postype = p1
pos = -floor(const(size.xscale)*23),-floor(const(size.yscale)*127)
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
scale = const(size.xscale),const(size.yscale)

[state 1100, helper]
type = helper
trigger1 = animelemtime(10) = 0
name = "rising arrow"
id = 6100
stateno = 6100
postype = p1
pos = floor(const(size.xscale)*19),-floor(const(size.yscale)*105)
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1100, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■ルナティックシャフト
[statedef 1200]
type = s
movetype = a
physics = s
ctrl = 0
anim = 1200
poweradd = floor(100*fvar(2))

[state 1200, AR hope use]
type = varset
trigger1 = time = 0
var(27) = var(25)

[state 1200, AR hope spent]
type = varset
trigger1 = time = 0
var(25) = 0

[state 1200, nothitby]
type = nothitby
trigger1 = animelemtime(5) < 0
time = 1
value = sca,aa
ignorehitpause = 1

[state 1200, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind1200"
id = 11200
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1200, explod]
type = explod
trigger1 = animelemtime(1) = 0
id = 21200
anim = 21200
postype = p1
pos = 0,0
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
scale = const(size.xscale),const(size.yscale)

[state 1200, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 6,3

[state 1200, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 1200
;---------
attr = s,sa
hitflag = maf
guardflag = m
affectteam = e
animtype = back
ground.type = high
;---------
damage = floor(80*fvar(1)),floor(10*fvar(1))
getpower = floor(100*fvar(2)),floor(50*fvar(2))
givepower = floor(50*fvar(3)),floor(25*fvar(3))
;---------
ground.hittime = 60
ground.slidetime = 60
air.hittime = 60
guard.hittime = 40
guard.ctrltime = 40
pausetime = 10,10
fall = 1
fall.recover = 0
;---------
ground.velocity = 0.015*(p2dist x),-8
air.velocity = 0.015*(p2dist x),-8
yaccel = 0.2
;---------
sparkno = s25002
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*20),-floor(const(size.yscale)*60)
hitsound = s1,2
guardsound = s2,1
;---------
envshake.time = 32
envshake.freq = 60
envshake.ampl = 5
;---------
p2facing = 1

[state 1200, targetstate]
type = targetstate
trigger1 = numtarget(1200) = 1
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 1200, varset]
type = varset
trigger1 = time = 0
var(6) = 0

[state 1200, varset]
type = varset
trigger1 = movehit
var(6) = 1

[state 1200, changestate]
type = changestate
trigger1 = var(6) = 1
trigger1 = animelemtime(5) >= 0
value = 1250

[state 1200, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■ルナティックシャフト・射撃
[statedef 1250]
type = s
movetype = a
physics = s
ctrl = 0
anim = 1250
poweradd = floor(50*fvar(2))

[state 1250, nothitby]
type = nothitby
trigger1 = animelemtime(8) < 0
time = 1
value = sca,aa
ignorehitpause = 1

[state 1250, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 45,46

[state 1250, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 9,var(5)
channel = 0
;lowpriority = 1

[state 1250, helper]
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

[state 1250, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 4
value = 6,0

[state 1250, explod]
type = explod
trigger1 = animelemtime(1) = 4
id = 24000
anim = 24000
postype = p1
pos = -floor(const(size.xscale)*12),-floor(const(size.yscale)*58)
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -1
removeongethit = 1
scale = const(size.xscale),const(size.yscale)

[state 1250, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(2) = 0
id = 24000
postype = p1
pos = -floor(const(size.xscale)*17),-floor(const(size.yscale)*99)

[state 1250, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(3) = 0
id = 24000
postype = p1
pos = -floor(const(size.xscale)*36),-floor(const(size.yscale)*105)

[state 1250, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(4) = 0
id = 24000
postype = p1
pos = -floor(const(size.xscale)*44),-floor(const(size.yscale)*113)

[state 1250, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(5) = 0
id = 24000
postype = p1
pos = -floor(const(size.xscale)*39),-floor(const(size.yscale)*93)

[state 1250, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(6) = 0
id = 24000
postype = p1
pos = -floor(const(size.xscale)*37),-floor(const(size.yscale)*93)

[state 1250, removeexplod]
type = removeexplod
trigger1 = animelemtime(7) = 0
id = 24000

[state 1250, explod]
type = explod
trigger1 = animelemtime(7) = 0
id = 24030
anim = 24030
postype = p1
pos = -floor(const(size.xscale)*46),-floor(const(size.yscale)*118)
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
scale = const(size.xscale),const(size.yscale)

[state 1250, helper]
type = helper
trigger1 = animelemtime(7) = 0
trigger2 = animelemtime(7) = 4
trigger3 = animelemtime(7) = 8
trigger4 = var(27) = 1
trigger4 = animelemtime(7) = 2
trigger5 = var(27) = 1
trigger5 = animelemtime(7) = 6
name = "lunatic arrow"
id = 6200
stateno = 6200
postype = p1
pos = floor(const(size.xscale)*0),-floor(const(size.yscale)*111)
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1250, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■マジカルアローインザスカイ
[statedef 1300]
type = a
movetype = a
physics = n
ctrl = 0
anim = 1300
poweradd = floor(50*fvar(2))

[state 1300, varset]
type = varset
triggerall = var(50) = 0
triggerall = time = 0
trigger1 = command = "arrow1"
var(7) = 1

[state 1300, varset]
type = varset
triggerall = var(50) = 0
triggerall = time = 0
trigger1 = command = "arrow2"
var(7) = 2

[state 1300, varset]
type = varset
triggerall = var(50) = 0
triggerall = time = 0
trigger1 = command = "arrow3"
var(7) = 3

[state 1300, AR hope use]
type = varset
trigger1 = time = 0
var(27) = var(25)

[state 1300, AR hope spent]
type = varset
trigger1 = time = 0
var(25) = 0

[state 1300, AR hope full volley]
type = varset
trigger1 = time = 0
trigger1 = var(27) = 1
var(7) = 3

[state 1300, posfreeze]
type = posfreeze
trigger1 = 1

[state 1300, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 30,33

[state 1300, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 9,var(5)
channel = 0
;lowpriority = 1

[state 1300, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind1300"
id = 11100
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1300, helper]
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

[state 1300, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 3
value = 6,0

[state 1300, explod]
type = explod
trigger1 = animelemtime(1) = 3
id = 24000
anim = 24000
postype = p1
pos = -floor(const(size.xscale)*31),-floor(const(size.yscale)*94)
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -1
removeongethit = 1
scale = const(size.xscale),const(size.yscale)

[state 1300, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(2) = 0
id = 24000
postype = p1
pos = -floor(const(size.xscale)*43),-floor(const(size.yscale)*94)

[state 1300, modifyexplod]
type = modifyexplod
trigger1 = animelemtime(3) = 0
id = 24000
postype = p1
pos = floor(const(size.xscale)*33),-floor(const(size.yscale)*94)

[state 1300, removeexplod]
type = removeexplod
trigger1 = animelemtime(5) = 0
id = 24000

[state 1300, explod]
type = explod
trigger1 = animelemtime(5) = 0
id = 24040
anim = 24040
postype = p1
pos = floor(const(size.xscale)*33),-floor(const(size.yscale)*94)
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
scale = const(size.xscale),const(size.yscale)

[state 1300, changestate]
type = changestate
trigger1 = pos y >= 0
value = 52

[state 1300, changestate]
type = changestate
trigger1 = animtime = 0
value = 1301
;===========================================================================
[statedef 1301]
type = a
movetype = a
physics = a
anim = 1301

[state 1301, posfreeze]
type = null;posfreeze
trigger1 = time <= 5*var(7)

[state 1301, velset]
type = null;velset
trigger1 = vel y > 0
y = 0

[state 1301, helper]
type = helper
trigger1 = animelemtime(1) = 0
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

[state 1301, helper]
type = helper
trigger1 = time = 0
trigger2 = time = 4
trigger3 = time = 8
trigger4 = var(7) >= 2
trigger4 = time = 12
trigger5 = var(7) = 3
trigger5 = time = 16
name = "magical arrow"
id = 6300
stateno = 6300
postype = p1
pos = floor(const(size.xscale)*30),-floor(const(size.yscale)*60)
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1301, changestate]
type = changestate
trigger1 = time = 20+5*var(7)
value = 50
ctrl = 1
;===========================================================================
;■ガードキャンセル
[statedef 2000]
type = u
movetype = a
physics = u
ctrl = 0
poweradd = -1000

[state 2000, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 2000, bgpalfx]
type = bgpalfx
triggerall = numhelper(15000) = 0
trigger1 = (time = 0)||(time = 10)
time = 4
add = 256,256,256

[state 2000, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,103

[state 2000, pause]
type = pause
trigger1 = time = 0
time = 20
movetime = 20

[state 2000, changestate]
type = changestate
trigger1 = time = 20
value = 2001
;---------------------------------------------------------------------------
[statedef 2001]
type = s
movetype = a
physics = s
ctrl = 0
anim = 220

[state 2001, nothitby]
type = nothitby
trigger1 = animelemtime(6) < 10
value = sca,aa
ignorehitpause = 1

[state 2001, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind2000"
id = 12000
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 2001, explod]
type = explod
trigger1 = animelemtime(1) = 0
id = 20220
anim = 20220
postype = p1
pos = 0,0
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
scale = const(size.xscale),const(size.yscale)

[state 2001, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*3)

[state 2001, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = floor(const(size.xscale)*7)

[state 2001, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(8) = 0
x = -floor(const(size.xscale)*5)

[state 2001, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,2

[state 2001, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 2001
;---------
attr = s,sa
hitflag = maf
guardflag = ma
affectteam = e
animtype = back
ground.type = high
;---------
damage = floor(30*fvar(1)),floor(10*fvar(1))
getpower = 0,0
givepower = floor(50*fvar(3)),floor(25*fvar(3))
;---------
ground.hittime = 20
ground.slidetime = 20
air.hittime = 20
guard.hittime = 10
guard.ctrltime = 10
pausetime = 10,10
fall = 1
fall.recover = 0
;---------
ground.velocity = -7,-4
air.velocity = -7,-4
;---------
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*58)
hitsound = s1,2
guardsound = s2,0
;---------
kill = 0
guard.kill = 0
fall.kill = 0

[state 2001, targetstate]
type = targetstate
trigger1 = numtarget(2001) = 1
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 2001, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 21,23

[state 2001, playsnd]
type = playsnd
trigger1 = animelemtime(7) = 0
trigger1 = movehit
value = 9,var(5)
channel = 0
lowpriority = 1

[state 2001, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■マギアキャンセル
[statedef 900]
movetype = a
ctrl = 0
poweradd = -1000

[state 900, varadd]
type = varadd
trigger1 = time = 0
var(10) = -1

[state 900, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = s
statetype = s
physics = s

[state 900, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = c
statetype = c
physics = c

[state 900, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = a
statetype = a
physics = a

[state 900, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
time = 1

[state 900, helper]
type = helper
trigger1 = time = 0
name = "spark"
id = 32000
stateno = 32000
postype = p1
pos = 0,-floor(const(size.yscale)*60)
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 900, bgpalfx]
type = bgpalfx
trigger1 = time = 0
time = 60
add = var(21),var(22),var(23)

[state 900, playsnd]
type = playsnd
trigger1 = time = 0
value = 3,0

[state 900, changestate]
type = changestate
trigger1 = time = 1
value = ifelse(pos y!=0,50,0)
ctrl = 1
;===========================================================================
;■マギアキャンセルダッシュ
[statedef 901]
movetype = a
ctrl = 0
anim = 100+(statetype=a)*10
poweradd = -1000

[state 901, varadd]
type = varadd
trigger1 = time = 0
var(10) = -1

[state 901, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = s
statetype = s
physics = s

[state 901, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = c
statetype = c
physics = c

[state 901, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = a
statetype = a
physics = a

[state 901, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
time = 1

[state 901, helper]
type = helper
trigger1 = time = 0
name = "spark"
id = 32000
stateno = 32000
postype = p1
pos = 0,-floor(const(size.yscale)*60)
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 901, bgpalfx]
type = bgpalfx
trigger1 = time = 0
time = 60
add = var(21),var(22),var(23)

[state 901, playsnd]
type = playsnd
trigger1 = time = 0
value = 3,0

[state 901, changestate]
type = changestate
trigger1 = time = 1
value = ifelse(pos y!=0,110,100+(var(50)!=0))
