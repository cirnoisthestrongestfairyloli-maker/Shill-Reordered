;Normal attacks, medium attacks and heavy/strong attacks
;standing,crouch and air.
;===============================================================================
;Normal punch
[Statedef 200]
type        = S
movetype    = A
physics     = S
juggle      = 5
poweradd    = 20
ctrl        = 0
velset      = 0,0
anim        = 200
sprPriority = 1
facep2      = 1

[State 200, 0]
type = statetypeset
trigger1 = AnimElem = 4
movetype = I

[State 200, AR hit]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
guardflag = MA
hitflag = MAF
guardsound = s2,0
guard.sparkno = 40
sparkxy = 0, -80
air.fall = 1
animtype = Light
damage = floor(30 * ifelse(fvar(22), 1.3, 1)), 0
pausetime = 8, 8
hitsound = s1,0
ground.type = High
air.type = Low
ground.slidetime = 8
ground.hittime = 8
air.hittime = 8
guard.ctrltime = 9
ground.velocity = -6
air.velocity = -4, -5.25
airguard.velocity = -4,-1
ground.cornerpush.veloff = -8.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sparkno = 0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S0,0

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Medium punch
[Statedef 210]
type        = S
movetype    = A
physics     = S
juggle      = 5
poweradd    = 70
ctrl        = 0
velset      = 0,0
anim        = 210
sprPriority = 1
facep2      = 1

[State 210, Voice]
type = PlaySnd
trigger1 = AnimElem = 1 && Random <= 200
value = s200,0 ;(random%2) ;+var(12)
channel = 0

[state ]
type = velset
trigger1 = animelem = 3
x = 11

[state ]
type = velset
trigger1 = animelem = 9
x = 0

[State 1015, Cape FX]
type = Explod
trigger1 = animelem = 4;timemod = 8,0
anim = 6001
ID = 6001
pos = -22,-24
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
sprpriority = 7
;ontop = 1
ownpal = 1
removeongethit = 1

[State 0, Dust FX]
type = Explod
trigger1 = animelem = 4
anim = 6010
ID = 6010
pos = 4,0
scale = .5,.5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -9
;ontop = 1
ownpal = 1
removeongethit = 1

[State 210, blast FX]
type = Explod
trigger1 = animelem = 4
anim = 8106
ID = 8106
pos = 60,-70
scale = .3,.3
postype = p1
;facing = 1
;vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 7
;ontop = 1
ownpal = 1
removeongethit = 1


[State 210, AR hit]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
guardflag = MA
hitflag = MAF
guardsound = s2,0
guard.sparkno = 40
sparkxy = 0, -75
air.fall = 1
animtype = Medium
damage = floor(50 * ifelse(fvar(22), 1.3, 1)), 0
pausetime = 14, 13
hitsound = s1,2
ground.type = Low
ground.slidetime = 14
ground.hittime = 14
ground.velocity = -6
airguard.velocity = -6
air.type = High
air.velocity = -6
air.hittime = 14
sparkno = 1
envshake.time = 10
envshake.ampl = 5
envshake.freq = 120
envshake.phase = 120

[State 200, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S0,4

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Near Punch ^
[Statedef 215]
type        = A
movetype    = A
physics     = A
juggle      = 3
poweradd    = 60
ctrl        = 0
velset      = 0,0
anim        = 215
sprPriority = 1
facep2      = 1

[State 215, 0]
type = PosAdd
trigger1 = Time = 0
y = P2Dist Y -60

[state ]
type = velset
trigger1 = animelem = 5
x = 2
y = 3

[state ]
type = velset
trigger1 = animelem = 7
x = 0


[State 215, AR hit]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
guardflag = MA
hitflag = MAF
guardsound = s2,0
guard.sparkno = 40
sparkxy = 0, -70
air.fall = 1
animtype = Medium
damage = floor(50 * ifelse(fvar(22), 1.3, 1)), 0
pausetime = 14, 13
hitsound = s1,2
ground.type = Low
ground.slidetime = 14
ground.hittime = 14
ground.velocity = -6
airguard.velocity = -6
air.type = High
air.velocity = -6
air.hittime = 14
sparkno = 1
envshake.time = 10
envshake.ampl = 5
envshake.freq = 120
envshake.phase = 120

[State 200, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 1
value = S1000,0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 4
value = S0,1

[State 700]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 44
persistent = 0


[State 700]
type = StateTypeSet
trigger1 = Anim = 44
movetype = I
persistent = 0

[State 700]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

; [State 200, ChangeState]
; type = ChangeState
; trigger1 = AnimTime = 0
; value = 0
; ctrl = 1
;---------------------------------------------------------------------------
;Strong punch
[Statedef 220]
type        = S
movetype    = A
physics     = S
juggle      = 5
poweradd    = 100
ctrl        = 0
velset      = 0,0
anim        = 220
sprPriority = 1
facep2      = 1

[State 220, Voice]
type = PlaySnd
trigger1 = Animelem = 2 && Random <= 500
value = s4,4 ;+ (random % 2)
channel = 0

[state ]
type = velset
trigger1 = animelem = 5
x = 4

[state ]
type = velset
trigger1 = animelem = 8
x = 0

[State 220, AR hit]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
guardflag = MA
hitflag = MAF
guardsound = s2,0
guard.sparkno = 40
sparkxy = 0, -47
air.fall = 1
animtype = Hard
damage = floor(70 * ifelse(fvar(22), 1.3, 1)), 0
pausetime = 12, 12
hitsound = s1,5
ground.type = High
ground.slidetime = 14
ground.hittime = 14
ground.velocity = -6
airguard.velocity = -6
air.type = High
air.velocity = -6
air.hittime = 14
sparkno = 2
envshake.time = 15
envshake.ampl = 8
envshake.freq = 125
envshake.phase = 125

[State 200, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 4
value = S0,2

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Normal kick
[Statedef 230]
type        = S
movetype    = A
physics     = S
juggle      = 2
poweradd    = 20
ctrl        = 0
velset      = 0,0
anim        = 230
sprPriority = 1
facep2      = 1

[State 230, Voice]
type = PlaySnd
trigger1 = Animelem = 2 && Random <= 500
value = s4,0 + (random % 2)
channel = 0

[State 230, 0]
type = statetypeset
trigger1 = AnimElem = 4
movetype = I

[State 230, AR hit]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
guardflag = MA
hitflag = MAF
guardsound = s2,0
guard.sparkno = 40
sparkxy = 0, -25
air.fall = 1
animtype = Light
damage = floor(30 * ifelse(fvar(22), 1.3, 1)), 0
pausetime = 8, 8
hitsound = s1,0
ground.type = High
air.type = Low
ground.slidetime = 8
ground.hittime = 8
air.hittime = 8
guard.ctrltime = 9
ground.velocity = -6
air.velocity = -4, -5.25
airguard.velocity = -4,-1
ground.cornerpush.veloff = -8.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sparkno = 0

[State 230, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S0,0

[State 230, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------------------------------------
;Medium kick
[Statedef 240]
type        = S
movetype    = A
physics     = S
juggle      = 5
poweradd    = 40
ctrl        = 0
velset      = 0,0
anim        = 240
sprPriority = 1
facep2      = 1

[State 240, Voice]
type = PlaySnd
trigger1 = Animelem = 1 && Random <= 500
value = s4,2 ;+ (random % 2)
channel = 0

[State 240, AR hit]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
guardflag = MA
hitflag = MAF
guardsound = s2,0
guard.sparkno = 40
sparkxy = 0, -51
air.fall = 1
animtype = Medium
damage = floor(50 * ifelse(fvar(22), 1.3, 1)), 0
pausetime = 14, 13
hitsound = s1,2
ground.type = Low
ground.slidetime = 14
ground.hittime = 14
ground.velocity = -6
airguard.velocity = -6
air.type = High
air.velocity = -6
air.hittime = 14
sparkno = 1
envshake.time = 10
envshake.ampl = 5
envshake.freq = 120
envshake.phase = 120

[State 230, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S0,1

[State 230, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------------------------------------
;Strong kick
[Statedef 250]
type        = S
movetype    = A
physics     = S
juggle      = 5
poweradd    = 70
ctrl        = 0
velset      = 0,0
anim        = 250
sprPriority = 1
facep2      = 1

[State 250, Voice]
type = PlaySnd
trigger1 = Animelem = 2 && Random <= 500
value = s4,3 ;+ (random % 2)
channel = 0

[state ]
type = velset
trigger1 = animelem = 2
x = 4

[state ]
type = velset
trigger1 = animelem = 4
x = 0

[State 0, Dust FX]
type = Explod
trigger1 = animelem = 2
anim = 6010
ID = 6010
pos = 0,0
scale = .5,.5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -9
;ontop = 1
ownpal = 1
removeongethit = 1

[State 250, AR hit]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
guardflag = MA
hitflag = MAF
guardsound = s2,0
guard.sparkno = 40
sparkxy = 0, -58
air.fall = 1
animtype = Hard
damage = floor(70 * ifelse(fvar(22), 1.3, 1)), 0
pausetime = 12, 12
hitsound = s1,5
ground.type = High
ground.slidetime = 14
ground.hittime = 14
ground.velocity = -6
airguard.velocity = -6
air.type = High
air.velocity = -6
air.hittime = 14
sparkno = 2
envshake.time = 15
envshake.ampl = 8
envshake.freq = 125
envshake.phase = 125

[State 230, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S0,2

[State 230, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------
;Crouching punch
[Statedef 400]
type        = C
movetype    = A
physics     = C
juggle      = 1
poweradd    = 20
ctrl        = 0
velset      = 0,0
anim        = 400
sprPriority = 1
facep2      = 1

[State 400, 0]
type = statetypeset
trigger1 = AnimElem = 4
movetype = I

[State 400, AR hit]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
guardflag = MA
hitflag = MAF
guardsound = s2,0
guard.sparkno = 40
sparkxy = 0, -46
air.fall = 1
animtype = Light
damage = floor(30 * ifelse(fvar(22), 1.3, 1)), 0
pausetime = 8, 8
hitsound = s1,0
ground.type = High
air.type = Low
ground.slidetime = 8
ground.hittime = 8
air.hittime = 8
guard.ctrltime = 9
ground.velocity = -6
air.velocity = -4, -5.25
airguard.velocity = -4,-1
ground.cornerpush.veloff = -8.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sparkno = 0

[State 400, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S0,0

[State 400, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
;Crouching Strong punch
[Statedef 420]
type        = C
movetype    = A
physics     = C
juggle      = 1
poweradd    = 100
ctrl        = 0
velset      = 0,0
anim        = 420
sprPriority = 1
facep2      = 1

[State 420, AR hit]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
guardflag = MA
hitflag = MAF
guardsound = s2,0
guard.sparkno = 40
sparkxy = 0, -91
air.fall = 1
animtype = Medium
damage = floor(50 * ifelse(fvar(22), 1.3, 1)), 0
pausetime = 14, 13
hitsound = s1,2
ground.type = Low
ground.slidetime = 14
ground.hittime = 14
ground.velocity = -6
airguard.velocity = -6
air.type = High
air.velocity = -6
air.hittime = 14
sparkno = 1
envshake.time = 10
envshake.ampl = 5
envshake.freq = 120
envshake.phase = 120

[State 420, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S0,0

[State 400, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------------------
;Crouching kick
[Statedef 430]
type        = C
movetype    = A
physics     = C
juggle      = 2
poweradd    = 20
ctrl        = 0
velset      = 0,0
anim        = 430
sprPriority = 1
facep2      = 1

[State 430, 0]
type = statetypeset
trigger1 = AnimElem = 5
movetype = I

[State 430, AR hit]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
guardflag = MA
hitflag = MAF
guardsound = s2,0
guard.sparkno = 40
sparkxy = 0, -10
air.fall = 1
animtype = Light
damage = floor(30 * ifelse(fvar(22), 1.3, 1)), 0
pausetime = 8, 8
hitsound = s1,0
ground.type = High
air.type = Low
ground.slidetime = 8
ground.hittime = 8
air.hittime = 8
guard.ctrltime = 9
ground.velocity = -6
air.velocity = -4, -5.25
airguard.velocity = -4,-1
ground.cornerpush.veloff = -8.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sparkno = 0

[State 400, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S0,0

[State 400, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;----------------------------------------------------------------------------
;Crouching MEDIUM kick
[Statedef 440]
type        = C
movetype    = A
physics     = C
juggle      = 3
poweradd    = 20
ctrl        = 0
velset      = 0,0
anim        = 440
sprPriority = 1
facep2      = 1

[State 430, 0]
type = statetypeset
trigger1 = AnimElem = 5
movetype = I

[State 440, AR hit]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
guardflag = MA
hitflag = MAF
guardsound = s2,0
guard.sparkno = 40
sparkxy = 0, -32
air.fall = 1
animtype = Medium
damage = floor(50 * ifelse(fvar(22), 1.3, 1)), 0
pausetime = 14, 13
hitsound = s1,2
ground.type = Low
ground.slidetime = 14
ground.hittime = 14
ground.velocity = -6
airguard.velocity = -6
air.type = High
air.velocity = -6
air.hittime = 14
sparkno = 1
envshake.time = 10
envshake.ampl = 5
envshake.freq = 120
envshake.phase = 120

[State 400, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S0,0

[State 400, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;-------------------------------------------------------------------------------
;Air Normal-punch
[Statedef 600]
type        = A
movetype    = A
physics     = A
juggle      = 5
poweradd    = 20
ctrl        = 0
anim        = 600
sprPriority = 1
facep2      = 1

[State 600, Voice]
type = PlaySnd
trigger1 = Animelem = 2 && Random <= 500
value = s4,0 + (random % 2)
channel = 0

; [State 600, 0]
; type = CtrlSet
; trigger1 = Time = 5
; value = 1

[State 600, AR hit]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
guardflag = MA
hitflag = MAF
guardsound = s2,0
guard.sparkno = 40
sparkxy = 0, -100
air.fall = 1
animtype = Light
damage = floor(30 * ifelse(fvar(22), 1.3, 1)), 0
pausetime = 8, 8
hitsound = s1,0
ground.type = High
air.type = Low
ground.slidetime = 8
ground.hittime = 8
air.hittime = 8
guard.ctrltime = 9
ground.velocity = -6
air.velocity = -4, -5.25
airguard.velocity = -4,-1
ground.cornerpush.veloff = -8.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sparkno = 0

[State 700, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S0,0

[State 700]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 44
persistent = 0


[State 700]
type = StateTypeSet
trigger1 = Anim = 44
movetype = I
persistent = 0

[State 700]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0
;-----------------------------------------------------------------------------
;Air Medium-punch
[Statedef 610]
type        = A
movetype    = A
physics     = A
juggle      = 5
poweradd    = 20
ctrl        = 0
anim        = 610
sprPriority = 1
facep2      = 1

[State 600, Voice]
type = PlaySnd
trigger1 = Animelem = 2 && Random <= 100
value = s4,0 + (random % 2)
channel = 0

; [State 600, 0]
; type = CtrlSet
; trigger1 = animelem = 4
; value = 1

[State 610, AR hit]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
guardflag = MA
hitflag = MAF
guardsound = s2,0
guard.sparkno = 40
sparkxy = 0, -72
air.fall = 1
animtype = Medium
damage = floor(50 * ifelse(fvar(22), 1.3, 1)), 0
pausetime = 14, 13
hitsound = s1,2
ground.type = Low
ground.slidetime = 14
ground.hittime = 14
ground.velocity = -6
airguard.velocity = -6
air.type = High
air.velocity = -6
air.hittime = 14
sparkno = 1
envshake.time = 10
envshake.ampl = 5
envshake.freq = 120
envshake.phase = 120

[State 700, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S0,0

[State 700]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 44
persistent = 0


[State 700]
type = StateTypeSet
trigger1 = Anim = 44
movetype = I
persistent = 0

[State 700]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0
;------------------------------------------------------------------------------
;Air Strong---punch
[Statedef 620]
type        = A
movetype    = A
physics     = A
juggle      = 5
poweradd    = 100
ctrl        = 0
anim        = 620
sprPriority = 1
facep2      = 1

[state ]
type = velset
trigger1 = animelem = 3
x = 3

[State 620, Voice]
type = PlaySnd
trigger1 = Animelem = 1 && Random <= 500
value = s4,4 ;+ (random % 2)
channel = 0

[State 620, AR hit]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
guardflag = MA
hitflag = MAF
guardsound = s2,0
guard.sparkno = 40
sparkxy = 0, -85
air.fall = 1
animtype = Hard
damage = floor(70 * ifelse(fvar(22), 1.3, 1)), 0
pausetime = 12, 12
hitsound = s1,5
ground.type = High
ground.slidetime = 14
ground.hittime = 14
ground.velocity = -6
airguard.velocity = -6
air.type = High
air.velocity = -6
air.hittime = 14
sparkno = 2
envshake.time = 15
envshake.ampl = 8
envshake.freq = 125
envshake.phase = 125

[State 210, blast FX]
type = Explod
trigger1 = animelem = 4
anim = 8106
ID = 8106
pos = 70,-70
scale = .4,.4
postype = p1
;facing = 1
;vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 7
;ontop = 1
ownpal = 1
removeongethit = 1
angle = -30

[State 700, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S0,4

[State 700]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 44
persistent = 0


[State 700]
type = StateTypeSet
trigger1 = Anim = 44
movetype = I
persistent = 0

[State 700]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0
;-----------------------------------------------------------------------------
;Air Normal Kick
[Statedef 640]
type        = A
movetype    = A
physics     = A
juggle      = 5
poweradd    = 60
ctrl        = 0
anim        = 640
sprPriority = 1
facep2      = 1

; [state ]
; type = velset
; trigger1 = animelem = 2
; y = 3
; x = 2

[State 640, AR hit]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
guardflag = MA
hitflag = MAF
guardsound = s2,0
guard.sparkno = 40
sparkxy = 0, -33
air.fall = 1
animtype = Medium
damage = floor(50 * ifelse(fvar(22), 1.3, 1)), 0
pausetime = 14, 13
hitsound = s1,2
ground.type = Low
ground.slidetime = 14
ground.hittime = 14
ground.velocity = -6
airguard.velocity = -6
air.type = High
air.velocity = -6
air.hittime = 14
sparkno = 1
envshake.time = 10
envshake.ampl = 5
envshake.freq = 120
envshake.phase = 120

[State 700, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S0,0

[State 700]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 44
persistent = 0


[State 700]
type = StateTypeSet
trigger1 = Anim = 44
movetype = I
persistent = 0

[State 700]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0
;-------------------------------------------------------------------------------
;Air Strong Kick
[Statedef 650]
type        = A
movetype    = A
physics     = A
juggle      = 5
poweradd    = 60
ctrl        = 0
anim        = 650
sprPriority = 1
facep2      = 1

[State 650, Voice]
type = PlaySnd
trigger1 = Animelem = 1 && Random <= 500
value = s4,4 ;+ (random % 2)
channel = 0

[State 650, AR hit]
type = HitDef
trigger1 = AnimElem = 7
attr = A, NA
guardflag = MA
hitflag = MAF
guardsound = s2,0
guard.sparkno = 40
sparkxy = 0, -73
air.fall = 1
animtype = Hard
damage = floor(70 * ifelse(fvar(22), 1.3, 1)), 0
pausetime = 12, 12
hitsound = s1,5
ground.type = High
ground.slidetime = 14
ground.hittime = 14
ground.velocity = -6
airguard.velocity = -6
air.type = High
air.velocity = -6
air.hittime = 14
sparkno = 2
envshake.time = 15
envshake.ampl = 8
envshake.freq = 125
envshake.phase = 125

[State 700, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S0,0

[State 700]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 44
persistent = 0


[State 700]
type = StateTypeSet
trigger1 = Anim = 44
movetype = I
persistent = 0

[State 700]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0
;-------------------------------------------------------
