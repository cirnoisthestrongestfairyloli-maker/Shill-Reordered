;===========================================================================
;†††COMMON OVERRIDE†††
;===========================================================================
;■ニュートラル
[statedef 0]
type = s
physics = s

[state 0, selfstate]
type = selfstate
trigger1 = !(authorname = "otzkai")
trigger1 = prevstateno != 0
value = 0

[state 0, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 0, changeanim]
type = changeanim
trigger1 = anim != 0 && anim != 5
trigger2 = anim = 5 && animtime = 0
value = 0

[state 0, posset]
type = posset
trigger1 = pos y != 0
y = 0

[state 0, velset]
type = velset
trigger1 = time = 0
y = 0

[state 0, changestate]
type = changestate
trigger1 = !alive
value = 5050
;---------------------------------------------------------------------------
;■しゃがみ開始
[statedef 10]
type = c
physics = c
anim = 10

[state 10, changestate]
type = changestate
trigger1 = ishelper
value = prevstateno
ignorehitpause = 1

[state 10, velmul]
type = velmul
trigger1 = time = 0
x = 0.75

[state 10, selfstate]
type = selfstate
trigger1 = animtime = 0
trigger2 = anim = 11
value = 11
;---------------------------------------------------------------------------
;■歩行
[statedef 20]
type = s
physics = s

[state 20, changestate]
type = changestate
trigger1 = ishelper
value = prevstateno
ignorehitpause = 1

[state 20, changestate]
type = changestate
trigger1 = var(50) != 0
value = 0
ctrl = 1
ignorehitpause = 1

[state 20, velset]
type = velset
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[state 20, velset]
type = velset
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[state 20, changeanim]
type = changeanim
triggerall = vel x > 0
trigger1 = anim != 20 && anim != 5
trigger2 = anim = 5 && animtime = 0
value = 20

[state 20, changeanim]
type = changeanim
triggerall = vel x < 0
trigger1 = anim != 21 && anim != 5
trigger2 = anim = 5 && animtime = 0
value = 21
;---------------------------------------------------------------------------
;■歩行(ai)
[statedef 21]
type = s
physics = s
ctrl = 0

[state 21, varset]
type = varset
trigger1 = time = 0
sysvar(1) = 0

[state 21, velset]
type = velset
trigger1 = sysvar(1) = 1
trigger2 = anim = 20
x = const(velocity.walk.fwd.x)

[state 21, velset]
type = velset
trigger1 = sysvar(1) = -1
trigger2 = anim = 21
x = const(velocity.walk.back.x)

[state 21, changeanim]
type = changeanim
triggerall = vel x >= 0
trigger1 = anim != 20 && anim != 5
trigger2 = anim = 5 && animtime = 0
value = 20

[state 21, changeanim]
type = changeanim
triggerall = vel x < 0
trigger1 = anim != 21 && anim != 5
trigger2 = anim = 5 && animtime = 0
value = 21
;---------------------------------------------------------------------------
;■ジャンプスタート
[statedef 40]
type = a
physics = n
anim = 40
ctrl = 0

[state 40, changestate]
type = changestate
trigger1 = ishelper
value = prevstateno
ignorehitpause = 1

[state 40, changestate]
type = changestate
trigger1 = var(50) != 0
value = 0
ctrl = 1
ignorehitpause = 1

[state 40, varset]
type = varset
trigger1 = time = 0
sysvar(1) = 0

[state 40, varset]
type = varset
trigger1 = command = "holdfwd"
sysvar(1) = 1

[state 40, varset]
type = varset
trigger1 = command = "holdback"
sysvar(1) = -1

[state 40, velset]
type = velset
trigger1 = animtime = 0
x = ifelse(sysvar(1)=0,const(velocity.jump.neu.x),ifelse(sysvar(1)=1,const(velocity.jump.fwd.x),const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[state 40, velset]
type = velset
trigger1 = animtime = 0
trigger1 = prevstateno = 100
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[state 40, changestate]
type = changestate
trigger1 = animtime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
;■ジャンプスタート(ai)
[statedef 41]
type = a
physics = n
anim = 40
ctrl = 0

[state 41, varset]
type = varset
trigger1 = time = 0
sysvar(1) = 1

[state 41, velset]
type = velset
trigger1 = animtime = 0
x = ifelse(sysvar(1)=0,const(velocity.jump.neu.x),ifelse(sysvar(1)=1,const(velocity.jump.fwd.x),const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[state 41, velset]
type = velset
trigger1 = animtime = 0
trigger1 = prevstateno = 100
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[state 41, changestate]
type = changestate
trigger1 = animtime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
;■エアジャンプ
[statedef 45]
type = a
physics = n
ctrl = 0
velset = 0,0

[state 45, changeanim]
type = changeanim
trigger1 = selfanimexist(44)
value = 44

[state 45, changeanim]
type = changeanim
trigger1 = !selfanimexist(44)
value = 41

[state 45, varset]
type = varset
trigger1 = time = 0
sysvar(1) = 0+(var(50)!=0)

[state 45, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "holdfwd"
sysvar(1) = 1

[state 45, varset]
type = varset
trigger1 = var(50) = 0
trigger1 = command = "holdback"
sysvar(1) = -1

[state 45, velset]
type = velset
trigger1 = time = 2
x = ifelse(sysvar(1)=0,0,ifelse(sysvar(1)=1,const(velocity.airjump.fwd.x)*(1.0+(prevstateno=63)*0.3),const(velocity.airjump.back.x)*(1.0+(prevstateno=63)*0.3)))
y = const(velocity.airjump.y)

[state 45, changestate]
type = changestate
trigger1 = time = 2
value = 50
ctrl = 1
;---------------------------------------------------------------------------
;■ジャンプアップ
[statedef 50]
type = a
physics = a

[state 50, varset]
type = varset
trigger1 = time = 0
sysvar(1) = 0

[state 50, changeanim]
type = changeanim
trigger1 = time = 0
value = ifelse((vel x)=0,41,ifelse((vel x)>0,42,43))
elem = (prevstateno=[110,115])*4

[state 50, changeanim]
type = changeanim
trigger1 = vel y > -2
trigger1 = selfanimexist(anim + 3)
persistent = 0
value = anim + 3

[state 50, varrandom]
type = varrandom
trigger1 = 1
v = 4
range = 0,4

[state 50, explod]
type = explod
trigger1 = time < 16
trigger1 = time%2 = 0
id = 17000
anim = 17000+10*var(4)
postype = p1
pos = 0,0
random = 20,20
vel = -0.05*(vel x),-0.05*(vel y)
sprpriority = 4
ownpal = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
;---------------------------------------------------------------------------
;■ジャンプ着地
[statedef 52]
type = s
physics = s
ctrl = 0
anim = 47

[state 52, velset]
type = velset
trigger1 = 1
y = 0

[state 52, posset]
type = posset
trigger1 = 1
y = 0

[state 52, varadd]
type = varadd
trigger1 = authorname = "otzkai"
trigger1 = sysvar(2) > 0
sysvar(2) = -1

[state 52, selfstate]
type = selfstate
triggerall = time >= 3
trigger1 = !(authorname = "otzkai")
trigger2 = sysvar(2) = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;■ダッシュ
[statedef 100]
type = s
physics = s
anim = 100
ctrl = 1

[state 100, changestate]
type = changestate
trigger1 = var(50) != 0
value = 0
ctrl = 1
ignorehitpause = 1

[state 100, assertspecial]
type = assertspecial
trigger1 = 1
flag = nowalk
flag2 = noautoturn

[state 100, assertspecial]
type = assertspecial
trigger1 = time < 10
flag = nostandguard
flag2 = nocrouchguard

[state 100, velset]
type = velset
trigger1 = 1
x = const(velocity.run.fwd.x)*(1+(prevstateno=901))

[state 100, varrandom]
type = varrandom
trigger1 = 1
v = 4
range = 0,4

[state 100, explod]
type = explod
trigger1 = time%5 = 0
anim = 17000+10*var(4)
id = 17000
pos = 0,0
postype = p1
random = 20,20
vel = -0.05*(vel x),-0.05*(vel y)
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1

[state 100, changestate]
type = changestate
trigger1 = command != "holdfwd"
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;■ダッシュ(ai)
[statedef 101]
type = s
physics = s
anim = 100
ctrl = 0

[state 101, velset]
type = velset
trigger1 = 1
x = const(velocity.run.fwd.x)*(1+(prevstateno=901))

[state 101, varrandom]
type = varrandom
trigger1 = 1
v = 4
range = 0,4

[state 101, explod]
type = explod
trigger1 = time%5 = 0
anim = 17000+10*var(4)
id = 17000
pos = 0,0
postype = p1
random = 20,20
vel = -0.05*(vel x),-0.05*(vel y)
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1

[state 101, changestate]
type = changestate
trigger1 = time = 100
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;■バックステップ
[statedef 105]
type = a
physics = a
anim = 105
ctrl = 0

[state 105, playerpush]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 105, nothitby]
type = nothitby
trigger1 = time = [0,10]
time = 1
value = sca,aa
ignorehitpause = 1

[state 105, velset]
type = velset
trigger1 = time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[state 105, varrandom]
type = varrandom
trigger1 = 1
v = 4
range = 0,4

[state 105, explod]
type = explod
trigger1 = time%3 = 0
trigger1 = time < 15
id = 17000
anim = 17000+10*var(4)
postype = p1
pos = 0,0
random = 20,20
vel = -0.05*(vel x),-0.05*(vel y)
sprpriority = 4
ownpal = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)

[state 105, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 106
;---------------------------------------------------------------------------
;■ステップ着地
[statedef 106]
type = s
physics = s
ctrl = 0
anim = 47

[state 106, velset]
type = velset
trigger1 = time = 0
y = 0

[state 106, posset]
type = posset
trigger1 = time = 0
y = 0

[state 106, changestate]
type = changestate
trigger1 = time = 10
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;■空中ダッシュ
[statedef 110]
type = a
physics = n
anim = 110

[state 110, assertspecial]
type = assertspecial
trigger1 = 1
flag = noautoturn

[state 110, assertspecial]
type = assertspecial
trigger1 = 1
flag = noairguard

[state 110, varset]
type = varset
trigger1 = time = 0
sysvar(2) = 5

[state 110, velset]
type = velset
trigger1 = time = 0
x = const(velocity.run.fwd.x)*(1+(prevstateno=901))*0.8
y = 0

[state 110, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 110, varrandom]
type = varrandom
trigger1 = 1
v = 4
range = 0,4

[state 110, explod]
type = explod
trigger1 = time%3 = 0
id = 17000
anim = 17000+10*var(4)
postype = p1
pos = -floor(const(size.xscale)*15),-floor(const(size.yscale)*25)
random = 90,25
vel = -0.6,-0.1
sprpriority = 4
ownpal = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)

[state 110, ctrlset]
type = ctrlset
trigger1 = time >= 3
value = 1

[state 110, changestate]
type = changestate
trigger1 = time >= 30;20
value = 50
;---------------------------------------------------------------------------
;■空中バックダッシュ
[statedef 115]
type = a
physics = n
anim = 115

[state 115, assertspecial]
type = assertspecial
trigger1 = 1
flag = noautoturn

[state 115, assertspecial]
type = assertspecial
trigger1 = time < 10
flag = noairguard

[state 115, varset]
type = varset
trigger1 = time = 0
sysvar(2) = 5

[state 115, velset]
type = velset
trigger1 = time = 0
x = -const(velocity.run.fwd.x)*0.8
y = 0

[state 115, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 115, varrandom]
type = varrandom
trigger1 = 1
v = 4
range = 0,4

[state 115, explod]
type = explod
trigger1 = time%3 = 0
id = 17000
anim = 17000+10*var(4)
postype = p1
pos = floor(const(size.xscale)*15),-floor(const(size.yscale)*5)
random = 90,25
vel = -0.6,-0.1
sprpriority = 4
ownpal = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)

[state 115, ctrlset]
type = ctrlset
trigger1 = time >= 3
value = 1

[state 115, changestate]
type = changestate
trigger1 = time >= 30;20
value = 50
;===========================================================================
;■GUARD (START)
[statedef 120]
type = u
physics = u

[state 120, ctrlset]
type = ctrlset
trigger1 = var(50) = 0
value = 1

[state 120, changeanim]
type = changeanim
triggerall = var(50) = 0
trigger1 = time = 0
value = 120 + (statetype = c) + (statetype = a)*2

[state 120, changeanim]
type = changeanim
triggerall = var(50) != 0
triggerall = statetype != a
trigger1 = time = 0
trigger1 = anim = [20,100]
value = 120 + (statetype = c)

[state 120, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = s
physics = s

[state 120, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = c
physics = c

[state 120, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = a
physics = a

[state 120, statetypeset]
type = statetypeset
triggerall = statetype = s
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2bodydist x > 100
statetype = c
physics = c

[state 120, statetypeset]
type = statetypeset
triggerall = statetype = c
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
statetype = s
physics = s

[state 120, changestate]
type = changestate
trigger1 = animtime = 0
value = 130 + (statetype = c) + (statetype = a)*2

[state 120, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = command != "holdback"
trigger2 = var(50) != 0
trigger2 = time > 10
trigger2 = random < 100
trigger3 = !inguarddist
value = 140
;---------------------------------------------------------------------------
;■STAND GUARD (GUARDING)
[statedef 130]
type = s
physics = s

[state 130, changeanim]
type = changeanim
trigger1 = anim != 130
value = 130

[state 130, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2statetype = s
trigger3 = p2bodydist x > 100
value = 131

[state 130, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = command != "holdback"
trigger2 = var(50) != 0
trigger2 = time > 10
trigger2 = random < 100
trigger3 = !inguarddist
value = 140
;---------------------------------------------------------------------------
;■CROUCH GUARD (GUARDING)
[statedef 131]
type = c
physics = c

[state 131, changeanim]
type = changeanim
trigger1 = anim != 131
value = 131

[state 131, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
value = 130

[state 131, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = command != "holdback"
trigger2 = var(50) != 0
trigger2 = time > 10
trigger2 = random < 100
trigger3 = !inguarddist
value = 140
;---------------------------------------------------------------------------
;■AIR GUARD (GUARDING)
[statedef 132]
type = a
physics = n

[state 132, changeanim]
type = changeanim
triggerall = var(50) = 0
trigger1 = anim != 132
value = 132

[state 132, veladd]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 132, varset]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[state 132, velset]
type = velset
trigger1 = sysvar(0)
y = 0

[state 132, posset]
type = posset
trigger1 = sysvar(0)
y = 0

[state 132, changestate]
type = changestate
triggerall = sysvar(0)
triggerall = inguarddist
trigger1 = var(50) = 0
trigger1 = command = "holdback"
trigger2 = var(50) != 0
value = 130

[state 132, changestate]
type = changestate
trigger1 = sysvar(0)
value = 52

[state 132, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = command != "holdback"
trigger2 = var(50) != 0
trigger2 = time > 10
trigger2 = random < 100
trigger3 = !inguarddist
value = 140
;---------------------------------------------------------------------------
;■GUARD (END)
[statedef 140]
type = u
physics = u
ctrl = 1

[state 140, changeanim]
type = changeanim
triggerall = var(50) = 0
trigger1 = time = 0
value = 140 + (statetype = c) + (statetype = a)*2

[state 140, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = s
physics = s

[state 140, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = c
physics = c

[state 140, statetypeset]
type = statetypeset
trigger1 = time = 0 && statetype = a
physics = a

[state 140, statetypeset]
type = statetypeset
triggerall = statetype = s
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2bodydist x > 100
statetype = c
physics = c

[state 140, statetypeset]
type = statetypeset
triggerall = statetype = c 
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
statetype = s
physics = s
;---------------------------------------------------------------------------
;■SGUARDHIT (SHAKING)
[statedef 150]
type = s
movetype = h
physics = n
velset = 0,0

[state 150, changeanim]
type = changeanim
trigger1 = 1
value = 150

[state 150, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = hitshakeover
value = 151 + 2*(command = "holddown")

[state 150, changestate]
type = changestate
trigger1 = var(50) != 0
trigger1 = hitshakeover
value = 151 + 2*(p2statetype = c || p2bodydist x > 100)

[state 150, statetypeset]
type = statetypeset
triggerall = statetype = s 
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2bodydist x > 100
statetype = c
physics = c

[state 150, statetypeset]
type = statetypeset
triggerall = statetype = c
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
statetype = s
physics = s
;---------------------------------------------------------------------------
;■SGUARDHIT2 (KNOCKED BACK)
[statedef 151]
type = s
movetype = h
physics = s
anim = 150

[state 151, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1

[state 151, velset]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0

[state 151, ctrlset]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1

[state 151, statetypeset]
type = statetypeset
triggerall = statetype = s 
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2bodydist x > 100
statetype = c
physics = c

[state 151, statetypeset]
type = statetypeset
triggerall = statetype = c 
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
statetype = s
physics = s

[state 151, changestate]
type = changestate
trigger1 = hitover
value = 130
ctrl = 1
;---------------------------------------------------------------------------
;■CGUARDHIT (SHAKING)
[statedef 152]
type = c
movetype = h
physics = n
velset = 0,0

[state 152, changeanim]
type = changeanim
trigger1 = 1
value = 151

[state 152, changestate]
type = changestate
trigger1 = var(50) = 0
trigger1 = hitshakeover
value = 151 + 2*(command = "holddown")

[state 152, changestate]
type = changestate
trigger1 = var(50) != 0
trigger1 = hitshakeover
value = 153

[state 152, statetypeset]
type = statetypeset
triggerall = statetype = s
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2bodydist x > 100
statetype = c
physics = c

[state 152, statetypeset]
type = statetypeset
triggerall = statetype = c 
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
statetype = s
physics = s
;---------------------------------------------------------------------------
;■CGUARDHIT2 (KNOCKED BACK)
[statedef 153]
type = c
movetype = h
physics = c
anim = 151

[state 153, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1

[state 153, velset]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0

[state 153, ctrlset]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1

[state 153, statetypeset]
type = statetypeset
triggerall = statetype = s
trigger1 = var(50) = 0
trigger1 = command = "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = c
trigger3 = var(50) != 0
trigger3 = p2bodydist x > 100
statetype = c
physics = c

[state 153, statetypeset]
type = statetypeset
triggerall = statetype = c 
trigger1 = var(50) = 0
trigger1 = command != "holddown"
trigger2 = var(50) != 0
trigger2 = p2statetype = s
trigger2 = p2bodydist x <= 100
trigger2 = random < 200
trigger3 = var(50) != 0
trigger3 = p2statetype = a
trigger3 = p2bodydist x <= 100
statetype = s
physics = s

[state 153, changestate]
type = changestate
trigger1 = hitover
value = 131
ctrl = 1
;---------------------------------------------------------------------------
;■AGUARDHIT (SHAKING)
[statedef 154]
type = a
movetype = h
physics = n
velset = 0,0

[state 154, changeanim]
type = changeanim
trigger1 = 1
value = 152

[state 154, changestate]
type = changestate
trigger1 = hitshakeover
value = 155
;---------------------------------------------------------------------------
;■AGUARDHIT2 (KNOCKED AWAY)
[statedef 155]
type = a
movetype = h
physics = n
anim = 152

[state 155, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1
y = 1

[state 155, veladd]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 155, ctrlset]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1

[state 155, varset]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[state 155, velset]
type = velset
trigger1 = sysvar(0)
y = 0

[state 155, posset]
type = posset
trigger1 = sysvar(0)
y = 0

[state 155, changestate]
type = changestate
triggerall = sysvar(0)
triggerall = inguarddist
trigger1 = var(50) = 0
trigger1 = command = "holdback"
trigger2 = var(50) != 0
value = 130

[state 155, changestate]
type = changestate
trigger1 = sysvar(0)
value = 52
;===========================================================================
;■HIT_G SHAKE CUSTOM
[statedef 5005]
type = s
movetype = h
physics = n
velset = 0,0

[state 5005, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 5005, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = gethitvar(animtype) != [3,5]
value = ifelse((gethitvar(groundtype) = 1),5000,5010) + gethitvar(animtype)

[state 5005, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = gethitvar(animtype) = [3,5]
value = 5030

[state 5005, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = (gethitvar(animtype) = [4,5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 5005, changeanim]
type = changeanim
trigger1 = time > 0
value = anim

[state 5005, statetypeset]
type = statetypeset
trigger1 = time = 0
trigger1 = gethitvar(yvel) != 0 || gethitvar(fall)
trigger2 = pos y != 0
statetype = a

[state 5005, changestate]
type = changestate
trigger1 = hitshakeover
trigger1 = gethitvar(yvel) = 0 && !gethitvar(fall)
value = 5006

[state 5005, changestate]
type = changestate
trigger1 = hitshakeover
value = 5033
;---------------------------------------------------------------------------
[statedef 5006]
type = s
movetype = h
physics = s

[state 5006, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1

[state 5006, changeanim]
type = changeanim
trigger1 = animtime = 0
value = 5005 + gethitvar(animtype) + (gethitvar(groundtype)=2)*10

[state 5006, velmul]
type = velmul
trigger1 = time >= gethitvar(slidetime)
x = .6

[state 5006, velset]
type = velset
trigger1 = hitover
x = 0

[state 5006, defencemulset]
type = defencemulset
trigger1 = hitover
value = 1

[state 5006, selfstate]
type = selfstate
trigger1 = hitover
value = 0
ctrl = 1
;===========================================================================
;■HIT_A SHAKE CUSTOM
[statedef 5025]
type = a
movetype = h
physics = n
velset = 0,0

[state 5025, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 5025, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = gethitvar(animtype) != [3,5]
value = ifelse((gethitvar(airtype) = 1),5000,5010) + gethitvar(animtype)

[state 5025, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = gethitvar(animtype) = [3,5]
value = 5030

[state 5025, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = (gethitvar(animtype) = [4,5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 5025, changeanim]
type = changeanim
trigger1 = time > 0
value = anim

[state 5025, changestate]
type = changestate
trigger1 = hitshakeover
value = 5033
;---------------------------------------------------------------------------
[statedef 5033]
type = a
movetype = h
physics = n
ctrl = 0

[state 5033, veladd]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5033, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1
y = 1

[state 5033, selfstate]
type = selfstate
triggerall = !hitfall
trigger1 = hitover
trigger2 = vel y > 0
trigger2 = pos y >= 10
value = 5040

[state 5033, changestate]
type = changestate
triggerall = hitfall
trigger1 = hitover
trigger2 = vel y > 0
trigger2 = pos y >= 10
value = 5053

[state 5033, changestate]
type = changestate
trigger1 = animtime = 0
value = 5038
;---------------------------------------------------------------------------
[statedef 5038]
type = a
movetype = h
physics = n

[state 5038, changeanim]
type = changeanim
triggerall = anim != [7696,7697]
trigger1 = time = 0
trigger1 = selfanimexist(5035)
trigger1 = anim != [5051,5059]
trigger1 = anim != 5090
value = 5035

[state 5038, veladd]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5038, selfstate]
type = selfstate
triggerall = !hitfall
trigger1 = hitover
trigger2 = animtime = 0
trigger3 = vel y > 0
trigger3 = pos y >= 10
trigger4 = time = 0
trigger4 = anim != 5035
value = 5040

[state 5038, changestate]
type = changestate
triggerall = hitfall
trigger1 = hitover
trigger2 = animtime = 0
trigger3 = vel y > 0
trigger3 = pos y >= 10
trigger4 = time = 0
trigger4 = anim != 5035
value = 5053
;---------------------------------------------------------------------------
[statedef 5053]
type = a
movetype = h
physics = n

[state 5053, changeanim]
type = changeanim
triggerall = anim != [7696,7697]
trigger1 = animtime = 0
trigger1 = anim = 5035
trigger2 = time = 0
trigger2 = anim != 5035
trigger2 = (anim != [5051, 5059]) && (anim != [5061, 5069])
trigger2 = anim != 5090
value = 5050

[state 5053, changeanim]
type = changeanim
trigger1 = anim = [5050,5059]
trigger1 = vel y >= ifelse(anim = 5050, 1, -2)
trigger1 = selfanimexist(anim+10)
value = anim+10
persistent = 0

[state 5053, veladd]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5053, selfstate]
type = selfstate
trigger1 = canrecover
value = 5050

[state 5053, selfstate]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100
;===========================================================================
;■HIT_X SHAKE CUSTOM
[statedef 5060]
type = a
movetype = h
physics = n
velset = 0,0

[state 5060, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 5060, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = gethitvar(animtype) != [3,5]
value = ifelse((gethitvar(airtype) = 1),5000,5010) + gethitvar(animtype)

[state 5060, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = gethitvar(animtype) = [3,5]
value = 5030

[state 5060, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = (gethitvar(animtype) = [4,5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 5060, changeanim]
type = changeanim
trigger1 = time > 0
value = anim

[state 5060, changestate]
type = changestate
trigger1 = hitshakeover
value = 5061
;---------------------------------------------------------------------------
[statedef 5061]
type = a
movetype = h
physics = n
ctrl = 0

[state 5061, veladd]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5061, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1
y = 1

[state 5061, changestate]
type = changestate
trigger1 = hitover
trigger2 = vel y > 0
trigger2 = pos y >= 10
value = 5063

[state 5061, changestate]
type = changestate
trigger1 = animtime = 0
value = 5062
;---------------------------------------------------------------------------
[statedef 5062]
type = a
movetype = h
physics = n

[state 5062, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = selfanimexist(5035)
trigger1 = anim != [5051,5059]
trigger1 = anim != 5090
value = 5035

[state 5062, veladd]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5062, changestate]
type = changestate
trigger1 = hitover
trigger2 = animtime = 0
trigger3 = vel y > 0
trigger3 = pos y >= 10
trigger4 = time = 0
trigger4 = anim != 5035
value = 5063
;---------------------------------------------------------------------------
[statedef 5063]
type = a
movetype = h
physics = n

[state 5063, changeanim]
type = changeanim
trigger1 = animtime = 0
trigger1 = anim = 5035
trigger2 = time = 0
trigger2 = anim != 5035
trigger2 = (anim != [5051, 5059]) && (anim != [5061, 5069])
trigger2 = anim != 5090
value = 5050

[state 5063, changeanim]
type = changeanim
trigger1 = anim = [5050,5059]
trigger1 = vel y >= ifelse(anim = 5050, 1, -2)
trigger1 = selfanimexist(anim+10)
value = anim+10
persistent = 0

[state 5063, veladd]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5063, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5103
;===========================================================================
;■HIT_T SHAKE CUSTOM
[statedef 5075]
type = a
movetype = h
physics = n
velset = 0,0

[state 5075, changeanim ]
type = changeanim 
trigger1 = 1
value = 5070

[state 5075, defencemulset]
Type = defencemulset
Trigger1 = 1
value = 0.5

[state 5075, changestate]
type = changestate
trigger1 = hitshakeover
value = 5076
;---------------------------------------------------------------------------
[statedef 5076]
type = a
movetype = h
physics = n

[state 5076, hitvelset]
type = hitvelset
trigger1 = time = 0
x = 1
y = 1

[state 5076, veladd]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5076, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 15
value = 5113
;---------------------------------------------------------------------------
;■HITL_SHAKE
[statedef 5080]
type    = l
movetype= h
physics = n
velset = 0,0

[state 5080, varset]
type = varset
trigger1 = time = 0
sysvar(2) = ifelse (gethitvar(yvel) = 0, 5080, 5090)

[state 5080, varadd]
type = varadd
trigger1 = time = 0
trigger1 = (anim = [5081,5089]) || (anim = [5111,5119])
trigger1 = selfanimexist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10

[state 5080, varset]
type = varset
trigger1 = time = 0
trigger1 = sysvar(2) = 5090
trigger1 = !selfanimexist(5090)
sysvar(2) = 5030

[state 5080, changeanim]
type = changeanim
trigger1 = 1
value = sysvar(2)

[state 5080, varset]
type = varset
trigger1 = hitshakeover
sysvar(2) = 0

[state 5080, changestate]
type = changestate
trigger1 = hitshakeover
trigger1 = gethitvar(yvel) = 0
value = 5081

[state 5080, changestate]
type = changestate
trigger1 = hitshakeover
trigger1 = gethitvar(yvel) != 0
value = 5030
;===========================================================================
[statedef 5103]
type = l
movetype = h
physics = n

[state 5103, velset]
type = velset
trigger1 = time = 0
trigger1 = gethitvar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[state 5103, fallenvshake]
type = fallenvshake
trigger1 = time = 0

[state 5103, varset]
type = varset
trigger1 = time = 0
sysvar(1) = floor(vel y)

[state 5103, changeanim]
type = changeanim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !selfanimexist(5100 + (anim % 10))
value = 5100

[state 5103, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = selfanimexist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[state 5103, posset]
type = posset
trigger1 = time = 0
y = 0

[state 5103, velset]
type = velset
trigger1 = time = 0
y = 0

[state 5103, velmul]
type = velmul
trigger1 = time = 0
x = 0.75

[state 5103, changestate]
type = changestate
trigger1 = time = 0
trigger1 = gethitvar(fall.yvel) = 0
value = 5113

[state 5103, gamemakeanim]
type = gamemakeanim
trigger1 = time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[state 5103, hitfalldamage]
type = hitfalldamage
trigger1 = time = 3

[state 5103, playsnd]
type = playsnd
trigger1 = time = 1
value = f7, (sysvar(1) > 5) + (sysvar(1) > 14)

[state 5103, posfreeze]
type = posfreeze
trigger1 = 1

[state 5103, changestate]
type = changestate
trigger1 = animtime = 0
value = 5104
;---------------------------------------------------------------------------
[statedef 5104]
type = l
movetype = h
physics = n

[state 5104, changeanim]
type = changeanim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !selfanimexist(5160 + (anim % 10))
value = 5160

[state 5104, changeanim]
type = changeanim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = selfanimexist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[state 5104, hitfallvel]
type = hitfallvel
trigger1 = time = 0

[state 5104, posset]
type = posset
trigger1 = time = 0
y = 20

[state 5104, veladd]
type = veladd
trigger1 = 1
y = .4

[state 5104, changestate]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 12
value = 5113
;---------------------------------------------------------------------------
[statedef 5113]
type = l
movetype = h
physics = n

[state 5113, fallenvshake]
type = fallenvshake
trigger1 = time = 0

[state 5113, changeanim]
type = changeanim
persistent = 0
trigger1 = selfanimexist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[state 5113, changeanim]
type = changeanim
triggerall = time = 0
triggerall = anim != [5110,5119]
trigger1 = anim != [5161,5169]
trigger2 = !selfanimexist(5170 + (anim % 10))
value = 5170

[state 5113, changeanim]
type = changeanim
triggerall = time = 0
triggerall = anim != [5110,5119]
trigger1 = anim = [5161,5169]
trigger1 = selfanimexist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[state 5113, hitfalldamage]
type = hitfalldamage
trigger1 = time = 0

[state 5113, posset]
type = posset
trigger1 = time = 0
y = 0

[state 5113, varset]
type = varset
trigger1 = time = 0
trigger1 = gethitvar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[state 5113, playsnd]
type = playsnd
trigger1 = time = 0
trigger1 = !sysvar(0)
value = f7, (sysvar(1) > 5) + (sysvar(1) > 14)

[state 5113, velset]
type = velset
trigger1 = time = 0
y = 0

[state 5113, changeanim]
type = changeanim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = selfanimexist(5110 + (anim % 10))
trigger1 = animtime = 0
trigger2 = sysvar(0)
value = 5110 + (anim % 10)

[state 5113, changeanim]
type = changeanim
persistent = 0
triggerall = anim != [5111,5119]
trigger1 = animtime = 0
trigger2 = sysvar(0)
value = 5110

[state 5113, selfstate]
type = selfstate
triggerall = !alive
trigger1 = animtime = 0
trigger2 = sysvar(0)
trigger3 = anim = [5110,5119]
value = 5150

[state 5113, varset]
type = varset
trigger1 = sysvar(0)
trigger1 = time = 0
sysvar(0) = 0

[state 5113, velmul]
type = velmul
trigger1 = 1
x = 0.85

[state 5113, selfstate]
type = selfstate
trigger1 = alive
trigger1 = authorname = "otzkai"
trigger1 = time > 1
value = 5114

[state 5113, selfstate]
type = selfstate
trigger1 = time > 30
value = 5120
;---------------------------------------------------------------------------
[statedef 5114]
type = l
movetype = h
physics = n

[state 5114, changeanim]
type = changeanim
persistent = 0
triggerall = anim != 5110
trigger1 = animtime = 0
value = 5110

[state 5114, velmul]
type = velmul
trigger1 = 1
x = 0.85

[state 5114, changestate]
type = changestate
trigger1 = time > 30
value = 5120
;===========================================================================
;■起き上がり
[statedef 5120]
type = l
movetype = i
physics = n

[state 5120, changeanim]
type = changeanim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !selfanimexist(5120 + (anim % 10))
value = 5120

[state 5120, changeanim]
type = changeanim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = selfanimexist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[state 5120, velset]
type = velset
trigger1 = time = 0
x = 0

[state 5120, nothitby]
type = nothitby
trigger1 = 1
value = sca
time = 1

[state 5120, hitfallset]
type = hitfallset
trigger1 = animtime = 0
value = 1

[state 5120, nothitby]
type = nothitby
trigger1 = animtime = 0
value = , nt,st,ht
time = 2

[state 5120, nothitby]
type = nothitby
trigger1 = animtime = 0
value2 = sca
time = 1

[state 5120, selfstate]
type = selfstate
trigger1 = authorname = "otzkai"
trigger1 = var(0) != 0
trigger1 = animtime = 0
value = var(0)

[state 5120, selfstate]
type = selfstate
trigger1 = !(authorname = "otzkai")
trigger2 = var(0) = 0
trigger2 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;■HIT_FALLRECOVER
[statedef 5200]
type    = a
movetype= h
physics = n

[state 5200, changeanim]
type = changeanim
trigger1 = anim = 5035
trigger1 = animtime = 0
value = 5050

[state 5200, veladd]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 5200, selfstate]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 10
value = 5201
;===========================================================================
;■HIT_FALLRECOVER
[statedef 5201]
type    = a
movetype= h
physics = a
anim = 5200

[state 5201, nothitby]
type = nothitby
trigger1 = time = 0
value = sca
time = 20

[state 5201, velset]
type = velset
trigger1 = time = 0
y = -1

[state 5201, palfx]
type = palfx
trigger1 = time = 0
time = 10
add = 128,128,128

[state 5201, afterimage]
type = afterimage
trigger1 = time = 0
time = 10
palcontrast = 192,192,192
paladd = 20,20,20
palmul = 1,1,1
framegap = 4
trans = add1

[state 5201, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,30

[state 5201, explod]
type = explod
trigger1 = time = 0
id = 25100
anim = 25100
postype = p1
pos = 0,-floor(const(size.yscale)*50)
sprpriority = 5
ownpal = 1
bindtime = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = const(size.xscale),const(size.yscale)
;===========================================================================
;■HIT_AIRFALLRECOVER
[statedef 5210]
type    = a
movetype= i
physics = n
ctrl = 0
anim = 5210

[state 5210, varset]
type = varset
trigger1 = time = 0
sysvar(1) = 0

[state 5210, varset]
type = varset
triggerall = time = 0
trigger1 = var(50) = 0
trigger1 = command = "holdfwd"
trigger2 = var(50) != 0
trigger2 = random < 40*var(50)+(backedgedist<100)*60*var(50)
sysvar(1) = 5

[state 5210, varset]
type = varset
triggerall = time = 0
trigger1 = var(50) = 0
trigger1 = command = "holdback"
trigger2 = random < 40*var(50)+(p2dist x<150)*20*var(50)
sysvar(1) = -5

[state 5210, posfreeze]
type = posfreeze
trigger1 = time < 1

[state 5210, gravity]
type = gravity
trigger1 = 1

[state 5210, nothitby]
type = nothitby
trigger1 = time = 0
value = sca
time = 20

[state 5210, palfx]
type = palfx
trigger1 = time = 0
time = 10
add = 128,128,128

[state 5210, afterimage]
type = afterimage
trigger1 = time = 0
time = 10
palcontrast = 192,192,192
paladd = 20,20,20
palmul = 1,1,1
framegap = 4
trans = add1

[state 5210, ctrlset]
type = ctrlset
trigger1 = time = 15
value = 1

[state 5210, velset]
type = velset
trigger1 = time = 1
x = sysvar(1)
y = -5

[state 5210, turn]
type = turn
trigger1 = time = 1
trigger1 = p2dist x < 0

[state 5210, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,30

[state 5210, explod]
type = explod
trigger1 = time = 0
anim = 25100
id = 25100
pos = 0,-floor(const(size.yscale)*50)
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
supermovetime = 999
pausemovetime = 999
ownpal = 1

[state 5210, selfstate]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 52
ctrl = 1
;===========================================================================
;■感電やられ
[statedef 5696]
type = a
movetype = h
physics = n
velset = 0,0

[state 5696, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 5696, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = selfanimexist(7696)
value = 7696

[state 5696, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = !selfanimexist(7696)
trigger1 = gethitvar(animtype) != [3,5]
value = ifelse((gethitvar(airtype) = 1),5000,5010) + gethitvar(animtype)

[state 5696, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = !selfanimexist(7696)
trigger1 = gethitvar(animtype) = [3,5]
value = 5030

[state 5696, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = (gethitvar(animtype) = [4,5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 5696, changeanim]
type = changeanim
trigger1 = time > 0
value = anim

[state 5696, changestate]
type = changestate
trigger1 = hitshakeover
value = 5033
;===========================================================================
;■黒焦げやられ
[statedef 5697]
type = a
movetype = h
physics = n
velset = 0,0

[state 5697, destroyself]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 5697, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = selfanimexist(7697)
value = 7697

[state 5697, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = !selfanimexist(7697)
trigger1 = gethitvar(animtype) != [3,5]
value = ifelse((gethitvar(airtype) = 1),5000,5010) + gethitvar(animtype)

[state 5697, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = !selfanimexist(7697)
trigger1 = gethitvar(animtype) = [3,5]
value = 5030

[state 5697, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = (gethitvar(animtype) = [4,5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 5697, changeanim]
type = changeanim
trigger1 = time > 0
value = anim

[state 5697, changestate]
type = changestate
trigger1 = hitshakeover
value = 5033
;===========================================================================
;■ファイナルダウン
[statedef 5150]
type = l
movetype = h
physics = n
sprpriority = -3
velset = 0,0

[state 5150, assertspecial]
type = assertspecial
trigger1 = matchover
trigger1 = authorname = "otzkai" && name = "kaname madoka"
flag = roundnotover

[state 5150, screenbound]
type = screenbound
trigger1 = teammode = simul
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 5150, nothitby]
type = nothitby
trigger1 = 1
value = sca
time = 1

[state 5150, changeanim]
type = changeanim
triggerall = time = 0
triggerall = selfanimexist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !selfanimexist(5140 + (anim % 10))
value = 5140

[state 5150, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = selfanimexist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[state 5150, changeanim]
type = changeanim
persistent = 0
trigger1 = matchover = 1
trigger1 = anim = [5140,5149]
trigger1 = selfanimexist(anim+10)
value = anim+10

[state 5150, changeanim]
type = changeanim
trigger1 = time = 0
trigger1 = anim != [5140,5159]
trigger1 = anim != [5110,5119]
value = 5110

[state 5150, velmul]
type = velmul
trigger1 = 1
x = 0.85

[state 5150, velset]
type = velset
trigger1 = vel x < 0.05
persistent = 0
x = 0

[state 5150, changestate]
type = changestate
triggerall = authorname = "otzkai" && name = "kaname madoka"
triggerall = roundstate > 3
triggerall = time > 60
trigger1 = matchover
trigger2 = teammode = turns
value = 5155
;===========================================================================
;■ファイナルダウン・変身解除
[statedef 5155]
type = l
movetype = h
sprpriority = -3

[state 5155, assertspecial]
type = assertspecial
trigger1 = time < 250
flag = roundnotover

[state 5155, screenbound]
type = screenbound
trigger1 = teammode = simul
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 5155, nothitby]
type = nothitby
trigger1 = 1
value = sca
time = 1

[state 5155, playsnd]
type = playsnd
trigger1 = time = 0
value = 11,30
channel = 0

[state 5155, changeanim]
type = changeanim
trigger1 = time = 30
value = 5150

[state 5155, playsnd]
type = playsnd
trigger1 = time = 116
value = 4,11

[state 5155, changeanim]
type = changeanim
trigger1 = time = 116
value = 5155

[state 5155, explod]
type = explod
trigger1 = time = 30
id = 15155
anim = 15155
postype = p1
pos = 0,0
sprpriority = 5
ownpal = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
;===========================================================================
;■判定負け
[statedef 170]
type = s
ctrl = 0
anim = 170
velset = 0,0

[state 170, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = -floor(const(size.xscale)*2)

[state 170, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -floor(const(size.xscale)*3)
;===========================================================================
;■時間切れ
[statedef 175]
type = s
ctrl = 0
anim = 170
velset = 0,0

[state 175, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
x = -floor(const(size.xscale)*2)

[state 1705, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -floor(const(size.xscale)*3)
;===========================================================================
;■勝利
[statedef 180]
type = s
velset = 0,0

[state 180, assertspecial]
type = assertspecial
trigger1 = 1
flag = roundnotover

[state 180, posset]
type = posset
trigger1 = time = 0
y = 0

;□さやかちゃんが暴走
[state 180, changestate]
type = changestate
trigger1 = numpartner
trigger1 = var(12) = 200
trigger1 = partner,var(40) = 1
value = 680

;□決着
[state 180, changestate]
type = changestate
trigger1 = matchover
value = 600

;□パートナー・マミ・絆イベント
[state 180, changestate]
type = changestate
triggerall = numpartner
triggerall = partner,alive
triggerall = var(12) = 300
trigger1 = var(36) = 1
trigger2 = partner,var(36) = 1
value = 650+(random<500)

;□パートナーあり
[state 180, changestate]
type = changestate
trigger1 = numpartner
trigger1 = var(12) != 300;マミさんは大丈夫
trigger1 = partner,alive
value = 181

;□汎用
[state 180, changestate]
type = changestate
trigger1 = time = 0
value = 610+(random<500)*10
;===========================================================================
;■勝利（パートナー用ラグ）
[statedef 181]
type = s
ctrl = 0

[state 181, assertspecial]
type = assertspecial
trigger1 = 1
flag = roundnotover

[state 181, changeanim]
type = changeanim
trigger1 = anim != 0
value = 0

[state 181, varset]
type = varset
trigger1 = time = 0
var(7) = 30;デフォルト

;□パートナー・美樹さやか
[state 181, varset]
type = null
triggerall = numpartner
triggerall = time = 1
triggerall = var(12) = 200
triggerall = partner,var(7) = 1
trigger1 = var(7) := 174

[state 181, varset]
type = null
triggerall = numpartner
triggerall = time = 1
triggerall = var(12) = 200
triggerall = partner,var(7) != 1
trigger1 = partner,var(5) = 40
trigger1 = var(7) := 138
trigger2 = partner,var(5) = 41
trigger2 = var(7) := 156
trigger3 = partner,var(5) = 42
trigger3 = var(7) := 234
trigger4 = partner,var(5) = 43
trigger4 = var(7) := 270
trigger5 = partner,var(5) = 150
trigger5 = var(7) := 132
trigger6 = partner,var(5) = 151
trigger6 = var(7) := 174
trigger7 = partner,var(5) = 152
trigger7 = var(7) := 90
trigger8 = partner,var(5) = 153
trigger8 = var(7) := 90
trigger9 = partner,var(5) = 154
trigger9 = var(7) := 96
trigger10 = partner,var(5) = 155
trigger10 = var(7) := 198
trigger11 = partner,var(5) = 156
trigger11 = var(7) := 258

;■絆イベント
[state 181, changestate]
type = changestate
trigger1 = var(12) = 200
trigger1 = var(30) = 631
value = 631

[state 181, changestate]
type = changestate
trigger1 = var(12) = 200
trigger1 = var(30) = 632
value = 632

[state 181, changestate]
type = changestate
trigger1 = var(12) = 200
trigger1 = var(30) = 633
value = 633

[state 181, changestate]
type = changestate
trigger1 = var(12) = 200
trigger1 = var(30) = 634
value = 634

[state 181, changestate]
type = changestate
triggerall = numpartner
triggerall = time > 1
triggerall = time = var(7)+10
trigger1 = var(12) = 200
trigger1 = partner,var(3) = partner,lifemax
value = 630

[state 181, changestate]
type = changestate
triggerall = numpartner
triggerall = time > 1
triggerall = time = var(7)+10
trigger1 = var(12) = 200
trigger1 = partner,var(5) = [150,151];さやかちゃんが心配しているとき
value = 620

[state 181, changestate]
type = changestate
trigger1 = time > 1
trigger1 = time = var(7)+10
value = 610+(random<500)*10
;===========================================================================
;■勝利・決着（変身解除）
[statedef 600]
type = s
ctrl = 0
anim = 600

[state 600, assertspecial]
type = assertspecial
trigger1 = time < 160+120+var(6)
flag = roundnotover

[state 600, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 4,10

;□vs美樹さやか
[state 600, varset]
type = null
triggerall = time = 0
trigger1 = var(11) = 200
trigger1 = var(5) := 220
trigger1 = var(6) := 174

;□vs巴マミ
[state 600, varset]
type = null
triggerall = time = 0
trigger1 = var(11) = 300
trigger1 = var(5) := 320
trigger1 = var(6) := 168

;□vs佐倉杏子
[state 600, varset]
type = null
triggerall = time = 0
trigger1 = var(11) = 400
trigger1 = var(5) := 420
trigger1 = var(6) := 126

;□vs暁美ほむら
[state 600, varset]
type = null
triggerall = time = 0
trigger1 = var(11) = 500
trigger1 = var(5) := 520
trigger1 = var(6) := 288

;□パートナー・美樹さやか
[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(11) = 0 || var(11) = 900
trigger1 = var(12) = 200
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 270,273

[state 600, varset]
type = null
trigger1 = var(5) = 270
trigger1 = var(6) := 78
trigger2 = var(5) = 271
trigger2 = var(6) := 108
trigger3 = var(5) = 272
trigger3 = var(6) := 150
trigger4 = var(5) = 273
trigger4 = var(6) := 180

;□パートナー・巴マミ
[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 300
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 370,376

;□パートナー・佐倉杏子
[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 400
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 470,472

[state 600, varset]
type = null
trigger1 = var(5) = 470
trigger1 = var(6) := 186
trigger2 = var(5) = 471
trigger2 = var(6) := 210
trigger3 = var(5) = 472
trigger3 = var(6) := 294

;□パートナー・暁美ほむら
[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 500
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 570,574

[state 600, varset]
type = null
trigger1 = var(5) = 570
trigger1 = var(6) := 168
trigger2 = var(5) = 571
trigger2 = var(6) := 222
trigger3 = var(5) = 572
trigger3 = var(6) := 264
trigger4 = var(5) = 573
trigger4 = var(6) := 336
trigger5 = var(5) = 574
trigger5 = var(6) := 348

;□ノーマルパートナー
[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(11) = 0
trigger1 = var(12) = 0 || var(12) = 900
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 86,88

[state 600, varset]
type = null
trigger1 = var(5) = 86
trigger1 = var(6) := 90
trigger2 = var(5) = 87
trigger2 = var(6) := 174
trigger3 = var(5) = 88
trigger3 = var(6) := 210

;□パートナーなし
[state 600, varrandom]
type = varrandom
triggerall = time = 0
triggerall = var(11) = 0 || var(11) = 900
trigger1 = numpartner = 0
trigger2 = numpartner
trigger2 = partner,alive = 0
v = 5
range = 0,6

[state 600, varset]
type = null
trigger1 = var(5) = 0
trigger1 = var(6) := 90
trigger2 = var(5) = 1
trigger2 = var(6) := 96
trigger3 = var(5) = 2
trigger3 = var(6) := 114
trigger4 = var(5) = 3
trigger4 = var(6) := 126
trigger5 = var(5) = 4
trigger5 = var(6) := 132
trigger6 = var(5) = 5
trigger6 = var(6) := 186
trigger7 = var(5) = 6
trigger7 = var(6) := 210

[state 600, playsnd]
type = playsnd
trigger1 = time = 160
value = 10,var(5)
channel = 0

[state 600, explod]
type = explod
trigger1 = animelemtime(3) = 0
id = 10600
anim = 10600
postype = p1
pos = 0,0
sprpriority = 4
ownpal = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
;===========================================================================
;■勝利１（ぴょこんジャンプ）
[statedef 610]
ctrl = 0
anim = 610

[state 610, assertspecial]
type = assertspecial
trigger1 = time < 3+120+var(6)
flag = roundnotover

;□パートナー・美樹さやか
[state 610, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 200
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 250,254

[state 610, varset]
type = null
trigger1 = var(5) = 250
trigger1 = var(6) := 78
trigger2 = var(5) = 251
trigger2 = var(6) := 90
trigger3 = var(5) = 252
trigger3 = var(6) := 96
trigger4 = var(5) = 253
trigger4 = var(6) := 120
trigger5 = var(5) = 254
trigger5 = var(6) := 120

;□パートナー・巴マミ
[state 610, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 300
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 350,354

;□パートナー・佐倉杏子
[state 610, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 400
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 450,452

[state 610, varset]
type = null
trigger1 = var(5) = 450
trigger1 = var(6) := 102
trigger2 = var(5) = 451
trigger2 = var(6) := 114
trigger3 = var(5) = 452
trigger3 = var(6) := 198

;□パートナー・暁美ほむら
[state 610, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 500
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 550,552

[state 610, varset]
type = null
trigger1 = var(5) = 550
trigger1 = var(6) := 90
trigger2 = var(5) = 551
trigger2 = var(6) := 162
trigger3 = var(5) = 552
trigger3 = var(6) := 180

;□ノーマルパートナー
[state 610, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 0 || var(12) = 900
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 80,82

[state 610, varset]
type = null
trigger1 = var(5) = 80
trigger1 = var(6) := 54
trigger2 = var(5) = 81
trigger2 = var(6) := 90
trigger3 = var(5) = 82
trigger3 = var(6) := 132

;□パートナーなし
[state 610, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = numpartner = 0
trigger2 = numpartner
trigger2 = partner,alive = 0
v = 5
range = 10,12

[state 610, varset]
type = null
trigger1 = var(5) = 10
trigger1 = var(6) := 48
trigger2 = var(5) = 11
trigger2 = var(6) := 96
trigger3 = var(5) = 12
trigger3 = var(6) := 120

[state 610, playsnd]
type = playsnd
trigger1 = time = 3
value = 10,var(5)
channel = 0
;===========================================================================
;■勝利２（リラックス）
[statedef 620]
ctrl = 0
anim = 620

[state 620, assertspecial]
type = assertspecial
trigger1 = time < 3+120+var(6)
flag = roundnotover

;□パートナー・美樹さやか
[state 620, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 200
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 255,258-(partner,var(5)=[150,151]);心配されてるときは感謝

[state 620, varset]
type = null
trigger1 = var(5) = 255
trigger1 = var(6) := 114
trigger2 = var(5) = 256
trigger2 = var(6) := 156
trigger3 = var(5) = 257
trigger3 = var(6) := 186
trigger4 = var(5) = 258
trigger4 = var(6) := 246

;□パートナー・巴マミ
[state 620, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 300
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 355,358-(partner,var(5)=150)*2;心配されてるときは感謝

;□パートナー・佐倉杏子
[state 620, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 400
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 453,455

[state 620, varset]
type = null
trigger1 = var(5) = 453
trigger1 = var(6) := 102
trigger2 = var(5) = 454
trigger2 = var(6) := 150
trigger3 = var(5) = 455
trigger3 = var(6) := 198

;□パートナー・暁美ほむら
[state 620, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 500
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 553,555

[state 620, varset]
type = null
trigger1 = var(5) = 553
trigger1 = var(6) := 138
trigger2 = var(5) = 554
trigger2 = var(6) := 144
trigger3 = var(5) = 555
trigger3 = var(6) := 150

;□ノーマルパートナー
[state 620, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 0 || var(12) = 900
trigger1 = numpartner
trigger1 = partner,alive
v = 5
range = 83,85

[state 620, varset]
type = null
trigger1 = var(5) = 83
trigger1 = var(6) := 120
trigger2 = var(5) = 84
trigger2 = var(6) := 156
trigger3 = var(5) = 85
trigger3 = var(6) := 210

;□パートナーなし
[state 620, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = numpartner = 0
trigger2 = numpartner
trigger2 = partner,alive = 0
v = 5
range = 20,22

[state 620, varset]
type = null
trigger1 = var(5) = 20
trigger1 = var(6) := 102
trigger2 = var(5) = 21
trigger2 = var(6) := 138
trigger3 = var(5) = 22
trigger3 = var(6) := 138

[state 620, playsnd]
type = playsnd
trigger1 = time = 3
value = 10,var(5)
channel = 0

[state 620, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = 0
x = -floor(const(size.xscale)*5)
;===========================================================================
;■絆イベント・まどか＆さやか・ドヤ顔編
[statedef 630]
ctrl = 0
anim = 620

[state 630, assertspecial]
type = assertspecial
trigger1 = time < 400
flag = roundnotover

[state 630, playsnd]
type = playsnd
trigger1 = time = 3
value = 10,290
channel = 0

[state 630, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = 0
x = -floor(const(size.xscale)*5)
;---------------------------------------------------------------------------
;■絆イベント・まどか＆さやか・ぐぬぬ編
[statedef 631]
ctrl = 0
anim = 620

[state 631, assertspecial]
type = assertspecial
trigger1 = time < 500
flag = roundnotover

[state 631, playsnd]
type = playsnd
trigger1 = time = 0+20
value = 10,291
channel = 0

[state 631, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = 0
x = -floor(const(size.xscale)*5)
;---------------------------------------------------------------------------
;■絆イベント・まどか＆さやか・ダメな子編
[statedef 632]
ctrl = 0
anim = 620

[state 632, assertspecial]
type = assertspecial
trigger1 = time < 500
flag = roundnotover

[state 632, playsnd]
type = playsnd
trigger1 = time = 0+20
value = 10,292
channel = 0

[state 632, posadd]
type = posadd
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = 0
x = -floor(const(size.xscale)*5)
;---------------------------------------------------------------------------
;■絆イベント・まどか＆さやか・無理しないで編
[statedef 633]
ctrl = 0
anim = 620

[state 633, assertspecial]
type = assertspecial
trigger1 = time < 600
flag = roundnotover

[state 633, playsnd]
type = playsnd
trigger1 = time = 0+20
value = 10,293
channel = 0

[state 633, posadd]
type = posadd
triggerall = anim = 620
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = 0
x = -floor(const(size.xscale)*5)
;---------------------------------------------------------------------------
;■絆イベント・まどか＆さやか・大好き編
[statedef 634]
ctrl = 0

[state 634, assertspecial]
type = assertspecial
trigger1 = time < 450
flag = roundnotover

[state 634, changeanim]
type = changeanim
trigger1 = time = 90+40
value = 620

[state 634, playsnd]
type = playsnd
trigger1 = time = 90+40+5
value = 10,294
channel = 0

[state 634, posadd]
type = posadd
triggerall = anim = 620
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = 0
x = -floor(const(size.xscale)*5)
;===========================================================================
;■絆イベント・まどか＆マミ・大好き編
[statedef 650]
ctrl = 0
anim = 610

[state 650, assertspecial]
type = assertspecial
trigger1 = time < 300
flag = roundnotover

[state 650, varset]
type = varset
trigger1 = time = 0
var(5) = 390

[state 650, playsnd]
type = playsnd
trigger1 = time = 3
value = 10,var(5)
channel = 0
;===========================================================================
;■絆イベント・まどか＆マミ・一番大切な・・編
[statedef 651]
ctrl = 0

[state 651, assertspecial]
type = assertspecial
trigger1 = time < 300
flag = roundnotover

[state 651, changeanim]
type = changeanim
trigger1 = time = 258
value = 620

[state 651, playsnd]
type = playsnd
trigger1 = time = 258+20
value = 10,391
channel = 0

[state 651, playsnd]
type = playsnd
trigger1 = time = 258+108+48+40
value = 10,392
channel = 0

[state 651, posadd]
type = posadd
triggerall = anim = 620
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(2) = 0
x = -floor(const(size.xscale)*5)
;===========================================================================
;■絆イベント（さやかちゃんが暴走）
[statedef 680]
ctrl = 0
anim = 680

[state 680, assertspecial]
type = assertspecial
trigger1 = time < 60+matchover*200+120+var(6)
flag = roundnotover

[state 680, varrandom]
type = varrandom
trigger1 = time = 0
v = 5
range = 280,282

[state 680, varset]
type = null
trigger1 = var(5) = 280
trigger1 = var(6) := 264
trigger2 = var(5) = 281
trigger2 = var(6) := 372
trigger3 = var(5) = 282
trigger3 = var(6) := 390

[state 680, playsnd]
type = playsnd
trigger1 = time = 60+matchover*200
value = 10,var(5)
channel = 0
;===========================================================================
;■イントロ
[statedef 190]
type = s
ctrl = 0
anim = 1

[state 190, allpalfx]
type = allpalfx
trigger1 = var(45) = 1
trigger1 = time = 0
time = 60
add = var(21),var(22),var(23)
sinadd = -var(21),-var(22),-var(23),240

;□vs美樹さやか
[state 190, changestate]
type = changestate
triggerall = time = 1
trigger1 = var(11) = 200
value = 8200

;□vs巴マミ
[state 190, changestate]
type = changestate
triggerall = time = 1
trigger1 = var(11) = 300
trigger2 = var(11) = 310
value = 8300

;□vs佐倉杏子
[state 190, changestate]
type = changestate
triggerall = time = 1
trigger1 = var(11) = 400
value = 8400

;□vs暁美ほむら
[state 190, changestate]
type = changestate
triggerall = time = 1
triggerall = numenemy
triggerall = var(11) = 500
trigger1 = enemy,anim = 0
trigger2 = enemy,var(57) != 0
value = 8501+(random<500)

[state 190, changestate]
type = changestate
triggerall = time = 1
triggerall = numenemy
triggerall = var(11) = 500
trigger1 = enemy,var(57) = 0
value = 8500+(random<500)

;□vs草加雅人
[state 190, changestate]
type = changestate
triggerall = time = 1
trigger1 = var(11) = 900
value = 8900

;□パートナー美樹さやか
[state 190, changestate]
type = changestate
triggerall = time = 1
trigger1 = var(12) = 200
value = 8230+floor(random/112);;0-8

;□パートナー巴マミ
[state 190, changestate]
type = changestate
triggerall = time = 1
trigger1 = var(12) = 300
value = 8330+floor(random/125);;0-7

;□パートナー佐倉杏子
[state 190, changestate]
type = changestate
triggerall = time = 1
trigger1 = var(12) = 400
value = 8430+floor(random/334);;0-2

;□パートナー暁美ほむら
[state 190, changestate]
type = changestate
triggerall = time = 1
trigger1 = var(12) = 500
value = 8530+floor(random/125);;0-7

;□パートナー草加雅人
[state 190, changestate]
type = changestate
triggerall = time = 1
trigger1 = var(12) = 900
value = 8930

;□未確認パートナーあり
[state 190, changestate]
type = changestate
triggerall = time = 1
trigger1 = numpartner
value = 870+floor(random/200);;0-4

;□汎用
[state 190, changestate]
type = changestate
trigger1 = time = 1
value = 800+floor(random/143);;0-6
;===========================================================================
;■イントロ＃０『よし、がんばるぞ』
[statedef 800]
type = s
anim = 800

[state 800, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 800, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,50
channel = 0

[state 800, changeanim]
type = changeanim
trigger1 = time = 60
value = 801

[state 800, changeanim]
type = changeanim
trigger1 = time = 110
value = 802

[state 800, changeanim]
type = changeanim
trigger1 = time = 85
trigger2 = time = 170
value = 800

[state 800, changestate]
type = changestate
trigger1 = time = 200
value = 820
;===========================================================================
;■イントロ＃１『うん、大丈夫』
[statedef 801]
type = s
anim = 800

[state 801, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 801, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,51
channel = 0

[state 801, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 100
value = 802

[state 801, changeanim]
type = changeanim
trigger1 = time = 80
trigger2 = time = 145
value = 800

[state 801, changestate]
type = changestate
trigger1 = time = 180
value = 820
;===========================================================================
;■イントロ＃２『緊張してきた～』
[statedef 802]
type = s
anim = 800

[state 802, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 802, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,52
channel = 0

[state 802, changeanim]
type = changeanim
trigger1 = time = 60
value = 802

[state 802, changeanim]
type = changeanim
trigger1 = time = 135
value = 801

[state 802, changeanim]
type = changeanim
trigger1 = time = 145
value = 800

[state 802, changestate]
type = changestate
trigger1 = time = 200
value = 820
;===========================================================================
;■イントロ＃３『私が相手だよ！』
[statedef 803]
type = s
anim = 810

[state 803, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 803, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,53
channel = 0

[state 803, changeanim]
type = changeanim
trigger1 = time = 60
value = 812

[state 803, changeanim]
type = changeanim
trigger1 = time = 125
value = 810

[state 803, changestate]
type = changestate
trigger1 = time = 150
value = 820
;===========================================================================
;■イントロ＃４『こういうの苦手なんだけど』
[statedef 804]
type = s
anim = 800

[state 804, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 804, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,54
channel = 0

[state 804, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 120
value = 802

[state 804, changeanim]
type = changeanim
trigger1 = time = 95
trigger2 = time = 215
value = 800

[state 804, changestate]
type = changestate
trigger1 = time = 250
value = 820
;===========================================================================
;■イントロ＃５『私にできるかな』
[statedef 805]
type = s
anim = 810

[state 805, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 805, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,55
channel = 0

[state 805, changeanim]
type = changeanim
trigger1 = time = 60
value = 812

[state 805, changeanim]
type = changeanim
trigger1 = time = 135
value = 810

[state 805, changestate]
type = changestate
trigger1 = time = 190
value = 820
;===========================================================================
;■イントロ＃６『大丈夫、恐くない』
[statedef 806]
type = s
anim = 800

[state 806, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 806, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,56
channel = 0

[state 806, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 120
value = 802

[state 806, changeanim]
type = changeanim
trigger1 = time = 100
trigger2 = time = 165
value = 800

[state 806, changestate]
type = changestate
trigger1 = time = 200
value = 820
;===========================================================================
;■イントロ＃ｅｘ『これなら戦える！』（サイマルモード）
[statedef 870]
type = s
anim = 810

[state 870, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 870, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,70
channel = 0

[state 870, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 90
value = 812

[state 870, changeanim]
type = changeanim
trigger1 = time = 80
trigger2 = time = 170
value = 810

[state 870, changestate]
type = changestate
trigger1 = time = 200
value = 820
;===========================================================================
;■イントロ＃ｅｘ『私はいつでもいいよ！』（サイマルモード）
[statedef 871]
type = s
anim = 800

[state 871, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 871, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,71
channel = 0

[state 871, changeanim]
type = changeanim
trigger1 = time = 60
value = 802

[state 871, changeanim]
type = changeanim
trigger1 = time = 145
value = 800

[state 871, changestate]
type = changestate
trigger1 = time = 160
value = 820
;===========================================================================
;■イントロ＃ｅｘ『敵だよ、気をつけて』（サイマルモード）
[statedef 872]
type = s
anim = 810

[state 872, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 872, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,72
channel = 0

[state 872, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 105
value = 812

[state 872, changeanim]
type = changeanim
trigger1 = time = 95
trigger2 = time = 150
value = 810

[state 872, changestate]
type = changestate
trigger1 = time = 170
value = 820
;===========================================================================
;■イントロ＃ｅｘ『無理はしないって約束して』（サイマルモード）
[statedef 873]
type = s
anim = 810

[state 873, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 873, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,73
channel = 0

[state 873, changeanim]
type = changeanim
trigger1 = time = 60
value = 812

[state 873, changeanim]
type = changeanim
trigger1 = time = 155
value = 810

[state 873, changestate]
type = changestate
trigger1 = time = 180
value = 820
;===========================================================================
;■イントロ＃ｅｘ『油断しないでね』（サイマルモード）
[statedef 874]
type = s
anim = 810

[state 874, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 874, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,74
channel = 0

[state 874, changeanim]
type = changeanim
trigger1 = time = 60
value = 812

[state 874, changeanim]
type = changeanim
trigger1 = time = 115
value = 810

[state 874, changestate]
type = changestate
trigger1 = time = 140
value = 820
;===========================================================================
;■イントロ＃ｅｘ『本気でやろうとしてない！？』（vs美樹さやか）
[statedef 8200]
type = s
anim = 800

[state 8200, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8200, playsnd]
type = playsnd
trigger1 = time = 60+200
value = 10,200
channel = 0

[state 8200, changeanim]
type = changeanim
trigger1 = time = 60+180
value = 850

[state 8200, changeanim]
type = changeanim
trigger1 = time = 110+200
trigger2 = time = 170+200
value = 852

[state 8200, changeanim]
type = changeanim
trigger1 = time = 150+200
trigger2 = time = 270+200
value = 851

[state 8200, playsnd]
type = playsnd
trigger1 = time = 270+200+290
value = 10,201
channel = 0

[state 8200, changeanim]
type = changeanim
trigger1 = time = 270+200+290
trigger2 = time = 395+200+290
value = 856

[state 8200, changeanim]
type = changeanim
trigger1 = time = 280+200+290
trigger2 = time = 340+200+290
trigger3 = time = 420+200+290
value = 855

[state 8200, changeanim]
type = changeanim
trigger1 = time = 300+200+290
trigger2 = time = 350+200+290
value = 857

[state 8200, changestate]
type = changestate
trigger1 = time = 950
value = 820
;===========================================================================
;■イントロ＃ｅｘ『さやかちゃん、頼んだよ』（パートナー：美樹さやか）
[statedef 8230]
type = s
anim = 810

[state 8230, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8230, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8130
trigger1 = var(7) := 72
trigger2 = var(30) = 8131
trigger2 = var(7) := 96
trigger3 = var(30) = 8132
trigger3 = var(7) := 102
trigger4 = var(30) = 8133
trigger4 = var(7) := 108
trigger5 = var(30) = 8134
trigger5 = var(7) := 114
trigger6 = var(30) = 8135
trigger6 = var(7) := 138
trigger7 = var(30) = 8136
trigger7 = var(7) := 150
trigger8 = var(30) = 8137
trigger8 = var(7) := 180

[state 8230, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,230
channel = 0

[state 8230, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
trigger2 = time = 105+var(7)
value = 812

[state 8230, changeanim]
type = changeanim
trigger1 = time = 95+var(7)
trigger2 = time = 140+var(7)
value = 810

[state 8230, changestate]
type = changestate
trigger1 = time = 160+var(7)
value = 820
;===========================================================================
;■イントロ＃ｅｘ『うん、頑張ろう』（パートナー：美樹さやか）
[statedef 8231]
type = s
anim = 810

[state 8231, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8231, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8130
trigger1 = var(7) := 72
trigger2 = var(30) = 8131
trigger2 = var(7) := 96
trigger3 = var(30) = 8132
trigger3 = var(7) := 102
trigger4 = var(30) = 8133
trigger4 = var(7) := 108
trigger5 = var(30) = 8134
trigger5 = var(7) := 114
trigger6 = var(30) = 8135
trigger6 = var(7) := 138
trigger7 = var(30) = 8136
trigger7 = var(7) := 150
trigger8 = var(30) = 8137
trigger8 = var(7) := 180

[state 8231, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,231
channel = 0

[state 8231, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
trigger2 = time = 100+var(7)
value = 812

[state 8231, changeanim]
type = changeanim
trigger1 = time = 80+var(7)
trigger2 = time = 135+var(7)
value = 810

[state 8231, changestate]
type = changestate
trigger1 = time = 160+var(7)
value = 820
;===========================================================================
;■イントロ＃ｅｘ『さやかちゃん、やる気満々だね・・』（パートナー：美樹さやか）
[statedef 8232]
type = s
anim = 800

[state 8232, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8232, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8130
trigger1 = var(7) := 72
trigger2 = var(30) = 8131
trigger2 = var(7) := 96
trigger3 = var(30) = 8132
trigger3 = var(7) := 102
trigger4 = var(30) = 8133
trigger4 = var(7) := 108
trigger5 = var(30) = 8134
trigger5 = var(7) := 114
trigger6 = var(30) = 8135
trigger6 = var(7) := 138
trigger7 = var(30) = 8136
trigger7 = var(7) := 150
trigger8 = var(30) = 8137
trigger8 = var(7) := 180

[state 8232, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,232
channel = 0

[state 8232, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
trigger2 = time = 130+var(7)
value = 802

[state 8232, changeanim]
type = changeanim
trigger1 = time = 100+var(7)
trigger2 = time = 215+var(7)
value = 800

[state 8232, changestate]
type = changestate
trigger1 = time = 240+var(7)
value = 820
;===========================================================================
;■イントロ＃ｅｘ『何があっても守ってみせるよ』（パートナー：美樹さやか）
[statedef 8233]
type = s
anim = 800

[state 8233, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8233, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8130
trigger1 = var(7) := 72
trigger2 = var(30) = 8131
trigger2 = var(7) := 96
trigger3 = var(30) = 8132
trigger3 = var(7) := 102
trigger4 = var(30) = 8133
trigger4 = var(7) := 108
trigger5 = var(30) = 8134
trigger5 = var(7) := 114
trigger6 = var(30) = 8135
trigger6 = var(7) := 138
trigger7 = var(30) = 8136
trigger7 = var(7) := 150
trigger8 = var(30) = 8137
trigger8 = var(7) := 180

[state 8233, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,233
channel = 0

[state 8233, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
trigger2 = time = 130+var(7)
value = 802

[state 8233, changeanim]
type = changeanim
trigger1 = time = 100+var(7)
trigger2 = time = 195+var(7)
value = 800

[state 8233, changestate]
type = changestate
trigger1 = time = 220+var(7)
value = 820
;===========================================================================
;■イントロ＃ｅｘ『うしろは任せてね』（パートナー：美樹さやか）
[statedef 8234]
type = s
anim = 800

[state 8234, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8234, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8130
trigger1 = var(7) := 72
trigger2 = var(30) = 8131
trigger2 = var(7) := 96
trigger3 = var(30) = 8132
trigger3 = var(7) := 102
trigger4 = var(30) = 8133
trigger4 = var(7) := 108
trigger5 = var(30) = 8134
trigger5 = var(7) := 114
trigger6 = var(30) = 8135
trigger6 = var(7) := 138
trigger7 = var(30) = 8136
trigger7 = var(7) := 150
trigger8 = var(30) = 8137
trigger8 = var(7) := 180

[state 8234, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,234
channel = 0

[state 8234, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
value = 802

[state 8234, changeanim]
type = changeanim
trigger1 = time = 140+var(7)
value = 800

[state 8234, changestate]
type = changestate
trigger1 = time = 160+var(7)
value = 820
;===========================================================================
;■イントロ＃ｅｘ『今なら何でもできそうだよ！』（パートナー：美樹さやか）
[statedef 8235]
type = s
anim = 800

[state 8235, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8235, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8130
trigger1 = var(7) := 72
trigger2 = var(30) = 8131
trigger2 = var(7) := 96
trigger3 = var(30) = 8132
trigger3 = var(7) := 102
trigger4 = var(30) = 8133
trigger4 = var(7) := 108
trigger5 = var(30) = 8134
trigger5 = var(7) := 114
trigger6 = var(30) = 8135
trigger6 = var(7) := 138
trigger7 = var(30) = 8136
trigger7 = var(7) := 150
trigger8 = var(30) = 8137
trigger8 = var(7) := 180

[state 8235, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,235
channel = 0

[state 8235, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
value = 802

[state 8235, changeanim]
type = changeanim
trigger1 = time = 155+var(7)
value = 800

[state 8235, changestate]
type = changestate
trigger1 = time = 170+var(7)
value = 820
;===========================================================================
;■イントロ＃ｅｘ『私達なら、きっと大丈夫』（パートナー：美樹さやか）
[statedef 8236]
type = s
anim = 800

[state 8236, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8236, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8130
trigger1 = var(7) := 72
trigger2 = var(30) = 8131
trigger2 = var(7) := 96
trigger3 = var(30) = 8132
trigger3 = var(7) := 102
trigger4 = var(30) = 8133
trigger4 = var(7) := 108
trigger5 = var(30) = 8134
trigger5 = var(7) := 114
trigger6 = var(30) = 8135
trigger6 = var(7) := 138
trigger7 = var(30) = 8136
trigger7 = var(7) := 150
trigger8 = var(30) = 8137
trigger8 = var(7) := 180

[state 8236, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,236
channel = 0

[state 8236, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
trigger2 = time = 120+var(7)
value = 802

[state 8236, changeanim]
type = changeanim
trigger1 = time = 100+var(7)
trigger2 = time = 195+var(7)
value = 800

[state 8236, changestate]
type = changestate
trigger1 = time = 220+var(7)
value = 820
;===========================================================================
;■イントロ＃ｅｘ『私達二人ならいけるいける！』（パートナー：美樹さやか）
[statedef 8237]
type = s
anim = 800

[state 8237, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8237, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8130
trigger1 = var(7) := 72
trigger2 = var(30) = 8131
trigger2 = var(7) := 96
trigger3 = var(30) = 8132
trigger3 = var(7) := 102
trigger4 = var(30) = 8133
trigger4 = var(7) := 108
trigger5 = var(30) = 8134
trigger5 = var(7) := 114
trigger6 = var(30) = 8135
trigger6 = var(7) := 138
trigger7 = var(30) = 8136
trigger7 = var(7) := 150
trigger8 = var(30) = 8137
trigger8 = var(7) := 180

[state 8237, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,237
channel = 0

[state 8237, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
value = 802

[state 8237, changeanim]
type = changeanim
trigger1 = time = 180+var(7)
value = 800

[state 8237, changestate]
type = changestate
trigger1 = time = 210+var(7)
value = 820
;===========================================================================
;■イントロ＃ｅｘ『二人で力を合わせよう！』（パートナー：美樹さやか）
[statedef 8238]
type = s
anim = 800

[state 8238, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8238, varset]
type = null
triggerall = time = 1
trigger1 = var(30) = 8130
trigger1 = var(7) := 72
trigger2 = var(30) = 8131
trigger2 = var(7) := 96
trigger3 = var(30) = 8132
trigger3 = var(7) := 102
trigger4 = var(30) = 8133
trigger4 = var(7) := 108
trigger5 = var(30) = 8134
trigger5 = var(7) := 114
trigger6 = var(30) = 8135
trigger6 = var(7) := 138
trigger7 = var(30) = 8136
trigger7 = var(7) := 150
trigger8 = var(30) = 8137
trigger8 = var(7) := 180

[state 8238, playsnd]
type = playsnd
trigger1 = time = 60+var(7)
value = 10,238
channel = 0

[state 8238, changeanim]
type = changeanim
trigger1 = time = 60+var(7)
value = 802

[state 8238, changeanim]
type = changeanim
trigger1 = time = 140+var(7)
value = 800

[state 8238, changestate]
type = changestate
trigger1 = time = 160+var(7)
value = 820
;===========================================================================
;■イントロ＃ｅｘ『マミさん、よろしくお願いします』（vs巴マミ）
[statedef 8300]
type = s
anim = 810

[state 8300, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8300, playsnd]
type = playsnd
trigger1 = time = 60+120
value = 10,300
channel = 0

[state 8300, changeanim]
type = changeanim
trigger1 = time = 60+120
trigger2 = time = 120+120
value = 812

[state 8300, changeanim]
type = changeanim
trigger1 = time = 100+120
trigger2 = time = 200+120
value = 810

[state 8300, changestate]
type = changestate
trigger1 = time = 230+120
value = 820
;===========================================================================
;■イントロ＃ｅｘ『マミさん、お願いします』（パートナー：巴マミ）
[statedef 8330]
type = s
anim = 810

[state 8330, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8330, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,330
channel = 0

[state 8330, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 100
value = 812

[state 8330, changeanim]
type = changeanim
trigger1 = time = 95
trigger2 = time = 160
value = 810

[state 8330, changestate]
type = changestate
trigger1 = time = 190
value = 820
;===========================================================================
;■イントロ＃ｅｘ『敵ですよ、マミさん！』（パートナー：巴マミ）
[statedef 8331]
type = s
anim = 810

[state 8331, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8331, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,331
channel = 0

[state 8331, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 100
value = 812

[state 8331, changeanim]
type = changeanim
trigger1 = time = 95
trigger2 = time = 145
value = 810

[state 8331, changestate]
type = changestate
trigger1 = time = 170
value = 820
;===========================================================================
;■イントロ＃ｅｘ『絶対に守ってみせますからね』（パートナー：巴マミ）
[statedef 8332]
type = s
anim = 800

[state 8332, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8332, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,332
channel = 0

[state 8332, changeanim]
type = changeanim
trigger1 = time = 60
value = 802

[state 8332, changeanim]
type = changeanim
trigger1 = time = 170
value = 800

[state 8332, changestate]
type = changestate
trigger1 = time = 200
value = 820
;===========================================================================
;■イントロ＃ｅｘ『マミさんは私が守ります』（パートナー：巴マミ）
[statedef 8333]
type = s
anim = 800

[state 8333, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8333, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,333
channel = 0

[state 8333, changeanim]
type = changeanim
trigger1 = time = 60
value = 802

[state 8333, changeanim]
type = changeanim
trigger1 = time = 160
value = 800

[state 8333, changestate]
type = changestate
trigger1 = time = 180
value = 820
;===========================================================================
;■イントロ＃ｅｘ『強い魔力を感じます』（パートナー：巴マミ）
[statedef 8334]
type = s
anim = 810

[state 8334, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8334, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,334
channel = 0

[state 8334, changeanim]
type = changeanim
trigger1 = time = 60
value = 812

[state 8334, changeanim]
type = changeanim
trigger1 = time = 160
value = 810

[state 8334, changestate]
type = changestate
trigger1 = time = 180
value = 820
;===========================================================================
;■イントロ＃ｅｘ『マミさんは私が守る！』（パートナー：巴マミ）
[statedef 8335]
type = s
anim = 810

[state 8335, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8335, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,335
channel = 0

[state 8335, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 110
value = 812

[state 8335, changeanim]
type = changeanim
trigger1 = time = 95
trigger2 = time = 170
value = 810

[state 8335, changestate]
type = changestate
trigger1 = time = 190
value = 820
;===========================================================================
;■イントロ＃ｅｘ『二人なら何でもできますよね』（パートナー：巴マミ）
[statedef 8336]
type = s
anim = 800

[state 8336, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8336, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,336
channel = 0

[state 8336, changeanim]
type = changeanim
trigger1 = time = 60
value = 802

[state 8336, changeanim]
type = changeanim
trigger1 = time = 180
value = 800

[state 8336, changestate]
type = changestate
trigger1 = time = 220
value = 820
;===========================================================================
;■イントロ＃ｅｘ『マミさんは私が守る！』（パートナー：巴マミ）
[statedef 8337]
type = s
anim = 810

[state 8337, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8337, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,337
channel = 0

[state 8337, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 110
value = 812

[state 8337, changeanim]
type = changeanim
trigger1 = time = 95
trigger2 = time = 190
value = 810

[state 8337, changestate]
type = changestate
trigger1 = time = 210
value = 820
;===========================================================================
;■イントロ＃ｅｘ『私お金もってないよ』（vs佐倉杏子）
[statedef 8400]
type = s
anim = 800

[state 8400, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8400, playsnd]
type = playsnd
trigger1 = time = 60+100
value = 10,400
channel = 0

[state 8400, changeanim]
type = changeanim
trigger1 = time = 60+100
value = 811

[state 8400, changeanim]
type = changeanim
trigger1 = time = 100+100
trigger2 = time = 160+100
value = 812

[state 8400, changeanim]
type = changeanim
trigger1 = time = 80+100
trigger2 = time = 140+100
trigger3 = time = 240+100
value = 810

[state 8400, changestate]
type = changestate
trigger1 = time = 270+100
value = 820
;===========================================================================
;■イントロ＃ｅｘ『私が付いてるよ！』（パートナー：佐倉杏子）
[statedef 8430]
type = s
anim = 800

[state 8430, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8430, playsnd]
type = playsnd
trigger1 = time = 60+100
value = 10,430
channel = 0

[state 8430, changeanim]
type = changeanim
trigger1 = time = 60+100
value = 802

[state 8430, changeanim]
type = changeanim
trigger1 = time = 120+100
value = 800

[state 8430, changestate]
type = changestate
trigger1 = time = 150+100
value = 820
;===========================================================================
;■イントロ＃ｅｘ『私が囮になるからね』（パートナー：佐倉杏子）
[statedef 8431]
type = s
anim = 800

[state 8431, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8431, playsnd]
type = playsnd
trigger1 = time = 60+100
value = 10,431
channel = 0

[state 8431, changeanim]
type = changeanim
trigger1 = time = 60+100
value = 802

[state 8431, changeanim]
type = changeanim
trigger1 = time = 155+100
value = 800

[state 8431, changestate]
type = changestate
trigger1 = time = 170+100
value = 820
;===========================================================================
;■イントロ＃ｅｘ『任せといて、私も頑張っちゃうから』（パートナー：佐倉杏子）
[statedef 8432]
type = s
anim = 800

[state 8432, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8432, playsnd]
type = playsnd
trigger1 = time = 60+100
value = 10,432
channel = 0

[state 8432, changeanim]
type = changeanim
trigger1 = time = 60+100
trigger2 = time = 130+100
value = 802

[state 8432, changeanim]
type = changeanim
trigger1 = time = 120+100
trigger2 = time = 230+100
value = 800

[state 8432, changestate]
type = changestate
trigger1 = time = 250+100
value = 820
;===========================================================================
;■イントロ＃ｅｘ『大切・・だよ』（vs暁美ほむら）
[statedef 8500]
type = s
anim = 810

[state 8500, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8500, playsnd]
type = playsnd
trigger1 = time = 60+200
value = 10,502
channel = 0

[state 8500, changeanim]
type = changeanim
trigger1 = time = 60+200
trigger2 = time = 110+200
trigger3 = time = 200+200
value = 812

[state 8500, changeanim]
type = changeanim
trigger1 = time = 80+200
trigger2 = time = 170+200
trigger3 = time = 220+200
value = 810

[state 8500, changestate]
type = changestate
trigger1 = time = 280+200
value = 820
;===========================================================================
;■イントロ＃ｅｘ『どうして戦わないといけないの』（vs暁美ほむら）
[statedef 8501]
type = s
anim = 810

[state 8501, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8501, varset]
type = null
triggerall = time = 0
triggerall = numenemy
trigger1 = enemy,anim != 0
trigger1 = var(5) := 1
trigger2 = enemy,anim = 0
trigger2 = var(5) := 0

[state 8501, playsnd]
type = playsnd
trigger1 = time = 60+200*var(5)
value = 10,500
channel = 0

[state 8501, changeanim]
type = changeanim
trigger1 = time = 60+200*var(5)
value = 812

[state 8501, changeanim]
type = changeanim
trigger1 = time = 160+200*var(5)
value = 810

[state 8501, changestate]
type = changestate
trigger1 = time = 220+200*var(5)
value = 820
;===========================================================================
;■イントロ＃ｅｘ『こんなの絶対間違ってるよ』（vs暁美ほむら）
[statedef 8502]
type = s
anim = 810

[state 8502, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8502, varset]
type = null
triggerall = time = 0
triggerall = numenemy
trigger1 = enemy,anim != 0
trigger1 = var(5) := 1
trigger2 = enemy,anim = 0
trigger2 = var(5) := 0

[state 8502, playsnd]
type = playsnd
trigger1 = time = 60+200*var(5)
value = 10,501
channel = 0

[state 8502, changeanim]
type = changeanim
trigger1 = time = 60+200*var(5)
value = 812

[state 8502, changeanim]
type = changeanim
trigger1 = time = 180+200*var(5)
value = 810

[state 8502, changestate]
type = changestate
trigger1 = time = 240+200*var(5)
value = 820
;===========================================================================
;■イントロ＃ｅｘ『がんばろーね』（パートナー：暁美ほむら）
[statedef 8530]
type = s
anim = 800

[state 8530, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8530, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,530
channel = 0

[state 8530, changeanim]
type = changeanim
trigger1 = time = 60
value = 802

[state 8530, changeanim]
type = changeanim
trigger1 = time = 105
value = 800

[state 8530, changestate]
type = changestate
trigger1 = time = 130
value = 820
;===========================================================================
;■イントロ＃ｅｘ『準備はいーい？』（パートナー：暁美ほむら）
[statedef 8531]
type = s
anim = 800

[state 8531, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8531, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,531
channel = 0

[state 8531, changeanim]
type = changeanim
trigger1 = time = 60
value = 802

[state 8531, changeanim]
type = changeanim
trigger1 = time = 105
value = 800

[state 8531, changestate]
type = changestate
trigger1 = time = 130
value = 820
;===========================================================================
;■イントロ＃ｅｘ『ドキドキするね』（パートナー：暁美ほむら）
[statedef 8532]
type = s
anim = 800

[state 8532, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8532, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,532
channel = 0

[state 8532, changeanim]
type = changeanim
trigger1 = time = 60
value = 802

[state 8532, changeanim]
type = changeanim
trigger1 = time = 125
value = 800

[state 8532, changestate]
type = changestate
trigger1 = time = 150
value = 820
;===========================================================================
;■イントロ＃ｅｘ『一緒にやろう、ほむらちゃん』（パートナー：暁美ほむら）
[statedef 8533]
type = s
anim = 800

[state 8533, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8533, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,533
channel = 0

[state 8533, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 110
value = 802

[state 8533, changeanim]
type = changeanim
trigger1 = time = 95
trigger2 = time = 150
value = 800

[state 8533, changestate]
type = changestate
trigger1 = time = 170
value = 820
;===========================================================================
;■イントロ＃ｅｘ『大丈夫、私が守るから』（パートナー：暁美ほむら）
[statedef 8534]
type = s
anim = 800

[state 8534, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8534, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,534
channel = 0

[state 8534, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 140
value = 802

[state 8534, changeanim]
type = changeanim
trigger1 = time = 95
trigger2 = time = 205
value = 800

[state 8534, changestate]
type = changestate
trigger1 = time = 230
value = 820
;===========================================================================
;■イントロ＃ｅｘ『一緒に頑張ろうね』（パートナー：暁美ほむら）
[statedef 8535]
type = s
anim = 800

[state 8535, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8535, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,535
channel = 0

[state 8535, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 170
value = 802

[state 8535, changeanim]
type = changeanim
trigger1 = time = 155
trigger2 = time = 250
value = 800

[state 8535, changestate]
type = changestate
trigger1 = time = 270
value = 820
;===========================================================================
;■イントロ＃ｅｘ『心配しないで、私やれるよ』（パートナー：暁美ほむら）
[statedef 8536]
type = s
anim = 800

[state 8536, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8536, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,536
channel = 0

[state 8536, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 150
trigger3 = time = 200
value = 802

[state 8536, changeanim]
type = changeanim
trigger1 = time = 120
trigger2 = time = 185
trigger3 = time = 255
value = 800

[state 8536, changestate]
type = changestate
trigger1 = time = 270
value = 820
;===========================================================================
;■イントロ＃ｅｘ『絶対なんとかなるよ』（パートナー：暁美ほむら）
[statedef 8537]
type = s
anim = 800

[state 8537, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8537, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,537
channel = 0

[state 8537, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 160
trigger3 = time = 210
value = 802

[state 8537, changeanim]
type = changeanim
trigger1 = time = 135
trigger2 = time = 195
trigger3 = time = 370
value = 800

[state 8537, changestate]
type = changestate
trigger1 = time = 400
value = 820
;===========================================================================
;■イントロ＃ｅｘ『ええ！？』（vs草加雅人）
[statedef 8900]
type = s
anim = 810

[state 8900, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8900, varset]
type = varset
trigger1 = time = 0
var(7) = 0

[state 8900, varset]
type = varset
trigger1 = time = 0
trigger1 = var(12) = 200
var(7) = 126

[state 8900, playsnd]
type = playsnd
trigger1 = time = 60+100+var(7)
value = 10,900
channel = 0

[state 8900, changeanim]
type = changeanim
trigger1 = time = 60+100+var(7)
value = 812

[state 8900, changeanim]
type = changeanim
trigger1 = time = 80+100+var(7)
value = 810

[state 8900, changestate]
type = changestate
trigger1 = time = 300+100+var(7)
value = 820
;===========================================================================
;■イントロ＃ｅｘ『よ、よろしくね』（パートナー：草加雅人）
[statedef 8930]
type = s
anim = 800

[state 8930, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8930, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,930
channel = 0

[state 8930, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 100
trigger3 = time = 170
value = 802

[state 8930, changeanim]
type = changeanim
trigger1 = time = 80
trigger2 = time = 145
trigger3 = time = 190
value = 800

[state 8930, changestate]
type = changestate
trigger1 = var(30) = 830
trigger2 = time = 300
value = 820
;===========================================================================
[statedef 820]
type = s
physics = n
anim = 820

[state 820, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 820, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 4,0

[state 820, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 10
value = 4,1
channel = 9

[state 820, explod]
type = explod
trigger1 = animelemtime(2) = 0
id = 10820
anim = 10820
postype = p1
pos = 0,0
sprpriority = 4
ownpal = 1
bindtime = -1
scale = const(size.xscale),const(size.yscale)

[state 820, changestate]
type = changestate
trigger1 = animtime = 0
value = 821
;---------------------------------------------------------------------------
[statedef 821]
type = a
physics = n
anim = 821

[state 821, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 821, veladd]
type = veladd
trigger1 = 1
y = -0.005*const(size.yscale)

[state 821, changestate]
type = changestate
trigger1 = animtime = 0
value = 822
;---------------------------------------------------------------------------
[statedef 822]
type = a
physics = n
anim = 822

[state 822, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 822, velset]
type = velset
trigger1 = 1
y = -0.02

[state 822, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,7

[state 822, helper]
type = helper
trigger1 = animelemtime(2) > 10
trigger1 = animelemtime(3) < 10
name = "magical heart a"
id = 20000
stateno = 20000
postype = p1
pos = floor(const(size.xscale)*random*0.1),floor(const(size.yscale)*random*0.1)-floor(30*const(size.yscale))
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = (1.2-(var(5)*0.1))*const(size.xscale)
size.yscale = (1.2-(var(5)*0.1))*const(size.yscale)

[state 822, helper]
type = helper
trigger1 = animelemtime(2) > 10
trigger1 = animelemtime(3) < 10
name = "magical heart b"
id = 20000
stateno = 20000
postype = p1
pos = floor(const(size.xscale)*random*0.1),-floor(const(size.yscale)*random*0.1)-floor(30*const(size.yscale))
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = (1.2-(var(5)*0.1))*const(size.xscale)
size.yscale = (1.2-(var(5)*0.1))*const(size.yscale)

[state 822, helper]
type = helper
trigger1 = animelemtime(2) > 10
trigger1 = animelemtime(3) < 10
name = "magical heart c"
id = 20000
stateno = 20000
postype = p1
pos = -floor(const(size.xscale)*random*0.1),floor(const(size.yscale)*random*0.1)-floor(30*const(size.yscale))
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = (1.2-(var(5)*0.1))*const(size.xscale)
size.yscale = (1.2-(var(5)*0.1))*const(size.yscale)

[state 822, helper]
type = helper
trigger1 = animelemtime(2) > 10
trigger1 = animelemtime(3) < 10
name = "magical heart d"
id = 20000
stateno = 20000
postype = p1
pos = -floor(const(size.xscale)*random*0.1),-floor(const(size.yscale)*random*0.1)-floor(30*const(size.yscale))
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = (1.2-(var(5)*0.1))*const(size.xscale)
size.yscale = (1.2-(var(5)*0.1))*const(size.yscale)

[state 822, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 4,2
channel = 9

[state 822, changestate]
type = changestate
trigger1 = animtime = 0
value = 823
;---------------------------------------------------------------------------
[statedef 823]
type = a
physics = n
anim = 823

[state 823, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 823, veladd]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 823, changestate]
type = changestate
trigger1 = pos y >= -1
value = 824
;---------------------------------------------------------------------------
[statedef 824]
type = s
physics = n
ctrl = 0
anim = 824

[state 824, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 824, velset]
type = velset
trigger1 = time = 0
y = 0

[state 824, posset]
type = posset
trigger1 = time = 0
y = 0

[state 824, explod]
type = explod
trigger1 = animelemtime(1) = 0
id = 10824
anim = 10824
postype = p1
pos = 0,0
sprpriority = 4
ownpal = 1
bindtime = -1
scale = const(size.xscale),const(size.yscale)

[state 824, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
;===========================================================================
;-| initialize |--------------------------------------------------------
;===========================================================================
;■初期化
[statedef 5900]
type = s

[state 5900, varrangeset]
type = varrangeset
trigger1 = roundsexisted = 0
value = 0

[state 5900, varrangeset]
type = varrangeset
trigger1 = roundsexisted = 0
fvalue = 0
;---------------------------------------------------------------------------
;■敵コード取得
[state 5900, varset]
type = varset
triggerall = var(11) = 0
trigger1 = numenemy > 0
trigger1 = enemy(0),authorname = "otzkai" && enemy(0),name = "miki sayaka"
trigger2 = numenemy > 1
trigger2 = enemy(1),authorname = "otzkai" && enemy(1),name = "miki sayaka"
trigger3 = numenemy > 2
trigger3 = enemy(2),authorname = "otzkai" && enemy(2),name = "miki sayaka"
trigger4 = numenemy > 3
trigger4 = enemy(3),authorname = "otzkai" && enemy(3),name = "miki sayaka"
var(11) = 200

[state 5900, varset]
type = varset
triggerall = var(11) = 0
trigger1 = numenemy > 0
trigger1 = enemy(0),authorname = "otzkai" && enemy(0),name = "tomoe mami"
trigger2 = numenemy > 1
trigger2 = enemy(1),authorname = "otzkai" && enemy(1),name = "tomoe mami"
trigger3 = numenemy > 2
trigger3 = enemy(2),authorname = "otzkai" && enemy(2),name = "tomoe mami"
trigger4 = numenemy > 3
trigger4 = enemy(3),authorname = "otzkai" && enemy(3),name = "tomoe mami"
var(11) = 300

[state 5900, varset]
type = varset
triggerall = var(11) = 0
trigger1 = numenemy > 0
trigger1 = enemy(0),name = "sakurakyouko" || enemy(0),name = "kyoko_sakura" || enemy(0),name = "sakura-kyoko"
trigger2 = numenemy > 1
trigger2 = enemy(1),name = "sakurakyouko" || enemy(1),name = "kyoko_sakura" || enemy(1),name = "sakura-kyoko"
trigger3 = numenemy > 2
trigger3 = enemy(2),name = "sakurakyouko" || enemy(2),name = "kyoko_sakura" || enemy(2),name = "sakura-kyoko"
trigger4 = numenemy > 3
trigger4 = enemy(3),name = "sakurakyouko" || enemy(3),name = "kyoko_sakura" || enemy(3),name = "sakura-kyoko"
var(11) = 400

[state 5900, varset]
type = varset
triggerall = var(11) = 0
trigger1 = numenemy > 0
trigger1 = enemy(0),authorname = "geros" && enemy(0),name = "tomoe mami"
trigger2 = numenemy > 1
trigger2 = enemy(1),authorname = "geros" && enemy(1),name = "tomoe mami"
trigger3 = numenemy > 2
trigger3 = enemy(2),authorname = "geros" && enemy(2),name = "tomoe mami"
trigger4 = numenemy > 3
trigger4 = enemy(3),authorname = "geros" && enemy(3),name = "tomoe mami"
var(11) = 310

[state 5900, varset]
type = varset
triggerall = var(11) = 0
trigger1 = numenemy > 0
trigger1 = enemy(0),name = "akemi-homura"
trigger2 = numenemy > 1
trigger2 = enemy(1),name = "akemi-homura"
trigger3 = numenemy > 2
trigger3 = enemy(2),name = "akemi-homura"
trigger4 = numenemy > 3
trigger4 = enemy(3),name = "akemi-homura"
var(11) = 500

[state 5900, varset]
type = varset
triggerall = var(11) = 0
trigger1 = numenemy > 0
trigger1 = enemy(0),name = "homura & friends"
trigger2 = numenemy > 1
trigger2 = enemy(1),name = "homura & friends"
trigger3 = numenemy > 2
trigger3 = enemy(2),name = "homura & friends"
trigger4 = numenemy > 3
trigger4 = enemy(3),name = "homura & friends"
var(11) = 590

[state 5900, varset]
type = varset
triggerall = var(11) = 0
trigger1 = numenemy > 0
trigger1 = enemy(0),name = "kamen rider kaixa"
trigger2 = numenemy > 1
trigger2 = enemy(1),name = "kamen rider kaixa"
trigger3 = numenemy > 2
trigger3 = enemy(2),name = "kamen rider kaixa"
trigger4 = numenemy > 3
trigger4 = enemy(3),name = "kamen rider kaixa"
var(11) = 900
;---------------------------------------------------------------------------
;■味方コード取得
[state 5900, varset]
type = varset
triggerall = var(12) = 0
triggerall = numpartner
trigger1 = partner,authorname = "otzkai" && partner,name = "miki sayaka"
var(12) = 200

[state 5900, varset]
type = varset
triggerall = var(12) = 0
triggerall = numpartner
trigger1 = partner,authorname = "otzkai" && partner,name = "tomoe mami"
var(12) = 300

[state 5900, varset]
type = varset
triggerall = var(12) = 0
triggerall = numpartner
trigger1 = partner,name = "sakurakyouko"
trigger2 = partner,name = "kyoko_sakura"
trigger3 = partner,name = "sakura-kyoko"
var(12) = 400

[state 5900, varset]
type = varset
triggerall = var(12) = 0
triggerall = numpartner
trigger1 = partner,name = "akemi-homura"
var(12) = 500

[state 5900, varset]
type = varset
triggerall = var(12) = 0
triggerall = numpartner
trigger1 = partner,name = "kamen rider kaixa"
var(12) = 900
;---------------------------------------------------------------------------
;■パレット定数
[state 5900, color default]
type = null
trigger1 = palno = 1 || palno = 4 || palno = 9
trigger1 = var(21) := 100
trigger1 = var(22) := 50
trigger1 = var(23) := 80

[state 5900, color countryside]
type = null
trigger1 = palno = 2 || palno = 5
trigger1 = var(21) := 80
trigger1 = var(22) := 40
trigger1 = var(23) := 40

[state 5900, color lolita]
type = null
trigger1 = palno = 3 || palno = 6 || palno = 7
trigger1 = var(21) := 90
trigger1 = var(22) := 30
trigger1 = var(23) := 90

[state 5900, color yandere]
type = null
trigger1 = palno = 8
trigger1 = var(21) := 30
trigger1 = var(22) := 90
trigger1 = var(23) := 60

[state 5900, color preppy]
type = null
trigger1 = palno = 10
trigger1 = var(21) := 90
trigger1 = var(22) := 90
trigger1 = var(23) := 30

[state 5900, color ice]
type = null
trigger1 = palno = 11
trigger1 = var(21) := 30
trigger1 = var(22) := 30
trigger1 = var(23) := 90

[state 5900, color fairytale]
type = null
trigger1 = palno = 12
trigger1 = var(21) := 40
trigger1 = var(22) := 90
trigger1 = var(23) := 40

;円環の紋章を確認
[state 5900, varset]
type = varset
trigger1 = numpartner
trigger1 = partner,animexist(100300)
trigger1 = var(12) = 500
var(45) = 1
;---------------------------------------------------------------------------
[state 5900, changestate]
type = changestate
trigger1 = roundno = 1
trigger2 = teammode = turns
trigger2 = roundsexisted = 0
trigger3 = var(11) != 0
trigger3 = numenemy
trigger3 = enemy,roundsexisted = 0
value = 190
