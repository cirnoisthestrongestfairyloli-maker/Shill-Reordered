;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "SU-A"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "SU-A"
command = ~D, DF, F, D, DF, F, b+c
time = 30

[Command]
name = "SU-A"
command = ~D, DF, F, D, DF, F, a+c
time = 30

[command]
name = "S-D_x"
command = ~F, D, $F, a
buffer.time = 5

[command]
name = "S-D_x"
command = ~B, D, $B, a
buffer.time = 5

[command]
name = "S-D_a"
command = ~F, D, $F, b
buffer.time = 5

[command]
name = "S-D_a"
command = ~B, D, $B, b
buffer.time = 5

[command]
name = "RF-D"
command = ~F, D, $F, c
buffer.time = 5

[command]
name = "RF-D"
command = ~B, D, $B, c
buffer.time = 5

[Command]
name = "S-B_x"
command = ~B, D, F, a
time = 20
buffer.time = 10

[Command]
name = "S-B_x"
command = ~F, D, B, a
time = 20
buffer.time = 5

[Command]
name = "S-B_a"
command = ~B, D, F, b
time = 20
buffer.time = 10

[Command]
name = "S-B_a"
command = ~F, D, B, b
time = 20
buffer.time = 5

[Command]
name = "RF-B"
command = ~B, D, F, c
time = 20
buffer.time = 10

[Command]
name = "RF-B"
command = ~F, D, B, c
time = 20
buffer.time = 5

[command]
name = "S-A_x"
command = ~D, $F, a
time = 10

[command]
name = "S-A_x"
command = ~F, $B, a
time = 10

[command]
name = "S-A_a"
command = ~D, $F, b
time = 10

[command]
name = "S-A_a"
command = ~F, $B, b
time = 10

[command]
name = "RF-A"
command = ~D, $F, c
time = 10

[command]
name = "RF-A"
command = ~F, $B, c
buffer.time = 10

[Command]
name = "S-C_x"
command = ~D, U, a
time = 10
buffer.time = 5

[Command]
name = "S-C_a"
command = ~D, U, b
time = 10
buffer.time = 5

[Command]
name = "RF-C"
command = ~D, U, c
time = 10
buffer.time = 5
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "super jump"
command = ~D, U
time = 5
;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = a+x
time = 1

[Command]
name = "recovery"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "recovery"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "recovery"
command = U, D, U, D, U, D, U, D
time = 1
;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,a
time = 1

[Command]
name = "back_y"
command = /$B,x
time = 1

[Command]
name = "back_z"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "down_x"
command = /$D,a
time = 1

[Command]
name = "down_y"
command = /$D,x
time = 1

[Command]
name = "down_z"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "fwd_x"
command = /$F,a
time = 1

[Command]
name = "fwd_y"
command = /$F,x
time = 1

[Command]
name = "fwd_z"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "up_x"
command = /$U,a
time = 1

[Command]
name = "up_y"
command = /$U,x
time = 1

[Command]
name = "up_z"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "back_a"
command = /$B,b
time = 1

[Command]
name = "back_b"
command = /$B,c
time = 1

[Command]
name = "back_c"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "down_a"
command = /$D,b
time = 1

[Command]
name = "down_b"
command = /$D,c
time = 1

[Command]
name = "down_c"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "fwd_a"
command = /$F,b
time = 1

[Command]
name = "fwd_b"
command = /$F,c
time = 1

[Command]
name = "fwd_c"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "up_a"
command = /$U,b
time = 1

[Command]
name = "up_b"
command = /$U,c
time = 1

[Command]
name = "up_c"
command = U, D, U, D, U, D, U, D
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = b
time = 1

[Command]
name = "b"
command = c
time = 1

[Command]
name = "c"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "x"
command = a
time = 1

[Command]
name = "y"
command = x
time = 1

[Command]
name = "z"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /a
time = 1

[Command]
name = "hold_y"
command = /x
time = 1

[Command]
name = "hold_z"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "hold_a"
command = /b
time = 1

[Command]
name = "hold_b"
command = /c
time = 1

[Command]
name = "hold_c"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1
;=================================
[Command]
name = "holdupfwd+ y"
command = /$UF,x
time = 1
;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.

;Abstract Reordered: A/B/C = light/medium/strong, X = Flash Step, Y = grab, Z = parry, A+B+C = burst
[Command]
name = "ar_grab"
command = y
time = 1

[Command]
name = "ar_parry"
command = z
time = 1

[Command]
name = "ar_burst"
command = a+b+c
time = 1

[Command]
name = "ar_lv3"
command = ~F, B, DB, D, DF, F, c
time = 30

[Statedef -1]

;---------------------------------------------------------------------------
;Abstract Reordered: burst (Kamijo's) - A+B+C while being hit, recharges in 75 s (var(24))
[State -1, AR burst round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(24) = 0

[State -1, AR burst recharge]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = var(24) > 0
var(24) = -1
ignorehitpause = 1

;Abstract Reordered: comeback - once a combo has done more than 15% of max life, every further hit
;knocks half a second (30 ticks) off the burst cooldown. var(26) = life when the combo started, var(27) = life last tick
[State -1, AR burst comeback]
type = VarAdd
triggerall = !ishelper
triggerall = var(24) > 0
trigger1 = movetype = H
trigger1 = Life < var(27)
trigger1 = var(26) - Life > LifeMax * 0.15
var(24) = -30
ignorehitpause = 1

[State -1, AR burst comeback clamp]
type = VarSet
triggerall = !ishelper
trigger1 = var(24) < 0
var(24) = 0
ignorehitpause = 1

[State -1, AR burst combo start]
type = VarSet
triggerall = !ishelper
trigger1 = movetype != H
var(26) = Life
ignorehitpause = 1

[State -1, AR burst last life]
type = VarSet
triggerall = !ishelper
trigger1 = 1
var(27) = Life
ignorehitpause = 1

;Abstract Reordered: burst HUD - Touma's BURST gauge, recoloured, just under the lifebar.
;var(24) = cooldown ticks (4500 = just used, 0 = ready). Anims 9660-9668, explod IDs = anims.
[State -1, AR burst gauge 9668 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9668) = 0
trigger1 = var(24) = 0
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
trigger1 = var(24) = 0
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
trigger1 = var(24) > 3750
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
trigger1 = var(24) <= 3750 && var(24) > 3000
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
trigger1 = var(24) <= 3000 && var(24) > 2250
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
trigger1 = var(24) <= 2250 && var(24) > 1500
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
trigger1 = var(24) <= 1500 && var(24) > 750
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
trigger1 = var(24) <= 750 && var(24) > 0
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
trigger1 = var(24) > 3750
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
trigger1 = var(24) = 0
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
trigger1 = var(24) = 0
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
trigger1 = var(24) > 3750
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
trigger1 = var(24) <= 3750 && var(24) > 3000
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
trigger1 = var(24) <= 3000 && var(24) > 2250
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
trigger1 = var(24) <= 2250 && var(24) > 1500
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
trigger1 = var(24) <= 1500 && var(24) > 750
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
trigger1 = var(24) <= 750 && var(24) > 0
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
trigger1 = var(24) > 3750
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
trigger1 = !(var(24) = 0)
ID = 9668
ignorehitpause = 1

[State -1, AR burst gauge 9661 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9661)
trigger1 = !(var(24) = 0)
ID = 9661
ignorehitpause = 1

[State -1, AR burst gauge 9660 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9660)
trigger1 = !(var(24) > 3750)
ID = 9660
ignorehitpause = 1

[State -1, AR burst gauge 9662 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9662)
trigger1 = !(var(24) <= 3750 && var(24) > 3000)
ID = 9662
ignorehitpause = 1

[State -1, AR burst gauge 9663 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9663)
trigger1 = !(var(24) <= 3000 && var(24) > 2250)
ID = 9663
ignorehitpause = 1

[State -1, AR burst gauge 9664 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9664)
trigger1 = !(var(24) <= 2250 && var(24) > 1500)
ID = 9664
ignorehitpause = 1

[State -1, AR burst gauge 9665 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9665)
trigger1 = !(var(24) <= 1500 && var(24) > 750)
ID = 9665
ignorehitpause = 1

[State -1, AR burst gauge 9666 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9666)
trigger1 = !(var(24) <= 750 && var(24) > 0)
ID = 9666
ignorehitpause = 1

[State -1, AR burst gauge 9667 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9667)
trigger1 = !(var(24) > 3750)
ID = 9667
ignorehitpause = 1


[State -1, AR burst]
type = ChangeState
value = ifelse(StateType = A, 7751, 7750)
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "ar_burst"
triggerall = var(24) = 0
triggerall = RoundState = 2
triggerall = Alive
trigger1 = (stateno = 5000 || stateno = 5010 || stateno = 5020 || stateno = 5070) && Time > 0
trigger2 = stateno = [5001, 5099]
trigger2 = stateno != 5000 && stateno != 5010 && stateno != 5020 && stateno != 5070

;Abstract Reordered: Lv3 Bakamonoga (Bankai + C, 3 bars). var(29) = 1 while it runs.
[State -1, AR Lv3 reset]
type = AttackMulSet
trigger1 = !IsHelper
trigger1 = var(29)
trigger1 = stateno != [3000,3001]
value = 1

[State -1, AR Lv3 flag reset]
type = VarSet
trigger1 = !IsHelper
trigger1 = var(29)
trigger1 = stateno != [3000,3001]
var(29) = 0

[State -1, AR Lv3]
type = ChangeState
value = 3000
triggerall = !IsHelper
triggerall = command = "ar_lv3"
triggerall = statetype = S || statetype = C
triggerall = power >= 3000
triggerall = pos y >= 0
trigger1 = ctrl
trigger1 = (var(29) := 1) || 1
trigger2 = (StateNo = [200,620]) && (MoveContact)
trigger2 = (var(29) := 1) || 1

;Abstract Reordered: parry on Z
[State -1, AR Parry]
type = ChangeState
value = 7740
triggerall = !IsHelper
triggerall = roundstate = 2
triggerall = command = "ar_parry"
trigger1 = ctrl

;Abstract Reordered: Y = grab (close unblockable strike, she has no throw animation)
[State -1, AR Grab]
type = ChangeState
value = 7800
triggerall = !IsHelper
triggerall = roundstate = 2
triggerall = command = "ar_grab"
triggerall = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Set strength variable
[State -1]
type = VarSet
trigger1 = ((command = "S-A_x"))
trigger2 = ((command = "S-B_x"))
trigger3 = ((command = "S-C_x"))
var(3) = 0

[State -1]
type = VarSet
trigger1 = ((command = "S-A_a"))
trigger2 = ((command = "S-B_a"))
trigger3 = ((command = "S-C_a"))
var(3) = 1

[State -1]
type = VarSet
triggerall = fvar(5) >= 40
trigger1 = ((command = "RF-A"))
trigger2 = ((command = "RF-B"))
trigger3 = ((command = "RF-C"))
var(3) = 2
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, SUPER A: BAKAMONOGA!]
type = ChangeState
value = 3000
triggerall = command = "SU-A"
triggerall =  statetype = S || statetype = C
triggerall = power >= 1000
triggerall = pos y >= 0
trigger1 = ctrl
trigger1 = (var(29) := 0) || 1
trigger2 = (StateNo = [200,620]) && (MoveContact)
trigger2 = (var(29) := 0) || 1
trigger3 = (StateNo = 1025) && (MoveContact)
trigger3 = (var(29) := 0) || 1
ignorehitpause = 1
;---------------------------------------------------------------------------
[State -1, SPECIAL D: OWARIJA!]
type = ChangeState
value = 1070
triggerall = ((command = "S-D_x"||command = "S-D_a"||command = "RF-D"))
triggerall =  statetype = S || statetype = C
triggerall = pos y >= 0
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, SPECIAL B: KOKUBYOUENBU ]
type = ChangeState
value = 1020
triggerall = ((command = "S-B_x"||command = "S-B_a"||command = "RF-B"))
triggerall =  statetype = S || statetype = C
triggerall = pos y >= 0
trigger1 = ctrl
trigger2 = (StateNo = [200,420]) && (MoveContact)
;---------------------------------------------------------------------------
[State -1, SPECIAL A: ANKEN]
type = ChangeState
value = 1000
triggerall = ((command = "S-A_x"||command = "S-A_a"||command = "RF-A"))
triggerall = ((Numhelper(1007) < 1)) && ((Numhelper(1008) < 1))
triggerall = ((Numhelper(1009) < 1)) && ((Numhelper(1010) < 1))
triggerall = ((Numhelper(1011) < 1)) && ((Numhelper(1012) < 1))
triggerall = ((Numhelper(1013) < 1))
trigger1 = ctrl
trigger2 = (StateNo = [200,620]) && (MoveContact)
ignorehitpause = 1
;---------------------------------------------------------------------------
[State -1, SPECIAL C: ORUKA MONO!]
type = ChangeState
value = 1050
triggerall = ((command = "S-C_x"||command = "S-C_a"||command = "RF-C"))
triggerall = var(4) = 0
trigger1 = ctrl
trigger2 = StateNo = 11
trigger3 = (StateNo = [200,620]) && (MoveContact)
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = command = "fwd"
;trigger2 = (StateNo = 400||StateNo = 410||StateNo = 420) && (MoveContact); && (animelemtime(2)>= 3)
;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl
;===========================================================================
[State -1, block]
triggerall = 0   ;Abstract Reordered: removed (guard = hold back)
type = ChangeState
value = 120
triggerall = movetype != H
triggerall = ctrl
trigger1 = command = "hold_c"
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall =  statetype = S || statetype = C
triggerall = pos y >= 0
trigger1 = ctrl
trigger2 = (StateNo = 200)
trigger2 = (MoveContact) && AnimElem >= 2,2
trigger3 = (Stateno = 20001)
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
triggerall =  statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 200) && (MoveContact) && AnimElem >= 2,1
trigger3 = (StateNo = 400) && (MoveContact); && time >= 7
trigger4 = (Stateno = 20001)
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "b"
triggerall = command != "holddown"
triggerall =  statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 200) && (MoveContact) && AnimElem >= 2,1
trigger3 = (StateNo = 210) && (MoveContact) && time >= 3
trigger4 = (Stateno = 20001)
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 205) && (MoveContact)
trigger4 = (StateNo = 220) && (MoveContact)
trigger5 = (Stateno = 20001)
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (MoveContact) && AnimElem >= 2,2
trigger3 = (StateNo = 200) && (MoveContact)
trigger4 = (StateNo = 205) && (MoveContact)
trigger5 = (StateNo = 220) && (MoveContact)
trigger6 = (Stateno = 20001)
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (MoveContact) && AnimElem >= 2,2
trigger3 = (StateNo = 410) && (MoveContact) && AnimElem >= 3,2
trigger4 = (Stateno = 20001)
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 600) && (MoveContact) && AnimElem = 2, > 1
trigger3 = (Stateno = 20001)&& (MoveContact)
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 600) && (MoveContact)
trigger3 = (Stateno = 20001)&& (MoveContact)
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 600) && (MoveContact)
trigger3 = (StateNo = 610) && (MoveContact)
trigger4 = (Stateno = 20001)&& (MoveContact)
;---------------------------------------------------------------------------
; Platform_Switch
[State -1, Platform_Switch]
triggerall = 0   ;Abstract Reordered: removed (guard = hold back)
type =  ChangeState
value = ifelse(var(25),30002,30000)
triggerall = var(47) = 1
triggerall = statetype != A
triggerall = Movetype != H
triggerall = (command = "z")
trigger1 = ctrl
;---------------------------------------------------------------------------
; Flash Step
[State -1, Flash Step]
type =  ChangeState
value = 20000
triggerall = (command = "y") && fvar(5) >= 40
trigger1 = ctrl
trigger2 = (StateNo = [200,420]) && (MoveContact)
trigger3 = (StateNo = [600,620])
trigger4 = (Stateno = 20001) ;&& command = "hold_y"
;---------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = 110
triggerall = statetype = A && stateno!= 1050
triggerall = Movetype != H
trigger1 = command = "FF" ||command = "BB"
trigger1 = var(17) < 2 &&  time > 2
ctrl = 1
;---------------------------------------------------------------------------
[State -1, Reset]
type = ChangeState
value = 45
triggerall = pos y < 0 && var(16) = 0
trigger1 = (StateNo = [600,620]) && (MoveContact)
trigger1 = command = "up"
trigger2 = command = "up" && statetype = A
trigger2 = ((stateno = [50,51])||stateno = 110)
ctrl = 1
;---------------------------------------------------------------------------
;Recovery - Dash
[State -1]
type = VarSet
trigger1 = ((Var(19) = [1,2]) && (MoveType != H)) || (Lose)
v = 19
value = 0

;Recovery - Dash
[State -1]
type = VarSet
triggerall = stateno = [5100,5101]
trigger1 = (command = "fwd")
v = 19
value = 1

[State -1]
type = VarSet
triggerall = stateno = [5100,5101]
trigger1 = (command = "back")
v = 19
value = 2

