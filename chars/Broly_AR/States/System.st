; ________________________
;| Broly by Mr.Ansatsuken |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================< COMMON STATES >========================================
;============================================================================================

;==========< PARRY >==========
; Standing Parry
[Statedef 760]
type = S
physics = S
movetype = I
anim = 760
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[State 700, HB]
type = hitby
trigger1 = time < 15
value = SCA, AT
time = 1
[State 700, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 700, Pause]
type = pause
trigger1 = !time
time = 15
movetime = 15
endcmdbuftime = 15
pausebg = 0
[State 700, Pause]
type = pause
trigger1 = !time && numenemy
trigger1 = (enemynear, movehit = 1)
time = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
movetime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
endcmdbuftime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
pausebg = 0

[State 702, Ctrl]
type = ctrlset
trigger1 = time >= 15
value = 1
[State 700, Flash]
type = palfx
trigger1 = !time
add = 0, 50, 255
sinadd = 0, -50, -255, 60
time = 15

[State 700, Flash]
type = lifeadd
trigger1 = !time && AIlevel 
value = 40

[State 700, Snd]
type = playsnd
trigger1 = !time
value = 3, 0
channel = 0
[State 700, Snd]
type = playsnd
trigger1 = !time
value = 7, 3

[State 700, Spark]
type = explod
trigger1 = !time
anim = 8360
ID = 8360
sprpriority = 5
postype = p1
pos = ceil(12 * const(size.xscale)), ceil(-140 * const(size.yscale))
pausemovetime = 60
ownpal = 1
scale = 0.5, 0.5

[State 700, No walking]
type = assertspecial
trigger1 = 1
flag = nowalk
[State 700, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


; Crouching Parry
[Statedef 761]
type = C
physics = C
movetype = I
anim = 761
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[State 701, HB]
type = hitby
trigger1 = time < 15
value = SCA, AT
time = 1
[State 701, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 701, Pause]
type = pause
trigger1 = !time
time = 15
movetime = 15
endcmdbuftime = 15
pausebg = 0
[State 701, Pause]
type = pause
trigger1 = !time && numenemy
trigger1 = (enemynear, movehit = 1)
time = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
movetime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
endcmdbuftime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
pausebg = 0

[State 702, Ctrl]
type = ctrlset
trigger1 = time >= 15
value = 1
[State 701, Flash]
type = palfx
trigger1 = !time
add = 0, 50, 255
sinadd = 0, -50, -255, 60
time = 15

[State 701, Snd]
type = playsnd
trigger1 = !time
value = 3, 0
channel = 0
[State 701, Snd]
type = playsnd
trigger1 = !time
value = 7, 3

[State 701, Spark]
type = explod
trigger1 = !time
anim = 8360
ID = 8360
sprpriority = 5
postype = p1
pos = ceil(52 * const(size.xscale)), ceil(-76 * const(size.yscale))
pausemovetime = 60
ownpal = 1
scale = 0.5, 0.5

[State 701, No walking]
type = assertspecial
trigger1 = 1
flag = nowalk
[State 701, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


; Aerial Parry
[Statedef 762]
type = A
physics = A
movetype = I
anim = 762
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[State 702, HB]
type = hitby
trigger1 = time < 15
value = SCA, AT
time = 1

[State 702, Pause]
type = pause
trigger1 = !time
time = 15
movetime = 15
endcmdbuftime = 15
pausebg = 0
[State 702, Pause]
type = pause
trigger1 = !time && numenemy
trigger1 = (enemynear, movehit = 1)
time = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
movetime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
endcmdbuftime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
pausebg = 0

[State 702, Type]
type = statetypeset
trigger1 = time < 15
physics = N
[State 702, Stop]
type = posfreeze
trigger1 = time < 15
value = 1

[State 702, Vel]
type = velset
trigger1 = time = 15
x = ifelse(vel x > 2, 2, ifelse(vel x < -2, -2, vel x))
y = ifelse(vel y < -2, vel y, -2)
[State 702, Type]
type = statetypeset
trigger1 = time >= 15
physics = A
[State 702, Ctrl]
type = ctrlset
trigger1 = time >= 15
value = 1

[State 702, Flash]
type = palfx
trigger1 = !time
add = 0, 64, 255
sinadd = 0, -64, -255, 60
time = 15

[State 702, Snd]
type = playsnd
trigger1 = !time
value = 3, 0
channel = 0
[State 702, Snd]
type = playsnd
trigger1 = !time
value = 7, 3

[State 702, Spark]
type = explod
trigger1 = !time
anim = 8360
ID = 8360
sprpriority = 5
postype = p1
pos = ceil(19 * const(size.xscale)), ceil(-163 * const(size.yscale))
pausemovetime = 60
ownpal = 1
scale = 0.5, 0.5


;==========< DODGE >==========
; Dodge
[Statedef 700]
type = S
physics = S
movetype = I
anim = 700
velset = 0, 0
ctrl = 0
sprpriority = -1
[State 720, Snd]
type = playsnd
trigger1 = animelem = 1
value = 3, ifelse(random<500,0,1)
channel = 0
[State 710, Push]
type = playerpush
trigger1 = 1
value = 0
[State 710, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1
[State 710, Attack]
type = changestate
trigger1 = !AIlevel && (time = [15, 25])
trigger1 = command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"
value = ifelse((command = "x" || command = "y" || command = "z"), 205, 220)
[State 710, Attack]
type = changestate
trigger1 = AIlevel && (time = [15, 25]) && (p2dist x = [0, 60]) && p2movetype != A
value = ifelse(random < 500, 205, 220)
[State 710, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==========< FORWARD ROLL >==========
; Forward Roll
[Statedef 710]
type = C
physics = C
movetype = I
anim = 710
velset = 0, 0
ctrl = 0
sprpriority = 1
[State 720, Snd]
type = playsnd
trigger1 = animelem = 1
value = 5, 13
[State 720, Vel]
type = velset
trigger1 = animelemtime(3) >= 0 && animelemtime(10) < 0
x = 4
[State 720, Push]
type = playerpush
trigger1 = 1
value = 0
[State 720, HB]
type = hitby
trigger1 = animelemtime(10) < 0
value = SCA, AT
time = 1
[State 720, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==========< BACKWARD ROLL >==========
; Backward Roll
[Statedef 715]
type = C
physics = C
movetype = I
anim = 715
velset = 0, 0
ctrl = 0
sprpriority = 1
[State 720, Snd]
type = playsnd
trigger1 = animelem = 1
value = 5, 13
[State 725, Vel]
type = velset
trigger1 = animelemtime(3) >= 0
x = -4
[State 725, Push]
type = playerpush
trigger1 = 1
value = 0
[State 725, HB]
type = hitby
trigger1 = animelemtime(9) < 0
value = SCA, AT
time = 1
[State 725, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==========< POWER CHARGE >==========
; Power Charge
[Statedef 730]
type = S
physics = S
movetype = I
anim = 730
ctrl = 0
velset = 0, 0

[State 720, Snd]
type = stopsnd
trigger1 = !time
channel = 9
persistent = 1
[State 740, Power]
type = poweradd
triggerall = anim = 730 && power < powermax
trigger1 = command = "holdb" && command = "holdc"   ;Abstract Reordered: B + C (Y is grab)
trigger2 = AIlevel
value = (2*ifelse(AIlevel,roundno,1)) + ifelse(time < 60, 0, (time -60) / 10)

[State 740, Snd]
type = playsnd
trigger1 = anim = 730 && time = 8
value = 3, 34
channel = 0

[State 740, Snd]
type = playsnd
trigger1 = anim = 730 && time = 8
value = 3, 34
channel = 5

[State 740, Snd]
type = playsnd
trigger1 = anim = 730 && time = 8
value = 3, 34
channel = 3

[State 740, Flash]
type = palfx
trigger1 = 1
time = 1
add = 75 + ceil(sin(time / 6.0 * pi) * 75), 25 + ceil(sin(time / 6.0 * pi) * 25), 0

[State 740, FX]
type = helper
trigger1 = anim = 730 && animelemtime(2) >= 0
trigger1 = !numhelper(8330)
helpertype = normal
stateno = 8330
ID = 8330
name = "Power Charge"
postype = p1
pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 740, FX]
type = helper
trigger1 = anim = 730 && animelemtime(6) >= 0
trigger1 = !numhelper(6000)
helpertype = normal
stateno = 6000
ID = 6000
name = "LSSJ Aura"
postype = p1
size.xscale = 0.4
size.yscale = 0.4
pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 195, Shake]
type = envshake
trigger1 = anim = 730 && animelemtime(6) >= 2; && animelemtime(5) <= 20
trigger1 = !(animelemtime(6) % 5)
time = 5
freq = 120
ampl = 6 -ceil(animelemtime(6) * 0.25)

[State 740, FX]
type = helper
trigger1 = anim = 730 && animelemtime(2) >= 0
trigger1 = !numhelper(8331)
helpertype = normal
stateno = 8331
ID = 8331
name = "Particles"
postype = p1
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 740, Anim]
type = changeanim
triggerall = anim != 731
trigger1 = !AIlevel && (command != "holdb" || command != "holdc")   ;Abstract Reordered: let go of B or C to stop
trigger2 = power >= const(data.power) || power >= powermax || roundstate != 2
trigger3 = AIlevel && (p2movetype = A || p2dist x <200)
value = 731

[State 740, Ctrl]
type = ctrlset
trigger1 = anim = 731
value = 1

[State 740, Snd]
type = stopsnd
trigger1 = anim = 731
channel = 0
persistent = 0
[State 740, Snd]
type = stopsnd
trigger1 = anim = 731
channel = 5
persistent = 0
[State 740, Snd]
type = stopsnd
trigger1 = anim = 731
channel = 3
persistent = 0
[State 740, Snd]
type = playsnd
trigger1 = anim = 731 && power >= powermax
value = 4, 4
channel = 0
persistent = 0
[State 740, Snd]
type = playsnd
trigger1 = anim = 731 && power >= powermax
value = 4, 4
channel = 3
persistent = 0

[State 740, End]
type = changestate
trigger1 = anim = 731 && !animtime
value = 0
ctrl = 1


;==========< ZERO COUNTER >==========
; Zero Counter
[Statedef 750]
type = S
physics = S
movetype = I
anim = 750
ctrl = 0
velset = 0, 0
poweradd = -750 
sprpriority = 2
facep2 = 1

[State 1330, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -1000

[State 720, Snd]
type = stopsnd
trigger1 = !time
channel = 9
persistent = 1
[State 750, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse((command = "Counter_P"), 1, 2)
ignorehitpause = 1
[State 750, Strength AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse((p2statetype = A), 1, ifelse((p2statetype = C), 2, ifelse(random < 600, 1, 2)))
ignorehitpause = 1

[State 750, Snd]
type = playsnd
trigger1 = !time
value = 3, 5
channel = 0
[State 750, ECreset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1
[State 750, Super Pause FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8350
ID = 8350
postype = p1
pos = ceil(12 * const(size.xscale)), ceil(-140 * const(size.yscale))
ownpal = 1
persistent = 0
supermovetime = 999
[State 750, Super Pause]
type = superpause
trigger1 = !time
time = ifelse(var(10)=1,25,15)
movetime = ifelse(var(10)=1,25,15)
anim = -1
sound = s7, 1
p2defmul = 1
darken = 0
[State 750, End]
type = changestate
trigger1 = time >= 15
value = ifelse(var(10) = 1, 751, 752)


; Zero Counter Punch
[Statedef 751]
type = S
movetype = A
physics = S
;juggle = ifelse(numtarget, 15, 8)
anim = 225
velset = 0, 0
poweradd = 0
sprpriority = 1
ctrl = 0
facep2 = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 230, Snd]
type = playsnd
trigger1 = animelem = 3
value = 3, 5
channel = 0
[State 235, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
channel = 1

[State 225, Hit]
type = hitdef
;trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = !time && anim = 225
attr = S, NA 
damage = 80, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ifelse(var(20), 6, 14), ifelse(var(20), 6, 14)
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -92
kill = 0
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.slidetime = 18 + 4 * var(29)
ground.hittime = 30
ground.velocity = ifelse(var(20), -2.5, -5), -7
ground.cornerpush.veloff = 0;ifelse(var(20), -6.82, -12.74)
air.type = Low
air.hittime = 120
air.velocity = ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff = 0
getpower = 0, 0
givepower = 36, 36
yaccel = 0.5
fall = 1
fall.recover = 0
fall.recovertime = 120
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 67), var(36) := -129
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
;
;[State Idle]
;type = statetypeset
;trigger1 = animelemtime(8) >= 0
;movetype = I

[State 0]
type = Explod
trigger1 = animelem = 3
ID = 1125
anim = 1125
postype = p1
pos = 2*const(size.xscale),-105*const(size.yscale)
bindtime = 99999
removetime = -2
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0]
type = Explod
trigger1 = animelem = 3
ID = 1125
anim = 112
[State 0]
type = Explod
trigger1 = animelem = 3
ID = 1125
anim = 1126
postype = p1
pos = 2*const(size.xscale),-105*const(size.yscale)
bindtime = 99999
removetime = -2
sprpriority = 2
ownpal = 1
scale = 0.5,0.5
removeongethit = 15
postype = p1
pos = 2*const(size.xscale),-105*const(size.yscale)
bindtime = 99999
removetime = -2
sprpriority = -2
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S5,17
[State 225, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

; Zero Counter Kick
[Statedef 752]
type = C
movetype = A
physics = C
;juggle = ifelse(var(1) >= 2, 1, ifelse((p2movetype = H && p2statetype = A), 7, 9))
anim = 255
velset = 0, 0
poweradd = 0
sprpriority = 1
ctrl = 0
facep2 = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(6)>=0
trigger1 = animelemtime(10)<0
x = 3.8
;[State 0, VelSet]
;type = VelSet
;trigger1 = animelemtime(12)>=0
;x = 0
;
;[State 1260, ExFX]
;type = explod
;trigger1 = animelemtime(12)=0
;anim = 8102
;sprpriority = -1
;postype = p1
;pos = 0, 0
;scale = 0.75, 0.75
;removetime  = -2
;ownpal = 1
;[State 195, Snd]
;type = playsnd
;trigger1 = animelemtime(12)=0
;value = 5, 4
;[State 3010, EnvShake]
;type = EnvShake
;trigger1 = animelemtime(12)=0
;time = 6
;ampl = 8

[State 230, Snd]
type = playsnd
trigger1 = animelem = 3
value = 3, 5
channel = 0
[State 235, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
channel = 1

[State NHB -ZC]
type = nothitby
trigger1 = prevstateno = 750 && animelemtime(4) < 0
value = SCA
time = 1

[State 255, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3); && p2stateno != 5040
trigger1 = !time
attr = C, NA
damage = 70, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = L 
hitflag = MAF 
priority = 4, Hit 
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -6
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = Trip
ground.slidetime = 18 + 4 * var(29)
ground.hittime = 18 + 4 * var(29)
ground.velocity = -1, -8.24
air.type = Trip
air.hittime = 120
air.velocity = -1, ifelse(var(20), -8.24, -2.85);-8.24
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0;ifelse(var(20), -6.82, -12.74)
getpower = 0, 0
givepower = 36, 36
yaccel = 0.67
kill = 0
fall = 1
fall.recover = 0
fall.recovertime = 120
forcenofall = !var(20)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 138), var(36) := -33
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 255, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1



; MAX Mode
[Statedef 770]
type = S
movetype = I
physics = S
anim = 770
ctrl = 0
velset = 0,0

[State 770, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3, 43
channel = 0

[State 770, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3, 43
channel = 3

[State 770, MAX Snd]
type = PlaySnd
trigger1 = !Time
value = 7, 8

[State 770, Power Up! Text]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8291
ID = 8291
name = "Power Up FX"
posType = P1
pos = ceil(12 * const(size.xscale)), ceil(-110 * const(size.yscale))
facing = -1
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State 770, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 1
value = -1000

[State 770, PowerSet Var]
type = Varset
trigger1 = Animelem = 1
var(24) = Power

[State 770, MAX Mode Timer]
type = VarSet
trigger1 = AnimElem = 1
var(53) = 1000

[State 770, Max Meter V2]
type = Helper
trigger1 = !time && !NumHelper(780)
helpertype = Normal
id = 780
pos = 0,0
postype = left
name = "Max Meter"
stateno = 780
ignorehitpause = 1
ownpal = 1

[State 770, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; MAX Mode Bar Helper
[Statedef 780]
type = S
movetype = I
physics = N
anim = 9741
sprpriority = 0

[State 780, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1
pos = 0,-15

[State 780, Meter BG]
type = Explod
trigger1 = !Time
anim = 780
id = 780
pos = 2,0
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = -1
ontop = 1
ownpal = 1
removeongethit = 0

[State 780, Meter Fill]
type = Explod
trigger1 = Time = 2
anim = 781
id = 781
pos = 24,0
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 2
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 780, Meter Container]
type = Explod
trigger1 = Time = 2
anim = 782
id = 782
pos = 0,0
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 4
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 780, ModifyExplod]
type = ModifyExplod
trigger1 = root, Var(53) > 0
id = 781
scale = (5 + root, Var(53)) / 2000.0,.5
ignorehitpause = 1

[State 780, RemoveExplod]
type = RemoveExplod
trigger1 = root, Var(53) <= 0
id = 780
ignorehitpause = 1

[State 780, RemoveExplod]
type = RemoveExplod
trigger1 = root, Var(53) <= 0
id = 781
ignorehitpause = 1

[State 780, RemoveExplod]
type = RemoveExplod
trigger1 = root, Var(53) <= 0
id = 782
ignorehitpause = 1

[State 780, DestroySelf]
type = DestroySelf
trigger1 = root, Var(53) <= 0
ignorehitpause = 1



;===================< CUSTOM COMBO >===================
; Custom Combo
[Statedef 900]
type = U
physics = U
movetype = A
anim = 900 + (statetype = A)
ctrl = 0
velset = ifelse((statetype = S), 0, vel x), ifelse((statetype = S), 0, vel y)
poweradd = -1000
[State 760, Stop]
type = posfreeze
trigger1 = anim = 761
value = 1

[State 720, Snd]
type = stopsnd
trigger1 = !time
channel = 9
persistent = 1
[State 760, Super Pause FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8400
ID = 8400
postype = p1
pos = ceil(-2 + (anim = 901) * 21) * (const(size.xScale)), ceil(-135 +(anim = 901) * -15) * (const(size.yScale))
ownpal = 1
size.xscale = 1
size.yscale = 1
persistent = 0
supermovetime = 9999
[State 760, superchargepause]
type = superpause
trigger1 = !time
time = 30
anim = -1
sound = s7, 2
darken = 0
movetime = ifelse(statetype = A,0,30)

[State Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 760, Var]
type = varset
trigger1 = anim = 900
trigger2 = anim = 901 && !time
var(20) = 180

[State 760, NHB]
type = nothitby
trigger1 = (anim = [900, 901])
time = 8
value = SCA

[State 760, NHB]
type = playsnd
trigger1 = !time
value = 3, 0
channel = 0

[State 900, AfterImage]
type = AfterImage
trigger1 = (anim = [900, 901])
trigger1= !animtime
time = 2
timeGap = 1
frameGap = 4
length = 13
palBright = 0,0,0
palContrast = 64,128,192
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = add1

[State 760, End]
type = changeanim
trigger1 = anim = 901 && !animtime
value = 41
elem = 6

[State 760, Type]
type = statetypeset
trigger1 = anim = 41
physics = A
[State 760, Ctrl]
type = ctrlset
trigger1 = anim = 41
value = 1

[State 760, End]
type = changestate
trigger1 = anim = 900 && !animtime
value = 0
ctrl = 1


;====================< STANDING >====================
; Standing
[Statedef 0]
type = S
physics = S
movetype = I
velset = 0, 0
sprpriority = 0

[State 191, intro]
type = assertspecial
triggerall = (roundstate = 1) && roundno = 1
trigger1 = teammode != simul && enemy, teammode != simul
trigger1 = enemy, stateno!=0
trigger2 = teammode != simul && enemy, teammode = simul
trigger2 = (enemy(1), stateno != 0) && (enemy(2), stateno != 0)
trigger3 = teammode = simul && enemy, teammode != simul
trigger3 = partner, stateno != 0
trigger3 = enemy, stateno!=0
trigger4 = teammode = simul && enemy, teammode = simul
trigger4 = partner, stateno != 0
trigger4 = (enemy(1), stateno != 0) && (enemy(2), stateno != 0)
flag = nobardisplay
[State 0, SuperCancelReset]
type = VarSet
trigger1 = !time && AIlevel
var(22)=0

[State 0, Gone]
type = removeexplod
trigger1 = ishelper
[State 0, Gone]
type = destroyself
trigger1 = ishelper

[State 0, Anim]
type = changeanim
trigger1 = prevstateno = 5900 && !time
value = 3

[State 0, Anim]
type = changeanim
trigger1 = anim != (ifelse(var(20)||power>=3000,5300,0)) && anim != 5 && anim != 3
trigger2 = anim = 5 && !animtime
trigger3 = anim = 3 && !animtime
value = ifelse(var(20)||power>=3000,5300,0)

[State 0, Stop Music]
type = Stopsnd
trigger1 = !time && prevstateno=193;var(39)=1
channel = 0
[State 0, Stop Music]
type = Stopsnd
trigger1 = !time && prevstateno=193;var(39)=1
channel = 3
[State 0, Stop Music]
type = Stopsnd
trigger1 = !time && prevstateno=193;var(39)=1
channel = 5
[State 0, "Getting stronger... yes, much stronger...!"]
type = playsnd
trigger1 = var(7)=1
value = 4, 4
channel = 0
persistent = 0
[State 0, "Getting stronger... yes, much stronger...!"]
type = playsnd
trigger1 = var(7)=1
value = 4, 4
channel = 3
persistent = 0

[State 0, Dead]
type = changestate
trigger1 = !alive
value = 5050

[State 0, Skywalker]
type = changestate
triggerall = pos y < 0
trigger1 = !numenemy
trigger2 = numenemy = 1
trigger2 = (enemy, name = "M-NES Game 1" + enemy, name = "M-NES Game 2" + enemy, name = "M-GB Game 1" + enemy, authorname = "Bane84") < 2
trigger3 = numenemy >= 2
trigger3 = (enemy(0), name = "M-NES Game 1" + enemy(0), name = "M-NES Game 2" + enemy(0), name = "M-GB Game 1" + enemy(0), authorname = "Bane84") < 2
trigger3 = (enemy(1), name = "M-NES Game 1" + enemy(1), name = "M-NES Game 2" + enemy(1), name = "M-GB Game 1" + enemy(1), authorname = "Bane84") < 2
value = 50


;====================< CROUCHING >====================
; Crouching
[Statedef 10]
type = C
physics = C
movetype = I
velset = 0, 0
sprpriority = 0

[State 10, Anim]
type = changeanim
trigger1 = !time && anim = 12
value = 10
elem = 3 -animelemno(0)
[State 10, Anim]
type = changeanim
trigger1 = anim != 10
value = 10

[State 10, End]
type = changestate
trigger1 = !animtime
value = 11

[State 0, "Getting stronger... yes, much stronger...!"]
type = playsnd
trigger1 = var(7)=1
value = 4, 4
channel = 0
persistent = 0
[State 0, "Getting stronger... yes, much stronger...!"]
type = playsnd
trigger1 = var(7)=1
value = 4, 4
channel = 3
persistent = 0


[Statedef 11]
type = C
physics = C
movetype = I
anim = 11
velset = 0, 0
sprpriority = 0

[State 0, "Getting stronger... yes, much stronger...!"]
type = playsnd
trigger1 = var(7)=1
value = 4, 4
channel = 0
persistent = 0
[State 0, "Getting stronger... yes, much stronger...!"]
type = playsnd
trigger1 = var(7)=1
value = 4, 4
channel = 3
persistent = 0

[State 11, Anim]
type = changeanim
trigger1 = anim = 6 && !animtime
value = 11

[Statedef 12]
type = S
physics = S
movetype = I
velset = 0, 0
sprpriority = 0

[State 12, Anim]
type = changeanim
trigger1 = !time && anim = 10
value = 12
elem = 3 -animelemno(0)
[State 12, Anim]
type = changeanim
trigger1 = anim != 12
value = 12

[State 12, End]
type = changestate
trigger1 = command = "holddown" && command != "holdup"
value = 10
[State 12, End]
type = changestate
trigger1 = !animtime
value = 0

[State 0, "Getting stronger... yes, much stronger...!"]
type = playsnd
trigger1 = var(7)=1
value = 4, 4
channel = 0
persistent = 0
[State 0, "Getting stronger... yes, much stronger...!"]
type = playsnd
trigger1 = var(7)=1
value = 4, 4
channel = 3
persistent = 0


;==========< WALKING >==========
; Walking
[Statedef 20]
type = S
physics = S
sprpriority = 0

[State 20, Vel]
type = velset
trigger1 = var(39) <= 0
x = ifelse(command = "holdfwd", const(velocity.walk.fwd.x), ifelse(command = "holdback", const(velocity.walk.back.x), vel x))
[State 20, Vel]
type = velset
trigger1 = var(39) > 0
x = ifelse(command = "holdfwd", 1.2 * const(velocity.walk.fwd.x), ifelse(command = "holdback", 1.2 * const(velocity.walk.back.x), vel x))
[State 20, Anim]
type = changeanim
triggerall = vel x > 0
trigger1 = anim != 20 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 20
[State 20, Anim]
type = changeanim
triggerall = vel x < 0
trigger1 = anim != 21 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 21

[State 0, "Getting stronger... yes, much stronger...!"]
type = playsnd
trigger1 = var(7)=1
value = 4, 4
channel = 0
persistent = 0
[State 0, "Getting stronger... yes, much stronger...!"]
type = playsnd
trigger1 = var(7)=1
value = 4, 4
channel = 3
persistent = 0

[State 52, Snd]
type = playsnd
trigger1 = anim = 20 && (animelem = 3 || animelem = 9)
;value = 0, 52
value = 5, 4
persistent = 1
[State 52, Snd]
type = playsnd
trigger1 = anim = 21 && (animelem = 6 || animelem = 12)
value = 5, 60
persistent = 1
[State 3010, EnvShake]
type = EnvShake
trigger1 = anim = 20 && (animelem = 3 || animelem = 9)
time = 6
ampl = 8
persistent = 1
[State 52, Dust]
type = explod
trigger1 = anim = 20 && animelem = 3
anim = 8102
ID = 8102
sprpriority = -2
postype = p1
scale = 0.75, 0.75
ownpal = 1
pos = ifelse(anim=20,33,-30), 3
persistent = 1
pausemovetime = -1
supermovetime = -1
[State 52, Dust]
type = explod
trigger1 = anim = 20 && animelem = 9
anim = 8102
ID = 8102
sprpriority = -2
postype = p1
scale = 0.75, 0.75
ownpal = 1
pos = ifelse(anim=20,19,-37), 8
persistent = 1
pausemovetime = -1
supermovetime = -1


;===================< JUMPING >================
; Jumping
[Statedef 40]
type = S
physics = S
anim = 40
ctrl = 0
velset = 0, 0
sprpriority = 1
facep2 = 1

[State 40, Var]
type = varset
trigger1 = !time && AIlevel
var(9) = ifelse((p2dist x > 240 || p2dist y > 180 || random < 100), 3, 1)
[State 40, Var]
type = varset
trigger1 = AIlevel
sysvar(1) = ifelse((enemynear, movetype != A || backedgebodydist <= 10), 1, ifelse((enemynear, movetype = A), -1, 0))
[State 40, Var]
type = varset
trigger1 = !time && !AIlevel
var(9) = ifelse(command = "highjump", 3, 1)
[State 40, Var]
type = varset
trigger1 = !AIlevel
sysvar(1) = ifelse(!time, 0, ifelse(command = "holdfwd", 1, ifelse(command = "holdback", -1, sysvar(1))))
[State 40, Var]
type = varset
trigger1 = !AIlevel && var(9) != 3 && command != "holdup"
trigger2 = AIlevel && var(9) != 3 && random < 100
var(9) = 2

[State 40, Dust]
type = helper
trigger1 = !animtime
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1

[State 40, Vel]
type = velset
trigger1 = !animtime && var(9) != 3
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x))) * ifelse(var(39) <= 0, 1, 1.5)
y = ifelse(var(9) = 2, 0.75, 1) * const(velocity.jump.y)
[State 40, Vel]
type = velset
trigger1 = !animtime && var(9) = 3
x = ifelse(sysvar(1) = 0, const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, 1.5 * const(velocity.jump.fwd.x), 1.5 * const(velocity.jump.back.x))) * ifelse(var(39) <= 0, 1, 1.5)
y = ifelse(!sysvar(1), 1.15, 1) * const(velocity.jump.y)

[State 40, Vel]
type = velset
trigger1 = !animtime && prevstateno = 100 && sysvar(1) = 1
trigger1 = var(9) := 3
x = const(velocity.runjump.fwd.x)
[State 40, End]
type = changestate
trigger1 = !animtime
value = 50
ctrl = 1

[Statedef 50]
type = A
physics = A

[State 50, Snd]
type = playsnd
trigger1 = !time
value = 0, ifelse(var(9) = 3, 41, 40)

[State 50, Anim]
type = changeanim
trigger1 = 1
value = ifelse(!(vel x), 41, ifelse((vel x) > 0, 42, 43))
persistent = 0
[State 50, No Guard]
type = assertspecial
trigger1 = var(9) = 2
flag = noairguard


[Statedef 51]
type = A
physics = A
[State 51, null]
type = null
trigger1 = 1


; Landing
[Statedef 52]
type = S
physics = S
ctrl = 0
anim = ifelse(vel y > 11, 48, 47)
facep2 = var(39)
movehitpersist = 1

[State 52, Vel]
type = velset
trigger1 = 1
x = 0
y = 0
[State 52, Pos]
type = posset
trigger1 = 1
y = 0

[State 52, anim48]
type = changeanim
trigger1 = !time && (prevstateno = 105 || prevstateno = 855 || (prevstateno = [1450, 1460]) || prevstateno = 1700)
value = 48
;[State 52, anim1102]
;type = changeanim
;trigger1 = !time && (prevstateno = 1100 || prevstateno = 3100 || prevstateno = 3200)
;value = 1102
;[State 52, anim1203]
;type = changeanim
;trigger1 = !time && (prevstateno = 1200 || prevstateno = 1210 || prevstateno = 1250 || prevstateno = 1260)
;value = 1203

[State 52, anim48]
type = changeanim
trigger1 = !time && (prevstateno = 105)
value = 105
elem = 7
[State 52, Snd]
type = playsnd
trigger1 = !time && prevstateno != 1464
value = 5, 4
[State 52, Snd]
type = playsnd
trigger1 = !time && prevstateno = 1464
value = 0, 52
[State 3010, EnvShake]
type = EnvShake
trigger1 = !time && prevstateno != 1464
time = 6
ampl = 8
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

[State 52, Ctrl]
type = ctrlset
triggerall = !time
trigger1 = prevstateno != [200, 4999]
trigger2 = var(39)
value = 1
[State 52, Ctrl]
type = ctrlset
trigger1 = time >= 1
trigger1 = prevstateno < 1000
value = 1
[State 52, guard]
type = changestate
trigger1 = command = "holdback"
trigger1 = inguarddist && (prevstateno != [200, 4999])
value = 120

[State 52, No walking]
type = assertspecial
trigger1 = time <= 2 || (prevstateno = [200, 4999])
flag = nowalk

[State 0, "Getting stronger... yes, much stronger...!"]
type = playsnd
trigger1 = var(7)=1
value = 4, 4
channel = 0
persistent = 0
[State 0, "Getting stronger... yes, much stronger...!"]
type = playsnd
trigger1 = var(7)=1
value = 4, 4
channel = 3
persistent = 0

[State 52, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================< FORWARD DASH >==========================
; Running
[Statedef 100]
type = S
physics = S
anim = 100
ctrl = 1
sprpriority = 1
[State 3000, width]
type = width
trigger1 = 1
value = floor(50 * const(size.xscale))
[State 100, steps]
type = playsnd
trigger1 = !time
value = 0, 105
persistent = 0
[State 100, steps]
type = playsnd
trigger1 = !time
value = 5, 43
persistent = 0
[State 105, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = 1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 100, as]
type = assertspecial
trigger1 = 1
flag = nowalk
flag2 = noautoturn
[State 100, Vel]
type = velset
trigger1 = anim = 100
x = const(velocity.run.fwd.x)

[State 100, steps]
type=playsnd
trigger1= anim=100 && (animelem=2 || animelem=5)
value= 0,ifelse((animelem=2),50,51)

[State 100, steps]
type = playsnd
trigger1 = anim = 101
value = 0, 101
persistent = 0
[State 100, change]
type = changeanim
triggerall = time >= 8 && anim = 100
trigger1 = !AIlevel && command != "holdfwd"
trigger2 = AIlevel && p2dist x < 80
value = 101
persistent = 0
[State 101, Dust]
type = explod
trigger1 = anim = 101 && animelem = 1
anim = 8104
sprpriority = 3
postype = p1
pos = 0, 0
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 100, Ctrl]
type = ctrlset
trigger1 = anim = 101 && animelem = 3
value = 1
[State 100, End]
type = changestate
trigger1 = anim = 101 && !animtime
value = 0
ctrl = 1


;========================< BACK DASH >==========================
; Back Dash
[Statedef 105]
type = A
movetype = I
physics = N
velset = 0, 0
anim = 105
ctrl = 0
sprpriority = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = prevstateno = 1464
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
trigger1 = animelem = 2
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)
[State 105, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
statetype = A
physics = A

[State 105, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 105

[State 105, End]
type = changestate
trigger1 = vel y > 0 && pos y >= -4
value = 52


;==========< GUARD >==========
;--- START ---
[Statedef 120]
type = U
physics = U
[State 120, Vel]
type = velset
trigger1 = !time && statetype != A
x = 0
y = 0
[State 120, Anim]
type = changeanim
trigger1 = !time
value = 120 + (statetype = C) + (statetype = A) * 2
[State 120, Type]
type = statetypeset
trigger1 = !time && statetype = S
physics = S
[State 120, Type]
type = statetypeset
trigger1 = !time && statetype = C
physics = C
[State 120, Type]
type = statetypeset
trigger1 = !time && statetype = A
physics = A
[State 120, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 120, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State 120, End]
type = changestate
trigger1 = !animtime || AIlevel
value = 130 + (statetype = C) + (statetype = A) * 2
[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 120, Stop]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
value = 140


;--- STAND GUARD (guarding) ---
[Statedef 130]
type = S
physics = S
[State 130, Anim]
type = changeanim
trigger1 = anim != 130
value = 130
[State 130, High to Low]
type = changestate
trigger1 = !AIlevel && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, movetype = A) && (enemynear, statetype = C)
value = 131
[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 130, Stop Guarding]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
value = 140

[State 130, Snd]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = 132 || (prevstateno = [154, 155])
value = 0, 52
[State 130, Dust]
type = explod
trigger1 = !time
trigger1 = prevstateno = 132 || (prevstateno = [154, 155])
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

;--- CROUCH GUARD (guarding) ---
[Statedef 131]
type = C
physics = C
[State 131, Anim]
type = changeanim
trigger1 = anim != 131
value = 131
[State 131, Low to High]
type = changestate
trigger1 = !AIlevel && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, movetype = A) && (enemynear, statetype != C)
value = 130
[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 131, Stop Guarding]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
value = 140


;--- AIR GUARD (guarding) ---
[Statedef 132]
type = A
physics = N
[State 132, Anim]
type = changeanim
trigger1 = anim != 132
value = 132
[State 132, Accel]
type = veladd
trigger1 = 1
y = const(movement.yaccel)
[State 132, Var]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)
[State 132, Vel]
type = velset
trigger1 = sysvar(0)
y = 0
[State 132, Pos]
type = posset
trigger1 = sysvar(0)
y = 0
[State 132, End]
type = changestate
trigger1 = sysvar(0) && inguarddist
trigger1 = (!AIlevel && command = "holdback") || AIlevel
value = 130
[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemy, time >= 120 || time >= 120)
[State 132, End]
type = changestate
trigger1 = sysvar(0)
value = 52
[State 132, stop guarding]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
value = 140


;--- GUARD (end) ---
[Statedef 140]
type = U
physics = U
ctrl = 1
[State 140, Anim]
type = changeanim
trigger1 = !time
value = 140 + (statetype = C) + (statetype = A) * 2
[State 140, Type]
type = statetypeset
trigger1 = !time && statetype = S
physics = S
[State 140, Type]
type = statetypeset
trigger1 = !time && statetype = C
physics = C
[State 140, Type]
type = statetypeset
trigger1 = !time && statetype = A
physics = A
[State 140, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 140, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State 140, 5]
type = changestate
trigger1 = !animtime
value = (statetype = C) * 11 + (statetype = A) * 51

;--- SGUARDHIT (shaking) ---
[Statedef 150]
type = S
movetype = H
physics = N
velset = 0, 0
[State 150, Anim]
type = changeanim
trigger1 = 1
value = 150
[State 150, End]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!AIlevel && command = "holddown") || (AIlevel && (enemynear, movetype = A) && (enemynear, statetype = C)))
[State 150, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 150, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S

;--- SGUARDHIT2 (knocked back) ---
[Statedef 151]
type = S
movetype = H
physics = S
anim = 150
[State 151, Vel]
type = hitvelset
trigger1 = !time
x = 1
[State 151, Vel]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0
[State 151, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1
[State 151, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 151, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State 151, End]
type = changestate
trigger1 = hitover
value = 130
ctrl = 1

;--- CGUARDHIT (shaking) ---
[Statedef 152]
type = C
movetype = H
physics = N
velset = 0, 0
[State 152, Anim]
type = changeanim
trigger1 = 1
value = 151
[State 152, End]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!AIlevel && command = "holddown") || (AIlevel && (enemynear, movetype = A) && (enemynear, statetype = C)))
[State 152, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 152, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S

;--- CGUARDHIT2 (knocked back) ---
[Statedef 153]
type = C
movetype = H
physics = C
anim = 151
[State 153, Vel]
type = hitvelset
trigger1 = !time
x = 1
[State 153, Vel]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0
[State 153, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1
[State 153, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 153, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State 153, End]
type = changestate
trigger1 = hitover
value = 131
ctrl = 1

;--- AGUARDHIT (shaking) ---
[Statedef 154]
type = A
movetype = H
physics = N
velset = 0, 0
[State 154, Anim]
type = changeanim
trigger1 = 1
value = 152
[State 154, End]
type = changestate
trigger1 = hitshakeover
value = 155

;--- AGUARDHIT2 (knocked away) ---
[Statedef 155]
type = A
movetype = H
physics = N
anim = 152
[State 155, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1
[State 155, Vel]
type = veladd
trigger1 = 1
y = const(movement.yaccel)
[State 155, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1
[State 155, Var]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)
[State 155, Vel]
type = velset
trigger1 = sysvar(0)
y = 0
[State 155, Pos]
type = posset
trigger1 = sysvar(0)
y = 0
[State 155, End]
type = changestate
trigger1 = sysvar(0) && inguarddist
trigger1 = (!AIlevel && command = "holdback") || AIlevel
value = 130
[State 155, End]
type = changestate
trigger1 = sysvar(0)
value = 52


;==========< CHEAP K.O. >==========
; Cheap K.O.
[Statedef 5130]
type = S
movetype = H
physics = S
anim = 5130
[State 5130, NHB]
type = nothitby
trigger1 = !alive
value = SCA
[State 5130, Pos]
type = posset
trigger1 = 1
y = 0
[State 5130, End]
type = changestate
trigger1 = !animtime
value = 5131

[Statedef 5131]
type = A
movetype = H
physics = N
anim = 5131
[State 5131, NHB]
type = nothitby
trigger1 = !alive
value = SCA
[State 5131, Pos]
type = posset
trigger1 = 1
y = 0
[State 5131, posfix]
type = posadd
trigger1 = !time
x = -30
[State 5131, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
statetype = L
physics = C
[State 5131, End]
type = changestate
trigger1 = !animtime
value = ifelse(alive, 5110, 5150)


;==========< LOSE (Time over) >==========
; Time Over (Loss.jpg)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0, 0
[State 170, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 170, Camera]
type = helper
trigger1 = !numhelper(7650)
helpertype = normal
stateno = 7650
ID = 7650
name = "Camera"
postype = p1
facing = 1
[State 170, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0
[State 170, Snd]
type = playsnd
trigger1 = !time
value = 4, 0
channel = 0



;==========< DRAWGAME (Time over) >==========
; Time Over (Draw)
[Statedef 175]
type = S
ctrl = 0
velset = 0, 0
[State 175, switch]
type = changestate
trigger1 = !time && !selfanimexist(175)
value = 170
[State 175, Anim]
type = changeanim
trigger1 = !time
value = 170
[State 175, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 170, Snd]
type = playsnd
trigger1 = !time
value = 4, 0
channel = 0


;==========< Powered Shell >==========
; Taunt (Powered Shell)
[Statedef 195]
type = S
ctrl = 0
velset = 0, 0
physics = S
anim=195
poweradd = 50

[State 1000, Powered Shell]
type = helper
trigger1 = animelemtime(3) = 0 && !numhelper(1155);||numhelper(1155)&&helper(1155),stateno=1156)
helpertype = normal
stateno = 1155
ID = 1155
name = "Powered Shell"
postype = p1
pos = 86*const(size.xscale),-135*const(size.yscale)
size.xscale = 0.5
size.yscale = 0.5
;supermovetime = 65535
ownpal = 1
[State 0, SAFE]
type = ChangeAnim
trigger1 = time = 27 && AIlevel
value = anim
elem = 5

;channel = 0
;[State 195, Snd]
;type = playsnd
;trigger1 = anim = 195 && animelem = 4
;value = 5, 2
[State 195, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1



;==========< PREINTRO >==========
; Pre-Intro
[Statedef 190]
type = S
ctrl = 0
velset = 0, 0

[State 190, Movie 8 Intro]
type = changestate
triggerall = roundno = 1
trigger1 = AIlevel && (random<333||stagevar(info.name)="Neo Planet Vegeta")
trigger2 = !AIlevel && (matchno=1&&((!(enemynear, AIlevel)&&random<200)||enemynear, AIlevel))
;value = ceil(ifelse(ceil(random < 500), 192, ifelse(ceil(random < 500), 191, 193)))
value = 193 ;ifelse(random<333,191,192)
[State 190, Regular/Turns Intro]
type = changestate
trigger1 = roundno > 1 && !roundsexisted
trigger2 = roundno = 1
;value = ceil(ifelse(ceil(random < 500), 192, ifelse(ceil(random < 500), 191, 193)))
value = ifelse(random<333,191,192)
;[State 190, intro]
;type = changestate
;trigger1 = var(4)=3
;value = ceil(ifelse(ceil(random < 334), 192, ifelse(ceil(random<500),193,191)))
;[State 190, intro]
;type = changestate
;trigger1 = !var(4)
;value = ceil(ifelse(ceil(random < 667), 192, 191))
[State 190, No Intro]
type = changestate
trigger1 = 1
;value = ceil(ifelse(ceil(random < 500), 192, ifelse(ceil(random < 500), 191, 193)))
value = 0 ;ifelse(random<333,191,192)



;==========< INTRO 1 (WALKING) >==========
; Intro 1 (Walking)
[Statedef 191]
type = S
physics = N
anim = 20
[State 191, intro]
type = assertspecial
trigger1 = 1
flag = intro
flag2 = nobardisplay

[State 191, Camera]
type = helper
trigger1 = !numhelper(7650)
helpertype = normal
stateno = 7650
ID = 7650
name = "Camera"
postype = p1
pos = 0, 0
facing = 1
[State 191, bound]
type = screenbound
trigger1 = 1
value = 0
[State 191, Pos]
type = posadd
trigger1 = !time
x = -225
[State 191, Vel]
type = velset
trigger1 = anim = 20
x = 1
[State 191, Snd]
type = playsnd
trigger1 = time = 100
value = 3, 11
channel = 0

[State 52, Snd]
type = playsnd
trigger1 = anim = 20 && (animelem = 3 || animelem = 9)
;value = 0, 52
value = 5, 4
persistent = 1
[State 3010, EnvShake]
type = EnvShake
trigger1 = anim = 20 && (animelem = 3 || animelem = 9)
time = 6
ampl = 8
persistent = 1
[State 52, Dust]
type = explod
trigger1 = anim = 20 && animelem = 3
anim = 8102
ID = 8102
sprpriority = -2
postype = p1
scale = 0.75, 0.75
ownpal = 1
pos = ifelse(anim=20,27,-30), 3
persistent = 1
pausemovetime = -1
supermovetime = -1
[State 52, Dust]
type = explod
trigger1 = anim = 20 && animelem = 9
anim = 8102
ID = 8102
sprpriority = -2
postype = p1
scale = 0.75, 0.75
ownpal = 1
pos = ifelse(anim=20,19,-37), 8
persistent = 1
pausemovetime = -1
supermovetime = -1

[State 191, End]
type = changestate
trigger1 = time && anim = 20
trigger1 = (helper(7650), rootdist x) >= 0
value = 0

;==========< INTRO 2 (FIGHTERZ) >==========
; Intro 2 (FighterZ)
[Statedef 192]
type = S
physics = N
anim = 100
[State 100, intro]
type = assertspecial
trigger1 = 1
flag = intro
flag2 = nobardisplay

[State 0, VarSet]
type = VarSet
trigger1 = !time && var(4)=[1,2]
var(4) = ifelse(ceil(random<500),1,2)

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(10) = ceil(ifelse(random<250,1,ifelse(random<333,2,ifelse(random<500,3,4))))

[State 100, Camera]
type = helper
trigger1 = !numhelper(7650)
helpertype = normal
stateno = 7650
ID = 7650
name = "Camera"
postype = p1
pos = 0, 0
facing = 1
[State 100, bound]
type = screenbound
trigger1 = 1
value = 0
[State 0, Turn]
type = Turn
trigger1 = !time
trigger2 = anim = 192 && animelemtime(4)=0
[State 0, PlayerPush]
type = PlayerPush
trigger1 = anim = 100
value = 0

[State 0, DUSTO]
type = Explod
trigger1 = anim = 100
trigger1 = (helper(7650), rootdist x) > 0 ;&& anim = 100
trigger1 = time && !(time%6)
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
trigger1 = anim = 192 && !(time%2) && vel x
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
trigger1 = anim = 192 && !(time%2) && vel x
anim = 8104
sprpriority = 3
postype = p1
pos = -30, 10
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 100, Pos]
type = posadd
trigger1 = !time
x = -700
[State 100, Vel]
type = velset
trigger1 = anim = 100
x = 10
[State 100, Vel]
type = velset
trigger1 = (helper(7650), rootdist x) > 0
trigger1 = anim = 192
x = (4-(animelemtime(1)*0.08))
[State 100, DBZ Flight]
type = playsnd
trigger1 = !time
value = 5, 38
[State 100, Hahahahahaha!]
type = VarSet
trigger1 = time = 10
var(37)= ifelse(random < 600,1,0)
[State 100, Hahahahahaha!]
type = playsnd
trigger1 = time = 10
value = s3, 25+var(37)
channel = 0
[State 100, Hahahahahaha!]
type = playsnd
trigger1 = time = 10
value = s3, 25+var(37)
channel = 3
[State 100, Hahahahahaha!]
type = VarSet
trigger1 = anim = 192 && animelemtime(3)=0
var(37)= ifelse(random<333,2,ifelse(random < 500,1,0))
[State 100, Broly lines]
type = playsnd
trigger1 = anim = 192 && animelemtime(3)=0
value = s4, 27+var(37)
channel = 0
[State 100, Broly lines]
type = playsnd
trigger1 = anim = 192 && animelemtime(3)=0
value = s4, 27+var(37)
channel = 3
[State 100, End]
type = velset
trigger1 = time
trigger1 = (helper(7650), rootdist x) <= 0
x = 0

[State 100, End]
type = posset
trigger1 = time
trigger1 = (helper(7650), rootdist x) <= 0
x = ceil(helper(7650), pos x)
[State 100, End]
type = changeanim
trigger1 = time && anim = 100
trigger1 = (helper(7650), rootdist x) <= 80
value = 192
[State 100, Dust]
type = playsnd
trigger1 = anim = 192 && animelemtime(1)=0
;value = s5, 4
value = s2, 16
[State 100, Dust]
type = playsnd
trigger1 = anim = 192 && vel x <= 2.5
value = s0, 101
persistent = 0
[State 4305, Dust]
type = explod
trigger1 = anim = 192 && animelemtime(1)=0
anim = 8106
ID = 8106
sprpriority = -1
postype = p1
pos = 20, 10
scale = 1, 1

[State 195, Shake]
type = envshake
trigger1 = anim = 192 && animelemtime(2)<0
trigger1 = !(animelemtime(1) % 5)
time = 5
freq = 120
ampl = 6 -ceil(animelemtime(1) * 0.25)
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 192 && animelemtime(4)>=0
trigger2 = anim = 0 && power >= 3000
value = ifelse(var(20)||power>=3000,5300,0)

[State 100, End]
type = changestate
trigger1 = time = ifelse(var(37)=2,270,ifelse(var(37)=1,340,370))
value = 0


;==========< INTRO 3 >==========
; Intro 3 (Movie 8)
[Statedef 193]
type = S
physics = N
anim = 193
sprpriority = 1
[State 0, Movie 8]
type = VarSet
;triggerall = !time
trigger1 = !time
var(12)=0
[State 0, Movie 20]
type = VarSet
triggerall = !time
trigger1 = var(2) = 17 || var(2) = 20 || var(2) = 28 || var(2) = 93 || var(2) = 41 || var(2) = 45
trigger2 = var(2) = 52 || var(2) = 72 || var(2) = 103 || var(2) = 111 || var(2) = 113 || var(2) = [107,109]
var(12)=9000
[State 0, Movie 10]
type = VarSet
triggerall = !time
trigger1 = var(2) = 31 || var(2) = 60 || (var(2) = [70,71]) || (var(2) = [99,100])
var(12)=8000
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 193 + var(12)

[State 193, intro]
type = assertspecial
trigger1 = 1
flag = intro
flag2 = nobardisplay
flag3 = nomusic
[State 0, MusicVar]
type = VarSet
trigger1 = !time
var(39)=1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3,9
channel = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3,9
channel = 3
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3,9
channel = 5
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 540
value = (196+var(12))
[State 740, FX]
type = helper
trigger1 = anim = (196+var(12)) && animelemtime(1) = 0
trigger1 = !numhelper(6005)
helpertype = normal
stateno = 6005
ID = 6005
name = "LSSJ Enviroment Color Distortion"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 1000, Powered Shell]
type = helper
trigger1 = time = 400
helpertype = normal
stateno = 6004
ID = 1155
name = "Powered Shell"
postype = p1
pos = 86*const(size.xscale),-135*const(size.yscale)
size.xscale = 0.6
size.yscale = 0.6
supermovetime = 43
;supermovetime = 65535
ownpal = 0
[State 0, Energy Charge]
type = Explod
trigger1 = time = 520
trigger2 = time = 580
ID = 1000
anim = ifelse((var(11)&&time=580),4408,4407)
postype = p1
pos = 0,floor(-80*const(size.yscale))
bindtime = -1
removetime = -2
supermovetime = 0
sprpriority = 9
ownpal = 0
ontop = 1
scale = 1,1
removeongethit = 1
[State 740, FX]
type = helper
trigger1 = anim = (196+var(12)) && animelemtime(1) >= 0
trigger1 = !numhelper(6000)
helpertype = normal
stateno = 6000
ID = 6000
name = "LSSJ Aura"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 65535
supermovetime = 65535
ownpal = 0
[State 0, Hair]
type = Explod
trigger1 = !time
ID = 3999
anim = (194+var(12))
postype = p1
pos = 0,0
bindtime = -1
removetime = 540
sprpriority = 2
supermovetime = 0
ownpal = 0
scale = const(size.xscale),const(size.xscale)
removeongethit = 1
[State 0, Hair]
type = Explod
trigger1 = !time
ID = 3999
anim = (197+var(12))
postype = p1
pos = 0,0
bindtime = -1
removetime = 540
sprpriority = 3
supermovetime = 0
ownpal = 0
scale = 0.5*const(size.xscale),0.5*const(size.xscale)
removeongethit = 1

[State 7610, Black BG]
type = explod
trigger1 = !time
anim = 6061
ID = 4106
sprpriority = 12
ownpal = 1
posType = Back
pos = GameWidth/2 + (0), floor((1.3333333 * GameHeight / GameWidth) * 120)
facing = facing
scale = 0.25, 0.25
bindtime = -1
removetime = 540

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = (196+var(12)) && !animtime
trigger2 = anim = 0 && power >= 3000
value = ifelse(var(20)||power>=3000,5300,0)

[State 0, ZOOM Var]
type = VarSet
trigger1 = !time
var(11)=0

[State 195, Shake]
type = envshake
trigger1 = time >= 120 && time <=ifelse(var(11),620,1080)
trigger1 = !(time%5)
time = 5
freq = 10
[State 195, Shake]
type = envshake
trigger1 = time > 1690 && time <=1800
trigger1 = !(time%5)
time = 5
freq = 3
;ampl = -0.5

[State -2, LSSJ Lightning]
type = explod
trigger1 = (power=powermax || (anim = (193+var(12)) && time >= 240)) && !(gametime%20)
vel = 0, 0
accel = 0,0
anim = ifelse(var(44)=1,3037+(random%3),ifelse((var(44)!=[1,3])&&(var(2)=70||life<=(lifemax*0.125)),3044+(random%3),3034+(random%3)))
sprpriority = ifelse(random<667, 3, -5)
ID = 8912
postype = p1
pos = 0+40*(stateno=100), -80 + ifelse(statetype=C||stateno=100,25,0)
random = 60, 100 - ifelse(statetype=C,30,0)
facing = -1 + (random < 500) * 2
vfacing = -1 + (random < 500) * 2
scale = 0.5, 0.5
ownpal = 1
ignorehitpause = 1
supermovetime = -1

[State -2, LSSJ Aura]
type = Explod
trigger1 = (anim != (193+var(12))) && !(gametime%5) ;|| (power >= ifelse(var(20),1000,2000) && !(gametime%10)) || (power >= ifelse(var(20),0,1000) && !(gametime%15))
;trigger1 = timemod = 5,0
anim = 3030+(random%4)
ID = 3033
facing = ifelse(random<500,-1,1)
pos = 0+40*(stateno=100), -85 + ifelse(statetype=C||stateno=100,30,0)
vel = 0, ifelse(random<500, -.4,-.6)
supermovetime = -1
postype = p1
random = 70,80
removetime = -2
;scale = ifelse(random<500, .3, .2)*const(size.xscale), ifelse(random<500,.3,.2)*const(size.yscale)
scale = 0.5, 0.5;*const(size.yscale)
sprpriority = ifelse(random<667, 3,-3)
ownpal = 1
removeongethit = 1
supermovetime = 0
[State 8330, Dust]
type = explod
triggerall = !(gametime % 12)
trigger1 = anim = (196+var(12))
trigger2 = (anim = (196) && animelemtime(4)>=0) || (anim = (8193) && animelemtime(3)>=0) || (anim = (9193) && time >= 105)
anim = 8105
sprpriority = -3
postype = p1
pos = ifelse((anim=196),-3,0), -ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 4001, fadeout]
type = bgpalfx
trigger1 = time = [0,64]
time = 1
add = -2*time, -2*time, -2*time;, 256
sinadd = 0, 0, 0, 1

[State 4001, fadeout]
type = bgpalfx
trigger1 = time >= 64 && anim = (193+var(12))
trigger2 = anim = (196+var(12)) && animelemtime(1) < 64
trigger3 = anim = (196+var(12)) && animelemtime(1) >= 192 && time <= 1800
time = 1
add = -128, -128, -128
sinadd = 0, 0, 0, 1
persistent = 1

[State 4001, fadeout]
type = bgpalfx
trigger1 = anim = (196+var(12)) && animelemtime(1)=64
time = 64
add = -128, -128, -128
sinadd = 256, 256, 256, 256
[State 4001, fadeout]
type = bgpalfx
trigger1 = anim = (196+var(12)) && animelemtime(1)=128
time = 64
add = 128, 128, 128
sinadd = -256, -256, -256, 256

[State 4001, fadeout]
type = bgpalfx
trigger1 = time = 1800
time = 128
add = -128, -128, -128
sinadd = 128, 128, 128, 512

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2035 && var(6)
value = S6,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2115 && var(6)
value = S4,7
channel = 0

[State 193, End]
type = changestate
trigger1 = time = 2040+285*var(6)
value = 0


;==========< INTRO 3 (HMMMMMMMMPH!!!) >==========
; Intro 4 (Movie 20)
[Statedef 194]
type = S
physics = N
anim = 194
[State 191, intro]
type = assertspecial
trigger1 = 1
flag = intro
flag2 = nobardisplay

[State 191, End]
type = changestate
trigger1 = !animtime
value = 0


;==========< WIN POSE DECIDER >==========
; Win Pose Decider
[Statedef 180]
type = S

[State 180, Quote]
type = victoryquote
trigger1 = 1
value = ceil(ifelse(random<333,(0+random%5),ifelse(random<500,(4+random%5),(9+random%5))))

[State 180, Win Pose Selector]
type = changestate
trigger1 = !time && !AIlevel && (command="holdx"||command="holdy"||command="holdz"||command="holda"||command="holdb"||command="holdc")
value = ifelse((command="holdx"||command="holdy"||command="holdz"),181,ifelse((command="holda"),182,183))

[State 180, Win Pose]
type = changestate
trigger1 = !time
value = ifelse((random<500),183,ifelse((random<500),181,182))

;==========< ROUND WIN (AAAAAAAAAAHHHHHH!!!) >==========

; Winpose 1 (RAAAHH!!)
[Statedef 181]
type = S
anim = 181
ctrl = 0
sprpriority = 1
[State 181, wait]
type = assertspecial
trigger1 = time <= 300
flag = roundnotover
[State 181, wait]
type = stopsnd
trigger1 = !time
channel = 3

[State 181, Pos]
type = posset
trigger1 = pos y
y = 0
[State 181, "I am an... abomination..."]
type = playsnd
trigger1 = time = 4
value = 3, 14
channel = 0
[State 181, "I am an... abomination..."]
type = playsnd
trigger1 = time = 4
value = 3, 14
[State 0, DUSTO]
type = Explod
trigger1 = animelem = 7
trigger2 = animelem = 11
ID = 8130
anim = 8130
postype = p1
pos = -45, 0
removetime = -2
supermovetime = 0
sprpriority = 4
ownpal = 1
scale = 0.125+0.0005*(time-33),0.125;+0.0005*(time-33)
removeongethit = 1
[State 0, DUSTO]
type = Explod
trigger1 = animelem = 7
trigger2 = animelem = 11
ID = 8130
anim = 8130
postype = p1
pos = 45, 0
removetime = -2
supermovetime = 0
facing = -1
sprpriority = 4
ownpal = 1
scale = 0.125+0.0005*(time-33),0.125;+0.0005*(time-33)
removeongethit = 1
[State 740, FX]
type = helper
trigger1 = animelemtime(6) >= 0
trigger1 = !numhelper(6000)
helpertype = normal
stateno = 6000
ID = 6000
name = "LSSJ Aura"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 740, FX]
type = helper
trigger1 = !time
trigger1 = !numhelper(6001)
helpertype = normal
stateno = 1155
ID = 6001
name = "LSSJ Aura"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 740, FX]
type = helper
trigger1 = time >= 50
trigger1 = !numhelper(6005)
helpertype = normal
stateno = 6005
ID = 6005
name = "LSSJ Enviroment Color Distortion"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 195, Shake]
type = envshake
trigger1 = animelemtime(6) >= 2; && animelemtime(5) <= 20
trigger1 = !(animelemtime(6) % 5)
time = 5
freq = 120
ampl = 6 -ceil(animelemtime(6) * 0.25)


; Winpose 2 (Laugh)
[Statedef 182]
type = S
anim = 180
ctrl = 0
sprpriority = 1
[State 181, wait]
type = assertspecial
trigger1 = time <= 240
flag = roundnotover

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3,12
channel = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3,12
channel = 3

; Winpose 3 (Dialogue)
[Statedef 183]
type = S
anim = ifelse(random<500,183,182)
ctrl = 0
sprpriority = 1
[State 181, wait]
type = assertspecial
trigger1 = time <= ifelse(anim=183,260,320)
flag = roundnotover
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !time && !AIlevel && (command = "holdb" || command = "holdc")
value = ifelse(command = "holdc",182,183)

[State 0, "I am a monster, you say...? Wrong, I AM THE DEVIL!"]
type = PlaySnd
trigger1 = !time && anim = 182
value = S4,41
channel = 0

[State 0, "I am a monster, you say...? Wrong, I AM THE DEVIL!"]
type = PlaySnd
trigger1 = !time && anim = 182
value = S4,41
channel = 3

[State 0, "Trash will always be trash!"]
type = PlaySnd
trigger1 = !time && anim = 183
value = S4,42
channel = 0

[State 0, "Trash will always be trash!"]
type = PlaySnd
trigger1 = !time && anim = 183
value = S4,42
channel = 3


; Dramatic Start
[Statedef 2183]
type = L
movetype = I
physics = S
facep2 = 1
velset = -20, 0
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = roundnotover
flag2 = nobardisplay

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

[State 4001, fadeout]
type = bgpalfx
trigger1 = !time;time = [0,64]
time = 64
sinadd = -128, -128, -128, 256

[State 5120, Anim]
type = changeanim
trigger1 = !time
value = 5120
[State 5120, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 5120, 7]
type = changestate
trigger1 = !animtime
value = 2184


; Dramatic Finish Death
[Statedef 2184]
type = S
anim = 3186
ctrl = 0
sprpriority = 1
velset = 0, 0
[State 0, timevar]
type = VarSet
trigger1 = animelemtime(7)>=0
var(11)= animelemtime(7)

[State -2, LSSJ Aura]
type = Explod
trigger1 = enemy, authorname = "CobraG6" && !(gametime%5) ;|| (power >= ifelse(var(20),1000,2000) && !(gametime%10)) || (power >= ifelse(var(20),0,1000) && !(gametime%15))
;trigger1 = timemod = 5,0
anim = 3030+(random%4)
ID = 3033
facing = ifelse(random<500,-1,1)
pos = 0+40*(stateno=100), -85 + ifelse(statetype=C||stateno=100,30,0)
vel = 0, ifelse(random<500, -.4,-.6)
supermovetime = -1
postype = p1
random = 70,80
removetime = -2
;scale = ifelse(random<500, .3, .2)*const(size.xscale), ifelse(random<500,.3,.2)*const(size.yscale)
scale = 0.5, 0.5;*const(size.yscale)
sprpriority = ifelse(random<667||stateno=730, 3,-3)
ownpal = 1
removeongethit = 1
supermovetime = 9999999

[State 740, FX]
type = helper
trigger1 = time = 10
helpertype = normal
stateno = 6000
ID = 6000
name = "LSSJ Aura"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 4001, fadeout]
type = bgpalfx
trigger1 = time >= 37
time = 1
add = -128, -128, -128
sinadd = 0, 0, 0, 1
persistent = 1

[State 0, DUSTO]
type = Explod
trigger1 = animelemtime(7)=0
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
trigger1 = animelemtime(7)=0
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

[State 0, 1]
type = PlaySnd
trigger1 = !time
value = S4,14
channel = 0

[State 0, 1]
type = PlaySnd
trigger1 = !time
value = S4,14
channel = 3

[State 0, Heya!!]
type = PlaySnd
triggerall = animelem = 7
trigger1 = enemy, authorname = "DJMouF" || enemy, authorname = "Vyn"
trigger2 = enemy, authorname = "Team Z2" && ((enemy, name = "Goku Z2") || (enemy, name = "PUBLIC BUILD" && enemy, var(55)=1))
value = S6,10
[State 0, Heya!!]
type = PlaySnd
triggerall = animelem = 7
trigger1 = enemy, authorname = "DJMouF" || enemy, authorname = "Vyn"
trigger2 = enemy, authorname = "Team Z2" && ((enemy, name = "Goku Z2") || (enemy, name = "PUBLIC BUILD" && enemy, var(55)=1))
value = S6,10
[State 0, IIIYAA!!!]
type = PlaySnd
triggerall = animelem = 7
trigger1 = enemy, authorname = "280Gou" || enemy, authorname = "CobraG6"
trigger2 = enemy, authorname = "Team Z2" && enemy, name = "PUBLIC BUILD" && enemy, var(55)=0
value = S6,13
[State 0, IIIYAA!!!]
type = PlaySnd
triggerall = animelem = 7
trigger1 = enemy, authorname = "280Gou" || enemy, authorname = "CobraG6"
trigger2 = enemy, authorname = "Team Z2" && enemy, name = "PUBLIC BUILD" && enemy, var(55)=0
value = S6,13

[State 3000, Broly's Death Theme (Movie 8) - "Pawa o Kure" ("Lend me your Power")]
type = helper
trigger1 = !time && !numhelper(8997) ;&& matchover
stateno = 8997
ID = 8997
name = "Pawa o Kure"
postype = p1
pos = -25, -66
supermovetime = 9999
pausemovetime = 9999
size.xscale = 1
persistent = 1
size.yscale = 1
ownpal = 1

[State 740, Rushing Aura]
type = helper
trigger1 = animelemtime(7)>=-4 && !numhelper(6002)
helpertype = normal
stateno = 6002
ID = 6002
name = "LSSJ Aura"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(7)>=0
x = 4

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = roundnotover
flag2 = nobardisplay

[State 0, ChangeState]
type = ChangeState
trigger1 = animelemtime(7)>=0 && p2dist x <= 110
value = 2185
ctrl = 0

; Dramatic Finish Death
[Statedef 2185]
type = S
;anim = 3187
ctrl = 0
sprpriority = 1
velset = 0, 0

[State -2, LSSJ Aura]
type = Explod
trigger1 = enemy, authorname = "CobraG6" && !(gametime%5) ;|| (power >= ifelse(var(20),1000,2000) && !(gametime%10)) || (power >= ifelse(var(20),0,1000) && !(gametime%15))
;trigger1 = timemod = 5,0
anim = 3030+(random%4)
ID = 3033
facing = ifelse(random<500,-1,1)
pos = 0+40*(stateno=100), -85 + ifelse(statetype=C||stateno=100,30,0)
vel = 0, ifelse(random<500, -.4,-.6)
supermovetime = -1
postype = p1
random = 70,80
removetime = -2
;scale = ifelse(random<500, .3, .2)*const(size.xscale), ifelse(random<500,.3,.2)*const(size.yscale)
scale = 0.5, 0.5;*const(size.yscale)
sprpriority = ifelse(random<667||stateno=730, 3,-3)
ownpal = 1
removeongethit = 1
supermovetime = 9999999

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 58
value = 3187

[State 4001, fadeout]
type = bgpalfx
trigger1 = 1
time = 1
add = -128, -128, -128
sinadd = 0, 0, 0, 1
persistent = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = roundnotover
flag2 = nobardisplay

[State 0, Ha!!!]
type = PlaySnd
trigger1 = animelem = 2
value = S3,46
[State 0, Ha!!!]
type = PlaySnd
trigger1 = animelem = 2
value = S3,46

[State 0, I WON'T LET YOU GET AWAY WITH THIS!]
type = PlaySnd
triggerall = time = 110
trigger1 = enemy, authorname = "DJMouF" || enemy, authorname = "Vyn"
trigger2 = enemy, authorname = "Team Z2" && ((enemy, name = "Goku Z2") || (enemy, name = "PUBLIC BUILD" && enemy, var(55)=1))
value = S6,11
[State 0, I WON'T LET YOU GET AWAY WITH THIS!]
type = PlaySnd
triggerall = time = 110
trigger1 = enemy, authorname = "DJMouF" || enemy, authorname = "Vyn"
trigger2 = enemy, authorname = "Team Z2" && ((enemy, name = "Goku Z2") || (enemy, name = "PUBLIC BUILD" && enemy, var(55)=1))
value = S6,11
[State 0, YURUSANEEE!!!]
type = PlaySnd
triggerall = time = 105
trigger1 = enemy, authorname = "280Gou" || enemy, authorname = "CobraG6"
trigger2 = enemy, authorname = "Team Z2" && enemy, name = "PUBLIC BUILD" && enemy, var(55)=0
value = S6,14
[State 0, YURUSANEEE!!!]
type = PlaySnd
triggerall = time = 105
trigger1 = enemy, authorname = "280Gou" || enemy, authorname = "CobraG6"
trigger2 = enemy, authorname = "Team Z2" && enemy, name = "PUBLIC BUILD" && enemy, var(55)=0
value = S6,14

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S1,3
channel = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 0.2

[State 0, ChangeState]
type = ChangeState
trigger1 = time >= 210
value = 2186

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S7,16

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S7,16

; Dramatic Finish Death
[Statedef 2186]
type = S
anim = 3188
ctrl = 0
sprpriority = 1
velset = 0, 0

[State 4001, fadeout]
type = bgpalfx
trigger1 = anim != 9741
time = 1
add = -128, -128, -128
sinadd = 0, 0, 0, 1
persistent = 1

[State -2, Hit Sparks]
type = Helper
trigger1 = !time
helperType = Normal
stateNo = 4050
ID = 4050
name = "Spark"
postype = P1
pos = ceil(20 * (const(size.xScale))), ceil(-106 * (const(size.yScale)))
facing = 1
size.xscale = 1
size.yscale = 1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State -2, Hit Sparks]
type = Helper
trigger1 = !time
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
postype = P1
pos = ceil(20 * (const(size.xScale))), ceil(-106 * (const(size.yScale)))
facing = 1
size.xscale = 1
size.yscale = 1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State -2, Hit Sparks]
type = Helper
trigger1 = !time
helperType = Normal
stateNo = 3125
ID = 3125
name = "Dusto"
postype = P1
pos = 10, 0;ceil(0 * (const(size.xScale))), ceil(0 * (const(size.yScale)))
facing = 1
size.xscale = 2
size.yscale = 2
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = !time
time=12
ampl=4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S2,7

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S2,11
;
;[State 0, PosAdd]
;type = PosAdd
;trigger1 = !time
;x = 20
;y = 0

[State 0, B... BAAAAKAAAANAAAAAAAAAAAAAAAAAAA!!!]
type = PlaySnd
trigger1 = time = 60
value = S11,1

[State 0, B... BAAAAKAAAANAAAAAAAAAAAAAAAAAAA!!!]
type = PlaySnd
trigger1 = time = 60
value = S11,1

[State 1000, Glow]
type = helper
trigger1 = time = 147
helpertype = normal
stateno = 4904
ID = 4904
name = "Miracle Punch"
postype = p1
supermovetime = 65535
pos = 0,0
size.xscale = 0.25
size.yscale = 0.25
ownpal = 1

[State 0, VelSet]
type = Veladd
trigger1 = anim != 9741
trigger1 = time >= 151
x = -0.005
y = -0.005

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = numhelper(4111)
trigger1 = anim != 9741
trigger1 = ifelse(numhelper(4111),helper(4111),animelemtime(15)>=0,0)
value = 9741
[State 0, ScreenBound]
type = ScreenBound
trigger1 = anim != 9741
value = ifelse(var(57),0,1)
movecamera = ifelse(var(57),0,1),ifelse(var(57),0,1)
[State 0, ScreenBound]
type = ScreenBound
trigger1 = anim = 9741
value = 0
movecamera = 0,0
[State 0, VelSet]
type = VelSet
trigger1 = anim = 9741
x = 0
y = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 9741 && animelemtime(1)=0
statetype = A
movetype = H

[State 0, It looks like I did it!]
type = PlaySnd
triggerall = anim = 9741 && animelemtime(1)=120
trigger1 = enemy, authorname = "DJMouF" || enemy, authorname = "Vyn"
trigger2 = enemy, authorname = "Team Z2" && ((enemy, name = "Goku Z2") || (enemy, name = "PUBLIC BUILD" && enemy, var(55)=1))
value = S6,12
[State 0, It looks like I did it!]
type = PlaySnd
triggerall = anim = 9741 && animelemtime(1)=120
trigger1 = enemy, authorname = "DJMouF" || enemy, authorname = "Vyn"
trigger2 = enemy, authorname = "Team Z2" && ((enemy, name = "Goku Z2") || (enemy, name = "PUBLIC BUILD" && enemy, var(55)=1))
value = S6,12
[State 0, Ora no pawa o wa katta!]
type = PlaySnd
triggerall = anim = 9741 && animelemtime(1)=90
trigger1 = enemy, authorname = "280Gou" || enemy, authorname = "CobraG6"
trigger2 = enemy, authorname = "Team Z2" && enemy, name = "PUBLIC BUILD" && enemy, var(55)=0
value = S6,15
[State 0, Ora no pawa o wa katta!]
type = PlaySnd
triggerall = anim = 9741 && animelemtime(1)=90
trigger1 = enemy, authorname = "280Gou" || enemy, authorname = "CobraG6"
trigger2 = enemy, authorname = "Team Z2" && enemy, name = "PUBLIC BUILD" && enemy, var(55)=0
value = S6,15

[State -2, LSSJ Aura]
type = Explod
trigger1 = anim != 9741 && enemy, authorname = "CobraG6" && !(gametime%5) ;|| (power >= ifelse(var(20),1000,2000) && !(gametime%10)) || (power >= ifelse(var(20),0,1000) && !(gametime%15))
;trigger1 = timemod = 5,0
anim = 3030+(random%4)
ID = 3033
facing = ifelse(random<500,-1,1)
pos = 0+40*(stateno=100), -85 + ifelse(statetype=C||stateno=100,30,0)
vel = 0, ifelse(random<500, -.4,-.6)
supermovetime = -1
postype = p1
random = 70,80
removetime = -2
;scale = ifelse(random<500, .3, .2)*const(size.xscale), ifelse(random<500,.3,.2)*const(size.yscale)
scale = 0.5, 0.5;*const(size.yscale)
sprpriority = ifelse(random<667||stateno=730, 3,-3)
ownpal = 1
removeongethit = 1
supermovetime = 9999999

;==========< GET UP >==========
; Get Up
[Statedef 5120]
type = L
movetype = I
physics = N
velset = 0, 0

[State 5120, Anim]
type = changeanim
trigger1 = !time
value = 5120
[State 5120, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 5120, fall]
type = hitfallset
trigger1 = !animtime
value = 1
[State 5120, NHB]
type = nothitby
trigger1 = !animtime
value = , NT, ST, HT
time = 12
[State 5120, NHB]
type = nothitby
trigger1 = !animtime
value2 = SCA
time = 3
[State 5120, 7]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==========< LIE DEAD >==========
; Lie Dead
[Statedef 5150]
type = L
movetype = H
physics = N
sprpriority = -3
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = prevstateno = 1111193
flag = invisible
flag2 = noshadow
[State 0, ScreenBound]
type = ScreenBound
trigger1 = prevstateno = 1111193
value = 0
movecamera = 0,0

[State 5150, Anim]
type = changeanim
triggerall = !time && selfanimexist(5140)
trigger1 = (anim != [5111, 5119]) && (anim != [5171, 5179])
trigger2 = !selfanimexist(5140 + (anim % 10))
value = 5140

[State 5150, Anim]
type = changeanim
trigger1 = !time
trigger1 = (anim = [5111, 5119]) || (anim = [5171, 5179])
trigger1 = selfanimexist(5140 + (anim % 10))
value = 5140 + (anim % 10)
[State 5150, Anim]
type = changeanim
persistent = 0
trigger1 = matchover = 1
trigger1 = anim = [5140, 5149]
trigger1 = selfanimexist(anim + 10)
value = anim + 10
[State 5150, Anim]
type = changeanim
trigger1 = !time
trigger1 = anim != [5140, 5159]
trigger1 = anim != [5110, 5119]
value = 5110

[State 5150, Anim]
type = changeanim
trigger1 = !time && prevstateno = 5131
value = 5132

[State 5150, Vel]
type = velmul
trigger1 = 1
x = 0.85
[State 5150, Vel]
type = velset
trigger1 = vel x < 0.05
persistent = 0
x = 0
[State 5150, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 0, Dramatic Finish]
type = ChangeState
trigger1=enemy,stateno=180&&loseko&&(enemy,name="Goku"||enemy,name="GokuZ2"||enemy,name="PUBLICBUILD"||enemy,name="SonGoku")&&matchover
trigger1=(enemy,authorname="DJMouF"||enemy,authorname="Vyn"||enemy,authorname="TeamZ2"||enemy,authorname="280Gou"||enemy,authorname="CobraG6")
trigger1 = enemy, teammode != simul &&  enemy, selfanimexist(3184) && teammode != simul
value = 2183



;==========< CONTINUE? >==========
; Continue?
[Statedef 5500]
type = S
ctrl = 0
velset = 0, 0
[State 5500, Anim]
type = changeanim
trigger1 = !time
value = 5500


;==========< FALL RECOVERY >==========
; Fall Recovery
[Statedef 5200]
type = A
movetype = H
physics = N
[State 5200, Anim]
type = changeanim
trigger1 = anim = 5035 && !animtime
value = 5050
[State 5200, Vel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)
[State 5200, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= -10
value = 5201

[Statedef 5201]
type = S
movetype = I
physics = N
anim = 5200
ctrl = 0
facep2 = 1

[State 5201, Pos]
type = posset
trigger1 = 1
y = 0
[State 5201, Vel]
type = velset
trigger1 = !time
x = -8
y = 0
[State 5201, Vel]
type = velmul
trigger1 = 1
x = 0.9

[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 4, 37
channel = 0

[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 4, 37
channel = 3

[State 5201, Recover Sound]
type = PlaySnd
trigger1 = !Time
value = 7,11
channel = 1

[State 5201, Flash]
type = PalFX
trigger1 = !Time
add = 255,255,255
sinAdd = -255,-255,-255,40
time = 10

[State 5201, Recover FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8200
ID = 8200
name = "Recover FX"
posType = P1
pos = 0, ceil(-18 * (const(size.yScale)*2))
size.xScale = 1
size.yScale = 1
ownpal = 1


[State 5201, Dust]
type = playsnd
trigger1 = !time
value = 0, 101
[State 5201, Dust]
type = explod
trigger1 = !(time % 6) && abs(vel x) >= 1
anim = 7103
scale = 0.5, 0.5
sprpriority = 3
postype = p1
pos = 0, 0
vel = 1, 0
scale = 1, 1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 5201, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 5201, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


[Statedef 5210]
type = A
movetype = I
physics = N
anim = 5210
ctrl = 0

[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 4, 37
channel = 0

[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 4, 37
channel = 3

[State 5201, Recover Sound]
type = PlaySnd
trigger1 = !Time
value = 7,11
channel = 1

[State 5201, Flash]
type = PalFX
trigger1 = !Time
add = 255,255,255
sinAdd = -255,-255,-255,40
time = 10

[State 5201, Recover FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8200
ID = 8200
name = "Recover FX"
posType = P1
pos = 0, ceil(-18 * (const(size.yScale)*2))
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 5210, Accel]
type = veladd
trigger1 = 1
y = 0.6

[State 5210, Vel]
type = velset
trigger1 = !time
x = ifelse((command = "holdfwd" && command != "holdback"), 4, ifelse((command != "holdfwd" && command = "holdback"), -4, 0))
y = -7.55

[State 5210, Turn]
type = turn
trigger1 = !time
trigger1 = p2dist x < 0

[State 5210, NHB]
type = nothitby
trigger1 = time < 14
value = SCA
time = 1

[State 5210, Ctrl]
type = ctrlset
trigger1 = time >= 14
value = 1

[State 5210, Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;==========< RECOVERY ROLL >==========
; Recovery Roll
[Statedef 5220]
type = A
movetype = H
physics = N
[State 5220, Anim]
type = changeanim
trigger1 = anim = 5035 && !animtime
value = 7100
[State 5220, Vel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)
[State 5220, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= -10
value = 5221

[Statedef 5221]
type = C
movetype = I
physics = N
anim = 5220
velset = 0, 0
facep2 = 1

[State 5221, Pos]
type = posset
trigger1 = 1
y = 0
[State 5221, Vel]
type = velset
trigger1 = 1
x = 5
y = 0

[State 5221, Push]
type = playerpush
trigger1 = 1
value = 0

[State 5221, Anim]
type = changeanim
trigger1 = animelem = 12 && command != "holdfwd"
value = 5220
elem = 20

[State 5221, Dust]
type = explod
trigger1 = !(time % 5)
anim = 7103
scale = 0.5, 0.5
sprpriority = 3
postype = p1
vel = -1, 0
removetime = -2
ownpal = 1
pausemovetime = -1
supermovetime = -1
[State 5221, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;==========< TARGET SAFE FALL >==========
[Statedef 5205]
type = A
physics = N
movetype = H

[State 5205, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim = 5035
value = 5050

[State 5205, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 5205, Ground]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 5205, Air]
type = selfstate
trigger1 = time >= 60
value = 5210


;==========< PALETTE MODE SELECTION >==========
; Palette-Initialization
[Statedef 5900]
type = S
[State 0, PowerSet]
type = PowerSet
trigger1 = !roundsexisted && roundno = 1 && power < 1000 && AIlevel
value = 1000
[State 5900, varreset]
type = varrangeset
trigger1 = !roundsexisted && matchno = 1
value = 0
[State 5900, varreset]
type = varrangeset
trigger1 = !roundsexisted && matchno = 1
fvalue = 0

[State 5900, Kakarotto...?]
type = VarSet
trigger1 = 1
var(6)=0

[State 5900, Character Palette 1 (LK)]
type = VarSet
triggerall = !roundsexisted && matchno = 1
trigger1 = PalNo = 1
;var(2) = 107	;CHANGE THIS LINE
var(2) = 113	;CHANGE THIS LINE
[State 5900, Character Palette 2 (MK)]
type = VarSet
triggerall = !roundsexisted && matchno = 1
trigger1 = PalNo = 2
var(2) = 8	;CHANGE THIS LINE
[State 5900, Character Palette 3 (HK)]
type = VarSet
triggerall = !roundsexisted && matchno = 1
trigger1 = PalNo = 3
var(2) = 46	;CHANGE THIS LINE
[State 5900, Character Palette 4 (LP)]
type = VarSet
triggerall = !roundsexisted && matchno = 1
trigger1 = PalNo = 4
;var(2) = 1	;CHANGE THIS LINE
var(2) = 112	;CHANGE THIS LINE
[State 5900, Character Palette 5 (MP)]
type = VarSet
triggerall = !roundsexisted && matchno = 1
trigger1 = PalNo = 5
var(2) = 110	;CHANGE THIS LINE
[State 5900, Character Palette 6 (HP)]
type = VarSet
triggerall = !roundsexisted && matchno = 1
trigger1 = PalNo = 6
var(2) = 70	;CHANGE THIS LINE
[State 5900, Character Palette 7 (start + LK)]
type = VarSet
triggerall = !roundsexisted && matchno = 1
trigger1 = PalNo = 7
var(2) = 111	;CHANGE THIS LINE
[State 5900, Character Palette 8 (start + MK)]
type = VarSet
triggerall = !roundsexisted && matchno = 1
trigger1 = PalNo = 8
var(2) = 16	;CHANGE THIS LINE
[State 5900, Character Palette 9 (start + HK)]
type = VarSet
triggerall = !roundsexisted && matchno = 1
trigger1 = PalNo = 9
var(2) = 9	;CHANGE THIS LINE
[State 5900, Character Palette 10 (start + LP)]
type = VarSet
triggerall = !roundsexisted && matchno = 1
trigger1 = PalNo = 10
var(2) = 60	;CHANGE THIS LINE
[State 5900, Character Palette 11 (start + MP)]
type = VarSet
triggerall = !roundsexisted && matchno = 1
trigger1 = PalNo = 11
var(2) = 52	;CHANGE THIS LINE
[State 5900, Character Palette 12 (start + HP)]
type = VarSet
triggerall = !roundsexisted && matchno = 1
trigger1 = PalNo = 12
var(2) = 31	;CHANGE THIS LINE

[State -2, Energy Color - Super Saiyan Rosé]
type = varset
trigger1 = var(2)=17||var(2)=20||var(2)=54||var(2)=9||(var(2)=[30,31])||var(2)=35||var(2)=26||var(2)=37||(var(2)=[44,46])||(var(2)=103)||(var(2)=[50,51])||(var(2)=[72,77])||(var(2)=[82,85])||(var(2)=97)||(var(2)=[100,101])||(var(2)=92)||(var(2)=109)||(var(2)=105)||(var(2)=107)
var(44)= 1
[State -2, Energy Color - Super Saiyan]
type = varset
trigger1 = (var(2)=[4,8])||(var(2)=[32,33])||var(2)=16||var(2)=18||(var(2)=25)||(var(2)=63)||(var(2)=69)||(var(2)=75)||(var(2)=87)||(var(2)=91)||(var(2)=93)
var(44)= 3
[State -2, Energy Color - Super Saiyan Blue]
type = varset
trigger1 = (var(2)=15)||(var(2)=[21,23])||var(2)=19||var(2)=27||(var(2)=[29,30])||(var(2)=34)||(var(2)=36)||(var(2)=[47,48])||(var(2)=[52,53])||(var(2)=61)||(var(2)=65)||(var(2)=[78,79])||(var(2)=86)||(var(2)=95)||(var(2)=96)||(var(2)=99)||(var(2)=106)||(var(2)=110)||(var(2)=116)
var(44)= 2
[State -2, Energy Color - Legendary Super Saiyan]
type = varset
trigger1 = var(2)!=17&&var(2)!=20&&var(2)!=54&&var(2)!=9&&(var(2)!=[30,31])&&var(2)!=35&&var(2)!=26&&var(2)!=37&&(var(2)!=[44,46])&&(var(2)!=103)&&(var(2)!=[50,51])&&(var(2)!=[72,77])&&(var(2)!=[82,85])&&(var(2)!=97)&&(var(2)!=[100,101])&&(var(2)!=92)&&(var(2)!=109)&&(var(2)!=105)
trigger1 = (var(2)!=[4,8])&&(var(2)!=[32,33])&&var(2)!=16&&var(2)!=18&&(var(2)!=25)&&(var(2)!=63)&&(var(2)!=69)&&(var(2)!=75)&&(var(2)!=87)&&(var(2)!=91)&&(var(2)!=93)&&(var(2)!=99)&&(var(2)!=110)&&(var(2)!=116)
trigger1 = (var(2)!=15)&&(var(2)!=[21,23])&&var(2)!=19&&var(2)!=27&&(var(2)!=[29,30])&&(var(2)!=34)&&(var(2)!=36)&&(var(2)!=[47,48])&&(var(2)!=[52,53])&&(var(2)!=61)&&(var(2)!=65)&&(var(2)!=[78,79])&&(var(2)!=86)&&(var(2)!=95)&&(var(2)!=96)&&(var(2)!=106)&&(var(2)!=107)
var(44)= 0

[State -3, Energy Color]
type = remappal
trigger1 = 1
source = 4050, 35
dest = 4050, ifelse(var(44)=1,1,ifelse(var(44)=2,2,ifelse(var(44)=3,10,35)))
[State -3, Energy Color]
type = remappal
trigger1 = 1
source = 4050, 27
dest = 4050, ifelse(var(44)=1,4,ifelse(var(44)=2,5,ifelse(var(44)=3,11,27)))
[State -3, Energy Color]
type = remappal
trigger1 = 1
source = 4050, 32
dest = 4050, ifelse(var(44)=1,4,ifelse(var(44)=2,5,ifelse(var(44)=3,11,32)))
[State -3, Energy Color]
type = remappal
trigger1 = 1
source = 4050, 59
dest = 4050, ifelse(var(44)=1,56,ifelse(var(44)=2,58,ifelse(var(44)=3,54,59)))
[State -3, Energy Color]
type = remappal
trigger1 = 1
source = 4050, 4
dest = 4050, ifelse(var(44)=1,1,ifelse(var(44)=2,2,ifelse(var(44)=3,5,4)))
[State -3, Energy Color]
type = remappal
trigger1 = 1
source = 4050, 3
dest = 4050, ifelse(var(44)=1,10,ifelse(var(44)=2,10,ifelse(var(44)=3,7,3)))
[State -3, Energy Color]
type = remappal
trigger1 = 1
source = 4050, 29
dest = 4050, ifelse(var(44)=1,20,ifelse(var(44)=2,7,ifelse(var(44)=3,10,29)))

[State 0, ... KAKAROTTOOO!!!]
type = VarSet
trigger1 = enemy, name = "Goku" || enemy, name = "Son Goku" || enemy, name = "SonGoku" || enemy, name = "Goku Son" || enemy, name = "Kakarot" || enemy, name = "Kakarotto"
trigger2 = enemy, name = "SSJGoku" || enemy, name = "GokuSSJ" || enemy, name = "GokuSSJ2" || enemy, name = "SSJ2Goku" || enemy, name = "SSGoku" || enemy, name = "GokuSS"
trigger3 = enemy, name = "SSJ3Goku" || enemy, name = "GokuSSJ3" || enemy, name = "GokuSSJ4" || enemy, name = "SSJ4Goku" || enemy, name = "SSGGoku" || enemy, name = "GokuSSG"
trigger4 = enemy, name = "SSJBGoku" || enemy, name = "GokuSSJB" || enemy, name = "GokuSSB" || enemy, name = "SSBGoku" || enemy, name = "SSGSSGoku" || enemy, name = "GokuSSGSS"
trigger5 = enemy, name = "Bardock" || enemy, name = "Turles" || enemy, name = "Goten" || enemy, name = "Black" || enemy, name = "GokuBlack" || enemy, name = "Goku Black"
trigger6 = enemy, name = "Black Goku" || enemy, name = "BlackGoku" || enemy, name = "GokuJr" || enemy, name = "Goku Jr" || enemy, name = "Kid Goku" || enemy, name = "Goku Z2" || enemy, name = "PUBLIC BUILD"
var(6)=1

[State 5900, Palette]
type = remappal
trigger1 = !roundsexisted && roundno = 1
source = 1, 1
dest = 1, var(2)
[State 5900, End]
type = changestate
trigger1 = !time
value = 5901


;===========================================================================
;===============================< -2 STATES >=================================
;===========================================================================
[Statedef -2]

[State -2, NotHitBy]
type = NotHitBy
trigger1 = roundstate = 2 && movetype != H && numhelper(1155);&&helper(1155),stateno=1155
value = , AP
time = 1

[State -2, NotHitBy]
type = NotHitBy
trigger1 = roundstate = 2 && movetype = H && numhelper(1155);&&helper(1155),stateno=1155
value = , NP, SP
time = 1

[State 0, VarAdd]
type = VarAdd
trigger1 = 1
var(7) = ifelse(power>=3000,1,-var(7))

[State -2, LSSJ2 Aura]
type = Explod
triggerall = stateno != [190190,190199]
triggerall = StateNo != [1251101,1251133]
;triggerall = stateno != 5900
;triggerall = stateno != 190 && stateno != 191 && stateno != 3205 && stateno != 3208
triggerall = movetype != H || stateno = [120,155]
triggerall = alive && stateno != 193 && anim != [710,715]
trigger1 = ((power >= 3000 || stateno = 730 || (stateno = [3000,4999]) || (winko && numhelper(8600)) || var(53) || var(20)) && !(gametime%5)) ;|| (power >= ifelse(var(20),1000,2000) && !(gametime%10)) || (power >= ifelse(var(20),0,1000) && !(gametime%15))
;trigger1 = timemod = 5,0
anim = 3030+(random%4)
ID = 3033
facing = ifelse(random<500,-1,1)
pos = 0+40*(stateno=100), -85 + ifelse(statetype=C||stateno=100,30,0)
vel = 0, ifelse(random<500, -.4,-.6)
supermovetime = -1
postype = p1
random = 70,80
removetime = -2
;scale = ifelse(random<500, .3, .2)*const(size.xscale), ifelse(random<500,.3,.2)*const(size.yscale)
scale = 0.5, 0.5;*const(size.yscale)
sprpriority = ifelse(random<667||stateno=730, 3,-3)
ownpal = 1
removeongethit = 1
supermovetime = 9999999

[State -2, LSSJ2 Lightning]
type = explod
triggerall = stateno != [190190,190199]
triggerall = StateNo != [1251101,1251133]
triggerall = movetype != H || stateno = [120,155]
triggerall = alive && !(gametime%20) && stateno != 193 && anim != [710,715]
trigger1 = var(20)||(winko&&numhelper(8600)&&life<=(lifemax*0.125))||(stateno = [3000,4999])||power>=ifelse(powermax>5000,(5000-1000*(var(53)>0)),(powermax-1000*(var(53)>0))) ;&& time%2
vel = 0, 0
accel = 0,0
anim = ifelse(var(44)=1,3037+(random%3),ifelse((var(44)!=[1,3])&&(var(2)=70||life<=(lifemax*0.125)),3044+(random%3),3034+(random%3)))
sprpriority = ifelse(random<667, 3, -5)
ID = 8912
postype = p1
pos = 0+40*(stateno=100), -80 + ifelse(statetype=C||stateno=100,25,0)
random = 60, 100 - ifelse(statetype=C,30,0)
facing = -1 + (random < 500) * 2
vfacing = -1 + (random < 500) * 2
scale = 0.5, 0.5
ownpal = 1
ignorehitpause = 1
supermovetime = -1

[State -2, GETTING STRONGER... YES, MUCH STRONGER...]
type = PowerAdd
triggerall = stateno != [190190,190199]
triggerall = StateNo != [1251101,1251133]
trigger1 = !var(20) && !(time%2) && alive && roundstate = 2 && (stateno != [896,899]) && stateno != [3000,4999]
trigger1 = movetype != H || AIlevel
value = ifelse(AIlevel||!AIlevel&&(teammode=single)&&enemynear,AIlevel&&enemynear,teammode=turns,roundno,1)
ignorehitpause = 1
persistent = 1

[State -2, Glowing Hair]
type = VarAdd
triggerall = !(gametime%3)
trigger1 = var(2) = 31 || var(2) = 52 || var(2) = 70 || var(2) = [112,113]
var(5) = ifelse(var(5)>=19000||var(5)<=1000&&(!life&&stateno!=[2183,2186]),-var(5),1000)
[State -2, Glowing Hair]
type = RemapPal
trigger1 = var(2) = 31 || var(2) = 52 || var(2) = 70 || var(2) = [112,113]
source = 1,1
dest = 1,var(2)+var(5)-ifelse(var(5)>=11000,2*(var(5)-10000),0)
[State -2, Glowing Hair]
type = Varset
triggerall=numenemy
triggerall=var(2)&&!numhelper(256)&&matchno=1&&roundno=1
triggerall=enemy,authorname="Mr.Ansatsuken"&&enemy,name="Broly"&&var(2)=enemy,var(2)
triggerall=(teamside!=1 && enemynear,Numhelper(256)=0)
trigger1 = var(2) = 31 || var(2) = 52 || var(2) = 70 || var(2) = [112,113]
ignorehitpause = 1
var(2) = ifelse(enemy, var(2)=112, 113, 112)

[state -2, No Clones]
type = remappal
triggerall = var(2) != 31 && var(2) != 52 && var(2) != 70 && var(2) != [112,113]
triggerall=numenemy && (var(2)=[1,118])
trigger1=var(2)&&!numhelper(256)&&matchno=1&&roundno=1
trigger1=enemy,authorname="Mr.Ansatsuken"&&enemy,name="Broly"&&enemy,var(2)=var(2)
source = 1, 1
dest = 1, Ifelse(teamside!=1 && enemynear,Numhelper(256)=0,enemy,var(2)+teamside,var(2))
ignorehitpause = 1
[state -2, Palette]
type = varset
trigger1 = numhelper(256)
trigger1=helper(256),var(2)=[1,118]
var(2)= helper(256),var(2)
ignorehitpause = 1
[state -2, Palette Selection]
type = remappal
triggerall = var(2) != 31 && var(2) != 52 && var(2) != 70 && var(2) != [112,113]
trigger1 = numhelper(256)
trigger1=helper(256),var(2)=[1,118]
source = 1, 1
dest = 1, var(2)
ignorehitpause = 1
[state -2, Continue Palette]
type = remappal
triggerall = var(2) != 31 && var(2) != 52 && var(2) != 70 && var(2) != [112,113]
trigger1= var(2)&&!AILevel&&matchno>1
source = 1, 1
dest = 1, var(2)
ignorehitpause = 1
[State -2, Energy Color - Super Saiyan Rosé]
type = varset
trigger1 = numhelper(256)
trigger1 = var(2)=17||var(2)=20||var(2)=54||var(2)=9||(var(2)=[30,31])||var(2)=35||var(2)=26||var(2)=37||(var(2)=[44,46])||(var(2)=103)||(var(2)=[50,51])||(var(2)=[72,77])||(var(2)=[82,85])||(var(2)=97)||(var(2)=[100,101])||(var(2)=92)||(var(2)=109)||(var(2)=105)||(var(2)=107)
var(44)= 1
[State -2, Energy Color - Super Saiyan]
type = varset
trigger1 = numhelper(256)
trigger1 = (var(2)=[4,8])||(var(2)=[32,33])||var(2)=16||var(2)=18||(var(2)=25)||(var(2)=63)||(var(2)=69)||(var(2)=75)||(var(2)=87)||(var(2)=91)||(var(2)=93)
var(44)= 3
[State -2, Energy Color - Super Saiyan Blue]
type = varset
trigger1 = numhelper(256)
trigger1 = (var(2)=15)||(var(2)=[21,23])||var(2)=19||var(2)=27||(var(2)=[29,30])||(var(2)=34)||(var(2)=36)||(var(2)=[47,48])||(var(2)=[52,53])||(var(2)=61)||(var(2)=65)||(var(2)=[78,79])||(var(2)=86)||(var(2)=95)||(var(2)=96)||(var(2)=99)||(var(2)=106)||(var(2)=110)||(var(2)=116)
var(44)= 2
[State -2, Energy Color - Legendary Super Saiyan]
type = varset
trigger1 = numhelper(256)
trigger1 = var(2)!=17&&var(2)!=20&&var(2)!=54&&var(2)!=9&&(var(2)!=[30,31])&&var(2)!=35&&var(2)!=26&&var(2)!=37&&(var(2)!=[44,46])&&(var(2)!=103)&&(var(2)!=[50,51])&&(var(2)!=[72,77])&&(var(2)!=[82,85])&&(var(2)!=97)&&(var(2)!=[100,101])&&(var(2)!=92)&&(var(2)!=109)&&(var(2)!=105)
trigger1 = (var(2)!=[4,8])&&(var(2)!=[32,33])&&var(2)!=16&&var(2)!=18&&(var(2)!=25)&&(var(2)!=63)&&(var(2)!=69)&&(var(2)!=75)&&(var(2)!=87)&&(var(2)!=91)&&(var(2)!=93)&&(var(2)!=99)&&(var(2)!=110)&&(var(2)!=116)
trigger1 = (var(2)!=15)&&(var(2)!=[21,23])&&var(2)!=19&&var(2)!=27&&(var(2)!=[29,30])&&(var(2)!=34)&&(var(2)!=36)&&(var(2)!=[47,48])&&(var(2)!=[52,53])&&(var(2)!=61)&&(var(2)!=65)&&(var(2)!=[78,79])&&(var(2)!=86)&&(var(2)!=95)&&(var(2)!=96)&&(var(2)!=106)&&(var(2)!=107)
var(44)= 0

[State -3, Energy Color]
type = remappal
trigger1 = numhelper(256)
source = 4050, 35
dest = 4050, ifelse(var(44)=1,1,ifelse(var(44)=2,2,ifelse(var(44)=3,10,35)))
[State -3, Energy Color]
type = remappal
trigger1 = numhelper(256)
source = 4050, 27
dest = 4050, ifelse(var(44)=1,4,ifelse(var(44)=2,5,ifelse(var(44)=3,11,27)))
[State -3, Energy Color]
type = remappal
trigger1 = numhelper(256)
source = 4050, 32
dest = 4050, ifelse(var(44)=1,4,ifelse(var(44)=2,5,ifelse(var(44)=3,11,32)))
[State -3, Energy Color]
type = remappal
trigger1 = numhelper(256)
source = 4050, 59
dest = 4050, ifelse(var(44)=1,56,ifelse(var(44)=2,58,ifelse(var(44)=3,54,59)))
[State -3, Energy Color]
type = remappal
trigger1 = numhelper(256)
source = 4050, 4
dest = 4050, ifelse(var(44)=1,1,ifelse(var(44)=2,2,ifelse(var(44)=3,5,4)))
[State -3, Energy Color]
type = remappal
trigger1 = numhelper(256)
source = 4050, 3
dest = 4050, ifelse(var(44)=1,10,ifelse(var(44)=2,10,ifelse(var(44)=3,7,3)))
[State -3, Energy Color]
type = remappal
trigger1 = numhelper(256)
source = 4050, 29
dest = 4050, ifelse(var(44)=1,20,ifelse(var(44)=2,7,ifelse(var(44)=3,10,29)))

[State 0, ZA WARUDO]
type = AssertSpecial
trigger1 = (stateno = [896,899]) || (stateno = [4101,4106]) || (stateno = [4301,4303]) || (stateno = [4401,4403])
flag = timerfreeze
ignorehitpause = 1
persistent = 1

[State -2, Wall Impact Dust]
type = Helper
triggerall=!numhelper(8111) && numenemy
trigger1=P2movetype=H && p2stateno=1111302 && enemynear,time=1
helperType = Normal
stateNo = 8111
ID = 8111
name = "Wall Impact Dust"
posType = P2
facing = -1
pos= floor(-25*const(size.xscale)),ceil(-100*const(size.yscale))
ownPal = 1
ignorehitpause=1

[State -2, Hit Detection]
type = VarSet
trigger1 = MoveContact = 1 && var(30) < 0
var(30) = HitPauseTime
ignoreHitPause = 1

[State -2, Hit Sound (PotS)]
type = PlaySnd
trigger1 = !var(48) || (var(48) && var(31)!=[1,6])
trigger1 = MoveContact = 1 && var(30) = HitPauseTime && hitdefattr != SCA,AT
trigger1 = MoveHit = 1 && var(31) >= 0
value = 2+ifelse((var(31)=[1,6]),10*var(48),0), var(31)
channel = 2
ignoreHitPause = 1

[State -2, Hit Sound (Infinite)]
type = PlaySnd
trigger1 = var(48) && var(31)=[1,6]
trigger1 = MoveContact = 1 && var(30) = HitPauseTime && hitdefattr != SCA,AT
trigger1 = MoveHit = 1 && var(31) >= 0
value = 12, var(31)
;channel = 2
ignoreHitPause = 1

[State -2, Guard Sound]
type = PlaySnd
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveGuarded = 1 && var(32) >= 0
value = 2, var(32)
channel = 2
ignoreHitPause = 1

[State -2, Hit Sparks]
type = Helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime && hitdefattr != SCA,AT
trigger1 = (MoveHit = 1 || movereversed = 1) && NumEnemy
trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8001
trigger2 = MoveGuarded = 1 && NumEnemy
trigger2 = var(34) = 8000 || var(34) = 8001
helperType = Normal
stateNo = ifElse(MoveGuarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = P1
pos = ceil(ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))) * (const(size.xScale))), ceil(var(36) * (const(size.yScale)))
facing = -1
size.xscale = 1
size.yscale = 1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State -2, Counter FX]
type = Helper
trigger1 = MoveHit = 1 && var(30) = HitPauseTime
trigger1 = NumEnemy && var(29)
trigger1 = !(HitDefAttr = SCA, AT) && (EnemyNear, MoveReversed != 1)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ceil(ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))) * (const(size.xScale))), ceil(var(36) * (const(size.yScale)))
facing = -1
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State -2, Hit Detection]
type = VarSet
trigger1 = 1
var(30) = -1

[State -2, Hit Detection]
type = VarRangeSet
trigger1 = MoveType = I
trigger2 = MoveType = H && Time
first = 30
last = 36
value = -1
ignoreHitPause = 1

[State -2, Counter Flag]
type = varset
trigger1 = numenemy
var(29) = (enemynear, movetype = A)
ignorehitpause = 1

[State -2, P2 Facing]
type = targetfacing
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover) && !(target, hitfall) && (target, time <= 1)
value = ifelse(p2dist x >= 0, -1, 1)
ignorehitpause = 1

[State -2, P2 Safe Fall]
type = targetstate
trigger1 = numtarget = 1
trigger1 = target, command = "recovery"
trigger1 = target, pos y >= -48 && target, vel y > 0
trigger1 = target, alive && target, hitfall && target, gethitvar(fall.recover)
trigger1 = target, stateno = 5030 || target, stateno = 5035 || target, stateno = 5050 || target, stateno = 5071
value = 5205
ignorehitpause = 1

[State -2, Original Combo End]
type = varset
trigger1 = var(20) < 0
trigger2 = movetype = H
trigger3 = roundstate != 2
var(20) = 0
ignorehitpause = 1
[State -2, Original Combo Time]
type = varadd
trigger1 = var(20) > 0
var(20) = -1
ignorehitpause = 1

[State -2, Stop Voice]
type = stopsnd
trigger1 = movetype = H && !time
channel = 3
ignorehitpause = 1

[State -2, Stop Voice]
type = stopsnd
trigger1 = movetype = H && !time
channel = 5
ignorehitpause = 1

[State -2, Throws Disallowed]
type = varset
triggerall = numenemy
trigger1 = enemynear, movetype != H
trigger1 = enemynear, stateno != 140
trigger1 = (enemynear, ctrl && enemynear, time >= 1) || (enemynear, time >= 8)
trigger2 = enemynear, movetype = A
trigger3 = (enemynear, stateno != [0, 52]) && (enemynear, stateno != [120, 155]) && (enemynear, stateno != [5000, 5120])
var(38) = 0
[State -2, Throws Disallowed]
type = varset
triggerall = numenemy
trigger1 = enemynear, stateno = [150, 155]
trigger2 = (enemynear, stateno = 51 || enemynear, stateno = 140) && (enemynear, prevstateno = [150, 155])
trigger3 = enemynear, movetype = H && enemynear, statetype != A && !var(20)
trigger4 = (enemynear, stateno = [5020, 5040]) && enemynear, hitfall = 0
trigger5 = enemynear, stateno = 40 && enemynear, prevstateno != 52 && (enemynear, anim != [0, 29])
var(38) = 1
ignorehitpause = 1

[State -2, attackvarbyhits]
type = varset
trigger1 = numenemy
fvar(10) = ifelse(enemynear, gethitvar(hitcount) < 3, 24, ifelse(enemynear, gethitvar(hitcount) >= 24, 2, 26 - enemynear, gethitvar(hitcount))) / 24.0
ignorehitpause = 1
[State -2, attackvarbyhits]
type = varset
trigger1 = numenemy && var(20)
fvar(10) = 0.72 * (10 -ifelse(enemynear, gethitvar(hitcount) >= 9, 9, enemynear, gethitvar(hitcount))) / 10.0
ignorehitpause = 1
[State -2, attackvarbyhitsreset]
type = varset
trigger1 = numenemy
trigger1 = (enemynear, movetype != H)
trigger2 = !numenemy
fvar(10) = ifelse(var(20), 0.72, 1)
ignorehitpause = 1

[State -2, dampenervar]
type = varset
trigger1 = 1
fvar(12) = fvar(10)*ifelse(var(53) > 0,1.1,1) * ifelse(stateno = [3000,3499], 0.75, ifelse(stateno = [3500,3999], 0.8, 1)); Abstract Reordered: Lv1 supers 75%, Lv2 supers 80%   (old: + (var(29) * 0.2))
ignorehitpause = 1
[State -2, dampener]
;Abstract Reordered: fvar(12) carries the Lv1/Lv2 super scale (helpers use it once); his own super hits
;also multiply by fvar(12) in their damage, so the scale is divided back out here to apply it only once
type = attackmulset
trigger1 = 1
value = fvar(12) / ifelse(stateno = [3000,3499], 0.75, ifelse(stateno = [3500,3999], 0.8, 1))
ignorehitpause = 1

[State -2, Free Juggling]
type = assertspecial
trigger1 = var(20) > 0 || numtarget(1150)
trigger2 = numhelper(3405)
trigger2 = helper(3405), var(3)
trigger3 = roundstate != 2
flag = nojugglecheck
ignorehitpause = 1
[State -2, Original Combo Guard]
type = assertspecial
trigger1 = var(20) > 0
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard
ignorehitpause = 1

[State -2, Custom Combo PalFX]
type = PalFX
trigger1 = var(20) > 60
time = 2
add = 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32)
ignoreHitPause = 1

[State -2, Custom Combo PalFX]
type = PalFX
trigger1 = var(20) = [1,60]
time = 2
add = 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64)
ignoreHitPause = 1


[State -2, MAX Mode End]
type = VarSet
trigger1 = var(53) < 0
trigger2 = RoundState != 2
trigger3 = !Alive
trigger4 = (StateNo = [3000,4999])
var(53) = 0
ignoreHitPause=1

[State -2, MAX Mode Time]
type = VarAdd
trigger1 = var(53) > 0
ignorehitpause = 1
var(53) = -1

[State -2, MAX Mode PowerSet]
type = PowerSet
trigger1 = var(53) > 0
ignorehitpause = 1
value = var(24)

[State -2, MAX Mode PalFX]
type = PalFX
triggerall = var(53) > 0
trigger1 = !(GameTime % 2)
time = 1
add = 60,60,60
ignorehitpause = 1

[State -2, MAX Mode Def Up(New)];special thanks to Jesuszilla
type = LifeAdd
triggerall = Alive && MoveType = H
triggerall = var(53) ; MAX Mode 
trigger1 = (FVar(8)-life)>0
value = ifElse((FVar(8)-life)<life,floor((FVar(8)-life)*0.125),0)

[State -2, Life Holder];special thanks to Jesuszilla
type = VarSet
trigger1 = 1
fvar(8) = Life
ignorehitpause = 1

;[State -2, ghost]
;type = trans
;trigger1 = palno = 8
;trans = addalpha
;alpha = 192, 64
;ignorehitpause = 1

[State -2, KO snd]
type = varset
trigger1 = alive && var(8) > 0
trigger2 = !alive && var(8) < 2
var(8) = ifelse(alive, 0, var(8) + 1)
ignorehitpause = 1
[State -2, KO snd]
type = playsnd
trigger1 = !alive && var(8) = 1
trigger1 = var(8) := 2
value = 11, 0
ignorehitpause = 1
	
[State -2, Defence Levels]
type = lifeadd
trigger1 = var(5) && (gethitvar(damage)<life)
trigger1 = gethitvar(hitcount) = 1 && gethitvar(damage)
value = ceil(ifelse(var(5) = 3, 0.3, ifelse(var(5) = 2, 0.2, 0.1)) * gethitvar(damage))
kill = 0
ignorehitpause = 1
[State -2, Defence Levels]
type = defencemulset
trigger1 = var(5)
value = ifelse(var(5) = 3, 0.7, ifelse(var(5) = 2, 0.8, 0.9)) * (const(data.fall.defence_mul) ** gethitvar(fallcount))
ignorehitpause = 1

[State -2, Voice Pos]
type = sndpan
trigger1 = 1
channel = 0
channel = 9
pan = 0
ignorehitpause = 1

[State -2, Debug]
type = displaytoclipboard
trigger1 = 1
text = "AI = %d Damage = %f"
params = AIlevel, fvar(12);, var(33)
ignorehitpause = 1

[State -2, Debug]
type = appendtoclipboard
trigger1 = 1
text = "\nBy Mr.Ansatsuken - http://www.ansatsukenmugen.webs.com"
ignorehitpause = 1


;===========================================================================
;===============================< -3 STATES >=================================
;===========================================================================
[Statedef -3]

[State -3, Gametime Var]
type = varset
trigger1 = 1
var(58) = gametime
ignorehitpause = 1

[State -3, Shadows]
type = afterimage
triggerall = time = 1 && !var(20) && !var(40)
trigger1 = stateno = 50 && var(9) = 3
trigger2 = stateno = [700, 715]
;trigger3 = (stateno = 1000 || stateno = 1050 || stateno = 1200 || stateno = 1250) && time = 1
time = 2
timegap = 1
framegap = 4
length = 9
palbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.9, 0.9, 0.9
palcontrast = 120, 120, 120
palpostbright = 0, 0, 0
trans = add1


[State -3, EX FX Decrement]
type = VarAdd
trigger1 = var(25) > 0
var(25) = -1

[State -3, EX FX Reset]
type = VarSet
trigger1 = (StateNo != [1000,2999]) || MoveType = H
var(25) = 0

[State -3, EX Flash]
type = PalFX
trigger1 = !(GameTime % 2) && var(25)
time = 1
color = 0
mul = 256, 224, 0
add = 128, 128, 128
ignoreHitPause = 1

[State -3, Lv1 Shadows]
type = afterimage
trigger1 = stateno = 3000 && time = 1
trigger2 = stateno = 3100 && time = 1
trigger3 = stateno = 3200 && time = 1
trigger4 = stateno = 3300 && time = 1
trigger5 = stateno = 3400 && time = 1
time = 2
timegap = 1
framegap = 10
length = 21
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add1

[State -3, Lv2 Shadows]
type = afterimage
trigger1 = stateno = 3500 && time = 1
trigger2 = stateno = 3600 && time = 1
trigger3 = stateno = 3700 && time = 1
trigger4 = stateno = 3800 && time = 1
trigger5 = stateno = 3900 && time = 1
time = 2
timegap = 1
framegap = 10
length = 21
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 32, 32, 160
palpostbright = 0, 0, 0
trans = add1

[State -3, Lv3 Shadows]
type = afterimage
trigger1 = stateno = 4000 && time = 1
trigger2 = stateno = 4100 && time = 1
trigger3 = stateno = 4200 && time = 1
trigger4 = stateno = 4300 && time = 1
trigger5 = stateno = 4400 && time = 1
time = 2
timegap = 1
framegap = 10
length = 21
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 160, 32, 32
palpostbright = 0, 0, 0
trans = add1

[State -3, AfterImagePersist]
type = afterimagetime
triggerall = movetype != H
trigger1 = var(20) || var(40)
trigger2 = stateno = 50 && var(9) = 3 && vel y < -1
trigger3 = stateno = [700, 715]
trigger4 = (stateno = [3000, 4999]) ;&& anim != 3211 && anim != 3222 && anim != 3261 && anim != 3272
time = 2

[State -3, Corner Push]
type = varset
trigger1 = fvar(5)
trigger1 = numtarget
trigger1 = target, hitover || (target, gethitvar(hitshaketime) > 0 && target, time <= 0)
fvar(5) = 0
[State -3, Corner Push]
type = varset
trigger1 = movecontact = 1 && numtarget
fvar(5) = target, gethitvar(xvel)
ignorehitpause = 1
[State -3, Corner Push]
type = posadd
triggerall = fvar(5)
triggerall = (statetype = S || statetype = C) && numtarget
triggerall = !hitpausetime && target, gethitvar(hitshaketime) <= 0
triggerall = (target, statetype = S || target, statetype = C) && !(target, gethitvar(yvel)) && !(target, hitfall)
trigger1 = target, frontedgebodydist <= abs(target, vel x)
trigger1 = (target, gethitvar(xvel) * target, facing) > 0
trigger2 = target, backedgebodydist <= abs(target, vel x)
trigger2 = (target, gethitvar(xvel) * target, facing) < 0
x = ifelse(target, frontedgebodydist <= 0, -1, 1) * (target, facing) * fvar(5)
[State -3, Corner Push]
type = varset
trigger1 = fvar(5)
trigger1 = abs(fvar(5)) < 1.0
fvar(5) = 0
[State -3, Corner Push]
type = varset
trigger1 = numtarget
trigger1 = target, gethitvar(hitshaketime) <= 0
fvar(5) = fvar(5) * 0.85

[State -3, Underground Juggle Prevention]
type = targetbind
trigger1 = movecontact = 1
trigger1 = numtarget && numenemy
trigger1 = (target, time = 0) && (target, ID = enemynear, ID)
trigger1 = !(target, hitshakeover) && (target, pos y > 0)
pos = ceil(p2dist x), ceil(-pos y)
ignorehitpause = 1

[State -3, Prevent Crossup]
type = width
trigger1 = movetype != H
edge = 8, 0
ignorehitpause = 1

[State -3, Variable Height]
type = playerpush
triggerall = statetype = A && movetype != H && numenemy = 1 && stateno != 1220
triggerall = p2bodydist x = [ -(enemynear, const(size.ground.back) + enemynear, const(size.ground.front)) , 0]
trigger1 = p2statetype = S
trigger1 = p2dist y >= (enemynear, const(size.height) - 30)
trigger2 = p2statetype = C
trigger2 = p2dist y >= (enemynear, const(size.height) - 56)
trigger3 = p2statetype = L
trigger3 = p2dist y >= 12
value = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type = playsnd
triggerall = alive && time = 1
triggerall = stateno = 5000 || stateno = 5010
trigger1 = gethitvar(animtype) >= 2 && random < 500
trigger2 = gethitvar(animtype) = 1 && random < 375
trigger3 = gethitvar(animtype) = 0 && random < (250 * (AIlevel ** 2 / 64.0))
value = 5000, 1 + (random % 5)
channel = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type = playsnd
triggerall = alive && time = 1
trigger1 = (stateno = 5000 || stateno = 5010) && numenemy
trigger1 = gethitvar(fall) || (enemynear, hitdefattr = SCA, SA, HA)
trigger2 = (stateno = 5020 || stateno = 5070 || stateno = 5080)
trigger3 = (stateno = 5050 || stateno = 5100) && (prevstateno != [5000, 5199])
value = 5000, 1 + (random % 5)
channel = 0
ignorehitpause = 1

[State -3, NoWalk after Parry]
type = assertspecial
trigger1 = prevstateno = 700
trigger1 = stateno = 0 && time < 7
flag = nowalk

[State -3, Cheap KO]
type = changestate
trigger1 = !alive && (stateno = [5000, 5010])
trigger1 = (prevstateno = [130, 131]) || (prevstateno = [140, 141]) || (prevstateno = [150, 153])
value = 5130
ignorehitpause = 1

[State -3, Special Finish]
type = Helper
triggerall = roundstate >= 2 && var(59) && stateno != [3000,4999]
triggerall = WinKo && NumHelper(8600)=0 && !var(20)
trigger1 = (stateno = [1000, 2999])&&movetype!=H
trigger2 = NumHelper(1005) && helper(1005), var(3)
trigger3 = NumHelper(1015) && helper(1015), var(3)
trigger4 = NumHelper(1055) && helper(1055), var(3)
trigger5 = NumHelper(1065) && helper(1065), var(3)
trigger6 = NumHelper(1305) && helper(1305), var(3)
trigger7 = NumHelper(1355) && helper(1355), var(3)
ID = 8600
stateno = 8600
postype = back
pos = 0,0
pausemovetime = 999999
supermovetime = 999999
ignorehitpause = 1
ownpal = 1
persistent=0

[State -3, Custom Combo Finish]
type = helper
triggerall = winKO && roundstate = 3
triggerall = var(20) && !numhelper(8600)
trigger1 = movehit = [1, 4]
trigger2 = NumHelper(1005) && helper(1005), var(3)
trigger3 = NumHelper(1015) && helper(1015), var(3)
trigger4 = NumHelper(1055) && helper(1055), var(3)
trigger5 = NumHelper(1065) && helper(1065), var(3)
trigger6 = NumHelper(1305) && helper(1305), var(3)
trigger7 = NumHelper(1355) && helper(1355), var(3)
helpertype = normal
stateno = 8600
ID = 8600
name = "KO FX"
postype = left
pos = GameWidth/2 + (0), -120
ownpal = 1
ignorehitpause = 1
pausemovetime = 999
supermovetime = 999

[State -3, Super Finish]
type = helper
triggerall = winKO
triggerall = roundstate = 3 && !numhelper(8600)
trigger1 = (((movehit = [1, 4])||(stateno=[4000,4009])||(stateno=[4300,4309])) && numtarget) && (stateno = [3000, 4999])
trigger2 = stateno = 4001 && animelemtime(5) >= 0
trigger3 = numhelper(3005)
trigger3 = helper(3005), var(3)
trigger4 = numhelper(3105)
trigger4 = helper(3105), var(3)
trigger5 = numhelper(3205)
trigger5 = helper(3205), var(3)
trigger6 = numhelper(3305)
trigger6 = helper(3305), var(3)
trigger7 = numhelper(3505)
trigger7 = helper(3505), var(3)
trigger8 = numhelper(3605)
trigger8 = helper(3605), var(3)
trigger9 = numhelper(3821)
trigger9 = helper(3821), var(3)
trigger10 = numhelper(3905)
trigger10 = helper(3905), var(3)
trigger11 = numhelper(4005)
trigger11 = helper(4005), var(3)
trigger12 = numhelper(4111)
trigger13 = numhelper(4205)
trigger13 = helper(4205), var(3)
helpertype = normal
stateno = 8605 + 0 * (var(0) := stateno)
ID = 8600
name = "KO FX"
postype = left
pos = GameWidth/2 + (0), -120
ownpal = 1
ignorehitpause = 1
pausemovetime = 999
supermovetime = 999