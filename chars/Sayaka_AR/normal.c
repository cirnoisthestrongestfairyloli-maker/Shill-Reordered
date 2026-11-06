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
value = floor(4*fvar(2))

[state 195, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,3

[state 195, ctrlset]
type = ctrlset
trigger1 = time = 80
value = 1

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
range = 20,31

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
poweradd = floor(10*fvar(2))

[state 200, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,3

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
damage = floor(5*fvar(1)),0
getpower = floor(20*fvar(2)),floor(10*fvar(2))
givepower = floor(10*fvar(3)),floor(5*fvar(3))
;---------
ground.hittime = 20
ground.slidetime = 20
air.hittime = 20
guard.hittime = 20
guard.ctrltime = 20
pausetime = 8,8
fall.recovertime = 30
;---------
ground.velocity = -8
air.velocity = -3,-3
;---------
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*47)
hitsound = s1,7
guardsound = s2,1

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
movetype = a
physics = s
ctrl = 0
anim = 210
poweradd = floor(20*fvar(2))

[state 210, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,3

[state 210, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1

[state 210, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,4

[state 210, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 210
;---------
attr = s,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = medium
ground.type = high
;---------
damage = floor(13*fvar(1)),0
getpower = floor(40*fvar(2)),floor(20*fvar(2))
givepower = floor(20*fvar(3)),floor(10*fvar(3))
;---------
ground.hittime = 26
ground.slidetime = 26
air.hittime = 26
guard.hittime = 26
guard.ctrltime = 26
pausetime = 10,10
fall.recovertime = 30
;---------
ground.velocity = -10
air.velocity = -5,-4
;---------
sparkno = s25001
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*44)
hitsound = s1,8
guardsound = s2,1

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
movetype = a
physics = s
ctrl = 0
anim = 220
poweradd = floor(30*fvar(2))

[state 220, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,3

[state 220, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1

[state 220, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,5

[state 220, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*30),0

[state 220, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*35)

[state 220, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*25)

[state 220, posadd]
type = posadd
trigger1 = animelemtime(7) = 0
x = -floor(const(size.xscale)*20)

[state 220, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = -floor(const(size.xscale)*20)

[state 220, posadd]
type = posadd
trigger1 = animtime = 0
x = -floor(const(size.xscale)*20)

[state 220, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 220
;---------
attr = s,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = back
ground.type = high
;---------
damage = floor(27*fvar(1)),0
getpower = floor(80*fvar(2)),floor(40*fvar(2))
givepower = floor(30*fvar(3)),floor(15*fvar(3))
;---------
ground.hittime = 35
ground.slidetime = 35
air.hittime = 35
guard.hittime = 15
guard.ctrltime = 15
pausetime = 12,12
air.fall = 1
fall.recovertime = 40
;---------
ground.velocity = -15
air.velocity = -25,-4
;---------
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*43)
hitsound = s1,9
guardsound = s2,1

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
movetype = a
physics = s
ctrl = 0
anim = 230
poweradd = floor(10*fvar(2))

[state 230, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,3

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
damage = floor(7*fvar(1)),0
getpower = floor(20*fvar(2)),floor(10*fvar(2))
givepower = floor(10*fvar(3)),floor(5*fvar(3))
;---------
ground.hittime = 20
ground.slidetime = 20
air.hittime = 20
guard.hittime = 20
guard.ctrltime = 20
pausetime = 8,8
fall.recovertime = 30
;---------
ground.velocity = -8
air.velocity = -4,-3
;---------
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*51)
hitsound = s1,7
guardsound = s2,1

[state 230, targetstate]
type = targetstate
trigger1 = numtarget(230) = 1
trigger1 = target(230),statetype = a
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
type = c
movetype= a
physics = c
ctrl = 0
anim = 240
poweradd = floor(20*fvar(2))

[state 240, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,4

[state 240, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*30),0

[state 240, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*20)

[state 240, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*5)

[state 240, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = floor(const(size.xscale)*45)

[state 240, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = floor(const(size.xscale)*15)

[state 240, posadd]
type = posadd
trigger1 = animtime = 0
x = floor(const(size.xscale)*35)

[state 240, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 240
;---------
attr = s,na
hitflag = maf
guardflag = la
affectteam = e
animtype = medium
ground.type = low
;---------
damage = floor(14*fvar(1)),0
getpower = floor(40*fvar(2)),floor(20*fvar(2))
givepower = floor(20*fvar(3)),floor(10*fvar(3))
;---------
ground.hittime = 25
ground.slidetime = 25
air.hittime = 25
guard.hittime = 25
guard.ctrltime = 25
pausetime = 10,10
fall.recovertime = 30
;---------
ground.velocity = -10
air.velocity = -5,-4
;---------
sparkno = s25001
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*47)
hitsound = s1,8
guardsound = s2,1

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
movetype = a
physics = s
ctrl = 0
anim = 250
poweradd = floor(30*fvar(2))

[state 250, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*30),0

[state 250, changestate]
type = changestate
trigger1 = animtime = 0
value = 251
;---------------------------------------------------------------------------
[statedef 251]
type = a
movetype= a
physics = n
ctrl = 0
anim = 251

[state 251, velset]
type = velset
trigger1 = time = 0
x = 3
y = -9

[state 251, veladd]
type = veladd
trigger1 = pos y < 0
y = const(movement.yaccel)+0.7

[state 251, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 0,6

[state 251, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 252
;---------------------------------------------------------------------------
[statedef 252]
type = s
movetype= a
physics = s
ctrl = 0
anim = 252

[state 252, velset]
type = velset
trigger1 = 1
y = 0

[state 252, posset]
type = posset
trigger1 = 1
y = 0

[state 252, hitdef]
type = hitdef
trigger1 = animelemtime(1) = 0
id = 252
;---------
attr = s,na
hitflag = mafd
guardflag = ha
affectteam = e
animtype = back
ground.type = trip
;---------
damage = floor(36*fvar(1)),0
getpower = floor(80*fvar(2)),floor(40*fvar(2))
givepower = floor(30*fvar(3)),floor(15*fvar(3))
;---------
ground.hittime = 30
ground.slidetime = 30
air.hittime = 30
guard.hittime = 25
guard.ctrltime = 25
pausetime = 12,12
fall.recovertime = 30
;---------
ground.velocity = -6,-2
air.velocity = -6,-2
down.velocity = 0,0
;---------
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*10)
hitsound = s1,10
guardsound = s2,1

[state 252, targetstate]
type = targetstate
trigger1 = numtarget(252) = 1
trigger1 = target(252),statetype != l
trigger1 = movehit = 1
value = 5075
ignorehitpause = 1

[state 252, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■しゃがみ小パンチ
[statedef 300]
type = c
movetype = a
physics = c
ctrl = 0
anim = 300
poweradd = floor(10*fvar(2))

[state 300, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,3

[state 300, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 300
;---------
attr = c,na
hitflag = maf
guardflag = ma
affectteam = e
animtype = light
ground.type = low
;---------
damage = floor(5*fvar(1)),0
getpower = floor(20*fvar(2)),floor(10*fvar(2))
givepower = floor(10*fvar(3)),floor(5*fvar(3))
;---------
ground.hittime = 17
ground.slidetime = 17
air.hittime = 17
guard.hittime = 17
guard.ctrltime = 17
pausetime = 8,8
fall.recovertime = 30
;---------
ground.velocity = -8
air.velocity = -4,-3
;---------
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*39)
hitsound = s1,7
guardsound = s2,1

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
movetype = a
physics = c
ctrl = 0
anim = 310
poweradd = floor(20*fvar(2))

[state 310, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,3

[state 310, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1

[state 310, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,4

[state 310, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 310
;---------
attr = c,na
hitflag = maf
guardflag = la
affectteam = e
animtype = medium
ground.type = high
;---------
damage = floor(13*fvar(1)),0
getpower = floor(40*fvar(2)),floor(20*fvar(2))
givepower = floor(20*fvar(3)),floor(10*fvar(3))
;---------
ground.hittime = 24
ground.slidetime = 24
air.hittime = 24
guard.hittime = 24
guard.ctrltime = 24
pausetime = 10,10
fall.recovertime = 30
;---------
ground.velocity = -10
air.velocity = -5,-4
;---------
sparkno = s25001
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*39)
hitsound = s1,8
guardsound = s2,1

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
movetype = a
physics = c
ctrl = 0
anim = 320
poweradd = floor(30*fvar(2))

[state 320, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,3

[state 320, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1

[state 320, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*20),0

[state 320, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*5)

[state 320, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*10)

[state 320, posadd]
type = posadd
trigger1 = animelemtime(7) = 0
x = floor(const(size.xscale)*15)

[state 320, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,5

[state 320, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
id = 320
;---------
attr = c,na
hitflag = maf
guardflag = la
affectteam = e
animtype = hard
air.animtype = up
ground.type = high
;---------
damage = floor(25*fvar(1)),0
getpower = floor(80*fvar(2)),floor(40*fvar(2))
givepower = floor(30*fvar(3)),floor(15*fvar(3))
;---------
ground.hittime = 30
ground.slidetime = 30
air.hittime = 30
guard.hittime = 12
guard.ctrltime = 12
pausetime = 12,12
fall.recovertime = 40
;---------
ground.velocity = -3
air.velocity = -1.5,-5
;---------
sparkno = s25002
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*40)
hitsound = s1,9
guardsound = s2,1

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
;■しゃがみ小キック
[statedef 330]
type = c
movetype = a
physics = c
ctrl = 0
anim = 330
poweradd = floor(10*fvar(2))

[state 330, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,3

[state 330, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 330
;---------
attr = c,na
hitflag = maf
guardflag = la
affectteam = e
animtype = light
ground.type = low
;---------
damage = floor(7*fvar(1)),0
getpower = floor(20*fvar(2)),floor(10*fvar(2))
givepower = floor(10*fvar(3)),floor(5*fvar(3))
;---------
ground.hittime = 23
ground.slidetime = 23
air.hittime = 23
guard.hittime = 21
guard.ctrltime = 21
pausetime = 8,8
fall.recovertime = 30
;---------
ground.velocity = -8
air.velocity = -4,-3
;---------
sparkno = s25000
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*39)
hitsound = s1,7
guardsound = s2,1

[state 330, targetstate]
type = targetstate
trigger1 = numtarget(330) = 1
trigger1 = target(330),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 330, changestate]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1
;===========================================================================
;■しゃがみ中キック
[statedef 340]
type = c
movetype = a
physics = c
ctrl = 0
anim = 340
poweradd = floor(20*fvar(2))

[state 340, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*30),0

[state 340, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = floor(const(size.xscale)*30)

[state 340, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*30)

[state 340, changestate]
type = changestate
trigger1 = animtime = 0
value = 341
;---------------------------------------------------------------------------
[statedef 341]
type = a
movetype= a
physics = n
ctrl = 0
anim = 341

[state 341, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*30),0

[state 341, velset]
type = velset
trigger1 = time = 0
x = 4.5
y = -1

[state 341, veladd]
type = veladd
trigger1 = pos y < 0
y = const(movement.yaccel)

[state 341, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 342
;---------------------------------------------------------------------------
[statedef 342]
type = c
movetype= a
physics = c
ctrl = 0
anim = 342

[state 342, velset]
type = velset
trigger1 = 1
y = 0

[state 342, posset]
type = posset
trigger1 = 1
y = 0

[state 342, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 0,4

[state 342, hitdef]
type = hitdef
trigger1 = animelemtime(1) = 0
id = 342
;---------
attr = c,na
hitflag = maf
guardflag = la
affectteam = e
animtype = medium
ground.type = high
;---------
damage = floor(14*fvar(1)),0
getpower = floor(40*fvar(2)),floor(20*fvar(2))
givepower = floor(20*fvar(3)),floor(10*fvar(3))
;---------
ground.hittime = 30
ground.slidetime = 30
air.hittime = 30
guard.hittime = 30
guard.ctrltime = 30
pausetime = 10,10
fall.recovertime = 30
;---------
ground.velocity = -10
air.velocity = -5,-4
;---------
sparkno = s25001
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*39)
hitsound = s1,8
guardsound = s2,1

[state 342, targetstate]
type = targetstate
trigger1 = numtarget(342) = 1
trigger1 = target(342),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 342, changestate]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1
;===========================================================================
;■しゃがみ大キック
[statedef 350]
type = c
movetype = a
physics = c
ctrl = 0
anim = 350
poweradd = floor(30*fvar(2))

[state 350, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*20),0

[state 350, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,6

[state 350, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 350
;---------
attr = c,na
hitflag = mafd
guardflag = la
affectteam = e
animtype = back
ground.type = low
;---------
damage = floor(31*fvar(1)),0
getpower = floor(80*fvar(2)),floor(40*fvar(2))
givepower = floor(30*fvar(3)),floor(15*fvar(3))
;---------
ground.hittime = 20
ground.slidetime = 20
air.hittime = 20
guard.hittime = 10
guard.ctrltime = 10
pausetime = 12,12
fall = 1
fall.recover = 0
;---------
ground.velocity = -2,-4
air.velocity = -2,-4
down.velocity = 0,0
;---------
sparkno = s25002
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*7)
hitsound = s1,10
guardsound = s2,1

[state 350, targetstate]
type = targetstate
trigger1 = numtarget(350) = 1
trigger1 = target(350),statetype != l
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 350, changestate]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1
;===========================================================================
;■ジャンプ小パンチ
[statedef 400]
type = a
movetype = a
physics = a
ctrl = 0
anim = 400
poweradd = floor(10*fvar(2))

[state 400, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,3

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
damage = floor(7*fvar(1)),0
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
ground.velocity = -2,-(var(13)=2)*5
air.velocity = -1,-3.5
;---------
sparkno = s25000
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*60)
hitsound = s1,7
guardsound = s2,1

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
value = ifelse(sysvar(4)=1,63,50)
ctrl = 1
;===========================================================================
;■ジャンプ中パンチ
[statedef 410]
type = a
movetype = a
physics = a
ctrl = 0
anim = 410
poweradd = floor(20*fvar(2))

[state 410, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,3

[state 410, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
trigger1 = random < 500
value = 9,var(5)
channel = 0
lowpriority = 1

[state 410, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,4

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
damage = floor(12*fvar(1)),0
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
air.velocity = -2,-5.5
;---------
sparkno = s25001
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*60)
hitsound = s1,7
guardsound = s2,1

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
value = ifelse(sysvar(4)=1,63,50)
ctrl = 1
;===========================================================================
;■ジャンプ大パンチ
[statedef 420]
type = a
movetype = a
physics = a
ctrl = 0
anim = 420
poweradd = floor(30*fvar(2))

[state 420, width]
type = width
trigger1 = 1
edge = (2**9!=512),(2**9!=512)

[state 420, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 2,3

[state 420, playsnd]
type = playsnd
trigger1 = animelemtime(6) < 0
trigger1 = movecontact = 1
value = 9,var(5)
channel = 0
persistent = 0
ignorehitpause = 1

[state 420, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(5) = 0
value = 0,6

[state 420, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(6) = 0
id = 420
;---------
attr = a,na
hitflag = mafd
guardflag = ha
affectteam = e
animtype = back
ground.type = low
;---------
damage = floor(30*fvar(1))+(animelemtime(6)>=0)*10,0
fall.damage = floor(16*fvar(1))
getpower = floor(80*fvar(2)),floor(40*fvar(2))
givepower = floor(30*fvar(3)),floor(15*fvar(3))
;---------
ground.hittime = 25
ground.slidetime = 25
air.hittime = 25
guard.hittime = 10
guard.ctrltime = 10
pausetime = 12,12
air.fall = 1
fall.recover = 0
;---------
ground.velocity = -4,-3
air.velocity = -2.2,15+(animelemtime(6)>=0)*25
down.velocity = 0,0
;---------
sparkno = s25002
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*50)
hitsound = s1,10
guardsound = s2,1
;---------
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
fall.envshake.time = 16
fall.envshake.freq = 70
fall.envshake.ampl = 5

[state 420, targetstate]
type = targetstate
trigger1 = numtarget(420) = 1
trigger1 = target(420),statetype != l
trigger1 = movehit = 1
value = 5005
ignorehitpause = 1

[state 420, changeanim]
type = changeanim
trigger1 = animelemtime(3) > 0 && animelemtime(4) <= 0
trigger1 = movecontact
value = 420
elem = 4
ignorehitpause = 1
persistent = 0

[state 420, changeanim]
type = changeanim
trigger1 = animelemtime(4) > 0 && animelemtime(5) <= 0
trigger1 = movecontact
value = 420
elem = 5
ignorehitpause = 1
persistent = 0

[state 420, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(sysvar(4)=1,63,50)
ctrl = 1
;===========================================================================
;■ジャンプ小キック
[statedef 430]
type = a
movetype = a
physics = a
ctrl = 0
anim = 430
poweradd = floor(10*fvar(2))

[state 430, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,3

[state 430, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 430
;---------
attr = a,na
hitflag = maf
guardflag = ha
affectteam = e
animtype = light
ground.type = high
;---------
damage = floor(9*fvar(1)),0
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
ground.velocity = -3,-(var(13)=2)*5
air.velocity = -1.5,-3.5
;---------
sparkno = s25000
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*53)
hitsound = s1,7
guardsound = s2,1

[state 430, targetstate]
type = targetstate
trigger1 = numtarget(430) = 1
trigger1 = target(430),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 430, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(sysvar(4)=1,63,50)
ctrl = 1
;===========================================================================
;■ジャンプ中キック
[statedef 440]
type = a
movetype = a
physics = a
ctrl = 0
anim = 440
poweradd = floor(20*fvar(2))

[state 440, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,4

[state 440, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 440
;---------
attr = a,na
hitflag = maf
guardflag = ha
affectteam = e
animtype = medium
ground.type = high
;---------
damage = floor(13*fvar(1)),0
getpower = floor(40*fvar(2)),floor(20*fvar(2))
givepower = floor(20*fvar(3)),floor(10*fvar(3))
;---------
ground.hittime = 24
ground.slidetime = 24
air.hittime = 24
guard.hittime = 19
guard.ctrltime = 19
pausetime = 10,10
fall.recovertime = 30
;---------
ground.velocity = -4,-(var(13)=2)*5
air.velocity = -2,-5.5
;---------
sparkno = s25001
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*53)
hitsound = s1,7
guardsound = s2,1

[state 440, targetstate]
type = targetstate
trigger1 = numtarget(440) = 1
trigger1 = target(440),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 440, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(sysvar(4)=1,63,50)
ctrl = 1
;===========================================================================
;■流星剣
[statedef 460]
type = a
movetype = a
physics = a
velset = 0,0
ctrl = 0
anim = 460
poweradd = floor(20*fvar(2))

[state 460, posfreeze]
type = posfreeze
trigger1 = 1

[state 460, changestate]
type = changestate
trigger1 = pos y >= 0
value = 52

[state 460, changestate]
type = changestate
trigger1 = animtime = 0
value = 463
;---------------------------------------------------------------------------
[statedef 463]
type = a
movetype= a
physics = n
anim = 463

[state 463, gravity]
type = gravity
trigger1 = 1

[state 463, velset]
type = velset
trigger1 = time = 0
x = 0
y = 15

[state 463, helper]
type = helper
trigger1 = time = 0
trigger1 = numhelper(10000) = 0
name = "matagi bind"
id = 10463
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 463, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,14

[state 463, hitdef]
type = hitdef
trigger1 = time = 0
trigger1 = var(29) < 5
id = 463
;---------
attr = a,na
hitflag = mafdp
guardflag = ma
affectteam = e
animtype = hard
ground.type = high
;---------
damage = floor(20*fvar(1)),0
getpower = floor(40*fvar(2)),floor(20*fvar(2))
givepower = floor(20*fvar(3)),floor(10*fvar(3))
;---------
ground.hittime = 27
ground.slidetime = 27
air.hittime = 27
guard.hittime = 10
guard.ctrltime = 0
pausetime = 10,10
air.fall = 1
fall.recovertime = 30
;---------
ground.velocity = -5
air.velocity = -1,-3
down.velocity = 0,0
;---------
sparkno = s20000+(var(40)=1)*10
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*30)
hitsound = s1,9
guardsound = s2,1

[state 463, targetdrop]
type = targetdrop
trigger1 = numtarget
trigger1 = target,alive = 0
ignorehitpause = 1

[state 463, targetstate]
type = targetstate
trigger1 = numtarget(463) = 1
trigger1 = target(463),statetype = a
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 463, changestate]
type = changestate
trigger1 = movecontact
value = 465

[state 463, changestate]
type = changestate
trigger1 = pos y >= 0
value = 467
;---------------------------------------------------------------------------
[statedef 465]
type = a
movetype= i
physics = a
anim = 465

[state 465, velset]
type = velset
trigger1 = time = 0
x = -7
y = -7

[state 465, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(sysvar(4)=1,63,50)
ctrl = 1
;---------------------------------------------------------------------------
[statedef 467]
type = c
movetype= i
physics = c
anim = 467

[state 467, velset]
type = velset
trigger1 = 1
y = 0

[state 467, posset]
type = posset
trigger1 = 1
y = 0

[state 467, changestate]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1
;===========================================================================
;†††GRAB ACTIONS†††
;===========================================================================
;■ブルーアール
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
var(7) = 1

[state 500, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "holdback"
var(7) = 2

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
getpower = floor(100*fvar(1)),0
p1facing = ifelse(var(7)=1,1,-1)
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
movetype = a
physics = s
anim = 501

[state 501, playsnd]
type = playsnd
trigger1 = time = 0
value = 9,4+(random<500)
channel = 0
lowpriority = 1

[state 501, posadd]
type = posadd
trigger1 = time = 0 
trigger1 = var(7) = 2
x = floor(const(size.xscale)*60)

[state 501, width]
type = width
trigger1 = animelemtime(1) = 0 
edge = floor(const(size.xscale)*90),0

[state 501, targetbind]
type = targetbind
trigger1 = time <= 10
id = 500
pos = floor(const(size.xscale)*60),0

[state 501, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,6

[state 501, hitdef]
type = hitdef
trigger1 = animelemtime(4) = 0
id = 501
;---------
attr = s,na
hitflag = maf
guardflag = m
affectteam = e
animtype = back
ground.type = low
;---------
damage = floor(20*fvar(1)),0
fall.damage = floor(10*fvar(1))
getpower = floor(40*fvar(2)),floor(20*fvar(2))
givepower = floor(20*fvar(3)),floor(10*fvar(3))
;---------
ground.hittime = 35
ground.slidetime = 35
air.hittime = 35
guard.hittime = 20
guard.ctrltime = 20
pausetime = 10,10
air.fall = 1
fall.recover = 0
;---------
ground.velocity = -5
air.velocity = -2.5,-4
;---------
sparkno = s25002
guard.sparkno = s25030
sparkxy = -floor(const(size.xscale)*10),-floor(const(size.yscale)*24)
hitsound = s1,8
guardsound = s2,1
;---------
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
fall.envshake.time = 16
fall.envshake.freq = 70
fall.envshake.ampl = 5
;---------
kill = 0
guard.kill = 0
fall.kill = 0

[state 501, targetstate]
type = targetstate
trigger1 = numtarget(501) = 1
trigger1 = movehit = 1
value = 5005
ignorehitpause = 1

[state 501, changestate]
type = changestate
trigger1 = animtime = 0
value = 502
;---------------------------------------------------------------------------
[statedef 502]
type = s
movetype= a
physics = s
anim = 502

[state 502, velset]
type = velset
trigger1 = animelemtime(2) = 0
x = 33

[state 502, hitdef]
type = hitdef
trigger1 = animelemtime(2) = 0
id = 502
;---------
attr = s,na
hitflag = maf
guardflag = m
affectteam = e
animtype = up
ground.type = low
;---------
damage = floor(25*fvar(1)),0
getpower = floor(80*fvar(2)),floor(40*fvar(2))
givepower = floor(30*fvar(3)),floor(15*fvar(3))
;---------
ground.hittime = 35
ground.slidetime = 35
air.hittime = 35
guard.hittime = 20
guard.ctrltime = 20
pausetime = 10,10
fall = 1
fall.recover = 0
;---------
ground.velocity = 2,-5
air.velocity = 2,-5
;---------
sparkno = s25002
guard.sparkno = s25030
sparkxy = 0,-floor(const(size.yscale)*35)
hitsound = s1,9
guardsound = s2,1
;---------
envshake.time = 16
envshake.freq = 70
envshake.ampl = 5
fall.envshake.time = 16
fall.envshake.freq = 70
fall.envshake.ampl = 5

[state 502, targetstate]
type = targetstate
trigger1 = numtarget(502) = 1
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 502, changestate]
type = changestate
trigger1 = time >= 12
value = 503
;---------------------------------------------------------------------------
[statedef 503]
type = s
movetype= i
physics = s
anim = 503

[state 503, changestate]
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

[state 505, changeanim]
type = changeanim
trigger1 = 1
value = 5000

[state 505, selfstate]
type = selfstate
trigger1 = time >= 100
value = 5110
;===========================================================================
;■必殺天空十字剣
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
var(7) = 1

[state 550, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
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
getpower = floor(200*fvar(1)),0
p1facing = ifelse(var(7)=1,1,-1)
p2facing = 1
p1stateno = 551
p2stateno = 555
hitsound = s1,6
;---------
fall = 1
fall.recover = 0
fall.envshake.time = 16
fall.envshake.freq = 70
fall.envshake.ampl = 5

[state 550, changestate]
type = changestate
trigger1 = animtime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
[statedef 551]
type = a
movetype= a
physics = a
anim = 551

[state 551, width]
type = width
trigger1 = animelemtime(1) = 0 
edge = floor(const(size.xscale)*90),0

[state 551, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(6) = 0
value = 0,5

[state 551, hitadd]
type = hitadd
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(6) = 0
value = 1

[state 551, envshake]
type = envshake
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(6) = 0
time = 16
freq = 70
ampl = 5
phase = 50

[state 551, explod]
type = explod
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(6) = 0
anim = 25001
id = 25000
pos = floor(const(size.xscale)*45),-floor(const(size.yscale)*(65-(animelemtime(6)=0)*10))
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
supermovetime = 999
pausemovetime = 999
ownpal = 1

[state 551, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 1,8

[state 551, playsnd]
type = playsnd
trigger1 = animelemtime(6) = 0
value = 1,9

[state 551, posfreeze]
type = posfreeze
trigger1 = animelemtime(7) < 0

[state 551, targetbind]
type = targetbind
trigger1 = animelemtime(7) < 0
id = 550
pos = floor(const(size.xscale)*30),-floor(const(size.yscale)*50)

[state 551, targetlifeadd]
type = targetlifeadd
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(6) = 0
id = 550
value = -floor(30*fvar(1)*fvar(2))

[state 551, velset]
type = velset
trigger1 = animelemtime(7) = 0
x = -12
y = -3
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

[state 555, veladd]
type = veladd
trigger1 = 1
y = 0.95

[state 555, velset]
type = velset
trigger1 = animelemtime(7) = 0
x = -10
y = -2

[state 555, selfstate]
type = selfstate
trigger1 = anim = 555
trigger1 = animtime = 0
value = 5050

[state 555, selfstate]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= -10
value = 5100
