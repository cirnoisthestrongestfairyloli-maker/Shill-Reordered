; ________________________
;| Broly by Mr.Ansatsuken |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================< NORMAL STATES >========================================
;============================================================================================

;=========< Stand Light Punch >==========
[Statedef 200]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget, 15, 8)
anim = 200
velset = 0, 0
poweradd = 0
sprpriority = 1
ctrl = 0
facep2 = 1
;
;[State 200, Snd]
;type = playsnd
;trigger1 = animelem = 3 && random < 200
;value = 3, ifelse(random < 500, 3, 6)
;channel = 0

[State 200, Snd]
type = playsnd
trigger1 = animelem = 2 && (anim=200)
value = 1, 1
channel = 1

[State 200, Hit]
type = hitdef
;trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = animelem = 2
attr = S, NA
damage = 25, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MA
priority = 4, Hit
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -85
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.slidetime = 12 + 2 * var(29)
ground.hittime = 12 + 2 * var(29)
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
air.type = Low
air.hittime = 120
air.velocity = ifelse(var(20), -2.5, -5), -7.35
air.cornerpush.veloff = 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 100), var(36):= -79
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Stand Medium Punch >==========
[Statedef 205]
type = S
movetype = A
physics = S
;juggle = ifelse(numtarget, 15, 8)
anim = 205
velset = 0, 0
poweradd = 18 * !var(20)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(11)<0
x = 3.33 - (animelemtime(1)*0.1)
[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(11)>=0
x = 0

[State 1000, Stop voice from previous move]
type = stopSnd
trigger1 = animelem = 3
channel = 3
[State 1000, Voice]
type = playsnd
trigger1 = animelem = 3
value = 3, ifelse(prevstateno=700,3,2)
channel = 0
[State 205, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 205, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = !time
;trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
attr = S, NA
damage = 50, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -78
hitSound = -1 + 0 * (var(31) := ifelse(prevstateno=700,3,2))
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.slidetime = 15 + 3 * var(29)
ground.hittime = 20
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -5.78, -10.47)
air.type = Low
air.hittime = 120
air.velocity = ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 144) * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)
sparkNo = -1 + 0 * (var(33) := ifelse(prevstateno=700,8012,8011))
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 143), var(36) := -90
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time=10
envshake.ampl=Ifelse(random<=500,-3,3)

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 205, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Stand Hard Punch >==========
[Statedef 210]
type = S
movetype = A
physics = S
juggle = ifelse(p2movetype = A, 8, ifelse(numtarget, 15, 8))
anim = 210
velset = 0, 0
poweradd = 18 * !var(20)
sprpriority = 1
ctrl = 0
facep2 = 1

;[State 195, Snd]
;type = playsnd
;trigger1 = animelemtime(8)=0
;value = 0, 41

;[State 1260, ExFX]
;type = explod
;trigger1 = animelemtime(11)=0
;anim = 8102
;sprpriority = -1
;postype = p1
;pos = 0, 0
;scale = 0.75, 0.75
;removetime  = -2
;ownpal = 1
;[State 195, Snd]
;type = playsnd
;trigger1 = animelemtime(11)=0
;value = 5, 4
;[State 3010, EnvShake]
;type = EnvShake
;trigger1 = animelemtime(11)=0
;time = 6
;ampl = 8

[State 1000, Stop voice from previous move]
type = stopSnd
trigger1 = animelem = 3
channel = 3
[State 1000, Voice]
type = playsnd
trigger1 = animelem = 3
value = 3, 5
channel = 0
[State 210, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
channel = 1

[State 210, Hit]
type = hitdef
;trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = !time && anim = 210
attr = S, NA
damage = 72, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -15, -69
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = Low
ground.slidetime = 18 + 4 * var(29)
ground.hittime = 18 + 4 * var(29)
ground.velocity = ifelse(var(20), -2.5, -5), -3.5
ground.cornerpush.veloff = 0;ifelse(var(20), -6.82, -12.74)
air.type = Low
air.hittime = 120
air.velocity = ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216) * !var(20), 36 * !var(20)
givepower = 36, 36
fall = 1
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 110), var(36) := -98
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time=12
envshake.ampl=Ifelse(random<=500,-4,4)

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
statetype = S
movetype = I

[State 210, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Stand Light Kick >==========
[Statedef 215]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget, 15, 8)
anim = 215
velset = 0, 0
poweradd = 0
sprpriority = 1
ctrl = 0
facep2 = 1
;
;[State 215, Snd]
;type = playsnd
;trigger1 = animelem = 2 && random < 200
;value = 3, ifelse(random < 500, 3, 6)
;channel = 0

[State 215, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
channel = 1

[State 215, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = !time && anim = 215
attr = S, NA
damage = 21, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MA
priority = 4, Hit
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -35
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = Low
ground.slidetime = 12 + 2 * var(29)
ground.hittime = 12 + 2 * var(29)
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
air.type = Low
air.hittime = 120
air.velocity = ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff = 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 76), var(36) := -105
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 215, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========< Stand Medium Kick >==========
[Statedef 220]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget, 15, 8)
anim = 220
velset = 0, 0
poweradd = 18 * !var(20)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 1000, Stop voice from previous move]
type = stopSnd
trigger1 = animelem = 5
channel = 3
[State 1000, Voice]
type = playsnd
trigger1 = animelem = 5
value = 3, 0
channel = 0
[State 235, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, ifelse(prevstateno=700,6,5)
channel = 1

[State 220, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = !time && anim = 220
attr = S, NA
damage = 40, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 7, 14)
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -93
hitSound = -1 + 0 * (var(31) := ifelse(prevstateno=700,6,5))
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.slidetime = 15 + 3 * var(29)
ground.hittime = 15 + 3 * var(29)
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -5.78, -10.47)
air.type = Low
air.hittime = 120
air.velocity = ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 144) * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)
sparkNo = -1 + 0 * (var(33) := ifelse(prevstateno=700,8012,8011))
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 71), var(36) := -110
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time=10
envshake.ampl=Ifelse(random<=500,-3,3)

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 220, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1



;=========< Stand Hard Kick >==========
[Statedef 225]
type = S
movetype = A
physics = S
;juggle = ifelse(numtarget, 15, 8)
anim = 225
velset = 0, 0
poweradd = 18 * !var(20)
sprpriority = 1
ctrl = 0
facep2 = 1

;[State 0, VelSet]
;type = VelSet
;trigger1 = animelemtime(6)>=0
;trigger1 = animelemtime(11)<0
;x = 2.8 - (animelemtime(6)*0.17)
;[State 0, VelSet]
;type = VelSet
;trigger1 = animelemtime(11)>=0
;x = 0

[State 1000, Stop voice from previous move]
type = stopSnd
trigger1 = animelem = 3
channel = 3
[State 1000, Voice]
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
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.slidetime = 18 + 4 * var(29)
ground.hittime = 30
ground.velocity = ifelse(var(20), -5.77, -13), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -6.82, -12.74)
air.type = Low
air.hittime = 120
air.velocity = ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216) * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
air.fall = 1
fall.recover = 0
fall.recovertime = 120
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 67), var(36) := -129
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time=12
envshake.ampl=Ifelse(random<=500,-4,4)
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


;=========< Crouch Light Punch >==========
[Statedef 230]
type = C
movetype = A
physics = C
juggle = ifelse(numtarget, 15, 8)
anim = 230
velset = 0, 0
poweradd = 0
sprpriority = 1
ctrl = 0
facep2 = 1
;
;[State 230, Snd]
;type = playsnd
;trigger1 = animelem = 3 && random < 200
;value = 3, ifelse(random < 500, 3, 6)
;channel = 0

[State 230, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1

[State 230, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = !time
attr = C, NA 
damage = 22, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = M 
hitflag = MAF 
priority = 4, Hit 
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -51
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = Low
ground.slidetime = 12 + 2 * var(29)
ground.hittime = 12 + 2 * var(29)
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
air.type = Low
air.hittime = 120
air.velocity = ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff = 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -55
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 230, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouch Medium Punch >==========
[Statedef 235]
type = C
movetype = A
physics = C
juggle = ifelse(numtarget, 15, 8)
anim = 235
velset = 0, 0
poweradd = 18 * !var(20)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 1000, Stop voice from previous move]
type = stopSnd
trigger1 = animelem = 2
channel = 3
[State 1000, Voice]
type = playsnd
trigger1 = animelem = 2
value = 3, 4
channel = 0
[State 235, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 2
channel = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(2)>=0 && animelemtime(6)<0
x = (9 - (animelemtime(2)*0.3))*0.5
[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(6)>=0
x = 0
[State 235, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = !time
attr = C, NA 
damage = 45, 0
animtype = Medium 
air.animtype = Back
fall.animtype = Back
guardflag = M 
hitflag = MAF 
priority = 4, Hit 
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -46
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = Low
ground.slidetime = 15 + 3 * var(29)
ground.hittime = 15 + 3 * var(29)
ground.velocity = ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -5.78, -10.47)
air.type = Low
air.hittime = 120
air.velocity = ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 144) * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 86), var(36) := -71
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time=10
envshake.ampl=Ifelse(random<=500,-3,3)

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 235, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouch Hard Punch >==========
[Statedef 240]
type = C
movetype = A
physics = C
juggle = ifelse(numtarget, 15, 8)
anim = 240
velset = 0, 0
poweradd = 18 * !var(20)
sprpriority = 1
ctrl = 0
facep2 = 1

;[State 1260, ExFX]
;type = explod
;trigger1 = animelemtime(5)=0
;anim = 8100
;sprpriority = 2
;postype = p1
;pos = 90, 0
;scale = 0.75, 0.75
;removetime  = -2
;ownpal = 1
;[State 1260, ExFX]
;type = explod
;trigger1 = animelemtime(5)=0
;anim = 7104
;sprpriority = -1
;postype = p1
;pos = 85, 0
;scale = 0.75, 0.75
;removetime  = -2
;ownpal = 1
;[State 195, Snd]
;type = playsnd
;trigger1 = animelemtime(5)=0
;value = 5, 3
;[State 3010, EnvShake]
;type = EnvShake
;trigger1 = animelemtime(5)=0
;time = 6
;ampl = 8

[State 1000, Stop voice from previous move]
type = stopSnd
trigger1 = animelem = 4
channel = 3
[State 1000, Voice]
type = playsnd
trigger1 = animelem = 4
value = 3, 1
channel = 0
[State 235, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 3
channel = 1

[State 240, Hit]
type = hitdef
trigger1 = (var(47)=2 || (p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = !time
attr = C, NA
damage = 70, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit 
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
;sparkno = s7010 + (random % 8)
fall = 1
;guard.sparkno = s7000
;sparkxy = -10, -73
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = Low
ground.slidetime = 18 + 4 * var(29)
ground.hittime = 18 + 4 * var(29)
ground.velocity = -ifelse(var(47)=2,1,3.25), -ifelse(var(47)=2,8.25,7)
ground.cornerpush.veloff = 0;ifelse(var(20), -6.82, -12.74)
air.type = Low
air.hittime = 120
air.velocity = -ifelse(var(47)=2,1,3.25), -ifelse(var(47)=2,8.25,7)
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216) * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)
forcestand = 1
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -143
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time=12
envshake.ampl=Ifelse(random<=500,-4,4)

[State 240, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040 && !movecontact
trigger1 = animelem = 6
attr = C, NA
damage = 70, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit 
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
;sparkno = s7010 + (random % 8)
fall = 1
;guard.sparkno = s7000
;sparkxy = -10, -73
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = Low
ground.slidetime = 18 + 4 * var(29)
ground.hittime = 18 + 4 * var(29)
ground.velocity = -ifelse(var(47)=2,1,3.25), -ifelse(var(47)=2,8.25,7)
ground.cornerpush.veloff = 0;ifelse(var(20), -6.82, -12.74)
air.type = Low
air.hittime = 120
air.velocity = -ifelse(var(47)=2,1,3.25), -ifelse(var(47)=2,8.25,7)
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216) * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)
forcestand = 1
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -190
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time=12
envshake.ampl=Ifelse(random<=500,-4,4)

[State 420, ChangeState]
type=ChangeState
triggerall=var(47)=2&&movehit=1
trigger1 = !AIlevel && command="holdup"
trigger2 = AIlevel && random<850
value=40
ctrl=0
ignorehitpause=1

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 240, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouch Light Kick >==========
[Statedef 245]
type = C
movetype = A
physics = C
juggle = ifelse(numtarget, 15, 8)
anim = 245
velset = 0, 0
poweradd = 0
sprpriority = 1
ctrl = 0
facep2 = 1

;[State 230, Snd]
;type = playsnd
;trigger1 = animelem = 3 && random < 200
;value = 3, ifelse(random < 500, 3, 6)
;channel = 0
[State 235, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1

[State 245, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = !time
attr = C, NA 
damage = 20, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = L
hitflag = MAF 
priority = 4, Hit 
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -4
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = Low
ground.slidetime = 12 + 2 * var(29)
ground.hittime = 12 + 2 * var(29)
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
air.type = Low
air.hittime = 120
air.velocity = ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff = 0
down.velocity = -2, -2
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 99), var(36) := -31
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 245, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouch Medium Kick >==========
[Statedef 250]
type = C
movetype = A
physics = C
juggle = ifelse(numtarget, 15, 8)
anim = 250
velset = 0, 0 
poweradd = 18 * !var(20)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 1000, Stop voice from previous move]
type = stopSnd
trigger1 = animelem = 2
channel = 3
[State 1000, Voice]
type = playsnd
trigger1 = animelem = 2
value = 3, 0
channel = 0
[State 235, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
channel = 1

[State 250, Hit]
type = hitdef
trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = !time
attr = C, NA 
damage = 40, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = L 
hitflag = MAF 
priority = 4, Hit 
fall = 1
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -5
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = Low
ground.slidetime = 15 + 3 * var(29)
ground.hittime = 15 + 3 * var(29)
ground.velocity = -3.25, -7
ground.cornerpush.veloff = 0;ifelse(var(20), -5.78, -10.47)
air.type = Low
air.hittime = 120
air.velocity = -3.25, -7
air.cornerpush.veloff = 0
down.velocity = -3, -3
getpower = ifelse(p2movetype = H, 72, 144) * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -183
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time=10
envshake.ampl=Ifelse(random<=500,-3,3)

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 250, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=========< Crouch Hard Kick >==========
[Statedef 255]
type = C
movetype = A
physics = C
;juggle = ifelse(var(1) >= 2, 1, ifelse((p2movetype = H && p2statetype = A), 7, 9))
anim = 255
velset = 0, 0
poweradd = 18 * (!var(20) && prevstateno != 750)
sprpriority = 1
ctrl = 0
facep2 = 1

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

[State 1000, Stop voice from previous move]
type = stopSnd
trigger1 = animelem = 3
channel = 3
[State 1000, Voice]
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
getpower = ifelse(p2movetype = H, 72, 216) * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.67
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
envshake.time=12
envshake.ampl=Ifelse(random<=500,-4,4)

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 255, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========< Air Light Punch >==========
[Statedef 260]
type = A
movetype = A
physics = A
;juggle = ifelse(numtarget, 15, 8)
anim = 260
poweradd = 0
sprpriority = 1
ctrl = 0

;[State 230, Snd]
;type = playsnd
;trigger1 = animelem = 2 && random < 200
;value = 3, ifelse(random < 500, 3, 6)
;channel = 0
[State 235, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1

[State 260, Hit]
type = hitdef
;trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = !time && anim = 260
attr = A, NA 
damage = 25, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = HA 
hitflag = MAF 
priority = 4, Hit 
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -50
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
guard.velocity = ifelse(var(20), -2.66, -4.49)
guard.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
air.type = Low
air.hittime = 120
air.velocity = ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff = 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = var(47)<2 && !var(20)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 116), var(36) := -118
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 260, Hit]
type = hitdef
;trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = !time && anim = 261
attr = A, NA 
damage = 25, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = HA 
hitflag = MAF 
priority = 4, Hit 
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -50
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
guard.velocity = ifelse(var(20), -2.66, -4.49)
guard.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
air.type = Low
air.hittime = 120
air.velocity = ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff = 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -55
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48


;=========< Air Medium Punch >==========
[Statedef 265]
type = A
movetype = A
physics = A
;;juggle = ifelse(numtarget, 15, ifelse((vel x), 1, 8))
anim = 265
poweradd = 18 * !var(20)
sprpriority = 1
ctrl = 0

[State 1000, Stop voice from previous move]
type = stopSnd
trigger1 = animelem = 3
channel = 3
[State 1000, Voice]
type = playsnd
trigger1 = animelem = 3
value = 3, 2
channel = 0
[State 235, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 265, Hit]
type = hitdef
;trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = !time
attr = A, NA 
damage = 45, 0
animtype = Medium 
air.animtype = Back
fall.animtype = Back
guardflag = HA 
hitflag = MAF 
priority = 4, Hit 
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -88
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
guard.velocity = ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff = 0;ifelse(var(20), -5.78, -10.47)
air.type = Low
air.hittime = 120
air.velocity = ifelse(var(20), -1.33, -2.67), -5.5
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 144) * !var(20), 36 * !var(20)
givepower = 36, 36
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
airguard.cornerpush.veloff = 0
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 139), var(36) := -78
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time=10
envshake.ampl=Ifelse(random<=500,-3,3)


;=========< Air Hard Punch >==========
[Statedef 270]
type = A
movetype = A
physics = A
;juggle = ifelse(numtarget, 15, 8)
anim = 270
poweradd = 18 * !var(20)
sprpriority = 1
ctrl = 0

[State 1000, Stop voice from previous move]
type = stopSnd
trigger1 = animelem = 2
channel = 3
[State 1000, Voice]
type = playsnd
trigger1 = animelem = 2
value = 3, 1
channel = 0
[State 235, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 3
channel = 1

[State 270, Hit]
type = hitdef
;trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = !time
attr = A, NA
damage = 65, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = HA 
hitflag = MAF 
priority = 4, Hit 
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -52
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0;ifelse(var(20), -6.82, -12.74)
air.type = Low
air.hittime = 120
air.velocity = ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216) * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 105), var(36) := -138
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time=12
envshake.ampl=Ifelse(random<=500,-4,4)

;=========< Air Light Kick >==========
[Statedef 275]
type = A
movetype = A
physics = A
;juggle = ifelse(numtarget, 15, 8)
anim = 275
poweradd = 0
sprpriority = 1
ctrl = 0

;[State 230, Snd]
;type = playsnd
;trigger1 = animelem = 3 && random < 200
;value = 3, ifelse(random < 500, 3, 6)
;channel = 0
[State 235, Snd]
type = playsnd
trigger1 = animelem = 1
value = 1, 4
channel = 1

[State 275, Hit]
type = hitdef
;trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = !time
attr = A, NA 
damage = 22, 0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = HA 
hitflag = MAF 
priority = 4, Hit 
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -42
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
guard.velocity = ifelse(var(20), -2.66, -4.49)
guard.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
air.type = Low
air.hittime = 120
air.velocity = ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff = 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = var(47)<2 && !var(20)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 63), var(36) := -81
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

;=========< Air Medium Kick >==========
[Statedef 280]
type = A
movetype = A
physics = A
;juggle = ifelse(numtarget, 15, 8)
anim = 280
poweradd = 18 * !var(20)
sprpriority = 1
ctrl = 0

[State 1000, Stop voice from previous move]
type = stopSnd
trigger1 = animelem = 2
channel = 3
[State 1000, Voice]
type = playsnd
trigger1 = animelem = 2
value = 3, 4
channel = 0
[State 235, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
channel = 1

[State 280, Hit]
type = hitdef
;trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = !time
attr = A, NA 
damage = 40, 0
animtype = Medium 
air.animtype = Back
fall.animtype = Back
guardflag = H
hitflag = MAF 
priority = 4, Hit 
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -48
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
guard.velocity = ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff = 0;ifelse(var(20), -5.78, -10.47)
air.type = Low
air.hittime = 120
air.velocity = ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 144) * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
airguard.cornerpush.veloff = 0
fall.recover = 1
air. fall = 1
fall.recovertime = 120
forcenofall = var(47)<2 && !var(20)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 63), var(36) := -81
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time=10
envshake.ampl=Ifelse(random<=500,-3,3)
;
;[State 280, Type]
;type = statetypeset
;trigger1 = anim = 280 && animelemtime(8) >= 0
;movetype = I

;=========< Air Hard Kick >==========
[Statedef 285]
type = A
movetype = A
physics = A
;juggle = ifelse(numtarget, 15, 8)
anim = 285
poweradd = 18 * !var(20)
sprpriority = 1
ctrl = 0

[State 1000, Stop voice from previous move]
type = stopSnd
trigger1 = animelem = 2
channel = 3
[State 1000, Voice]
type = playsnd
trigger1 = animelem = 2
value = 3, 5
channel = 0
[State 235, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 6
channel = 1

[State 285, Hit]
type = hitdef
;trigger1 = ((p2stateno != [5020, 5050]) || var(20) || roundstate = 3) && p2stateno != 5040
trigger1 = !time
attr = A, NA
damage = 75, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = H
hitflag = MAF 
priority = 4, Hit 
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -48
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.hittime = 12
ground.slidetime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff = 0;ifelse(var(20), -6.82, -12.74)
air.type = Low
air.hittime = 120
air.velocity = ifelse(var(20), -2.5, -5), 7
air.fall = 1
air.cornerpush.veloff = 0
getpower = ifelse(p2movetype = H, 72, 216) * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
airguard.cornerpush.veloff = 0
fall.recover = 0
air. fall = 1
fall.recovertime = 120
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -88
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time=12
envshake.ampl=Ifelse(random<=500,-4,4)

[State 0]
type = Explod
trigger1 = animelem = 2
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
trigger1 = animelem = 2
ID = 112
anim = 1126
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
trigger1 = animelem = 2
value = S5,17
;=========================================================================
;===============================< THROWS >==================================
;=========================================================================
;========< THROW CONTROLLER >==========
; Throw
[Statedef 800]
type = S
movetype = A
physics = S
juggle = 15
velset = 0, 0
ctrl = 0
anim = 800
sprpriority = 1
facep2 = 1
poweradd = 18 * !var(20)

[State 800, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "c" || command = "b", 1, 2)
[State 800, Strength]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse(ceil(random<500),2,1)

[State 800, Tech Hit]
type = varset
trigger1 = 1
var(19) = 0
[State 800, Tech Hit]
type = varset
trigger1 = numenemy
trigger1 = enemynear, statetype != A
trigger1 = (enemynear, stateno = [0, 999]) && (enemynear, stateno != [100, 119]) && (enemynear, stateno != [200, 799])
var(19) = 7

[State 800, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 800, Hit]
type = hitdef
trigger1 = !time && (var(10) = [1, 2])
trigger1 = !var(38)
attr = S, NT 
hitflag = M-
priority = 1, Miss
sparkno = -1
hitsound = s0, 800
p1facing = ifelse((!AIlevel && command = "holdfwd") || (AIlevel && frontedgedist < backedgedist), ifelse(var(10)=1,-1,1), ifelse(var(10)=1,1,-1))
p2facing = -1
p1stateno = ifelse((!AIlevel && command = "holdfwd") || (AIlevel && frontedgedist < backedgedist), ifelse(var(10)=1,803,801), ifelse(var(10)=1,801,803))
guard.dist = 0
fall = 1
fall.recover = 1
fall.recovertime = 120

[State 800, Hit]
type = hitdef
trigger1 = !time && var(10) = 3
trigger1 = !var(38)
attr = S, NT 
hitflag = M-
priority = 1, Miss
sparkno = -1
hitsound = s0, 800
p1facing = ifelse((!AIlevel && command = "holdfwd") || (AIlevel && frontedgedist < backedgedist), ifelse(var(10)=1,-1,1), ifelse(var(10)=1,1,-1))
p2facing = -1
p1stateno = ifelse((!AIlevel && command = "holdfwd") || (AIlevel && frontedgedist < backedgedist), ifelse(var(10)=1,803,801), ifelse(var(10)=1,801,803))
guard.dist = 0
fall = 1
fall.recover = 1
fall.recovertime = 120

[State 800, misssnd]
type = playsnd
trigger1 = animelem = 3
value = 4, 31
channel = 0
[State 800, misssnd]
type = playsnd
trigger1 = animelem = 3
value = 4, 31
channel = 2

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 800, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- PLAYER ---
[Statedef 801]
type = S
movetype = A
physics = S
anim = 801
ctrl = 0
sprpriority = 1

[State Tech Hit]
type = changestate
trigger1 = numtarget && var(19)
trigger1 = (target, command = "holdfwd" || target, command = "holdback") && target, command != "holdup" && target, command != "holddown"
trigger1 = (target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z")
value = 890
[State Tech Hit]
type = varadd
trigger1 = var(19) > 0
var(19) = -1

[State Throw]
type = targetstate
trigger1 = !time
value = 802

[State Width]
type = width
trigger1 = 1
edge = 30, 0

[State 801, Bind 1]
type = targetbind
trigger1 = 1
pos = 45, 0

[State 801, End]
type = changestate
trigger1 = !animtime
value = ifelse(var(10) = 2, 810, 805)
ctrl = 0

;--- PLAYER TURNS ---
[Statedef 803]
type = S
movetype = A
physics = S
anim = 803
ctrl = 0
sprpriority = 1

[State Tech Hit]
type = changestate
trigger1 = numtarget && var(19)
trigger1 = (target, command = "holdfwd" || target, command = "holdback") && target, command != "holdup" && target, command != "holddown"
trigger1 = (target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z")
value = 890
[State Tech Hit]
type = varadd
trigger1 = var(19) > 0
var(19) = -1

[State Throw]
type = targetstate
trigger1 = !time
value = 804

[State Width]
type = width
trigger1 = 1
edge = 30, 30

[State 803, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = -45, 0
[State 803, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -25, 0
[State 803, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 0, 0
[State 803, Bind 4]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 22, 0
[State 803, Bind 5]
type = targetbind
trigger1 = animelemtime(5) >= 0
pos = 45, 0

[State 803, spr]
type = sprpriority
trigger1 = 1
value = 1 -2 * (animelemtime(2) >= 0 && animelemtime(5) < 0)

[State 803, End]
type = changestate
trigger1 = !animtime
value = ifelse(var(10) = 2, 810, 805)
ctrl = 0

;--- TARGET ---
[Statedef 802]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 802, Anim]
type = changeanim2
trigger1 = !time
value = 802
[State Safety]
type = selfstate
trigger1 = time >= 60
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1


[Statedef 804]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 804, Anim]
type = changeanim2
trigger1 = !time
value = 804
[State Safety]
type = selfstate
trigger1 = time >= 60
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1


;========< GIGANTIC KICK >==========
; Gigantic Kick
[Statedef 805]
type = S
movetype = A
physics = S
anim = 805
ctrl = 0

[State 805, throw]
type = targetstate
trigger1 = !time
value = 806
[State 805, throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 235, Snd]
type = playsnd
trigger1 = animelem = 7
value = 1, 6
channel = 1

[State Tech Hit]
type = changestate
trigger1 = numtarget && var(19)
trigger1 = (target, command = "holdfwd" || target, command = "holdback") && target, command != "holdup" && target, command != "holddown"
trigger1 = (target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z")
value = 890
[State Tech Hit]
type = varadd
trigger1 = var(19) > 0
var(19) = -1

[State 805, width]
type = width
trigger1 = animelemtime(4) < 0
edge = 0, 40
[State 805, width]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
edge = 0, 70

[State 805, throw snd]
type = playsnd
trigger1 = animelem = 4
value = S4, 30
channel = 0

[State 7901]
type = Width
trigger1 = AnimElemTime(1) = 0
edge = Ceil(84 * Const(Size.XScale)), 0
[State 1310, target1]
type = targetbind
trigger1 = animelem = 1
pos = 80,0

[State 1310, target1]
type = targetbind
trigger1 = animelem = 3
pos = 50,-30

[State 1310, target1]
type = targetbind
trigger1 = animelem = 4
pos = 15,-130
;
[State 1310, target1]
type = targetvelset
trigger1 = animelemtime(4)>=0 && animelemtime(7)<0
x = 0
y = -7.5+animelemtime(4)*0.5
[State 1310, target1]
type = targetbind
trigger1 = animelemtime(7)=0
pos = 15,-80


;[State 1005, hitspark]
;type = helper
;trigger1 = AnimElemTime(14) = 0
;helperType = Normal
;stateNo = 8013
;ID = 8000
;name = "Spark"
;posType = P1
;pos = Ceil(10 * Const(Size.XScale)), -Ceil(45 * Const(Size.YScale))
;ownPal = 1
;facing = -1
;size.xScale = 1
;size.yScale = 1
;pauseMoveTime = 65535
;superMoveTime = 65535
;ignoreHitPause = 1
;[State 1000, 0]
;type = Explod
;trigger1 = AnimElemTime(14) = 0
;anim = 807
;ID = 807
;pos = 0, 0
;postype = p1
;sprpriority = 3
;Scale = Const(Size.XScale), Const(Size.YScale)
;persistent = 0
;ignorehitpause = 1
[State 235, Snd]
type = playsnd
trigger1 = animelemtime(7)=0
value = 1, 6
channel = 1

[State 250, Hit]
type = hitdef
trigger1 = !time
attr = S, NA 
damage = 140, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = L 
hitflag = MAF 
priority = 4, Hit 
fall = 1
pausetime = 0, 0
;sparkno = s7010 + (random % 8)
;guard.sparkno = s7000
;sparkxy = -10, -5
hitSound = -1 + 0 * (var(31) := 11)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = Low
ground.slidetime = 15 + 3 * var(29)
ground.hittime = 15 + 3 * var(29)
ground.velocity = 4, -11
ground.cornerpush.veloff = 0;ifelse(var(20), -5.78, -10.47)
air.type = Low
air.hittime = 120
air.velocity = 4, -11
air.cornerpush.veloff = 0
down.velocity = 4, -11
getpower = ifelse(p2movetype = H, 72, 144) * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
fall.recover = 1
p2facing = -1
fall.recovertime = 120
forcenofall = !var(20)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -183
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 0, Turn]
type = Turn
trigger1 = animelemtime(10)=0

[State 1000, End]
type = changestate
trigger1 = !animtime && var(5)<3 && AIlevel && random<500
value = 195
ctrl = 0

[State 1000, End]
type = changestate
trigger1 = !animtime && var(5)<3 && AIlevel && random<500
value = 195
ctrl = 0

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 806]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = -1

[State 806, Anim]
type = changeanim2
trigger1 = !time
value = 806

[State 806, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0


;========< GIGANTIC IMPACT >==========
; Gigantic Impact
[Statedef 810]
type = S
movetype = A
physics = S
anim = 810
sprpriority = 0
velset=2,0
ctrl = 0

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

[State 1000, Gigantic Impact]
type = helper
trigger1 = !time
helpertype = normal
stateno = 3207
ID = 3207
name = "Gigantic Impact"
postype = p1
pos = 66*const(size.xscale),-135*const(size.yscale)
size.xscale = 0.125
size.yscale = 0.125
ownpal = 1
[State 0, VelSet]
type = VelSet
trigger1 = animelemtime(3)=0
x = 4
ignorehitpause = 1

[State 810, throw]
type = targetstate
trigger1 = !time
value = 811
[State 810, throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State Tech Hit]
type = changestate
trigger1 = numtarget && var(19)
trigger1 = (target, command = "holdfwd" || target, command = "holdback") && target, command != "holdup" && target, command != "holddown"
trigger1 = (target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z")
value = 890
[State Tech Hit]
type = varadd
trigger1 = var(19) > 0
var(19) = -1

[State 3005, Hit]
type = hitdef
trigger1 = !time
priority = 4, Hit
attr = S, NA
damage = ceil(140 * (fvar(12))), 4
animtype = diagup
hitflag = MAF
guardflag = M
pausetime = 0, 0
hitSound = -1 + 0 * (var(31) := 12)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 67), var(36) := -129
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -8, -6
yaccel = 0.3
ground.cornerpush.veloff = 0
air.velocity = -8, -6
guard.velocity = -10.52
fall = 1
air.fall = 1
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
palfx.time = 48

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

[State 810, End]
type = changestate
trigger1 = !animtime
value = 0 
ctrl = 1


;--- TARGET ---
[Statedef 811]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 811, Anim]
type = changeanim2
trigger1 = !time
value = 811
[State 811, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0


;===========< Target Escaped >==========
[Statedef 890]
type = S
physics = N
movetype = I
anim = 5945
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 890, Bind]
type = targetbind
trigger1 = !time && numtarget
pos = 0, 0

[State 890, p2state]
type = targetstate
trigger1 = !time && numtarget
value = 895

[State 890, Throw]
type = targetfacing
trigger1 = !time && numtarget
value = -1

[State 890, Pos]
type = posadd
trigger1 = !time
x = -24

[State 890, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 890, Push]
type = playerpush
trigger1 = 1
value = 0

[State 890, Pos]
type = posset
trigger1 = !time
y = 0
[State 890, Vel]
type = velset
trigger1 = 1
x = -1.425
y = 0

[State 890, Snd]
type = playsnd
trigger1 = time = 2
value = ifelse(var(1) = 2, 5010, 5000), ifelse(var(1) = 2, 1, 4)
channel = 0

[State 890, FX]
type = playsnd
trigger1 = !time
value = 7, 3

;[State 890, FX]
;type = explod
;trigger1 = !time
;anim = 7000
;ID = 7000
;sprpriority = 5
;postype = p1
;pos = 0, -55
;ownpal = 1
;pausemovetime = -1
;supermovetime = -1

[State 890, hitspark]
type = helper
trigger1 = !time
helperType = Normal
stateNo = 8000
ID = 8000
name = "Spark"
posType = P1
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 890, End]
type = changestate
trigger1 = time >= 27
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 895]
type = S
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 895, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5945), 5945, 130)
[State 895, Anim]
type = changeanim
trigger1 = !time && !selfanimexist(5945) && selfanimexist(5910)
value = 5910
[State 895, Anim]
type = changeanim
trigger1 = time >= 20 && anim = 130
value = 140

[State 895, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 895, Push]
type = playerpush
trigger1 = 1
value = 0

[State 895, Pos]
type = posset
trigger1 = !time
y = 0
[State 895, Vel]
type = velset
trigger1 = 1
x = -1.425
y = 0

[State 895, End]
type = selfstate
trigger1 = time >= 27
value = 0
ctrl = 1