;===========================================================================
;†††SPECIALS†††
;===========================================================================
;■煌きのオラトリオ１
[statedef 1000]
type = s
movetype = a
physics = s
ctrl = 0
anim = 1000
poweradd = floor(50*fvar(2))

[state 1000, varadd];煌きのオラトリオ、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 5
persistent = 0

[state 1000, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = -floor(const(size.xscale)*10)

[state 1000, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -floor(const(size.xscale)*30)

[state 1000, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = -floor(const(size.xscale)*20)

[state 1000, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = floor(const(size.xscale)*10)

[state 1000, posadd]
type = posadd
trigger1 = animelemtime(7) = 0
x = floor(const(size.xscale)*40)

[state 1000, changestate]
type = changestate
trigger1 = animtime = 0
value = 1010
;===========================================================================
[statedef 1010]
type = a
movetype = a
physics = n
anim = 1010

[state 1010, varset]
type = varset
trigger1 = 1
var(24) = 1

[state 1010, nothitby]
type = nothitby
trigger1 = 1
value2 = ,np,sp
ignorehitpause = 1

[state 1010, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 1010, posadd]
type = posadd
trigger1 = time = 0
y = -floor(const(size.yscale)*45)

[state 1010, velset]
type = velset
trigger1 = time = 0
x = 70

[state 1010, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 1010, hitdef]
type = hitdef
trigger1 = time = 0
id = 1010
;---------
attr = a,sp
hitflag = maf
guardflag = m
affectteam = e
animtype = up
ground.type = low
;---------
damage = floor(85*fvar(1)),floor(10*fvar(1))
getpower = floor(150*fvar(2)),floor(75*fvar(2))
givepower = floor(50*fvar(3)),floor(25*fvar(3))
;---------
ground.hittime = 40
ground.slidetime = 40
air.hittime = 40
guard.hittime = 20
guard.ctrltime = 20
pausetime = 1,1
fall = 1
fall.recover = 0
;---------
ground.velocity = -7,-5.5
air.velocity = -7,-5.5
ground.cornerpush.veloff = 0
yaccel = 0.35
;---------
sparkno = -1
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,0
guardsound = s2,1
;---------
envshake.time = 32
envshake.freq = 60
envshake.ampl = 5
;---------
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2

[state 1010, targetstate]
type = targetstate
trigger1 = numtarget(1010) = 1
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 1010, helper]
type = helper
trigger1 = movehit = 1
name = "kirakira"
id = 20000
stateno = 20000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1010, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(1010) = 2
trigger2 = uniqhitcount = 2
name = "kirakira"
id = 20001
stateno = 20001
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1010, helper]
type = helper
trigger1 = time = 0
name = "blue wave"
id = 11010
stateno = 11010
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1010, changestate]
type = changestate
trigger1 = time >= 10
value = 1090
;===========================================================================
;■煌きのオラトリオ２
[statedef 1030]
type = s
movetype = a
physics = s
ctrl = 0
anim = 1030
poweradd = floor(50*fvar(2))

[state 1030, varadd];煌きのオラトリオ、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 5
persistent = 0

[state 1030, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = -floor(const(size.xscale)*10)

[state 1030, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -floor(const(size.xscale)*30)

[state 1030, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = -floor(const(size.xscale)*20)

[state 1030, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = floor(const(size.xscale)*10)

[state 1030, posadd]
type = posadd
trigger1 = animelemtime(7) = 0
x = floor(const(size.xscale)*40)

[state 1030, changestate]
type = changestate
trigger1 = animtime = 0
value = 1040
;---------------------------------------------------------------------------
[statedef 1040]
type = a
movetype = a
physics = n
anim = 1040

[state 1040, varset]
type = varset
trigger1 = 1
var(24) = 1

[state 1040, nothitby]
type = nothitby
trigger1 = 1
value2 = ,np,sp
ignorehitpause = 1

[state 1040, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 1040, posadd]
type = posadd
trigger1 = time = 0
y = -floor(const(size.yscale)*45)

[state 1040, velset]
type = velset
trigger1 = time = 0
x = 25
y = -25

[state 1040, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 1040, hitdef]
type = hitdef
trigger1 = time = 0
id = 1040
;---------
attr = a,sp
hitflag = maf
guardflag = m
affectteam = e
animtype = up
ground.type = low
;---------
damage = floor(85*fvar(1)),floor(10*fvar(1))
getpower = floor(150*fvar(2)),floor(75*fvar(2))
givepower = floor(50*fvar(3)),floor(25*fvar(3))
;---------
ground.hittime = 40
ground.slidetime = 40
air.hittime = 40
guard.hittime = 20
guard.ctrltime = 20
pausetime = 1,1
fall = 1
fall.recover = 0
;---------
ground.velocity = -7,-8
air.velocity = -7,-8
ground.cornerpush.veloff = 0
yaccel = 0.35
;---------
sparkno = -1
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,0
guardsound = s2,1
;---------
envshake.time = 32
envshake.freq = 60
envshake.ampl = 5
;---------
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2

[state 1040, targetstate]
type = targetstate
trigger1 = numtarget(1040) = 1
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 1040, helper]
type = helper
trigger1 = movehit = 1
name = "kirakira"
id = 20000
stateno = 20000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1040, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(1040) = 2
trigger2 = uniqhitcount = 2
name = "kirakira"
id = 20001
stateno = 20001
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1040, helper]
type = helper
trigger1 = time = 0
name = "blue wave"
id = 11040
stateno = 11040
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1040, changestate]
type = changestate
trigger1 = time >= 6
value = 1091
;===========================================================================
;■煌きのオラトリオ３
[statedef 1060]
type = s
movetype = a
physics = s
ctrl = 0
anim = 1060
poweradd = floor(50*fvar(2))

[state 1060, varadd];煌きのオラトリオ、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 5
persistent = 0

[state 1060, turn]
type = turn
trigger1 = time = 0

[state 1060, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = -floor(const(size.xscale)*10)

[state 1060, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -floor(const(size.xscale)*30)

[state 1060, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = -floor(const(size.xscale)*20)

[state 1060, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = floor(const(size.xscale)*10)

[state 1060, posadd]
type = posadd
trigger1 = animelemtime(7) = 0
x = floor(const(size.xscale)*40)

[state 1060, changestate]
type = changestate
trigger1 = animtime = 0
value = 1070
;---------------------------------------------------------------------------
[statedef 1070]
type = a
movetype = a
physics = n
anim = 1010

[state 1070, varset]
type = varset
trigger1 = 1
var(24) = 1

[state 1070, nothitby]
type = nothitby
trigger1 = 1
value2 = ,np,sp
ignorehitpause = 1

[state 1070, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 1070, screenbound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[state 1070, posadd]
type = posadd
trigger1 = frontedgedist < 0
x = -floor(const(size.xscale)*360)

[state 1070, posadd]
type = posadd
trigger1 = time = 0
y = -floor(const(size.yscale)*45)

[state 1070, velset]
type = velset
trigger1 = time = 0
x = 25

[state 1070, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 1070, hitdef]
type = hitdef
trigger1 = time = 0
id = 1070
;---------
attr = a,sp
hitflag = maf
guardflag = m
affectteam = e
animtype = up
ground.type = low
;---------
damage = floor(85*fvar(1)),floor(10*fvar(1))
getpower = floor(150*fvar(2)),floor(75*fvar(2))
givepower = floor(50*fvar(3)),floor(25*fvar(3))
;---------
ground.hittime = 40
ground.slidetime = 40
air.hittime = 40
guard.hittime = 20
guard.ctrltime = 20
pausetime = 1,1
fall = 1
fall.recover = 0
;---------
ground.velocity = -10,-4.5
air.velocity = -10,-4.5
yaccel = 0.35
;---------
sparkno = -1
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,0
guardsound = s2,1
;---------
envshake.time = 32
envshake.freq = 60
envshake.ampl = 5
;---------
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2

[state 1070, targetstate]
type = targetstate
trigger1 = numtarget(1070) = 1
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 1070, helper]
type = helper
trigger1 = movehit = 1
name = "kirakira"
id = 20000
stateno = 20000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1070, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(1070) = 2
trigger2 = uniqhitcount = 2
name = "kirakira"
id = 20001
stateno = 20001
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1070, helper]
type = helper
trigger1 = time = 0
name = "blue wave"
id = 11010
stateno = 11010
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1070, changestate]
type = changestate
trigger1 = time >= 10
value = 1090
;---------------------------------------------------------------------------
[statedef 1090]
type = a
movetype= i
physics = n
anim = 1090

[state 1090, veladd]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 1090, changestate]
type = changestate
trigger1 = pos y >= 0
value = 1095+(prevstateno=1110)
;---------------------------------------------------------------------------
[statedef 1091]
type = a
movetype = i
physics = n
anim = 1090

[state 1091, veladd]
type = veladd
trigger1 = 1
y = const(movement.yaccel)+0.9

[state 1091, changestate]
type = changestate
trigger1 = pos y >= 0
value = 1095
;---------------------------------------------------------------------------
[statedef 1095]
type = c
movetype = i
physics = c
anim = 1095

[state 1095, velset]
type = velset
trigger1 = 1
y = 0

[state 1095, posset]
type = posset
trigger1 = 1
y = 0

[state 1095, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[statedef 1096]
type = c
movetype = i
physics = c
anim = 1096

[state 1096, velset]
type = velset
trigger1 = 1
y = 0

[state 1096, posset]
type = posset
trigger1 = 1
y = 0

[state 1096, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■煌きのオラトリオ・空中１
[statedef 1100]
type = a
movetype = a
physics = n
ctrl = 0
velset = 0,0
anim = 1100
poweradd = floor(50*fvar(2))

[state 1100, varadd];煌きのオラトリオ、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 5
persistent = 0

[state 1100, posfreeze]
type = posfreeze
trigger1 = 1

[state 1100, changestate]
type = changestate
trigger1 = pos y >= 0
value = 52

[state 1100, changestate]
type = changestate
trigger1 = animtime = 0
value = 1110
;---------------------------------------------------------------------------
[statedef 1110]
type = a
movetype = a
physics = n
anim = 1110

[state 1110, varset]
type = varset
trigger1 = 1
var(24) = 1

[state 1110, nothitby]
type = nothitby
trigger1 = 1
value2 = ,np,sp
ignorehitpause = 1

[state 1110, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 1110, posadd]
type = posadd
trigger1 = time = 0
y = -floor(const(size.yscale)*45)

[state 1110, velset]
type = velset
trigger1 = time = 0
x = 25
y = 25

[state 1110, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 1110, hitdef]
type = hitdef
trigger1 = time = 0
id = 1110
;---------
attr = a,sp
hitflag = maf
guardflag = m
affectteam = e
animtype = up
ground.type = low
;---------
damage = floor(85*fvar(1)),floor(10*fvar(1))
getpower = floor(150*fvar(2)),floor(75*fvar(2))
givepower = floor(50*fvar(3)),floor(25*fvar(3))
;---------
ground.hittime = 40
ground.slidetime = 40
air.hittime = 40
guard.hittime = 20
guard.ctrltime = 20
pausetime = 1,1
fall = 1
fall.recovertime = 30
;---------
ground.velocity = -10,-3.5
air.velocity = -10,-3.5
ground.cornerpush.veloff = 0
;---------
sparkno = -1
guard.sparkno = s25030
sparkxy = 0,0
hitsound = s5,0
guardsound = s2,1
;---------
envshake.time = 32
envshake.freq = 60
envshake.ampl = 5
;---------
palfx.time = 45
palfx.add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2

[state 1110, targetstate]
type = targetstate
trigger1 = numtarget(1110) = 1
trigger1 = movehit = 1
value = 5025
ignorehitpause = 1

[state 1110, helper]
type = helper
trigger1 = movehit = 1
name = "kirakira"
id = 20000
stateno = 20000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1110, helper]
type = helper
triggerall = movehit = 1
trigger1 = numtarget(1110) = 2
trigger2 = uniqhitcount = 2
name = "kirakira"
id = 20001
stateno = 20001
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1110, helper]
type = helper
trigger1 = time = 0
name = "blue wave"
id = 11110
stateno = 11110
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1110, changestate]
type = changestate
trigger1 = pos y >= -40
value = 1090
;===========================================================================
;■煌きのオラトリオ・空中２
[statedef 1130]
type = a
movetype = a
physics = n
ctrl = 0
velset = 0,0
anim = 1130
poweradd = floor(50*fvar(2))

[state 1130, varadd];煌きのオラトリオ、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 5
persistent = 0

[state 1130, posfreeze]
type = posfreeze
trigger1 = 1

[state 1130, changestate]
type = changestate
trigger1 = pos y >= 0
value = 52

[state 1130, changestate]
type = changestate
trigger1 = animtime = 0
value = 1010
;===========================================================================
;■煌きのオラトリオ・空中３
[statedef 1160]
type = a
movetype = a
physics = n
ctrl = 0
velset = 0,0
anim = 1160
poweradd = floor(50*fvar(2))

[state 1160, varadd];煌きのオラトリオ、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 5
persistent = 0

[state 1160, posfreeze]
type = posfreeze
trigger1 = 1

[state 1160, changestate]
type = changestate
trigger1 = pos y >= 0
value = 52

[state 1160, changestate]
type = changestate
trigger1 = animtime = 0
value = 1040
;===========================================================================
;■影踊るスケルツォ１
[statedef 1200]
type = s
movetype = a
physics = s
ctrl = 0
anim = 1200
poweradd = floor(50*fvar(2))

[state 1200, varadd];＊影踊るスケルツォ、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 1
persistent = 0

[state 1200, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 9,6
channel = 0

[state 1200, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = time = 0
var(7) = 0

[state 1200, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "scherzo2"
var(7) = 2

[state 1200, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "scherzo3"
var(7) = 3

[state 1200, helper]
type = helper
trigger1 = time = 0
name = "bind 1200"
id = 11200
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1200, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = 3,1

[state 1200, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,4

[state 1200, helper]
type = helper
trigger1 = animelemtime(3) = 0
name = "magical sword x"
id = 6000
stateno = 6000
postype = p1
pos = floor(const(size.xscale)*42),-floor(const(size.yscale)*35)
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1200, changestate]
type = changestate
trigger1 = var(7) = 2
trigger1 = animelemtime(5) >= 0
value = 1210

[state 1200, changestate]
type = changestate
trigger1 = var(7) = 3
trigger1 = animelemtime(5) >= 0
value = 1220

[state 1200, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■影踊るスケルツォ２
[statedef 1210]
type = s
movetype = a
physics = s
ctrl = 0
anim = 1210+(prevstateno=1200)
poweradd = floor(50*fvar(2))

[state 1210, varadd];＊影踊るスケルツォ、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 1
persistent = 0

[state 1210, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 9,7
channel = 0

[state 1210, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = time = 0
var(7) = 0

[state 1210, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "scherzo3"
var(7) = 3

[state 1210, helper]
type = helper
trigger1 = time = 0
name = "bind 1210"
id = 11210
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1210, playsnd]
type = playsnd
trigger1 = animelemtime(6) = 0
value = 3,1

[state 1210, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 0,4

[state 1210, helper]
type = helper
trigger1 = animelemtime(4) = 0
name = "magical sword y"
id = 6000
stateno = 6000
postype = p1
pos = floor(const(size.xscale)*55),-floor(const(size.yscale)*44)
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1210, changestate]
type = changestate
trigger1 = var(7) = 3
trigger1 = animelemtime(6) >= 0
value = 1220

[state 1210, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■影踊るスケルツォ３
[statedef 1220]
type = s
movetype = a
physics = s
ctrl = 0
anim = 1220+(prevstateno=[1200,1210])
poweradd = floor(50*fvar(2))

[state 1220, varadd];＊影踊るスケルツォ、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 2
persistent = 0

[state 1220, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = 9,8
channel = 0

[state 1220, helper]
type = helper
trigger1 = time = 0
name = "bind 1220"
id = 11220
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1220, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(7) = 0
value = 3,1

[state 1220, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(4) = 2
value = 0,4

[state 1220, helper]
type = helper
trigger1 = animelemtime(4) = 0
name = "magical sword z1"
id = 6000
stateno = 6000
postype = p1
pos = floor(const(size.xscale)*37),-floor(const(size.yscale)*26)
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1220, helper]
type = helper
trigger1 = animelemtime(4) = 2
name = "magical sword z2"
id = 6000
stateno = 6000
postype = p1
pos = floor(const(size.xscale)*57),-floor(const(size.yscale)*48)
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 1220, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■木漏れ日のアリア
[statedef 1500]
type = s
movetype = i
physics = s
ctrl = 0
anim = 1500

[state 1500, varadd];＊木漏れ日のアリア、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 3
persistent = 0

[state 1500, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = 3,2

[state 1500, palfx]
type = palfx
triggerall = numhelper(15000) = 0
trigger1 = animelemtime(5) = 0
time = 120
add = var(21)-(var(40)=1)*var(21)*2,var(22)-(var(40)=1)*var(22)*2,var(23)-(var(40)=1)*var(23)*2
sinadd = -var(21)+(var(40)=1)*var(21)*2,-var(22)+(var(40)=1)*var(22)*2,-var(23)+(var(40)=1)*var(23)*2,480

[state 1500, helper]
type = helper
trigger1 = animelemtime(5) = 0
name = "magic circle 0.5"
id = 21500
stateno = 21500
postype = p1
pos = -floor(const(size.xscale)*15),-floor(const(size.yscale)*60)
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 0.5*const(size.xscale)
size.yscale = 0.5*const(size.yscale)

[state 1500, helper]
type = helper
trigger1 = animelemtime(5) = 12
name = "magic circle 0.38"
id = 21501
stateno = 21501
postype = p1
pos = -floor(const(size.xscale)*15),-floor(const(size.yscale)*60)
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 0.38*const(size.xscale)
size.yscale = 0.38*const(size.yscale)

[state 1500, helper]
type = helper
trigger1 = animelemtime(5) = 24
name = "magic circle 0.28"
id = 21500
stateno = 21500
postype = p1
pos = -floor(const(size.xscale)*15),-floor(const(size.yscale)*60)
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 0.28*const(size.xscale)
size.yscale = 0.28*const(size.yscale)

[state 1500, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■ガードキャンセル
[statedef 2000]
type = u
movetype = a
physics = u
ctrl = 0
poweradd = -1000

[state 2000, varadd];ガードキャンセル、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 1
var(46) = 5
persistent = 0

[state 2000, nothitby]
type = nothitby
trigger1 = 1
value = sca,aa
ignorehitpause = 1

[state 2000, changeanim]
type = changeanim
trigger1 = anim != [150,151]
value = 150

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
trigger1 = animelemtime(5) < 10
value = sca,aa
ignorehitpause = 1

[state 2001, playsnd]
type = playsnd
trigger1 = animelemtime(1) = 0
value = 9,10+10*(var(11)=[100,300])+(random<500)
channel = 0

[state 2001, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 0,5

[state 2001, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*30),0

[state 2001, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = floor(const(size.xscale)*40)

[state 2001, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = floor(const(size.xscale)*20)

[state 2001, posadd]
type = posadd
trigger1 = animelemtime(7) = 0
x = -floor(const(size.xscale)*20)

[state 2001, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = -floor(const(size.xscale)*30)

[state 2001, hitdef]
type = hitdef
trigger1 = animelemtime(3) = 0
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
sparkxy = 0,-floor(const(size.yscale)*43)
hitsound = s1,9
guardsound = s2,1
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

[state 900, varadd];マギアキャンセル、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 0
var(46) = 5
persistent = 0

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

[state 901, varadd];マギアキャンセル、の業
type = varadd
trigger1 = var(40) = 0
trigger1 = roundstate = 2
trigger1 = time = 0
var(46) = 5
persistent = 0

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

[state 901, width]
type = width
trigger1 = 1
player = floor(const(size.xscale)*30),0

[state 901, changestate]
type = changestate
trigger1 = time = 1
value = ifelse(pos y!=0,110,100+(var(50)!=0))
ctrl = 1
