; ________________________
;| Broly by Mr.Ansatsuken |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================< CUSTOM STATES >========================================
;============================================================================================

;========================< HIT by GIGANTIC PRESS >=============================
[Statedef 1111150]
type = A
movetype = H
physics = N
velset = 0, 0
anim = 5030
[State 0, PosAdd]
type = PosAdd
trigger1 = !time
y = 80

[State 1111150, Anim]
type = changeanim2
trigger1 = !time
value = 1111150

[State 1111150, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1

[State 1111150, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 1111150, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1111150, Recover]
type = selfstate
trigger1 = alive && time > 1
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)+80
value = 5200

[State 1111150, End]
type = selfstate
trigger1 = vel y > 0 && time > 1 && pos y >= const(movement.air.gethit.groundlevel)+80
value = 5100

[State 1111150, Offset]
type = offset
trigger1 = 1
y = const(size.mid.pos.y)


;========================< HIT by GIGANTIC PRESS >=============================
[Statedef 1111151]
type = A
movetype = H
physics = N
velset = 0, 0
anim = 5051
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 30
value = 5061

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <=90
value = SCA
time = 1

[State 1111150, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1

[State 1111150, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 1111150, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)+80
value = 5200

[State 1111150, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundlevel)+80
value = 5100

;========================< HIT by GIGANTIC CATASTROPHE >=============================
[Statedef 1111152]
type = A
movetype = H
physics = N
velset = 0, 0
anim = 5051
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 30
value = 5061
[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 1111150, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1
[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <30
value = SCA
time = 1
[State 0, PosSet]
type = PosSet
trigger1 = time >= 30
x = 0
y = -150

[State 1111150, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 1111150, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)+80
value = 5200

[State 1111150, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundlevel)+80
value = 5100

;========================< HIT by GIGANTIC CATASTROPHE >=============================
[Statedef 1111153]
type = A
movetype = H
physics = N
velset = 0, 0
anim = 5051
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 30
value = 5061
[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 1111150, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1
[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <30
value = SCA
time = 1

[State 1111150, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 1111150, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)+80
value = 5200

[State 1111150, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundlevel)+80
value = 5100

;========================< HIT by GIGANTIC CATASTROPHE >=============================
[Statedef 1111154]
type = A
movetype = H
physics = N
velset = 0, 0
anim = 5051
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 30
value = 5061
[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = ifelse(enemynear,stateno=4303&&enemynear,time>=55,1,0),0

[State 1111150, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1
[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <30
value = SCA
time = 1

[State 1111150, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 1111150, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)+80
value = 5200

[State 1111150, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundlevel)+80
value = 5100

;========================< PUNCHED by CRITICAL COMBO ATTACK >=============================
;--- Hit Pause ---
[Statedef 1111300]
type = A
movetype = H
physics = N
velset = 0, 0
[State 1111300, Anim]
type = changeanim
trigger1 = 1
value = 5002
[State 1111300, End]
type = changestate
trigger1 = hitshakeover
value = 1111301


;--- Falling ---
[Statedef 1111301]
type = A
movetype = H
physics = N

[State 1111301, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1
[State 1111301, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 1111301, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 1
[State 1111301, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1111301, Anim]
type = changeanim
trigger1 = !time
value = 5030

[State 1111301, bounce]
type = changestate
trigger1 = backedgebodydist <= 10 || frontedgebodydist <= 10
value = 1111302
[State 1111301, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100


;--- Hitting Wall ---
[Statedef 1111302]
type = A
movetype = H
physics = N
sprpriority = -1

[State 1111302, turn]
type = turn
trigger1 = !time
trigger1 = frontedgedist < backedgedist

[State 1111302, Pos]
type = posset
trigger1 = 1
x = -160*facing
[State 1111302, Pos]
type = posfreeze
trigger1 = 1
x = 1
y = 1

[State 1111302, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 1
[State 1111302, Push]
type = playerpush
trigger1 = 1
value = 1

[State 1111302, Anim]
type = changeanim
trigger1 = 1
value = 5000

[State 1111302, snd]
type = playsnd
trigger1 = !time
value = f7, 0
[State 1111302, FX]
type = explod
trigger1 = !time
anim = f72
pos = 0, floor(screenpos y) -50
postype = back
sprpriority = 3

[State 1111302, End]
type = changestate
trigger1 = time >= 4
value = 1111303


;--- Falling ---
[Statedef 1111303]
type = A
movetype = H
physics = N

[State 1111303, turn]
type = turn
trigger1 = !time

[State 1111303, Accel]
type = veladd
trigger1 = 1
y = 0.5
[State 1111303, Vel]
type = velset
trigger1 = !time
x = -2.5
y = -9

[State 1111303, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5051), 5051, 5030)
[State 1111303, Anim]
type = changeanim
trigger1 = anim = 5030 && !animtime
value = 5050
[State 1111303, Anim]
type = changeanim
trigger1 = vel y > -3 && anim = 5051
value = 5061

[State 1111303, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0
[State 1111303, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1111303, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1111303, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100



;========================< PUNCHED by EX DASHING HEAD ATTACK >=============================
[Statedef 1116710]
type = A
movetype = H
physics = N
velset = 0,0;-4,8
facep2=1

[State 4300, Wid]
type = Width
trigger1 = 1
edge = 25,-25

[State 4310, Vels]
type = VelSet
trigger1 = !Time
trigger1 = PrevStateNo != 1116711
x = -2
y = 8
[State 4310, Vels]
type = VelSet
trigger1 = !Time
trigger1 = PrevStateNo = 1116711
x = -1
y = 8

[State 4310, Gethit]
type = ChangeAnim
trigger1 = !Time
value = 5050

[State 4310, Bounce]
type = ChangeState
trigger1 = Pos Y >= -8.1
value = 1116711
[State 4311, Land]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1116711
;---------------------------------------------------------------------------
; ... and bounce
[Statedef 1116711]
type = A
movetype = H
physics = N
velset = 0,0
facep2=1
[State 4311, HitGround]
type = PosSet
trigger1 = !Time
y = 0
;[State 805, Impact Dust]
;type = Helper
;trigger1 = !time
;helperType = Normal
;stateNo = 8110
;ID = 8110
;name = "Impact Dust"
;postype = p1
;facing = -1
;pos = 0, 0
;ownPal = 1
[State 0, 1]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)
[State 0, 2]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14
[State 0, EnvShake]
type = EnvShake
trigger1 =time=0
time=35
ampl=10
[State 4311, BounceGround]
type = ChangeAnim2
trigger1 = !Time
value = ifelse(name="Q"&&authorname="Mr.Ansatsuken",4311,4310)
[State 4311, BounceUp]
type = VelSet
trigger1 = (anim=4310||anim=4311) && AnimElemNo(0) = 2
x = -1
y = -8.5

[State 4311, FallAgain]
type = VelAdd
trigger1 = (anim=4310||anim=4311) && AnimElemNo(0) >= 2
y = .4
persistent = 1

[State 4311, Land]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100

[Statedef 1116712]
type = A
movetype = H
physics = N
velset = 0,0
facep2=1
[State 4311, HitGround]
type = PosSet
trigger1 = !Time
y = 0
;[State 805, Impact Dust]
;type = Helper
;trigger1 = !time
;helperType = Normal
;stateNo = 8110
;ID = 8110
;name = "Impact Dust"
;postype = p1
;facing = -1
;pos = 0, 0
;ownPal = 1
[State 0, 1]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)
[State 0, 2]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 4311, BounceGround]
type = ChangeAnim2
trigger1 = !Time
value = ifelse(name="Q"&&authorname="Mr.Ansatsuken",4311,4310)
[State 4311, BounceUp]
type = VelSet
trigger1 = (anim=4310||anim=4311) && AnimElemNo(0) = 2
x = -1
y = -6.5

[State 4311, FallAgain]
type = VelAdd
trigger1 = (anim=4310||anim=4311) && AnimElemNo(0) >= 2
y = .4
persistent = 1

[State 4311, Land]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100


[Statedef 1116713]
type = A
movetype = H
physics = N
velset = 0,0
facep2=1
[State 4311, HitGround]
type = PosSet
trigger1 = !Time
y = 0
;[State 805, Impact Dust]
;type = Helper
;trigger1 = !time
;helperType = Normal
;stateNo = 8110
;ID = 8110
;name = "Impact Dust"
;postype = p1
;facing = -1
;pos = 0, 0
;ownPal = 1
[State 0, 1]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)
[State 0, 2]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 4311, BounceGround]
type = ChangeAnim2
trigger1 = !Time
value = ifelse(name="Q"&&authorname="Mr.Ansatsuken",4311,4310)
[State 4311, BounceUp]
type = VelSet
trigger1 = (anim=4310||anim=4311) && AnimElemNo(0) = 2
x = -1
y = -7.5

[State 4311, FallAgain]
type = VelAdd
trigger1 = (anim=4310||anim=4311) && AnimElemNo(0) >= 2
y = .4
persistent = 1

[State 4311, Land]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1111190


;========================< DEADLY DOUBLE C. Target >=============================
[Statedef 1116720]
type = A
movetype = H
physics = N
velset = 0,0;-4,8
facep2=1

[State 4300, Wid]
type = Width
trigger1 = 1
edge = 25,-25

[State 4310, Vels]
type = VelSet
trigger1 = !Time
trigger1 = PrevStateNo != 1116721
x = -2
y = 8
[State 4310, Vels]
type = VelSet
trigger1 = !Time
trigger1 = PrevStateNo = 1116711
x = -1
y = 8

[State 4310, Gethit]
type = ChangeAnim
trigger1 = !Time
value = 5050

[State 4310, Bounce]
type = ChangeState
trigger1 = Pos Y >= -8.1
value = 1116721
[State 4311, Land]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1116721
;---------------------------------------------------------------------------
; ... and bounce
[Statedef 1116721]
type = A
movetype = H
physics = N
velset = 0,0
facep2=1
[State 4311, HitGround]
type = PosSet
trigger1 = !Time
y = 0
;[State 805, Impact Dust]
;type = Helper
;trigger1 = !time
;helperType = Normal
;stateNo = 8110
;ID = 8110
;name = "Impact Dust"
;postype = p1
;facing = -1
;pos = 0, 0
;ownPal = 1
[State 0, 1]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)
[State 0, 2]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14
[State 0, EnvShake]
type = EnvShake
trigger1 =time=0	
time=35
ampl=10
[State 4311, BounceGround]
type = ChangeAnim2
trigger1 = !Time
value = ifelse(name="Q"&&authorname="Mr.Ansatsuken",4311,4310)
[State 4311, BounceUp]	
type = VelSet
trigger1 = (anim=4310||anim=4311) && AnimElemNo(0) = 2
x = -2.5
y = -ifelse(enemynear,AIlevel && enemynear, var(5)>=3,20,20.75)
[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 4311, FallAgain]
type = VelAdd
trigger1 = (anim=4310||anim=4311) && AnimElemNo(0) >= 2
y = .5
persistent = 1

[State 4311, Land]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100


;========================< SHOCKED >=============================
[Statedef 7696]
type = U
physics = N
movetype = H
ctrl = 0
velset = 0, 0

[State 7696, sts]
type = statetypeset
trigger1 = !time
trigger1 = pos y < 0
statetype = A
[State 7696, sts]
type = statetypeset
trigger1 = !time
trigger1 = pos y >= 0
statetype = S

[State 7696, Pos]
type = posset
trigger1 = pos y >= 0
y = 0

[State 7696, Anim]
type = changeanim
trigger1 = !time
trigger1 = anim != 7696 && selfanimexist(7696)
value = 7696
[State 7696, Anim]
type = changeanim
trigger1 = !time
trigger1 = anim != 9010 && !selfanimexist(7696) && selfanimexist(9010)
value = 9010
[State 7696, Anim]
type = changeanim
trigger1 = !time
trigger1 = !selfanimexist(7696) && !selfanimexist(9010)
value = ifelse(statetype != A, 5002, 5030)

[State 7696, Var]
type = varset
trigger1 = !time
trigger1 = gethitvar(hitcount) <= 2
sysfvar(4) = 0
ignorehitpause = 1
[State 7696, Var]
type = varadd
trigger1 = !time
sysfvar(4) = 45
ignorehitpause = 1

[State 7696, nopalfx]
type = palfx
trigger1 = !time
trigger1 = (anim = 7696 || anim = 9010)
add = 0, 0, 0
time = 1

[State 7696, End]
type = changestate
trigger1 = alive && (anim = 7696 || anim = 9010) && hitshakeover
trigger2 = alive && (anim != 7696 && anim != 9010) && hitshakeover
value = ifelse(statetype = A, 1115020, 5300)
[State 7696, End]
type = selfstate
trigger1 = !alive && (anim != 7696 || anim != 9010) && hitshakeover
value = 5030


;========================< HIT by METSU HADOUKEN >=============================
[Statedef 1113045]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0

[State 1113045, Anim]
type = changeanim
trigger1 = 1
value = 5012
[State 1113045, Pos]
type = posset
trigger1 = pos y >= 0
y = 0

[State 1113045, Var]
type = varset
trigger1 = !time
trigger1 = gethitvar(hitcount) <= 2
sysfvar(4) = 0
ignorehitpause = 1
[State 1113045, Var]
type = varadd
trigger1 = !time
sysfvar(4) = 60
ignorehitpause = 1

[State 1113045, End]
type = changestate
trigger1 = alive && hitshakeover
value = 1115020
[State 1113045, End]
type = selfstate
trigger1 = !alive && hitshakeover
value = 5030


;========================< DIZZY >=============================
[Statedef 5300]
type = S
movetype = H
physics = S
velset = 0, 0
anim = 5300

[State 5300, Timer]
type = varadd
trigger1 = time
sysfvar(4) = -1
[State 5300, Timer]
type = varadd
trigger1 = sysfvar(4) > 0
trigger1 = command = "up" || command = "down" || command = "back" || command = "fwd"
sysfvar(4) = -2
[State 5300, Timer]
type = varadd
trigger1 = sysfvar(4) > 0
trigger1 = command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"
sysfvar(4) = -1

[State 5300, Skip]
type = varset
trigger1 = !time
sysfvar(3) = 0
[State 5300, Skip]
type = varadd
trigger1 = command = "up" || command = "down" || command = "back" || command = "fwd"
trigger2 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
sysfvar(3) = 1

[State 5300, Skip]
type = changeanim
trigger1 = animelemtime(animelemno(0)) > 0 && animelemtime(animelemno(0) + 1) < 0
trigger1 = animelemtime(animelemno(0) + 1) >= -sysfvar(3)
value = 5300
elem = animelemno(0) + 1
[State 5300, Skip]
type = varset
trigger1 = animelemtime(1) >= 0 && !animelemtime(animelemno(0))
sysfvar(3) = 0

[State 5300, End]
type = varset
trigger1 = sysfvar(4) < 0
sysfvar(4) = 0
[State 5300, End]
type = selfstate
trigger1 = sysfvar(4) <= 0 || time >= 300 || roundstate != 2
value = 0
ctrl = 1


;========================< WALL BOUNCE >=============================
;--- Hit Pause ---
[Statedef 1111370]
type = A
movetype = H
physics = N
velset = 0, 0
[State 7696, Var]
type = varset
trigger1 = !time && enemy, numhelper(3065)
trigger1 = (enemy, var(1)=3) && (enemy, AIlevel)
trigger1 = gethitvar(hitcount) <= 2
trigger2 = !time && prevstateno!=1111370 && prevstateno!=1111371
sysfvar(4) = 0
ignorehitpause = 1
[State 7696, Var]
type = varadd
trigger1 = !time && enemy, numhelper(3065)
trigger1 = (enemy, var(1)=3) && (enemy, AIlevel)
sysfvar(4) = 450
ignorehitpause = 1
[State 1111370, Anim]
type = changeanim
trigger1 = 1
value = 5002
[State 1111370, End]
type = changestate
trigger1 = hitshakeover
value = 1111371



;--- Falling ---
[Statedef 1111371]
type = A
movetype = H
physics = N

[State 1111371, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1
[State 1111371, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 1111371, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 1
[State 1111371, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1111371, Anim]
type = changeanim
trigger1 = !time
value = 5030

[State 1111371, bounce]
type = changestate
trigger1 = backedgebodydist <= 10 || frontedgebodydist <= 10
value = 1111372
[State 1111371, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100


;--- Hitting Wall ---
[Statedef 1111372]
type = A
movetype = H
physics = N

[State 1111372, turn]
type = turn
trigger1 = !time
trigger1 = frontedgedist < backedgedist

[State 1111372, Pos]
type = posset
trigger1 = 1
x = -160 * facing
[State 1111372, Pos]
type = posfreeze
trigger1 = 1
x = 1
y = 1

[State 1111372, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 1
[State 1111372, Push]
type = playerpush
trigger1 = 1
value = 1

[State 1111372, Anim]
type = changeanim
trigger1 = 1
value = 5000

[State 1111372, snd]
type = playsnd
trigger1 = !time
value = f7, 0
[State 1111372, FX]
type = explod
trigger1 = !time
anim = f72
pos = 0, floor(screenpos y) -50
postype = back
sprpriority = 3

[State 1111372, End]
type = changestate
trigger1 = time >= 4
value = 1111373


;--- Falling ---
[Statedef 1111373]
type = A
movetype = H
physics = N

[State 1111373, turn]
type = turn
trigger1 = !time

[State 1111373, Accel]
type = veladd
trigger1 = 1
y = 0.5
[State 1111373, Vel]
type = velset
trigger1 = !time
x = -9.5
y = -9

[State 1111373, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5051), 5051, 5030)
[State 1111373, Anim]
type = changeanim
trigger1 = anim = 5030 && !animtime
value = 5050
[State 1111373, Anim]
type = changeanim
trigger1 = vel y > -3 && anim = 5051
value = 5061

[State 1111373, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0
[State 1111373, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1111373, Recover]
type = selfstate
trigger1 = alive && sysfvar(4) = 0
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200
[State 1111373, End]
type = changestate
trigger1 = alive && sysfvar(4)
trigger1 = vel y > 0 && pos y >= 0
value = 1115120
[State 1111373, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100

[Statedef 1111954]
type = A
movetype = H
physics = N
velset = 0,0
facep2 = 1
[State 0, Turn]
type = Turn
trigger1 = time = 1 && facing != (enemynear, facing)

[State 4311, BounceGround]
type = ChangeAnim2
trigger1 = !Time
value = 1104

[State 1111301, screen]
type = screenbound
trigger1 = animelemtime(4)<0
value = 0
movecamera = 1, 0
[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(4)>=0
x = -4
y = 12
ignorehitpause = 1
persistent = 1


[State 4311, Land]
type = lifeadd
trigger1 = Vel Y > 0 && Pos Y >= 0
value = -30*(enemynear,const(data.attack)*0.01)*enemynear,fvar(12)
persistent = 0

[State 4311, Land]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100


[Statedef 1111955]
type = A
movetype = H
physics = N
velset = 0,0
facep2 = 1
[State 0, Turn]
type = Turn
trigger1 = time = 1 && facing != (enemynear, facing)

[State 4311, BounceGround]
type = ChangeAnim2
trigger1 = !Time
value = 1104

[State 1111301, screen]
type = screenbound
trigger1 = animelemtime(4)<0
value = 0
movecamera = 1, 0
[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(4)>=0
x = -2
y = 15
ignorehitpause = 1
persistent = 1


[State 4311, Land]
type = lifeadd
trigger1 = Vel Y > 0 && Pos Y >= 0
value = -40*(enemynear,const(data.attack)*0.01)*enemynear,fvar(12)
persistent = 0

[State 4311, Land]
type = CHANGEstate
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1116711



;========================< STOMPED by EX BLOODY SMASH >=============================
[Statedef 1111190]
type = L
movetype = H
physics = N
velset = 0, 0
[State 0, PosAdd]
type = Posset
trigger1 = !time
y = 0
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
[State 1111150, Anim]
type = changeanim
trigger1 = hitshakeover
value = 5110

[State 1111150, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1111150, Recover]
type = selfstate
trigger1 = alive
trigger1 = time = 120
value = 5200

;========================< RESTAND + STUN by EX BLOODY STOMP (3rd stomp) >=============================
;Abstract Reordered: stood up dizzy for 80 frames so Broly can follow up
[Statedef 1111195]
type = S
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 1111195, Ground]
;restand 50 px in front of Broly (enemynear), not under him, so his attacks can reach
type = posset
trigger1 = !time
x = enemynear,pos x + enemynear,facing * 50
y = 0
ignorehitpause = 1

[State 1111195, Face Broly]
type = turn
trigger1 = !time
trigger1 = facing = enemynear,facing
ignorehitpause = 1

[State 1111195, Anim]
type = changeanim
trigger1 = !time
value = ifelse(SelfAnimExist(5300), 5300, 5000)

[State 1111195, Hold hit frame]
type = changeanim
trigger1 = anim = 5000 && animtime = 0
value = 5000
elem = 1

[State 1111195, Slide off]
type = velset
trigger1 = time < 8
x = -1.5

[State 1111195, Stop]
type = velset
trigger1 = time = 8
x = 0

[State 1111195, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 1111195, Recover]
type = selfstate
trigger1 = alive
trigger1 = time >= 80
value = 0
ctrl = 1

[State 1111195, KO]
type = selfstate
trigger1 = !alive
value = 5050

;========================< STOMPED by GIGANTIC BUSTER >=============================
[Statedef 1111191]
type = L
movetype = H
physics = N
velset = 0, 0
[State 0, PosAdd]
type = PosAdd
trigger1 = !time
y = 0
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
[State 1111150, Anim]
type = changeanim
trigger1 = hitshakeover
value = 5110

[State 1111150, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1111150, Recover]
type = selfstate
trigger1 = alive
trigger1 = time >= 200
value = 5200

;========================< STOMPED by OMEGA BLASTER >=============================
[Statedef 1111192]
type = L
movetype = H
physics = N
velset = 0, 0
[State 0, PosAdd]
type = Posset
trigger1 = !time
y = 0
[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <=1020
value = SCA
time = 1
[State 0, PosAdd]
type = Posset
trigger1 = time >= 150
y = 0
x = 0
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
[State 1111150, Anim]
type = changeanim
trigger1 = hitshakeover
value = 5110

[State 1111150, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1111150, Recover]
type = selfstate
trigger1 = alive
trigger1 = time >= 1200
value = 5200

;========================< E R A S E D  by OMEGA BLASTER >=============================
[Statedef 1111193]
type = L
movetype = H
physics = N
velset = 0, 0

[State 0, ChangeState]
type = ChangeState
trigger1 = 1
value = 5150
ctrl = 0