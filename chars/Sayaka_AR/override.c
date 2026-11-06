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

[state 0, assertspecial]
type = assertspecial
trigger1 = var(27) = 1
flag = noautoturn
ignorehitpause = 1

[state 0, changeanim]
type = changeanim
triggerall = var(27) = 0
trigger1 = anim != 0 && anim != 5
trigger2 = anim = 5 && animtime = 0
value = 0

[state 0, changeanim]
type = changeanim
trigger1 = var(27) = 1
elem = 11
value = 3470
ignorehitpause = 1

[state 0, palfx]
type = palfx
trigger1 = var(27) = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

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
x = ifelse(sysvar(1)=0,const(velocity.airjump.neu.x),ifelse(sysvar(1)=1,const(velocity.airjump.fwd.x),const(velocity.airjump.back.x)))
y = const(velocity.airjump.y)

[state 45, helper]
type = helper
trigger1 = time = 0
name = "magic circle jump"
id = 20040
stateno = 20040
postype = p1
pos = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 0.75*const(size.xscale)
size.yscale = 0.75*const(size.yscale)

[state 45, changestate]
type = changestate
trigger1 = time = 2
value = ifelse(sysvar(4)=1,63,50)
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
elem = (prevstateno=[110,115])*3

[state 50, changeanim]
type = null;changeanim
trigger1 = vel y > -2
trigger1 = selfanimexist(anim + 3)
persistent = 0
value = anim + 3
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
;■スーパージャンプ
[statedef 60]
type = a
movetype = i
physics = n
ctrl = 0

[state 60, varset]
type = varset
trigger1 = time = 0
sysvar(2) = 5

[state 60, varset]
type = varset
triggerall = time = 0
trigger1 = var(50) = 0
trigger1 = command = "sjump-n"
sysvar(1) = 0

[state 60, varset]
type = varset
triggerall = time = 0
trigger1 = var(50) = 0
trigger1 = command = "sjump-f"
sysvar(1) = 1

[state 60, varset]
type = varset
triggerall = time = 0
trigger1 = var(50) = 0
trigger1 = command = "sjump-b"
sysvar(1) = -1

[state 60, changeanim]
type = changeanim
trigger1 = time = 0
value = 41
persistent = 0

[state 60, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,14

[state 60, afterimage]
type = afterimage
trigger1 = time = 0
time = 20
length = 16
palcontrast = 192,192,192
paladd = 20,20,20
palmul = 0.7,0.7,0.7
framegap = 4
trans = add1

[state 60, helper]
type = helper
trigger1 = time = 0
name = "magic circle jump"
id = 20040
stateno = 20040
postype = p1
pos = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 0.75*const(size.xscale)
size.yscale = 0.75*const(size.yscale)

[state 60, velset]
type = velset
trigger1 = time = 3
x = sysvar(1)*3
y = -17

[state 60, changestate]
type = changestate
trigger1 = time = 3
value = 63
;---------------------------------------------------------------------------
[statedef 63]
type = a
movetype = i
physics = a
ctrl = 1

[state 63, changeanim]
type = changeanim
trigger1 = anim != 41
trigger1 = anim != 43
trigger1 = anim != 63
value = ifelse(prevstateno=465,43,63)
persistent = 0

[state 63, turn]
type = turn
trigger1 = p2dist x < 0

[state 63, veladd]
type = veladd
trigger1 = command = "holdfwd"
x = 0.1

[state 63, veladd]
type = veladd
trigger1 = command = "holdback"
x = -0.1
;---------------------------------------------------------------------------
;■エアロダイブ・ターン
[statedef 80]
type = a
movetype = i
physics = a
anim = 80
poweradd = 20
velset = 0,0
ctrl = 0

[state 80, varset]
type = varset
triggerall = time = 0
trigger1 = var(50) = 0
trigger1 = command = "aero1"
trigger2 = var(50) != 0
trigger2 = p2dist x < 120
sysvar(1) = 0

[state 80, varset]
type = varset
triggerall = time = 0
trigger1 = var(50) = 0
trigger1 = command = "aero2"
trigger2 = var(50) != 0
trigger2 = p2dist x = [120,310]
sysvar(1) = 3

[state 80, varset]
type = varset
triggerall = time = 0
trigger1 = var(50) = 0
trigger1 = command = "aero3"
trigger2 = var(50) != 0
trigger2 = p2dist x > 310
sysvar(1) = 15

[state 80, posfreeze]
type = posfreeze
trigger1 = 1

[state 80, helper]
type = helper
trigger1 = time = 0
trigger2 = time = 3
trigger3 = time = 6
name = "magic circle aero"
id = 21700
stateno = 21700
postype = p1
pos = -floor(const(size.xscale)*30),-floor(const(size.yscale)*90)
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 0.5*const(size.xscale)
size.yscale = 0.5*const(size.yscale)

[state 80, changestate]
type = changestate
trigger1 = animtime = 0
value = 81
;---------------------------------------------------------------------------
;■エアロダイブ・ブースト
[statedef 81]
type = a
physics = a
anim = 81
velset = 10+sysvar(1),13

[state 81, playsnd]
type = playsnd
trigger1 = time = 0
value = 2,15

[state 81, ctrlset]
type = ctrlset
trigger1 = time = 1
value = 1

[state 81, assertspecial]
type = assertspecial
trigger1 = 1
flag = noautoturn
flag2 = noairguard
;---------------------------------------------------------------------------
;■ダッシュ
[statedef 100]
type = s
physics = s
anim = 100

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

[state 100, ctrlset]
type = ctrlset
trigger1 = time = 10
value = 1

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
ctrl = 0

[state 101, changeanim]
type = changeanim
trigger1 = anim != 100
value = 100

[state 101, velset]
type = velset
trigger1 = 1
x = const(velocity.run.fwd.x)*(1+(prevstateno=901))

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

[state 110, helper]
type = helper
trigger1 = time = 0
name = "magic circle air"
id = 20110
stateno = 20110
postype = p1
pos = 0,-floor(const(size.yscale)*45)
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 0.75*const(size.xscale)
size.yscale = 0.75*const(size.yscale)

[state 110, ctrlset]
type = ctrlset
trigger1 = time >= 3
value = 1

[state 110, changestate]
type = changestate
trigger1 = time >= 20
value = ifelse(sysvar(4)=1,63,50)
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

[state 115, helper]
type = helper
trigger1 = time = 0
name = "magic circle air"
id = 20110
stateno = 20110
postype = p1
pos = 0,-floor(const(size.yscale)*45)
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 0.75*const(size.xscale)
size.yscale = 0.75*const(size.yscale)

[state 115, ctrlset]
type = ctrlset
trigger1 = time >= 3
value = 1

[state 115, changestate]
type = changestate
trigger1 = time >= 20
value = ifelse(sysvar(4)=1,63,50)
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
pos = 0,0
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
;■ダウン（「誰が為にアフェットゥオーソ」追加処理）
[statedef 5110]
type = l
movetype = h
physics = n

[state 5110, screenbound]
type = screenbound
trigger1 = !(authorname = "otzkai") && name != "miki sayaka"
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 5110, fallenvshake]
type = fallenvshake
trigger1 = time = 0

[state 5110, changeanim]
type = changeanim
persistent = 0
trigger1 = selfanimexist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[state 5110, changeanim]
type = changeanim
triggerall = time = 0
triggerall = anim != [5110,5119]
trigger1 = anim != [5161,5169]
trigger2 = !selfanimexist(5170 + (anim % 10))
value = 5170

[state 5110, changeanim]
type = changeanim
triggerall = time = 0
triggerall = anim != [5110,5119]
trigger1 = anim = [5161,5169]
trigger1 = selfanimexist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[state 5110, hitfalldamage]
type = hitfalldamage
trigger1 = time = 0

[state 5110, posset]
type = posset
trigger1 = time = 0
y = 0

[state 5110, varset]
type = varset
trigger1 = time = 0
trigger1 = gethitvar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[state 5110, playsnd]
type = playsnd
trigger1 = authorname = "otzkai" && name = "miki sayaka"
trigger1 = time = 0
trigger1 = !sysvar(0)
value = f7,(sysvar(1)>5)+(sysvar(1)>14)

[state 5110, gamemakeanim]
type = gamemakeanim
trigger1 = authorname = "otzkai" && name = "miki sayaka"
trigger1 = time = 0
trigger1 = !sysvar(0)
value = 60+(sysvar(1)>5)+(sysvar(1)>14)
pos = 0,0
under = sysvar(1) <= 14

[state 5110, velset]
type = velset
trigger1 = time = 0
y = 0

[state 5110, changeanim]
type = changeanim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = selfanimexist(5110 + (anim % 10))
trigger1 = animtime = 0
trigger2 = sysvar(0) ;sysvar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[state 5110, changeanim]
type = changeanim
persistent = 0
triggerall = anim != [5111,5119]
trigger1 = animtime = 0
trigger2 = sysvar(0) ;sysvar(0) = 1 avoids hit ground frame
value = 5110

[state 5110, changestate]
type = changestate
triggerall = !alive
trigger1 = animtime = 0
trigger2 = sysvar(0) ;sysvar(0) = 1 avoids hit ground frame
trigger3 = anim = [5110,5119]
value = 5150

[state 5110, varset]
type = varset
trigger1 = sysvar(0)
trigger1 = time = 0
sysvar(0) = 0

[state 5110, velmul]
type = velmul
trigger1 = 1
x = 0.85
;===========================================================================
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
trigger1 = authorname = "otzkai" && name = "miki sayaka"
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
value = sca,aa
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

[state 5150, changestate]
type = changestate
triggerall = authorname = "otzkai" && name = "miki sayaka"
triggerall = roundstate > 3
triggerall = time > 60
trigger1 = matchover
trigger2 = teammode = turns
value = 5155

[state 5150, changestate]
type = changestate
triggerall = numenemy > 0
triggerall = enemy(0),authorname = "otzkai"
triggerall = enemy(0),name = "miki sayaka"
triggerall = enemy(0),stateno = 680
triggerall = roundstate > 3
triggerall = time
trigger1 = matchover
value = 5159

[state 5150, changestate]
type = changestate
triggerall = numenemy > 1
triggerall = enemy(1),authorname = "otzkai"
triggerall = enemy(1),name = "miki sayaka"
triggerall = enemy(1),stateno = 680
triggerall = roundstate > 3
triggerall = time
trigger1 = matchover
value = 5159

[state 5150, changestate]
type = changestate
triggerall = numenemy > 2
triggerall = enemy(2),authorname = "otzkai"
triggerall = enemy(2),name = "miki sayaka"
triggerall = enemy(2),stateno = 680
triggerall = roundstate > 3
triggerall = time
trigger1 = matchover
value = 5159

[state 5150, changestate]
type = changestate
triggerall = numenemy > 3
triggerall = enemy(3),authorname = "otzkai"
triggerall = enemy(3),name = "miki sayaka"
triggerall = enemy(3),stateno = 680
triggerall = roundstate > 3
triggerall = time
trigger1 = matchover
value = 5159
;===========================================================================
;■ファイナルダウン・変身解除
[statedef 5155]
type = l
movetype = h
sprpriority = -3

[state 5155, assertspecial]
type = assertspecial
trigger1 = time < 200
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

[state 5155, changeanim]
type = changeanim
trigger1 = time = 0
value = 5150

[state 5155, playsnd]
type = playsnd
trigger1 = time = 41
value = 4,2

[state 5155, changeanim]
type = changeanim
trigger1 = time = 45
value = 5155

[state 5155, explod]
type = explod
trigger1 = time = 0
anim = 15155
id = 15155
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = 5
ownpal = 1
;===========================================================================
;■惨殺やられ
[statedef 5159]
type = l
sprpriority = -3

[state 5159, assertspecial]
type = assertspecial
trigger1 = time < 60
flag = roundnotover

[state 5159, nothitby]
type = nothitby
trigger1 = 1
value = sca
time = 1

[state 5159, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 5159, changeanim2]
type = changeanim2
triggerall = numenemy > 0
triggerall = enemy(0),authorname = "otzkai"
triggerall = enemy(0),name = "miki sayaka"
trigger1 = enemy(0),anim = 3460
trigger1 = enemy(0),animelemtime(5) = 0
trigger2 = enemy(0),anim = 3460
trigger2 = enemy(0),animelemtime(10) = 0
trigger3 = enemy(0),anim = 3470
trigger3 = enemy(0),animelemtime(6) = 0
value = 5080

[state 5159, changeanim2]
type = changeanim2
triggerall = numenemy > 1
triggerall = enemy(1),authorname = "otzkai"
triggerall = enemy(1),name = "miki sayaka"
trigger1 = enemy(1),anim = 3460
trigger1 = enemy(1),animelemtime(5) = 0
trigger2 = enemy(1),anim = 3460
trigger2 = enemy(1),animelemtime(10) = 0
trigger3 = enemy(1),anim = 3470
trigger3 = enemy(1),animelemtime(6) = 0
value = 5080

[state 5159, changeanim2]
type = changeanim2
triggerall = numenemy > 2
triggerall = enemy(2),authorname = "otzkai"
triggerall = enemy(2),name = "miki sayaka"
trigger1 = enemy(2),anim = 3460
trigger1 = enemy(2),animelemtime(5) = 0
trigger2 = enemy(2),anim = 3460
trigger2 = enemy(2),animelemtime(10) = 0
trigger3 = enemy(2),anim = 3470
trigger3 = enemy(2),animelemtime(6) = 0
value = 5080

[state 5159, changeanim2]
type = changeanim2
triggerall = numenemy > 3
triggerall = enemy(3),authorname = "otzkai"
triggerall = enemy(3),name = "miki sayaka"
trigger1 = enemy(3),anim = 3460
trigger1 = enemy(3),animelemtime(5) = 0
trigger2 = enemy(3),anim = 3460
trigger2 = enemy(3),animelemtime(10) = 0
trigger3 = enemy(3),anim = 3470
trigger3 = enemy(3),animelemtime(6) = 0
value = 5080

[state 5159, changeanim]
type = changeanim
triggerall = anim = 5080
trigger1 = animtime > 12
value = 5110
;===========================================================================
;■勝利
[statedef 180]
type = s
velset = 0,0

[state 180, assertspecial]
type = assertspecial
trigger1 = 1
flag = roundnotover

[state 180, assertspecial]
type = assertspecial
trigger1 = var(27) = 1
flag = noautoturn

[state 180, posset]
type = posset
trigger1 = time = 0
y = 0

[state 180, changestate]
type = changestate
trigger1 = var(27) = 1
value = 680

[state 180, changestate]
type = changestate
trigger1 = matchover
value = 600

[state 180, changestate]
type = changestate
trigger1 = var(40) = 1
value = 660

[state 180, changestate]
type = changestate
trigger1 = var(3) = lifemax
value = 670

[state 180, changestate]
type = changestate
trigger1 = time = 0
value = 630
;---------------------------------------------------------------------------
;■勝利・決着（変身解除）
[statedef 600]
type = s
ctrl = 0
anim = 600

[state 600, assertspecial]
type = assertspecial
trigger1 = 1
flag = roundnotover

;ボイス関連先に格納しておく

[state 600, varset]
type = varset
trigger1 = time = 0
var(7) = 0;デフォルト

;□パートナー・鹿目まどか
[state 600, varset]
type = null
triggerall = numpartner
triggerall = partner,alive
triggerall = time = 1
triggerall = var(12) = 100
trigger1 = partner,var(5) = 270
trigger1 = var(7) := 78
trigger2 = partner,var(5) = 271
trigger2 = var(7) := 108
trigger3 = partner,var(5) = 272
trigger3 = var(7) := 150
trigger4 = partner,var(5) = 273
trigger4 = var(7) := 180

;□パートナー・まどか
[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 100
v = 5
range = 152,156

[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 100
trigger1 = numpartner
trigger1 = partner,var(3) < partner,lifemax*0.3
v = 5
range = 150,151

[state 600, varset]
type = null
trigger1 = var(5) = 150
trigger1 = var(6) := 132
trigger2 = var(5) = 151
trigger2 = var(6) := 174
trigger3 = var(5) = 152
trigger3 = var(6) := 90
trigger4 = var(5) = 153
trigger4 = var(6) := 90
trigger5 = var(5) = 154
trigger5 = var(6) := 96
trigger6 = var(5) = 155
trigger6 = var(6) := 198
trigger7 = var(5) = 156
trigger7 = var(6) := 258

;□パートナー・マミさん
[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 300
trigger1 = numpartner
trigger1 = partner,var(3) < partner,lifemax*0.3
v = 5
range = 350,352

[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 300
trigger1 = numpartner
trigger1 = partner,var(3) = [(partner,lifemax*0.3),(partner,lifemax*0.6)]
v = 5
range = 353,355

[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 300
trigger1 = numpartner
trigger1 = partner,var(3) >= (partner,lifemax*0.6)
v = 5
range = 356,367

[state 600, varset]
type = null
trigger1 = var(5) = 350
trigger1 = var(6) := 138
trigger2 = var(5) = 351
trigger2 = var(6) := 168
trigger3 = var(5) = 352
trigger3 = var(6) := 210
trigger4 = var(5) = 353
trigger4 = var(6) := 114
trigger5 = var(5) = 354
trigger5 = var(6) := 156
trigger6 = var(5) = 355
trigger6 = var(6) := 168
trigger7 = var(5) = 356
trigger7 = var(6) := 78
trigger8 = var(5) = 357
trigger8 = var(6) := 120
trigger9 = var(5) = 358
trigger9 = var(6) := 132
trigger10 = var(5) = 359
trigger10 = var(6) := 138
trigger11 = var(5) = 360
trigger11 = var(6) := 144
trigger12 = var(5) = 361
trigger12 = var(6) := 150
trigger13 = var(5) = 362
trigger13 = var(6) := 150
trigger14 = var(5) = 363
trigger14 = var(6) := 156
trigger15 = var(5) = 364
trigger15 = var(6) := 162
trigger16 = var(5) = 365
trigger16 = var(6) := 180
trigger17 = var(5) = 366
trigger17 = var(6) := 234
trigger18 = var(5) = 367
trigger18 = var(6) := 246

;□パートナー・杏子
[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 400
v = 5
range = 450,454

[state 600, varset]
type = null
trigger1 = var(5) = 450
trigger1 = var(6) := 90
trigger2 = var(5) = 451
trigger2 = var(6) := 168
trigger3 = var(5) = 452
trigger3 = var(6) := 174
trigger4 = var(5) = 453
trigger4 = var(6) := 186
trigger5 = var(5) = 454
trigger5 = var(6) := 186

;□パートナー・ほむら
[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 500
v = 5
range = 550,556

[state 600, varset]
type = null
trigger1 = var(5) = 550
trigger1 = var(6) := 102
trigger2 = var(5) = 551
trigger2 = var(6) := 114
trigger3 = var(5) = 552
trigger3 = var(6) := 132
trigger4 = var(5) = 553
trigger4 = var(6) := 132
trigger5 = var(5) = 554
trigger5 = var(6) := 144
trigger6 = var(5) = 555
trigger6 = var(6) := 192
trigger7 = var(5) = 556
trigger7 = var(6) := 222

;□ノーマルパートナー
[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 0 || var(12) = 900
v = 5
range = 80,85

[state 600, varset]
type = null
trigger1 = var(5) = 80
trigger1 = var(6) := 114
trigger2 = var(5) = 81
trigger2 = var(6) := 120
trigger3 = var(5) = 82
trigger3 = var(6) := 126
trigger4 = var(5) = 83
trigger4 = var(6) := 138
trigger5 = var(5) = 84
trigger5 = var(6) := 174
trigger6 = var(5) = 85
trigger6 = var(6) := 198

;□パートナーなし
[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = numpartner = 0
trigger2 = numpartner
trigger2 = partner,alive = 0
v = 5
range = 15,19

[state 600, varset]
type = null
trigger1 = var(5) = 15
trigger1 = var(6) := 84
trigger2 = var(5) = 16
trigger2 = var(6) := 96
trigger3 = var(5) = 17
trigger3 = var(6) := 144
trigger4 = var(5) = 18
trigger4 = var(6) := 150
trigger5 = var(5) = 19
trigger5 = var(6) := 234

;□ヤミ覚醒しちゃったとき
[state 600, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(40) != 0
v = 5
range = 1,2

[state 600, varset]
type = null
triggerall = time = 0
trigger1 = var(5) = 1
trigger1 = var(6) := 126
trigger2 = var(5) = 2
trigger2 = var(6) := 72
trigger3 = var(5) = 3
trigger3 = var(6) := 180

;ここまで

[state 600, helper]
type = helper
trigger1 = time = 0
name = "magia release"
id = 10600
stateno = 10000
postype = p1
pos = 0,0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[state 600, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
value = 4,1

[state 600, veladd]
type = veladd
trigger1 = animelemtime(2) > 0
y = -0.005*const(size.yscale)

[state 600, changestate]
type = changestate
trigger1 = animtime = 0
value = 610
;---------------------------------------------------------------------------
[statedef 610]
type = a
physics = n
anim = 610

[state 610, assertspecial]
type = assertspecial
trigger1 = 1
flag = roundnotover

[state 610, veladd]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 610, changestate]
type = changestate
trigger1 = pos y >= -1
value = 620+5*(var(40)=0)
;---------------------------------------------------------------------------
[statedef 620]
type = s
physics = s
ctrl = 0
anim = 620

[state 620, assertspecial]
type = assertspecial
trigger1 = time < 86+120+var(6)+var(7)-(var(12)=100)*60
flag = roundnotover

[state 620, playsnd]
type = playsnd
trigger1 = time = 86+var(7)-(var(12)=100)*50
value = 10,1+(var(40)!=1)*var(5)
channel = 0

[state 620, velset]
type = velset
trigger1 = time = 0
y = 0

[state 620, posset]
type = posset
trigger1 = time = 0
y = 0
;---------------------------------------------------------------------------
[statedef 625]
type = s
physics = s
ctrl = 0
anim = 625

[state 625, assertspecial]
type = assertspecial
trigger1 = time < 20+120+var(6)+var(7)+(var(12)=300)*150
flag = roundnotover

[state 625, playsnd]
type = playsnd
trigger1 = time = 20+var(7)+(var(12)=300)*150
value = 10,var(5)
channel = 0

[state 625, velset]
type = velset
trigger1 = time = 0
y = 0

[state 625, posset]
type = posset
trigger1 = time = 0
y = 0
;---------------------------------------------------------------------------
;■勝利１（ハイテンション）
[statedef 630]
ctrl = 0

[state 630, assertspecial]
type = assertspecial
trigger1 = time < 20+120+var(6)
flag = roundnotover

[state 630, varset]
type = varset
trigger1 = matchno = 1
trigger1 = roundno = 1
trigger1 = teamside != 2
trigger1 = numenemy > 0
trigger1 = enemy,ishometeam = 1
var(7) = 1

;□パートナー・まどか・絆イベント
[state 630, changestate]
type = changestate
triggerall = numpartner
triggerall = partner,alive
triggerall = time = 0
triggerall = var(7) != 1
triggerall = var(12) = 100
trigger1 = var(36) = 1
trigger2 = partner,var(36) = 1
value = 631+floor(random/250);;0-3

;□パートナー・マミ・絆イベント
[state 630, changestate]
type = changestate
triggerall = numpartner
triggerall = partner,alive
triggerall = time = 0
triggerall = var(7) != 1
triggerall = var(12) = 300
trigger1 = var(36) = 1
trigger2 = partner,var(36) = 1
value = 650+(random<500)

[state 630, changeanim]
type = changeanim
trigger1 = time = 0
value = 630

;□パートナー・まどか
[state 630, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 100
v = 5
range = 152,156

[state 630, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 100
trigger1 = numpartner
trigger1 = partner,var(3) < partner,lifemax*0.3
v = 5
range = 150,151

;□パートナー・マミさん
[state 630, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 300
trigger1 = numpartner
trigger1 = partner,var(3) < partner,lifemax*0.3
v = 5
range = 350,352

[state 630, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 300
trigger1 = numpartner
trigger1 = partner,var(3) = [(partner,lifemax*0.3),(partner,lifemax*0.6)]
v = 5
range = 353,355

[state 630, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 300
trigger1 = numpartner
trigger1 = partner,var(3) >= (partner,lifemax*0.6)
v = 5
range = 356,367

;□パートナー・杏子
[state 630, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 400
v = 5
range = 450,454

[state 630, varset]
type = null
trigger1 = var(5) = 450
trigger1 = var(6) := 90
trigger2 = var(5) = 451
trigger2 = var(6) := 168
trigger3 = var(5) = 452
trigger3 = var(6) := 174
trigger4 = var(5) = 453
trigger4 = var(6) := 186
trigger5 = var(5) = 454
trigger5 = var(6) := 186

;□パートナー・ほむら
[state 630, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 500
v = 5
range = 550,556

[state 630, varset]
type = null
trigger1 = var(5) = 550
trigger1 = var(6) := 102
trigger2 = var(5) = 551
trigger2 = var(6) := 114
trigger3 = var(5) = 552
trigger3 = var(6) := 132
trigger4 = var(5) = 553
trigger4 = var(6) := 132
trigger5 = var(5) = 554
trigger5 = var(6) := 144
trigger6 = var(5) = 555
trigger6 = var(6) := 192
trigger7 = var(5) = 556
trigger7 = var(6) := 222

;□ノーマルパートナー
[state 630, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = var(12) = 0 || var(12) = 900
v = 5
range = 80,85

[state 630, varset]
type = null
trigger1 = var(5) = 80
trigger1 = var(6) := 114
trigger2 = var(5) = 81
trigger2 = var(6) := 120
trigger3 = var(5) = 82
trigger3 = var(6) := 126
trigger4 = var(5) = 83
trigger4 = var(6) := 138
trigger5 = var(5) = 84
trigger5 = var(6) := 174
trigger6 = var(5) = 85
trigger6 = var(6) := 198

;□パートナーなし
[state 630, varrandom]
type = varrandom
triggerall = time = 0
trigger1 = numpartner = 0
trigger2 = numpartner
trigger2 = partner,alive = 0
v = 5
range = 10,14

[state 600, varset]
type = null
trigger1 = var(5) = 10
trigger1 = var(6) := 60
trigger2 = var(5) = 11
trigger2 = var(6) := 90
trigger3 = var(5) = 12
trigger3 = var(6) := 114
trigger4 = var(5) = 13
trigger4 = var(6) := 144
trigger5 = var(5) = 14
trigger5 = var(6) := 240

[state 630, varset]
type = null
trigger1 = var(7) = 1
trigger1 = var(6) := 174

[state 630, playsnd]
type = playsnd
trigger1 = time = 20
value = 10,ifelse(var(7)=1,0,var(5))
channel = 0
;===========================================================================
;■絆イベント・まどか＆さやか・ぐぬぬ編
[statedef 631]
ctrl = 0

[state 631, assertspecial]
type = assertspecial
trigger1 = time < 450
flag = roundnotover

[state 631, changeanim]
type = changeanim
trigger1 = time = 138+20
value = 630

[state 631, playsnd]
type = playsnd
trigger1 = time = 138+20+5
value = 10,190
channel = 0
;---------------------------------------------------------------------------
;■絆イベント・まどか＆さやか・ダメな子編
[statedef 632]
ctrl = 0

[state 632, assertspecial]
type = assertspecial
trigger1 = time < 500
flag = roundnotover

[state 632, changeanim]
type = changeanim
trigger1 = time = 240+20
value = 630

[state 632, playsnd]
type = playsnd
trigger1 = time = 240+20+5
value = 10,191
channel = 0
;---------------------------------------------------------------------------
;■絆イベント・まどか＆さやか・無理しないで編
[statedef 633]
ctrl = 0

[state 633, assertspecial]
type = assertspecial
trigger1 = time < 600
flag = roundnotover

[state 633, changeanim]
type = changeanim
trigger1 = time = 228
value = 630

[state 633, playsnd]
type = playsnd
trigger1 = time = 228+5
value = 10,192
channel = 0
;---------------------------------------------------------------------------
;■絆イベント・まどか＆さやか・大好き編
[statedef 634]
ctrl = 0
anim = 630

[state 634, assertspecial]
type = assertspecial
trigger1 = time < 450
flag = roundnotover

[state 634, playsnd]
type = playsnd
trigger1 = time = 0+20
value = 10,193
channel = 0
;===========================================================================
;■絆イベント・さやか＆マミ・必殺技伝授編
[statedef 650]
ctrl = 0

[state 650, assertspecial]
type = assertspecial
trigger1 = time < 366+120+var(6)
flag = roundnotover

[state 650, changeanim]
type = changeanim
trigger1 = time = 300;366
value = 630

[state 650, varrandom]
type = varrandom
trigger1 = time = 0
v = 5
range = 390,391

[state 650, varset]
type = null
trigger1 = var(5) = 390
trigger1 = var(6) := 186
trigger2 = var(5) = 391
trigger2 = var(6) := 240

[state 650, playsnd]
type = playsnd
trigger1 = time = 366+5
value = 10,var(5)
channel = 0
;---------------------------------------------------------------------------
;■絆イベント・さやか＆マミ・大好き編
[statedef 651]
ctrl = 0
anim = 630

[state 651, assertspecial]
type = assertspecial
trigger1 = time < 300
flag = roundnotover

[state 651, playsnd]
type = playsnd
trigger1 = time = 20
value = 10,392
channel = 0
;===========================================================================
;■勝利２（ローテンション）
[statedef 660]
ctrl = 0
anim = 660

[state 660, assertspecial]
type = assertspecial
trigger1 = time < 200
flag = roundnotover

[state 660, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(3) = 0
x = -floor(const(size.xscale)*10)
;---------------------------------------------------------------------------
;■勝利・パーフェクト
[statedef 670]
ctrl = 0
anim = 670+(facing=-1)

[state 670, assertspecial]
type = assertspecial
trigger1 = time < 20+120+var(6)
flag = roundnotover

[state 670, varset]
type = varset
trigger1 = matchno = 1
trigger1 = roundno = 1
trigger1 = teamside != 2
trigger1 = numenemy > 0
trigger1 = enemy,ishometeam = 1
var(7) = 1

[state 670, varrandom]
type = varrandom
trigger1 = time = 0
v = 5
range = 40,42

[state 670, varset]
type = null
trigger1 = var(5) = 40
trigger1 = var(6) := 138
trigger2 = var(5) = 41
trigger2 = var(6) := 156
trigger3 = var(5) = 42
trigger3 = var(6) := 270

[state 670, varset]
type = null
trigger1 = var(7) = 1
trigger1 = var(6) := 174

[state 670, playsnd]
type = playsnd
trigger1 = time = 20
value = 10,ifelse(var(7)=1,0,var(5))
channel = 0

[state 670, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = -floor(const(size.xscale)*10)
;---------------------------------------------------------------------------
;■惨殺勝利
[statedef 680]
ctrl = 0

[state 680, assertspecial]
type = assertspecial
trigger1 = 1
flag = roundnotover
flag2 = noautoturn

[state 680, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 680, changeanim]
type = changeanim
trigger1 = 1
elem = 11
value = 3470
ignorehitpause = 1

[state 680, playsnd]
type = playsnd
trigger1 = time = 1
value = 9,411
channel = 0

[state 680, changestate]
type = changestate
trigger1 = time = 1
value = 681
;---------------------------------------------------------------------------
;■惨殺勝利・狂い斬り
[statedef 681]
type = s
movetype = a
physics = s
anim = 3460
ctrl = 0

[state 681, assertspecial]
type = assertspecial
trigger1 = 1
flag = roundnotover
flag2 = noautoturn

[state 681, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 681, varadd]
type = varadd
trigger1 = time = 1
var(7) = 1
persistent = 0

[state 681, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 7,9

[state 681, varrandom]
type = varrandom
trigger1 = 1
v = 6
range = 0,8

[state 681, playsnd]
type = playsnd
trigger1 = animelemtime(3) = 0
trigger2 = animelemtime(9) = 0
value = 0,5

[state 681, playsnd]
type = playsnd
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(10) = 0
value = 1,var(5)

[state 681, explod]
type = explod
triggerall = var(35) != 0
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(10) = 0
anim = 24000
id = 24000
pos = ifelse(frontedgedist<50,floor(const(size.xscale)*35),floor(const(size.xscale)*75)),0
postype = p1
random = 30, 0
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 0

[state 681, envshake]
type = envshake
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(10) = 0
time = 20
freq = 60
ampl = -4
phase = 4

[state 681, changestate]
type = changestate
trigger1 = animtime = 0
value = ifelse(var(7)>=4,682,681)
;---------------------------------------------------------------------------
;■惨殺勝利・狂い斬りフィニッシュ
[statedef 682]
type = s
movetype = a
physics = s
anim = 3470
ctrl = 0

[state 682, assertspecial]
type = assertspecial
trigger1 = time < 300
flag = roundnotover

[state 682, assertspecial]
type = assertspecial
trigger1 = 1
flag = noautoturn

[state 682, changeanim]
type = changeanim
trigger1 = time < 10
value = 3470
ignorehitpause = 1

[state 682, changeanim]
type = changeanim
trigger1 = time > 200
trigger1 = animelemtime(11) > 0
elem = 11
value = 3470
ignorehitpause = 1

[state 682, palfx]
type = palfx
trigger1 = 1
time = 1
add = -200,-200,-200
ignorehitpause = 1

[state 682, playsnd]
type = playsnd
trigger1 = animelemtime(5) = 30
value = 0,6

[state 682, playsnd]
type = playsnd
trigger1 = animelemtime(6) = 0
value = 1,10

[state 682, envshake]
type = envshake
trigger1 = animelemtime(6) = 0
time = 60
freq = 70
ampl = -4
phase = 4

[state 682, explod]
type = explod
triggerall = var(35) != 0
trigger1 = animelemtime(6) = 0
anim = 24000
id = 24000
pos = ifelse(frontedgedist<50,floor(const(size.xscale)*35),floor(const(size.xscale)*75)),0
postype = p1
random = 30,0
facing = 1
bindtime = -1
removetime = -2
scale = const(size.xscale),const(size.yscale)
sprpriority = -1
ownpal = 0
;===========================================================================
;■イントロ
[statedef 190]
type = s
ctrl = 0
anim = 1

[state 190, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

;□vs鹿目まどか
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 100
value = 8100

[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 110
value = 8110

;□vs巴マミ
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 300
trigger2 = var(11) = 310
value = 8300

;□vs佐倉杏子
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 400
value = 8400+(random<500)

;□vs暁美ほむら
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 500
value = 8500+(random<500)

;□vs暁美ほむら（フレンズ）
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 590
value = 8590

;□vs沙耶
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 800
value = 8800

;□vs草加雅人
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 900
value = 8900

;□パートナー鹿目まどか
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 0
trigger1 = var(12) = 100
value = 8130+floor(random/125);;0-7

;□パートナー巴マミ
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 0
trigger1 = var(12) = 300
value = 8330+floor(random/200);;0-4

;□パートナー佐倉杏子
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 0
trigger1 = var(12) = 400
value = 8430+floor(random/200);;0-4

;□パートナー暁美ほむら
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 0
trigger1 = var(12) = 500
value = 8530+(random<500)

;□パートナー草加雅人
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 0
trigger1 = var(12) = 900
value = 8930+(random<500)

;□未確認パートナーあり
[state 190, changestate]
type = changestate
trigger1 = time = 1
trigger1 = var(11) = 0
trigger1 = numpartner
value = 870+floor(random/200);;0-4

;□汎用
[state 190, varrandom]
type = varrandom
trigger1 = 1
v = 5
range = 0,13

[state 190, changestate]
type = changestate
trigger1 = time = 1
value = 800+var(5)
;===========================================================================
;■イントロ＃０『魔法少女さやかちゃんの登場だよ！』
[statedef 800]
type = s
anim = 810

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
value = 811

[state 800, changeanim]
type = changeanim
trigger1 = time = 80
trigger2 = time = 250
value = 810

[state 800, changeanim]
type = changeanim
trigger1 = time = 100
value = 812

[state 800, changestate]
type = changestate
trigger1 = time = 270
value = 820
;===========================================================================
;■イントロ＃１『やってやりますか！』
[statedef 801]
type = s
anim = 810

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
value = 811

[state 801, changeanim]
type = changeanim
trigger1 = time = 90
trigger2 = time = 230
value = 810

[state 801, changeanim]
type = changeanim
trigger1 = time = 125
value = 812

[state 801, changestate]
type = changestate
trigger1 = time = 270
value = 820
;===========================================================================
;■イントロ＃２『お前なんかに何が分かる！』
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
trigger1 = time = 140
value = 800

[state 802, changestate]
type = changestate
trigger1 = time = 165
value = 820
;===========================================================================
;■イントロ＃３『これは・・私の戦いなんだ！』
[statedef 803]
type = s
anim = 800

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
trigger2 = time = 120
value = 802

[state 803, changeanim]
type = changeanim
trigger1 = time = 90
value = 801

[state 803, changeanim]
type = changeanim
trigger1 = time = 100
trigger2 = time = 200
value = 800

[state 803, changestate]
type = changestate
trigger1 = time = 225
value = 820
;===========================================================================
;■イントロ＃４『あたしだけは自分のために魔法を使ったりしない！』
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
value = 802

[state 804, changeanim]
type = changeanim
trigger1 = time = 260
value = 800

[state 804, changestate]
type = changestate
trigger1 = time = 285
value = 820
;===========================================================================
;■イントロ＃５『もし魔女より悪い人間が居れば、私は戦うよ！』
[statedef 805]
type = s
anim = 800

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
trigger2 = time = 200
value = 802

[state 805, changeanim]
type = changeanim
trigger1 = time = 170
value = 801

[state 805, changeanim]
type = changeanim
trigger1 = time = 180
trigger2 = time = 280
value = 800

[state 805, changestate]
type = changestate
trigger1 = time = 305
value = 820
;===========================================================================
;■イントロ＃６『悪いけど、やらせてもらうよ！』
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
trigger2 = time = 130
value = 802

[state 806, changeanim]
type = changeanim
trigger1 = time = 110
trigger2 = time = 205
value = 800

[state 806, changestate]
type = changestate
trigger1 = time = 240
value = 820
;===========================================================================
;■イントロ＃７『あたしも強くなりたいんだ！』
[statedef 807]
type = s
anim = 800

[state 807, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 807, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,57
channel = 0

[state 807, changeanim]
type = changeanim
trigger1 = time = 60
value = 802

[state 807, changeanim]
type = changeanim
trigger1 = time = 170
value = 800

[state 807, changestate]
type = changestate
trigger1 = time = 200
value = 820
;===========================================================================
;■イントロ＃８『あたしの出番ね！』
[statedef 808]
type = s
anim = 810

[state 808, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 808, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,58
channel = 0

[state 808, changeanim]
type = changeanim
trigger1 = time = 60
value = 812

[state 808, changeanim]
type = changeanim
trigger1 = time = 135
value = 811

[state 808, changeanim]
type = changeanim
trigger1 = time = 145
value = 810

[state 808, changestate]
type = changestate
trigger1 = time = 160
value = 820
;===========================================================================
;■イントロ＃９『恋する乙女は強いのよ？』
[statedef 809]
type = s
anim = 810

[state 809, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 809, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,59
channel = 0

[state 809, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 190
value = 812

[state 809, changeanim]
type = changeanim
trigger1 = time = 183
trigger2 = time = 280
value = 810

[state 809, changestate]
type = changestate
trigger1 = time = 300
value = 820
;===========================================================================
;■イントロ＃１０『集中よ・・集中！』
[statedef 810]
type = s
anim = 800

[state 810, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 810, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,60
channel = 0

[state 810, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 130
value = 802

[state 810, changeanim]
type = changeanim
trigger1 = time = 110
trigger2 = time = 180
value = 800

[state 810, changestate]
type = changestate
trigger1 = time = 200
value = 820
;===========================================================================
;■イントロ＃１１『魔法少女さやかちゃん参上！』
[statedef 811]
type = s
anim = 810

[state 811, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 811, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,61
channel = 0

[state 811, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 160
value = 812

[state 811, changeanim]
type = changeanim
trigger1 = time = 140
trigger2 = time = 220
value = 810

[state 811, changeanim]
type = changeanim
trigger1 = time = 200
value = 811

[state 811, changestate]
type = changestate
trigger1 = time = 250
value = 820
;===========================================================================
;■イントロ＃１２『ハイハイさやかちゃんにお任せね』
[statedef 812]
type = s
anim = 810

[state 812, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 812, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,62
channel = 0

[state 812, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 120
value = 812

[state 812, changeanim]
type = changeanim
trigger1 = time = 95
trigger2 = time = 200
value = 810

[state 812, changestate]
type = changestate
trigger1 = time = 230
value = 820
;===========================================================================
;■イントロ＃１３『ぱわーあっぷしたさやかちゃん』
[statedef 813]
type = s
anim = 810

[state 813, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 813, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,63
channel = 0

[state 813, changeanim]
type = changeanim
trigger1 = time = 60
value = 812

[state 813, changeanim]
type = changeanim
trigger1 = time = 300
value = 811

[state 813, changeanim]
type = changeanim
trigger1 = time = 310
value = 810

[state 813, changestate]
type = changestate
trigger1 = time = 330
value = 820
;===========================================================================
;■イントロ＃ｅｘ『まかせて！』（サイマルモード）
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
value = 812

[state 870, changeanim]
type = changeanim
trigger1 = time = 105
value = 810

[state 870, changestate]
type = changestate
trigger1 = time = 110
value = 820
;===========================================================================
;■イントロ＃ｅｘ『お互い頑張ろうね！』（サイマルモード）
[statedef 871]
type = s
anim = 810

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
value = 812

[state 871, changeanim]
type = changeanim
trigger1 = time = 125
value = 810

[state 871, changestate]
type = changestate
trigger1 = time = 135
value = 820
;===========================================================================
;■イントロ＃ｅｘ『さーて、いっちょやっちゃいますか！』（サイマルモード）
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
value = 811

[state 872, changeanim]
type = changeanim
trigger1 = time = 130
trigger2 = time = 180
value = 812

[state 872, changeanim]
type = changeanim
trigger1 = time = 100
trigger2 = time = 160
trigger3 = time = 240
value = 810

[state 872, changestate]
type = changestate
trigger1 = time = 260
value = 820
;===========================================================================
;■イントロ＃ｅｘ『どっからでもかかってきなさいっ！』（サイマルモード）
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
trigger1 = time = 165
value = 810

[state 873, changestate]
type = changestate
trigger1 = time = 180
value = 820
;===========================================================================
;■イントロ＃ｅｘ『殺る気満々って感じ～・・？』（サイマルモード）
[statedef 874]
type = s
anim = 800

[state 874, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 874, playsnd]
type = playsnd
trigger1 = time = 160
value = 10,74
channel = 0

[state 874, changeanim]
type = changeanim
trigger1 = time = 160
value = 802

[state 874, changeanim]
type = changeanim
trigger1 = time = 270
value = 800

[state 874, changestate]
type = changestate
trigger1 = time = 300
value = 820
;===========================================================================
;■イントロ＃ｅｘ『特訓で叩きのめすから』（vs鹿目まどか）
[statedef 8100]
type = s
anim = 810

[state 8100, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8100, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,100
channel = 0

[state 8100, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 160
value = 812

[state 8100, changeanim]
type = changeanim
trigger1 = time = 130
value = 811

[state 8100, changeanim]
type = changeanim
trigger1 = time = 150
trigger2 = time = 240
value = 810

[state 8100, playsnd]
type = playsnd
trigger1 = time = 500
value = 10,101
channel = 0

[state 8100, changeanim]
type = changeanim
trigger1 = time = 500
value = 870

[state 8100, changeanim];ゆっくりする
type = changeanim
trigger1 = time > 945
value = 822

[state 8100, changestate]
type = changestate
trigger1 = time = 950
value = 820
;===========================================================================
;■イントロ＃ｅｘ『やるしかないよね』（vs鹿目まどか）
[statedef 8110]
type = s
anim = 800

[state 8110, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8110, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,103
channel = 0

[state 8110, changeanim]
type = changeanim
trigger1 = time = 60
value = 802

[state 8110, changeanim]
type = changeanim
trigger1 = time = 138
value = 800

[state 8110, changestate]
type = changestate
trigger1 = time = 170
value = 820
;===========================================================================
;■イントロ＃ｅｘ『無理はしないでよ』（パートナー：鹿目まどか）
[statedef 8130]
type = s
anim = 810

[state 8130, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8130, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,130
channel = 0

[state 8130, changeanim]
type = changeanim
trigger1 = time = 60
value = 812

[state 8130, changeanim]
type = changeanim
trigger1 = time = 120
value = 810

[state 8130, changestate]
type = changestate
trigger1 = time = 150
value = 820
;===========================================================================
;■イントロ＃ｅｘ『よっしゃ、ガンバロー☆』（パートナー：鹿目まどか）
[statedef 8131]
type = s
anim = 810

[state 8131, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8131, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,131
channel = 0

[state 8131, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 110
value = 812

[state 8131, changeanim]
type = changeanim
trigger1 = time = 150
value = 811

[state 8131, changeanim]
type = changeanim
trigger1 = time = 95
trigger2 = time = 165
value = 810

[state 8131, changestate]
type = changestate
trigger1 = time = 190
value = 820
;===========================================================================
;■イントロ＃ｅｘ『まどか、頼んだよ！』（パートナー：鹿目まどか）
[statedef 8132]
type = s
anim = 810

[state 8132, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8132, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,132
channel = 0

[state 8132, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 105
value = 812

[state 8132, changeanim]
type = changeanim
trigger1 = time = 95
trigger2 = time = 155
value = 810

[state 8132, changestate]
type = changestate
trigger1 = time = 170
value = 820
;===========================================================================
;■イントロ＃ｅｘ『油断しないようにね』（パートナー：鹿目まどか）
[statedef 8133]
type = s
anim = 800

[state 8133, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8133, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,133
channel = 0

[state 8133, changeanim]
type = changeanim
trigger1 = time = 60
value = 802

[state 8133, changeanim]
type = changeanim
trigger1 = time = 135
value = 800

[state 8133, changestate]
type = changestate
trigger1 = time = 160
value = 820
;===========================================================================
;■イントロ＃ｅｘ『大丈夫、いけるいける』（パートナー：鹿目まどか）
[statedef 8134]
type = s
anim = 810

[state 8134, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8134, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,134
channel = 0

[state 8134, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 110
value = 812

[state 8134, changeanim]
type = changeanim
trigger1 = time = 105
trigger2 = time = 170
value = 810

[state 8134, changestate]
type = changestate
trigger1 = time = 190
value = 820
;===========================================================================
;■イントロ＃ｅｘ『何とかなるって、きっと』（パートナー：鹿目まどか）
[statedef 8135]
type = s
anim = 810

[state 8135, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8135, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,135
channel = 0

[state 8135, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 85
value = 812

[state 8135, changeanim]
type = changeanim
trigger1 = time = 75
trigger2 = time = 180
value = 810

[state 8135, changestate]
type = changestate
trigger1 = time = 220
value = 820
;===========================================================================
;■イントロ＃ｅｘ『親友タッグの力』（パートナー：鹿目まどか）
[statedef 8136]
type = s
anim = 810

[state 8136, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8136, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,136
channel = 0

[state 8136, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 135
value = 812

[state 8136, changeanim]
type = changeanim
trigger1 = time = 125
trigger2 = time = 195
value = 810

[state 8136, changestate]
type = changestate
trigger1 = time = 220
value = 820
;===========================================================================
;■イントロ＃ｅｘ『絶対に守るよ』（パートナー：鹿目まどか）
[statedef 8137]
type = s
anim = 810

[state 8137, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8137, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,137
channel = 0

[state 8137, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 145
value = 812

[state 8137, changeanim]
type = changeanim
trigger1 = time = 120
trigger2 = time = 235
value = 810

[state 8137, changestate]
type = changestate
trigger1 = time = 255
value = 820
;===========================================================================
;■イントロ＃ｅｘ『マミさん、お願いします！』（vs巴マミ）
[statedef 8300]
type = s
anim = 800

[state 8300, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8300, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,300
channel = 0

[state 8300, changeanim]
type = changeanim
trigger1 = time = 60
trigger2 = time = 110
value = 802

[state 8300, changeanim]
type = changeanim
trigger1 = time = 80
value = 801

[state 8300, changeanim]
type = changeanim
trigger1 = time = 95
trigger2 = time = 160
value = 800

[state 8300, changestate]
type = changestate
trigger1 = time = 200
value = 820
;===========================================================================
;■イントロ＃ｅｘ『絶対に勝ちましょうね！』（パートナー：巴マミ）
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
value = 812

[state 8330, changeanim]
type = changeanim
trigger1 = time = 150
value = 810

[state 8330, changestate]
type = changestate
trigger1 = time = 160
value = 820
;===========================================================================
;■イントロ＃ｅｘ『マミさん、ドーンと期待して！』（パートナー：巴マミ）
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
trigger2 = time = 130
value = 812

[state 8331, changeanim]
type = changeanim
trigger1 = time = 110
value = 811

[state 8331, changeanim]
type = changeanim
trigger1 = time = 90
trigger2 = time = 180
value = 810

[state 8331, changestate]
type = changestate
trigger1 = time = 220
value = 820
;===========================================================================
;■イントロ＃ｅｘ『あたしが仕留めます！』（パートナー：巴マミ）
[statedef 8332]
type = s
anim = 810

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
trigger2 = time = 130
value = 812

[state 8332, changeanim]
type = changeanim
trigger1 = time = 110
trigger2 = time = 190
value = 810

[state 8332, changestate]
type = changestate
trigger1 = time = 210
value = 820
;===========================================================================
;■イントロ＃ｅｘ『あたしが囮になります！』（パートナー：巴マミ）
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
trigger2 = time = 110
value = 802

[state 8333, changeanim]
type = changeanim
trigger1 = time = 90
trigger2 = time = 190
value = 800

[state 8333, changestate]
type = changestate
trigger1 = time = 230
value = 820
;===========================================================================
;■イントロ＃ｅｘ『今日もパトロール頑張りましょう！』（パートナー：巴マミ）
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
trigger2 = time = 100
trigger3 = time = 165
value = 812

[state 8334, changeanim]
type = changeanim
trigger1 = time = 90
trigger2 = time = 160
trigger3 = time = 230
value = 810

[state 8334, changestate]
type = changestate
trigger1 = time = 270
value = 820
;===========================================================================
;■イントロ＃ｅｘ『あたしをいつまでも新人だと思わない事ね！』（vs佐倉杏子）
[statedef 8400]
type = s
anim = 800

[state 8400, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8400, playsnd]
type = playsnd
trigger1 = time = 60+90
value = 10,400
channel = 0

[state 8400, changeanim]
type = changeanim
trigger1 = time = 60+90
value = 802

[state 8400, changeanim]
type = changeanim
trigger1 = time = 230+90
value = 800

[state 8400, changestate]
type = changestate
trigger1 = time = 250+90
value = 820
;===========================================================================
;■イントロ＃ｅｘ『アンタ結局何が言いたいわけ？』（vs佐倉杏子）
[statedef 8401]
type = s
anim = 800

[state 8401, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8401, playsnd]
type = playsnd
trigger1 = time = 60+90
value = 10,401
channel = 0

[state 8401, changeanim]
type = changeanim
trigger1 = time = 60+90
trigger2 = time = 120+90
value = 802

[state 8401, changeanim]
type = changeanim
trigger1 = time = 90+90
trigger2 = time = 225+90
value = 800

[state 8401, changestate]
type = changestate
trigger1 = time = 250+90
value = 820
;===========================================================================
;■イントロ＃ｅｘ『杏子、頼んだよ！』（パートナー：佐倉杏子）
[statedef 8430]
type = s
anim = 810

[state 8430, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8430, playsnd]
type = playsnd
trigger1 = time = 80
value = 10,430
channel = 0

[state 8430, changeanim]
type = changeanim
trigger1 = time = 80
trigger2 = time = 125
value = 812

[state 8430, changeanim]
type = changeanim
trigger1 = time = 115
trigger2 = time = 175
value = 810

[state 8430, changestate]
type = changestate
trigger1 = time = 190
value = 820
;===========================================================================
;■イントロ＃ｅｘ『いいんじゃなーい？！』（パートナー：佐倉杏子）
[statedef 8431]
type = s
anim = 810

[state 8431, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8431, playsnd]
type = playsnd
trigger1 = time = 120
value = 10,431
channel = 0

[state 8431, changeanim]
type = changeanim
trigger1 = time = 120
value = 812

[state 8431, changeanim]
type = changeanim
trigger1 = time = 160
value = 811

[state 8431, changeanim]
type = changeanim
trigger1 = time = 200
value = 810

[state 8431, changestate]
type = changestate
trigger1 = time = 220
value = 820
;===========================================================================
;■イントロ＃ｅｘ『よしきたー！』（パートナー：佐倉杏子）
[statedef 8432]
type = s
anim = 810

[state 8432, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8432, playsnd]
type = playsnd
trigger1 = time = 120
value = 10,432
channel = 0

[state 8432, changeanim]
type = changeanim
trigger1 = time = 120
value = 812

[state 8432, changeanim]
type = changeanim
trigger1 = time = 160
value = 811

[state 8432, changeanim]
type = changeanim
trigger1 = time = 200
value = 810

[state 8432, changestate]
type = changestate
trigger1 = time = 220
value = 820
;===========================================================================
;■イントロ＃ｅｘ『いっちょやりますかー！』（パートナー：佐倉杏子）
[statedef 8433]
type = s
anim = 810

[state 8433, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8433, playsnd]
type = playsnd
trigger1 = time = 100
value = 10,433
channel = 0

[state 8433, changeanim]
type = changeanim
trigger1 = time = 100
value = 812

[state 8433, changeanim]
type = changeanim
trigger1 = time = 170
value = 811

[state 8433, changeanim]
type = changeanim
trigger1 = time = 195
value = 810

[state 8433, changestate]
type = changestate
trigger1 = time = 220
value = 820
;===========================================================================
;■イントロ＃ｅｘ『いつでもオッケー！』（パートナー：佐倉杏子）
[statedef 8434]
type = s
anim = 810

[state 8434, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8434, playsnd]
type = playsnd
trigger1 = time = 100
value = 10,434
channel = 0

[state 8434, changeanim]
type = changeanim
trigger1 = time = 100
value = 812

[state 8434, changeanim]
type = changeanim
trigger1 = time = 140
value = 811

[state 8434, changeanim]
type = changeanim
trigger1 = time = 160
value = 810

[state 8434, changestate]
type = changestate
trigger1 = time = 200
value = 820
;===========================================================================
;■イントロ＃ｅｘ『今度は何を企んでるのさ！』（vs暁美ほむら）
[statedef 8500]
type = s
anim = 850

[state 8500, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8500, playsnd]
type = playsnd
trigger1 = time = 100
value = 10,500
channel = 0

[state 8500, changeanim]
type = changeanim
trigger1 = time = 80
value = 851

[state 8500, changeanim]
type = changeanim
trigger1 = time = 85
trigger2 = time = 210
value = 852

[state 8500, changeanim]
type = changeanim
trigger1 = time = 100
value = 853

[state 8500, changeanim]
type = changeanim
trigger1 = time = 240
value = 855

[state 8500, changestate]
type = changestate
trigger1 = anim = 855
trigger1 = animtime = 0
value = 820
;===========================================================================
;■イントロ＃ｅｘ『遅かったじゃない、転校生』（vs暁美ほむら）
[statedef 8501]
type = s
anim = 850

[state 8501, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8501, playsnd]
type = playsnd
trigger1 = time = 30
value = 10,501
channel = 0

[state 8501, changeanim]
type = changeanim
trigger1 = time = 80
value = 851

[state 8501, changeanim]
type = changeanim
trigger1 = time = 85
trigger2 = time = 155
trigger3 = time = 195
value = 852

[state 8501, changeanim]
type = changeanim
trigger1 = time = 90
trigger2 = time = 160
value = 853

[state 8501, changeanim]
type = changeanim
trigger1 = time = 240
value = 855

[state 8501, changestate]
type = changestate
trigger1 = anim = 855
trigger1 = animtime = 0
value = 820
;===========================================================================
;■イントロ＃ｅｘ『あたしも協力するわ、転校生』（パートナー：暁美ほむら）
[statedef 8530]
type = s
anim = 810

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
trigger2 = time = 140
value = 812

[state 8530, changeanim]
type = changeanim
trigger1 = time = 135
trigger2 = time = 185
value = 810

[state 8530, changestate]
type = changestate
trigger1 = time = 200
value = 820
;===========================================================================
;■イントロ＃ｅｘ『いつでもオーケーだからね！』（パートナー：暁美ほむら）
[statedef 8531]
type = s
anim = 810

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
value = 812

[state 8531, changeanim]
type = changeanim
trigger1 = time = 155
value = 810

[state 8531, changestate]
type = changestate
trigger1 = time = 170
value = 820
;===========================================================================
;■イントロ＃ｅｘ『サニーデイライフ』（vsほむら＆フレンズ）
[statedef 8590]
type = s
anim = 0

[state 8590, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8590, changeanim]
type = changeanim
trigger1 = time = 120
value = 859

[state 8590, playsnd]
type = playsnd
trigger1 = anim = 859
trigger1 = animelemtime(2) = 0
value = 0,3

[state 8590, playsnd]
type = playsnd
trigger1 = time = 120
value = 10,590
channel = 0

[state 8590, changestate]
type = changestate
trigger1 = anim = 859
trigger1 = animtime = 0
value = 0
;===========================================================================
;■イントロ＃ｅｘ『さやかの唄』（vs沙耶）
[statedef 8800]
type = s
anim = 860

[state 8800, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8800, playsnd]
type = playsnd
trigger1 = time = 120
value = 10,800
channel = 0

[state 8800, changestate]
type = changestate
trigger1 = time = 260
value = 820
;===========================================================================
;■イントロ＃ｅｘ『まどかに何をした！？』（vs草加雅人）
[statedef 8900]
type = s
anim = 858

[state 8900, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8900, playsnd]
type = playsnd
trigger1 = animelemtime(2) = 0
value = 0,3

[state 8900, playsnd]
type = playsnd
trigger1 = time = 60
value = 10,900
channel = 0

[state 8900, changestate]
type = changestate
trigger1 = anim = 858
trigger1 = animtime = 0
value = 0
;===========================================================================
;■イントロ＃ｅｘ『こんな事になるなんてね』（パートナー：草加雅人）
[statedef 8930]
type = s
anim = 800

[state 8930, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8930, playsnd]
type = playsnd
trigger1 = time = 60+120
value = 10,930
channel = 0

[state 8930, changeanim]
type = changeanim
trigger1 = time = 60+120
value = 802

[state 8930, changeanim]
type = changeanim
trigger1 = time = 150+120
value = 800

[state 8930, changestate]
type = changestate
trigger1 = time = 180+120
value = 820
;===========================================================================
;■イントロ＃ｅｘ『まどかの事、美化しすぎてない・・？』（パートナー：草加雅人）
[statedef 8931]
type = s
anim = 800

[state 8931, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 8931, playsnd]
type = playsnd
trigger1 = time = 60+120
value = 10,931
channel = 0

[state 8931, changeanim]
type = changeanim
trigger1 = time = 60+120
trigger2 = time = 150+120
value = 802

[state 8931, changeanim]
type = changeanim
trigger1 = time = 120+120
trigger2 = time = 230+120
value = 800

[state 8931, changestate]
type = changestate
trigger1 = time = 270+120
value = 820
;===========================================================================
[statedef 820]
type = a
physics = n

[state 820, changeanim]
type = changeanim
trigger1 = time = 0
value = 820+(prevstateno=8100)*2+(prevstateno=8800)

[state 820, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 820, explod]
type = explod
trigger1 = time = 8
anim = 10820
id = 10820
pos = 0,0
postype = p1
facing = 1
bindtime = -1
scale = const(size.xscale),const(size.yscale)
sprpriority = 4
ownpal = 1

[state 820, helper]
type = helper
trigger1 = time = 80
name = "magic circle 0.4"
id = 21501
stateno = 21501
postype = p1
pos = 0,-floor(const(size.yscale)*60)
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 0.4*const(size.xscale)
size.yscale = 0.4*const(size.yscale)

[state 820, helper]
type = helper
trigger1 = time = 94
name = "magic circle 0.6"
id = 21500
stateno = 21500
postype = p1
pos = floor(const(size.xscale)*7),-floor(const(size.yscale)*65)
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 0.6*const(size.xscale)
size.yscale = 0.6*const(size.yscale)

[state 820, helper]
type = helper
trigger1 = time = 82
name = "magic circle 0.3"
id = 21500
stateno = 21500
postype = p1
pos = floor(const(size.xscale)*44),-floor(const(size.yscale)*55)
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 0.3*const(size.xscale)
size.yscale = 0.3*const(size.yscale)

[state 820, helper]
type = helper
trigger1 = time = 87
name = "magic circle 0.15"
id = 21500
stateno = 21500
postype = p1
pos = -floor(const(size.xscale)*16),-floor(const(size.yscale)*19)
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 0.15*const(size.xscale)
size.yscale = 0.15*const(size.yscale)

[state 820, helper]
type = helper
trigger1 = time = 89
name = "magic circle 0.2"
id = 21501
stateno = 21501
postype = p1
pos = -floor(const(size.xscale)*20),-floor(const(size.yscale)*120)
facing = facing
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 0.2*const(size.xscale)
size.yscale = 0.2*const(size.yscale)

[state 820, playsnd]
type = playsnd
trigger1 = animelemtime(6) = 0
value = 4,0

[state 820, veladd]
type = veladd
trigger1 = animelemtime(4) > 0
y = -0.005*const(size.yscale)

[state 820, changestate]
type = changestate
trigger1 = animtime = 0
value = 825
;---------------------------------------------------------------------------
[statedef 825]
type = a
physics = n
anim = 825

[state 825, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 825, veladd]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 825, changestate]
type = changestate
trigger1 = pos y >= -1
value = 829
;---------------------------------------------------------------------------
[statedef 829]
type = s
physics = s
ctrl = 0
anim = 47

[state 829, assertspecial]
type = assertspecial
trigger1 = 1
flag = intro

[state 829, velset]
type = velset
trigger1 = time = 0
y = 0

[state 829, posset]
type = posset
trigger1 = time = 0
y = 0

[state 829, changestate]
type = changestate
trigger1 = time = 20
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
trigger1 = enemy(0),authorname = "otzkai" && enemy(0),name = "kaname madoka"
trigger2 = numenemy > 1
trigger2 = enemy(1),authorname = "otzkai" && enemy(1),name = "kaname madoka"
trigger3 = numenemy > 2
trigger3 = enemy(2),authorname = "otzkai" && enemy(2),name = "kaname madoka"
trigger4 = numenemy > 3
trigger4 = enemy(3),authorname = "otzkai" && enemy(3),name = "kaname madoka"
var(11) = 100

[state 5900, varset]
type = varset
triggerall = var(11) = 0
trigger1= numenemy > 0
trigger1 = enemy(0),name = "madoka kaname"
trigger2 = numenemy > 1
trigger2 = enemy(1),name = "madoka kaname"
trigger3 = numenemy > 2
trigger3 = enemy(2),name = "madoka kaname"
trigger4 = numenemy > 3
trigger4 = enemy(3),name = "madoka kaname"
var(11) = 110

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
trigger1= numenemy > 0
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
trigger1 = enemy(0),authorname = "kayui uma" && enemy(0),name = "saya"
trigger2 = numenemy > 1
trigger2 = enemy(1),authorname = "kayui uma" && enemy(1),name = "saya"
trigger3 = numenemy > 2
trigger3 = enemy(2),authorname = "kayui uma" && enemy(2),name = "saya"
trigger4 = numenemy > 3
trigger4 = enemy(3),authorname = "kayui uma" && enemy(3),name = "saya"
var(11) = 800

[state 5900, varset]
type = varset
triggerall = var(11) = 0
trigger1 = numenemy > 0
trigger1 = enemy(0),authorname = "otzkai" && enemy(0),name = "kamen rider kaixa"
trigger2 = numenemy > 1
trigger2 = enemy(1),authorname = "otzkai" && enemy(1),name = "kamen rider kaixa"
trigger3 = numenemy > 2
trigger3 = enemy(2),authorname = "otzkai" && enemy(2),name = "kamen rider kaixa"
trigger4 = numenemy > 3
trigger4 = enemy(3),authorname = "otzkai" && enemy(3),name = "kamen rider kaixa"
var(11) = 900
;---------------------------------------------------------------------------
;■味方コード取得
[state 5900, varset]
type = varset
triggerall = var(12) = 0
triggerall = numpartner
trigger1 = partner,authorname = "otzkai" && partner,name = "kaname madoka"
var(12) = 100

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
trigger1 = partner,authorname = "otzkai" && partner,name = "kamen rider kaixa"
var(12) = 900
;---------------------------------------------------------------------------
;■パレット定数
[state 5900, color default]
type = null
trigger1 = palno = 1 || palno = 4
trigger1 = var(21) := 30
trigger1 = var(22) := 60
trigger1 = var(23) := 120

[state 5900, color blue hawaii]
type = null
trigger1 = palno = 2 || palno = 5
trigger1 = var(21) := 30
trigger1 = var(22) := 70
trigger1 = var(23) := 90

[state 5900, color mix berry]
type = null
trigger1 = palno = 3 || palno = 6
trigger1 = var(21) := 90
trigger1 = var(22) := 20
trigger1 = var(23) := 75

[state 5900, color green apple]
type = null
trigger1 = palno = 10
trigger1 = var(21) := 70
trigger1 = var(22) := 160
trigger1 = var(23) := 125

[state 5900, color tea]
type = null
trigger1 = palno = 11
trigger1 = var(21) := 170
trigger1 = var(22) := 170
trigger1 = var(23) := 40

[state 5900, color angel]
type = null
trigger1 = palno = 12
trigger1 = var(21) := 210
trigger1 = var(22) := 150
trigger1 = var(23) := 210

[state 5900, color balck]
type = null
trigger1 = palno = 7
trigger1 = var(21) := 30
trigger1 = var(22) := 60
trigger1 = var(23) := 120

[state 5900, color sweet potato]
type = null
trigger1 = palno = 8
trigger1 = var(21) := 120
trigger1 = var(22) := 100
trigger1 = var(23) := 75

[state 5900, color rainbow]
type = null
trigger1 = palno = 9
trigger1 = var(21) := 125
trigger1 = var(22) := 70
trigger1 = var(23) := 230
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
