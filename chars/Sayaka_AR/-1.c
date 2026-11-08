;===========================================================================
;†††-1 STATES†††
;===========================================================================
[remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| default values |-------------------------------------------------------

[defaults]
command.time = 15
command.buffer.time = 1

;-| ai activation |---------------------------------------------------------

[command]
name = "ai1"
command = DF, B, DB, D, DF, F, B, D, DB, x
time = 1

[command]
name = "ai2"
command = DF, B, DB, D, DF, F, B, D, DB, y
time = 1

[command]
name = "ai3"
command = DF, B, DB, D, DF, F, B, D, DB, z
time = 1

[command]
name = "ai4"
command = DF, B, DB, D, DF, F, B, D, DB, a
time = 1

[command]
name = "ai5"
command = DF, B, DB, D, DF, F, B, D, DB, b
time = 1

[command]
name = "ai6"
command = DF, B, DB, D, DF, F, B, D, DB, c
time = 1

[command]
name = "ai7"
command = DF, B, DB, D, DF, F, B, D, DB, x+y
time = 1

[command]
name = "ai8"
command = DF, B, DB, D, DF, F, B, D, DB, y+z
time = 1

[command]
name = "ai9"
command = DF, B, DB, D, DF, F, B, D, DB, z+x
time = 1

[command]
name = "ai10"
command = DF, B, DB, D, DF, F, B, D, DB, a+b
time = 1

[command]
name = "ai11"
command = DF, B, DB, D, DF, F, B, D, DB, b+c
time = 1

[command]
name = "ai12"
command = DF, B, DB, D, DF, F, B, D, DB, c+a
time = 1

[command]
name = "ai13"
command = DF, B, DB, D, DF, F, B, D, DB, x+a
time = 1

[command]
name = "ai14"
command = DF, B, DB, D, DF, F, B, D, DB, x+b
time = 1

[command]
name = "ai15"
command = DF, B, DB, D, DF, F, B, D, DB, x+c
time = 1

[command]
name = "ai16"
command = DF, B, DB, D, DF, F, B, D, DB, y+a
time = 1

[command]
name = "ai17"
command = DF, B, DB, D, DF, F, B, D, DB, y+b
time = 1

[command]
name = "ai18"
command = DF, B, DB, D, DF, F, B, D, DB, y+c
time = 1

[command]
name = "ai19"
command = DF, B, DB, D, DF, F, B, D, DB, z+a
time = 1

[command]
name = "ai20"
command = DF, B, DB, D, DF, F, B, D, DB, z+b
time = 1

[command]
name = "ai21"
command = DF, B, DB, D, DF, F, B, D, DB, z+c
time = 1

[command]
name = "ai22"
command = DF, B, DB, D, DF, F, B, D, DB, x+y+z
time = 1

[command]
name = "ai23"
command = DF, B, DB, D, DF, F, B, D, DB, x+y+a
time = 1

[command]
name = "ai24"
command = DF, B, DB, D, DF, F, B, D, DB, x+y+b
time = 1

[command]
name = "ai25"
command = DF, B, DB, D, DF, F, B, D, DB, x+y+c
time = 1

[command]
name = "ai26"
command = DF, B, DB, D, DF, F, B, D, DB, x+a+z
time = 1

[command]
name = "ai27"
command = DF, B, DB, D, DF, F, B, D, DB, x+b+z
time = 1

[command]
name = "ai28"
command = DF, B, DB, D, DF, F, B, D, DB, x+c+z
time = 1

[command]
name = "ai29"
command = DF, B, DB, D, DF, F, B, D, DB, a+y+z
time = 1

[command]
name = "ai30"
command = DF, B, DB, D, DF, F, B, D, DB, b+y+z
time = 1

[command]
name = "ai31"
command = DF, B, DB, D, DF, F, B, D, DB, c+y+z
time = 1

[command]
name = "ai32"
command = DF, B, DB, D, DF, F, B, D, DB, a+b+c
time = 1

;-| hypers |--------------------------------------------------------

;Abstract Reordered: A/B/C = light/medium/heavy, X = Regeneration / Despair, Y = grab, Z = parry,
;A+B+C = burst. Supers: 236236 / 214214 / 22 + two attacks, Lv3 = ~F, B, DB, D, DF, F, C

[command]
name = "grandioso2"
command = ~F, B, DB, D, DF, F, c
time = 40

[command]
name = "grandioso1"
command = U, D, U, D, U, D, U, D
time = 1

[command]
name = "grandioso3"
command = U, D, U, D, U, D, U, D
time = 1

[command]
name = "sforzando1"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[command]
name = "sforzando2"
command = ~D, DF, F, D, DF, F, b+c
time = 30

[command]
name = "sforzando3"
command = ~D, DF, F, D, DF, F, a+c
time = 30

[command]
name = "tempestoso1"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[command]
name = "tempestoso2"
command = ~D, DB, B, D, DB, B, b+c
time = 30

[command]
name = "tempestoso3"
command = ~D, DB, B, D, DB, B, a+c
time = 30

[command]
name = "affettuoso1"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[command]
name = "affettuoso2"
command = ~D, DB, B, D, DB, B, b+c
time = 30

[command]
name = "affettuoso3"
command = ~D, DB, B, D, DB, B, a+c
time = 30

[command]
name = "arioso1"
command = ~D, D, a+b
time = 30

[command]
name = "arioso2"
command = ~D, D, b+c
time = 30

[command]
name = "arioso3"
command = ~D, D, a+c
time = 30

[command]
name = "oratorio1"
command = ~D, DF, F, a
time = 15

[command]
name = "oratorio2"
command = ~D, DF, F, b
time = 15

[command]
name = "oratorio3"
command = ~D, DF, F, c
time = 15

[command]
name = "scherzo1"
command = ~D, DB, B, a
time = 15

[command]
name = "scherzo2"
command = ~D, DB, B, b
time = 15

[command]
name = "scherzo3"
command = ~D, DB, B, c
time = 15

[command]
name = "aero1"
command = ~D, DB, B, a
time = 15

[command]
name = "aero2"
command = ~D, DB, B, b
time = 15

[command]
name = "aero3"
command = ~D, DB, B, c
time = 15

[command]
name = "aria"
command = U, D, U, D, U, D, U, D
time = 1

[command]
name = "ppp"
command = U, D, U, D, U, D, U, D
time = 1

[command]
name = "kkk"
command = U, D, U, D, U, D, U, D
time = 1

[command]
name = "p+k"
command = U, D, U, D, U, D, U, D
time = 1

[command]
name = "ar_burst"
command = a+b+c
time = 1

[command]
name = "ar_parry"
command = z
time = 1

[command]
name = "hold_x"
command = /x
time = 1

[command]
name = "hold_c"
command = /c
time = 1

[command]
name = "recovery"
command = x+y
time = 1

[command]
name = "recovery"
command = y
time = 1

[command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "sjump-n"
command = $D, U
time = 10

[Command]
name = "sjump-f"
command = $D, UF
time = 10

[Command]
name = "sjump-b"
command = $D, UB
time = 10

;-| original command |------------------------------------------------------

[command]
name = "hold_s"
command = /s
time = 1

[command]
name = "sdown"
command = /D
time = 1

[command]
name = "sdownfwd"
command = /DF
time = 1

[command]
name = "sdownback"
command = /DB
time = 1

[command]
name = "u"
command = /U
time = 1

[command]
name = "uf"
command = /UF
time = 1

[command]
name = "ub"
command = /UB
time = 1

;-| double tap |-----------------------------------------------------------

[command]
name = "ff" ;required (do not remove)
command = F, F
time = 10

[command]
name = "bb" ;required (do not remove)
command = B, B
time = 10

;-| 2/3 button combination |-----------------------------------------------

[command]
name = "fwd_a"
command = /$F,a
time = 1

[command]
name = "fwd_b"
command =/$F,b
time = 1

[command]
name = "fwd_c"
command = /$F,c
time = 1

[command]
name = "fwd_x"
command = /$F,x
time = 1

[command]
name = "fwd_s"
command = /$F,s
time = 1

[command]
name = "fwd_y"
command = /$F,y
time = 1

[command]
name = "fwd_z"
command = /$F,z
time = 1

[command]
name = "back_a"
command = /$B,a
time = 1

[command]
name = "back_b"
command = /$B,b
time = 1

[command]
name = "back_c"
command = /$B,c
time = 1

[command]
name = "back_x"
command = /$B,x
time = 1

[command]
name = "back_y"
command = /$B,y
time = 1

[command]
name = "back_z"
command = /$B,z
time = 1

[command]
name = "down_a"
command = /$D,a
time = 1

[command]
name = "down_b"
command = /$D,b
time = 1

[command]
name = "down_c"
command = /$D,c
time = 1

[command]
name = "down_x"
command = /$D,x
time = 1

[command]
name = "down_y"
command = /$D,y
time = 1

[command]
name = "down_z"
command = /$D,z
time = 1

;-| single button |---------------------------------------------------------

[command]
name = "a"
command = a
time = 1

[command]
name = "b"
command = b
time = 1

[command]
name = "c"
command = c
time = 1

[command]
name = "x"
command = x
time = 1

[command]
name = "y"
command = y
time = 1

[command]
name = "z"
command = z
time = 1

[command]
name = "start"
command = s
time = 1

;-| dir |--------------------------------------------------------------

[command]
name = "fwd"
command = $F
time = 1

[command]
name = "back"
command = $B
time = 1

[command]
name = "up"
command = $U
time = 1

[command]
name = "down"
command = $D
time = 1

;-| hold dir |--------------------------------------------------------------

[command]
name = "holdfwd";required (do not remove)
command = /$F
time = 1

[command]
name = "holdback";required (do not remove)
command = /$B
time = 1

[command]
name = "holdup" ;required (do not remove)
command = /$U
time = 1

[command]
name = "holddown";required (do not remove)
command = /$D
time = 1

[statedef -1]

;===========================================================================
; Abstract Reordered controls (human). The original AI section below is unchanged.
;===========================================================================
;---------------------------------------------------------------------------
;Abstract Reordered: burst (Kamijo's) - A+B+C while being hit, recharges in 75 s (var(32))
[State -1, AR burst round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(32) = 0

[State -1, AR burst recharge]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = var(32) > 0
var(32) = -1
ignorehitpause = 1

;Abstract Reordered: comeback - once a combo has done more than 15% of max life, every further hit
;knocks half a second (30 ticks) off the burst cooldown. var(33) = life when the combo started, var(34) = life last tick
[State -1, AR burst comeback]
type = VarAdd
triggerall = !ishelper
triggerall = var(32) > 0
trigger1 = movetype = H
trigger1 = Life < var(34)
trigger1 = var(33) - Life > LifeMax * 0.15
var(32) = -30
ignorehitpause = 1

[State -1, AR burst comeback clamp]
type = VarSet
triggerall = !ishelper
trigger1 = var(32) < 0
var(32) = 0
ignorehitpause = 1

[State -1, AR burst combo start]
type = VarSet
triggerall = !ishelper
trigger1 = movetype != H
var(33) = Life
ignorehitpause = 1

[State -1, AR burst last life]
type = VarSet
triggerall = !ishelper
trigger1 = 1
var(34) = Life
ignorehitpause = 1

;Abstract Reordered: burst HUD - Touma's BURST gauge, recoloured, just under the lifebar.
;var(32) = cooldown ticks (4500 = just used, 0 = ready). Anims 9660-9668, explod IDs = anims.
[State -1, AR burst gauge 9668 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9668) = 0
trigger1 = var(32) = 0
anim = 9668
ID = 9668
pos = (GameWidth - 320) / 2 + 52, 43
postype = left
facing = 1
scale = .5, .5
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst gauge 9661 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9661) = 0
trigger1 = var(32) = 0
anim = 9661
ID = 9661
pos = (GameWidth - 320) / 2 + 52, 43
postype = left
facing = 1
scale = .5, .5
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst gauge 9660 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9660) = 0
trigger1 = var(32) > 3750
anim = 9660
ID = 9660
pos = (GameWidth - 320) / 2 + 52, 43
postype = left
facing = 1
scale = .5, .5
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst gauge 9662 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9662) = 0
trigger1 = var(32) <= 3750 && var(32) > 3000
anim = 9662
ID = 9662
pos = (GameWidth - 320) / 2 + 52, 43
postype = left
facing = 1
scale = .5, .5
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst gauge 9663 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9663) = 0
trigger1 = var(32) <= 3000 && var(32) > 2250
anim = 9663
ID = 9663
pos = (GameWidth - 320) / 2 + 52, 43
postype = left
facing = 1
scale = .5, .5
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst gauge 9664 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9664) = 0
trigger1 = var(32) <= 2250 && var(32) > 1500
anim = 9664
ID = 9664
pos = (GameWidth - 320) / 2 + 52, 43
postype = left
facing = 1
scale = .5, .5
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst gauge 9665 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9665) = 0
trigger1 = var(32) <= 1500 && var(32) > 750
anim = 9665
ID = 9665
pos = (GameWidth - 320) / 2 + 52, 43
postype = left
facing = 1
scale = .5, .5
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst gauge 9666 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9666) = 0
trigger1 = var(32) <= 750 && var(32) > 0
anim = 9666
ID = 9666
pos = (GameWidth - 320) / 2 + 52, 43
postype = left
facing = 1
scale = .5, .5
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst gauge 9667 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9667) = 0
trigger1 = var(32) > 3750
anim = 9667
ID = 9667
pos = (GameWidth - 320) / 2 + 52, 43
postype = left
facing = 1
scale = .5, .5
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 11
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst gauge 9668 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9668) = 0
trigger1 = var(32) = 0
anim = 9668
ID = 9668
pos = (GameWidth - 320) / 2 + 210, 43
postype = left
facing = 1
scale = .5, .5
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst gauge 9661 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9661) = 0
trigger1 = var(32) = 0
anim = 9661
ID = 9661
pos = (GameWidth - 320) / 2 + 210, 43
postype = left
facing = 1
scale = .5, .5
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst gauge 9660 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9660) = 0
trigger1 = var(32) > 3750
anim = 9660
ID = 9660
pos = (GameWidth - 320) / 2 + 210, 43
postype = left
facing = 1
scale = .5, .5
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst gauge 9662 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9662) = 0
trigger1 = var(32) <= 3750 && var(32) > 3000
anim = 9662
ID = 9662
pos = (GameWidth - 320) / 2 + 210, 43
postype = left
facing = 1
scale = .5, .5
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst gauge 9663 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9663) = 0
trigger1 = var(32) <= 3000 && var(32) > 2250
anim = 9663
ID = 9663
pos = (GameWidth - 320) / 2 + 210, 43
postype = left
facing = 1
scale = .5, .5
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst gauge 9664 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9664) = 0
trigger1 = var(32) <= 2250 && var(32) > 1500
anim = 9664
ID = 9664
pos = (GameWidth - 320) / 2 + 210, 43
postype = left
facing = 1
scale = .5, .5
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst gauge 9665 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9665) = 0
trigger1 = var(32) <= 1500 && var(32) > 750
anim = 9665
ID = 9665
pos = (GameWidth - 320) / 2 + 210, 43
postype = left
facing = 1
scale = .5, .5
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst gauge 9666 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9666) = 0
trigger1 = var(32) <= 750 && var(32) > 0
anim = 9666
ID = 9666
pos = (GameWidth - 320) / 2 + 210, 43
postype = left
facing = 1
scale = .5, .5
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst gauge 9667 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9667) = 0
trigger1 = var(32) > 3750
anim = 9667
ID = 9667
pos = (GameWidth - 320) / 2 + 210, 43
postype = left
facing = 1
scale = .5, .5
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 11
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst gauge 9668 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9668)
trigger1 = !(var(32) = 0)
ID = 9668
ignorehitpause = 1

[State -1, AR burst gauge 9661 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9661)
trigger1 = !(var(32) = 0)
ID = 9661
ignorehitpause = 1

[State -1, AR burst gauge 9660 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9660)
trigger1 = !(var(32) > 3750)
ID = 9660
ignorehitpause = 1

[State -1, AR burst gauge 9662 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9662)
trigger1 = !(var(32) <= 3750 && var(32) > 3000)
ID = 9662
ignorehitpause = 1

[State -1, AR burst gauge 9663 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9663)
trigger1 = !(var(32) <= 3000 && var(32) > 2250)
ID = 9663
ignorehitpause = 1

[State -1, AR burst gauge 9664 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9664)
trigger1 = !(var(32) <= 2250 && var(32) > 1500)
ID = 9664
ignorehitpause = 1

[State -1, AR burst gauge 9665 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9665)
trigger1 = !(var(32) <= 1500 && var(32) > 750)
ID = 9665
ignorehitpause = 1

[State -1, AR burst gauge 9666 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9666)
trigger1 = !(var(32) <= 750 && var(32) > 0)
ID = 9666
ignorehitpause = 1

[State -1, AR burst gauge 9667 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9667)
trigger1 = !(var(32) > 3750)
ID = 9667
ignorehitpause = 1


[State -1, AR burst]
type = ChangeState
value = ifelse(StateType = A, 7751, 7750)
triggerall = !ishelper
triggerall = var(50) = 0
triggerall = command = "ar_burst"
triggerall = var(32) = 0
triggerall = RoundState = 2
triggerall = Alive
trigger1 = (stateno = 5000 || stateno = 5010 || stateno = 5020 || stateno = 5070) && Time > 0
trigger2 = stateno = [5001, 5099]
trigger2 = stateno != 5000 && stateno != 5010 && stateno != 5020 && stateno != 5070

;Abstract Reordered: parry on Z
[state -1, AR parry]
type = changestate
value = 7740
triggerall = var(50) = 0
triggerall = command = "ar_parry"
trigger1 = ctrl

;Abstract Reordered: X after she has lost a round = Despair install (gauge full)
[state -1, AR despair install]
type = changestate
value = 7780
triggerall = var(50) = 0
triggerall = command = "x"
triggerall = var(39) = 1
triggerall = var(38) = 0
triggerall = fvar(5) >= 1000
triggerall = roundstate = 2
triggerall = statetype != a
trigger1 = ctrl

;Abstract Reordered: X before she has lost a round = Regeneration (hold)
[state -1, AR regeneration]
type = changestate
value = 7770
triggerall = var(50) = 0
triggerall = command = "x"
triggerall = var(39) = 0
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = power >= 4
triggerall = RedLife > Life
trigger1 = ctrl

;---------------------------------------------------------------------------
; Supers
[state -1, grandioso (air)]
type = varset
triggerall = var(50) = 0
triggerall = command = "grandioso2"
triggerall = statetype = a
triggerall = power >= 3000
trigger1 = ctrl
trigger2 = stateno = [400,450]
trigger2 = movecontact
var(7) = 2

[state -1, grandioso (air)]
type = changestate
value = 3200
triggerall = var(50) = 0
triggerall = command = "grandioso2"
triggerall = statetype = a
triggerall = power >= 3000
trigger1 = ctrl
trigger2 = stateno = [400,450]
trigger2 = movecontact

[state -1, grandioso (ground: leap first)]
type = changestate
value = 7790
triggerall = var(50) = 0
triggerall = command = "grandioso2"
triggerall = power >= 3000
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 106
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = [1000,1299]
trigger4 = movecontact

[state -1, sforzando]
type = changestate
value = 3000
triggerall = var(50) = 0
triggerall = command = "sforzando1" || command = "sforzando2" || command = "sforzando3"
triggerall = power >= 1000
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 106
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = [1000,1299]
trigger4 = movecontact

[state -1, affettuoso (despair install only)]
type = changestate
value = 7805   ;rush into the stab sequence
triggerall = var(50) = 0
triggerall = command = "affettuoso1" || command = "affettuoso2" || command = "affettuoso3"
triggerall = var(40) = 2
triggerall = power >= 1000
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 106
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = [1000,1299]
trigger4 = movecontact

[state -1, tempestoso]
type = changestate
value = 3300
triggerall = var(50) = 0
triggerall = command = "tempestoso1" || command = "tempestoso2" || command = "tempestoso3"
triggerall = var(40) != 2
triggerall = power >= 1000
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 106
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = [1000,1299]
trigger4 = movecontact

[state -1, arioso]
type = changestate
value = 3100
triggerall = var(50) = 0
triggerall = command = "arioso1" || command = "arioso2" || command = "arioso3"
triggerall = power >= 1000
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 106
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = [1000,1299]
trigger4 = movecontact

;---------------------------------------------------------------------------
; Specials
[state -1, oratorio A]
type = changestate
value = 1000
triggerall = var(50) = 0
triggerall = command = "oratorio1"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 106
trigger3 = stateno = [200,350]
trigger3 = movecontact

[state -1, oratorio B]
type = changestate
value = 1030
triggerall = var(50) = 0
triggerall = command = "oratorio2"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 106
trigger3 = stateno = [200,350]
trigger3 = movecontact

[state -1, oratorio C]
type = changestate
value = 1060
triggerall = var(50) = 0
triggerall = command = "oratorio3"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 106
trigger3 = stateno = [200,350]
trigger3 = movecontact

[state -1, oratorio A (air)]
type = changestate
value = 1100
triggerall = var(50) = 0
triggerall = command = "oratorio1"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [400,450]
trigger2 = (stateno != 420) && (stateno != 450)
trigger2 = movecontact

[state -1, oratorio B (air)]
type = changestate
value = 1130
triggerall = var(50) = 0
triggerall = command = "oratorio2"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [400,450]
trigger2 = (stateno != 420) && (stateno != 450)
trigger2 = movecontact

[state -1, oratorio C (air)]
type = changestate
value = 1160
triggerall = var(50) = 0
triggerall = command = "oratorio3"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [400,450]
trigger2 = (stateno != 420) && (stateno != 450)
trigger2 = movecontact

[state -1, scherzo A]
type = changestate
value = 1200
triggerall = var(50) = 0
triggerall = command = "scherzo1"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 106
trigger3 = stateno = [200,350]
trigger3 = movecontact

[state -1, scherzo B]
type = changestate
value = 1210
triggerall = var(50) = 0
triggerall = command = "scherzo2"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 106
trigger3 = stateno = [200,350]
trigger3 = movecontact

[state -1, scherzo C]
type = changestate
value = 1220
triggerall = var(50) = 0
triggerall = command = "scherzo3"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 106
trigger3 = stateno = [200,350]
trigger3 = movecontact

[state -1, aero dive (after a super jump)]
type = changestate
value = 80
triggerall = var(50) = 0
triggerall = command = "aero1" || command = "aero2" || command = "aero3"
trigger1 = sysvar(4) = 1
trigger1 = ctrl

;---------------------------------------------------------------------------
; Grab on Y: Blue-R on the ground, CC Sword in the air
[state -1, blue-r]
type = changestate
value = 500
triggerall = var(50) = 0
triggerall = command = "y"
triggerall = statetype = s
trigger1 = ctrl

[state -1, cc sword]
type = changestate
value = 550
triggerall = var(50) = 0
triggerall = command = "y"
triggerall = statetype = a
trigger1 = ctrl

;---------------------------------------------------------------------------
; Movement (unchanged)
[state -1, run fwd]
type = changestate
value = 100
triggerall = var(50) = 0
triggerall = command = "ff"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 197
trigger2 = time > 10
;---------------------------------------------------------------------------
;■バックステップ
[state -1, step back]
type = changestate
value = 105
triggerall = var(50) = 0
triggerall = command = "bb"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 197
trigger2 = time > 10
;---------------------------------------------------------------------------
;■空中ダッシュ
[state -1, air dash fwd]
type = changestate
value = 110
triggerall = var(50) = 0
triggerall = sysvar(3) > 0
triggerall = command = "ff"
trigger1 = stateno != 110
trigger1 = statetype = a
trigger1 = ctrl
;---------------------------------------------------------------------------
;■空中バックダッシュ
[state -1, air dash back]
type = changestate
value = 115
triggerall = var(50) = 0
triggerall = sysvar(3) > 0
triggerall = command = "bb"
trigger1 = stateno != 115
trigger1 = statetype = a
trigger1 = ctrl
;---------------------------------------------------------------------------
;■スーパージャンプ
[state -1, super jump]
type = changestate
value = 60
triggerall = var(50) = 0
triggerall = (command = "sjump-n") || (command = "sjump-f") || (command = "sjump-b")
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 197
trigger2 = time > 10
;---------------------------------------------------------------------------
;■エアジャンプ
[state -1, triple jump]
type = changestate
value = 45
triggerall = var(50) = 0
triggerall = sysvar(3) > 0
triggerall = command = "up"
trigger1 = statetype = a
trigger1 = time >= 10
trigger1 = ctrl
;---------------------------------------------------------------------------
;■ジャンプキャンセル
[state -1, jump]
type = changestate
value = 40
triggerall = var(50) = 0
triggerall = sysvar(3) > 0
triggerall = command = "up" || command = "holdup"
triggerall = movehit
trigger1 = stateno = [200,350]
trigger1 = stateno != 252
trigger1 = stateno != 350
ignorehitpause = 1
;---------------------------------------------------------------------------
;■エアジャンプキャンセル
[state -1, dowble jump]
type = changestate
value = 45
triggerall = var(50) = 0
triggerall = sysvar(3) > 0
triggerall = command = "up"
triggerall = movehit
trigger1 = stateno = [400,450]
trigger1 = (stateno != 420) && (stateno != 450)
ignorehitpause = 1
;===========================================================================
;†特殊技†
;===========================================================================
;■流星剣

;---------------------------------------------------------------------------
; Normals: light -> medium -> heavy, standing into crouching of the same strength
;Abstract Reordered: j.2C cancels into an air dash on hit, twice per combo (fvar(7) counts them, reset in -2)
[state -1, j.2C air dash fwd]
type = changestate
value = 110
triggerall = command = "ff"
triggerall = var(50) = 0
triggerall = fvar(7) < 2
triggerall = NumTarget(463)
triggerall = target(463), MoveType = H
triggerall = target(463), StateNo != [150,159]
trigger1 = stateno = 465
trigger2 = stateno = 463
trigger2 = MoveHit

[state -1, j.2C air dash back]
type = changestate
value = 115
triggerall = command = "bb"
triggerall = var(50) = 0
triggerall = fvar(7) < 2
triggerall = NumTarget(463)
triggerall = target(463), MoveType = H
triggerall = target(463), StateNo != [150,159]
trigger1 = stateno = 465
trigger2 = stateno = 463
trigger2 = MoveHit

[state -1, matagi shooting sword (j.2C)]
type = changestate
value = 460
triggerall = var(50) = 0
triggerall = command = "down_c"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 400 || stateno = 410
trigger2 = movecontact

;Abstract Reordered: after a landed ground 236A / 236C, jump cancel to start an air combo
[state -1, oratorio jump cancel (ground)]
type = changestate
value = 40
triggerall = var(50) = 0
triggerall = command = "up" || command = "holdup"
triggerall = (NumTarget(1010) || NumTarget(1070))
trigger1 = stateno = 1095

[state -1, oratorio jump cancel (air)]
type = changestate
value = 45
triggerall = var(50) = 0
triggerall = command = "up"
triggerall = sysvar(3) > 0
triggerall = (NumTarget(1010) || NumTarget(1070))
trigger1 = stateno = 1090

[state -1, 5A]
type = changestate
value = 200
triggerall = var(50) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 330
trigger2 = movecontact

[state -1, 2A]
type = changestate
value = 330
triggerall = var(50) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 330
trigger2 = movecontact

[state -1, 5B]
type = changestate
value = 210
triggerall = var(50) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 330
trigger2 = movecontact

[state -1, 6B]
type = changestate
value = 240
triggerall = var(50) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 330
trigger2 = movecontact

[state -1, 2B]
type = changestate
value = 340
triggerall = var(50) = 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 330 || stateno = 210
trigger2 = movecontact

[state -1, 5C]
type = changestate
value = 220
triggerall = var(50) = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 330 || stateno = 210 || stateno = 340 || stateno = 341 || stateno = 342 || stateno = 240
trigger2 = movecontact
;2C into 5C (not if this 2C came from 5C, so it cannot loop)
trigger3 = stateno = 350
trigger3 = prevstateno != 220
trigger3 = movecontact

[state -1, 6C]
type = changestate
value = 250
triggerall = var(50) = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 330 || stateno = 210 || stateno = 340 || stateno = 341 || stateno = 342 || stateno = 240
trigger2 = movecontact

[state -1, 3C]
type = changestate
value = 320
triggerall = var(50) = 0
triggerall = command = "c"
triggerall = command = "sdownfwd"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 330 || stateno = 210 || stateno = 340 || stateno = 341 || stateno = 342 || stateno = 240
trigger2 = movecontact

[state -1, 2C]
type = changestate
value = 350
triggerall = var(50) = 0
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = command != "sdownfwd"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 330 || stateno = 210 || stateno = 340 || stateno = 341 || stateno = 342 || stateno = 240
trigger2 = movecontact
;5C into 2C (not if this 5C came from 2C)
trigger3 = stateno = 220
trigger3 = prevstateno != 350
trigger3 = movecontact
trigger4 = stateno = 1095   ;after a landed 236A / 236C
trigger4 = (NumTarget(1010) || NumTarget(1070))

[state -1, j.A]
type = changestate
value = 400
triggerall = var(50) = 0
triggerall = command = "a"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = 1090   ;air combo after a landed 236A / 236C
trigger2 = (NumTarget(1010) || NumTarget(1070))

[state -1, j.B]
type = changestate
value = 410
triggerall = var(50) = 0
triggerall = command = "b"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 1090   ;air combo after a landed 236A / 236C
trigger3 = (NumTarget(1010) || NumTarget(1070))

;Abstract Reordered: keep holding C through j.C's windup = spinning dive (7810)
[state -1, j.C spin (hold C)]
type = changestate
value = 7810
triggerall = var(50) = 0
triggerall = command = "hold_c"
trigger1 = stateno = 420
trigger1 = AnimElemNo(0) = 3
trigger1 = AnimElemTime(3) >= 1
trigger1 = !MoveContact

[state -1, j.C]
type = changestate
value = 420
triggerall = var(50) = 0
triggerall = command = "c"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = 400 || stateno = 410
trigger2 = movecontact
trigger3 = stateno = 1090   ;air combo after a landed 236A / 236C
trigger3 = (NumTarget(1010) || NumTarget(1070))


;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;===========================================================================
;†AI ACTIVATION SWITCH†
;===========================================================================
[state -1, ai]
type = helper
triggerall = !ishelper
triggerall = numhelper(9990) = 0
triggerall = var(51) = 0
trigger1 = command = "ai1"
trigger2 = command = "ai2"
trigger3 = command = "ai3"
trigger4 = command = "ai4"
trigger5 = command = "ai5"
trigger6 = command = "ai6"
trigger7 = command = "ai7"
trigger8 = command = "ai8"
trigger9 = command = "ai9"
trigger10 = command = "ai10"
trigger11 = command = "ai11"
trigger12 = command = "ai12"
trigger13 = command = "ai13"
trigger14 = command = "ai14"
trigger15 = command = "ai15"
trigger16 = command = "ai16"
trigger17 = command = "ai17"
trigger18 = command = "ai18"
trigger19 = command = "ai19"
trigger20 = command = "ai20"
trigger21 = command = "ai21"
trigger22 = command = "ai22"
trigger23 = command = "ai23"
trigger24 = command = "ai24"
trigger25 = command = "ai25"
trigger26 = command = "ai26"
trigger27 = command = "ai27"
trigger28 = command = "ai28"
trigger29 = command = "ai29"
trigger30 = command = "ai30"
trigger31 = command = "ai31"
trigger32 = command = "ai32"
trigger33 = var(52) = 1
name = "ai"
id = 9990
stateno = 9990
postype = front
pos = (0) - GameWidth/2,0
facing = facing

[state -1, setting]
type = helper
triggerall = !ishelper
triggerall = numhelper(9999) = 0
trigger1 = var(2) < 100
trigger2 = numhelper(9990) != 0
name = "setting"
id = 9999
stateno = 9999
postype = front
pos = (0) - GameWidth/2,0
;===========================================================================
;†環境変数†
;===========================================================================
;■リセット
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = var(50) = 1
trigger1 = random < 50*var(50);250
trigger2 = var(50) = 2
trigger2 = random < 10*var(50);50
trigger3 = var(50) = 3
trigger3 = random < 5*var(50);25
trigger4 = var(50) = 4
trigger4 = random < 1*var(50);5
trigger5 = movetype = h
trigger5 = stateno != [150,155]
var(53) = 0

;■スケルツォコンボ
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 10
trigger1 = p2movetype != h
trigger2 = stateno = 200
var(53) = 0

;■オラトリオコンボ
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 20
trigger1 = p2movetype != h
trigger2 = stateno = 200
var(53) = 0

;■ジャンプ連係
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = [30,39]
trigger1 = stateno = 52
trigger2 = stateno = 0
var(53) = 0

;■Ｓジャンプ連係
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = [40,49]
trigger1 = stateno = 0
var(53) = 0

;■十字剣コンボ
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 50
trigger1 = stateno = 52
trigger2 = stateno = 1160
trigger3 = stateno = 3200
var(53) = 0

;■スケルツォ・コマンド管理
[state -1, varset]
type = varset
triggerall = var(50) > 1
trigger1 = stateno = 1200
trigger1 = random < 200*var(50)
var(7) = 2-2*(p2statetype=a)

[state -1, varset]
type = varset
triggerall = var(50) > 1
trigger1 = stateno = 1210
trigger1 = random < 200*var(50)
var(7) = 3-3*(p2statetype=a)

;■スーパージャンプ・モード
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = 60
var(53) = 40+(random<500)

;■ガードキャンセル・インターバル
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = 2000
trigger2 = stateno = 900
var(55) = 2000-100*var(50)

[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = var(55) > 0
var(55) = -1
ignorehitpause = 1

;■無敵技・インターバル
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = 3000
trigger2 = stateno = 3100
var(56) = 600

[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = var(56) > 0
var(56) = -1
ignorehitpause = 1

;■挑発・インターバル
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = [195,199]
trigger1 = time < 5
var(57) = 500

[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = var(57) > 0
var(57) = -1
ignorehitpause = 1

;■投げ無敵認識
[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = stateno = 500 || stateno = 550
trigger1 = animtime = 0
var(48) = 1

;■投げ無敵認識解除
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = numenemy
trigger1 = enemy,roundsexisted = 0
trigger1 = roundstate < 2
trigger2 = stateno = 500 || stateno = 550
trigger2 = movehit
var(48) = 0

;■累積監視
[state -1, varadd]
type = varadd
triggerall = var(50) != 0
triggerall = alive && numenemy
trigger1 = enemynear,ctrl = 0
trigger1 = p2movetype != h
trigger1 = p2stateno != 5120
var(49) = 1

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = alive && numenemy
trigger1 = enemynear,ctrl = 1
trigger2 = p2movetype = h
var(49) = 0

;■歩行
[state -1, varset]
type = varset
triggerall = !ishelper
triggerall = var(50) != 0
triggerall = sysvar(1) = 0
triggerall = stateno = 21
trigger1 = p2movetype = h
trigger2 = random < 500+100*(pos x<0)+100*(p2bodydist x>100)
sysvar(1) = 1

[state -1, varset]
type = varset
triggerall = !ishelper
triggerall = var(50) != 0
triggerall = sysvar(1) = 0
triggerall = stateno = 21
triggerall = p2movetype != h
trigger1 = random < 300*100*(pos x>0)+100*(p2bodydist x<100)
sysvar(1) = -1

;■ジャンプ
[state -1, varset]
type = varset
triggerall = !ishelper
triggerall = var(50) != 0
triggerall = stateno = 41 || stateno = 45
triggerall = time < 2
triggerall = p2movetype != h
trigger1 = random < 100
sysvar(1) = 0-1*(random<500)

;■スーパージャンプ
[state -1, varset]
type = varset
triggerall = !ishelper
triggerall = var(50) != 0
triggerall = stateno = 60
trigger1 = frontedgedist > 160
trigger1 = time < 3
sysvar(1) = 1

[state -1, varset]
type = varset
triggerall = !ishelper
triggerall = var(50) != 0
triggerall = stateno = 60
trigger1 = random < 500
trigger1 = time < 3
sysvar(1) = -1
;===========================================================================
;†反撃動作†
;===========================================================================
;■誰が為にアフェットゥオーソ
[state -1, affettuoso]
type = changestate
value = 3400
triggerall = var(40) = 2
triggerall = var(50) > 2
triggerall = var(59) = 0
triggerall = power >= 1000
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = ctrl || (stateno = 21) || (stateno = 101) || ((stateno = 5120) && (animtime = 0))
triggerall = p2bodydist x = [-50,100]
triggerall = p2dist y > -50
triggerall = enemynear,vel y >= 0
trigger1 = p2movetype = a
trigger1 = enemynear,time < 20-(lifemax-life)*var(50)*0.001
trigger1 = var(49) >= 15-(lifemax-life)*var(50)*0.001
trigger2 = prevstateno = [130,155]			;■ガードヒット監視
triggerall = random < 40*var(50);100

;■小パンチ
[state -1, jab]
type = changestate
value = 200+100*(random<300)
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
triggerall = p2bodydist x < 50
trigger1 = random < 20*var(50)+(var(50)=5)*50;100+50
trigger1 = prevstateno = [130,155]			;■ガードヒット監視
;---------------------------------------------------------------------------
;■小キック
[state -1, short]
type = changestate
value = 230+100*(random<300)
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
trigger1 = p2bodydist x = [50,100]
trigger1 = random < 20*var(50)+(var(50)=5)*50;100+50
trigger1 = prevstateno = [130,155]			;■ガードヒット監視
;---------------------------------------------------------------------------
;■中キック
[state -1, forward]
type = changestate
value = 240+100*(random<500)
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
triggerall = p2movetype != a
trigger1 = p2bodydist x = [50,120]
trigger1 = random < 10*var(50)+(var(50)=5)*50;50+50
trigger1 = prevstateno = [130,155]			;■ガードヒット監視
;---------------------------------------------------------------------------
;■しゃがみ大キック
[state -1, crouching roundhouse]
type = changestate
value = 350
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
triggerall = p2movetype != a
trigger1 = p2bodydist x = [100,150]
trigger1 = random < 15*var(50);75
trigger1 = prevstateno = [130,155]			;■ガードヒット監視
;---------------------------------------------------------------------------
;■愛を込めてスフォルツァンド
[state -1, sforzando]
type = changestate
value = 3000
triggerall = var(50) != 0
triggerall = var(56) = 0
triggerall = power >= 2000-1000*(life<lifemax/3)
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101) || ((stateno = 5120) && (animtime = 0))
triggerall = statetype != a
triggerall = p2bodydist x = [-10,100]
triggerall = p2dist y > -60
trigger1 = p2movetype = a
trigger1 = enemynear,time < 20-(lifemax-life)*var(50)*0.001
trigger1 = var(49) >= 15-(lifemax-life)*var(50)*0.001
trigger2 = prevstateno = [130,155]
trigger2 = time < 5
triggerall = random < 10*var(50);50
;---------------------------------------------------------------------------
;■正義を胸にアリオーソ
[state -1, arioso]
type = changestate
value = 3100
triggerall = var(50) > 2
triggerall = var(56) = 0
triggerall = power > 2000-1000*(life<lifemax/3)
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101) || ((stateno = 5120) && (animtime = 0))
triggerall = statetype != a
trigger1 = p2statetype != a
trigger1 = p2bodydist x > -10
trigger1 = p2movetype = a
trigger1 = enemynear,time < 20-(lifemax-life)*var(50)*0.001
trigger1 = var(49) >= 15-(lifemax-life)*var(50)*0.001
trigger1 = random < 10*var(50);50
;---------------------------------------------------------------------------
;■ガードキャンセル
[state -1, guard cancel attack]
type = changestate
value = 2000
triggerall = var(50) > 2
triggerall = var(55) = 0		;■禁止ラグをクリア
triggerall = power > 2000
triggerall = alive && numenemy
triggerall = stateno = [150,153]
triggerall = statetype != a
triggerall = time < 10
triggerall = life < lifemax/5
trigger1 = p2bodydist x = [-5,80]
trigger1 = p2dist y > -80
trigger1 = backedgedist < 160
trigger1 = random < 5*var(50);25
ignorehitpause = 1
;===========================================================================
;†コモン動作†
;===========================================================================
;■ガード
[state -1, guard]
type = changestate
value = 120
triggerall = var(50) != 0
triggerall = var(53) != 30
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = inguarddist
triggerall = stateno != 105
triggerall = stateno != 81
triggerall = stateno != [110,115]
trigger1 = enemynear,hitdefattr = sca,aa
trigger2 = enemynear,hitdefattr = sca,ap
trigger3 = enemynear,numproj || (enemynear,numhelper && p2movetype != h)
triggerall = random < 40*var(58)*var(50)

[state -1, guard]
type = changestate
value = 120
triggerall = !ishelper
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = p2statetype = a
triggerall = p2movetype = a
triggerall = p2dist x = [-50,50]
trigger1 = enemynear,hitdefattr = sca,aa
triggerall = random < 40*var(58)*var(50)

;■回避ステップ
[state -1, step back]
type = changestate
value = 105
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
trigger1 = p2statetype != a
trigger1 = enemynear,hitdefattr = sca,at
triggerall = random < 30*var(58)*var(50)
;===========================================================================
;†タッグ用エントリ†
;===========================================================================
;■援護
[state -1, assist & attack]
type = changestate
value = ifelse(((power<1000)||var(56)),1000,3100)
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = p2movetype = a
triggerall = p2bodydist x > -30
triggerall = p2bodydist y > -30
triggerall = numpartner
trigger1 = partner,time > 6
trigger1 = partner,statetype != l
trigger1 = partner,movetype = h
triggerall = random < 60*var(50);300
;===========================================================================
;†フリーエントリ†
;===========================================================================
;■小パンチ
[state -1, jab]
type = changestate
value = 200+30*(random<300)
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = p2statetype = s || p2statetype = c 
trigger1 = p2bodydist x = [-20,40]
trigger1 = p2movetype != a
trigger1 = random < (40+60*(p2movetype=h))*var(50);200
;---------------------------------------------------------------------------
;■ブルーアール
[state -1, blue-r]
type = changestate
value = 500
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(48) <= 5	;■投げ耐性のある相手はパス
triggerall = var(59) = 0
triggerall = alive && numenemy
triggerall = numtarget = 0
triggerall = enemynear,ctrl
triggerall = p2statetype = s || p2statetype = c
triggerall = statetype != a
triggerall = ctrl || (stateno = 21) ||  (stateno = 101)
trigger1 = p2bodydist x = [0,20]
trigger1 = p2movetype != a
trigger1 = random < 30*var(50);150
;---------------------------------------------------------------------------
;■愛を込めてスフォルツァンド/君想うテンペストーソ
[state -1, sforzando / tempestoso]
type = changestate
value = 3000+300*(p2bodydist x>80)
triggerall = var(50) != 0
triggerall = var(56) = 0
triggerall = power >= 2000-1000*(life<lifemax/3)
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = stateno = 106
trigger1 = enemynear,pos y = [-80,0]
trigger1 = p2movetype = a
trigger1 = enemynear,time < 20-(lifemax-life)*var(50)*0.001
trigger1 = var(49) >= 15-(lifemax-life)*var(50)*0.001
trigger1 = random < (10+20*(backedgebodydist<50))*var(50);50+100
;---------------------------------------------------------------------------
;■煌きのオラトリオ
[state -1, oratorio]
type = changestate
value = 1000+(p2bodydist y<-70)*30
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = stateno = 106
trigger1 = p2bodydist x > 100
trigger1 = p2movetype = a
trigger1 = enemynear,time < 20-(lifemax-life)*var(50)*0.001
trigger1 = var(49) >= 15-(lifemax-life)*var(50)*0.001
trigger1 = random < 30*var(50);150
;---------------------------------------------------------------------------
;■木漏れ日のアリア
[state -1, aria]
type = changestate
value = 1500
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2	
triggerall = movetype != a
triggerall = statetype != a
triggerall = ctrl || (stateno = 21)
trigger1 = p2bodydist x > 160
trigger1 = p2statetype != a
trigger1 = random < 10*var(50);50
;---------------------------------------------------------------------------
;■迎撃ジャンプ
[state -1, jump]
type = changestate
value = 41
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(59) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = ctrl || (stateno = 21) || (stateno = 101)
trigger1 = p2statetype = a
trigger1 = p2bodydist x = [0,50]
trigger1 = p2bodydist y = [-100,-50]
trigger1 = enemynear,vel y >= 0
trigger1 = random < (10+40*(p2movetype=h))*var(50)
;---------------------------------------------------------------------------
;■ジャンプ小パンチ
[state -1, jumping jab]
type = changestate
value = 400
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
triggerall = time > 20-3*var(50) || p2movetype = h
triggerall = vel x > 0;		コンボルート外
trigger1 = p2statetype = a
trigger1 = p2bodydist x = [-10,70]
trigger1 = p2bodydist y = [-40,60]
trigger2 = p2statetype = s || p2statetype = c
trigger2 = p2bodydist x = [-10,60]
triggerall = random < (40+60*(p2movetype=h))*var(50);200+300
;---------------------------------------------------------------------------
;■必殺天空十字剣
[state -1, cc sword]
type = changestate
value = 550
triggerall = var(50) != 0
triggerall = var(48) <= 5	;■投げ耐性のある相手はパス
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
triggerall = p2movetype != h
triggerall = ctrl
trigger1 = p2movetype != a
trigger1 = p2bodydist x = [-20,50]
trigger1 = p2bodydist y = [-50,10]
trigger1 = random < 100*var(50);500
;===========================================================================
;†ジャンプコンビネーション†
;===========================================================================
;■ジャンプ
[state -1, jump]
type = changestate
value = 41
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(59) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = ctrl || (stateno = 21) || ((stateno = 101) && (time > 10))
triggerall = p2movetype != h
trigger1 = p2movetype != a
trigger1 = p2bodydist x > 60
trigger1 = random < 10*var(50);50
trigger1 = var(53) := 30
trigger2 = p2statetype = l
trigger2 = p2bodydist x < 80
trigger2 = (enemynear,time > 30) || (p2stateno = 5120)
trigger2 = random < 50*var(50);250
trigger2 = var(53) := 31

;■煌きのオラトリオ空中２
[state -1, oratorio mid air2]
type = changestate
value = 1130
triggerall = var(50) != 0
triggerall = var(53) = 30
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
trigger1 = ((p2statetype = a) && (enemynear,time > 20)) || (enemynear,pos y < -80)
trigger1 = pos y < -60
trigger1 = p2bodydist x > 100
trigger1 = random < 60*var(50);300

;■空中ダッシュ
[state -1, air dash fwd]
type = changestate
value = 110
triggerall = var(50) > 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
triggerall = random < 80*var(50);400
trigger1 = var(53) = 30
trigger1 = sysvar(3) = 2			;■1stジャンプ
trigger1 = p2movetype != a
trigger1 = pos y < -40+2*var(50)
trigger2 = var(53) = 31
trigger2 = sysvar(3) = 2			;■1stジャンプめくりモード
trigger2 = pos y < -60
trigger2 = var(53) := 32

;■空中バックダッシュ
[state -1, air dash back]
type = changestate
value = 115-(p2bodydist x>-20)*5
triggerall = var(50) > 2
triggerall = var(53) = 32
triggerall = sysvar(3) = 1			;■2ndジャンプ
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
triggerall = random < 80*var(50);400
trigger1 = stateno != 110 
trigger1 = (time > 6) || (p2stateno = 5120)
trigger2 = ((stateno = 110) && (time >= 5))
trigger2 = (p2statetype != l) || ((p2stateno = 5120) && (time > 16))
trigger2 = p2bodydist x < -80

;■ジャンプ中キック・めくり
[state -1, jumping forward]
type = changestate
value = 440
triggerall = var(50) != 0
triggerall = var(53) = 32
triggerall = sysvar(3) = 0			;■2ndジャンプ
triggerall = alive && numenemy
triggerall = statetype = a
trigger1 = (p2statetype != l) || (p2stateno = 5120)
trigger1 = pos y > -100
trigger1 = ctrl
triggerall = random < 80*var(50);400

;■ジャンプ小パンチ
[state -1, jumping jab]
type = changestate
value = 400
triggerall = var(50) != 0
triggerall = var(53) = 30
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl || stateno = 110
triggerall = prevstateno != 465
triggerall = time > 20-3*var(50) || p2movetype = h || life < lifemax/3
trigger1 = p2statetype = a
trigger1 = p2bodydist x = [-10,70]
trigger1 = p2bodydist y = [-40,60]
trigger1 = var(53) := 0
trigger2 = p2statetype = s || p2statetype = c
trigger2 = p2bodydist x = [-10,60]
triggerall = random < (40+40*(p2movetype=h))*var(50);200+200

;■ジャンプ小キック
[state -1, jumping short]
type = changestate
value = 430-20*(prevstateno!=110)
triggerall = var(50) != 0
triggerall = var(53) = 30
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype != a
trigger1 = vel y >= 0
trigger1 = pos y < -55
trigger1 = stateno = 400
trigger1 = movehit
triggerall = random < 200*var(50);1000

;■ジャンプ中パンチ
[state -1, jumping strong]
type = changestate
value = 410
triggerall = var(50) != 0
triggerall = var(53) = 30
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = random < 200*var(50);1000
trigger1 = (stateno = 400) || (stateno = 430)
trigger1 = movecontact >= 1+(moveguarded&&(sysvar(3)=0))*3

;■ジャンプ中キック
[state -1, jumping forward]
type = changestate
value = 440
triggerall = var(50) != 0
triggerall = var(53) = 30
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = random < 200*var(50);1000
trigger1 = p2statetype != a
trigger1 = stateno = 410
trigger1 = movecontact
trigger1 = pos y < -70

;■流星剣
[state -1, matagi shooting sword]
type = changestate
value = 460
triggerall = var(50) > 3
triggerall = var(53) = 30
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = sysvar(3) != 0			;■制御可能
trigger1 = stateno = 410
trigger1 = p2statetype != a
trigger1 = movecontact
triggerall = random < 40*var(50);200

;■空中ダッシュ
[state -1, air dash fwd]
type = changestate
value = 110
triggerall = var(50) != 0
triggerall = var(53) = 30
triggerall = alive && numenemy
triggerall = statetype = a
trigger1 = prevstateno = 465
trigger1 = stateno = 50
trigger1 = time > 2
trigger1 = ctrl
triggerall = random < (80-70*(p2stateno=[120,155]))*var(50);400-350
;===========================================================================
;†スーパージャンプコンビネーション†
;===========================================================================
;■スーパージャンプ
[state -1, super jump]
type = changestate
value = 60
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = p2movetype != h
trigger1 = p2bodydist x = [-30,30]
trigger1 = p2statetype != a
trigger2 = p2dist x > 160
trigger2 = p2statetype != a
triggerall = random < 8*var(50);40
;---------------------------------------------------------------------------
;■モード１
;---------------------------------------------------------------------------
;■空中ダッシュ
[state -1, air dash fwd]
type = changestate
value = 110
triggerall = var(50) != 0
triggerall = var(53) = 40
triggerall = sysvar(3) = 1
triggerall = sysvar(4) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
trigger1 = pos y < -200
triggerall = random < 2000*var(50);1000

;■流星剣
[state -1, matagi shooting sword]
type = changestate
value = 460
triggerall = var(50) != 0
triggerall = var(53) = 40
triggerall = sysvar(4) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl || ((stateno = 110) && (time >= 3))
trigger1 = p2dist x = [-20,20]
trigger2 = prevstateno = 465
trigger2 = p2dist x = [-50-50*(p2statetype=l),50+50*(p2statetype=l)]
triggerall = random < 2000*var(50);1000

;■ジャンプ大パンチ
[state -1, jumping fierce]
type = changestate
value = 420
triggerall = var(50) != 0
triggerall = var(53) = 40
triggerall = sysvar(4) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
trigger1 = p2dist x = [-100,100]
trigger1 = p2dist y = [-100,100]
trigger1 = vel y > 0
trigger1 = p2movetype = a
triggerall = random < 2000*var(50);1000

;■煌きのオラトリオ空中２
[state -1, oratorio mid air2]
type = changestate
value = 1130
triggerall = var(50) != 0
triggerall = var(53) = 40
triggerall = sysvar(4) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
trigger1 = pos y < -60
trigger1 = p2statetype = a
trigger1 = p2dist y = [-40,40]
trigger1 = random < 60*var(50);300
;---------------------------------------------------------------------------
;■モード２
;---------------------------------------------------------------------------
;■空中バックダッシュ
[state -1, air dash back]
type = changestate
value = 115
triggerall = var(50) != 0
triggerall = var(53) = 41
triggerall = sysvar(3) = 1
triggerall = sysvar(4) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
triggerall = stateno != [80,81]
triggerall = prevstateno != [80,81]
trigger1 = p2bodydist x = [-100,100]
trigger1 = pos y < -280
triggerall = random < 2000*var(50);1000

;■エアロダイブ
[state -1, aero dive]
type = changestate
value = 80
triggerall = var(50) != 0
triggerall = var(53) = 41
triggerall = sysvar(4) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
triggerall = stateno != 115
triggerall = stateno != 81
triggerall = prevstateno != [80,81]
triggerall = (vel y > 0) || (random < 60*var(50));300
trigger1 = ((p2dist x < 140) && (pos y = [-200,-180])) || (pos y < -280)

;■ジャンプ中パンチ
[state -1, jumping strong]
type = changestate
value = 410
triggerall = var(50) != 0
triggerall = var(53) = 41
triggerall = sysvar(4) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = random < 80*var(50);400
triggerall = p2movetype != a
trigger1 = p2statetype != a
trigger1 = stateno = 81
trigger1 = ctrl
trigger1 = pos y = [-230,-200]
triggerall = random < 2000*var(50);1000

;■ジャンプ小パンチ
[state -1, jumping jab]
type = changestate
value = 400
triggerall = var(50) != 0
triggerall = var(53) = 41
triggerall = sysvar(4) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = stateno = 81
triggerall = ctrl
trigger1 = p2bodydist x = [-60,60]
trigger2 = p2bodydist y = [-180,-160]
trigger3 = pos y = [-200,-180]
triggerall = random < 80*var(50);400

;■ジャンプ大パンチ
[state -1, jumping fierce]
type = changestate
value = 420
triggerall = var(50) != 0
triggerall = var(53) = 41
triggerall = sysvar(4) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = stateno = 81
triggerall = ctrl
trigger1 = p2statetype = a
trigger1 = pos y = [-250,-220]
triggerall = random < 80*var(50);400

;■流星剣
[state -1, matagi shooting sword]
type = changestate
value = 460
triggerall = var(50) != 0
triggerall = var(53) = 41
triggerall = sysvar(4) = 1
triggerall = alive && numenemy
triggerall = statetype = a
trigger1 = stateno = 81
trigger1 = p2dist x = [-20,20]
trigger1 = random < 80*var(50);400
trigger2 = ctrl
trigger2 = prevstateno = 465
trigger2 = p2dist x = [-50-50*(p2statetype=l),50+50*(p2statetype=l)]
trigger2 = random < 150*var(50);750

;■煌きのオラトリオ空中２
[state -1, oratorio mid air2]
type = changestate
value = 1130
triggerall = var(50) != 0
triggerall = var(53) = 41
triggerall = sysvar(4) = 1
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
trigger1 = pos y < -60
trigger1 = p2statetype = a
trigger1 = p2dist y = [-40,40]
trigger1 = random < 60*var(50);300
;===========================================================================
;†十字剣コンボ†
;===========================================================================
;■装填
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = sysvar(3) != 0
trigger1 = stateno = 551
trigger1 = movehit
trigger1 = power >= 4000
trigger1 = random < 150*var(50);750
var(53) = 50

;■マギアキャンセルD
[state -1, magia cancel]
type = changestate
value = 901
triggerall = var(50) != 0
triggerall = var(53) = 50
triggerall = alive && numenemy
trigger1 = power >= 4000
trigger1 = stateno = 551
trigger1 = animelemtime(7) = 1
trigger1 = random < 200*var(50);1000

;■ジャンプ中パンチ
[state -1, jumping strong]
type = changestate
value = 410
triggerall = var(50) != 0
triggerall = var(53) = 50
triggerall = alive && numenemy
triggerall = stateno = 110
trigger1 = p2bodydist x < 45
triggerall = random < 200*var(50);1000

;■勇気を乗せてグランディオーソ
[state -1, grandioso]
type = changestate
value = 3200-2040*((power<3000)||(roundstate!=2))
triggerall = var(50) != 0
triggerall = var(53) = 50
triggerall = alive && numenemy
triggerall = p2statetype = a
trigger1 = stateno = 410
trigger1 = movehit
trigger1 = var(7) := 3
triggerall = random < 200*var(50);1000
;===========================================================================
;†地上コンボ†
;===========================================================================
;■立ち小パンチ（拾い）
[state -1, standing jab]
type = changestate
value = 200
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = p2statetype = a
triggerall = p2movetype = h
trigger1 = enemynear,vel y > 0
trigger1 = p2bodydist x = [-10,40]
trigger1 = p2bodydist y = [(-enemynear,const(movement.yaccel)*80),-20]
trigger1 = statetype != a
trigger1 = ctrl || stateno = 21 || stateno = 101
triggerall = random < 160*var(50);800
;---------------------------------------------------------------------------
;■小キック
[state -1, short]
type = changestate
value = 230+100*(statetype=c)
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = p2statetype = s || p2statetype = c
trigger1 = (stateno = 200) || (stateno = 300)
trigger1 = movecontact = [1,5]
trigger1 = random < 100*var(50);500
;---------------------------------------------------------------------------
;■しゃがみ大パンチ
[state -1, crouching fierce]
type = changestate
value = 320
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = p2statetype = a
trigger1 = stateno = 200
trigger1 = movehit = [1,10]
trigger1 = random < 200*var(50);1000
;---------------------------------------------------------------------------
;■中パンチ
[state -1, strong]
type = changestate
value = 210+100*(statetype=c)
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = p2statetype = s || p2statetype = c
triggerall = p2bodydist x < 60
trigger1 = (stateno = 200) || (stateno = 230) || (stateno = 300) || (stateno = 330)
trigger1 = movecontact = [1,10]
trigger1 = random < (50+50*(movehit))*var(50);200
;---------------------------------------------------------------------------
;■中キック
[state -1, forward]
type = changestate
value = 240+100*(p2bodydist x>60)
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = p2statetype = s || p2statetype = c
trigger1 = (stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 310) || (stateno = 330)
trigger1 = movecontact = [1,10]
trigger1 = random < 80*var(50);400
;---------------------------------------------------------------------------
;■立ち大パンチ
[state -1, standing fierce]
type = changestate
value = 220
triggerall = var(50) != 0
triggerall = alive && numenemy
trigger1 = (stateno = 240) || (stateno = 342)
trigger1 = movecontact = [1,10]
trigger1 = random < (50+50*(movehit))*var(50);200
trigger2 = (stateno = 210) || (stateno = 310)
trigger2 = p2statetype = a
trigger2 = movehit = [1,10]
trigger2 = random < 100*var(50);500
trigger3 = stateno = [200,350]
trigger3 = (stateno != 220) && (stateno != 320)
trigger3 = (stateno != 252) && (stateno != 350)
trigger3 = roundstate != 2		;■ラウンド外
trigger3 = random < 100*var(50);500
;---------------------------------------------------------------------------
;■正義を胸にアリオーソ/君想うテンペストーソ
[state -1, arioso / tempestoso]
type = changestate
value = 3100+200*((random<500)||(roundstate!=2))
triggerall = var(10) = 0
triggerall = var(50) != 0
triggerall = power >= 2000-1000*(life<lifemax/3)
triggerall = alive && numenemy
trigger1 = stateno = 220
trigger1 = movehit = [1,10]
trigger1 = random < (50+100*(p2life<150))*var(50);250
;---------------------------------------------------------------------------
;■しゃがみ大キック
[state -1, crouching roundhouse]
type = changestate
value = 350
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = p2statetype != a
trigger1 = stateno = 220
trigger1 = movehit = [1,10]
trigger2 = (stateno = 210) || (stateno = 220) || (stateno = 240) || (stateno = 342)
trigger2 = moveguarded
triggerall = random < (60+140*(var(10)=0))*var(50);300
;---------------------------------------------------------------------------
;■影踊るスケルツォ１
[state -1, scherzo1]
type = changestate
value = 1200
triggerall = var(10) != 0		;■マギアキャンセル可能
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = p2statetype != a
trigger1 = power >= 2500-1000*(life<lifemax/3)
trigger1 = stateno = 220
trigger1 = movehit = [1,10]
trigger1 = random < 60*var(50);300
trigger2 = (stateno = 220) || (stateno = 250) || (stateno = 350)
trigger2 = moveguarded = [1,10]
trigger2 = random < 150*var(50);750
;---------------------------------------------------------------------------
;■煌きのオラトリオ１
[state -1, oratorio1]
type = changestate
value = 1000+60*(roundstate!=2)
triggerall = var(50) != 0
triggerall = alive && numenemy
trigger1 = stateno = 350
trigger1 = p2statetype != l
trigger1 = movehit = [1,5]
trigger2 = stateno = 220
trigger2 = p2statetype = a
trigger2 = movehit = [1,10]
triggerall = random < 60*var(50);300
;---------------------------------------------------------------------------
;■木漏れ日のアリア
[state -1, aria]
type = changestate
value = 1500
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = stateno = 350
trigger1 = movehit = [1,5]
trigger1 = life < lifemax
trigger1 = random < 40*var(50);200
;---------------------------------------------------------------------------
;■影踊るスケルツォ３
[state -1, scherzo3]
type = changestate
value = 1220
triggerall = var(10) != 0
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = power >= 2000
trigger1 = stateno = 350
trigger1 = movehit = [1,5]
trigger1 = p2statetype != l
trigger1 = random < 80*var(50);400
;---------------------------------------------------------------------------
;■立ち大キック
[state -1, standing roundhouse]
type = changestate
value = 250
triggerall = var(50) != 0
triggerall = alive && numenemy
trigger1 = stateno = 220
trigger1 = moveguarded
trigger1 = p2statetype = c
trigger1 = random < 30*var(50);150
;---------------------------------------------------------------------------
;■しゃがみ大キック（追撃）
[state -1, crouching roundhouse]
type = changestate
value = 350
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2movetype = h
trigger1 = ctrl || (stateno = 21)
trigger1 = frontedgedist < 60
trigger1 = prevstateno != 350
trigger1 = p2stateno != 5120
trigger1 = p2statetype = a || p2statetype = l
trigger1 = enemynear,pos y > -20
trigger1 = random < 40*var(50);200
;---------------------------------------------------------------------------
;■煌きのオラトリオ３（フォロー）
[state -1, oratorio1]
type = changestate
value = 1060
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = life > lifemax/2	;■余裕があるとき
trigger1 = (stateno = 220) || (stateno = 250) || (stateno = 350)
trigger1 = moveguarded
trigger1 = random < 10*var(50);50
;---------------------------------------------------------------------------
;■マギアキャンセルN（フォロー）
[state -1, magia cancel]
type = changestate
value = 900
triggerall = var(10) > 0
triggerall = var(50) > 2
triggerall = var(55) = 0		;■禁止ラグをクリア
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = power >= 2000-1000*(life<lifemax/3)
trigger1 = stateno = 1010		;■オラトリオ
trigger1 = moveguarded = [1,5]
trigger1 = frontedgedist < 10;20
trigger1 = p2bodydist x = [-50,50]
trigger1 = random < 100*var(50);500
;---------------------------------------------------------------------------
;■追撃ジャンプ
[state -1, jump]
type = changestate
value = 41
triggerall = var(50) != 0
triggerall = alive && numenemy
trigger1 = stateno = 320
trigger1 = movehit
triggerall = random < 170*var(50);850
;===========================================================================
;□スケルツォコンボ

;■装填
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(59) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = power >= 2500-1000*(life<lifemax/3)
triggerall = stateno = 1220
triggerall = p2movetype = h
triggerall = p2stateno != [120,155]
trigger1 = p2statetype = s || p2statetype = c
trigger2 = prevstateno = 350
trigger2 = p2statetype = a
var(53) = 10

;■マギアキャンセルD
[state -1, magia cancel]
type = changestate
value = 901
triggerall = var(10) > 0
triggerall = var(50) != 0
triggerall = var(53) = 10
triggerall = alive && numenemy
triggerall = power >= 1000
trigger1 = stateno = 1220
trigger1 = animelemtime(5) = [0,3]
trigger1 = random < 150*var(50);750

;■小パンチ
[state -1, jab]
type = changestate
value = 200
triggerall = var(50) != 0
triggerall = var(53) = 10
triggerall = alive && numenemy
triggerall = stateno = 101
trigger1 = p2bodydist x = [-20,50]
trigger1 = random < 200*var(50);1000
;===========================================================================
;□オラトリオコンボ

;■マギアキャンセルN
[state -1, magia cancel]
type = changestate
value = 900
triggerall = var(50) > 2
triggerall = var(10) > 0
triggerall = alive && numenemy
triggerall = power >= 2000-1000*(life<lifemax/3)
triggerall = roundstate = 2
trigger1 = stateno = 1010
trigger1 = movehit = [5,10]
trigger1 = frontedgedist < 12
trigger1 = p2bodydist x = [-60,20]
trigger1 = var(53) := 20
trigger1 = random < 100*var(50);500

;■小パンチ
[state -1, jab]
type = changestate
value = 200
triggerall = var(50) != 0
triggerall = var(53) = 20
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = ctrl
trigger1 = p2bodydist x = [-20,50]
trigger1 = p2bodydist y = [-25,-15]
trigger1 = random < 200*var(50);1000
;===========================================================================
;□投げコンボ

;■マギアキャンセルN
[state -1, magia cancel]
type = changestate
value = 900
triggerall = var(50) > 3
triggerall = var(10) > 0
triggerall = alive && numenemy
triggerall = power >= 2000-1000*(life<lifemax/3)
triggerall = roundstate = 2
trigger1 = stateno = 502
trigger1 = movehit
trigger1 = random < 50*var(50);250
;===========================================================================
;†空中コンボ†
;===========================================================================
;■ジャンプ小パンチ
[state -1, jumping jab]
type = changestate
value = 400
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = sysvar(4) = 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
triggerall = p2movetype = h
triggerall = p2bodydist x = [-20,80]
triggerall = p2bodydist y = [-40,60]
triggerall = vel x > 0
triggerall = time > 3
trigger1 = sysvar(3) != 1		;■1st&3rdジャンプ
trigger1 = ctrl
trigger2 = sysvar(3) = 1		;■2ndジャンプ
trigger2 = stateno = 110
triggerall = random < 200*var(50);1000
;---------------------------------------------------------------------------
;■ジャンプ小キック
[state -1, jumping short]
type = changestate
value = 430
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = p2statetype = a
trigger1 = sysvar(3) != 1		;■1st&3rdジャンプ
trigger1 = stateno = 400
trigger1 = movecontact
triggerall = random < 200*var(50);1000
;---------------------------------------------------------------------------
;■ジャンプ中パンチ
[state -1, jumping strong]
type = changestate
value = 410+10*(moveguarded!=0)
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = p2statetype = a
trigger1 = sysvar(3) != 1		;■1st&3rdジャンプ
trigger1 = stateno = 430
trigger2 = sysvar(3) = 1		;■2ndジャンプ
trigger2 = stateno = 400
triggerall = movecontact
triggerall = random < 200*var(50);1000
;---------------------------------------------------------------------------
;■流星剣
[state -1, matagi shooting sword]
type = changestate
value = 460+700*(roundstate!=2)
triggerall = var(50) > 2
triggerall = alive && numenemy
trigger1 = sysvar(3) = 2		;■1stジャンプ
trigger1 = stateno = 410
trigger1 = movecontact
triggerall = random < 200*var(50);1000
;---------------------------------------------------------------------------
;■空中ダッシュ
[state -1, air dash fwd]
type = changestate
value = 110
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = p2statetype = a
trigger1 = sysvar(3) = 2		;■1stジャンプ
trigger1 = ctrl
trigger1 = prevstateno = 465
triggerall = random < 200*var(50);1000
;---------------------------------------------------------------------------
;■エアジャンプ
[state -1, air jump]
type = changestate
value = 45+1115*(roundstate!=2)
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
trigger1 = sysvar(3) = 1		;■2ndジャンプ
trigger1 = stateno = 410
trigger1 = movehit
triggerall = random < 200*var(50);1000
;---------------------------------------------------------------------------
;■勇気を乗せてグランディオーソ
[state -1, grandioso]
type = changestate
value = 3200
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = p2statetype = a
triggerall = power >= 3000
trigger1 = sysvar(3) = 0		;■3rdジャンプ
trigger1 = stateno = 410
trigger1 = movehit
trigger1 = var(7) := 3
triggerall = random < 200*var(50);1000
;---------------------------------------------------------------------------
;■ジャンプ大パンチ
[state -1, jumping fierce]
type = changestate
value = 420
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = life > lifemax/2		;■余裕があるとき
triggerall = p2statetype = a
triggerall = p2bodydist y > -40
trigger1 = stateno = 410
trigger1 = movecontact
triggerall = random < 40*var(50);200
;---------------------------------------------------------------------------
;■煌きのオラトリオ空中３
[state -1, oratorio mid air3]
type = changestate
value = 1160
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = p2statetype = a
trigger1 = sysvar(3) = 0		;■3rdジャンプ
trigger1 = stateno = 410
trigger1 = movehit
triggerall = random < 150*var(50);750
;---------------------------------------------------------------------------
;■煌きのオラトリオ空中（フォロー）
[state -1, oratorio mid air]
type = changestate
value = 1100+(p2bodydist y=[-30,30])*30
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = p2statetype = a
trigger1 = (stateno = 410) || (stateno = 430)
trigger1 = moveguarded
trigger1 = random < 80*var(50);400
;===========================================================================
;†コモン動作†
;===========================================================================
;■挑発
[state -1, taunt]
type = changestate
value = 195+(life=lifemax)*2
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(57) = 0
triggerall = var(40) = 0		;■闇堕ちしていない
triggerall = var(37) = 1
triggerall = alive
triggerall = ctrl || (stateno = 21)
triggerall = statetype != a
triggerall = prevstateno != [195,199]
triggerall = life > floor(lifemax*0.6)
trigger1 = time = 3
trigger1 = var(2)%5 = 0
trigger1 = roundstate != 2
trigger1 = matchover != 1
trigger2 = var(50) = 1			;■初心者モード
trigger2 = life > floor(lifemax*0.7)
trigger2 = random < 50
trigger3 = roundstate = 2
trigger3 = life > p2life*2		;■すごく余裕
trigger3 = random < 30+60*(p2statetype=l)
;---------------------------------------------------------------------------
;■起き上がり
[state -1, hit_getup]
type = changestate
value = 5120
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = l
triggerall = stateno = 5110
triggerall = hitover
trigger1 = time > 20
trigger1 = random < 50*var(50);250
;---------------------------------------------------------------------------
;■受身
[state -1, recover]
type = changestate
value = 5200
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = stateno = 5050
triggerall = vel y > 0
triggerall = pos y >= -20
triggerall = canrecover
trigger1 = random < 50*var(50)

[state -1, recover]
type = changestate
value = 5210
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = stateno = 5050
triggerall = vel y > -1
triggerall = canrecover
trigger1 = random < 50*var(50)
;---------------------------------------------------------------------------
;■バックステップ
[state -1, step back]
type = changestate
value = 105
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = p2bodydist x = [0,100]
triggerall = backedgedist > 80
triggerall = prevstateno != 106
trigger1 = p2movetype = a
trigger1 = enemynear,time < 20-(lifemax-life)*var(50)*0.001
trigger1 = var(49) >= 15-(lifemax-life)*var(50)*0.001
triggerall = random < 20*var(50);100
;---------------------------------------------------------------------------
;■バックステップ（へちょ解除）
[state -1, step back]
type = changestate
value = 105
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
trigger1 = stateno = 197
trigger1 = time > 100
trigger1 = random < 30
;---------------------------------------------------------------------------
;■バックステップ（ラウンド外）
[state -1, step back]
type = changestate
value = 105
triggerall = var(50) != 0
triggerall = var(27) = 0				;■フェイタリティではない
triggerall = prevstateno != 3470			;■フェイタリティではない
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = (stateno = 0) && (anim = 0)
triggerall = roundstate > 2
trigger1 = frontedgedist < 40
;---------------------------------------------------------------------------
;■歩行
[state -1, walk]
type = changestate
value = 21
triggerall = var(27) = 0				;■フェイタリティではない
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = ctrl
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = anim = 0
triggerall = prevstateno != 21
trigger1 = random < 100-10*var(50);50

[state -1, brake]
type = changestate
value = 0
ctrl = 1
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive
triggerall = statetype != a
triggerall = stateno = 21
trigger1 = time > 120
trigger2 = p2dist x < 30
trigger3 = p2movetype = a
triggerall = random < 50*var(50);250
;---------------------------------------------------------------------------
;■ダッシュ
[state -1, run fwd]
type = changestate
value = 101
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = ctrl || (stateno = 21)
trigger1 = prevstateno != 101
trigger1 = p2statetype = a
trigger1 = p2movetype = h
trigger1 = p2bodydist x > 20
trigger1 = p2dist y = [-60,-10]
trigger1 = random < 150*var(50);750
trigger2 = p2bodydist x > 100
trigger2 = p2movetype != a
trigger2 = random < 20*var(50);100

[state -1, brake]
type = changestate
value = 0
ctrl = 1
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive
triggerall = statetype != a
triggerall = prevstateno != 0
triggerall = stateno = 101
trigger1 = p2bodydist x < 50-30*(p2movetype=h)
;---------------------------------------------------------------------------
;■ブレーキ（ラウンド外）
[state -1, brake]
type = changestate
value = 0
triggerall = var(50) != 0
triggerall = alive
triggerall = statetype != a
triggerall = prevstateno != 0
triggerall = roundstate != 2
triggerall = stateno = 21 || stateno = 101
trigger1 = time > 90
trigger2 = p2dist x < 0
ctrl = 1
;===========================================================================
;■AI演出用
[state -1, width]
type = width
trigger1 = var(50) != 0
trigger1 = roundstate != 2
edge = 1,1
;===========================================================================
;■デバッガ
[state -1, debug]
type = varset
trigger1 = 1
var(59) = 0
