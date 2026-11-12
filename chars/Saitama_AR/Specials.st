;Mostly special moves
;-------------------------------------------------------------------------------
;Punch Blast
[StateDef 1000]
type        = S
movetype    = A
physics     = S
juggle      = 5
poweradd    = 50
ctrl        = 0
velset      = 0,0
anim        = 1000
sprPriority = 1
facep2      = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = S0,1

[State 1000, PlaySnd punch wave]
type = PlaySnd
trigger1 = Animelem = 3
value = S3,0

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random <= 500
value = s200,0 ;(random%2) ;+var(12)
channel = 0

[State 1000, palfx]
type = BgPalfx
trigger1 = Animelem = 3
time = 2
add = 256,256,256

[State 1000, Shake Screen]
type = EnvShake
trigger1 = AnimElem = 5
time = 4     ;Time to shake screen
ampl = 2     ;Amount to shake
freq = 180   ;A frequency of 180 shakes the screen rapidly

[State 1000, Dust BIG FX]
type = Explod
trigger1 = animelem = 4
anim = 6030
ID = 6030
pos = 0,0
scale = 0.5,0.5
postype = p1
facing = -1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -9
ownpal = 1
removeongethit = 1

[State 1000, Air Blast FX]
type = Explod
trigger1 = animelem = 4
anim = 8107
ID = 8107
pos = 53,-85
scale = .5,.2
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 1

[State 1000, Punch Blast FX]
type = Explod
trigger1 = animelem = 4
anim = 8177
ID = 8177
pos = 53,-85
scale = .2,.6
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 9
ownpal = 1
removeongethit = 1


[State 1000, Projectile]
type = Projectile
trigger1     = AnimElem = 4
;attr         = S,SP
attr = S, NA
Projhitanim = -1
projcancelanim = -1
projremovetime = 1
projanim     = 8117
projremove   = 1
;projscale    = .6,.6
projpriority = 1
projsprpriority = 4
getpower = 80,10
ownpal = 1
offset = 53,-85
projshadow = -1
velocity = 0
animtype = Hard
damage = floor(40 * ifelse(fvar(22), 1.3, 1)), 4
hitflag = MAFP
guardflag = M
hitsound = s3,2
guardsound = s2,1
pausetime = 10,9
sparkno =  -1
guard.sparkno = -1;40
sparkxy = -1;300,-10
ground.type = High
ground.slidetime = 13
ground.hittime  = 13
guard.ctrltime = 26
air.hittime = 40
ground.velocity = -11,0
guard.velocity = -10.5
air.velocity = -5, -5.5
air.juggle = 15
fall = 0
fall.recover = 1
air.fall = 0
air.recover = 1
fall.recovertime = 30
envshake.time = 15
envshake.ampl = 5
envshake.freq = 120
envshake.phase = 120


[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;Punch Blast Medium
[StateDef 1010]
type        = S
movetype    = A
physics     = S
juggle      = 5
poweradd    = 60
ctrl        = 0
velset      = 0,0
anim        = 1010
sprPriority = 1
facep2      = 1

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = S0,1

[State 1100, PlaySnd punch wave]
type = PlaySnd
trigger1 = Animelem = 3
value = S3,0

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random <= 500
value = s200,1 ;(random%2) ;+var(12)
channel = 0

[State 1100, palfx]
type = BgPalfx
trigger1 = Animelem = 3
time = 2
add = 256,256,256

[State 1100, Shake Screen]
type = EnvShake
trigger1 = AnimElem = 5
time = 4     ;Time to shake screen
ampl = 2     ;Amount to shake
freq = 180   ;A frequency of 180 shakes the screen rapidly

[State 1100, Dust BIG FX]
type = Explod
trigger1 = animelem = 4
anim = 6030
ID = 6030
pos = 0,0
scale = .5,.5
postype = p1
facing = -1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -9
ownpal = 1
removeongethit = 1

[State 1100, Dust FX]
type = Explod
trigger1 = animelem = 4
anim = 8107
ID = 8107
pos = 53,-85
scale = .5,.2
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 20
sprpriority = -9
ontop = 1
ownpal = 1
removeongethit = 1

[State 1100, Punch Blast FX]
type = Explod
trigger1 = animelem = 4
anim = 8177
ID = 8177
pos = 53,-85
scale = .2,.6
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -9
ownpal = 1
removeongethit = 1


[State 1000, Projectile]
type = Projectile
trigger1     = AnimElem = 4
attr = S, NA
projhits = 3
Projhitanim = -1
projcancelanim = -1
projremovetime = 1
projanim     = 8117
projremove   = 1
projpriority = 5
projsprpriority = 1
getpower = 80,10
ownpal = 1
offset = 53,-85
projshadow = -1
velocity = 0
animtype = Hard
damage = floor(45 * ifelse(fvar(22), 1.3, 1)), 4
hitflag = MAFP
guardflag = M
hitsound = s3,2
guardsound = s2,1
pausetime = 10,12
sparkno =  -1
guard.sparkno = -1;40
sparkxy = -1;300,-10
ground.type = High
ground.slidetime = 13
ground.hittime  = 13
guard.ctrltime = 26
air.hittime = 40
ground.velocity = -11,0
guard.velocity = -10.5
air.velocity = -5, -5.5
air.juggle = 15
fall = 0
fall.recover = 1
air.fall = 0
air.recover = 1
fall.recovertime = 30
envshake.time = 15
envshake.ampl = 5
envshake.freq = 120
envshake.phase = 120


[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;Punch Blast Anti Air
[StateDef 1020]
type        = S
movetype    = A
physics     = S
juggle      = 5
poweradd    = 70
ctrl        = 0
velset      = 0,0
anim        = 1020
sprPriority = 1
facep2      = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = S0,1

[State 1200, PlaySnd punch wave]
type = PlaySnd
trigger1 = Animelem = 3
value = S3,0

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random <= 500
value = s200,1 ;(random%2) ;+var(12)
channel = 0

[State 1200, palfx]
type = BgPalfx
trigger1 = Animelem = 3
time = 2
add = 256,256,256

[State 1200, Shake Screen]
type = EnvShake
trigger1 = AnimElem = 5
time = 4     ;Time to shake screen
ampl = 2     ;Amount to shake
freq = 180   ;A frequency of 180 shakes the screen rapidly

[State 1200, Dust BIG FX]
type = Explod
trigger1 = animelem = 4
anim = 6030
ID = 6030
pos = 0,0
scale = .5,.5
postype = p1
facing = -1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -9
ownpal = 1
removeongethit = 1

[State 1200, Dust FX]
type = Explod
trigger1 = animelem = 4
anim = 8107
ID = 8107
pos = 53,-85
scale = .5,.2
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 20
sprpriority = -9
ontop = 1
ownpal = 1
removeongethit = 1
angle = 30


[State 1200, Punch Blast FX]
type = Explod
trigger1 = animelem = 4
anim = 8177
ID = 8177
pos = 53,-85
scale = .2,.6
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -9
ownpal = 1
removeongethit = 1
angle = 30

[State 1000, Projectile]
type = Projectile
trigger1     = AnimElem = 4
attr = S, NA
projhits = 3
Projhitanim = -1
projcancelanim = -1
projremovetime = 1
projanim     = 8127
projremove   = 1
projpriority = 9
projsprpriority = 1
getpower = 80,10
ownpal = 1
offset = 0,0
projshadow = -1
velocity = 0
animtype = Hard
damage = floor(50 * ifelse(fvar(22), 1.3, 1)), 5
hitflag = MAFP
guardflag = M
hitsound = s3,2
guardsound = s2,1
pausetime = 11,10
sparkno =  -1
guard.sparkno = -1;40
sparkxy = -1;300,-10
ground.type = High
ground.slidetime = 13
ground.hittime  = 13
guard.ctrltime = 26
air.hittime = 40
ground.velocity = -11,0
guard.velocity = -10.5
air.velocity = -5, -5.5
air.juggle = 15
fall = 0
fall.recover = 10
air.fall = 0
air.recover = 0
fall.recovertime = 30
envshake.time = 15
envshake.ampl = 5
envshake.freq = 120
envshake.phase = 120


[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;Punch Blast AIR
[Statedef 1030]
type        = A
movetype    = A
physics     = S
juggle      = 5
poweradd    = 70
ctrl        = 0
;velset      = 0,0
anim        = 1030
sprPriority = 1
facep2      = 1

[State 1001, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = S0,1

[State 1001, PlaySnd punch wave]
type = PlaySnd
trigger1 = Animelem = 3
value = S3,0

[State 1001, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random <= 500
value = s200,0 ;(random%2) ;+var(12)
channel = 0

[State 1001, palfx]
type = BgPalfx
trigger1 = Animelem = 3
time = 2
add = 256,256,256

[State 200, StateTypeSet]
type = StateTypeSet
triggerall = Time = 0
trigger1 = Pos Y < 0
StateType = A

[state 701, 5]
type = Veladd
trigger1 = Time = 0
trigger1 = StateType = A
y = .8

[state 701, PosSet]
type = PosSet
trigger1 = StateType = A
trigger1 = pos y > -8
y = -8

; [State 200, PlaySnd]
; type = PlaySnd
; trigger1 = Time = 0
; value = 1100,0
; volumescale = 220
; 
; [state 701, 5]
; type = PlaySnd
; trigger1 = Animelem = 2
; value = 1100,1
; channel = 1
; 
; [state 701, 5]
; type = StopSnd
; trigger1 = Animelem = 13
; channel = 1
; 
; [State 181, 3]
; type = Explod
; trigger1 = AnimElem = 3
; anim = 1101
; id = 1101
; postype = P1
; pos = ifelse(Pos Y < 0,13,10),ifelse(Pos Y < 0,-93,-83)
; sprpriority = 0
; bindtime = -1
; 
; [State 181, 3]
; type = Explod
; trigger1 = Animelem = 6
; anim = 1103
; id = 1103
; postype = P1
; pos = ifelse(Pos Y < 0,13,10),ifelse(Pos Y < 0,-93,-86)
; sprpriority = 1
; bindtime = -1

[State 1000, Varset]
type = VarSet
trigger1 = P2Dist X = [0, 100]
var(5) = 2

[State 1000, Varset]
type = VarSet
trigger1 = P2Dist X = [101, 190]
var(5) = 1

[State 1040, AttackMulSet]
type = null;AttackMulSet
trigger1 = 1
value = root, fvar(0)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = projhit = 1
value = S5,5
channel = 11
volumescale = 200

[State 1000, Shake Screen]
type = EnvShake
trigger1 = AnimElem = 4
time = 4     ;Time to shake screen
ampl = 2     ;Amount to shake
freq = 180   ;A frequency of 180 shakes the screen rapidly

[State 1000, Dust FX]
type = Explod
trigger1 = animelem = 3
anim = 8107
ID = 8107
pos = 47,-100
scale = .5,.2
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -9
ontop = 1
ownpal = 1
removeongethit = 1

[State 1000, Punch Blast FX]
type = Explod
trigger1 = animelem = 3
anim = 8177
ID = 8177
pos = 47,-100
scale = .2,.6
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -9
ontop = 1
ownpal = 1
removeongethit = 1

[State 1000, Projectile]
type = Projectile
trigger1     = AnimElem = 3
attr = S, NA
Projhitanim = -1
projcancelanim = -1
projremovetime = 1
projanim     = 8117
projremove   = 1
;projscale    = .6,.6
projpriority = 1
projsprpriority = 4
getpower = 80,10
ownpal = 1
offset = 53,-85
projshadow = -1
velocity = 0
animtype = Hard
damage = floor(40 * ifelse(fvar(22), 1.3, 1)), 4
hitflag = MAFP
guardflag = M
hitsound = s3,2
guardsound = s2,1
pausetime = 10,9
sparkno =  -1
guard.sparkno = -1;40
sparkxy = -1;300,-10
ground.type = High
ground.slidetime = 13
ground.hittime  = 13
guard.ctrltime = 26
air.hittime = 40
ground.velocity = -11,0
guard.velocity = -10.5
air.velocity = -5, -5.5
air.juggle = 15
fall = 0
fall.recover = 1
air.fall = 0
air.recover = 1
fall.recovertime = 30
envshake.time = 15
envshake.ampl = 5
envshake.freq = 120
envshake.phase = 120

[State 181, 3]
type = Explod
trigger1 = projhit = 1
postype = P2
pos = 0, -65
sprpriority = 2
scale = 0.5,0.5
anim = 8003
bindtime = 1
removetime = 14
supermovetime = 30
ontop = 1
ownpal = 1

[State 181, 3]
type = Explod
trigger1 = projguarded = 1
postype = P2
pos = 0, -65
sprpriority = 2
anim = 8051
bindtime = 1
removetime = 14
supermovetime = 30
ontop = 1
ownpal = 1
facing = 1

; [State 1000, Varset]
; type = VarSet
; trigger1 = Animtime = 0
; var(5) = 0
; 
; [State 220, 5]
; type = ChangeState
; triggerall = var(12) = 0
; trigger1 = AnimTime = -3
; value = ifelse((Pos Y < 0),44,0)
; ctrl = 1

[State 1030, Vel]
type = velset
trigger1 = animelemtime(8) < 0
x = ifelse(vel x > 1, 1, ifelse(vel x < -1, -1, vel x))
y = ifelse(vel y < -2, -2, ifelse(vel y > 0, 0, vel y))

[State 1030, Accel]
type = veladd
trigger1 = animelemtime(8) >= 0
y = const(movement.yaccel)
[State Land]
type = changestate
trigger1 = pos y > -vel y
value = 52
;-------------------------------------------------------------------------------
;Teleport In front
[Statedef 1040]
type = S
movetype = I
;physicd = S
anim = 1040
velset = 0,0
ctrl = 0
juggle = 1

[State 1002, 2]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1002, 3]
type = PlaySnd
trigger1 = Time = 1
value = s1000, 0

[State explod]
type = Explod
trigger1 = Time = 1
anim = 6020
id = 6020
sprpriority = -9
postype = p1
pos = 35,0
bindtime = 1
ignorehitpause = 1
persistent = 0
;under = 0
ownpal = 1
scale = 0.3,0.3

[State 1002, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 1041

;---------------------------------------------------------------------------
;Helper ^
[Statedef 1041]
type = S
movetype = I
physics = S
anim = 1041

[State 1012, 1]
type = PosAdd
trigger1 = Time = 0
X = P2Dist X - 50

[State 1012, 2]
type = NotHitBy
trigger1 = 1
value = SCA

; [State explod]
; type = Explod
; trigger1 = animtime = 0
; anim = 6020
; id = 6020
; sprpriority = -9
; postype = p1
; pos = 20,0
; bindtime = 1
; ignorehitpause = 1
; persistent = 0
; ;under = 0
; ownpal = 1
; scale = 0.5,0.5

[State 2000,]
type = Velset
trigger1 = time = 0
x = 0
y = 0

[State 2000,]
type = Posset
trigger1 = time = 0
y = 0

[State 1012, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Teleport Behind
[Statedef 1042]
type = S
movetype = I
;physicd = S
anim = 1040
velset = 0,0
ctrl = 0
juggle = 1

[State 1003, 2]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1003, 3]
type = PlaySnd
trigger1 = Time = 1
value = s1000, 0

[State explod]
type = Explod
trigger1 = Time = 1
anim = 6020
id = 6020
sprpriority = -9
postype = p1
pos = 35,0
bindtime = 1
ignorehitpause = 1
persistent = 0
;under = 0
ownpal = 1
scale = 0.3,0.3

[State 1003, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 1043

;---------------------------------------------------------------------------
;Helper ^
[Statedef 1043]
type = S
movetype = I
physics = S
anim = 1041

[State 1013, 1]
type = PosAdd
trigger1 = Time = 0
X = P2Dist X + 50

[State 1013, 2]
type = NotHitBy
trigger1 = 1
value = SCA

; [State explod]
; type = Explod
; trigger1 = animtime = 0
; anim = 6020
; id = 6020
; sprpriority = -9
; postype = p1
; pos = 0,0
; bindtime = 1
; ignorehitpause = 1
; persistent = 0
; ;under = 0
; ownpal = 1
; scale = 0.5,0.5

[State 2000,]
type = Velset
trigger1 = time = 0
x = 0
y = 0

[State 2000,]
type = Posset
trigger1 = time = 0
y = 0

[State 1013, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;CNP-Standing
[Statedef 1050]
type    = S
movetype= A
physics = S
poweradd= 50;00*var(7)
ctrl = 0
velset = 0,0
anim = 1050
sprpriority = 2

[State 200, PlaySnd]
type = PlaySnd
trigger1 = time >= 3
trigger1 = timemod = 5,0
value = S0,1
volume = 255

[State 210, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random <= 500
value = s200,0 ;(random%2) ;+var(12)
channel = 0

[State 1015, Fist FX]
type = Explod
trigger1 = timemod = 3,0
anim = 1012
ID = 1012
shadow = 1
postype = p1
pos =  -36+random%30,-58+random%10  ; -9,-56
sprpriority = 3;9+Random%3
pausemovetime = 9999
ownpal = 1
;ontop = 1
removetime = -2
removeongethit = 1

[State 1015, Dust medium FX]
type = Explod
trigger1 = timemod = 7,0
anim = 6020
ID = 6020
pos = 20,0
scale = 0.4,0.4
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -9
;ontop = 1
ownpal = 1

[State 1015, Cape FX]
type = Explod
trigger1 = timemod = 8,0
anim = 6001
ID = 6001
pos = -22,-24
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
sprpriority = 3
;ontop = 1
ownpal = 1
removeongethit = 1

;--------------------------------------------------------
[State 1015, 1]
type = Projectile;HitDef
trigger1 = timemod = 5,0
attr = S, NA
Projhitanim = -1
projcancelanim = -1
projremovetime = 1
projanim     = 20000
projremove   = 1
;projscale    = .6,.6
projpriority = 1
projsprpriority = 4
getpower = 80,10
ownpal = 1
offset = 70,0
projshadow = -1
velocity = 3
animtype  = Hard
damage    = ifelse(fvar(22), 5, 2), 0
getpower = 40*var(7),10*var(7)
givepower = 5*var(7),5*var(7)
guardflag = MA
pausetime = 2,3
sparkno = 0
sparkxy = 25+random%30,-80+random%85
hitsound   = S1,5
guard.sparkno = 2
guardsound = S2,0
ground.type = low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
juggle = 10
airguard.velocity = -1.9,-.8
air.type = low
air.velocity = -1.4,-3
p2facing = 1
guard.kill = 0

[State 1015, 2]
type = Projectile;HitDef
trigger1 = timemod = 6,0
attr = S, NA
Projhitanim = -1
projcancelanim = -1
projremovetime = 1
projanim     = 20000
projremove   = 1
;projscale    = .6,.6
projpriority = 1
projsprpriority = 4
getpower = 80,10
ownpal = 1
offset = 70,0
projshadow = -1
velocity = 3
attr = S, NA
animtype  = Hard
damage    = ifelse(fvar(22), 5, 2), 0
getpower = 40*var(7),10*var(7)
givepower = 5*var(7),5*var(7)
guardflag = MA
pausetime = 2,3
sparkno = 0
sparkxy = 25+random%30,-80+random%85
hitsound   = S1,5
guard.sparkno = 2
guardsound = S2,0
ground.type = high
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
juggle = 10
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
p2facing = 1
guard.kill = 0

[State 1015, 3]
type = VarAdd
trigger1 = movehit = 1
trigger1 = var(5) = 1
trigger1 = timemod = 6,0
ignorehitpause = 1
var(10) = 4

[State 1015, 4]
type = velset
trigger1 = time >= 0
x = .4

[State Var(2)]
type = VarSet
trigger1 = Time = 0
var(2) = 0

[State Var(2)]
type = VarAdd
trigger1 = 1
var(2) = 1

[State Var(2)]
type = VarAdd
trigger1 = Command = "a"
trigger2 = Command = "b"
trigger3 = Command = "c"
ignorehitpause = 1
var(2) = -3

[State 1015, 5]
type = ChangeState
trigger1 = Time >= 100
trigger2 = Var(2) >= 36
value = 1051
ctrl = 0

;-------------------------------------------------------------------------------
;Helper ^
[Statedef 1051]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 1051
sprpriority = 2

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 1012
ignorehitpause = 1
;persistent =

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 6001
ignorehitpause = 1
;persistent =

[State 2000,]
type = Posset
trigger1 = time = 0
y = 0

[State 2000,]
type = Velset
trigger1 = time = 0
x = 0
y = 0

[State 210, 5]
type = ChangeState
trigger1 = Time >= 10
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;CNP- On Air
[Statedef 1052]
type    = A
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 1052
hitcountpersist = 1
sprpriority = 1

[State 200, PlaySnd]
type = PlaySnd
trigger1 = time >= 3
trigger1 = timemod = 5,0
value = S0,1
volume = 255

[State 210, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random <= 500
value = s200,0 ;(random%2) ;+var(12)
channel = 0

[State 200, StateTypeSet]
type = StateTypeSet
triggerall = Time = 0
trigger1 = Pos Y < 0
StateType = A

[state 701, 5]
type = Veladd
trigger1 = Time = 0
trigger1 = StateType = A
y = .8

[state 701, PosSet]
type = PosSet
trigger1 = StateType = A
trigger1 = pos y > -8
y = -8

; [State 200, PlaySnd]
; type = PlaySnd
; trigger1 = Time = 0
; value = 1100,0
; volumescale = 220
;
; [state 701, 5]
; type = PlaySnd
; trigger1 = Animelem = 2
; value = 1100,1
; channel = 1
;
; [state 701, 5]
; type = StopSnd
; trigger1 = Animelem = 13
; channel = 1
;
; [State 181, 3]
; type = Explod
; trigger1 = AnimElem = 3
; anim = 1101
; id = 1101
; postype = P1
; pos = ifelse(Pos Y < 0,13,10),ifelse(Pos Y < 0,-93,-83)
; sprpriority = 0
; bindtime = -1
;
; [State 181, 3]
; type = Explod
; trigger1 = Animelem = 6
; anim = 1103
; id = 1103
; postype = P1
; pos = ifelse(Pos Y < 0,13,10),ifelse(Pos Y < 0,-93,-86)
; sprpriority = 1
; bindtime = -1

[State 210, 1] ;MEGA TEST
type = Explod
trigger1 = timemod = 3,0
anim = 1012
id = 1012
shadow = -1
postype = p1
pos = -30+random%35,-80+random%20  ;-20,-80
sprpriority = -3+Random%6
pausemovetime = 9999
ownpal = 1
removetime = -2
;angle = -65

[State 1000, Varset]
type = VarSet
trigger1 = P2Dist X = [0, 100]
var(5) = 2

[State 1000, Varset]
type = VarSet
trigger1 = P2Dist X = [101, 190]
var(5) = 1

[State 1040, AttackMulSet]
type = null;AttackMulSet
trigger1 = 1
value = root, fvar(0)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = projhit = 1
value = S5,5
channel = 11
volumescale = 200

[State 1000, Shake Screen]
type = EnvShake
trigger1 = AnimElem = 4
time = 4     ;Time to shake screen
ampl = 2     ;Amount to shake
freq = 180   ;A frequency of 180 shakes the screen rapidly

[State 1000, Projectile]
type = Projectile
trigger1     = timemod = 4,0
attr = S, NA
Projhitanim = -1
projcancelanim = -1
projremovetime = 1
projanim     = 21000
projremove   = 1
;projscale    = .6,.6
projpriority = 1
projsprpriority = 4
getpower = 80,10
ownpal = 1
offset = 65,-40
projshadow = -1
velocity = 0
animtype = Hard
damage = floor(70 * ifelse(fvar(22), 1.3, 1)), 7
hitflag = MAFP
guardflag = M
hitsound = s3,2
guardsound = s2,1
pausetime = 5,6
sparkno =  0
guard.sparkno = 2;40
sparkxy = -1;300,-10
ground.type = High
ground.slidetime = 13
ground.hittime  = 13
guard.ctrltime = 26
air.hittime = 40
ground.velocity = -11,0
guard.velocity = -10.5
air.velocity = -5, -5.5
air.juggle = 15
fall = 0
fall.recover = 1
air.fall = 0
air.recover = 1
fall.recovertime = 30
envshake.time = 15
envshake.ampl = 5
envshake.freq = 120
envshake.phase = 120

; [State 181, 3]
; type = Explod
; trigger1 = projhit = 1
; postype = P2
; pos = 0, -65
; sprpriority = 2
; scale = 0.5,0.5
; anim = 8003
; bindtime = 1
; removetime = 14
; supermovetime = 30
; ontop = 1
; ownpal = 1
; 
; [State 181, 3]
; type = Explod
; trigger1 = projguarded = 1
; postype = P2
; pos = 0, -65
; sprpriority = 2
; anim = 8051
; bindtime = 1
; removetime = 14
; supermovetime = 30
; ontop = 1
; ownpal = 1
; facing = 1

[State 1052, Vel]
type = velset
trigger1 = animelemtime(8) < 0
x = ifelse(vel x > 1, 1, ifelse(vel x < -1, -1, vel x))
y = ifelse(vel y < -2, -2, ifelse(vel y > 0, 0, vel y))

[State 1052, Accel]
type = veladd
trigger1 = animelemtime(8) >= 0
y = const(movement.yaccel)
[State Land]
type = changestate
trigger1 = pos y > -vel y
value = 52
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------

