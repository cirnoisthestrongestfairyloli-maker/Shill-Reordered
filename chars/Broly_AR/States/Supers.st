; ________________________
;| Broly by Mr.Ansatsuken |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================< HYPER STATES >=======================================
;============================================================================================

;======================< ERASER CANNON >=============================
; Eraser Cannon
[Statedef 3000]
type = S
physics = S
movetype = A
anim = 3000
ctrl = 0
velset = 0, 0
poweradd = -1000 + ((var(53)>0)*1000)
sprpriority = 1
facep2 = 1

[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,3,16)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,6,13)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,6,13)

[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && power <3000 && prevstateno != [3000,4999]
var(22)=ifelse(power<=999,0,ifelse(power<=1999,1,ifelse(random<500,1,2)))
[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && power >=3000 && prevstateno != [3000,4999]
var(22)=ifelse(power<=3999,ifelse(random<500,1,3),ifelse(random<600,ifelse(random<500,22,33),ifelse(random<500,1,2)))
[State 3000, Super Cancel]
type = Varadd
trigger1 = !time && var(46) && AIlevel && ((var(22) = [21,22])||(var(22) = [31,33]))
var(22)= -1

[State 3000, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5
[State 3000, width]
type = width
trigger1 = !time
value = floor(40 * const(size.xscale))

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3000, Super Pause FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = floor(-30 * const(size.xscale)), floor(-105 * const(size.yscale))
ownpal = 1
persistent = 0
supermovetime = 9999
size.xscale = 1
size.yscale = 1
[State 3000, Super Pause]
type = superpause
trigger1 = !time
time = 43
movetime = 43
anim = -1
p2defmul = 1
darken = 0

[State 0, Remove Flashes from previous Super]
type = removeexplod
trigger1 = !time
ID = 3999
[State 0, Flahses]
type = Explod
trigger1 = !time
ID = 3999
anim = 3001
postype = p1
pos = 0,0
bindtime = -1
removetime = -2
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5*const(size.xscale),0.5*const(size.xscale)
removeongethit = 1
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 1000
anim = 1095
postype = p1
pos = floor(-30 * const(size.xscale)), floor(-105 * const(size.yscale))
bindtime = -1
removetime = 43
supermovetime = 43
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 1000
anim = 1096
postype = p1
pos = floor(-30 * const(size.xscale)), floor(-105 * const(size.yscale))
bindtime = -1
removetime = 43
supermovetime = 43
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1

[State Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 3000, NHB]
type = nothitby
trigger1 = animelemtime(4) < 0
time = 1
value = SCA

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3,37
channel = 0

[State 3000, Eraser Cannon]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 3005
ID = 3005
name = "Eraser Cannon"
postype = p1
pos = floor(120 * const(size.xscale)), floor(-126 * const(size.yscale))
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 0, DUSTO]
type = Explod
trigger1 = animelem = 4
ID = 8130
anim = 8130
postype = p1
pos = 60, 0
removetime = -2
supermovetime = 0
sprpriority = 4
ownpal = 1
scale = 0.25,0.25
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 6028
ID = 6028
pos = 60,0
postype = p1  ;p2,front,back,left,right
ignorehitpause = 1
removetime = -2
scale = 0.1875,0.125
sprpriority = 3

[State 3000, Snd]
type = playsnd
trigger1 = animelem = 4
value = 3, 24
channel = 0
[State 3000, Snd]
type = playsnd
trigger1 = animelem = 4
value = 5, 24

[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 5, 44

[State 3000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< GIGANTIC ROAR >=============================
; Gigantic Roar
[Statedef 3100]
type = S
physics = S
movetype = A
anim = 3100
ctrl = 0
velset = 0, 0
poweradd = -1000 + ((var(53)>0)*1000)
sprpriority = 1
facep2 = 1

[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,3,16)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,6,13)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,6,13)

[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && power <3000 && prevstateno != [3000,4999]
var(22)=ifelse(power<=999,0,ifelse(power<=1999,1,ifelse(random<500,1,2)))
[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && power >=3000 && prevstateno != [3000,4999]
var(22)=ifelse(power<=3999,ifelse(random<500,1,3),ifelse(random<600,ifelse(random<500,22,33),ifelse(random<500,1,2)))
[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && ((var(22) = [21,22])||(var(22) = [31,33]))
var(22)= -1

[State 3000, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5
[State 3000, width]
type = width
trigger1 = !time
value = floor(40 * const(size.xscale))

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3000, Super Pause FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = floor(16 * const(size.xscale)), floor(-151 * const(size.yscale))
ownpal = 1
persistent = 0
supermovetime = 9999
size.xscale = 1
size.yscale = 1
[State 3000, Super Pause]
type = superpause
trigger1 = !time
time = 43
movetime = 43
anim = -1
p2defmul = 1
darken = 0

[State 0, Remove Flashes from previous Super]
type = removeexplod
trigger1 = !time
ID = 3999
[State Flashes]
type = Explod
trigger1 = !time
ID = 3999
anim = 3101
postype = p1
pos = 0,0
bindtime = -1
removetime = -2
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5*const(size.xscale),0.5*const(size.yscale)
removeongethit = 1

[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 1000
anim = 1095
postype = p1
pos = floor(16 * const(size.xscale)), floor(-151 * const(size.yscale))
bindtime = -1
removetime = 40
supermovetime = 40
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 1000
anim = 1096
postype = p1
pos = floor(16 * const(size.xscale)), floor(-151 * const(size.yscale))
bindtime = -1
removetime = 40
supermovetime = 40
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1

[State Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 3000, NHB]
type = nothitby
trigger1 = animelemtime(5) < 0
time = 1
value = SCA

[State 3000, Gigantic Roar]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 3105
ID = 3105
name = "Gigantic Roar"
postype = p1
;pos = floor(140 * const(size.xscale)), floor(-214 * const(size.yscale))
pos = floor(-100 * const(size.xscale)), floor(-117 * const(size.yscale))
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
;
;[State 0, DUSTO]
;type = Explod
;trigger1 = animelem = 4
;ID = 8120
;anim = 8120
;postype = p1
;pos = 60, 0
;removetime = -2
;supermovetime = 0
;sprpriority = 4
;ownpal = 1
;scale = 0.25,0.25
;removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 6028
ID = 6028
pos = 60,0
postype = p1  ;p2,front,back,left,right
ignorehitpause = 1
removetime = -2
scale = 0.1875,0.125
sprpriority = 3

[State 0, Stop voice from previous move]
type = stopSnd
trigger1 = !time
channel = 3
[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 3, 13
channel = 0
[State 3000, Snd]
type = playsnd
trigger1 = animelem = 4
value = 5, 24

[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 5, 44

[State 3000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1



;======================< BURST ERASER >=============================
; Burst Eraser
[Statedef 3200]
type = S
physics = S
movetype = A
anim = 3200
ctrl = 0
velset = 0, 0
poweradd = -1000 + ((var(53)>0)*1000)
sprpriority = 1

[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,1,10)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,4,11)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,4,11)

[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && power <3000 && prevstateno != [3000,4999]
var(22)=ifelse(power<=999,0,ifelse(power<=1999,1,ifelse(random<500,1,2)))
[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && power >=3000 && prevstateno != [3000,4999]
var(22)=ifelse(power<=3999,ifelse(random<500,1,3),ifelse(random<600,ifelse(random<500,22,33),ifelse(random<500,1,2)))
[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && ((var(22) = [21,22])||(var(22) = [31,33]))
var(22)= -1

[State 0, Aerial or ground?]
type = VarSet
trigger1 = !time
var(37)= ifelse(pos y < 0,1,0)
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = !time && var(37)
statetype = A
[State 0, VelSet]
type = VelSet
trigger1 = anim = 3200 ;|| anim = 3203 && animelemtime(4)<0
x = 0
y = 0

[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 5, 44
;
;[State 3000, Snd]
;type = playsnd
;trigger1 = !time
;value = 5, 44

[State 1900, Turn]
type = turn
trigger1 = !time && !var(37)
trigger1 = p2dist x < 0

[State 3000, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5
[State 3000, width]
type = width
trigger1 = !time
value = floor(40 * const(size.xscale))

[State Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3000, Super Pause FX]
type = helper
trigger1 = time = 1
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = floor(0 * const(size.xscale)), floor(-101 * const(size.yscale))
ownpal = 1
persistent = 0
supermovetime = 9999
size.xscale = 1
size.yscale = 1
[State 3000, Super Pause]
type = superpause
trigger1 = time = 1
time = 43
movetime = 43
anim = -1
p2defmul = 1
darken = 0
[State 0, Remove Flashes from previous Super]
type = removeexplod
trigger1 = !time || anim != 3200
ID = 3999
[State 740, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 6000
ID = 6000
name = "LSSJ Aura"
postype = p1
size.xscale = 0.4
size.yscale = 0.4
;pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 0, Flashes]
type = Explod
trigger1 = !time
ID = 3999
anim = 3201
postype = p1
pos = 0, 0
bindtime = -1
removetime = 120
supermovetime = 44
sprpriority = 5
ownpal = 1
scale = 0.5 * const(size.xscale), 0.5 * const(size.yscale)
removeongethit = 1
[State 3025, particles]
type = explod
trigger1 = numhelper(3205)
trigger1 = time >= 46
trigger1 = (time%3)
trigger1 = helper(3205), stateno = 3205
vel = (helper(3205),var(11)), (helper(3205),var(12))
accel = ((helper(3205),var(11))*0.05), ((helper(3205),var(12))*0.05)
anim = 1007 + var(56)*7993
sprpriority = ifelse(random<500,-3,3)
postype = p1
pos = 0, floor(-80 * const(size.yscale))
removetime = 200
random = 40, 20
facing = -1 + (random < 500) * 2
vfacing = -1 + (random < 500) * 2
scale = 0.5, 0.5
ownpal = 1
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim != 3200
movetype = I
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim != 3200 && var(37)
physics = A
[State 3000, NHB]
type = nothitby
trigger1 = anim = 3200 && animelemtime(8) < 0
time = 1
value = SCA

[State 3000, NHB]
type = nothitby
trigger1 = anim = 3200 && animelemtime(8) >= 0
trigger2 = anim != 3200 && animelemtime(1) <= 4
time = 1
value = , AP

[State 3000, Burst Eraser]
type = helper
trigger1 = anim = 3200 && animelem = 7
helpertype = normal
stateno = 3205
ID = 3205
name = "Burst Eraser"
postype = p1
pos = 0, floor(-80 * const(size.yscale))
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 0, DUSTO]
type = Explod
triggerall = anim = 3200 && !var(37)
trigger1 = animelem = 7
trigger2 = animelem = 11
ID = 8130
anim = 8130
postype = p1
pos = -60, 0
removetime = -2
supermovetime = 0
sprpriority = 4
ownpal = 1
scale = 0.125,0.125
removeongethit = 1
[State 0, DUSTO]
type = Explod
triggerall = anim = 3200 && !var(37)
trigger1 = animelem = 7
trigger2 = animelem = 11
ID = 8130
anim = 8130
postype = p1
pos = 60, 0
removetime = -2
supermovetime = 0
facing = -1
sprpriority = 4
ownpal = 1
scale = 0.125,0.125
removeongethit = 1
;
;[State 0, Explod]
;type = Explod
;trigger1 = animelem = 8
;anim = 6028
;ID = 6028
;pos = 60,0
;postype = p1  ;p2,front,back,left,right
;ignorehitpause = 1
;removetime = -2
;scale = 0.1875,0.125
;sprpriority = 3

[State 0, Stop voice from previous move]
type = stopSnd
trigger1 = !time
channel = 3
[State 3000, Voice]
type = playsnd
trigger1 = !time
value = 3, 18
channel = 0
[State 3000, Snd]
type = playsnd
trigger1 = anim = 3200 && animelem = 7
;value = 5, 33
value = s5+var(56)*8995, 49+var(56)*50

[State 3000, End]
type = changeanim
trigger1 = time = 120 || anim = 3200 && numhelper(3205) && helper(3205), stateno != 3205
value = ifelse(var(37),3203,3202)
[State 0, SprPriority]
type = SprPriority
trigger1 = anim = 3200 && animelem = 8 || anim !=3200
value = ifelse(anim=3200,4,1)
ignorehitpause = 1
persistent = 1

[State 3000, End]
type = changestate
trigger1 = anim = 3202 && !animtime
value = 0
ctrl = 1
[State 1210, End]
type = changestate
trigger1 = anim = 3203 && animelemtime(4) > 0 && vel y > 0 && pos y >= 0
value = 52


;======================< FURU POWA ENERUGI WEIVU >=============================
; Full Power Energy Wave
[Statedef 3300]
type = A
physics = N
movetype = A
anim = 3300
ctrl = 0
velset = 0, 0
poweradd = -1000 + ((var(53)>0)*1000)
sprpriority = 1
;facep2 = 1

[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,3,16)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,6,13)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,6,13)

[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && power <3000 && prevstateno != [3000,4999]
var(22)=ifelse(power<=999,0,ifelse(power<=1999,1,ifelse(random<500,1,2)))
[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && power >=3000 && prevstateno != [3000,4999]
var(22)=ifelse(power<=3999,ifelse(random<500,1,3),ifelse(random<600,ifelse(random<500,22,33),ifelse(random<500,1,2)))
[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && ((var(22) = [21,22])||(var(22) = [31,33]))
var(22)= -1

[State 3000, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5
[State 3000, width]
type = width
trigger1 = !time
value = floor(40 * const(size.xscale))

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3000, Super Pause FX]
type = helper
trigger1 = time = 1
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = floor(-35 * const(size.xscale)), floor(-154 * const(size.yscale))
ownpal = 1
persistent = 0
supermovetime = 9999
size.xscale = 1
size.yscale = 1
[State 3000, Super Pause]
type = superpause
trigger1 = time = 1
time = 43
movetime = 43
anim = -1
p2defmul = 1
darken = 0

[State 0, Energy Charge]
type = Explod
trigger1 = anim = 3300 && animelem = 5
ID = 1000
anim = 1095
postype = p1
pos = floor(-35 * const(size.xscale)), floor(-154 * const(size.yscale))
bindtime = -1
removetime = 32
supermovetime = 32
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0, Energy Charge]
type = Explod
trigger1 = anim = 3300 && animelem = 5
ID = 1000
anim = 1096
postype = p1
pos = floor(-35 * const(size.xscale)), floor(-154 * const(size.yscale))
bindtime = -1
removetime = 32
supermovetime = 32
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1

[State 0, Remove Flashes from previous Super]
type = removeexplod
trigger1 = !time
ID = 3999
[State Flashes]
type = Explod
trigger1 = !time
ID = 3999
anim = 3302
postype = p1
pos = 0,0
bindtime = -1
removetime = -1
sprpriority = 2
supermovetime = 44
ownpal = 1
scale = 0.5*const(size.xscale),0.5*const(size.yscale)
removeongethit = 1

[State Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 3000, NHB]
type = nothitby
trigger1 = anim = 3300 && animelemtime(8) < 0
time = 1
value = SCA

[State 3000, Full Power Energy Wave]
type = helper
trigger1 = animelem = 8
helpertype = normal
stateno = 3305
ID = 3305
name = "Full Power Energy Wave"
postype = p1
;pos = floor(140 * const(size.xscale)), floor(-214 * const(size.yscale))
pos = floor(-100 * const(size.xscale)), floor(-117 * const(size.yscale))
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
[State 0, VelSet]
type = VelSet
trigger1 = anim = 3300
x = 0
y = 0
;
;[State 0, DUSTO]
;type = Explod
;trigger1 = animelem = 4
;ID = 8120
;anim = 8120
;postype = p1
;pos = 60, 0
;removetime = -2
;supermovetime = 0
;sprpriority = 4
;ownpal = 1
;scale = 0.25,0.25
;removeongethit = 1

[State 0, Stop voice from previous move]
type = stopSnd
trigger1 = !time
channel = 3
[State 3000, Voice]
type = playsnd
trigger1 = !time
value = 4, 21
channel = 0
[State 3000, Snd]
type = playsnd
trigger1 = anim = 3300 && animelem = 8
value = 5, 24

[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 5, 44

[State 3000, End]
type = changeanim
triggerall = anim = 3300
trigger1 = time >= 120
trigger2 = numhelper(3305)
trigger2 = helper(3305), stateno != 3305
value = 3301
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 3301 && animelemtime(1)=0
movetype = I
physics = A

[State 0, Remove Flashes]
type = removeexplod
trigger1 = anim=3301&&animelemtime(1)=0
ID = 3999
[State Flashes Fading]
type = Explod
trigger1 = anim=3301&&animelemtime(1)=0
ID = 3999
anim = 3303
postype = p1
pos = 0,0
bindtime = -1
removetime = -2
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5*const(size.xscale),0.5*const(size.yscale)
removeongethit = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = anim = 3301
trigger1 = animelemtime(1)=0
y = -4
x = -2



;======================< GIGANTIC PRESS >=============================
; Gigantic Press
[Statedef 3400]
type = S
physics = S
movetype = A
anim = 3400
ctrl = 0
velset = 0, 0
poweradd = -1000 + ((var(53)>0)*1000)
sprpriority = 1
facep2 = 0

[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,1,10)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,4,11)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,4,11)

[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && power <3000 && prevstateno != [3000,4999]
var(22)=ifelse(power<=999,0,ifelse(power<=1999,1,ifelse(random<500,1,2)))
[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && power >=3000 && prevstateno != [3000,4999]
var(22)=ifelse(power<=3999,ifelse(random<500,1,3),ifelse(random<600,ifelse(random<500,22,33),ifelse(random<500,1,2)))
[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && ((var(22) = [21,22])||(var(22) = [31,33]))
var(22)= -1

[State 0, Aerial or ground?]
type = VarSet
trigger1 = !time
var(37)= ifelse(pos y < 0,1,0)
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = !time && var(37)
statetype = A
physics = A
[State 0, VelSet]
type = VelSet
trigger1 = anim = 3400;|| anim = 3203 && animelemtime(4)<0
x = ifelse(animelemtime(2)>=0,15,0)
y = 0

[State 1900, Turn]
type = turn
trigger1 = !time && !var(37)
trigger1 = p2dist x < 0

[State 3000, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5

[State Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3000, Super Pause FX]
type = helper
trigger1 = time = 1
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = floor(-58 * const(size.xscale)), floor(-114 * const(size.yscale))
ownpal = 1
persistent = 0
supermovetime = 9999
size.xscale = 1
size.yscale = 1
[State 3000, Super Pause]
type = superpause
trigger1 = time = 1
time = 43
movetime = 43
anim = -1
p2defmul = 1
darken = 0
[State 1000, Powered Shell]
type = helper
trigger1 = !time && !numhelper(1159);||numhelper(1155)&&helper(1155),stateno=1156)
helpertype = normal
stateno = 1159
ID = 1155
name = "Powered Shell"
postype = p1
pos = 86*const(size.xscale),-135*const(size.yscale)
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 43
;supermovetime = 65535
ownpal = 1
[State 740, Rushing Aura]
type = helper
trigger1 = anim = 3400 && animelemtime(3)=-4 && !numhelper(6002)
helpertype = normal
stateno = 6002
ID = 6002
name = "LSSJ Aura"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
;pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 4, 39
channel = 0

[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 4, 39
channel = 3

[State 0, DUSTO]
type = Explod
triggerall = !var(37)
trigger1 = anim = 3400 && vel x
trigger1 = time && !(time%6)
trigger2 = anim = 3400 && animelemtime(2)=0
ID = 8130
anim = 8130
postype = p1
pos = 45, 10
persistent = 1
removetime = -2
supermovetime = 0
sprpriority = 4
ownpal = 1
scale = 0.25,0.125
removeongethit = 1
[State 101, Dust]
type = explod
trigger1 = anim = 3401 && !(time%2) && vel x && !var(37)
anim = 8104
sprpriority = 3
postype = p1
pos = 40, 10
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 101, Dust]
type = explod
trigger1 = anim = 3401 && !(time%2) && vel x && !var(37)
anim = 8104
sprpriority = 3
postype = p1
pos = -30, 10
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 100, Dust]
type = playsnd
trigger1 = anim = 3401 && !var(37)
value = s0, 101
persistent = 0
[State 0, PlayerPush]
type = PlayerPush
trigger1 = anim = 3400 && animelemtime(2)>=0 && !moveguarded
value = 0
ignorehitpause = 0
[State 100, Dust]
type = playsnd
trigger1 = anim = 3400 && animelemtime(2)=0
value = s5, 43
persistent = 0
[State 0, NotHitBy]
type = NotHitBy
trigger1 = anim = 3400 && animelemtime(2)<0
value = SCA
time = 1

[State 3005, Hit]
type = hitdef
trigger1 = !time && !var(37)
priority = 4, Hit
attr = S, HA
damage = ceil(222 * (fvar(12))), 4
animtype = diagup
hitflag = MAF
guardflag = M
pausetime = 10, 10
hitSound = -1 + 0 * (var(31) := 11)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 73), var(36) := -101
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 2, -12
yaccel = 0.5
ground.cornerpush.veloff = 0
air.velocity = 2, -12
guard.velocity = -10.52
p2facing = -1
fall = 1
air.fall = 1
ID = 3400
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((var(44)=2),50,128)
palfx.sinadd=ifelse(var(44)=2,50,ifelse(var(44)=1||var(44)=3,64,0)),ifelse(var(44)=2,25,ifelse(var(44)=1,0,64)),ifelse(var(44)=2,80,ifelse(var(44)=1,64,0)),ifelse(var(44)=2,8,4)
palfx.mul = ifelse((var(44)=[2,3]),192,ifelse(var(44)=1,192,0)), ifelse((var(44)=2),256,ifelse(var(44)=1,0,ifelse(var(44)=3,128,192))), ifelse(var(44)=3,0,ifelse((var(44)=2),512,96))
palfx.time = 64


[State 3005, Hit]
type = hitdef
trigger1 = !time && var(37)
priority = 4, Hit
attr = A, HA
damage = ceil(190 * (fvar(12))), 4
animtype = diagup
hitflag = MAF
guardflag = M
pausetime = 10, 10
hitSound = -1 + 0 * (var(31) := 11)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 73), var(36) := -101
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 2, -12
yaccel = 0.5
ground.cornerpush.veloff = 0
air.velocity = 2, -12
guard.velocity = -10.52
p2facing = -1
fall = 1
air.fall = 1
ID = 3400
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
yaccel = 0.5
forcestand = 1
palfx.color = ifelse((var(44)=2),50,128)
palfx.sinadd=ifelse(var(44)=2,50,ifelse(var(44)=1||var(44)=3,64,0)),ifelse(var(44)=2,25,ifelse(var(44)=1,0,64)),ifelse(var(44)=2,80,ifelse(var(44)=1,64,0)),ifelse(var(44)=2,8,4)
palfx.mul = ifelse((var(44)=[2,3]),192,ifelse(var(44)=1,192,0)), ifelse((var(44)=2),256,ifelse(var(44)=1,0,ifelse(var(44)=3,128,192))), ifelse(var(44)=3,0,ifelse((var(44)=2),512,96))
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
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 0, Remove Flashes from previous Super]
type = removeexplod
trigger1 = !time
ID = 3999

[State 0, TargetState]
type = TargetState
trigger1 = movehit = 1 && numtarget(3400)
value = 1111150
ID = 3400
ignorehitpause = 0
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 78
value = ifelse(var(37),3301,3401)
elem = ifelse(var(37),2,1)
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 3301 || anim = 3401
trigger1 = animelem = 1 || animelem = 2
movetype = I
[State 0, End]
type = changestate
trigger1 = anim = 3401 && !animtime
value = 0
ctrl = 1


;======================< ERASER SHOT VOLLEY >=============================
; Eraser Shot Volley
[Statedef 3500]
type = S
physics = S
movetype = A
anim = 3500
ctrl = 0
velset = 0, 0
poweradd = -2000 + ((var(53)>0)*1000)
sprpriority = 1
facep2 = 1

[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,1,10)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,4,11)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,4,11)

[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && prevstateno != [3000,4999]
var(22)=ifelse(power<=2999,2,3)
[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && ((var(22) = [21,22])||(var(22) = [31,33])) && prevstateno = [3000,4999]
var(22)= -1

[State 3400, Strength]
type = varset
trigger1 = var(10) != 6
var(10) = 6

;[State 3400, Snd]
;type = playsnd
;trigger1 = !time
;;value = 3, 7
;value = 4, 44
;channel = 0
;volume = 200
[State 3400, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3400, Super Pause FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8510
ID = 8500
name = "Super Charge"
postype = p1
pos = 86*const(size.xscale),-135*const(size.yscale)
ownpal = 1
persistent = 0
supermovetime = 9999
size.xscale = 1
size.yscale = 1
[State 3400, Super Pause]
type = superpause
trigger1 = !time
time = 43
movetime = 43
anim = -1
p2defmul = 1
darken = 0

[State 3000, width]
type = width
trigger1 = !time
value = floor(35 * const(size.xscale))

[State 0, Stop voice from previous move]
type = stopSnd
trigger1 = time = 10
channel = 3
[State 3000, Voice]
type = playsnd
trigger1 = time = 10
value = 3, 20
channel = 0

[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 5, 44

[State Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 3400, NHB]
type = nothitby
triggerall = anim = 3500
trigger1 = animelemtime(3)<0
time = 1
value = SCA

[State 1000, Eraser Shot Volley]
type = helper
triggerall = anim = 3500
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(5) = 0
trigger3 = animelemtime(7) = 0
trigger4 = animelemtime(9) = 0
trigger5 = animelemtime(11) = 0
trigger6 = animelemtime(13) = 0
trigger7 = animelemtime(15) = 0
trigger8 = animelemtime(17) = 0
trigger9 = animelemtime(19) = 0
trigger10 = animelemtime(21) = 0
trigger11 = animelemtime(23) = 0
helpertype = normal
stateno = 3505
ID = 3505
name = "Eraser Shot Volley"
postype = p1
pos = 86*const(size.xscale),-135*const(size.yscale)
size.xscale = 0.25
size.yscale = 0.25
ownpal = 1

[State 1000, Eraser Shot Volley]
type = helper
triggerall = anim = 3500
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(5) = 0
trigger3 = animelemtime(7) = 0
trigger4 = animelemtime(9) = 0
trigger5 = animelemtime(11) = 0
trigger6 = animelemtime(13) = 0
trigger7 = animelemtime(15) = 0
trigger8 = animelemtime(17) = 0
trigger9 = animelemtime(19) = 0
trigger10 = animelemtime(21) = 0
trigger11 = animelemtime(23) = 0
helpertype = normal
stateno = 3515
ID = 3505
name = "Eraser Shot Volley"
postype = p1
pos = 86*const(size.xscale),-135*const(size.yscale)
size.xscale = 0.25
size.yscale = 0.25
ownpal = 1

[State 1000, Eraser Shot Volley]
type = helper
triggerall = anim = 3500
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(5) = 0
trigger3 = animelemtime(7) = 0
trigger4 = animelemtime(9) = 0
trigger5 = animelemtime(11) = 0
trigger6 = animelemtime(13) = 0
trigger7 = animelemtime(15) = 0
trigger8 = animelemtime(17) = 0
trigger9 = animelemtime(19) = 0
trigger10 = animelemtime(21) = 0
trigger11 = animelemtime(23) = 0
helpertype = normal
stateno = 3525
ID = 3505
name = "Eraser Shot Volley"
postype = p1
pos = 86*const(size.xscale),-135*const(size.yscale)
size.xscale = 0.25
size.yscale = 0.25
ownpal = 1

[State 0]
type = Explod
trigger1 = !time
ID = 1000
anim = 1095
postype = p1
pos = 95*const(size.xscale),-135*const(size.yscale)
bindtime = -1
removetime = 43
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0]
type = Explod
trigger1 = !time
ID = 1000
anim = 1096
postype = p1
pos = 95*const(size.xscale),-135*const(size.yscale)
bindtime = -1
removetime = 43
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5,0.5
removeongethit = 1

[State 0, Remove Flashes from previous Super]
type = removeexplod
trigger1 = !time
ID = 3999
[State 0]
type = Explod
trigger1 = !time
ID = 3999
anim = 3501
postype = p1
pos = 0,0
bindtime = -1
removetime = -2
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5*const(size.xscale),0.5*const(size.xscale)
removeongethit = 1

[State 1000, Snd]
type = playsnd
triggerall = anim = 3500
trigger1 = animelemtime(3) = 0
;trigger2 = animelemtime(5) = 0
;trigger3 = animelemtime(7) = 0
;trigger4 = animelemtime(9) = 0
;trigger5 = animelemtime(11) = 0
;trigger6 = animelemtime(13) = 0
;trigger7 = animelemtime(15) = 0
;trigger8 = animelemtime(17) = 0
;trigger9 = animelemtime(19) = 0
;trigger10 = animelemtime(21) = 0
;trigger11 = animelemtime(23) = 0
value = s5+var(56)*8995, 33+var(56)*66
;value = s5,33
persistent = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3500
trigger1 = !animtime
value = 3502

[State 3400, End]
type = changestate
triggerall = anim = 3502
trigger1 = !animtime
value = 0
ctrl = 1



;======================< PLANET GEYSER >=============================
; Planet Geyser
[Statedef 3600]
type = A
physics = S
movetype = A
anim = 3600
ctrl = 0
poweradd = -2000 + ((var(53)>0)*1000)
juggle = 0
velset = 0, 0
sprpriority = 1
facep2 = 1

[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,3,16)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,6,13)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,6,13)

[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && prevstateno != [3000,4999]
var(22)=ifelse(power<=2999,2,3)
[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && ((var(22) = [21,22])||(var(22) = [31,33])) && prevstateno = [3000,4999]
var(22)= -1

[State 3400, Strength]
type = varset
trigger1 = var(10) != 6
var(10) = 6

;[State 3400, Snd]
;type = playsnd
;trigger1 = !time
;;value = 3, 7
;value = 4, 44
;channel = 0
;volume = 200
[State 3400, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3400, Super Pause FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8510
ID = 8500
name = "Super Charge"
postype = p1
pos = -34*const(size.xscale),-223*const(size.yscale)
ownpal = 1
persistent = 0
supermovetime = 9999
size.xscale = 1
size.yscale = 1
[State 3400, Super Pause]
type = superpause
trigger1 = !time
time = 50
movetime = 50
anim = -1
p2defmul = 1
darken = 0

[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 5, 44

[State 0, Stop voice from previous move]
type = stopSnd
trigger1 = !time
channel = 3
[State 3000, Voice]
type = playsnd
trigger1 = !time
value = 3, 27
channel = 0

[State 0, Remove Flashes from previous Super]
type = removeexplod
trigger1 = !time
ID = 3999

[State Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 3400, NHB]
type = nothitby
trigger1 = animelemtime(3) < 1
time = 1
value = SCA

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(3)>=0
x = -2
y = -8+(0.4*animelemtime(3))
ignorehitpause = 1
persistent = 1

[State 0, VelSet]
type = statetypeset
trigger1 = animelemtime(3)=0
physics = A

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = S1, 3

[State 52, Dust]
type = explod
trigger1 = animelemtime(3)=0
anim = 8133
ID = 8133
sprpriority = 2
postype = p1
scale = 0.5, 0.5
ownpal = 1
pos = 30, -80
persistent = 1
pausemovetime = -1
supermovetime = -1

[State 52, Dust]
type = explod
trigger1 = animelemtime(3)=3
anim = 8133
ID = 8133
sprpriority = 2
postype = p1
scale = 0.25, 0.25
ownpal = 1
pos = 50, -20
persistent = 1
pausemovetime = -1
supermovetime = -1

[State 0]
type = Explod
trigger1 = !time
ID = 1000
anim = 1095
postype = p1
pos = -34*const(size.xscale),-223*const(size.yscale)
bindtime = 99999
removetime = 40
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
supermovetime = 43
[State 0]
type = Explod
trigger1 = !time
ID = 1000
anim = 1096
postype = p1
pos = -34*const(size.xscale),-223*const(size.yscale)
bindtime = 99999
removetime = 40
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
supermovetime = 43
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = animelemtime(2)>=0
ID = 1000
postype = p1
pos = -3*const(size.xscale),-228*const(size.yscale)

[State 1000, Snd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 5, 24

[State 1000, Planet Geyser]
type = helper
trigger1 = animelemtime(3) = 0
helpertype = normal
stateno = 3605
ID = 3605
name = "Planet Geyser"
postype = p1
pos = 57*const(size.xscale),-78*const(size.yscale)
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 7
ownpal = 1


;======================< GIGANTIC HAMMER >=============================
; Gigantic Hammer
[Statedef 3700]
type = S
physics = S
movetype = A
anim = 3400
ctrl = 0
velset = 0, 0
poweradd = -2000 + ((var(53)>0)*1000)
sprpriority = 1
facep2 = 0

[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,1,10)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,4,11)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,4,11)

[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && prevstateno != [3000,4999]
var(22)=ifelse(power<=2999,2,3)
[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && ((var(22) = [21,22])||(var(22) = [31,33])) && prevstateno = [3000,4999]
var(22)= -1

[State 0, Aerial or ground?]
type = VarSet
trigger1 = !time
var(37)= ifelse(pos y < 0,1,0)
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = !time && var(37)
statetype = A
physics = A
[State 0, VelSet]
type = VelSet
trigger1 = anim = 3400;|| anim = 3203 && animelemtime(4)<0
x = ifelse(animelemtime(2)>=0,16,0)
y = 0

[State 1900, Turn]
type = turn
trigger1 = !time && !var(37)
trigger1 = p2dist x < 0

[State 3000, Strength]
type = varset
trigger1 = var(10) != 6
var(10) = 6
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S4,35
channel = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S4,35
channel = 3

[State Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3000, Super Pause FX]
type = helper
trigger1 = time = 1
helpertype = normal
stateno = 8510
ID = 8510
name = "Super Charge"
postype = p1
pos = floor(-58 * const(size.xscale)), floor(-114 * const(size.yscale))
ownpal = 1
persistent = 0
supermovetime = 9999
size.xscale = 1
size.yscale = 1
[State 3000, Super Pause]
type = superpause
trigger1 = time = 1
time = 43
movetime = 43
anim = -1
p2defmul = 1
darken = 0
[State 1000, Powered Shell]
type = helper
trigger1 = !time;||numhelper(1155)&&helper(1155),stateno=1156)
helpertype = normal
stateno = 1159
ID = 1155
name = "Powered Shell"
postype = p1
pos = 86*const(size.xscale),-135*const(size.yscale)
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 43
;supermovetime = 65535
ownpal = 1
[State 740, Rushing Aura]
type = helper
trigger1 = anim = 3400 && animelemtime(3)=-4 && !numhelper(6002)
helpertype = normal
stateno = 6002
ID = 6002
name = "LSSJ Aura"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
;pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <= 47
value = SCA
time = 1

[State 0, DUSTO]
type = Explod
triggerall = !var(37)
trigger1 = anim = 3400 && vel x
trigger1 = time && !(time%6)
trigger2 = anim = 3400 && animelemtime(2)=0
ID = 8130
anim = 8130
postype = p1
pos = 45, 10
persistent = 1
removetime = -2
supermovetime = 0
sprpriority = 4
ownpal = 1
scale = 0.25,0.125
removeongethit = 1
[State 101, Dust]
type = explod
trigger1 = anim = 3401 && !(time%2) && vel x && !var(37)
anim = 8104
sprpriority = 3
postype = p1
pos = 40, 10
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 101, Dust]
type = explod
trigger1 = anim = 3401 && !(time%2) && vel x && !var(37)
anim = 8104
sprpriority = 3
postype = p1
pos = -30, 10
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 100, Dust]
type = playsnd
trigger1 = anim = 3401 && !var(37)
value = s0, 101
persistent = 0
[State 0, PlayerPush]
type = PlayerPush
trigger1 = anim = 3400 && animelemtime(2)>=0 && !moveguarded
value = 0
ignorehitpause = 0
[State 100, Dust]
type = playsnd
trigger1 = anim = 3400 && animelemtime(2)=0
value = s5, 43
persistent = 0

[State 3005, Hit]
type = hitdef
trigger1 = !time && !var(37)
priority = 4, Hit
attr = S, HA
damage = ceil(100 * (fvar(12))), 4
animtype = diagup
hitflag = MAF
guardflag = M
pausetime = 0, 0
hitSound = -1 + 0 * (var(31) := 11)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 73), var(36) := -101
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 2, -12
yaccel = 0.5
ground.cornerpush.veloff = 0
air.velocity = 2, -12
guard.velocity = -10.52
p2facing = 1
fall = 1
air.fall = 1
ID = 3400
kill = 0
guard.kill = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
yaccel = 0.5
forcestand = 0

[State 3005, Hit]
type = hitdef
trigger1 = !time && var(37)
priority = 4, Hit
attr = A, HA
damage = ceil(100 * (fvar(12))), 4
animtype = diagup
hitflag = MAF
guardflag = M
pausetime = 0, 0
hitSound = -1 + 0 * (var(31) := 11)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 73), var(36) := -101
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 2, -12
yaccel = 0.5
ground.cornerpush.veloff = 0
air.velocity = 2, -12
guard.velocity = -10.52
p2facing = -1
fall = 1
air.fall = 1
ID = 3400
kill = 0
guard.kill = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
yaccel = 0.5
forcestand = 0

[State 0, Remove Flashes from previous Super]
type = removeexplod
trigger1 = !time
ID = 3999

[State 1200,1]
type = changestate
trigger1 = anim = 3400 && movehit=1 && numtarget
value = 3701
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 82
value = ifelse(var(37),3301,3401)
elem = ifelse(var(37),2,1)
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 3301 || anim = 3401
trigger1 = animelem = 1 || animelem = 2
movetype = I

[State 0, End]
type = changestate
trigger1 = anim = 3401 && !animtime
value = 0
ctrl = 1


[Statedef 3701]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
;[State 7650, bound]
;type = screenbound
;trigger1 = prevstateno = 1212
;value = 0
;movecamera = 0, 1
[State 0, TargetFacing]
type = TargetFacing
trigger1 = !time && prevstateno = 3702
value = 1
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = !time && var(37)
statetype = A
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !time && prevstateno = 3702
value = 1200
elem = 2
[State 0, ChangeAnim]
type = turn
trigger1 = !time && prevstateno = 3702
[State 0, playsnd]
type = playsnd
trigger1 = time = 1 && prevstateno = 3702
value = s0, 800
persistent = 1

[State 100, Dust]
type = playsnd
trigger1 = time = 1 && prevstateno = 3702
value = s5, 43
persistent = 1
[State 740, Rushing Aura]
type = helper
trigger1 = !time && prevstateno = 3702
helpertype = normal
stateno = 6002
ID = 6002
name = "LSSJ Aura"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
;pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 0, VelSet]
type = VelSet
trigger1 = (anim = 1200 || anim = 3400) && time >5;ifelse(prevstateno=3700,10,5);|| anim = 3203 && animelemtime(4)<0
x = ifelse(animelemtime(2)>=0,16,0)
y = 0

[State 0, DUSTO]
type = Explod
trigger1 = (anim = 1200 || anim = 3400) && vel x
trigger1 = !(time%6) && !var(37)
ID = 8130
anim = 8130
postype = p1
pos = 45, 10
persistent = 1
removetime = -2
supermovetime = 0
sprpriority = 4
ownpal = 1
scale = 0.25,0.125
removeongethit = 1

[State 1200,1]
type = Targetstate
trigger1 = !time
value = 1207
[State 1200,1]
type = TargetBind
trigger1 = (anim = 1200 || anim = 3400)
pos = -40, 0
time = 1
[State 0, ChangeAnim]
type = Changestate
triggerall = (anim = 1200 || anim = 3400)
trigger1 = FrontEdgeBodyDist <= 10
trigger2 = Time = 150
value = ifelse(prevstateno=3702,3703,3702)
ctrl = 0


[Statedef 3702]
type = S
physics = S
movetype = A
ctrl = 0
anim = 1202
velset = 0, 0
sprpriority = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = !time && var(37)
statetype = A
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3005, Hit]
type = hitdef
trigger1 = anim = 1202 && animelemtime(2)=0
priority = 4, Hit
attr = S, HA
damage = ceil(45 * (fvar(12))), 4
animtype = Hard
hitflag = MAF
pausetime = 6, 6
hitSound = -1 + 0 * (var(31) := 10)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 73), var(36) := -101
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -6, -6
yaccel = 0.5
ground.cornerpush.veloff = 0
air.velocity = -6, -6
guard.velocity = -10.52
p2facing = 1
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 0
ID = 1201
getpower = 0
kill = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2stateno = 1111302
yaccel = 0.5
palfx.color = ifelse((var(44)=2),50,128)
palfx.sinadd=ifelse(var(44)=2,50,ifelse(var(44)=1||var(44)=3,64,0)),ifelse(var(44)=2,25,ifelse(var(44)=1,0,64)),ifelse(var(44)=2,80,ifelse(var(44)=1,64,0)),ifelse(var(44)=2,8,4)
palfx.mul = ifelse((var(44)=[2,3]),192,ifelse(var(44)=1,192,0)), ifelse((var(44)=2),256,ifelse(var(44)=1,0,ifelse(var(44)=3,128,192))), ifelse(var(44)=3,0,ifelse((var(44)=2),512,96))
palfx.time = 180

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget(1201) && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1000, Explod]
type = helper
trigger1 = movehit = 1 && numtarget(1201)
helpertype = normal
stateno = 1006
ID = 813
name = "Explod"
postype = p1
pos = 55,-135
ignorehitpause = 1
persistent = 0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1200,1]
type = TargetBind
trigger1 = anim = 1202 && animelemtime(2)<0
pos = -10, 0
time = 1
[State 0, End]
type = changestate
trigger1 = anim = 1202 && !animtime
value = 3701
ctrl = 0


[Statedef 3703]
type = S
physics = S
movetype = A
ctrl = 0
anim = 1202
velset = 0, 0
sprpriority = 1
[State 1260, ExFX]
type = varset
trigger1 = !time ;&& prevstateno = 1210
var(25) = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = !time && var(37)
statetype = A
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3005, Hit]
type = hitdef
trigger1 = anim = 1202 && animelemtime(2)=0
priority = 4, Hit
attr = S, HA
damage = ceil(45 * (fvar(12))), 4
animtype = Hard
hitflag = MAF
pausetime = 0, 0
hitSound = -1 + 0 * (var(31) := 11)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 73), var(36) := -101
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -6, -6
yaccel = 0.5
ground.cornerpush.veloff = 0
air.velocity = -6, -6
kill = 0
guard.velocity = -10.52
p2facing = 1
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 0
ID = 1201
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2stateno = 1111302
yaccel = 0.5
palfx.color = ifelse((var(44)=2),50,128)
palfx.sinadd=ifelse(var(44)=2,50,ifelse(var(44)=1||var(44)=3,64,0)),ifelse(var(44)=2,25,ifelse(var(44)=1,0,64)),ifelse(var(44)=2,80,ifelse(var(44)=1,64,0)),ifelse(var(44)=2,8,4)
palfx.mul = ifelse((var(44)=[2,3]),192,ifelse(var(44)=1,192,0)), ifelse((var(44)=2),256,ifelse(var(44)=1,0,ifelse(var(44)=3,128,192))), ifelse(var(44)=3,0,ifelse((var(44)=2),512,96))
palfx.time = 48

[State 3005, Hit]
type = hitdef
trigger1 = anim = 1202 && animelemtime(2)=1
priority = 4, Hit
attr = S, HT
damage = 0, 0
animtype = Hard
hitflag = MAF
numhits = 0
pausetime = 0, 6
hitSound = -1 + 0 * (var(31) := -1)
sparkNo = -1 + 0 * (var(33) := -1)
guard.sparkNo = -1 + 0 * (var(34) := -1)
sparkxy = -10 + 0 * (var(35) := 73), var(36) := -101
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -6, -6
yaccel = 0.5
ground.cornerpush.veloff = 0
air.velocity = -6, -6
kill = 0
guard.velocity = -10.52
p2facing = 1
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 0
ID = 1201
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2stateno = 1111302
yaccel = 0.5
palfx.color = ifelse((var(44)=2),50,128)
palfx.sinadd=ifelse(var(44)=2,50,ifelse(var(44)=1||var(44)=3,64,0)),ifelse(var(44)=2,25,ifelse(var(44)=1,0,64)),ifelse(var(44)=2,80,ifelse(var(44)=1,64,0)),ifelse(var(44)=2,8,4)
palfx.mul = ifelse((var(44)=[2,3]),192,ifelse(var(44)=1,192,0)), ifelse((var(44)=2),256,ifelse(var(44)=1,0,ifelse(var(44)=3,128,192))), ifelse(var(44)=3,0,ifelse((var(44)=2),512,96))
palfx.time = 180

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget(1201) && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1000, Explod]
type = helper
trigger1 = movehit = 1 && numtarget(1201)
helpertype = normal
stateno = 1006
ID = 813
name = "Explod"
postype = p1
pos = 55,-135
ignorehitpause = 1
persistent = 0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1200,1]
type = TargetBind
trigger1 = anim = 1202 && animelemtime(2)<0
pos = -10, 0
time = 1
[State 0, End]
type = changestate
trigger1 = anim = 1202 && !animtime
value = 3704
ctrl = 1

[Statedef 3704]
type = S;A
physics = N
movetype = A
anim = 1501
ctrl = 0
poweradd = 0
sprpriority = -2
facep2 = 0
[State 0, Turn]
type = Turn
trigger1 = !time
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 0, TargetFacing]
type = TargetFacing
trigger1 = !time
value = -1
[State 0, playsnd]
type = playsnd
trigger1 = time = 1
value = s0, 800
persistent = 1
[State 0, VelSet]
type = VelSet
trigger1 = !time
x = 2
y = -8

[State 0, Gravity]
type = Gravity
trigger1 = anim = 1501

[State 0, Hand]
type = Explod
trigger1 = !time
ID = 3999
anim = 1511
postype = p1
pos = 0,0
bindtime = -1
removetime = -1
sprpriority = 2
supermovetime = -1
ownpal = 0
scale = const(size.xscale),const(size.xscale)
removeongethit = 1
[State 0, TargetBind]
type = Targetstate
trigger1 = !time
value = 1507
[State 0, TargetBind]
type = TargetBind
trigger1 = anim = 1501
time = 1
pos = 112*const(size.xscale),-119*const(size.yscale)+80;*target,const(size.yscale)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 1501 && vel y > 0 && pos y >=0
value = 1502
elem = 1
[State 0, TargetBind]
type = Targetlifeadd
trigger1 = anim = 1502 && animelemtime(1)=0
value = (-85*const(data.attack)*0.01)*(target, const(data.defence)*0.01)*(const(data.attack)*0.01)*(const(data.attack)*0.01)*fvar(12)*fvar(12)*fvar(12)
kill = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 15
value = S4,10
channel = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 15
value = S4,10
channel = 3
[State 195, Shake]
type = envshake
trigger1 = anim = 1502 && animelemtime(1)>=18
trigger1 = !(animelemtime(1) % 6)
time = 6
freq = 120
ampl = 3; -ceil(animelemtime(1) * 0.1)
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 1502
trigger1 = !(animelemtime(1) % 12)
value = S5,50
channel = 5
[State 0, HitAdd]
type = HitAdd
trigger1 = anim = 1502
trigger1 = !(animelemtime(1) % 12)
value = 1
[State 0, HitAdd]
type = statetypeset
trigger1 = anim = 1502 && animelemtime(1) = 0
statetype = S

[State 1800, Dust]
type = explod
trigger1 = anim = 1502 && animelemtime(1) = 0
anim = 8112;7107
ID = 7160
sprpriority = 0
postype = p1
pos = 73*const(size.xscale),-pos y
scale = 0.5, 0.5;0.38, 0.2
ownpal = 1
[State 1800, Dust]
type = explod
trigger1 = anim = 1502 && animelemtime(1) = 0
anim = 8113;7107
ID = 7160
sprpriority = 0
postype = p1
pos = 0,-pos y
scale = 0.5, 0.5;0.38, 0.2
ownpal = 1
;[State 101, Dust]
;type = explod
;trigger1 = anim = 1502 && !(animelemtime(1)%3)
;anim = 8104
;sprpriority = 1
;postype = p1
;pos = 73*const(size.xscale), -pos y
;vel = 0, 0
;scale = 0.5, 0.5
;pausemovetime = -1
;supermovetime = -1
;ownpal = 1
[State 1800, Dust]
type = explod
trigger1 = anim = 1502 && animelemtime(1) = 0
anim = 8106;7107
ID = 7240
sprpriority = -1
postype = p1
pos = 73*const(size.xscale),-pos y
scale = 1, 1;0.38, 0.2
ownpal = 1

[State 1304, Shake]
type = envshake
trigger1 = anim = 1502 && animelemtime(1) = 0
time = 18
freq = 120
ampl = 6
[State 1405, flames]
type = helper
trigger1 = anim = 1502 && numhelper(7181) < 1
helpertype = normal
stateno = 7181
ID = 7181
name = "flames"
postype = p2
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = anim = 1502 && animelemtime(1)=0
value = 2
[State 0, TargetBind]
type = Targetstate
trigger1 = anim = 1502 && animelemtime(1)=0
value = 1508
[State 1304, Snd]
type = playsnd
trigger1 = anim = 1502 && animelemtime(1)>=0
value = s5, 0
ignorehitpause = 1
persistent = 0
channel = 4
[State 1304, Snd]
type = playsnd
trigger1 = anim = 1502 && animelemtime(1)>=0
value = s5, 4
ignorehitpause = 1
persistent = 0
[State 0, TargetBind]
type = TargetBind
trigger1 = anim != 1501
time = 1
pos = 53*const(size.xscale),-18*const(size.yscale)+80;*target,const(size.yscale)
[State 0, VelSet]
type = Velset
trigger1 = anim != 1501
x = 6.5
y = 0
[State 0, PosSet]
type = PosSet
trigger1 = anim= 1502
y = -10
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
[State 1000, width]
type = width
trigger1 = 1
value = floor(ifelse(anim=1501,80,50) * const(size.xscale))

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = anim != 1501 && numexplod(3999)
id = 3999

[State 0, ChangeAnim]
type = Changeanim
trigger1 = anim = 1502 && animelemtime(1)>=40
value = 1503

[State 0, TargetBind]
type = Targetlifeadd
trigger1 = anim = 1502 || anim = 1503
value = -1
kill = 0

[State 0, ChangeAnim]
type = Changestate
trigger1 = anim = 1503 && animelemtime(2)>=0
value = 3705
ctrl = 0

[Statedef 3705]
type = A
movetype = A
physics = N
velset = 0, 0
ctrl = 0
sprpriority = 1

[State 0, TargetState]
type = TargetState
trigger1 = !time
value = 1116713

[State 105, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = -1
pausemovetime = 255
supermovetime = 255
ownpal = 1
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 105, Vel]
type = velset
trigger1 = 1
x = -2
y = -4+0.5*time

[State 105, Snd]
type = playsnd
trigger1 = time = 1
value = s0, 105

[State 105, End]
type = changestate
trigger1 = vel y > 0 && pos y >= -4
value = ifelse(prevstateno=3801,3802,ifelse(win,52,3706))

[Statedef 3706]
type = S
physics = S
movetype = A
anim = 1506
velset = 0, 0
ctrl = 0
poweradd = 0
sprpriority = 1
facep2 = 0
[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0
[State 0, playsnd]
type = playsnd
trigger1 = time = 1
value = s0, 800
persistent = 1
[State 52, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 52, Dust]
type = explod
trigger1 = !time
anim = 8102
ID = 8102
sprpriority = -2
postype = p1
scale = 0.75, 0.75
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 0, TargetBind]
type = Targetstate
trigger1 = !time
value = 1509

[State 0, TargetBind]
type = TargetBind
trigger1 = animelemtime(3)<0
pos = 80*const(size.xscale), 0

[State 0, TargetBind]
type = TargetBind
trigger1 = animelemtime(3)>=0 && animelemtime(4)<0
pos = 80*const(size.xscale), -190*const(size.yscale) + 140;*target,const(size.yscale)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animelemtime(3)=7+7*var(10)
value = 1506
elem = 4

[State 230, Snd]
type = playsnd
trigger1 = animelem = 5
value = 3, 1
channel = 0
[State 235, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 3
channel = 1

[State 240, Hit]
type = hitdef
trigger1 = !time
attr = S, HA
damage = 50, 0
animtype = Diagup
air.animtype = Back
fall.animtype = Back
hitflag = MAFD
priority = 4, Hit 
pausetime = ifelse(var(20), 2, 4), ifelse(var(20), 2, 4)
;sparkno = s7010 + (random % 8)
fall = 1
;guard.sparkno = s7000
;sparkxy = -10, -73
hitSound = -1 + 0 * (var(31) := 11)
guardSound = -1 + 0 * (var(32) := 0)
ID = 1504
ground.type = Low
ground.slidetime = 18
ground.velocity = -3, -6
yaccel = 0.8
ground.cornerpush.veloff = 0;ifelse(var(20), -6.82, -12.74)
air.type = Low
air.hittime = 120
air.velocity = -2.5, -18
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216) * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -143
envshake.time=12
envshake.ampl=Ifelse(random<=500,-4,4)

[State 1304, Shake]
type = envshake
trigger1 = movehit = 1 && numtarget
time = 18
freq = 120
ampl = 6
ignorehitpause = 1
[State 0, TargetState]
type = TargetState
trigger1 = movehit = 1 && numtarget(1504)
value = 1111150
ID = 1504
ignorehitpause = 0
persistent = 0

[State 105, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;======================< GIGANTIC BUSTER >=============================
; Gigantic Buster
[Statedef 3800]
type = S
physics = S
movetype = A
anim = 3800
ctrl = 0
poweradd = -2000 + ((var(53)>0)*1000)
juggle = 0;ifelse(p2movetype = A, 8, ifelse(numtarget, 15, 8))
sprpriority = 1
velset = 0, 0
facep2 = 0

[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,1,10)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,4,11)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,4,11)

[State 1000, Strength]
type = varset
trigger1 = !time
var(10) = 6

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3000, Super Pause FX]
type = helper
trigger1 = time = 1
helpertype = normal
stateno = 8510
ID = 8510
name = "Super Charge"
postype = p1
pos = floor(-1 * const(size.xscale)), floor(-150 * const(size.yscale))
ownpal = 1
persistent = 0
supermovetime = 9999
size.xscale = 1
size.yscale = 1
[State 3000, Super Pause]
type = superpause
trigger1 = time = 1
time = 43
movetime = 43
anim = -1
p2defmul = 1
darken = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S4,13
channel = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S4,13
channel = 3

[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && prevstateno != [3000,4999]
var(22)=ifelse(power<=2999,2,3)
[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && ((var(22) = [21,22])||(var(22) = [31,33])) && prevstateno = [3000,4999]
var(22)= -1

[State 0, Aerial or ground?]
type = VarSet
trigger1 = !time
var(37)= ifelse(pos y < 0,1,0)
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = !time && var(37)
statetype = A
physics = A
[State 1900, Turn]
type = turn
trigger1 = !time && !var(37)
trigger1 = p2dist x < 0
[State 0, VelSet]
type = VelSet
trigger1 = anim = 3800 && animelemtime(2)<0
x = 0
y = 0
[State 1100, Vel]
type = velset
trigger1 = anim = 3800 && var(37) && animelemtime(2)<0 && pos y >=-20
y = 0
[State 0, Remove Flashes from previous Super]
type = removeexplod
trigger1 = !time
ID = 3999

[State 1000, Powered Shell]
type = helper
trigger1 = !time && !numhelper(1159);||numhelper(1155)&&helper(1155),stateno=1156)
helpertype = normal
stateno = 1159
ID = 1155
name = "Powered Shell"
postype = p1
pos = 86*const(size.xscale),-135*const(size.yscale)
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 43
;supermovetime = 65535
ownpal = 1
[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <= 50
value = SCA
time = 1

[State 0, VelSet]
type = VelSet
trigger1 = anim = 3800 && animelemtime(2)>=0
x = 10.5
[State 0, VelSet]
type = VelSet
trigger1 = anim = 3800 && animelemtime(2)=0 && var(37)
y = -7

[State 3000, width]
type = width
trigger1 = anim = 3800
value = floor(50 * const(size.xscale))

[State 100, steps]
type = playsnd
trigger1 = anim = 3800 && animelemtime(2)=0 && !var(43)
value = 0, 105
[State 100, steps]
type = playsnd
trigger1 = anim = 3800 && animelemtime(2)=0
value = 5, 43
[State 105, Dust]
type = explod
trigger1 = anim = 3800 && animelemtime(2)=0 && !var(37)
ID = 8130
anim = 8130
postype = p1
pos = 45, 10
persistent = 1
removetime = -2
supermovetime = 0
sprpriority = 4
ownpal = 1
scale = 0.25,0.125
removeongethit = 1

[State 800, Hit]
type = hitdef
trigger1 = time>=43 && p2dist x >= 0 && p2bodydist x <= 20 && !var(37) && (enemynear, movetype != H || enemynear, stateno = [120,155])
attr = S, HT
hitflag = M-
priority = 6, Miss
numhits = 1
ground.hittime= 4
guardsound = s2, 0
sparkNo = -1 + 0 * (var(33) := -1)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
hitsound = s0, 800
p2facing = 1
guard.dist = 0
fall = 0
ID = 1501
air.fall = 0
fall.recover = 0
forcestand = 0
fall.recovertime = 120

[State 800, Hit]
type = hitdef
trigger1 = !time && var(37) && (enemynear, movetype != H || enemynear, stateno = [120,155])
attr = S, HT
hitflag = AF
priority = 4, Hit
numhits = 1
ground.hittime= 4
guardsound = s2, 0
sparkNo = -1 + 0 * (var(33) := -1)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
hitsound = s0, 800
p2facing = 1
ID = 1501
guard.dist = 0
fall = 0
air.fall = 0
fall.recover = 0
forcestand = 0
fall.recovertime = 120

[State 800, Hit]
type = hitdef
trigger1 = time>=43 && p2dist x >= 0 && p2bodydist x <= 20 && !var(37) && enemynear, movetype = H && enemynear, stateno != [120,155]
attr = S, HT
hitflag = MAF
priority = 6, Miss
numhits = 1
ground.hittime= 4
guardsound = s2, 0
sparkNo = -1 + 0 * (var(33) := -1)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
hitsound = s0, 800
p2facing = 1
ID = 1501
guard.dist = 0
fall = 0
air.fall = 0
fall.recover = 0
forcestand = 0
fall.recovertime = 120

[State 800, Hit]
type = hitdef
trigger1 = !time && var(37) && enemynear, movetype = H && enemynear, stateno != [120,155]
attr = S, HT
hitflag = MAF
priority = 4, Hit
numhits = 1
ground.hittime= 4
guardsound = s2, 0
sparkNo = -1 + 0 * (var(33) := -1)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
hitsound = s0, 800
p2facing = 1
ID = 1501
guard.dist = 0
fall = 0
air.fall = 0
fall.recover = 0
forcestand = 0
fall.recovertime = 120

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit && numtarget(1501)
value = 3801
ctrl = 0

[State 3800, Missed]
type = ChangeAnim
trigger1 = anim = 3800 && animelemtime(2) >= ifelse(var(37),25,20)
value = ifelse(var(37),1505,3801)
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 1505 || anim = 3801
trigger1 = animelem = 1
movetype = I
[State 800, misssnd]
type = playsnd
trigger1 = anim = 3801
trigger1 = animelem = 1
value = 4, 31
channel = 0
[State 800, misssnd]
type = playsnd
trigger1 = anim = 3801
trigger1 = animelem = 1
value = 4, 31
channel = 2

[State 0, PlayerPush]
type = PlayerPush
trigger1 = anim = 3800
value = 0
[State 0, VelMul]
type = VelMul
trigger1 = anim = 1505
x = 0.95
[State 0, AngleDraw]
type = AngleDraw
trigger1 = anim = 3800 && animelemtime(2)>=0 && var(37)
value = 15
[State 101, Dust]
type = explod
trigger1 = anim = 3801 && vel x && !(time%2)
anim = 8104
sprpriority = 3
postype = p1
pos = 40, 10
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 100, Dust]
type = playsnd
trigger1 = anim = 3801
value = s0, 101
persistent = 0
[State 0, ChangeState]
type = ChangeState
trigger1 = anim = 3801 && !animtime
value = 0
ctrl = 1

[Statedef 3801]
type = S;A
physics = N
movetype = A
anim = 1501
ctrl = 0
velset = 2, -8
poweradd = 0
sprpriority = -2
facep2 = 0
[State 0, Gravity]
type = Gravity
trigger1 = anim = 1501
[State 0, Hand]
type = Explod
trigger1 = !time
ID = 3999
anim = 1511
postype = p1
pos = 0,0
bindtime = -1
removetime = -1
sprpriority = 2
supermovetime = -1
ownpal = 0
scale = const(size.xscale),const(size.xscale)
removeongethit = 1
[State 0, TargetBind]
type = Targetstate
trigger1 = !time
value = 1507
[State 0, TargetBind]
type = TargetBind
trigger1 = anim = 1501
time = 1
pos = 112*const(size.xscale),-119*const(size.yscale)+80;*target,const(size.yscale)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 1501 && vel y > 0 && pos y >=0
value = 1502
elem = 1
[State 0, TargetBind]
type = Targetlifeadd
trigger1 = anim = 1502 && animelemtime(1)=0
value = (-90*const(data.attack)*0.01)*(target, const(data.defence)*0.01)*(const(data.attack)*0.01)*(const(data.attack)*0.01)*fvar(12)*fvar(12)*fvar(12)
kill = 0
[State 195, Shake]
type = envshake
trigger1 = anim = 1502 && animelemtime(1)>=18
trigger1 = !(animelemtime(1) % 6)
time = 6
freq = 120
ampl = 3; -ceil(animelemtime(1) * 0.1)
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 1502
trigger1 = !(animelemtime(1) % 12)
value = S5,50
channel = 5
[State 0, HitAdd]
type = HitAdd
trigger1 = anim = 1502
trigger1 = !(animelemtime(1) % 12)
value = 1
[State 0, HitAdd]
type = statetypeset
trigger1 = anim = 1502 && animelemtime(1) = 0
statetype = S

[State 1800, Dust]
type = explod
trigger1 = anim = 1502 && animelemtime(1) = 0
anim = 8112;7107
ID = 7160
sprpriority = 0
postype = p1
pos = 73*const(size.xscale),-pos y
scale = 0.5, 0.5;0.38, 0.2
ownpal = 1
[State 1800, Dust]
type = explod
trigger1 = anim = 1502 && animelemtime(1) = 0
anim = 8113;7107
ID = 7160
sprpriority = 0
postype = p1
pos = 0,-pos y
scale = 0.5, 0.5;0.38, 0.2
ownpal = 1
;[State 101, Dust]
;type = explod
;trigger1 = anim = 1502 && !(animelemtime(1)%3)
;anim = 8104
;sprpriority = 1
;postype = p1
;pos = 73*const(size.xscale), -pos y
;vel = 0, 0
;scale = 0.5, 0.5
;pausemovetime = -1
;supermovetime = -1
;ownpal = 1
[State 1800, Dust]
type = explod
trigger1 = anim = 1502 && animelemtime(1) = 0
anim = 8106;7107
ID = 7240
sprpriority = -1
postype = p1
pos = 73*const(size.xscale),-pos y
scale = 1, 1;0.38, 0.2
ownpal = 1

[State 1304, Shake]
type = envshake
trigger1 = anim = 1502 && animelemtime(1) = 0
time = 18
freq = 120
ampl = 6
[State 1405, flames]
type = helper
trigger1 = anim = 1502 && numhelper(7181) < 1
helpertype = normal
stateno = 7181
ID = 7181
name = "flames"
postype = p2
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = anim = 1502 && animelemtime(1)=0
value = 2
[State 0, TargetBind]
type = Targetstate
trigger1 = anim = 1502 && animelemtime(1)=0
value = 1508
[State 1304, Snd]
type = playsnd
trigger1 = anim = 1502 && animelemtime(1)>=0
value = s5, 0
ignorehitpause = 1
persistent = 0
channel = 4
[State 1304, Snd]
type = playsnd
trigger1 = anim = 1502 && animelemtime(1)>=0
value = s5, 4
ignorehitpause = 1
persistent = 0
[State 0, TargetBind]
type = TargetBind
trigger1 = anim != 1501
time = 1
pos = 53*const(size.xscale),-18*const(size.yscale)+80;*target,const(size.yscale)
[State 0, VelSet]
type = Velset
trigger1 = anim != 1501
x = 6.5
y = 0
[State 0, PosSet]
type = PosSet
trigger1 = anim= 1502
y = -10
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
[State 1000, width]
type = width
trigger1 = 1
value = floor(ifelse(anim=1501,80,50) * const(size.xscale))

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = anim != 1501 && numexplod(3999)
id = 3999

[State 0, ChangeAnim]
type = Changeanim
trigger1 = anim = 1502 && animelemtime(1)>=80
value = 1503

[State 0, TargetBind]
type = Targetlifeadd
trigger1 = anim = 1502 || anim = 1503
value = -1
kill = 0

[State 0, ChangeAnim]
type = Changestate
trigger1 = anim = 1503 && animelemtime(2)>=0
value = 3705
ctrl = 0

[Statedef 3802]
type = A
physics = N
movetype = I
anim = 1400
ctrl = 0
poweradd = 0
velset = 0, 0
sprpriority = 1
facep2 = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0
[State 0, playsnd]
type = playsnd
trigger1 = time = 1
value = s0, 800
persistent = 1
[State 52, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 52, Dust]
type = explod
trigger1 = !time
anim = 8102
ID = 8102
sprpriority = -2
postype = p1
scale = 0.75, 0.75
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1300, Accel]
type = gravity
trigger1 = animelemtime(1) > 1

[State 1300, Snd]
type = playsnd
trigger1 = !time
value = s0, 41
;[State 1300, Snd]
;type = playsnd
;trigger1 = !time
;value = s5, 43
[State 1300, Snd]
type = playsnd
trigger1 = !time
value = 3, 2
channel = 0
[State 1300, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1300, Vel]
type = velset
trigger1 = animelem = 1
x =  2 + (0.076 * p2bodydist x / 2.5)
y = -10

[State 0, VelMul]
type = Veladd
trigger1 = vel y > 0
y = 0.2

[State 1300, goujin]
type = changestate
trigger1 = time = 20
value = 3803

[Statedef 3803]
type = A
movetype = A
physics = N
juggle = 0
anim = 1400
poweradd = 0
sprpriority = 1
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 1401

[State 0, VelSet]
type = VelSet
trigger1 = !time
y = -4
[State 1303, Accel]
type = gravity
trigger1 = 1
[State 1304, Pos]
type = playerpush
trigger1 = !movecontact
value = 0
[State 1300, Snd]
type = playsnd
trigger1 = animelem = 3
value = s1, 6

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(3)>=0
y = 15
x = ifelse(prevstateno=1410,0,ifelse(vel x<0,-1.5,4.5))

[State 1303, Hit]
type = hitdef
trigger1 = animelem = 3
attr = A, SA
damage = 80, 8
animtype = Hard
guardflag = H
hitflag = MAF
ID = 1401
priority = 4, Hit
pausetime = ifelse(var(20), 3, 6), ifelse(var(20), 2, 4)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkxy = -10+ 0 * (var(35) := 0), var(36) := -30
hitSound = -1 + 0 * (var(31) := 6)
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -vel x, 10
air.type = Low
air.velocity = -vel x, 12
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
fall.yvelocity = 0
givePower = 0.5 * 200
p2facing = 1
envshake.time = 12
envshake.freq = 120
envshake.ampl = 5
fall = 1
fall.recover = 0
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 0
airguard.cornerpush.veloff = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = movehit && numtarget
value = 0
ignorehitpause = 1

[State 1303, End]
type = changestate
trigger1 = pos y >= 0 && vel y > 0
value = 3804

[Statedef 3804]
type = C
movetype = A
anim = 1404
physics = C
velset = 0, 0
juggle = 0
ctrl = 0
sprpriority = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1304, Pos]
type = posset
trigger1 = 1
y = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = prevstateno = 3803 && !time
value = S4,6
channel = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = prevstateno = 3803 && !time
value = S4,6
channel = 3
[State 1304, Snd]
type = playsnd
trigger1 = !time
value = s5, 0
ignorehitpause = 1
[State 52, Snd]
type = playsnd
trigger1 = !time
value = s5, 4
ignorehitpause = 1
[State 1304, Hit]
type = hitdef
trigger1 = !time
attr = C, HA
damage = 90, 11
animtype = Hard
hitflag = MAFD
priority = 4, Hit
pausetime = ifelse(var(20), 12, 24), ifelse(var(20), 12, 24)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkxy = -10+ 0 * (var(35) := 0), var(36) := 0
hitSound = -1 + 0 * (var(31) := ifelse(prevstateno=1460,6,11))
guardsound = s2, 0
ground.type = High
ground.slidetime = 12
ID = 1461
ground.slidetime = 16
ground.hittime = 16
air.type = Low
air.velocity = -7, 7
down.velocity = 0, 0
down.bounce = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0
givePower = 0.5 * 36, 36
envshake.time = 12
envshake.freq = 120
envshake.ampl = 6
fall = 1
fall.recover = 0
forcestand = 0
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
airguard.velocity = -8, -1.5
kill = 0

[State 0, TargetState]
type = TargetState
trigger1 = movehit = 1 && numtarget(1461)
value = 1111190+(prevstateno=3806)*1
ID = 1461
ignorehitpause = 0
persistent = 1
[State 0, PlayerPush]
type = PlayerPush
trigger1 = numtarget(1461)
value = 0
ignorehitpause = 1
[State 0, TargetState]
type = TargetBind
trigger1 = movehit = 1 && numtarget(1461)
pos = 0,0
ID = 1461
ignorehitpause = 1
persistent = 1

[State 1800, Dust]
type = explod
trigger1 = animelem = 1
anim = 8112;7107
ID = 7160
sprpriority = 0
postype = p1
pos = 0, 0
scale = 0.5, 0.5;0.38, 0.2
ownpal = 1
[State 1800, Dust]
type = explod
trigger1 = animelem = 1
anim = 8106;7107
ID = 7240
sprpriority = -1
postype = p1
pos = 0, 0
scale = 1, 1;0.38, 0.2
ownpal = 1

[State 1304, Shake]
type = envshake
trigger1 = !time
time = 18
freq = 120
ampl = 6
[State 1304, End]
type = changestate
trigger1 = !animtime
value = ifelse(prevstateno=3803,3805,3807)
ctrl = 0

[Statedef 3805]
type = A
physics = N
movetype = I
anim = 1400
ctrl = 0
poweradd = 0
velset = 0, 0
sprpriority = 1
facep2 = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1300, Accel]
type = gravity
trigger1 = animelemtime(1) > 1
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
[State 1111150, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 1
[State 1300, Snd]
type = playsnd
trigger1 = !time
value = s0, 41
;[State 1300, Snd]
;type = playsnd
;trigger1 = !time
;value = 3, 2
;channel = 0
[State 1300, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1300, Vel]
type = velset
trigger1 = animelem = 1
y = -12.5

[State 0, VelMul]
type = Veladd
trigger1 = vel y > 0
y = 0.2

[State 1300, goujin]
type = changestate
trigger1 = time = 20
value = 3806


; 
[Statedef 3806]
type = A
movetype = A
physics = N
juggle = 0
anim = 1400
poweradd = 0
sprpriority = 1
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 1403

[State 0, VelSet]
type = VelSet
trigger1 = !time
y = -4
[State 1303, Accel]
type = gravity
trigger1 = 1
[State 1304, Pos]
type = playerpush
trigger1 = !movecontact
value = 0
[State 1300, Snd]
type = playsnd
trigger1 = animelem = 3
value = s1, 6

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(3)>=0
y = 15

[State 1303, End]
type = changestate
trigger1 = pos y >= 0 && vel y > 0
value = 3804

[Statedef 3807]
type = A
physics = N
movetype = I
anim = 1400
ctrl = 0
poweradd = 0
velset = 0, 0
sprpriority = 1
facep2 = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = vel y <=0
value = SCA
time = 1

[State 1300, Accel]
type = veladd
trigger1 = anim = 1400 && animelemtime(1) > 1
y = 0.5
[State 0, PlayerPush]
type = PlayerPush
trigger1 = anim = 1400
value = 0
[State 1111150, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = ifelse(numhelper(3821),0,1), ifelse(numhelper(3821),0,1)
[State 1300, Snd]
type = playsnd
trigger1 = !time
value = s0, 41
[State 1300, Snd]
type = playsnd
trigger1 = !time
value = 3, 2
channel = 0
[State 1300, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1300, Vel]
type = velset
trigger1 = anim = 1400 && animelem = 1
y = -16.5

[State 0, VelMul]
type = Veladd
trigger1 = anim = 1400 && vel y > 0
y = 0.2

[State 1300, goujin]
type = changeanim
trigger1 = time = 20
value = 3802

[State 1300, goujin]
type = statetypeset
trigger1 = time = 20
physics = A


[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,1,10)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,4,11)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,4,11)

[State 0, VarSet]
type = VarSet
trigger1 = anim = 3802 && animelemtime(1) = 0
var(12)= vel y
[State 0, VelSet]
type = VelSet
trigger1 = anim = 3802 && animelemtime(5)<0
x = 0
y = (0.2*var(11))-var(11)*0.005*time
ignorehitpause = 1
persistent = 1
[State 0, VelSet]
type = VelSet
trigger1 = anim = 3802 && animelemtime(5)=0
x = 0
y = -20
ignorehitpause = 1
persistent = 1

[State 0]
type = Explod
trigger1 = anim = 3802 && animelemtime(1) = 0
ID = 1000
anim = 1095
postype = p1
pos = -34*const(size.xscale),-223*const(size.yscale)
bindtime = -1
removetime = 36
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0]
type = Explod
trigger1 = anim = 3802 && animelemtime(1) = 0
ID = 1000
anim = 1096
postype = p1
pos = -34*const(size.xscale),-223*const(size.yscale)
bindtime = -1
removetime = 36
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = anim = 3802 && animelemtime(2)>=0
ID = 1000
postype = p1
pos = -3*const(size.xscale),-228*const(size.yscale)


[State 1000, Snd]
type = playsnd
trigger1 = anim = 3802 && animelemtime(1) = 0
value = 5, 53

[State 1000, Snd]
type = playsnd
trigger1 = anim = 3802 && animelemtime(3) = 0
value = 5, 24
[State 0, VelSet]
type = VelSet
trigger1 = vel y >= 12
y = 14

[State 1000, Blaster Shot]
type = helper
trigger1 = anim = 3802 && animelemtime(3) = 0
helpertype = normal
stateno = 3822
ID = 3821
name = "Blaster Shot"
postype = p1
pos = 47*const(size.xscale),-67*const(size.yscale)
size.xscale = 1
size.yscale = 1
ownpal = 1

;======================< GIGANTIC METEOR >=============================
; Gigantic Meteor
[Statedef 3900]
type = A
physics = N
movetype = A
anim = 3900
ctrl = 0
velset = 0, 0
poweradd = -2000 + ((var(53)>0)*1000)
sprpriority = 1
;facep2 = 1

[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,3,16)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,6,13)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,6,13)

[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && prevstateno != [3000,4999]
var(22)=ifelse(power<=2999,2,3)
[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && ((var(22) = [21,22])||(var(22) = [31,33])) && prevstateno = [3000,4999]
var(22)= -1

[State 3000, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5
[State 3000, width]
type = width
trigger1 = !time
value = floor(40 * const(size.xscale))

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3000, Super Pause FX]
type = helper
trigger1 = animelemtime(5)=0
helpertype = normal
stateno = 8510
ID = 8510
name = "Super Charge"
postype = p1
pos = floor(-35 * const(size.xscale)), floor(-154 * const(size.yscale))
ownpal = 1
persistent = 0
supermovetime = 9999
size.xscale = 1
size.yscale = 1
[State 3000, Super Pause]
type = superpause
trigger1 = time = 1
time = 110
movetime = 110
anim = -1
p2defmul = 1
darken = 0

[State 0, Energy Charge]
type = Explod
trigger1 = anim = 3900 && animelem = 5
ID = 1000
anim = 1095
postype = p1
pos = floor(-35 * const(size.xscale)), floor(-154 * const(size.yscale))
bindtime = -1
removetime = 43
supermovetime = 43
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0, Energy Charge]
type = Explod
trigger1 = anim = 3900 && animelem = 5
ID = 1000
anim = 1096
postype = p1
pos = floor(-35 * const(size.xscale)), floor(-154 * const(size.yscale))
bindtime = -1
removetime = 43
supermovetime = 43
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 740, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 6025
ID = 6025
name = "Enviroment Color Distortion"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 1000
anim = 1095
postype = p1
pos = floor(95 * const(size.xscale)), floor(-123 * const(size.yscale))
bindtime = -1
removetime = 36
supermovetime = 36
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 1000
anim = 1096
postype = p1
pos = floor(95 * const(size.xscale)), floor(-123 * const(size.yscale))
bindtime = -1
removetime = 36
supermovetime = 36
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 1000
anim = 1096
postype = p1
pos = floor(95 * const(size.xscale)), floor(-123 * const(size.yscale))
bindtime = -1
removetime = 36
supermovetime = 36
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
;
;[State 0, Energy Charge] ; (Doesn't really look good, so I simply removed it).
;type = Explod
;trigger1 = !time
;ID = 1000
;anim = 3901
;postype = p1
;pos = 0, 0
;bindtime = -1
;removetime = -2
;supermovetime = 54
;sprpriority = 2
;ownpal = 1
;scale = 0.5*const(size.xscale),0.5*const(size.yscale)
;removeongethit = 1

[State 0, Remove Flashes from previous Super]
type = removeexplod
trigger1 = !time
ID = 3999
[State Flashes]
type = Explod
trigger1 = !time
ID = 3999
anim = 3902
postype = p1
pos = 0,0
bindtime = -1
removetime = -1
sprpriority = 2
supermovetime = 111
ownpal = 1
scale = 0.5*const(size.xscale),0.5*const(size.yscale)
removeongethit = 1

[State Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 3000, NHB]
type = nothitby
trigger1 = anim = 3900 && animelemtime(9) < 0
time = 1
value = SCA
[State 0, VelSet]
type = VelSet
trigger1 = anim = 3900 || anim = 3300
x = 0
y = 0

[State 3000, Gigantic Meteor]
type = helper
trigger1 = anim = 3900 && animelem = 8
helpertype = normal
stateno = 3905
ID = 3905
name = "Gigantic Meteor"
postype = p1
;pos = floor(140 * const(size.xscale)), floor(-214 * const(size.yscale))
pos = 55, floor(-105 * const(size.yscale))
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
;
;[State 0, DUSTO]
;type = Explod
;trigger1 = animelem = 4
;ID = 8120
;anim = 8120
;postype = p1
;pos = 60, 0
;removetime = -2
;supermovetime = 0
;sprpriority = 4
;ownpal = 1
;scale = 0.25,0.25
;removeongethit = 1

[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 4, 32
channel = 0
[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 4, 32
channel = 3
[State 3000, Snd]
type = playsnd
trigger1 = time = 106
value = 3, 28
channel = 0
[State 3000, Snd]
type = playsnd
trigger1 = time = 106
value = 3, 28
channel = 3
[State 3000, Snd]
type = playsnd
trigger1 = anim = 3900 && animelem = 8
value = 5, 24

[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 5, 34

[State 3000, End]
type = changeanim
trigger1 = anim = 3900 && animelemtime(8)=0
value = 3300
elem = 8
[State 3000, End]
type = changeanim
triggerall = anim = 3300
trigger1 = time >= 240
trigger2 = numhelper(3905)
trigger2 = helper(3905), stateno != 3905
value = 3301
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 3301 && animelemtime(1)=0
movetype = I
physics = A

[State 0, Remove Flashes]
type = removeexplod
trigger1 = anim=3301&&animelemtime(1)=0
ID = 3999
[State Flashes Fading]
type = Explod
trigger1 = anim=3301&&animelemtime(1)=0
ID = 3999
anim = 3303
postype = p1
pos = 0,0
bindtime = -1
removetime = -2
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5*const(size.xscale),0.5*const(size.yscale)
removeongethit = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = anim = 3301
trigger1 = animelemtime(1)=0
y = -6
x = -2



;======================< BLASTER METEOR >=============================
; Blaster Meteor
[Statedef 4000]
type = A
physics = N
movetype = A
anim = 710
ctrl = 0
velset = 0, 0
poweradd = -3000 + ((var(53)>0)*1000)
sprpriority = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 710 && !animtime
value = 4000
[State 720, Snd]
type = playsnd
trigger1 = !time
value = 5, 13

[State -3, Energy Color]
type = remappal
trigger1 = time =24 && (var(44)=1 || var(44)=3)
source = 4050, 35
dest = 4050, ifelse(var(44)=1,1,10)
[State -3, Energy Color]
type = remappal
trigger1 = time =24 && (var(44)=1 || var(44)=3)
source = 4050, 27
dest = 4050, ifelse(var(44)=1,4,11)
[State -3, Energy Color]
type = remappal
trigger1 = time =24 && (var(44)=1 || var(44)=3)
source = 4050, 32
dest = 4050, ifelse(var(44)=1,4,11)

[State 3000, SuperCancelEnds]
type = VarSet
trigger1 = !time
var(22)=0

[State 0, Aerial or ground?]
type = VarSet
trigger1 = !time
var(37)= 1
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 4000 && animelemtime(1)=0 && var(37)
statetype = A
physics = A
[State 0, VelSet]
type = VelSet
trigger1 = anim = 4000 || anim = 4001 && animelemtime(3)<0
x = 0
y = 0
[State 0, PosSet]
type = PosSet
trigger1 = anim = 710 && animelemtime(4)>=0
trigger2 = anim = 4000
x = 0
y = -90
[State 3000, Snd]
type = playsnd
trigger1 = anim = 4000 && animelemtime(1)=0
value = 5, 44
;
;[State 3000, Snd]
;type = playsnd
;trigger1 = !time
;value = 5, 44

[State 1900, Turn]
type = turn
trigger1 = !time && !var(37)
trigger1 = p2dist x < 0

[State 3000, Strength]
type = varset
trigger1 = var(10) != 7
var(10) = 7
[State 3000, width]
type = width
trigger1 = !time
value = floor(40 * const(size.xscale))

[State Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3000, Super Pause FX]
type = helper
trigger1 = time = 160
helpertype = normal
stateno = 8520
ID = 8520
name = "Super Charge"
postype = p1
pos = floor(0 * const(size.xscale)), floor(-101 * const(size.yscale))
ownpal = 1
persistent = 0
facing = facing
supermovetime = 9999
size.xscale = 1
size.yscale = 1
[State 3000, Super Pause]
type = superpause
trigger1 = time = 1
time = 199
movetime = 199
anim = -1
p2defmul = 1
darken = 0
[State 0, ModifyExplod]
type = removeexplod
trigger1 = anim != 4000
ID = 3999
[State 740, FX]
type = helper
trigger1 = anim = 4000 && animelemtime(1)=0
helpertype = normal
stateno = 6000
ID = 6000
name = "LSSJ Aura"
postype = p1
size.xscale = 0.45
size.yscale = 0.45
;pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 740, FX]
type = helper
trigger1 = anim = 4000 && animelemtime(1)=0
helpertype = normal
stateno = 6025
ID = 6025
name = "Enviroment Color Distortion"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 4001, fadeout]
type = bgpalfx
trigger1 = anim = 4000 && time>=200
time = 1
add = -128, -128, -128
sinadd = 0, 0, 0, 1
persistent = 1
[State 4001, fadeout]
type = bgpalfx
trigger1 = time = 32
time = 128
sinadd = -128, -128, -128, 512
[State 4001, fadeout]
type = assertspecial
trigger1 = anim = 4000 && time>=200
flag = nofg
persistent = 1
[State 0, Energy Charge]
type = Explod
trigger1 = time = 24
ID = 3999
anim = 4004
postype = p1
pos = 0, 0
bindtime = -1
removetime = 376
supermovetime = 176
sprpriority = 5
ownpal = 1
scale = 0.5 * const(size.xscale), 0.5 * const(size.yscale)
removeongethit = 1
[State 1000, Powered Shell]
type = helper
trigger1 = time = 24
helpertype = normal
stateno = 1159
ID = 1155
name = "Powered Shell"
postype = p1
pos = 86*const(size.xscale),-135*const(size.yscale)
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 176
;supermovetime = 65535
ownpal = 1

[State 3025, particles]
type = explod
trigger1 = numhelper(4005)
trigger1 = anim = 4000
trigger1 = time >= 200
trigger1 = helper(4005), stateno = 4005
vel = (helper(4005),var(11)), (helper(4005),var(12))
accel = ((helper(4005),var(11))*0.05), ((helper(4005),var(12))*0.05)
anim = 1007 + var(56)*7993
sprpriority = ifelse(random<500,-3,3)
postype = p1
pos = 0, floor(-80 * const(size.yscale))
removetime = 200
random = 40, 20
facing = -1 + (random < 500) * 2
vfacing = -1 + (random < 500) * 2
scale = 0.5, 0.5
ownpal = 1
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 4001
movetype = I
[State 3000, NHB]
type = nothitby
trigger1 = anim = 710
trigger2 = anim = 4000 ;&& animelemtime(8) < 0
time = 1
value = SCA
;
;[State 3000, NHB]
;type = nothitby
;trigger1 = anim = 3200 && animelemtime(8) >= 0
;trigger2 = anim != 3200 && animelemtime(1) <= 4
;time = 1
;value = , AP

[State 3000, Blaster Meteor]
type = helper
trigger1 = time = 200
helpertype = normal
stateno = 4005
ID = 4005
name = "Blaster Meteor"
postype = p1
pos = 0, floor(-80 * const(size.yscale))
size.xscale = 0.75
size.yscale = 0.75
ownpal = 1

[State 0, Stop voice from previous move]
type = stopSnd
trigger1 = !time
channel = 3
[State 3000, Voice]
type = playsnd
trigger1 = anim = 4000 && animelemtime(1)=0
value = 3, 14
channel = 0

[State 3000, Snd]
type = playsnd
trigger1 = time = 200
;value = 5, 33
value = s5+var(56)*8995, 33+var(56)*66

[State 3000, End]
type = changeanim
trigger1 = time = 400 || anim = 4000 && numhelper(4005) && helper(4005), stateno != 4005
value = 4001
[State 0, SprPriority]
type = SprPriority
trigger1 = time = 200 || anim !=4000
value = ifelse(time=200,4,1)
ignorehitpause = 1
persistent = 1

[State 3000, End]
type = changestate
trigger1 = anim = 4002 && !animtime
value = 0
ctrl = 1
[State 1210, End]
type = changestate
trigger1 = anim = 4001 && animelemtime(4) > 0 && vel y > 0 && pos y >= 0
value = 52


;======================< OMEGA BLASTER >=============================
; Omega Blaster
[Statedef 4100]
type = S
physics = S
movetype = A
anim = 4100
ctrl = 0
velset = 0, 0
poweradd = -3000 + ((var(53)>0)*1000)
sprpriority = 1
facep2 = 0

[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,1,10)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,4,11)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,4,11)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3,16
channel = 0
[State 0, PlaySnd]
type = stopSnd
trigger1 = !time
channel = 3
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S7,13
;
;[State 170, Camera]
;type = helper
;trigger1 = !numhelper(7652)
;helpertype = normal
;stateno = 7652
;ID = 7652
;name = "Camera"
;postype = p1
;pos = 0,0
;facing = 1

[State 3000, SuperCancelEnds]
type = VarSet
trigger1 = !time
var(22)=0

[State 0, Aerial or ground?]
type = VarSet
trigger1 = !time
var(37)= ifelse(pos y < 0,1,0)
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = !time && var(37)
statetype = A

[State 1900, Turn]
type = turn
trigger1 = !time && !var(37)
trigger1 = p2dist x < 0

[State 3000, Strength]
type = varset
trigger1 = var(10) != 7
var(10) = 7

[State Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3000, Super Pause FX]
type = helper
trigger1 = time = 60
helpertype = normal
stateno = 8520
ID = 8520
name = "Super Charge"
postype = p1
pos = ceil(12 * const(size.xscale)), ceil(-140 * const(size.yscale))
ownpal = 1
facing = facing
persistent = 0
supermovetime = 9999
size.xscale = 1
size.yscale = 1
[State 3000, Super Pause]
type = superpause
trigger1 = time = 1
time = 103
movetime = 103
anim = -1
p2defmul = 1
darken = 0
[State 1000, Powered Shell]
type = helper
trigger1 = !time && !numhelper(1159);||numhelper(1155)&&helper(1155),stateno=1156)
helpertype = normal
stateno = 1159
ID = 1155
name = "Powered Shell"
postype = p1
pos = 86*const(size.xscale),-135*const(size.yscale)
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 43
;supermovetime = 65535
ownpal = 1
[State 740, Rushing Aura]
type = helper
trigger1 = !time
helpertype = normal
stateno = 6000
ID = 6000
name = "LSSJ Aura"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
;pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 100
value = 4101
[State 0, VelSet]
type = VelSet
trigger1 = anim = 4101;|| anim = 3203 && animelemtime(4)<0
x = ifelse(animelemtime(2)>=0,20,0)
y = 0
[State 740, Rushing Aura]
type = helper
trigger1 = anim = 4101 && animelemtime(1)=0 && !numhelper(6002)
helpertype = normal
stateno = 6002
ID = 6002
name = "LSSJ Aura"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
;pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 0, DUSTO]
type = Explod
triggerall = !var(37)
trigger1 = anim = 4101 && vel x
trigger1 = time && !(time%6)
trigger2 = anim = 4101 && animelemtime(2)=0
ID = 8130
anim = 8130
postype = p1
pos = 45, 10
persistent = 1
removetime = -2
supermovetime = 0
sprpriority = 4
ownpal = 1
scale = 0.25,0.125
removeongethit = 1
[State 101, Dust]
type = explod
trigger1 = anim = 3401 && !(time%2) && vel x && !var(37)
anim = 8104
sprpriority = 3
postype = p1
pos = 40, 10
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 101, Dust]
type = explod
trigger1 = anim = 3401 && !(time%2) && vel x && !var(37)
anim = 8104
sprpriority = 3
postype = p1
pos = -30, 10
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 100, Dust]
type = playsnd
trigger1 = anim = 4101 && !var(37)
value = s0, 101
persistent = 0
[State 0, PlayerPush]
type = PlayerPush
trigger1 = anim = 4100 && animelemtime(2)>=0 && !moveguarded
value = 0
ignorehitpause = 0
[State 100, Dust]
type = playsnd
trigger1 = anim = 4101 && animelemtime(2)=0
value = s5, 43
persistent = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4101 && animelemtime(2)=0
value = S5,27
[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <= 118
value = SCA
time = 1

[State 3005, Hit]
type = hitdef
trigger1 = !time && !var(37)
priority = 4, Hit
attr = S, HA
damage = ceil(120 * (fvar(12))), 16
animtype = diagup
hitflag = MAF
guardflag = M
kill = 0
pausetime = 0, 0
hitSound = -1 + 0 * (var(31) := 11)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 73), var(36) := -101
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, -3
yaccel = 0.05
ground.cornerpush.veloff = 0
air.velocity = 0, -3
guard.velocity = -10.52
p2facing = 1
fall = 1
air.fall = 1
ID = 4100
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 0
palfx.color = ifelse((var(44)=2),50,128)
palfx.sinadd=ifelse(var(44)=2,50,ifelse(var(44)=1||var(44)=3,64,0)),ifelse(var(44)=2,25,ifelse(var(44)=1,0,64)),ifelse(var(44)=2,80,ifelse(var(44)=1,64,0)),ifelse(var(44)=2,8,4)
palfx.mul = ifelse((var(44)=[2,3]),192,ifelse(var(44)=1,192,0)), ifelse((var(44)=2),256,ifelse(var(44)=1,0,ifelse(var(44)=3,128,192))), ifelse(var(44)=3,0,ifelse((var(44)=2),512,96))
palfx.time = 256

[State 3005, Hit]
type = hitdef
trigger1 = !time && var(37)
priority = 4, Hit
attr = A, HA
damage = ceil(120 * (fvar(12))), 4
animtype = diagup
hitflag = MAF
guardflag = H
kill = 0
pausetime = 0, 0
hitSound = -1 + 0 * (var(31) := 11)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 73), var(36) := -101
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, -3
yaccel = 0.05
ground.cornerpush.veloff = 0
air.velocity = 0, -3
guard.velocity = -10.52
p2facing = 1
fall = 1
air.fall = 1
ID = 4100
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 0
palfx.color = ifelse((var(44)=2),50,128)
palfx.sinadd=ifelse(var(44)=2,50,ifelse(var(44)=1||var(44)=3,64,0)),ifelse(var(44)=2,25,ifelse(var(44)=1,0,64)),ifelse(var(44)=2,80,ifelse(var(44)=1,64,0)),ifelse(var(44)=2,8,4)
palfx.mul = ifelse((var(44)=[2,3]),192,ifelse(var(44)=1,192,0)), ifelse((var(44)=2),256,ifelse(var(44)=1,0,ifelse(var(44)=3,128,192))), ifelse(var(44)=3,0,ifelse((var(44)=2),512,96))
palfx.time = 256
envshake.time=12
envshake.ampl=Ifelse(random<=500,-4,4)

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 0, Remove Flashes from previous Super]
type = removeexplod
trigger1 = !time
ID = 3999

[State 0, TargetState]
type = TargetState
trigger1 = movehit = 1 && numtarget(4100)
value = 1111151
ID = 4100
ignorehitpause = 1
persistent = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = anim = 4101 && !moveguarded
value = 0
ignorehitpause = 1
[State 0, End]
type = changestate
trigger1 = movehit = 1 && numtarget
value = 4101
ignorehitpause = 1
ctrl = 0
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 128
value = ifelse(var(37),3301,3401)
elem = ifelse(var(37),2,1)
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 3301 || anim = 3401
movetype = I        ;I,A,H
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 3301
physics = A         ;A,C,S,N
[State 0, End]
type = changestate
trigger1 = anim = 3401 && !animtime
value = 0
ctrl = 1

[Statedef 4101]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = !time && var(37)
statetype = A
[State 3005, Hit]
type = hitdef
trigger1 = time = 2 && !var(37)
priority = 4, Hit
attr = S, HA
damage = ceil(120 * (fvar(12))), 4
animtype = diagup
hitflag = MAF
;guardflag = M
kill = 0
pausetime = 0, 0
hitSound = -1 + 0 * (var(31) := 11)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 73), var(36) := -101
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, -3
yaccel = 0.05
ground.cornerpush.veloff = 0
air.velocity = 0, -3
guard.velocity = -10.52
p2facing = 1
fall = 1
air.fall = 1
ID = 4100
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 0
palfx.color = ifelse((var(44)=2),50,128)
palfx.sinadd=ifelse(var(44)=2,50,ifelse(var(44)=1||var(44)=3,64,0)),ifelse(var(44)=2,25,ifelse(var(44)=1,0,64)),ifelse(var(44)=2,80,ifelse(var(44)=1,64,0)),ifelse(var(44)=2,8,4)
palfx.mul = ifelse((var(44)=[2,3]),192,ifelse(var(44)=1,192,0)), ifelse((var(44)=2),256,ifelse(var(44)=1,0,ifelse(var(44)=3,128,192))), ifelse(var(44)=3,0,ifelse((var(44)=2),512,96))
palfx.time = 256

[State 3005, Hit]
type = hitdef
trigger1 = time = 2 && var(37)
priority = 4, Hit
attr = A, HA
damage = ceil(120 * (fvar(12))), 4
animtype = diagup
hitflag = MAF
;guardflag = M
kill = 0
pausetime = 0, 0
hitSound = -1 + 0 * (var(31) := 11)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 73), var(36) := -101
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, -3
yaccel = 0.05
ground.cornerpush.veloff = 0
air.velocity = 0, -3
guard.velocity = -10.52
p2facing = 1
fall = 1
air.fall = 1
ID = 4100
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 0
palfx.color = ifelse((var(44)=2),50,128)
palfx.sinadd=ifelse(var(44)=2,50,ifelse(var(44)=1||var(44)=3,64,0)),ifelse(var(44)=2,25,ifelse(var(44)=1,0,64)),ifelse(var(44)=2,80,ifelse(var(44)=1,64,0)),ifelse(var(44)=2,8,4)
palfx.mul = ifelse((var(44)=[2,3]),192,ifelse(var(44)=1,192,0)), ifelse((var(44)=2),256,ifelse(var(44)=1,0,ifelse(var(44)=3,128,192))), ifelse(var(44)=3,0,ifelse((var(44)=2),512,96))
palfx.time = 256
envshake.time=12
envshake.ampl=Ifelse(random<=500,-4,4)

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 20

[State 0, DUSTO]
type = Explod
;trigger1 = (anim = 1200 || anim = 3400) && vel x
trigger1 = !(time%6) && !var(37)
ID = 8130
anim = 8130
postype = p1
pos = 45, 10
persistent = 1
removetime = -2
supermovetime = 0
sprpriority = 4
ownpal = 1
scale = 0.25,0.125
removeongethit = 1

[State 0, ChangeAnim]
type = Changestate
trigger1 = FrontEdgeBodyDist <= -120
trigger1 = Time >= 90
value = 4102
ctrl = 0

[Statedef 4102]
type = A
physics = N
movetype = A
anim = 710
ctrl = 0
velset = 0, 0
poweradd = 0
sprpriority = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 1
value = 710
elem = 9
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 710 && !animtime ;&& time <=20
value = 4102
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 0, PosSet]
type = PosSet
trigger1 = time = 1
x = target, pos x -80*facing
;y = helper(7652),pos y -80
y = target, pos y ;+ 40

[State 235, Snd]
type = playsnd
trigger1 = anim = 4102
trigger1 = animelem = 3 || animelem = 6 || animelem = 8 || animelem = 11
value = 1, 3
persistent = 1
channel = 1

[State 265, Hit]
type = hitdef
;trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
triggerall = anim = 4102
trigger1 = animelem = 2
trigger2 = animelem = 7
attr = A, HA
damage = 45, 0
animtype = Medium 
air.animtype = Back
fall.animtype = Back
hitflag = MAFD
priority = 4, Hit 
pausetime = 0,9
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -88
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = 0, -4
ground.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
guard.velocity = 0
guard.cornerpush.veloff = 0;ifelse(var(20), -5.78, -10.47)
air.type = Low
air.hittime = 120
yaccel = 0.5
air.velocity = 0, -2
air.cornerpush.veloff = 0
getpower = 0, 0
kill = 0
givepower = 36, 36
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = 0, -2
airguard.cornerpush.veloff = 0
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 139), var(36) := -78
envshake.time=12
envshake.ampl=Ifelse(random<=500,-4,4)


[State 265, Hit]
type = hitdef
;trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
triggerall = anim = 4102
trigger1 = animelem = 5
trigger2 = animelem = 10
attr = A, HA
damage = 45, 0
animtype = Medium 
air.animtype = Back
fall.animtype = Back
hitflag = MAFD
priority = 4, Hit 
pausetime = 0,9
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -88
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = 0, -4
yaccel = ifelse((animelem=10),0.3,0.5)
ground.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
guard.velocity = 0
guard.cornerpush.veloff = 0;ifelse(var(20), -5.78, -10.47)
air.type = Low
air.hittime = 120
air.velocity = 0, -ifelse((animelem=10),4,2)
air.cornerpush.veloff = 0
getpower = 0, 0
givepower = 36, 36
kill = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = ifelse((animelem=10),0.3,0.5)
airguard.ctrltime = 16
airguard.velocity = 0, -2
airguard.cornerpush.veloff = 0
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 108), var(36) := -81
envshake.time=12
envshake.ampl=Ifelse(random<=500,-4,4)


[State 0, ChangeState]
type = changeanim
trigger1 = anim = 4102 && !animtime
value = 715

[State 0, PosSet]
type = PosSet
trigger1 = anim = 715 && animelemtime(4)=0
x = target, pos x-40*facing
y = 0

[State 720, Snd]
type = playsnd
trigger1 = time = 1
trigger2 = anim = 715 && animelemtime(1)=0
value = 5, 13

[State Idle]
type = statetypeset
trigger1 = anim = 715
trigger1 = animelemtime(5) >= 0
statetype = C


[State 0, ChangeState]
type = changeanim
trigger1 = anim = 715 && !animtime
value = 4115


[State 230, Snd]
type = playsnd
trigger1 = anim = 4115
trigger1 = animelem = 2
value = 3, 0
channel = 0
[State 235, Snd]
type = playsnd
trigger1 = anim = 4115
trigger1 = animelem = 2
value = 1, 6
channel = 1

[State 250, Hit]
type = hitdef
trigger1 = anim = 4115 && animelem = 1
attr = C, HA
damage = 40, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF 
priority = 4, Hit 
fall = 1
ID = 4102
pausetime = 0, 10
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -5
hitSound = -1 + 0 * (var(31) := 10)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 0, -8
ground.cornerpush.veloff = 0;ifelse(var(20), -5.78, -10.47)
air.type = Low
air.hittime = 120
air.velocity = 0, -8
air.cornerpush.veloff = 0
kill = 0
down.velocity = -3, -9
getpower = 0,0
givepower = 36, 36
yaccel = 0.3
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -183
envshake.time=12
envshake.ampl=Ifelse(random<=500,-4,4)

[State 250, End]
type = changestate
trigger1 = anim = 4115 && animelemtime(3)>=0 && ((movehit && numtarget(4102))||!animtime)
value = 4103
ctrl = 0

[Statedef 4103]
type = A
movetype = A
physics = N
juggle = 0
anim = 710
poweradd = 0
sprpriority = 1
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, PosSet]
type = PosSet
trigger1 = anim = 710 && animelemtime(4)=0
x = target, pos x
y = target, pos y -40

[State 720, Snd]
type = playsnd
trigger1 = !time
value = 5, 13

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 710 && !animtime
value = 4104

[State 0, VelSet]
type = VelSet
trigger1 = anim != 710 && animelemtime(1)=0
y = -4
[State 1303, Accel]
type = gravity
trigger1 = anim != 710
[State 1304, Pos]
type = playerpush
trigger1 = 1
value = 0
[State 1300, Snd]
type = playsnd
trigger1 = anim != 710 && animelem = 3
value = s1, 6

[State 0, VelSet]
type = VelSet
trigger1 = anim != 710 && animelemtime(3)>=0
y = 15
x = 0

[State 1303, Hit]
type = hitdef
trigger1 = !time
attr = A, HA
damage = 80, 8
animtype = Hard
;guardflag = H
hitflag = MAFD
ID = 1401
priority = 4, Hit
pausetime = ifelse(var(20), 3, 6), ifelse(var(20), 2, 4)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkxy = -10+ 0 * (var(35) := 0), var(36) := -30
hitSound = -1 + 0 * (var(31) := 6)
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -vel x, 10
air.type = Low
air.velocity = -vel x, 12
kill = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
fall.yvelocity = 0
givePower = 0.5 * 200
p2facing = 1
envshake.time = 12
envshake.freq = 120
envshake.ampl = 5
fall = 1
fall.recover = 0
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 0
airguard.cornerpush.veloff = 0
[State 0, TargetState]
type = TargetBind
trigger1 = movehit = 1 && numtarget
pos = 0,0
ignorehitpause = 1
persistent = 1

[State 0, TargetState]
type = TargetState
trigger1 = target, pos y >= 0 && target, stateno != 1111190
value = 1111190
ID = 1401
ignorehitpause = 0
persistent = 1

[State 1303, End]
type = changestate
trigger1 = pos y >= 0 && vel y > 0
value = 4104

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;--Stomp--
[Statedef 4104]
type = C
movetype = A
anim = 4114
physics = C
velset = 0, 0
juggle = 0
ctrl = 0
sprpriority = 1

[State 1304, Pos]
type = posset
trigger1 = 1
y = 0
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1304, Snd]
type = playsnd
trigger1 = !time
value = s5, 0
ignorehitpause = 1
[State 52, Snd]
type = playsnd
trigger1 = !time
value = s5, 4
ignorehitpause = 1
[State 1304, Hit]
type = hitdef
trigger1 = animelem = 1
attr = C, HA
damage = 80, 11
animtype = Hard
;guardflag = M
hitflag = MAFD
priority = 4, Hit
pausetime = 0, 24
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkxy = -10+ 0 * (var(35) := 0), var(36) := 0
hitSound = -1 + 0 * (var(31) := 11)
guardsound = s2, 0
ground.type = High
ground.slidetime = 12
kill = 0
ID = 1461
ground.slidetime = 16
ground.hittime = 16
air.type = Low
air.velocity = -7, 7
down.velocity = 0, 0
down.bounce = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0
givePower = 0.5 * 36, 36
envshake.time = 12
envshake.freq = 120
envshake.ampl = 6
fall = 1
fall.recover = 0
forcestand = 0
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
airguard.velocity = -8, -1.5

[State 0, TargetState]
type = TargetState
trigger1 = movehit && animelemtime(2)>=-4 && numtarget(1461)
value = 1111192
ID = 1461
ignorehitpause = 0
persistent = 1
[State 0, PlayerPush]
type = PlayerPush
trigger1 = numtarget(1461)
value = 0
ignorehitpause = 1
[State 0, TargetState]
type = TargetBind
trigger1 = movehit = 1 && numtarget(1461)
pos = 0,0
ID = 1461
ignorehitpause = 1
persistent = 1

[State 1800, Dust]
type = explod
trigger1 = animelem = 1
anim = 8112;7107
ID = 7160
sprpriority = 0
postype = p1
pos = 0, 0
scale = 0.5, 0.5;0.38, 0.2
ownpal = 1
[State 1800, Dust]
type = explod
trigger1 = animelem = 1
anim = 8106;7107
ID = 7240
sprpriority = -1
postype = p1
pos = 0, 0
scale = 1, 1;0.38, 0.2
ownpal = 1

[State 1304, Shake]
type = envshake
trigger1 = !time
time = 18
freq = 120
ampl = 6
[State 1304, End]
type = changestate
trigger1 = !animtime
value = ifelse(winko,3705,4105)
ctrl = 0

[Statedef 4105]
type = A
movetype = A
physics = N
velset = 0, 0
anim = 105
ctrl = 0
sprpriority = 1
[State 0, VarSet]
type = VarSet
trigger1 = !time
var(37)=0
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
[State 105, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = -1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 105, Vel]
type = velset
trigger1 = anim = 105 && animelem = 2
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)
[State 105, Type]
type = statetypeset
trigger1 = anim = 105 && animelemtime(2) >= 0
statetype = A
physics = A

[State 105, Snd]
type = playsnd
trigger1 = anim = 105 && animelem = 2
value = 0, 105

[State 740, Rushing Aura]
type = helper
trigger1 = vel y > 0 && pos y >= 0 && !numhelper(6003)
helpertype = normal
stateno = 6003
ID = 6003
name = "LSSJ Aura"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 105, End]
type = changeanim
trigger1 = anim = 105 && vel y > 0 && pos y >= -4
value = 4105
[State 105, Vel]
type = velset
trigger1 = anim = 4105 && animelemtime(2)<1
x = 0
y = 0
[State 740, Rushing Aura]
type = helper
trigger1 = anim = 4105 && animelemtime(1)=0 && !numhelper(6003)
helpertype = normal
stateno = 6003
ID = 6003
name = "LSSJ Aura"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 0, ScreenBound]
type = ScreenBound
trigger1 = anim = 4105
value = 1
movecamera = 1,0

[State 105, Vel]
type = velset
trigger1 = anim = 4105 && animelemtime(2)>=1
y = -10

[State 4001, fadeout]
type = allpalfx
trigger1 = time = 90
time = 30
sinadd = -255, -255, -255, 120

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 120
value = 896
ctrl = 0



[Statedef 896]
type = A
movetype = A
physics = N
velset = 0, -8
;anim = 105
ctrl = 0
sprpriority = 1
[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5,28
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,3,16)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,6,13)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,6,13)
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 240

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = 0

[State 0, VelSet]
type = VelSet
trigger1 = pos y <= (131-(time*2))
y = 3
[State 0, VelSet]
type = VelSet
trigger1 = pos y >= (141-(time*2)) && vel y >0
y = -3

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(37)=20
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noshadow
flag3 = noFG
[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = var(37)+1

[State 4001, fadeout]
type = allpalfx
trigger1 = !time
time = 8
add = -256, -256, -256
sinadd = 256, 256, 256, 32

[State 7610, Black BG]
type = explod
trigger1 = !time
anim = 4106
ID = 4106
sprpriority = 12
postype = left
pos = GameWidth/2 + (0), floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 2 * (1.3333333 * gameheight / gamewidth), 2 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
[State 740, FX]
type = helper
trigger1 = !time
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
[State 3000, Snd]
type = playsnd
trigger1 = time = 20
value = 4, 33
channel = 0
[State 3000, Snd]
type = playsnd
trigger1 = time = 20
value = 4, 33
channel = 3
[State 0, ChangeState]
type = ChangeState
trigger1 = time = 90
value = 897
ctrl = 0
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 0
scale = 1,1


[Statedef 897]
type = A
physics = N
movetype = A
anim = 4107
ctrl = 0
velset = 0, 0
poweradd = 0
;sprpriority = 1
;facep2 = 1
;[State 3000, Snd]
;type = playsnd
;trigger1 = time = 106
;value = 3, 28
;channel = 0
;[State 3000, Snd]
;type = playsnd
;trigger1 = time = 106
;value = 3, 28
;channel = 3
[State 0, VarSet]
type = VarSet
trigger1 = !time
var(11)= pos x
[State 0, VarSet]
type = VarSet
trigger1 = !time
var(12)= pos y

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 0
scale = 1,1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noshadow
flag3 = noFG
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5,7

[State 0]
type = Explod
trigger1 = !time
ID = 1000
anim = 1095
postype = p1
pos = -34*const(size.xscale),-223*const(size.yscale)
bindtime = -1
removetime = 96
sprpriority = var(37)+2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0]
type = Explod
trigger1 = !time
ID = 1000
anim = 1096
postype = p1
pos = -34*const(size.xscale),-223*const(size.yscale)
bindtime = -1
removetime = 96
sprpriority = var(37)+2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 1000
anim = 1095
postype = p1
pos = -34*const(size.xscale),-223*const(size.yscale)
bindtime = -1
removetime = 60
supermovetime = 60
sprpriority = var(37)+2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 1000
anim = 1096
postype = p1
pos = -34*const(size.xscale),-223*const(size.yscale)
bindtime = -1
removetime = 60
supermovetime = 60
sprpriority = var(37)+2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time <=60
ID = 1000
pos = -(34*const(size.xscale)),-(223*const(size.yscale))
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
scale = 0.5,0.5

;
;[State 0, Energy Charge] ; (Doesn't really look good, so I simply removed it).
;type = Explod
;trigger1 = !time
;ID = 1000
;anim = 3901
;postype = p1
;pos = 0, 0
;bindtime = -1
;removetime = -2
;supermovetime = 54
;sprpriority = 2
;ownpal = 1
;scale = 0.5*const(size.xscale),0.5*const(size.yscale)
;removeongethit = 1

[State 3000, NHB]
type = nothitby
trigger1 = 1
time = 1
value = SCA
[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 3000, Omega Blaster]
type = helper
trigger1 = anim = 4107 && animelem = 3
helpertype = normal
stateno = 4122
ID = 4122
name = "Omega Blaster"
postype = p1
;pos = floor(140 * const(size.xscale)), floor(-214 * const(size.yscale))
pos = 57*const(size.xscale),-78*const(size.yscale)
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
;
;[State 0, DUSTO]
;type = Explod
;trigger1 = animelem = 4
;ID = 8120
;anim = 8120
;postype = p1
;pos = 60, 0
;removetime = -2
;supermovetime = 0
;sprpriority = 4
;ownpal = 1
;scale = 0.25,0.25
;removeongethit = 1

[State 3000, Snd]
type = playsnd
trigger1 = anim = 4107 && animelem = 3
value = 5, 24

[State 3000, Snd]
type = playsnd
trigger1 = anim = 4107 && animelem = 3
value = 3, 28
channel = 0
[State 3000, Snd]
type = playsnd
trigger1 = anim = 4107 && animelem = 3
value = 3, 28
channel = 3

[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 5, 34

[State 0, PosSet]
type = PosSet
trigger1 = animelemtime(3)<0
x = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(3)>=0
y = -6
x = -1.5

[State 0, ChangeState]
type = ChangeState
trigger1 = time >= 400
value = 898
ctrl = 0


[Statedef 898]
type = A
physics = N
movetype = A
;anim = 4107
ctrl = 0
velset = 0, 0
poweradd = 0
[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(4106)
id = 4106
[State 195, Shake]
type = envshake
trigger1 = time <= 145
trigger1 = !(time%5)
time = 5
freq = 120
ampl = -1.5 -ceil(time * 0.05)

;[State 4001, fadeout]
;type = bgpalfx
;trigger1 = !time
;time = 128
;sinadd = -128, -128, -128, 512
[State 4001, fadeout]
type = assertspecial
trigger1 = 1
flag = nobardisplay
flag2 = noshadow
flag3 = nofg
persistent = 1
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 740, FX]
type = helper
trigger1 = time = 130
helpertype = normal
stateno = 6000
ID = 6000
name = "LSSJ Aura"
postype = p1
size.xscale = 0.45
size.yscale = 0.45
;pausemovetime = 65535
supermovetime = 65535
ownpal = 1


[State 0, ChangeState]
type = ChangeState
trigger1 = time = 150
value = 899
ctrl = 0

[Statedef 899]
type = A
physics = N
movetype = A
anim = 4108
ctrl = 0
velset = 0, 0
poweradd = 0
;sprpriority = 1
;facep2 = 1
[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1, 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 0
scale = 1,1
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 195, Shake]
type = envshake
trigger1 = time <= 145
trigger1 = !(time%5)
time = 5
freq = 120
ampl = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3,32
channel = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3,32
channel = 3
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3,32
channel = 4
;[State 3000, Snd]
;type = playsnd
;trigger1 = !time
;value = 5, 7

[State Flashes]
type = Explod
trigger1 = !time
ID = 3999
anim = 4109
postype = p1
pos = 0,0
bindtime = -1
removetime = -2
sprpriority = var(37)+2
supermovetime = 44
ownpal = 1
scale = 0.5*const(size.xscale),0.5*const(size.yscale)
removeongethit = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time <=174
ID = 3999
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
scale = 0.5*const(size.xscale),0.5*const(size.xscale)

[State 4001, fadeout]
type = assertspecial
trigger1 = 1
flag = nobardisplay
flag2 = noshadow
flag3 = nofg
persistent = 1

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = -100*facing
y = -80
[State 7610, Black BG]
type = explod
trigger1 = !time
anim = 4106
ID = 4106
sprpriority = 12
postype = left
pos = GameWidth/2 + (0), floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 2 * (1.3333333 * gameheight / gamewidth), 2 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 1000
anim = 1095
postype = p1
pos = floor(72 * const(size.xscale)), floor(-106 * const(size.yscale))
bindtime = -1
removetime = 125
supermovetime = 43
sprpriority = var(37)+2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 1000
anim = 1096
postype = p1
pos = floor(72 * const(size.xscale)), floor(-106 * const(size.yscale))
bindtime = -1
removetime = 125
supermovetime = 43
sprpriority = var(37)+2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time <=156
ID = 1000
pos = floor(72 * const(size.xscale)), floor(-106 * const(size.yscale))
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
scale = 0.5,0.5

[State 740, FX]
type = helper
trigger1 = !time
helpertype = normal
;stateno = 6025
stateno = 6028
ID = 6028
name = "Enviroment Color Distortion"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 0
supermovetime = 0
ownpal = 1
[State 3000, Snd]
type = playsnd
trigger1 = time = 125
value = 5, 24

[State -2, LSSJ2 Aura]
type = Explod
trigger1 = !(gametime%5)
anim = 3030+(random%4)
ID = 3033
facing = ifelse(random<500,-1,1)
pos = 0+40*(stateno=100), -(85 + ifelse(statetype=C||stateno=100,30,0))
vel = 0, ifelse(random<500, -.4,-.6)
supermovetime = -1
postype = p1
random = 70,80
removetime = -2
;scale = ifelse(random<500, .3, .2)*const(size.xscale), ifelse(random<500,.3,.2)*const(size.yscale)
scale = 0.5, 0.5;*const(size.yscale)
sprpriority = var(37)+ifelse(random<667, 3,-3)
ownpal = 1
removeongethit = 1
supermovetime = 9999999

[State -2, LSSJ2 Lightning]
type = explod
trigger1 = !(gametime%20)
vel = 0, 0
accel = 0,0
anim = ifelse(var(44)=1,3037+(random%3),3034+(random%3))
sprpriority = var(37)+ifelse(random<667, 3, -5)
ID = 3033
postype = p1
pos = 0+40*(stateno=100), -(80 + ifelse(statetype=C||stateno=100,25,0))
random = 60, (100 - ifelse(statetype=C,30,0))
facing = -1 + (random < 500) * 2
vfacing = -1 + (random < 500) * 2
scale = 0.5, 0.5
ownpal = 1
ignorehitpause = 1
supermovetime = -1

[State 0, ChangeState]
type = ChangeState
trigger1 = time >= 180
value = 4106
ctrl = 0

[Statedef 4106]
type = A
physics = N
movetype = A
anim = 3301
ctrl = 0
velset = 0, -9
poweradd = 0
sprpriority = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(4106)
id = 4106
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time && numexplod(3033)
id = 3033
;[State 4001, fadeout]
;type = bgpalfx
;trigger1 = !time
;time = 128
;sinadd = -128, -128, -128, 512
[State 195, Shake]
type = envshake
trigger1 = time <=90
trigger1 = !(time%5)
time = 5
freq = 120
ampl = -1.5 -ceil(time * 0.05)
[State 4001, fadeout]
type = assertspecial
trigger1 = time <=90
flag = nobardisplay
flag2 = noshadow
flag3 = nofg
persistent = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 0, PosSet]
type = PosSet
trigger1 = !time
x = -100*facing
y = -500
[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <=90
value = SCA
time = 1
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 90
statetype = A       ;S,A,C,L
movetype = I        ;I,A,H
physics = A         ;A,C,S,N


[State 0, VelSet]
type = VelSet
trigger1 = vel y >= 14
y = 14




;======================< GIGANTIC OMEGASTORM >=============================
; Gigantic Omegastorm
[Statedef 4200]
type = S
physics = S
movetype = A
anim = 4200
ctrl = 0
velset = 0, 0
poweradd = -3000 + ((var(53)>0)*1000)
sprpriority = 1
facep2 = 1

[State -3, Energy Color]
type = remappal
triggerall = var(44)=1 || var(44)=3
trigger1 = !time
trigger2 = anim = 4203 && animelemtime(1)=1
source = 4050, 35
dest = 4050, ifelse(var(44)=1,3,16)
[State -3, Energy Color]
type = remappal
triggerall = var(44)=1 || var(44)=3
trigger1 = !time
trigger2 = anim = 4203 && animelemtime(1)=1
source = 4050, 27
dest = 4050, ifelse(var(44)=1,6,13)
[State -3, Energy Color]
type = remappal
triggerall = var(44)=1 || var(44)=3
trigger1 = !time
trigger2 = anim = 4203 && animelemtime(1)=1
source = 4050, 32
dest = 4050, ifelse(var(44)=1,6,13)

[State 4210, SuperCancelEnds]
type = VarSet
trigger1 = !time
var(22)= 0

[State 3400, Guarded or nah?]
type = varset
trigger1 = !time
var(11) = 0

[State 3400, Strength]
type = varset
trigger1 = var(10) != 7
var(10) = 7

;[State 3400, Snd]
;type = playsnd
;trigger1 = !time
;;value = 3, 7
;value = 4, 44
;channel = 0
;volume = 200
[State 3400, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3400, Super Pause FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8520
ID = 8520
name = "Super Charge"
postype = p1
pos = 86*const(size.xscale),-135*const(size.yscale)
ownpal = 1
facing = facing
persistent = 0
supermovetime = 9999
size.xscale = 1
size.yscale = 1
[State 3400, Super Pause]
type = superpause
trigger1 = !time
time = 43
movetime = 43
anim = -1
p2defmul = 1
darken = 0
[State 0, ScreenBound]
type = ScreenBound
trigger1 = numhelper(4205)
trigger1 = anim = 4200 || anim = 100
value = ifelse(numhelper(4205),ifelse((helper(4205),stateno=4206),0,1),1)
movecamera = ifelse(numhelper(4205),ifelse((helper(4205),stateno=4206),0,1),1),ifelse(numhelper(4205),ifelse((helper(4205),stateno=4206),0,1),1)

[State 0, ScreenBound]
type = ScreenBound
trigger1 = (anim = 4203 && animelemtime(7)>=0) || anim = 4206 || anim = 710
value = 0
movecamera = 0, 1

[State 4210, width]
type = width
trigger1 = 1
value = floor(40 * const(size.xscale))

[State 4210, Snd]
type = playsnd
trigger1 = !time
value = 5, 44
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S5, 7
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S4, 34
channel = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S4, 34
channel = 3

[State Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 0]
type = Explod
trigger1 = !time
ID = 1000
anim = 1095
postype = p1
pos = 95*const(size.xscale),-135*const(size.yscale)
bindtime = -1
removetime = 43
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0]
type = Explod
trigger1 = !time
ID = 1000
anim = 1096
postype = p1
pos = 95*const(size.xscale),-135*const(size.yscale)
bindtime = -1
removetime = 43
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 4001, fadeout]
type = bgpalfx
trigger1 = anim = 4200
trigger1 = animelemtime(2)>=0 && animelemtime(3)<0
time = 1
add = -128, -128, -128
sinadd = 0, 0, 0, 1
persistent = 1

[State 0, Remove Flashes from previous Super]
type = removeexplod
trigger1 = !time
ID = 3999
[State 0]
type = Explod
trigger1 = !time
ID = 3999
anim = 4202
postype = p1
pos = 0,0
bindtime = -1
removetime = -2
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5*const(size.xscale),0.5*const(size.xscale)
removeongethit = 1

[State 1000, Double Eraser Cannon]
type = helper
triggerall = anim = 4200
trigger1 = animelemtime(3) = 0
helpertype = normal
stateno = 4205
ID = 4205
name = "Double Eraser Cannon"
postype = p1
pos = 86*const(size.xscale),-135*const(size.yscale)
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 4210, Snd]
type = playsnd
triggerall = anim = 4200
trigger1 = animelemtime(3) = 0
value = 5, 24



[State 4210, Snd]
type = changeanim
triggerall = anim = 4200
trigger1 = BackEdgeBodyDist <= -100
value = 100

[State 740, Rushing Aura]
type = helper
trigger1 = anim = 100 && animelemtime(1)>=0 && !numhelper(6002)
helpertype = normal
stateno = 6002
ID = 6002
name = "LSSJ Aura"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
;pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 0, VelSet]
type = VelSet
trigger1 = anim = 100
x = 12.5

[State 0, DUSTO]
type = Explod
trigger1 = anim = 100 && vel x
trigger1 = time && !(time%6)
trigger2 = anim = 100 && animelemtime(2)=0
ID = 8130
anim = 8130
postype = p1
pos = 45, 10
persistent = 1
removetime = -2
supermovetime = 0
sprpriority = 4
ownpal = 1
scale = 0.25,0.125
removeongethit = 1

[State 4210, Snd]
type = changeanim
triggerall = anim = 100
trigger1 = BackEdgeBodyDist >= 30
value = 3401

[State 0, VelSet]
type = VelMul
trigger1 = anim = 3401
x = 0.8

[State 101, Dust]
type = explod
trigger1 = anim = 3401 && !(time%2) && vel x
anim = 8104
sprpriority = 3
postype = p1
pos = 40, 10
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 101, Dust]
type = explod
trigger1 = anim = 3401 && !(time%2) && vel x
anim = 8104
sprpriority = 3
postype = p1
pos = -30, 10
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 100, Dust]
type = playsnd
trigger1 = anim = 3401
value = s0, 101
persistent = 0

[State 4210, Snd]
type = changeanim
triggerall = anim = 4200
trigger1 = animelemtime(4)>=0 && animelemtime(5) < 0
trigger1 = numhelper(4205)
trigger1 = ifelse(numhelper(4205),(helper(4205),stateno=4207),0)
value = 4200
elem = 5

[State 3400, NHB]
type = nothitby
trigger1 = anim = 4200 && animelemtime(5)<0
trigger2 = numhelper(4205)
trigger2 = anim = 4200 && animelemtime(5)>=0 && ifelse(numhelper(4205),(helper(4205),prevstateno=4206),0)
time = 1
value = SCA

[State 3400, End]
type = changeanim
triggerall = !animtime
trigger1 = numhelper(4205)
trigger1 = anim = 4200 && ifelse(numhelper(4205),(helper(4205),prevstateno=4206),0)
trigger2 = anim = 3401
value = 4210

[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
trigger1 = anim = 4210 && animelemtime(1)=0
source = 4050, 35
dest = 4050, ifelse(var(44)=1,1,10)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
trigger1 = anim = 4210 && animelemtime(1)=0
source = 4050, 27
dest = 4050, ifelse(var(44)=1,4,11)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
trigger1 = anim = 4210 && animelemtime(1)=0
source = 4050, 32
dest = 4050, ifelse(var(44)=1,4,11)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4210 && animelemtime(1)=0
value = S3,37
channel = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4210 && animelemtime(1)=0
value = S3,37
channel = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4210 && animelemtime(1)=0
value = S5,7
[State 3400, End]
type = changeanim
triggerall = !animtime
trigger1 = anim = 4210
value = 4203

[State 0, Flahses]
type = Explod
trigger1 = anim = 4203 && animelemtime(7)=0
ID = 3999
anim = 4204
postype = p1
pos = 0,0
bindtime = -1
removetime = -1
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5*const(size.xscale),0.5*const(size.xscale)
removeongethit = 1

[State 4210, Gigantic Omegastorm]
type = helper
trigger1 = anim = 4203 && animelemtime(7)=0
helpertype = normal
stateno = 4225
ID = 4205
name = "Gigantic Omegastorm"
postype = p1
;pos = floor(140 * const(size.xscale)), floor(-214 * const(size.yscale))
pos = floor(120 * const(size.xscale)), floor(-126 * const(size.yscale))
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4203 && animelemtime(7)=0
value = S5, 24
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4203 && animelemtime(7)=0
value = S5, 59
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4203 && animelemtime(7)=0
value = S5, 59
[State 0, VelSet]
type = VelSet
trigger1 = anim = 4203 && animelemtime(7)>=0
x = ifelse(backedgeBodydist <= -180,0,ifelse(ifelse(facing=1,pos x > 0, pos x < 0),-12.5,-2.5))
[State 0, DUSTO]
type = Explod
trigger1 = anim = 4203 && animelemtime(7)=0
trigger2 = anim = 4203 && animelemtime(7)>=0 && !(time%10)
ID = 8130
anim = 8130
postype = p1
pos = 60, 0
removetime = -2
supermovetime = 0
Bindtime = -1
sprpriority = 4
ownpal = 1
scale = 0.25,0.25
removeongethit = 1

[State 3400, End]
type = changeanim
trigger1 = anim = 4203 && animelemtime(7)>=1 && !numhelper(4205)
value = 4206

[State 0, Remove Flashes from previous Super]
type = removeexplod
trigger1 = anim = 4210 && animelemtime(1)=0
trigger2 = anim = 4206 && animelemtime(1)=0
ID = 3999
[State 0, Flahses]
type = Explod
trigger1 = anim = 4210 && animelemtime(1)=0
ID = 3999
anim = 4211
postype = p1
pos = 0,0
bindtime = -1
removetime = -2
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5*const(size.xscale),0.5*const(size.xscale)
removeongethit = 1
[State 0, Flahses]
type = Explod
trigger1 = anim = 4206 && animelemtime(1)=0
ID = 3999
anim = 4207
postype = p1
pos = 0,0
bindtime = -1
removetime = -2
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5*const(size.xscale),0.5*const(size.xscale)
removeongethit = 1
[State 0, Energy Charge]
type = Explod
trigger1 = anim = 4210 && animelemtime(1)=0
ID = 1000
anim = 1095
postype = p1
pos = floor(-30 * const(size.xscale)), floor(-105 * const(size.yscale))
bindtime = -1
removetime = 53
supermovetime = 53
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0, Energy Charge]
type = Explod
trigger1 = anim = 4210 && animelemtime(1)=0
ID = 1000
anim = 1096
postype = p1
pos = floor(-30 * const(size.xscale)), floor(-105 * const(size.yscale))
bindtime = -1
removetime = 53
supermovetime = 53
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1

[State 4210, NHB]
type = nothitby
trigger1 = anim != 4200
time = 1
value = SCA

[State 4210, Eraser Cannon]
type = helper
trigger1 = anim = 4210 && animelemtime(4)=0
helpertype = normal
stateno = 4215
ID = 4205
name = "Double Eraser Cannon"
postype = p1
pos = floor(120 * const(size.xscale)), floor(-126 * const(size.yscale))
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 0, DUSTO]
type = Explod
trigger1 = anim = 4210 && animelemtime(4)=0
ID = 8130
anim = 8130
postype = p1
pos = 60, 0
removetime = -2
supermovetime = 0
sprpriority = 4
ownpal = 1
scale = 0.25,0.25
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = anim = 4210 && animelemtime(4)=0
anim = 6028
ID = 6028
pos = 60,0
postype = p1  ;p2,front,back,left,right
ignorehitpause = 1
removetime = -2
scale = 0.1875,0.125
sprpriority = 3

[State 0, Hand]
type = Explod
trigger1 = anim = 4203 && animelemtime(2)=0
ID = 3999
anim = 4209
postype = p1
pos = 0,0
bindtime = -1
removetime = -2
sprpriority = 3
supermovetime = -1
ownpal = 0
scale = const(size.xscale),const(size.xscale)
removeongethit = 1

[State 0]
type = Explod
trigger1 = anim = 4203 && animelemtime(2)=0
ID = 1000
anim = 1095
postype = p1
pos = 66*const(size.xscale), -82*const(size.yscale)
bindtime = -1
removetime = 84
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0]
type = Explod
trigger1 = anim = 4203 && animelemtime(2)=0
ID = 1000
anim = 1096
postype = p1
pos = 66*const(size.xscale), -82*const(size.yscale)
bindtime = -1
removetime = 84
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5,0.5
removeongethit = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = anim = 4203 && animelemtime(3)>=0 && animelemtime(4)<0
ID = 1000
postype = p1
pos = 63*const(size.xscale),-144*const(size.yscale)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = anim = 4203 && animelemtime(4)>=0 && animelemtime(5)<0
ID = 1000
postype = p1
pos = -6*const(size.xscale),-167*const(size.yscale)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = anim = 4203 && animelemtime(5)>=0 && animelemtime(6)<0
ID = 1000
postype = p1
pos = -40*const(size.xscale),-165*const(size.yscale)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = anim = 4203 && animelemtime(6)>=0 && animelemtime(7)<0
ID = 1000
postype = p1
pos = -74*const(size.xscale),-136*const(size.yscale)

[State 740, FX]
type = helper
trigger1 = anim = 4203 && animelemtime(2)=0
helpertype = normal
stateno = 6025
ID = 6025
name = "Enviroment Color Distortion"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 0
supermovetime = 0
ownpal = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4203 && animelemtime(1)=0
value = S5, 58
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4203 && animelemtime(1)=0
value = S5, 58
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4203 && animelemtime(1)=0
value = S4, 17
channel = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4203 && animelemtime(1)=0
value = S4, 17
channel = 3
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4203 && animelemtime(7)=0
value = S3, 36
channel = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4203 && animelemtime(7)=0
value = S3, 36
channel = 3
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4203 && animelemtime(7)=0
value = S3, 36
channel = 4
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4203 && animelemtime(1)=0
value = S5, 7
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4203 && animelemtime(1)=0
value = S5, 7

[State 4210, Snd]
type = playsnd
trigger1 = anim = 4210 && animelemtime(4)=0
value = s3, 24
channel = 0
[State 4210, Snd]
type = playsnd
trigger1 = anim = 4210 && animelemtime(4)=0
value = s3, 24
channel = 3
[State 4210, Snd]
type = playsnd
trigger1 = anim = 4210 && animelemtime(4)=0
value = s5, 24

[State 4210, Snd]
type = playsnd
trigger1 = anim = 4210 && animelemtime(1)=0
value = s5, 44

[State 4001, fadeout]
type = bgpalfx
trigger1 = anim != 4200 && (anim != [4203,4206]) && anim != 710
trigger2 = anim = 4203 && (animelemtime(2)<15||(animelemtime(2)>=40 && animelemtime(7)<0))
time = 1
add = -128, -128, -128
sinadd = 0, 0, 0, 1
persistent = 1
ignorehitpause = 1

[State 4001, fadeout]
type = bgpalfx
trigger1 = anim = 4203 && animelemtime(2)=15
time = 15
add = -128, -128, -128
sinadd = 128, 128, 128, 60
[State 4001, fadeout]
type = bgpalfx
trigger1 = anim = 4203 && animelemtime(2)=30
time = 10
add = 0, 0, 0
sinadd = -128, -128, -128, 60



[State 3055, bgpal]
type = bgpalfx
trigger1 = var(44)!=[1,3]
trigger1 = anim = 4203 && animelemtime(7)>=0 ;&& !(animelemtime(7)%5)
mul = 0, 256, 0
time = 5
add = -85, -85, -85
color = 128
ignorehitpause = 1
[State 3056, bgpal]
type = bgpalfx
trigger1 = var(44)=2
trigger1 = anim = 4203 && animelemtime(7)>=0 ;&& !(animelemtime(7)%5)
mul = 0, 0, 256
time = 5
add = -85, -85, -85
color = 128
ignorehitpause = 1
[State 3056, bgpal]
type = bgpalfx
trigger1 = var(44)=3
trigger1 = anim = 4203 && animelemtime(7)>=0 ;&& !(animelemtime(7)%5)
mul = 0, 128, 256
time = 5
add = -85, -85, -85
color = 128
ignorehitpause = 1
[State 3055, bgpal]
type = bgpalfx
trigger1 = var(44)=1
trigger1 = anim = 4203 && animelemtime(7)>=0 ;&& !(animelemtime(7)%5)
mul = 256, 0, 256
time = 5
add = -85, -85, -85
color = 128
ignorehitpause = 1

[State 3055, bgpal]
type = bgpalfx
trigger1 = var(44)!=[1,3]
trigger1 = anim = 4206 && animelemtime(1)=[0,32]
mul = 0+(animelemtime(1)*8), 256, 0+(animelemtime(1)*8)
time = 1
add = -64+(animelemtime(1)*2), -64+(animelemtime(1)*2), -64+(animelemtime(1)*2)
color = 128+(animelemtime(1)*4)
ignorehitpause = 1
[State 3056, bgpal]
type = bgpalfx
trigger1 = var(44)=2
trigger1 = anim = 4206 && animelemtime(1)=[0,32]
mul = 0+(animelemtime(1)*8), 0+(animelemtime(1)*8), 256
time = 1
add = -64+(animelemtime(1)*2), -64+(animelemtime(1)*2), -64+(animelemtime(1)*2)
color = 128+(animelemtime(1)*4)
ignorehitpause = 1
[State 3056, bgpal]
type = bgpalfx
trigger1 = var(44)=3
trigger1 = anim = 4206 && animelemtime(1)=[0,32]
mul = 0+(animelemtime(1)*8), 128+(animelemtime(1)*4), 256
time = 1
add = -64+(animelemtime(1)*2), -64+(animelemtime(1)*2), -64+(animelemtime(1)*2)
color = 128+(animelemtime(1)*4)
ignorehitpause = 1
[State 3055, bgpal]
type = bgpalfx
trigger1 = var(44)=1
trigger1 = anim = 4206 && animelemtime(1)=[0,32]
mul = 256, 0+(animelemtime(1)*8), 256
time = 1
add = -64+(animelemtime(1)*2), -64+(animelemtime(1)*2), -64+(animelemtime(1)*2)
color = 128+(animelemtime(1)*4)
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 4206 && !animtime
value = 710

[State 740, FX]
type = helper
triggerall = !numhelper(6000)
trigger1 = !time
trigger2 = anim = 3401 && animelemtime(1)>=0
helpertype = normal
stateno = 6000
ID = 6000
name = "LSSJ Aura"
postype = p1
size.xscale = 0.45
size.yscale = 0.45
;pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 170, Camera]
type = helper
trigger1 = anim =4203 && animelemtime(1) >= 0 && !numhelper(7652)
helpertype = normal
stateno = 7652
ID = 7652
name = "Camera"
postype = p1
facing = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 710 && animelemtime(1)=0
value = S5, 13
[State 0, PosSet]
type = PosSet
trigger1 = anim = 710 & animelemtime(6) = 0
x = helper(7652), pos x
y = 0
[State 0, PlayerPush]
type = PlayerPush
trigger1 = anim = 4203
value = 0

[State 0, ZA WARUDO]
type = AssertSpecial
trigger1 = anim != 4200
trigger1 = anim != 710
flag = timerfreeze
ignorehitpause = 1
persistent = 1

[State 3400, End]
type = changestate
triggerall = !animtime
trigger1 = anim = 4200
trigger2 = anim = 710
value = 0
ctrl = 1



;======================< GIGANTIC CATASTROPHE >=============================
; Gigantic Catastrophe
[Statedef 4300]
type = S
physics = S
movetype = A
anim = 4300
ctrl = 0
velset = 0, 0
poweradd = -3000 + ((var(53)>0)*1000)
sprpriority = 1
facep2 = 1

[State 4210, SuperCancelEnds]
type = VarSet
trigger1 = !time
var(22)= 0

[State 3400, Strength]
type = varset
trigger1 = var(10) != 7
var(10) = 7
[State 3400, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3400, Super Pause FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8520
ID = 8520
name = "Super Charge"
postype = p1
pos = 55*const(size.xscale),-79*const(size.yscale)
ownpal = 1
facing = facing
persistent = 0
supermovetime = 9999
size.xscale = 1
size.yscale = 1
[State 3400, Super Pause]
type = superpause
trigger1 = !time
time = 43
movetime = 43
anim = -1
p2defmul = 1
darken = 0

[State 0, Remove Flashes from previous Super]
type = removeexplod
trigger1 = !time || anim != 3200
ID = 3999
[State 0, VelSet]
type = VelSet
trigger1 = anim = 4300
x = ifelse(animelemtime(2)>=0,10,0)

[State 4000, Hit]
type = hitdef
trigger1 = time >=43 && anim = 4300
trigger1 = p2dist x >= 0 && p2bodydist x <= 20
attr = S, HT
hitflag = M-
priority = 6, Miss
numhits = 0
ID = 4300
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 4301
fall = 1 
fall.recover = 0

[State 100, Dust]
type = playsnd
trigger1 = anim = 4300 && animelemtime(2)=0
value = s5, 43
persistent = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4300 && animelemtime(2)=0
value = S5,27
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3,45
channel = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3,45
channel = 3
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3,45
channel = 5
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3,44
channel = 5

[State 0, DUSTO]
type = Explod
trigger1 = anim = 4300 && animelemtime(2)=0
ID = 8134
anim = 8134
postype = p1
pos = 0, -70
persistent = 1
removetime = -2
supermovetime = 0
sprpriority = 4
ownpal = 1
scale = 0.5,0.5
removeongethit = 1


[State 0, DUSTO]
type = Explod
trigger1 = anim = 4300 && vel x
trigger1 = time && !(time%6)
trigger2 = anim = 4300 && animelemtime(2)=0
ID = 8130
anim = 8130
postype = p1
pos = 45, 10
persistent = 1
removetime = -2
supermovetime = 0
sprpriority = 4
ownpal = 1
scale = 0.25,0.125
removeongethit = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 83
value = 3401
[State 0, NotHitBy]
type = NotHitBy
trigger1 = anim = 4300
value = SCA
time = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 3401
trigger1 = animelem = 1
movetype = I
[State 100, Dust]
type = playsnd
trigger1 = anim = 3401
value = s0, 101
persistent = 0
[State 100, Dust]
type = playsnd
trigger1 = anim = 3401
value = s4, 31
channel = 0
persistent = 0
[State 100, Dust]
type = stopsnd
trigger1 = anim = 3401 && animelemtime(1)<2
channel = 5
[State 100, Dust]
type = playsnd
trigger1 = anim = 3401
value = s4, 31
channel = 3
persistent = 0
[State 101, Dust]
type = explod
trigger1 = anim = 3401 && !(time%2) && vel x
anim = 8104
sprpriority = 3
postype = p1
pos = 40, 10
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 101, Dust]
type = explod
trigger1 = anim = 3401 && !(time%2) && vel x
anim = 8104
sprpriority = 3
postype = p1
pos = -30, 10
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1



[State 0, End]
type = changestate
trigger1 = anim = 3401 && !animtime
value = 0
ctrl = 1


[Statedef 4301]
type = S
physics = S
movetype = A
ctrl = 0
sprpriority = -1
anim = 4301
;[State 0, ChangeAnim]
;type = ChangeAnim
;trigger1 = time = 15
;value = 4301
[State 0, PosAdd]
type = PosAdd
trigger1 = !time
x = -40
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,1,10)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,4,11)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,4,11)

[State 0, TargetState]
type = TargetState
trigger1 = !time && NumTarget(4300)
value = 4302
ID = 4300
ignorehitpause = 1
persistent = 1
[State 1000, width]
type = width
trigger1 = !time
value = floor(80 * const(size.xscale))
[State 0, TargetBind]
type = TargetBind
trigger1 = anim = 4301 && animelemtime(2)<0
time = 1
id = 4300
pos = 80,0 
[State 0, VelAdd]
type = Velset
trigger1 = anim = 4301 && animelemtime(2)>=0 && animelemtime(3)<0
x = 0.1*animelemtime(2)

[State 0, Hand]
type = Explod
trigger1 = !time
ID = 3998
anim = 4320
postype = p1
pos = 0,0
bindtime = -1
removetime = -2
sprpriority = 2
ownpal = 0
scale = const(size.xscale),const(size.xscale)
removeongethit = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4301 && animelemtime(1)=0
value = S0,800

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4301 && animelemtime(1)=0
value = S0,800

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4301 && animelemtime(1)=0
value = S3,38
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4301 && animelemtime(1)=0
value = S3,38
channel = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4301 && animelemtime(1)=0
value = S3,38
channel = 4

[State 0]
type = Explod
trigger1 = anim = 4301 && animelemtime(1)=0
ID = 3999
anim = 1095;+((anim=1301)*2)
postype = p1
pos = -45*const(size.xscale),-113*const(size.yscale)
bindtime = 99999
removetime = 82;ifelse(anim=1301,3,6+7*var(10))
sprpriority = 4
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
ignorehitpause = 0

[State 0]
type = Explod
trigger1 = anim = 4301 && animelemtime(1)=0
ID = 3999
anim = 1096;+((anim=1301)*2)
postype = p1
pos = -45*const(size.xscale),-113*const(size.yscale)
bindtime = 99999
removetime = 82;ifelse(anim=1301,3,6+7*var(10))
sprpriority = 3
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
ignorehitpause = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = anim = 4301 && animelemtime(2)=0
ID = 3999
postype = p1
pos = 50*const(size.xscale),-64*const(size.yscale)

[State 0, SprPriority]
type = SprPriority
trigger1 = anim = 4301 && animelemtime(3)=0
value = 1

[State 4001, fadeout]
type = bgpalfx
trigger1 = anim = 4301 && animelemtime(1)=0
time = 20
add = 0, 0, 0
sinadd = -128, -128, -128, 80

[State 4001, fadeout]
type = bgpalfx
trigger1 = anim = 4301 && animelemtime(1)=20
time = 20
add = -128, -128, -128
sinadd = 256, 256, 256, 80

[State 4001, fadeout]
type = bgpalfx
trigger1 = anim = 4301 && animelemtime(1)=40
time = 14
add = 128, 128, 128
sinadd = -256, -256, -256, 56
[State 4001, fadeout]
type = bgpalfx
trigger1 = anim = 4301 && animelemtime(1)>=54
trigger2 = anim != 4301; && anim != 4309
time = 1
add = -128, -128, -128
sinadd = 128, 128, 128, 128

[State 740, FX]
type = helper
trigger1 = anim = 4301 && animelemtime(1)=0
helpertype = normal
stateno = 6025
ID = 6025
name = "Enviroment Color Distortion"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 0
supermovetime = 0
ownpal = 1

[State 1000, Eraser Blow]
type = helper
trigger1 = anim = 4301 && animelemtime(3)=0
helpertype = normal
stateno = 4305
ID = 4305
name = "Eraser Blow (Gigantic Catastrophe)"
postype = p1
pos = 114*const(size.xscale),-101*const(size.yscale)
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State -3, Super Finish]
type = helper
trigger1 = anim = 4301 && animelemtime(3)=30
helpertype = normal
stateno = 4315 ;+ 0 * (var(0) := stateno)
ID = 4315
name = "Gigantic Catastrophe Animation"
posType = Back
pos = GameWidth/2 + (0), floor((1.3333333 * GameHeight / GameWidth) * -102)
size.xscale = 0.5
size.yscale = 0.5
facing = facing
ownpal = 1
ignorehitpause = 1
pausemovetime = 999
supermovetime = 999

[State 0, ChangeAnim]
type = turn
trigger1 = numhelper(4305)
trigger1 = anim = 4301 && animelemtime(4)=0 && ifelse(numhelper(4305),(helper(4305), pos x !=[-180,180]),0)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 4301 && animelemtime(4)=0
value = 4307

[State -3, Energy Color]
type = remappal
triggerall = var(44)=1 || var(44)=3
trigger1 = anim = 4307 && animelemtime(1)=0
source = 4050, 35
dest = 4050, ifelse(var(44)=1,3,16)
[State -3, Energy Color]
type = remappal
triggerall = var(44)=1 || var(44)=3
trigger1 = anim = 4307 && animelemtime(1)=0
source = 4050, 27
dest = 4050, ifelse(var(44)=1,6,13)
[State -3, Energy Color]
type = remappal
triggerall = var(44)=1 || var(44)=3
trigger1 = anim = 4307 && animelemtime(1)=0
source = 4050, 32
dest = 4050, ifelse(var(44)=1,6,13)

[State 3000, Gigantic Catastrophe]
type = helper
trigger1 = anim = 4307 && animelemtime(1)=0
helpertype = normal
stateno = 4325
ID = 4325
name = "Gigantic Catastrophe"
postype = p1
;pos = floor(140 * const(size.xscale)), floor(-214 * const(size.yscale))
pos = -2, floor(-158 * const(size.yscale))
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 0, Energy Charge]
type = Explod
trigger1 = anim = 4307 && animelemtime(1)=0
ID = 3999
anim = 4317
postype = p1
pos = 0, 0
bindtime = -1
removetime = 84
supermovetime = 44
sprpriority = 4
ownpal = 1
scale = 0.5 * const(size.xscale), 0.5 * const(size.yscale)
removeongethit = 1
[State 0, Energy Charge]
type = Explod
trigger1 = anim = 4307 && animelemtime(1)=0
ID = 3999
anim = 4318
postype = p1
pos = 0, 0
bindtime = -1
removetime = 68
supermovetime = 44
sprpriority = 3
ownpal = 1
scale = 0.5 * const(size.xscale), 0.5 * const(size.yscale)
removeongethit = 1
[State 7610, Black BG]
type = explod
trigger1 = anim = 4307 && animelemtime(1)=0
anim = 4308
ID = 4308
sprpriority = -12
postype = Back
removetime = 84
pos = GameWidth/2 + (0), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.75, 0.75
bindtime = -1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = anim = 4307 && animelemtime(1)>=0
trigger1 = time < 188
flag = nofg
flag2 = nobg

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time>=188 && time < 204
ID = 3999
postype = p1
pos = 0, 0
scale = 0.5 * const(size.xscale), 0.5 * const(size.yscale)
trans = addalpha
alpha = 256-((time-188)*16),256;-(aniemelmtime(3)*16)
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time>=188 && time < 204
ID = 4308
postype = Back
pos = GameWidth/2 + (0), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.75, 0.75
trans = addalpha
alpha = 256-((time-188)*16),0+((time-188)*16);-(aniemelmtime(3)*16)
[State 0, PosSet]
type = PosSet
trigger1 = anim = 4307 && animelemtime(2)<0
x = 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 4307 && time >=204
value = 4309

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4301 && animelemtime(3)=10
value = S3,39
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4301 && animelemtime(3)=10
value = S3,39
channel = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4301 && animelemtime(3)=10
value = S3,39
channel = 5

[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime && anim = 4309
value = 4303
ctrl = 0


;-- Target --
[Statedef 4302]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1207, screenbound]
type = screenbound
trigger1 = 1
movecamera = 1,0
value = 1
[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <= 80
value = SCA
time = 1

[State 1207, 1]
type = changeanim2
trigger1 = time = 0
value = 4304
[State 0, ChangeState]
type = ChangeState
trigger1 = time = 150
value = 0
ctrl = 1

[Statedef 4303]
type = S
physics = S
movetype = A
anim = 4313
ctrl = 0
velset = 0, 0
poweradd = 0
sprpriority = 1
facep2 = 0

[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,1,10)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,4,11)
[State -3, Energy Color]
type = remappal
trigger1 = !time
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,4,11)

[State 4210, width]
type = width
trigger1 = 1
value = floor(40 * const(size.xscale))

[State 0, Flahses]
type = Explod
trigger1 = anim = 4313 && animelemtime(5)=0
ID = 3999
anim = 4315
postype = p1
pos = 0,0
bindtime = -1
removetime = -1
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5*const(size.xscale),0.5*const(size.xscale)
removeongethit = 1

[State 4210, Gigantic Catastrophe]
type = helper
trigger1 = anim = 4313 && animelemtime(5)=0
helpertype = normal
stateno = 4335
ID = 4335
name = "Gigantic Catastrophe"
postype = p1
;pos = floor(140 * const(size.xscale)), floor(-214 * const(size.yscale))
pos = floor(120 * const(size.xscale)), floor(-126 * const(size.yscale))
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4313 && animelemtime(5)=0
value = S5, 24
[State 0, VelSet]
type = VelSet
trigger1 = anim = 4313 && animelemtime(5)=0
x = -2
[State 0, DUSTO]
type = Explod
trigger1 = anim = 4313 && animelemtime(5)=0
trigger2 = anim = 4313 && animelemtime(5)>=0 && !(time%10) && time <=240
ID = 8130
anim = 8130
postype = p1
pos = 60, 0
removetime = -2
supermovetime = 0
Bindtime = -1
sprpriority = 4
ownpal = 1
scale = 0.25,0.25
removeongethit = 1

[State 3400, End]
type = changeanim
trigger1 = anim = 4313 && animelemtime(5)>=1 && !numhelper(4335)
value = 4314

[State 0, Remove Flashes from previous Super]
type = removeexplod
trigger1 = anim = 4314 && animelemtime(1)=0
ID = 3999
[State 0, Flahses]
type = Explod
trigger1 = anim = 4314 && animelemtime(1)=0
ID = 3999
anim = 4316
postype = p1
pos = 0,0
bindtime = -1
removetime = -2
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5*const(size.xscale),0.5*const(size.xscale)
removeongethit = 1

[State 0]
type = Explod
trigger1 = anim = 4313 && animelemtime(1)=0
ID = 1000
anim = 1095
postype = p1
pos = 63*const(size.xscale),-144*const(size.yscale)
bindtime = -1
removetime = 114
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0]
type = Explod
trigger1 = anim = 4313 && animelemtime(1)=0
ID = 1000
anim = 1096
postype = p1
pos = 63*const(size.xscale),-144*const(size.yscale)
bindtime = -1
removetime = 114
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5,0.5
removeongethit = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = anim = 4313 && animelemtime(2)>=0 && animelemtime(3)<0
ID = 1000
postype = p1
pos = -6*const(size.xscale),-167*const(size.yscale)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = anim = 4313 && animelemtime(3)>=0 && animelemtime(4)<0
ID = 1000
postype = p1
pos = -40*const(size.xscale),-165*const(size.yscale)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = anim = 4313 && animelemtime(4)>=0 && animelemtime(5)<0
ID = 1000
postype = p1
pos = -74*const(size.xscale),-136*const(size.yscale)

[State 740, FX]
type = helper
trigger1 = anim = 4313 && animelemtime(1)=0
helpertype = normal
stateno = 6025
ID = 6025
name = "Enviroment Color Distortion"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 0
supermovetime = 0
ownpal = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4313 && animelemtime(1)=0
value = S3, 40
channel = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4313 && animelemtime(1)=0
value = S3, 40
channel = 3
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4313 && animelemtime(1)=0
value = S5, 7
;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = anim = 4313 && animelemtime(1)=0
;value = S5, 7

[State 4001, fadeout]
type = bgpalfx
triggerall = anim = 4313
trigger1 = animelemtime(1)<7
trigger2 = (animelemtime(1)>=27 && animelemtime(5)<0)
time = 1
add = -128, -128, -128
sinadd = 0, 0, 0, 1
persistent = 1
ignorehitpause = 1

[State 4001, fadeout]
type = bgpalfx
trigger1 = anim = 4313 && animelemtime(1)=7
time = 10
add = -128, -128, -128
sinadd = 128, 128, 128, 48

[State 4001, fadeout]
type = bgpalfx
trigger1 = anim = 4313 && animelemtime(1)=17
time = 10
add = 0, 0, 0
sinadd = -128, -128, -128, 48


[State 3055, bgpal]
type = bgpalfx
trigger1 = var(44)!=[1,3]
trigger1 = anim = 4313 && animelemtime(5)>=0 ;&& !(animelemtime(7)%5)
mul = 0, 256, 0
time = 5
add = -85, -85, -85
color = 128
ignorehitpause = 1
[State 3056, bgpal]
type = bgpalfx
trigger1 = var(44)=2
trigger1 = anim = 4313 && animelemtime(5)>=0 ;&& !(animelemtime(7)%5)
mul = 0, 0, 256
time = 5
add = -85, -85, -85
color = 128
ignorehitpause = 1
[State 3056, bgpal]
type = bgpalfx
trigger1 = var(44)=3
trigger1 = anim = 4313 && animelemtime(5)>=0 ;&& !(animelemtime(7)%5)
mul = 256, 196, 0
time = 5
add = -85, -85, -85
color = 128
ignorehitpause = 1
[State 3055, bgpal]
type = bgpalfx
trigger1 = var(44)=1
trigger1 = anim = 4313 && animelemtime(5)>=0 ;&& !(animelemtime(7)%5)
mul = 256, 0, 256
time = 5
add = -85, -85, -85
color = 128
ignorehitpause = 1

[State 3055, bgpal]
type = bgpalfx
trigger1 = var(44)!=[1,3]
trigger1 = anim = 4314 && animelemtime(1)=[0,32]
mul = 0+(animelemtime(1)*8), 256, 0+(animelemtime(1)*8)
time = 1
add = -64+(animelemtime(1)*2), -64+(animelemtime(1)*2), -64+(animelemtime(1)*2)
color = 128+(animelemtime(1)*4)
ignorehitpause = 1
[State 3056, bgpal]
type = bgpalfx
trigger1 = var(44)=2
trigger1 = anim = 4314 && animelemtime(1)=[0,32]
mul = 0+(animelemtime(1)*8), 0+(animelemtime(1)*8), 256
time = 1
add = -64+(animelemtime(1)*2), -64+(animelemtime(1)*2), -64+(animelemtime(1)*2)
color = 128+(animelemtime(1)*4)
ignorehitpause = 1
[State 3056, bgpal]
type = bgpalfx
trigger1 = var(44)=3
trigger1 = anim = 4314 && animelemtime(1)=[0,32]
mul = 256, 196+(animelemtime(1)*2), 0+(animelemtime(1)*8)
time = 1
add = -64+(animelemtime(1)*2), -64+(animelemtime(1)*2), -64+(animelemtime(1)*2)
color = 128+(animelemtime(1)*4)
ignorehitpause = 1
[State 3055, bgpal]
type = bgpalfx
trigger1 = var(44)=1
trigger1 = anim = 4314 && animelemtime(1)=[0,32]
mul = 256, 0+(animelemtime(1)*8), 256
time = 1
add = -64+(animelemtime(1)*2), -64+(animelemtime(1)*2), -64+(animelemtime(1)*2)
color = 128+(animelemtime(1)*4)
ignorehitpause = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = anim = 4313
value = 0

[State 3400, End]
type = changestate
triggerall = !animtime
trigger1 = anim = 4314
value = 0
ctrl = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1


;======================< TEAM Lv3 SUPER >=============================
; Team Lv3 Super
[Statedef 4400]
type = S
physics = S
movetype = A
anim = 4100
ctrl = 0
velset = 0, 0
poweradd = -3000 + ((var(53)>0)*1000)
sprpriority = 1
facep2 = 0

[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,1,10)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,4,11)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,4,11)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3,16
channel = 0
[State 0, PlaySnd]
type = stopSnd
trigger1 = !time
channel = 3
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S7,13
;
;[State 170, Camera]
;type = helper
;trigger1 = !numhelper(7652)
;helpertype = normal
;stateno = 7652
;ID = 7652
;name = "Camera"
;postype = p1
;pos = 0,0
;facing = 1

[State 3000, SuperCancelEnds]
type = VarSet
trigger1 = !time
var(22)=0

[State 0, Aerial or ground?]
type = VarSet
trigger1 = !time
var(37)= ifelse(pos y < 0,1,0)
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = !time && var(37)
statetype = A

[State 1900, Turn]
type = turn
trigger1 = !time && !var(37)
trigger1 = p2dist x < 0

[State 3000, Strength]
type = varset
trigger1 = var(10) != 7
var(10) = 7

[State Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3000, Super Pause FX]
type = helper
trigger1 = time = 60
helpertype = normal
stateno = 8520
ID = 8520
name = "Super Charge"
postype = p1
pos = ceil(12 * const(size.xscale)), ceil(-140 * const(size.yscale))
ownpal = 1
facing = facing
persistent = 0
supermovetime = 9999
size.xscale = 1
size.yscale = 1
[State 3000, Super Pause]
type = superpause
trigger1 = time = 1
time = 103
movetime = 103
anim = -1
p2defmul = 1
darken = 0
[State 1000, Powered Shell]
type = helper
trigger1 = !time && !numhelper(1159);||numhelper(1155)&&helper(1155),stateno=1156)
helpertype = normal
stateno = 1159
ID = 1155
name = "Powered Shell"
postype = p1
pos = 86*const(size.xscale),-135*const(size.yscale)
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 43
;supermovetime = 65535
ownpal = 1
[State 740, Rushing Aura]
type = helper
trigger1 = !time
helpertype = normal
stateno = 6000
ID = 6000
name = "LSSJ Aura"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
;pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 100
value = 4101
[State 0, VelSet]
type = VelSet
trigger1 = anim = 4101;|| anim = 3203 && animelemtime(4)<0
x = ifelse(animelemtime(2)>=0,20,0)
y = 0
[State 740, Rushing Aura]
type = helper
trigger1 = anim = 4101 && animelemtime(1)=0 && !numhelper(6002)
helpertype = normal
stateno = 6002
ID = 6002
name = "LSSJ Aura"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
;pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 0, DUSTO]
type = Explod
triggerall = !var(37)
trigger1 = anim = 4101 && vel x
trigger1 = time && !(time%6)
trigger2 = anim = 4101 && animelemtime(2)=0
ID = 8130
anim = 8130
postype = p1
pos = 45, 10
persistent = 1
removetime = -2
supermovetime = 0
sprpriority = 4
ownpal = 1
scale = 0.25,0.125
removeongethit = 1
[State 101, Dust]
type = explod
trigger1 = anim = 3401 && !(time%2) && vel x && !var(37)
anim = 8104
sprpriority = 3
postype = p1
pos = 40, 10
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 101, Dust]
type = explod
trigger1 = anim = 3401 && !(time%2) && vel x && !var(37)
anim = 8104
sprpriority = 3
postype = p1
pos = -30, 10
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 100, Dust]
type = playsnd
trigger1 = anim = 4101 && !var(37)
value = s0, 101
persistent = 0
[State 0, PlayerPush]
type = PlayerPush
trigger1 = anim = 4100 && animelemtime(2)>=0 && !moveguarded
value = 0
ignorehitpause = 0
[State 100, Dust]
type = playsnd
trigger1 = anim = 4101 && animelemtime(2)=0
value = s5, 43
persistent = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 4101 && animelemtime(2)=0
value = S5,27
[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <= 118
value = SCA
time = 1

[State 3005, Hit]
type = hitdef
trigger1 = !time && !var(37)
priority = 4, Hit
attr = S, HA
damage = ceil(120 * (fvar(12))), 4
animtype = diagup
hitflag = MAF
guardflag = M
kill = 0
pausetime = 0, 0
hitSound = -1 + 0 * (var(31) := 11)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 73), var(36) := -101
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, -3
yaccel = 0.05
ground.cornerpush.veloff = 0
air.velocity = 0, -3
guard.velocity = -10.52
p2facing = 1
fall = 1
air.fall = 1
ID = 4100
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 0
palfx.color = ifelse((var(44)=2),50,128)
palfx.sinadd=ifelse(var(44)=2,50,ifelse(var(44)=1||var(44)=3,64,0)),ifelse(var(44)=2,25,ifelse(var(44)=1,0,64)),ifelse(var(44)=2,80,ifelse(var(44)=1,64,0)),ifelse(var(44)=2,8,4)
palfx.mul = ifelse((var(44)=[2,3]),192,ifelse(var(44)=1,192,0)), ifelse((var(44)=2),256,ifelse(var(44)=1,0,ifelse(var(44)=3,128,192))), ifelse(var(44)=3,0,ifelse((var(44)=2),512,96))
palfx.time = 256

[State 3005, Hit]
type = hitdef
trigger1 = !time && var(37)
priority = 4, Hit
attr = A, HA
damage = ceil(120 * (fvar(12))), 4
animtype = diagup
hitflag = MAF
guardflag = H
kill = 0
pausetime = 0, 0
hitSound = -1 + 0 * (var(31) := 11)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 73), var(36) := -101
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, -3
yaccel = 0.05
ground.cornerpush.veloff = 0
air.velocity = 0, -3
guard.velocity = -10.52
p2facing = 1
fall = 1
air.fall = 1
ID = 4100
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 0
palfx.color = ifelse((var(44)=2),50,128)
palfx.sinadd=ifelse(var(44)=2,50,ifelse(var(44)=1||var(44)=3,64,0)),ifelse(var(44)=2,25,ifelse(var(44)=1,0,64)),ifelse(var(44)=2,80,ifelse(var(44)=1,64,0)),ifelse(var(44)=2,8,4)
palfx.mul = ifelse((var(44)=[2,3]),192,ifelse(var(44)=1,192,0)), ifelse((var(44)=2),256,ifelse(var(44)=1,0,ifelse(var(44)=3,128,192))), ifelse(var(44)=3,0,ifelse((var(44)=2),512,96))
palfx.time = 256

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 0, Remove Flashes from previous Super]
type = removeexplod
trigger1 = !time
ID = 3999

[State 0, TargetState]
type = TargetState
trigger1 = movehit = 1 && numtarget(4100)
value = 1111151
ID = 4100
ignorehitpause = 1
persistent = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = anim = 4101 && !moveguarded
value = 0
ignorehitpause = 1
[State 0, End]
type = changestate
trigger1 = movehit = 1 && numtarget
value = 4401
ignorehitpause = 1
ctrl = 0
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 128
value = ifelse(var(37),3301,3401)
elem = ifelse(var(37),2,1)
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 3301 || anim = 3401
movetype = I        ;I,A,H
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 3301
physics = A         ;A,C,S,N
[State 0, End]
type = changestate
trigger1 = anim = 3401 && !animtime
value = 0
ctrl = 1

[Statedef 4401]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = !time && var(37)
statetype = A
[State 3005, Hit]
type = hitdef
trigger1 = time = 2 && !var(37)
priority = 4, Hit
attr = S, HA
damage = ceil(120 * (fvar(12))), 4
animtype = diagup
hitflag = MAF
;guardflag = M
kill = 0
pausetime = 0, 0
hitSound = -1 + 0 * (var(31) := 11)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 73), var(36) := -101
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, -3
yaccel = 0.05
ground.cornerpush.veloff = 0
air.velocity = 0, -3
guard.velocity = -10.52
p2facing = 1
fall = 1
air.fall = 1
ID = 4100
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 0
palfx.color = ifelse((var(44)=2),50,128)
palfx.sinadd=ifelse(var(44)=2,50,ifelse(var(44)=1||var(44)=3,64,0)),ifelse(var(44)=2,25,ifelse(var(44)=1,0,64)),ifelse(var(44)=2,80,ifelse(var(44)=1,64,0)),ifelse(var(44)=2,8,4)
palfx.mul = ifelse((var(44)=[2,3]),192,ifelse(var(44)=1,192,0)), ifelse((var(44)=2),256,ifelse(var(44)=1,0,ifelse(var(44)=3,128,192))), ifelse(var(44)=3,0,ifelse((var(44)=2),512,96))
palfx.time = 256

[State 3005, Hit]
type = hitdef
trigger1 = time = 2 && var(37)
priority = 4, Hit
attr = A, HA
damage = ceil(120 * (fvar(12))), 4
animtype = diagup
hitflag = MAF
;guardflag = M
kill = 0
pausetime = 0, 0
hitSound = -1 + 0 * (var(31) := 11)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 73), var(36) := -101
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, -3
yaccel = 0.05
ground.cornerpush.veloff = 0
air.velocity = 0, -3
guard.velocity = -10.52
p2facing = 1
fall = 1
air.fall = 1
ID = 4100
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 0
palfx.color = ifelse((var(44)=2),50,128)
palfx.sinadd=ifelse(var(44)=2,50,ifelse(var(44)=1||var(44)=3,64,0)),ifelse(var(44)=2,25,ifelse(var(44)=1,0,64)),ifelse(var(44)=2,80,ifelse(var(44)=1,64,0)),ifelse(var(44)=2,8,4)
palfx.mul = ifelse((var(44)=[2,3]),192,ifelse(var(44)=1,192,0)), ifelse((var(44)=2),256,ifelse(var(44)=1,0,ifelse(var(44)=3,128,192))), ifelse(var(44)=3,0,ifelse((var(44)=2),512,96))
palfx.time = 256

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 20

[State 0, DUSTO]
type = Explod
;trigger1 = (anim = 1200 || anim = 3400) && vel x
trigger1 = !(time%6) && !var(37)
ID = 8130
anim = 8130
postype = p1
pos = 45, 10
persistent = 1
removetime = -2
supermovetime = 0
sprpriority = 4
ownpal = 1
scale = 0.25,0.125
removeongethit = 1

[State 0, ChangeAnim]
type = Changestate
trigger1 = Time >= 60
value = ifelse((partner,stateno!=[4400,4409]),4102,4402)
value = 4402
ctrl = 0


[Statedef 4402]
type = S
physics = N
movetype = A
anim = 710
velset = 0, 0
ctrl = 0
sprpriority = -1
[State 720, Snd]
type = playsnd
trigger1 = animelem = 1
value = 5, 13
[State 0, ScreenBound]
type = ScreenBound
trigger1 = animelemtime(5)<0
value = 0
movecamera = 0,0
[State 710, Push]
type = playerpush
trigger1 = 1
value = 0
[State 710, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1
[State 0, PosSet]
type = PosSet
trigger1 = animelem = 5
x = target, pos x -240*facing
;y = helper(7652),pos y -80
y = -90
[State 710, End]
type = changestate
trigger1 = !animtime
value = 4403
ctrl = 0


; 
[Statedef 4403]
type = A
physics = N
movetype = A
anim = 3900
ctrl = 0
velset = 0, 0
poweradd = 0
sprpriority = 1
;facep2 = 1

[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 35
dest = 4050, ifelse(var(44)=1,3,16)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 27
dest = 4050, ifelse(var(44)=1,6,13)
[State -3, Energy Color]
type = remappal
trigger1 = var(44)=1 || var(44)=3
source = 4050, 32
dest = 4050, ifelse(var(44)=1,6,13)

[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && prevstateno != [3000,4999]
var(22)=ifelse(power<=2999,2,3)
[State 3000, Super Cancel]
type = VarSet
trigger1 = !time && var(46) && AIlevel && ((var(22) = [21,22])||(var(22) = [31,33])) && prevstateno = [3000,4999]
var(22)= -1

[State 3000, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5
[State 3000, width]
type = width
trigger1 = !time
value = floor(40 * const(size.xscale))

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3000, Super Pause FX]
type = helper
trigger1 = animelemtime(5)=0
helpertype = normal
stateno = 8522
ID = 8522
name = "Super Charge"
postype = p1
pos = floor(-35 * const(size.xscale)), floor(-154 * const(size.yscale))
ownpal = 1
facing = facing
persistent = 0
supermovetime = 9999
size.xscale = 1
size.yscale = 1
[State 3000, Super Pause]
type = superpause
trigger1 = time = 3
time = 110
movetime = 110
anim = -1
p2defmul = 1
darken = 0

[State 0, Energy Charge]
type = Explod
trigger1 = anim = 3900 && animelem = 5
ID = 1000
anim = 1095
postype = p1
pos = floor(-35 * const(size.xscale)), floor(-154 * const(size.yscale))
bindtime = -1
removetime = 43
supermovetime = 43
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0, Energy Charge]
type = Explod
trigger1 = anim = 3900 && animelem = 5
ID = 1000
anim = 1096
postype = p1
pos = floor(-35 * const(size.xscale)), floor(-154 * const(size.yscale))
bindtime = -1
removetime = 43
supermovetime = 43
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 740, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 6025
ID = 6025
name = "Enviroment Color Distortion"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 1000
anim = 1095
postype = p1
pos = floor(95 * const(size.xscale)), floor(-123 * const(size.yscale))
bindtime = -1
removetime = 36
supermovetime = 36
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 1000
anim = 1096
postype = p1
pos = floor(95 * const(size.xscale)), floor(-123 * const(size.yscale))
bindtime = -1
removetime = 36
supermovetime = 36
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0, Energy Charge]
type = Explod
trigger1 = !time
ID = 1000
anim = 1096
postype = p1
pos = floor(95 * const(size.xscale)), floor(-123 * const(size.yscale))
bindtime = -1
removetime = 36
supermovetime = 36
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
;
;[State 0, Energy Charge] ; (Doesn't really look good, so I simply removed it).
;type = Explod
;trigger1 = !time
;ID = 1000
;anim = 3901
;postype = p1
;pos = 0, 0
;bindtime = -1
;removetime = -2
;supermovetime = 54
;sprpriority = 2
;ownpal = 1
;scale = 0.5*const(size.xscale),0.5*const(size.yscale)
;removeongethit = 1

[State 0, Remove Flashes from previous Super]
type = removeexplod
trigger1 = !time
ID = 3999
[State Flashes]
type = Explod
trigger1 = !time
ID = 3999
anim = 3902
postype = p1
pos = 0,0
bindtime = -1
removetime = -1
sprpriority = 2
supermovetime = 111
ownpal = 1
scale = 0.5*const(size.xscale),0.5*const(size.yscale)
removeongethit = 1

[State Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 3000, NHB]
type = nothitby
trigger1 = 1
time = 1
value = SCA
[State 0, VelSet]
type = VelSet
trigger1 = anim = 3900 || anim = 3300
x = 0
y = 0

[State 3000, Gigantic Meteor]
type = helper
trigger1 = anim = 3900 && animelem = 8
helpertype = normal
stateno = 4405
ID = 3905
name = "Gigantic Meteor"
postype = p1
;pos = floor(140 * const(size.xscale)), floor(-214 * const(size.yscale))
pos = 55, floor(-105 * const(size.yscale))
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
[State 3000, Snd]
type = playsnd
trigger1 = anim = 3900 && animelem = 8
value = 5, 30
;
;[State 0, DUSTO]
;type = Explod
;trigger1 = animelem = 4
;ID = 8120
;anim = 8120
;postype = p1
;pos = 60, 0
;removetime = -2
;supermovetime = 0
;sprpriority = 4
;ownpal = 1
;scale = 0.25,0.25
;removeongethit = 1

[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 4, ifelse((partner, name = "Vegeta"),32,40)
channel = 0
[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 4, ifelse((partner, name = "Vegeta"),32,40)
channel = 3
[State 3000, Snd]
type = playsnd
trigger1 = !time && partner, name != "Vegeta"
value = 4, 40
channel = 5
[State 3000, Snd]
type = playsnd
trigger1 = time = 106
value = 3, 28
channel = 0
[State 3000, Snd]
type = playsnd
trigger1 = time = 106
value = 3, 28
channel = 3
[State 3000, Snd]
type = playsnd
trigger1 = anim = 3900 && animelem = 8
value = 5, 24

[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 5, 34

[State 3000, End]
type = changeanim
trigger1 = anim = 3900 && animelemtime(8)=0
value = 3300
elem = 8
[State 3000, End]
type = changeanim
trigger1 = anim = 3300 && (time>=240 || (numhelper(3905) && helper(3905), stateno != 4405))
value = 3301

[State 4001, fadeout]
type = bgpalfx
trigger1 = !time
time = 64
sinadd = -128, -128, -128, 256

[State 4001, fadeout]
type = bgpalfx
trigger1 = time >= 64 && anim != 3301
time = 1
add = -128, -128, -128
sinadd = 0, 0, 0, 1
persistent = 1

[State 4001, fadeout]
type = bgpalfx
trigger1 = anim = 3301 && animelemtime(1)=0
time = 64
add = -128, -128, -128
sinadd = 128, 128, 128, 256

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 3301 && animelemtime(1)=0
movetype = I
physics = A

[State 0, Remove Flashes]
type = removeexplod
trigger1 = anim=3301&&animelemtime(1)=0
ID = 3999
[State Flashes Fading]
type = Explod
trigger1 = anim=3301&&animelemtime(1)=0
ID = 3999
anim = 3303
postype = p1
pos = 0,0
bindtime = -1
removetime = -2
sprpriority = 2
supermovetime = -1
ownpal = 1
scale = 0.5*const(size.xscale),0.5*const(size.yscale)
removeongethit = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = anim = 3301
trigger1 = animelemtime(1)=0
y = -6
x = -2