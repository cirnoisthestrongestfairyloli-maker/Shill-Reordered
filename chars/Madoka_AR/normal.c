;===========================================================================
;†††NORMAL ACTIONS†††
;===========================================================================
;■挑発
[statedef 195]
type = s
movetype = i
physics = s
velset = 0,0
ctrl = 0
anim = 195

[state 195, poweradd]
type = poweradd
trigger1 = 1
value = ceil(4*fvar(3))

[state 195, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = 0
x = -floor(const(size.xscale)*5)

[state 195, posadd]
type = posadd
trigger1 = animelemtime(10) = 0
trigger2 = animelemtime(11) = 0
x = floor(const(size.xscale)*5)

[state 195, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■へちょ化
[statedef 197]
type = s
movetype = i
physics = s
velset = 0,0
ctrl = 0
anim = 197

[state 197, playsnd]
type = playsnd
trigger1 = time = 0
trigger1 = prevstateno != stateno
value = 2,11

[state 197, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 100,108

[state 197, playsnd]
type = playsnd
trigger1 = time = 5
value = 10,var(5)
channel = 0

[state 197, explod]
type = explod
trigger1 = time = 0
id = 25800
anim = 25800
postype = p1
pos = 0,0
sprpriority = 5
ownpal = 1
bindtime = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = const(size.xscale),const(size.yscale)

[state 197, bgpalfx]
type = bgpalfx
trigger1 = time = 0
time = 6
add = var(21),var(22),var(23)

[state 197, changestate]
type = changestate
trigger1 = roundstate != 2
trigger1 = time > 120
value = 0
ctrl = 1
;===========================================================================
;■立ち小パンチ
[statedef 200]
type = s
movetype= a
physics = s
ctrl = 0
anim = 200
poweradd = ceil(5*fvar(3))

[state 200, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,1

[state 200, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1

[state 200, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind200"
id = 10200
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 200, explod]
type = explod
trigger1 = animelemtime(1) = 0
id = 20200
anim = 20200
postype = p1
pos = 0,0
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
scale = const(size.xscale),const(size.yscale)

[state 200, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,0

[state 200, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 200
;---------
attr = s,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = light
ground.type = high
;---------
damage = floor(10*fvar(1)),0
getpower = floor(20*fvar(2)),floor(10*fvar(2))
givepower = floor(10*fvar(3)),floor(5*fvar(3))
;---------
ground.hittime = 16
ground.slidetime = 16
air.hittime = 16
guard.hittime = 16
guard.ctrltime = 16
pausetime = 8,8
fall.recovertime = 30
;---------
ground.velocity = -4
air.velocity = -2,-3
;---------
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*78)
hitsound = s1,0
guardsound = s2,0

[state 200, targetstate]
type = targetstate
trigger1 = numtarget(200) = 1
trigger1 = target(200),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 200, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■立ち中パンチ
[statedef 210]
type = s
movetype= a
physics = s
poweradd= ceil(10*fvar(3))
ctrl = 0
anim = 210

[state 210, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 2,3

[state 210, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1

[state 210, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind210"
id = 10210
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 210, explod]
type = explod
trigger1 = animelemtime(1) = 0
id = 20210
anim = 20210
postype = p1
pos = 0,0
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
scale = const(size.xscale),const(size.yscale)

[state 210, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*5)

[state 210, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = -floor(const(size.xscale)*5)

[state 210, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,1

[state 210, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 210
;---------
attr = s,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = medium
ground.type = high
;---------
damage = floor(20*fvar(1)),0
getpower = floor(40*fvar(2)),floor(20*fvar(2))
givepower = floor(20*fvar(3)),floor(10*fvar(3))
;---------
ground.hittime = 24
ground.slidetime = 24
air.hittime = 24
guard.hittime = 20
guard.ctrltime = 20
pausetime = 10,10
fall.recovertime = 30
;---------
ground.velocity = -5
air.velocity = -2.5,-3
;---------
sparkno = s25001
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*67)
hitsound = s1,1
guardsound = s2,0

[state 210, targetstate]
type = targetstate
trigger1 = numtarget(210) = 1
trigger1 = target(210),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 210, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■立ち大パンチ
[statedef 220]
type = s
movetype= a
physics = s
ctrl = 0
anim = 220
poweradd = ceil(20*fvar(3))

[state 220, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 4,6

[state 220, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
trigger1 = random < 800
value = 9,var(5)
channel = 0
lowpriority = 1

[state 220, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind220"
id = 10220
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 220, explod]
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

[state 220, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*3)

[state 220, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = floor(const(size.xscale)*7)

[state 220, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(8) = 0
x = -floor(const(size.xscale)*5)

[state 220, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,2

[state 220, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 220
;---------
attr = s,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = back
ground.type = high
;---------
damage = floor(35*fvar(1)),0
getpower = floor(80*fvar(2)),floor(40*fvar(2))
givepower = floor(30*fvar(3)),floor(15*fvar(3))
;---------
ground.hittime = 40
ground.slidetime = 40
air.hittime = 40
guard.hittime = 25
guard.ctrltime = 25
pausetime = 12,12
fall.recovertime = 60
;---------
ground.velocity = -6
air.velocity = -3,-6
;---------
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*58)
hitsound = s1,2
guardsound = s2,0

[state 220, targetstate]
type = targetstate
trigger1 = numtarget(220) = 1
trigger1 = target(220),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 220, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■立ち小キック
[statedef 230]
type = s
movetype= a
physics = s
ctrl = 0
anim = 230
poweradd = ceil(5*fvar(3))

[state 230, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,1

[state 230, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1

[state 230, velset]
type = velset
trigger1 = animelemtime(2) = 0
x = 2

[state 230, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*10)

[state 230, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(4) = 0
x = -floor(const(size.xscale)*5)

[state 230, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 2
value = 0,0

[state 230, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 230
;---------
attr = s,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = light
ground.type = low
;---------
damage = floor(10*fvar(1)),0
getpower = floor(20*fvar(2)),floor(10*fvar(2))
givepower = floor(10*fvar(3)),floor(5*fvar(3))
;---------
ground.hittime = 16
ground.slidetime = 16
air.hittime = 16
guard.hittime = 16
guard.ctrltime = 16
pausetime = 8,8
fall.recovertime = 30
;---------
ground.velocity = -4
air.velocity = -2,-5
;---------
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*29)
hitsound = s1,3
guardsound = s2,0

[state 230, targetstate]
type = targetstate
trigger1 = numtarget(230) = 1
trigger1 = target(230),statetype=a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 230, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■立ち中キック
[statedef 240]
type = s
movetype= a
physics = s
ctrl = 0
anim = 240
poweradd = ceil(10*fvar(3))

[state 240, velset]
type = velset
trigger1 = animelemtime(3) = 0
x = 6

[state 240, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,1

[state 240, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 240
;---------
attr = s,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = medium
ground.type = high
;---------
damage = floor(18*fvar(1)),0
getpower = floor(40*fvar(2)),floor(20*fvar(2))
givepower = floor(20*fvar(3)),floor(10*fvar(3))
;---------
ground.hittime = 12
ground.slidetime = 12
air.hittime = 12
guard.hittime = 12
guard.ctrltime = 12
pausetime = 10,10
fall.recovertime = 30
;---------
ground.velocity = -5
air.velocity = -2.5,-4
;---------
sparkno = s25001
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*48)
hitsound = s1,10
guardsound = s2,0

[state 240, targetstate]
type = targetstate
trigger1 = numtarget(240) = 1
trigger1 = target(240),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 240, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■立ち大キック
[statedef 250]
type = s
movetype= a
physics = s
ctrl = 0
anim = 250
poweradd = ceil(20*fvar(3))

[state 250, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 9,10
channel = 0
;lowpriority = 1

[state 250, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind250"
id = 10250
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 250, explod]
type = explod
trigger1 = animelemtime(1) = 0
id = 20250
anim = 20250
postype = p1
pos = 0,0
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
scale = const(size.xscale),const(size.yscale)

[state 250, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*20),0

[state 250, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = floor(const(size.xscale)*15)

[state 250, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = floor(const(size.xscale)*5)

[state 250, velset]
type = velset
trigger1 = animelemtime(4) = 0
x = 8

[state 250, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,2

[state 250, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 250
;---------
attr = s,na
hitflag = maf
guardflag = ha
animtype = back
ground.type = low
;---------
damage = floor(30*fvar(1)),0
getpower = floor(80*fvar(2)),floor(40*fvar(2))
givepower = floor(30*fvar(3)),floor(15*fvar(3))
;---------
ground.hittime = 24
ground.slidetime = 24
air.hittime = 24
guard.hittime = 30
guard.ctrltime = 30
pausetime = 12,12
fall = 1
fall.recovertime = 40
;---------
ground.velocity = -3,-7.5
air.velocity = -1.5,5
;---------
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*45)
hitsound = s1,2
guardsound = s2,0

[state 250, targetstate]
type = targetstate
trigger1 = numtarget(250) = 1
trigger1 = target(250),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 250, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■しゃがみ小パンチ
[statedef 300]
type = c
movetype= a
physics = c
ctrl = 0
anim = 300
poweradd = ceil(5*fvar(3))

[state 300, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,1

[state 300, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1

[state 300, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind300"
id = 10300
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 300, explod]
type = explod
trigger1 = animelemtime(1) = 0
id = 20300
anim = 20300
postype = p1
pos = 0,0
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
scale = const(size.xscale),const(size.yscale)

[state 300, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,0

[state 300, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 300
;---------
attr = c,na
hitflag = maf
guardflag = la
affectteam = e
animtype = light
ground.type = low
;---------
damage = floor(9*fvar(1)),0
getpower = floor(20*fvar(2)),floor(10*fvar(2))
givepower = floor(10*fvar(3)),floor(5*fvar(3))
;---------
ground.hittime = 16
ground.slidetime = 16
air.hittime = 16
guard.hittime = 16
guard.ctrltime = 16
pausetime = 8,8
fall.recovertime = 30
;---------
ground.velocity = -3
air.velocity = -1.5,-3
;---------
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*46)
hitsound = s1,0
guardsound = s2,0

[state 300, targetstate]
type = targetstate
trigger1 = numtarget(300) = 1
trigger1 = target(300),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 300, changestate]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1
;===========================================================================
;■しゃがみ中パンチ
[statedef 310]
type = c
movetype= a
physics = c
poweradd= ceil(10*fvar(3))
ctrl = 0
anim = 310

[state 310, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 2,3

[state 310, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1

[state 310, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind310"
id = 10310
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 310, explod]
type = explod
trigger1 = animelemtime(1) = 0
id = 20310
anim = 20310
postype = p1
pos = 0,0
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
scale = const(size.xscale),const(size.yscale)

[state 310, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,1

[state 310, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 310
;---------
attr = c,na
hitflag = maf
guardflag = la
affectteam = e
animtype = medium
ground.type = low
;---------
damage = floor(20*fvar(1)),0
getpower = floor(40*fvar(2)),floor(20*fvar(2))
givepower = floor(20*fvar(3)),floor(10*fvar(3))
;---------
ground.hittime = 26
ground.slidetime = 26
air.hittime = 26
guard.hittime = 28
guard.ctrltime = 28
pausetime = 10,10
fall.recovertime = 30
;---------
ground.velocity = -4
air.velocity = -2,-3
;---------
sparkno = s25001
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*35)
hitsound = s1,1
guardsound = s2,0

[state 310, targetstate]
type = targetstate
trigger1 = numtarget(310) = 1
trigger1 = target(310),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 310, changestate]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1
;===========================================================================
;■しゃがみ大パンチ
[statedef 320]
type = c
movetype= a
physics = c
poweradd= ceil(20*fvar(3))
ctrl = 0
anim = 320

[state 320, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 4,6

[state 320, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
trigger1 = random < 800
value = 9,var(5)
channel = 0
lowpriority = 1

[state 320, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind320"
id = 10320
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 320, explod]
type = explod
trigger1 = animelemtime(1) = 0
id = 20320
anim = 20320
postype = p1
pos = 0,0
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
scale = const(size.xscale),const(size.yscale)

[state 320, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,2

[state 320, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 320
;---------
attr = c,na
hitflag = maf
guardflag = la
affectteam = e
animtype = back
ground.type = low
;---------
damage = floor(33*fvar(1)),0
getpower = floor(80*fvar(2)),floor(40*fvar(2))
givepower = floor(30*fvar(3)),floor(15*fvar(3))
;---------
ground.hittime = 30
ground.slidetime = 30
air.hittime = 30
guard.hittime = 30
guard.ctrltime = 30
pausetime = 12,12
fall = 1
fall.recovertime = 60
;---------
ground.velocity = -3,-2.5
air.velocity = -3,-2.5
;---------
sparkno = s25002
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*40)
hitsound = s1,2
guardsound = s2,0

[state 320, targetstate]
type = targetstate
trigger1 = numtarget(320) = 1
trigger1 = target(320),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 320, changestate]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1
;===========================================================================
;■ジャンプ小パンチ
[statedef 400]
type = a
movetype= a
physics = a
poweradd= ceil(5*fvar(3))
ctrl = 0
anim = 400

[state 400, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,1

[state 400, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1

[state 400, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind400"
id = 10400
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 400, explod]
type = explod
trigger1 = animelemtime(1) = 0
id = 20400
anim = 20400
postype = p1
pos = 0,0
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
scale = const(size.xscale),const(size.yscale)

[state 400, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 0,0

[state 400, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 400
;---------
attr = a,na
hitflag = maf
guardflag = ha
affectteam = e
animtype = light
ground.type = high
;---------
damage = floor(10*fvar(1)),0
getpower = floor(20*fvar(2)),floor(10*fvar(2))
givepower = floor(10*fvar(3)),floor(5*fvar(3))
;---------
ground.hittime = 16
ground.slidetime = 16
air.hittime = 16
guard.hittime = 11
guard.ctrltime = 11
pausetime = 8,8
fall.recovertime = 30
;---------
ground.velocity = -4,-(var(13)=2)*5
air.velocity = -2,-3.5
;---------
sparkno = s25000
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*44)
hitsound = s1,0
guardsound = s2,0

[state 400, targetstate]
type = targetstate
trigger1 = numtarget(400) = 1
trigger1 = target(400),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 400, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(var(9)=1,63,50)
ctrl = 1
;===========================================================================
;■ジャンプ中パンチ
[statedef 410]
type = a
movetype= a
physics = a
poweradd= ceil(10*fvar(3))
ctrl = 0
anim = 410

[state 410, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 2,3

[state 410, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1

[state 410, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind410"
id = 10410
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 410, explod]
type = explod
trigger1 = animelemtime(1) = 0
id = 20410
anim = 20410
postype = p1
pos = 0,0
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
scale = const(size.xscale),const(size.yscale)

[state 410, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,1

[state 410, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 410
;---------
attr = a,na
hitflag = maf
guardflag = ha
affectteam = e
animtype = medium
ground.type = high
;---------
damage = floor(20*fvar(1)),0
getpower = floor(40*fvar(2)),floor(20*fvar(2))
givepower = floor(20*fvar(3)),floor(10*fvar(3))
;---------
ground.hittime = 20
ground.slidetime = 20
air.hittime = 20
guard.hittime = 15
guard.ctrltime = 15
pausetime = 10,10
fall.recovertime = 30
;---------
ground.velocity = -4,-(var(13)=2)*5
air.velocity = -2,-3.5
;---------
sparkno = s25001
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*75)
hitsound = s1,1
guardsound = s2,0

[state 410, targetstate]
type = targetstate
trigger1 = numtarget(410) = 1
trigger1 = target(410),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 410, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(var(9)=1,63,50)
ctrl = 1
;===========================================================================
;■ジャンプ大パンチ
[statedef 420]
type = a
movetype= a
physics = a
poweradd= ceil(20*fvar(3))
ctrl = 0
anim = 420

[state 420, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 10,100
channel = 0
lowpriority = 1

[state 420, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind420"
id = 10420
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 420, explod]
type = explod
trigger1 = animelemtime(1) = 0
id = 20420
anim = 20420
postype = p1
pos = 0,0
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
scale = const(size.xscale),const(size.yscale)

[state 420, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,2

[state 420, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 420
;---------
attr = a,na
hitflag = maf
guardflag = ha
affectteam = e
animtype = back
ground.type = low
;---------
damage = floor(40*fvar(1)),0
getpower = floor(80*fvar(2)),floor(40*fvar(2))
givepower = floor(30*fvar(3)),floor(15*fvar(3))
;---------
ground.hittime = 20
ground.slidetime = 20
air.hittime = 20
guard.hittime = 20
guard.ctrltime = 20
pausetime = 12,12
fall.recovertime = 40
;---------
ground.velocity = -3,-(var(13)=2)*5
air.velocity = -3,-6
;---------
sparkno = s25002
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*67)
hitsound = s1,2
guardsound = s2,0

[state 420, targetstate]
type = targetstate
trigger1 = numtarget(420) = 1
trigger1 = target(420),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 420, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(var(9)=1,63,50)
ctrl = 1
;===========================================================================
;■スカイナピーチ
[statedef 450]
type = a
movetype= a
physics = a
poweradd= ceil(10*fvar(3))
ctrl = 0
anim = 450

[state 450, velset]
type = velset
trigger1 = anim = 450
trigger1 = animelemtime(1) = 0
x = 4
y = -3

[state 450, playsnd]
type = playsnd
trigger1 = anim = 450
trigger1 = animelemtime(2) = 0
;trigger1 = random < 500
value = 9,20
channel = 0
;lowpriority = 1

[state 450, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 450
;---------
attr = a,na
hitflag = maf
guardflag = ha
affectteam = e
animtype = medium
ground.type = high
;---------
damage = floor(25*fvar(1)),0
getpower = floor(40*fvar(2)),floor(20*fvar(2))
givepower = floor(20*fvar(3)),floor(10*fvar(3))
;---------
ground.hittime = 20
ground.slidetime = 20
air.hittime = 20
guard.hittime = 15
guard.ctrltime = 15
pausetime = 10,10
air.fall = 1
fall.recovertime = 30
;---------
ground.velocity = -3.5,-(var(13)=2)*5
air.velocity = -3.5,-6
;---------
sparkno = s25001
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*20),-floor(const(size.yscale)*48)
hitsound = s1,10
guardsound = s2,0

[state 450, targetstate]
type = targetstate
trigger1 = numtarget(450) = 1
trigger1 = target(450),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 450, changeanim]
type = changeanim
trigger1 = movecontact = 1
value = 451

[state 450, velset]
type = velset
trigger1 = anim = 451
trigger1 = animelemtime(1) = 0
x = -3
y = -4

[state 450, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(var(9)=1,63,50)
ctrl = 1
;===========================================================================
;†††GRAB ACTIONS†††
;===========================================================================
;■ポコパン
[statedef 500]
type = s
movetype= a
physics = s
velset = 0,0
ctrl = 0
anim = 500
poweradd = floor(50*fvar(2))

[state 500, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "holdfwd"
trigger2 = var(50) != 0
trigger2 = random <= 499
var(6) = 1

[state 500, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "holdback"
trigger2 = var(50) != 0
trigger2 = random > 500
var(6) = 2

[state 500, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 0,0

[state 500, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
trigger1 = p2stateno != 40
trigger1 = p2stateno != [140,155]
trigger1 = p2stateno != [5000,5011]
id = 500
;---------
affectteam = e
attr = s,nt
hitflag = m-
priority = 1,miss
guard.dist = 0
;---------
getpower = floor(100*fvar(2)),0
p1facing = ifelse(var(6)=1,1,-1)
p2facing = 1
hitsound = s1,6

[state 500, targetstate]
type = targetstate
trigger1 = numtarget(500) = 1
trigger1 = movehit = 1
value = 505
ignorehitpause = 1

[state 500, changestate]
type = changestate
trigger1 = numtarget > 0
trigger1 = movehit
value = 501
ignorehitpause = 1

[state 500, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[statedef 501]
type = s
movetype= a
physics = s
anim = 501
poweradd = ceil(100*fvar(3))

[state 501, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "bind501"
id = 10200
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 501, explod]
type = explod
trigger1 = animelemtime(1) = 1;0
id = 20500
anim = 20500
postype = p1
pos = 0,0
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
scale = const(size.xscale),const(size.yscale)

[state 501, width]
type = width
trigger1 = 1
edge = floor(const(size.xscale)*30),0

[state 501, targetbind]
type = targetbind
trigger1 = animelemtime(3) <= 0
id = 500
pos = floor(const(size.xscale)*35),0

[state 501, velset]
type = velset
trigger1 = animelemtime(3) = 0
x = 5

[state 501, velset]
type = velset
trigger1 = animelemtime(7) = 0
x = 8

[state 501, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 9,11
channel = 0
;lowpriority = 1

[state 501, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(5) = 0
value = 0,2

[state 501, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 501
;---------
attr = s,na
hitflag = maf
guardflag = m
affectteam = e
animtype = medium
ground.type = low
;---------
damage = floor(30*fvar(1)),0
getpower = floor(80*fvar(2)),floor(40*fvar(2))
givepower = floor(30*fvar(3)),floor(15*fvar(3))
;---------
ground.hittime = 100
ground.slidetime = 100
air.hittime = 100
guard.hittime = 20
guard.ctrltime = 20
pausetime = 10,10
air.fall = 1
fall.recovertime = 60
;---------
ground.velocity = -6
air.velocity = -6,-4
;---------
sparkno = s25001
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*33),-floor(const(size.yscale)*63)
hitsound = s1,1
guardsound = s2,0

[state 501, hitdef]
type = hitdef
trigger1 = animelemtime(8) = 0
id = 501
;---------
attr = s,na
hitflag = maf
guardflag = m
affectteam = e
animtype = back
ground.type = high
;---------
damage = floor(30*fvar(1)),0
getpower = floor(80*fvar(2)),floor(40*fvar(2))
givepower = floor(30*fvar(3)),floor(15*fvar(3))
;---------
ground.hittime = 100
ground.slidetime = 100
air.hittime = 100
guard.hittime = 20
guard.ctrltime = 20
pausetime = 10,10
fall = 1
fall.recover = 0
;---------
ground.velocity = -3,-4
air.velocity = -3,-4
;---------
sparkno = s25001
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*22),-floor(const(size.yscale)*63)
hitsound = s1,2
guardsound = s2,0
;---------
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5

[state 501, targetstate]
type = targetstate
trigger1 = numtarget(501) = 1
trigger1 = movehit = 1
value = 5005+55*(animelemtime(8)>=0)
ignorehitpause = 1

[state 501, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[statedef 505]
type = s
movetype= h
physics = n
velset = 0,0

[state 505, destroyself]
type = destroyself
trigger1 = ishelper

[state 505, nothitby]
type = nothitby
trigger1 = time < 10
value = sca,aa
ignorehitpause = 1

[state 505, changeanim2]
type = changeanim2
trigger1 = time = 0
value = 505

[state 505, selfstate]
type = selfstate
trigger1 = time >= 100
value = 0
ctrl = 1
;===========================================================================
;■マジカルEMG
[statedef 550]
type = a
movetype= a
physics = a
ctrl = 0
anim = 550
poweradd = floor(50*fvar(2))

[state 550, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command="holdfwd"
var(6) = 1

[state 550, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 0,0

[state 550, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 550
;---------
affectteam = e
attr = a,nt
hitflag = a-
priority = 1,miss
guard.dist = 0
;---------
getpower = floor(200*fvar(2)),0
p1facing = 1;ifelse(var(6)=1,1,-1)
p2facing = 1
p1stateno = 551
p2stateno = 555
hitsound = s1,6

[state 550, changestate]
type = changestate
trigger1 = animtime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
[statedef 551]
type = a
movetype= a
physics = n
anim = 551

[state 551, gravity]
type = gravity
trigger1 = 1

[state 551, width]
type = width
trigger1 = 1
edge = floor(const(size.xscale)*30),0

[state 551, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 9,12+(random<500)
channel = 0
;lowpriority = 1

[state 551, targetbind]
type = targetbind
trigger1 = animelemtime(2) < 0
id = 550
pos = floor(const(size.xscale)*16),-floor(const(size.yscale)*55)

[state 551, targetbind]
type = targetbind
trigger1 = animelemtime(2) >= 0
id = 550
pos = floor(const(size.xscale)*16),-floor(const(size.yscale)*33)

[state 551, velset]
type = velset
trigger1 = animelemtime(2) = 0
x = 3
y = -3

[state 551, changestate]
type = changestate
trigger1 = pos y >= 0
value = 552
;---------------------------------------------------------------------------
[statedef 552]
type = s
movetype= a
physics = s
anim = 552

[state 552, posset]
type = posset
trigger1 = 1
y = 0

[state 552, targetbind]
type = targetbind
trigger1 = 1
id = 550
pos = floor(const(size.xscale)*10),-floor(const(size.yscale)*2)

[state 552, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 1,10

[state 552, hitadd]
type = hitadd
trigger1 = animelemtime(1) = 0
value = 1

[state 552, targetlifeadd]
type = targetlifeadd
trigger1 = animelemtime(1) = 0
id = 550
value = -floor(150*fvar(1)*fvar(2))

[state 552, helper]
type = helper
trigger1 = time = [1,3]
name = "spark a"
id = 20550
stateno = 20550
postype = p1
pos = floor(const(size.xscale)*random*0.05),-floor(const(size.yscale)*random*0.05)
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 552, helper]
type = helper
trigger1 = time = [1,3]
name = "spark b"
id = 20550
stateno = 20550
postype = p1
pos = -floor(const(size.xscale)*random*0.05),-floor(const(size.yscale)*random*0.05)
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 552, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[statedef 555]
type = a
movetype= h
physics = n
velset = 0,0

[state 555, destroyself]
type = destroyself
trigger1 = ishelper

[state 555, changeanim2]
type = changeanim2
trigger1 = time = 0
value = 555

[state 555, changestate]
type = changestate
trigger1 = pos y >= 0
value = 556
;---------------------------------------------------------------------------
[statedef 556]
type = l
movetype= h
physics = n
velset = 0,0

[state 556, destroyself]
type = destroyself
trigger1 = ishelper

[state 556, posset]
type = posset
trigger1 = 1
y = 0

[state 556, playerpush]
type = playerpush
trigger1 = 1
value = 0

[state 556, changeanim2]
type = changeanim2
trigger1 = time = 0
value = 556

[state 556, selfstate]
type = selfstate
trigger1 = animtime = 0
value = 5120+(alive=0)*30
