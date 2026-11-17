; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below.
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10


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
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
;-| Special Motions |------------------------------------------------------


[Command]
name = "Astral"
command = ~F, B, DB, D, DF, F, c
time = 30

[Command]
name = "Super1"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "Super1"
command = ~D, DF, F, D, DF, F, b+c
time = 30

[Command]
name = "Super1"
command = ~D, DF, F, D, DF, F, a+c
time = 30

[Command]
name = "Super2"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[Command]
name = "Super2"
command = ~D, DB, B, D, DB, B, b+c
time = 30

[Command]
name = "Super2"
command = ~D, DB, B, D, DB, B, a+c
time = 30

[Command]
name = "Super3"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "blocking"
command = $F,x
time = 3

[Command]
name = "blocking" ;Same name as above (buttons in opposite order)
command = x,$F
time = 3

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x
time = 1
[Command]
name = "recovery"
command = y
time = 1
[Command]
name = "recovery"
command = z
time = 1
[Command]
name = "recovery"
command = a
time = 1
[Command]
name = "recovery"
command = b
time = 1
[Command]
name = "recovery"
command = c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd_d"
command = F,x
time = 1

[Command]
name = "back_d"
command = B,x
time = 1

[Command]
name = "superjump"
command = $D, $U
time = 15
;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdb" ;Required (do not remove)
command = /$b
time = 1

[Command]
name = "holdc";Required (do not remove)
command = /$c
time = 1

[Command]
name = "holdD";Required (do not remove)
command = /$x
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

;Abstract Reordered: A/B/C = light/medium/heavy, X = glyphs (her D), Y = grab, Z = parry, A+B+C = burst
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

[Statedef -1]
;---------------------------------------------------------------------------
;Abstract Reordered: burst (Kamijo's) - A+B+C while being hit, recharges in 75 s (fvar(30))
[State -1, AR burst round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
fvar(30) = 0

[State -1, AR burst recharge]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = fvar(30) > 0
fvar(30) = -1
ignorehitpause = 1

;Abstract Reordered: comeback - once a combo has done more than 15% of max life, every further hit
;knocks half a second (30 ticks) off the burst cooldown. fvar(31) = life when the combo started, fvar(33) = life last tick
[State -1, AR burst comeback]
type = VarAdd
triggerall = !ishelper
triggerall = fvar(30) > 0
trigger1 = movetype = H
trigger1 = Life < fvar(33)
trigger1 = fvar(31) - Life > LifeMax * 0.15
fvar(30) = -30
ignorehitpause = 1

[State -1, AR burst comeback clamp]
type = VarSet
triggerall = !ishelper
trigger1 = fvar(30) < 0
fvar(30) = 0
ignorehitpause = 1

[State -1, AR burst combo start]
type = VarSet
triggerall = !ishelper
trigger1 = movetype != H
fvar(31) = Life
ignorehitpause = 1

[State -1, AR burst last life]
type = VarSet
triggerall = !ishelper
trigger1 = 1
fvar(33) = Life
ignorehitpause = 1

;Abstract Reordered: burst HUD - Touma's BURST gauge, recoloured, just under the lifebar.
;fvar(30) = cooldown ticks (4500 = just used, 0 = ready). Anims 9660-9668, explod IDs = anims.
[State -1, AR burst gauge 9668 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9668) = 0
trigger1 = fvar(30) = 0
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
trigger1 = fvar(30) = 0
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
trigger1 = fvar(30) > 3750
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
trigger1 = fvar(30) <= 3750 && fvar(30) > 3000
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
trigger1 = fvar(30) <= 3000 && fvar(30) > 2250
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
trigger1 = fvar(30) <= 2250 && fvar(30) > 1500
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
trigger1 = fvar(30) <= 1500 && fvar(30) > 750
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
trigger1 = fvar(30) <= 750 && fvar(30) > 0
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
trigger1 = fvar(30) > 3750
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
trigger1 = fvar(30) = 0
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
trigger1 = fvar(30) = 0
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
trigger1 = fvar(30) > 3750
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
trigger1 = fvar(30) <= 3750 && fvar(30) > 3000
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
trigger1 = fvar(30) <= 3000 && fvar(30) > 2250
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
trigger1 = fvar(30) <= 2250 && fvar(30) > 1500
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
trigger1 = fvar(30) <= 1500 && fvar(30) > 750
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
trigger1 = fvar(30) <= 750 && fvar(30) > 0
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
trigger1 = fvar(30) > 3750
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
trigger1 = !(fvar(30) = 0)
ID = 9668
ignorehitpause = 1

[State -1, AR burst gauge 9661 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9661)
trigger1 = !(fvar(30) = 0)
ID = 9661
ignorehitpause = 1

[State -1, AR burst gauge 9660 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9660)
trigger1 = !(fvar(30) > 3750)
ID = 9660
ignorehitpause = 1

[State -1, AR burst gauge 9662 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9662)
trigger1 = !(fvar(30) <= 3750 && fvar(30) > 3000)
ID = 9662
ignorehitpause = 1

[State -1, AR burst gauge 9663 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9663)
trigger1 = !(fvar(30) <= 3000 && fvar(30) > 2250)
ID = 9663
ignorehitpause = 1

[State -1, AR burst gauge 9664 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9664)
trigger1 = !(fvar(30) <= 2250 && fvar(30) > 1500)
ID = 9664
ignorehitpause = 1

[State -1, AR burst gauge 9665 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9665)
trigger1 = !(fvar(30) <= 1500 && fvar(30) > 750)
ID = 9665
ignorehitpause = 1

[State -1, AR burst gauge 9666 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9666)
trigger1 = !(fvar(30) <= 750 && fvar(30) > 0)
ID = 9666
ignorehitpause = 1

[State -1, AR burst gauge 9667 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9667)
trigger1 = !(fvar(30) > 3750)
ID = 9667
ignorehitpause = 1


[State -1, AR burst]
type = ChangeState
value = ifelse(StateType = A, 7751, 7750)
triggerall = !ishelper
triggerall = command = "ar_burst"
triggerall = fvar(30) = 0
triggerall = RoundState = 2
triggerall = Alive
trigger1 = (stateno = 5000 || stateno = 5010 || stateno = 5020 || stateno = 5070) && Time > 0
trigger2 = stateno = [5001, 5099]
trigger2 = stateno != 5000 && stateno != 5010 && stateno != 5020 && stateno != 5070

;Abstract Reordered: parry on Z
[State -1, AR Parry]
type = ChangeState
value = 7740
triggerall = !IsHelper
triggerall = roundstate = 2
triggerall = command = "ar_parry"
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------

[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 4000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "Astral"
triggerall = power >= 3000   ;Abstract Reordered: Lv3
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SCA,NA,SA,NP,SP && movecontact && stateno != 1100

[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "Super3"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SCA,NA,NP && movecontact && var(3) = 0
trigger3 = hitdefattr = SCA,NA,NP,SA,SP && movecontact && stateno != 1100 && var(3) > 0

[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "Super2"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SCA,NA,NP && movecontact && var(3) = 0
trigger3 = hitdefattr = SCA,NA,NP,SA,SP && movecontact && stateno != 1100 && var(3) > 0

[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3100
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "Super1"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SCA,NA,NP && movecontact && var(3) = 0
trigger3 = hitdefattr = SCA,NA,NP,SA,SP && movecontact && stateno != 1100 && var(3) > 0 

[State -1, Exceed Accel]
triggerall = 0   ;Abstract Reordered: removed (Crush Trigger / burst / Rapid Cancel / Overdrive / Exceed Accel)
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype != A
triggerall = var(3) > 0
trigger1 = ctrl
trigger2 = hitdefattr = SCA,NA,SA,NP,SP && movecontact && stateno != 1100

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact
;trigger3 = stateno = 1310 || stateno = 1330 ;From blocking
var(1) = 1
;===========================================================================
;---------------------------------------------------------------------------

[State -1, Super Jump]
type = ChangeState
value = 41
triggerall = command = "superjump"
triggerall = !AIlevel
triggerall = StateType!= A
triggerall = stateno != 700 || stateno != 900
trigger1 = ctrl
trigger2 = Stateno = 100
trigger3 = (stateno = [200,201]) || (stateno = [212,220])
trigger3 = movecontact

[State -1, Air Jump]
type = ChangeState
value = 45
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(9) > 0
trigger1 = ctrl && vel y > 0
trigger2 = stateno = 410 && movecontact
trigger3 = (stateno = [600,620]) && movecontact

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A
triggerall = command = "FF"
triggerall = command != "holddown"
trigger1 = ctrl

[State -1, Air Dash]
type = ChangeState
value = 102
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "FF"
triggerall = statetype = A
triggerall = var(9) > 0
triggerall = stateno != 105
trigger1 = ctrl

[State -1, Air Dash Back]
type = ChangeState
value = 103
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "BB"
triggerall = statetype = A
triggerall = var(9) > 0
triggerall = stateno != 105
trigger1 = ctrl

;Dash Cancel
[State -1, Dash Cancel]
type = ChangeState
value = 104
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A
triggerall = command = "FF"
trigger1 = stateno = 211 && movecontact
trigger2 = stateno = 1000 && helper(91000),movecontact; && numhelper(91000)

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = !AIlevel
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;Basic Movements
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A
triggerall = command = "holdup"
trigger1 = ctrl
trigger2 = Stateno = 100
trigger3 = (stateno = [200,201]) || (stateno = [212,220])
trigger3 = movecontact

;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Rapid Cancel]
triggerall = 0   ;Abstract Reordered: removed (Crush Trigger / burst / Rapid Cancel / Overdrive / Exceed Accel)
type = ChangeState
value = 750
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = movetype = A && movetype != H
triggerall = power >= 500
triggerall = !ctrl
trigger1 = hitdefattr = SCA,NA,NP,SA,SP && movecontact
trigger2 = stateno = 3000 && movecontact
trigger2 = (anim = [363,364]) || anim = 3002 && animelemtime(18) > 0
trigger3 = stateno = 3050 && var(3) = 0 && movecontact
trigger4 = stateno = 3050 && var(3) > 0
trigger4 = moveguarded || movehit && anim = 3101 && animelemtime(8) > 0

;Crush Trigger
[State -1, Crush Trigger]
triggerall = 0   ;Abstract Reordered: removed (Crush Trigger / burst / Rapid Cancel / Overdrive / Exceed Accel)
type = ChangeState
value = 500
triggerall = !ishelper
triggerall = !AIlevel
triggerall = power >= 250
triggerall = command = "b" && command = "c"
;triggerall = command != "holddown"
;triggerall = command != "holdfwd"
;triggerall = command != "holdback"
triggerall = statetype != A
trigger1 = ctrl

;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "ar_grab"   ;Abstract Reordered: grab on Y
trigger1 = ctrl
trigger2 = stateno = 100 && anim = 100

;Counter Assault
[State -1, Counter Assault]
type = ChangeState
value = 550
triggerall = !ishelper
triggerall = !AIlevel
triggerall = power >= 1000
triggerall = command = "a" && command = "b"
triggerall = alive
trigger1 = (stateno = [150,151])

;Overdrive
[State -1, Overdrive]
triggerall = 0   ;Abstract Reordered: removed (Crush Trigger / burst / Rapid Cancel / Overdrive / Exceed Accel)
type = ChangeState
value = 900
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = var(3) <= 0
triggerall = var(56) >= 4600
triggerall = (stateno != [3000,3999])
trigger1 = ctrl
trigger2 = hitdefattr = SCA,NA,SA,NP,SP && movecontact && stateno != 1100
trigger3 = stateno = 301 || (stateno = [1000,1200]) || stateno = 1400 && anim = 1401
trigger3 = helper(10001),movecontact

;Burst
[State -1, Burst]
triggerall = 0   ;Abstract Reordered: removed (Crush Trigger / burst / Rapid Cancel / Overdrive / Exceed Accel)
type = ChangeState
value = 700
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = alive
triggerall = movetype = H
triggerall = statetype != L
triggerall = var(3) <= 0
triggerall = var(56) >= 4600
trigger1 = !ctrl && var(11) = 0
trigger1 = (stateno != [150,152])
ignorehitpause = 1
;===========================================================================
;---------------------------------------------------------------------------
;236C
[State -1, 236C]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_x"
triggerall = statetype != A
trigger1 = ctrl

;236C
[State -1, 236C]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,221]) || (stateno = [400,420])
trigger2 = movecontact

;236B
[State -1, 236B]
type = ChangeState
value = 1001
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,220]) || (stateno = [400,420])
trigger2 = movecontact
trigger3 = stateno = 300 && anim = 301 && animelemtime(3) > 0 

;236A
[State -1, 236A]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,220]) || (stateno = [400,420])
trigger2 = movecontact

;5D
[State -1, 5D]
type = ChangeState
value = 300
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A
triggerall = command = "x"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdback"
trigger1 = ctrl
trigger2 = (stateno = [200,220]) || (stateno = [400,420])
trigger2 = movecontact
trigger3 = stateno = 810 && movecontact
trigger4 = stateno = 1000
trigger4 = numhelper(81000) && helper(81000),movecontact
trigger5 = stateno = 1001
trigger5 = numhelper(81001) && helper(81001),movecontact

;6D
[State -1, 6D]
type = ChangeState
value = 301
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdback"
trigger1 = ctrl
trigger2 = stateno = 100 && anim = 100
trigger3 = (stateno = [200,220]) || (stateno = [400,420])
trigger3 = movecontact
trigger4 = stateno = 300 && command = "holdD"
trigger4 = anim = 301 && animelemtime(5) > 0 || anim = 302
trigger5 = stateno = 810 && movecontact 
trigger6 = stateno = 1000 && helper(91000),movecontact

;4D
[State -1, 4D]
type = ChangeState
value = 302
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A
triggerall = command = "x"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = ctrl
trigger2 = (stateno = [200,220]) || (stateno = [400,420])
trigger2 = movecontact
trigger3 = stateno = 300 && command = "holdD"
trigger3 = anim = 301 && animelemtime(5) > 0 || anim = 302
trigger4 = stateno = 810 && movecontact 
trigger5 = stateno = 1000 && helper(91000),movecontact

;jD
[State -1, jD]
type = ChangeState
value = 310
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype = A
triggerall = command = "x"
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = ctrl
trigger2 = (stateno = [600,630]) && movecontact
trigger3 = stateno = 221 && movecontact

;j6D
[State -1, j6D]
type = ChangeState
value = 311
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype = A
triggerall = command = "x"
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = ctrl
trigger2 = (stateno = [600,630]) && movecontact
trigger3 = stateno = 221 && movecontact

;8A
[State -1, 8A]
type = ChangeState
value = 320
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holdup"
triggerall = var(34) = 1
trigger1 = var(30) = 1; && numhelper(70300)
trigger2 = var(31) = 1; && numhelper(70301)
trigger3 = var(32) = 1; && numhelper(70302)
trigger4 = var(33) = 1; && numhelper(70303)

;8B
[State -1, 8B]
type = ChangeState
value = 321
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holdup"
triggerall = var(34) = 1
trigger1 = var(30) = 1; && numhelper(70300)
trigger2 = var(31) = 1; && numhelper(70301)
trigger3 = var(32) = 1; && numhelper(70302)
trigger4 = var(33) = 1; && numhelper(70303)

;8C
[State -1, 8C]
type = ChangeState
value = 322
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holdup"
triggerall = var(34) = 1
trigger1 = var(30) = 1; && numhelper(70300)
trigger2 = var(31) = 1; && numhelper(70301)
trigger3 = var(32) = 1; && numhelper(70302)
trigger4 = var(33) = 1; && numhelper(70303)

;8D
[State -1, 8D]
type = ChangeState
value = 323
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "x"
triggerall = command = "holdup"
triggerall = var(34) = 1
trigger1 = var(30) = 1; && numhelper(70300)
trigger2 = var(31) = 1; && numhelper(70301)
trigger3 = var(32) = 1; && numhelper(70302)
trigger4 = var(33) = 1; && numhelper(70303)
;---------------------------------------------------------------------------
;5A
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 810 && movecontact 

;6A
[State -1, 6A]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 && anim = 100
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 810 && movecontact 

;5B
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,201]) && movecontact
trigger3 = stateno = 400 && movecontact

;5BB
[State -1, 5BB]
type = ChangeState
value = 211
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 210 && animelemtime(8) > 0

;6B
[State -1, 6B]
type = ChangeState
value = 212
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 && anim = 100
trigger3 = (stateno = [200,210]) && movecontact
trigger4 = stateno = 400 && movecontact

;6BB
[State -1, 6BB]
type = ChangeState
value = 213
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
;triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 212 ;|| stateno = 1201
trigger1 = movecontact || animelemtime(6) > 0

;5C
[State -1, 5C]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || stateno = 212
trigger2 = movecontact
trigger3 = stateno = 400 && movecontact

;6C
[State -1, 6C]
type = ChangeState
value = 221
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100 && anim = 100
trigger3 = (stateno = [200,210]) || (stateno = [212,213])
trigger3 = movecontact
trigger4 = (stateno = [400,410]) && movecontact
;---------------------------------------------------------------------------
;2A
[State -1, 2A]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = (stateno = [320,321]) && movecontact

;2B
[State -1, 2B]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || stateno = 212
trigger2 = movecontact
trigger3 = stateno = 400 && movecontact

;2C
[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = [212,220])
trigger2 = movecontact
trigger3 = (stateno = [400,410]) && movecontact
;---------------------------------------------------------------------------
;jA
[State -1, jA]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

;jB
[State -1, jB]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
;triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

;jC
[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact

;j2C
[State -1, j2C]
type = ChangeState
value = 630
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
;---------------------------------------------------------------------------
;A.I------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Basic Movements
;---------------------------------------------------------------------------
[State -1, A.I Guard]
type = ChangeState
value = 120
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = inguarddist && enemynear,movetype = A
trigger1 = ctrl

[State -1,]
type = null;assertspecial
triggerall = stateno != [120,160]
trigger1 = AIlevel && numenemy
flag = noairguard
flag2 = nocrouchguard
flag3 = nostandguard

[State -1, A.I Air Dash]
type = null;ChangeState
value = 102
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(9) > 0
trigger1 = prevstateno = 5210
trigger1 = backedgebodydist > 140
trigger1 = P2bodydist X < 60 

[State -1,, A.I Jump Cancel]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || stateno = 20 || stateno = 100
trigger1 = stateno = 212 && moveguarded && p2bodydist Y < -50
trigger2 = stateno = 213 && movehit

[State -1, A.I Jump Forward]
type = varset
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = stateno = 40 || stateno = 41 || stateno = 45
trigger1 = enemynear,movetype = H && !enemynear,hitover && !enemynear,canrecover
trigger1 = p2dist X > 0
trigger2 = enemynear,movetype != H && p2dist X > 20
sysvar(1) = 1

[State -1, A.I Jump Backward]
type = null;varset
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = stateno = 40 || stateno = 41 || stateno = 45
trigger1 = p2bodydist x = [10,80]
trigger1 = enemynear,movetype = H && enemynear,canrecover
sysvar(1) = -1

[State -1, A.I Air Jump]
type = ChangeState
value = 45
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(9) > 0
trigger1 = (stateno = [600,620]) && movehit && p2statetype = A
trigger1 = pos y > -10 && vel y > -3
trigger2 = stateno = 610 && movehit && vel x >= -3
trigger2 = p2bodydist X >= 100 || p2bodydist Y != [-50,100]
trigger3 = stateno = 610 && movehit && vel x < -3
trigger3 = p2bodydist X >= 100 || p2bodydist Y != [-100,200]
trigger4 = stateno = 620 && movehit
trigger4 = p2statetype = A
trigger5 = (stateno = [600,620]) && moveguarded && p2statetype != A && random >= 500

[State -1, A.I Run Fwd]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = enemynear,movetype = H && enemynear,statetype = L && !enemynear,canrecover
trigger1 = p2bodydist x > 60
trigger2 = enemynear,movetype != A && enemynear,movetype != H && p2bodydist x > 100

[State -1, A.I Air Backdash]
type = ChangeState
value = 103
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(9) > 0
trigger1 = ctrl && prevstateno = 5210
trigger1 = frontedgebodydist < 100
trigger2 = ctrl || stateno = 100
trigger2 = enemynear,movetype = H && enemynear,statetype = L && enemynear,canrecover
trigger2 = p2bodydist x > 120

[State -1, A.I Hop backwards]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || stateno = 100
trigger1 = enemynear,movetype = H && enemynear,statetype = L && enemynear,canrecover
trigger1 = p2bodydist x <= 40

[State -1, Grab]
type = ChangeState
value = 800
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = enemynear,movetype != H
triggerall = p2statetype != L
triggerall = p2bodydist X < 70
triggerall = ctrl && random >= 900 && random < 950
trigger1 = statetype = A
trigger1 = p2statetype = A
trigger2 = statetype != A
trigger2 = p2statetype != A

;Overdrive
[State -1, Overdrive]
triggerall = 0   ;Abstract Reordered: removed (Crush Trigger / burst / Rapid Cancel / Overdrive / Exceed Accel)
type = ChangeState
value = 900
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = var(3) <= 0
triggerall = var(56) >= 4600
triggerall = movetype != H
triggerall = statetype != L
trigger1 = life < lifemax/3
trigger1 = ctrl && !inguarddist
trigger2 = stateno = 5120 && animtime = 0  || stateno = 52 && prevstateno = 5201 && animtime = 0
trigger2 = enemynear,movetype = A && random >= 600 && random < 800
trigger3 = ctrl && prevstateno = 140 && backedgebodydist < 100 && random >= 300 && random < 600

;Counter Assault
[State -1, Counter Assault]
type = ChangeState
value = 550
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = power >= 1750
triggerall = alive && (stateno = [150,151])
trigger1 = life < lifemax/2 && random < 100*AIlevel
trigger1 = backedgebodydist >= 100
trigger2 = life < lifemax/2 && random < 900
trigger2 = backedgebodydist < 100

;Burst
[State -1, Burst]
triggerall = 0   ;Abstract Reordered: removed (Crush Trigger / burst / Rapid Cancel / Overdrive / Exceed Accel)
type = ChangeState
value = 700
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = alive && Roundstate = 2
triggerall = movetype = H && !canrecover && enemynear,movetype = A
triggerall = var(3) <= 0 && var(56) >= 4600
triggerall = !ctrl && enemynear,hitdefattr !=SCA,NT,ST,HT,HA,HP,AA,AT,AP
triggerall = p2bodydist X = [-90,90]
trigger1 = life <= lifemax/4
trigger2 = gethitvar(damage) > lifemax/4
trigger3 = gethitvar(hitcount) > 35 && life <= lifemax/2

[State -1, Rapid Cancel]
triggerall = 0   ;Abstract Reordered: removed (Crush Trigger / burst / Rapid Cancel / Overdrive / Exceed Accel)
type = ChangeState
value = 750
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = alive && Roundstate = 2
triggerall = movetype != H
triggerall = movetype = A
triggerall = stateno != 500
triggerall = !ctrl
triggerall = power > 1000 && random > 700
trigger1 = stateno = 221 || stateno = 1100
trigger1 = moveguarded
trigger2 = (stateno = [310,311]) && moveguarded
trigger3 = (stateno = [310,311]) && movehit && enemynear,gethitvar(hitcount) <= 5
trigger3 = enemynear,pos y < enemynear,const(movement.down.bounce.groundlevel)
trigger3 = var(30) = 0 && var(31) = 0 && var(32) = 0 && var(33) = 0
trigger4 = stateno = 301 && moveguarded
trigger4 = random < 300 && animelem = 1 || random >= 300 && random < 600 && animelem = 6 || random >= 600 && animelem = 10
trigger5 = stateno = 630 && p2statetype != A && moveguarded
trigger5 = var(30) = 0 && var(31) = 0 && var(32) = 0 && var(33) = 0
trigger6 = stateno = 3000 && anim = 363 && moveguarded
trigger7 = stateno = 3050 && moveguarded

[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = P2bodydist X < 200
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = statetype != A
trigger1 = var(30) = 0 && var(31) = 0 && var(32) = 0 && var(33) = 0
trigger1 = stateno = 303 && animelem = 1
trigger2 = ctrl || stateno = 20 || stateno = 100
trigger2 = backedgebodydist < 100 && power > 1000
trigger2 = stateno = 1201 && movehit 
trigger3 = stateno = 211 ||stateno = 213 || stateno = 420 || stateno = 630 && anim = 631 && animtime = 0
trigger3 = hitcount < 10 && power > 1000 && movehit
trigger3 = var(3) = 0 && enemynear,life <= enemynear,lifemax/100*20

[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = statetype != A
triggerall = P2dist X > 0
triggerall = P2bodydist Y > -50
trigger1 = ctrl && movetype != A
trigger1 = (enemynear,numproj)||(enemynear,hitdefattr = SCA,NP,SP,HP,AP)
trigger1 = enemynear,movetype = A && power >= 1200 && random < 500
trigger2 = p2bodydist y > -150
trigger2 = stateno = 5120 && animtime = 0  || stateno = 52 && prevstateno = 5201 && animtime = 0
trigger2 = enemynear,movetype = A && random >= 400 && random < 600 && power >= 1200

[State -1, Exceed Accel]
triggerall = 0   ;Abstract Reordered: removed (Crush Trigger / burst / Rapid Cancel / Overdrive / Exceed Accel)
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = var(3) > 0
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = statetype != A
triggerall = p2bodydist X < 90
trigger1 = ctrl || stateno = 20 || stateno = 100
trigger1 = (var(3) = [1,100]) && enemynear,movetype = A
trigger2 = (stateno = [200,420])
trigger2 = (var(3) = [1,50]) && movecontact || enemynear,life <= 200 && movehit || enemynear,movetype = A && moveguarded
trigger3 = stateno = 900 && anim = 902 && animtime = 0
trigger3 = backedgebodydist < 120 || enemynear,movetype = A

[State -1, Astral]
type = ChangeState
value = 4000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = statetype != A
triggerall = (p2dist X = [75,220])
triggerall = power >= 3000 && enemynear,life <= enemynear,lifemax/100*35
triggerall = enemynear,hitshakeover && enemynear,vel y > 0 && enemynear,pos y > -5
trigger1 = ctrl || stateno = 20 || stateno = 100
trigger2 = stateno = 211 || stateno = 221 || (stateno = [310,311]) || stateno = 420
trigger2 = movehit
trigger3 = stateno = 1000 && numhelper(81000)
trigger3 = helper(81000),movehit
trigger4 = stateno = 1001 && numhelper(81001)
trigger4 = helper(81001),movehit

[State -1, 236C]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2bodydist X = [-70,70]
triggerall = p2bodydist y > -150
trigger1 = stateno = 5120 && animtime = 0  || stateno = 52 && prevstateno = 5201 && animtime = 0
trigger1 = enemynear,movetype = A  && random < 200
trigger2 = enemynear,movetype = A || enemynear,movetype != H && enemynear,vel x >= enemynear,const(velocity.walk.fwd.x)
trigger2 = ctrl && p2bodydist Y < 0 && p2bodydist X < 10
trigger3 = stateno = 220 && movehit && P2bodydist Y < -30

[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2bodydist X < 95
triggerall = p2bodydist Y > -75
trigger1 = ctrl || stateno = 20 || stateno = 100
trigger1 = random >= 200 && random < 300
trigger2 = stateno = 400 && movehit && enemynear,statetype != C && random < 300

[State -1, 2A]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2bodydist X < 55
triggerall = p2bodydist y > -50
trigger1 = ctrl || stateno = 20 || stateno = 100
trigger1 = p2bodydist Y > -30 && random < 100
trigger2 = (stateno = [200,201]) && moveguarded && random >= 200 && random < 250
trigger3 = stateno = 400 && moveguarded && random >= 250 && random < 300
trigger4 = stateno = 400 && movehit && enemynear,statetype = C && random < 300
trigger5 = stateno = 400 && movehit && enemynear,statetype != C && random >= 600

[State -1, 6A]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2bodydist X = [95,150]
trigger1 = ctrl || stateno = 20 || stateno = 100
trigger1 = p2statetype != C && random >= 400 && random < 800
trigger2 = stateno = 400 && moveguarded && random >= 300
trigger3 = stateno = 400 && movehit && enemynear,statetype != C && random >= 600
trigger4 = stateno = 400 && movehit && enemynear,statetype = C && random >= 300 && random < 600
trigger5 = backedgebodydist >= 100 && prevstateno = 1201

[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2bodydist X < 95
trigger1 = (stateno = [200,201]) && movehit
trigger2 = (stateno = [200,201]) && moveguarded && random >= 700 && random < 900

[State -1, 5BB]
type = ChangeState
value = 211
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2bodydist X < 120
trigger1 = stateno = 210 && movehit
trigger1 = P2dist Y = 0 && random < 500

[State -1, 6B]
type = ChangeState
value = 212
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2bodydist X < 120
trigger1 = ctrl || stateno = 20 || stateno = 100
trigger1 = (p2bodydist Y = [-200,-75])
trigger2 = (stateno = [200,201]) && moveguarded && random < 200 && p2bodydist Y <= -30
trigger3 = stateno = 201 && movecontact && p2bodydist X >= 95
trigger4 = stateno = 210 && movehit
trigger4 = P2dist Y = 0 && random >= 500 || P2dist Y != 0
trigger5 = stateno = 210 && moveguarded && random < 500
trigger6 = stateno = 410 && moveguarded && random >= 500

[State -1, 6BB]
type = ChangeState
value = 213
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2bodydist X < 65
trigger1 = stateno = 212 && movehit && random < 300

[State -1, 5C]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2bodydist X >= 65
trigger1 = stateno = 210 && moveguarded && random >= 500 && p2bodydist Y > -50
trigger2 = stateno = 212 && movehit && random >= 300

[State -1, 6C]
type = ChangeState
value = 221
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = statetype != A
triggerall = P2statetype = S
triggerall = p2bodydist X < 175
trigger1 = ctrl || stateno = 20 || stateno = 100
trigger1 = random >= 800 && random < 825
trigger2 = (stateno = [200,201]) && moveguarded && random >= 300 && random < 500
trigger3 = stateno = 220 && moveguarded && random >= 500

[State -1, 2B]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2bodydist X < 125
trigger1 = stateno = 212 && moveguarded && random < 500 && p2bodydist Y > -50
trigger2 = stateno = 400 && movehit && enemynear,statetype = C && random >= 300 && random < 600

[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2bodydist X < 160
triggerall = p2bodydist Y > -30
trigger1 = (stateno = [200,201]) && moveguarded && random < 200
trigger2 = (stateno = [200,201]) && p2bodydist X >= 120 && movehit
trigger3 = stateno = 220 && movehit && random < 500
trigger4 = stateno = 220 && moveguarded && random < 500
trigger5 = stateno = 410 && moveguarded && random < 500
trigger6 = stateno = 410 && movehit

;jA
[State -1, jA]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = statetype = A
triggerall = P2statetype = A
triggerall = p2bodydist X < 45
triggerall = p2bodydist y = [-30,80]
trigger1 = ctrl

;jB
[State -1, jB]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = statetype = A
triggerall = P2statetype = A
triggerall = p2bodydist X < 125
triggerall = vel x < -3 && (p2bodydist Y = [-100,0]) || vel x >= -3  && (p2bodydist y = [-85,25])
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

;jC
[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = statetype = A
triggerall = P2statetype != L
triggerall = p2bodydist X < 100
;triggerall = p2bodydist Y = [-100,200]
trigger1 = ctrl || stateno = 610 && movecontact
trigger1 = vel x < -3 && (p2bodydist Y = [-100,200]) || vel x >= -3 && (p2bodydist Y = [-50,100])

;j3C
[State -1, j3C]
type = ChangeState
value = 630
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = statetype = A
triggerall = P2statetype != L
triggerall = p2bodydist X < 75
triggerall = p2bodydist Y = [-125,200]
trigger1 = stateno = 610 && movecontact && vel x >= -3 && var(9) = 0
trigger1 = p2bodydist Y != [-50,100]
trigger2 = stateno = 610 && movecontact && vel x < -3 && var(9) = 0
trigger2 = p2bodydist Y != [-100,200]
trigger3 = (stateno = [600,620]) && moveguarded && p2statetype != A && random < 500
trigger4 = (stateno = [600,620]) && movehit && p2statetype != A
trigger5 = stateno = 620 && movehit && var(9) = 0

[State -1, 5D]
type = ChangeState
value = 300
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = statetype != A
triggerall = !numhelper(90300)
trigger1 = ctrl || stateno = 20 || stateno = 100
trigger1 = random >= 850 && random < 900 && p2bodydist X > 175
trigger2 = (stateno = [200,201]) && moveguarded && random >= 900
trigger3 = var(30) = 0 && var(31) = 0 && var(32) = 0 && var(33) = 0
trigger3 = stateno = 420 && moveguarded && random < 500
trigger4 = stateno = 810 && movehit
trigger4 = !(numhelper(70300) && numhelper(70301) && numhelper(70302) && numhelper(70303))
trigger5 = stateno = 1000 && numhelper(81000)
trigger5 = helper(81000),movehit
trigger5 = !(numhelper(70300) && numhelper(70301) && numhelper(70302) && numhelper(70303))
trigger6 = stateno = 1001 && numhelper(81001)
trigger6 = helper(81001),movehit
trigger6 = !(numhelper(70300) && numhelper(70301) && numhelper(70302) && numhelper(70303))

[State 0, VarSet]
type = VarSet
triggerall = stateno = 300
trigger1 = anim = 302 && animtime = 0
trigger2 = var(35) != [0,1]
var(35) = 0

[State 0, VarSet]
type = VarSet
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
trigger1 = prevstateno = 211
trigger2 = prevstateno = 810
trigger3 = prevstateno = 1000 && numhelper(81000)
trigger3 = helper(81000),movehit
trigger4 = prevstateno = 1001 && numhelper(81001)
trigger4 = helper(81001),movehit 
var(35) = 1

[State 0, VarSet]
type = VarSet
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
trigger1 = stateno = 300
fvar(36) = 0

[State -1, 6D]
type = ChangeState
value = 301
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = statetype != A
triggerall = p2dist x > 0 
trigger1 = stateno = 300 && anim = 302 && animtime = 0 && p2bodydist X > 175
trigger2 = var(30) = 1 || var(31) = 1 || var(32) = 1 || var(33) = 1
trigger2 = stateno = 420 && moveguarded && random >= 500
trigger3 = stateno = 810 && movehit
trigger3 = numhelper(70300) && numhelper(70301) && numhelper(70302) && numhelper(70303)

[State -1, 4D]
type = ChangeState
value = 302
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = statetype != A
triggerall = p2dist x > 0 
trigger1 = var(30) = 1 || var(31) = 1 || var(32) = 1 || var(33) = 1
trigger1 = stateno = 420 && moveguarded && random < 500
trigger2 = stateno = 420 && movehit
trigger3 = prevstateno = 810
trigger3 = stateno = 300 && var(35) = 1
trigger3 = anim = 302 && animtime = 0
trigger4 = stateno = 1000 && numhelper(81000)
trigger4 = helper(81000),movehit
trigger4 = numhelper(70300) && numhelper(70301) && numhelper(70302) && numhelper(70303)
trigger5 = stateno = 1001 && numhelper(81001)
trigger5 = helper(81001),movehit
trigger5 = numhelper(70300) && numhelper(70301) && numhelper(70302) && numhelper(70303)

[State -1, jD]
type = ChangeState
value = 310
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = statetype = A
triggerall = p2dist x > 0 
trigger1 = stateno = 221 && moveguarded
trigger1 = var(30) = 1 || var(31) = 1 || var(32) = 1 || var(33) = 1
trigger2 = stateno = 221 && movehit
trigger3 = stateno = 630 && p2statetype != A && moveguarded
trigger3 = var(30) = 1 || var(31) = 1 || var(32) = 1 || var(33) = 1

[State -1, j2D]
type = ChangeState
value = 311
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = statetype = A
triggerall = p2dist x > 0 
trigger1 = stateno = 630 && movehit

;8A
[State -1, 8A]
type = ChangeState
value = 320
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = p2bodydist X = [1,130]
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = var(34) = 1
triggerall = var(30) = 1 || var(31) = 1 || var(32) = 1 || var(33) = 1
trigger1 = (stateno = [301,302]) || stateno = 303 && animelemtime(7) > 0 || (stateno = [310,311])
trigger1 = moveguarded && random < 350
trigger2 = stateno = 302 && anim = 313 && animelemtime(2) > 0 || (stateno = [310,311]) && anim = 336
trigger2 = !movecontact && random >= 500
trigger3 = stateno = 321 && moveguarded

;8B
[State -1, 8B]
type = ChangeState
value = 321
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = var(34) = 1
triggerall = var(30) = 1 || var(31) = 1 || var(32) = 1 || var(33) = 1
trigger1 = (stateno = [301,302]) || stateno = 303 && animelemtime(7) > 0 || (stateno = [310,311])
trigger1 = moveguarded && random >= 350 && random < 700
trigger2 = stateno = 322 && animelemtime(9) > 0 && movehit 
trigger2 = frontedgedist >= 80 && p2bodydist Y > -5

;8C
[State -1, 8C]
type = ChangeState
value = 322
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = p2bodydist X = [1,185]
triggerall = var(34) = 1
triggerall = var(30) = 1 || var(31) = 1 || var(32) = 1 || var(33) = 1
trigger1 = stateno = 301 && anim = 320 && animelemtime(10) > 0 || stateno = 302 || stateno = 303 && animelemtime(7) > 0 || (stateno = [310,311]) || stateno = 321
trigger1 = movehit
trigger2 = stateno = 302 && anim = 313 && animelemtime(2) > 0 || (stateno = [310,311]) && anim = 336
trigger2 = !movecontact && random < 500
trigger3 = stateno = 322 && animelemtime(9) > 0 && movehit 
trigger3 = frontedgedist >= 80 && p2bodydist Y <= -5

;8D
[State -1, 8D]
type = ChangeState
value = 323
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = enemynear,movetype != H || !enemynear,hitover && !enemynear,canrecover || (enemynear,stateno != [5200,5210])
triggerall = var(34) = 1
triggerall = var(30) = 1 || var(31) = 1 || var(32) = 1 || var(33) = 1
trigger1 = (stateno = [301,302]) || stateno = 303 && animelemtime(7) > 0 || (stateno = [310,311])
trigger1 = moveguarded && random >= 700
trigger2 = stateno = 322 && animelemtime(9) > 0 && movehit 
trigger2 = frontedgedist < 80

[State -1, 236A]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = statetype != A
trigger1 = ctrl || stateno = 20 || stateno = 100
trigger1 = (p2bodydist X = [160,225]) && random < 300 
trigger1 = frontedgebodydist > 155 && backedgebodydist > 155
trigger1 = !numhelper(91000) && !numhelper(91001)
trigger2 = ctrl && enemynear,canrecover && p2statetype = L
trigger2 = (p2bodydist X != [160,225]) && !numhelper(91000) && !numhelper(91001)
trigger3 = stateno = 211 && movehit
trigger4 = var(30) = 0 && var(31) = 0 && var(32) = 0 && var(33) = 0
trigger4 = stateno = 420 && moveguarded && random >= 500

[State -1, 236B]
type = ChangeState
value = 1001
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = statetype != A
triggerall = !numhelper(91000) && !numhelper(91001)
triggerall = frontedgebodydist > 55 && backedgebodydist > 55
trigger1 = ctrl || stateno = 20 || stateno = 100
trigger1 = p2bodydist X >= 225 && random >= 300 && random < 600 
trigger2 = ctrl && enemynear,canrecover && p2statetype = L

[State -1, 236D]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = inguarddist
triggerall = p2bodydist y > -150
trigger1 = ctrl || stateno = 20 || stateno = 100
trigger1 = enemynear,movetype = A && backedgebodydist < 100 && enemynear,vel x >= enemynear,const(velocity.run.fwd.x)
trigger2 = enemynear,movetype = A && (enemynear,time = [0,1])
trigger2 = ctrl && prevstateno = 140 && backedgebodydist < 100 && random < 300
trigger3 = stateno = 5120 && animtime = 0  || stateno = 52 && prevstateno = 5201 && animtime = 0
trigger3 = enemynear,movetype = A  && random >= 200 && random < 400