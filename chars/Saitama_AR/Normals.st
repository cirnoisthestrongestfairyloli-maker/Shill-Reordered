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
trigger1 = AnimElem = 3
movetype = I

[State 11101]
type = helper
trigger1 = animelem = 2
id = 1105
persistent = 9
name = "Normal-atack"
pos = 30,-60
postype = P1
stateno = 1105
helpertype = normal
keyctrl = 0
ownpal = 1

; [State 0, Helper]
; type = Helper
; triggerall = (palno = [11,12])
; trigger1 = animelem = 2
; helpertype = normal
; name = "OnePunchMan"
; ID = 10000
; stateno = 10000
; pos = 30,-60
; postype = p1
; facing = 1
; keyctrl = 0
; ownpal = 0
; pausemovetime = 60

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


[State 11101]
type = helper
trigger1 = animelem = 4
id = 1106
persistent = 9
name = "Medium-atack"
pos = 50,-69
postype = P1
stateno = 1106
helpertype = normal
keyctrl = 0
ownpal = 1


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


[State 11101]
type = helper
trigger1 = animelem = 5
id = 1106
persistent = 9
name = "Medium-atack"
pos = 55,-56
postype = P1
stateno = 1106
helpertype = normal
keyctrl = 0
ownpal = 1

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

[State 11101]
type = helper
trigger1 = animelem = 5
id = 1107
persistent = 9
name = "Strong-atack"
pos = 64,-64
postype = P1
stateno = 1107
helpertype = normal
keyctrl = 0
ownpal = 1

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

[State 11101]
type = helper
trigger1 = animelem = 2
id = 1105
persistent = 9
name = "Normal-atack"
pos = 38,-27
postype = P1
stateno = 1105
helpertype = normal
keyctrl = 0
ownpal = 1

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

[State 11101]
type = helper
trigger1 = animelem = 3
id = 1106
persistent = 9
name = "Medium-atack"
pos = 54,-43
postype = P1
stateno = 1106
helpertype = normal
keyctrl = 0
ownpal = 1

; [State 210, Dust Helper]
; type = Helper
; trigger1 = AnimElem = 3
; helperType = Normal
; stateNo = 8103
; ID = 8100
; pos = 40,0
; name = "Dash Dust"
; posType = P1
; facing = -1
; priority = 9
; pauseMoveTime = 255
; superMoveTime = 255
; ownPal = 1

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

[State 11101]
type = helper
trigger1 = animelem = 4
id = 1107
persistent = 9
name = "Strong-atack"
pos = 49,-53
postype = P1
stateno = 1107
helpertype = normal
keyctrl = 0
ownpal = 1

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

[State 11101]
type = helper
trigger1 = animelem = 2
id = 1105
persistent = 9
name = "Normal-atack"
pos = 22,-40
postype = P1
stateno = 1105
helpertype = normal
keyctrl = 0
ownpal = 1

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

[State 11101]
type = helper
trigger1 = animelem = 4
id = 1106
persistent = 9
name = "Strong-atack"
pos = 16,-82
postype = P1
stateno = 1106
helpertype = normal
keyctrl = 0
ownpal = 1

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
trigger1 = AnimElem = 4
movetype = I

[State 11101]
type = helper
trigger1 = animelem = 3
id = 1105
persistent = 9
name = "weak-atack"
pos = 31,-5
postype = P1
stateno = 1105
helpertype = normal
keyctrl = 0
ownpal = 1

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
trigger1 = AnimElem = 4
movetype = I

[State 11101]
type = helper
trigger1 = animelem = 4
id = 1106
persistent = 9
name = "Medium-atack"
pos = 63,-18
postype = P1
stateno = 1106
helpertype = normal
keyctrl = 0
ownpal = 1

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

[State 11101]
type = helper
trigger1 = animelem = 3
id = 1105
persistent = 9
name = "Normal-atack"
pos = 50,-100
postype = P1
stateno = 1105
helpertype = normal
keyctrl = 0
ownpal = 1

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

[State 11101]
type = helper
trigger1 = animelem = 3
id = 1106
persistent = 9
name = "Medium-atack"
pos = 55,-56
postype = P1
stateno = 1106
helpertype = normal
keyctrl = 0
ownpal = 1

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

[State 11101]
type = helper
trigger1 = animelem = 3
id = 1107
persistent = 9
name = "Strong-atack"
pos = 43,-59
postype = P1
stateno = 1107
helpertype = normal
keyctrl = 0
ownpal = 1

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

[State 11101]
type = helper
trigger1 = animelem = 2
id = 1106
persistent = 0
name = "weak-atack"
pos = 40,-28
postype = P1
stateno = 1106
helpertype = normal
keyctrl = 0
ownpal = 1

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

[State 11101]
type = helper
trigger1 = animelem = 7
id = 1107
persistent = 9
name = "Strong-atack"
pos = 60,-60
postype = P1
stateno = 1107
helpertype = normal
keyctrl = 0
ownpal = 1

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
