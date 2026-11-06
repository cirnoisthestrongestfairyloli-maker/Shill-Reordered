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
command.time = 20

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| AI |------------------------------------------------------
[Command]
name = "CPU1"
command = U, D, F, U, D, F
time = 1

[Command]
name = "CPU2"
command = U, B, F, U, D, F
time = 1

[Command]
name = "CPU3"
command = U, D, D, U, D, F
time = 1

[Command]
name = "CPU4"
command = U, F, U, B, U, D, F
time = 1

[Command]
name = "CPU5"
command = B, B, B, U, B, U, D, F
time = 1

[Command]
name = "CPU6"
command = U, D, B, U, B, U, D, F
time = 1

[Command]
name = "CPU7"
command = F, F, B, U, B, U, D, F
time = 1

[Command]
name = "CPU8"
command = U, D, U, U, B, U, D, F
time = 1

[Command]
name = "CPU9"
command = F, B, B, U, B, U, D, F
time = 1

[Command]
name = "CPU10"
command = F, F, B, B, U, B, U, D, F
time = 1

[command]
name = "CPU11"
command = D,D,a+b+c+x+y+z+s
time = 1

[command]
name = "CPU12"
command = D,F,a+b+c+x+y+z+s
time = 1

[command]
name = "CPU13"
command = F,F,a+b+c+x+y+z+s
time = 1

[command]
name = "CPU14"
command = B,B,a+b+c+x+y+z+s
time = 1

[command]
name = "CPU15"
command = B,U,a+b+c+x+y+z+s
time = 1

[command]
name = "CPU16"
command = U,U,a+b+c+x+y+z+s
time = 1

[command]
name = "CPU17"
command = F,U,a+b+c+x+y+z+s
time = 1

[command]
name = "CPU18"
command = B,F,a+b+c+x+y+z+s
time = 1

[command]
name = "CPU19"
command = a,a,a,a,a,s,s,s,s,s
time = 1

[Command]
Name = "CPU20"
Command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
Time = 1

[Command]
Name = "CPU21"
Command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
Time = 1

[Command]
Name = "CPU22"
Command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
Time = 1

[Command]
Name = "CPU23"
Command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
Time = 1

[Command]
Name = "CPU24"
Command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
Time = 1

[Command]
Name = "CPU25"
Command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
Time = 1

[Command]
Name = "CPU26"
Command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
Time = 1

[Command]
Name = "CPU27"
Command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
Time = 1

[Command]
Name = "CPU28"
Command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
Time = 1

[Command]
Name = "CPU29"
Command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
Time = 1

[Command]
Name = "CPU30"
Command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
Time = 1

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "SuperJump"
command = ~D, U
time = 15

[Command]
name = "SuperJumpf"
command = ~D, UF
time = 15

[Command]
name = "SuperJumpb"
command = ~D, UB
time = 15

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
name = "recovery";Required (do not remove)
command = x+y
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
name = "down_s"
command = /$D,s
time = 1

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

;Abstract Reordered: special / super inputs
[Command]
name = "Backlace"
command = ~D, DF, F, a

[Command]
name = "Backlace2"
command = ~D, DF, F, b

[Command]
name = "Backlace-Anti-Air"
command = ~F, D, DF, a

[Command]
name = "Backlace-Anti-Air2"
command = ~F, D, DF, b

[Command]
name = "Rapid Fire"
command = ~D, DF, F, c

[Command]
name = "Rapid Fire2"
command = ~F, D, DF, c

[Command]
name = "RollingStone"
command = ~45$B, F, a

[Command]
name = "RollingStone2"
command = ~45$B, F, b

[Command]
name = "Cosmo's Pole"
command = ~D, DB, B, a

[Command]
name = "Cosmo's Pole2"
command = ~D, DB, B, b

[Command]
name = "Pole"
command = ~F, DF, D, DB, B, a

[Command]
name = "Pole"
command = ~F, DF, D, DB, B, b

[Command]
name = "Double Backlace"
command = ~D, DF, F, D, DF, F, a+b

[Command]
name = "Double Backlace"
command = ~D, DF, F, D, DF, F, b+c

[Command]
name = "Double Backlace"
command = ~D, DF, F, D, DF, F, a+c

[Command]
name = "Bangin' up"
command = ~D, DB, B, D, DB, B, a+b

[Command]
name = "Bangin' up"
command = ~D, DB, B, D, DB, B, b+c

[Command]
name = "Bangin' up"
command = ~D, DB, B, D, DB, B, a+c

[Command]
name = "5T-R1P3"
command = ~F, DF, D, DB, B, F, a+b

[Command]
name = "5T-R1P3"
command = ~F, DF, D, DB, B, F, b+c

[Command]
name = "5T-R1P3"
command = ~F, DF, D, DB, B, F, a+c

[Command]
name = "Briefers 69"
command = ~D, DB, B, D, DF, F, a+b

[Command]
name = "Briefers 69"
command = ~D, DB, B, D, DF, F, b+c

[Command]
name = "Briefers 69"
command = ~D, DB, B, D, DF, F, a+c

[Command]
name = "FLY AWAY NOW"
command = ~D, DF, F, D, DB, B, a+b

[Command]
name = "FLY AWAY NOW"
command = ~D, DF, F, D, DB, B, b+c

[Command]
name = "FLY AWAY NOW"
command = ~D, DF, F, D, DB, B, a+c

[Command]
name = "Minigun"
command = ~F, B, DB, D, DF, F, c


;Abstract Reordered: A/B/C = light/medium/heavy, X = reload, Y = grab, Z = parry, A+B+C = burst
[Command]
name = "ar_parry"
command = z
time = 1

[Command]
name = "ar_burst"
command = a+b+c
time = 1

[Command]
name = "ar_reload"
command = x
time = 1

[Statedef -1]

;---------------------------------------------------------------------------
;Abstract Reordered: burst (Kamijo's)   [AR BURST + BURST HUD - restyle here: explods 9601/9602/9603] - A+B+C while being hit, recharges in 75 s (var(40))
[State -1, AR burst round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(40) = 0

[State -1, AR burst recharge]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = var(40) > 0
var(40) = -1
ignorehitpause = 1

;Abstract Reordered: comeback - once a combo has done more than 15% of max life, every further hit
;knocks half a second (30 ticks) off the burst cooldown. var(41) = life when the combo started, var(43) = life last tick
[State -1, AR burst comeback]
type = VarAdd
triggerall = !ishelper
triggerall = var(40) > 0
trigger1 = movetype = H
trigger1 = Life < var(43)
trigger1 = var(41) - Life > LifeMax * 0.15
var(40) = -30
ignorehitpause = 1

[State -1, AR burst comeback clamp]
type = VarSet
triggerall = !ishelper
trigger1 = var(40) < 0
var(40) = 0
ignorehitpause = 1

[State -1, AR burst combo start]
type = VarSet
triggerall = !ishelper
trigger1 = movetype != H
var(41) = Life
ignorehitpause = 1

[State -1, AR burst last life]
type = VarSet
triggerall = !ishelper
trigger1 = 1
var(43) = Life
ignorehitpause = 1

[State -1, AR burst HUD 9601 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9601) = 0
trigger1 = var(40) = 0
anim = 9601
ID = 9601
pos = 18, GameHeight - (28)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst HUD 9602 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9602) = 0
trigger1 = var(40) > 0
anim = 9602
ID = 9602
pos = 18, GameHeight - (28)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst HUD 9603 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9603) = 0
trigger1 = var(40) > 0
anim = 9603
ID = 9603
pos = 5, GameHeight - (12)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst HUD 9601 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9601) = 0
trigger1 = var(40) = 0
anim = 9601
ID = 9601
pos = -18, GameHeight - (28)
postype = right
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst HUD 9602 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9602) = 0
trigger1 = var(40) > 0
anim = 9602
ID = 9602
pos = -18, GameHeight - (28)
postype = right
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst HUD 9603 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9603) = 0
trigger1 = var(40) > 0
anim = 9603
ID = 9603
pos = -31, GameHeight - (12)
postype = right
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR burst HUD ready off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = var(40) > 0
trigger1 = NumExplod(9601)
ID = 9601
ignorehitpause = 1

[State -1, AR burst HUD dim off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = var(40) = 0
trigger1 = NumExplod(9602) || NumExplod(9603)
ID = 9602
ignorehitpause = 1

[State -1, AR burst HUD bar off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = var(40) = 0
trigger1 = NumExplod(9603)
ID = 9603
ignorehitpause = 1

[State -1, AR burst HUD bar]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(9603)
ID = 9603
scale = (4500 - var(40)) / 4500.0, 1
ignorehitpause = 1

[State -1, AR burst]
type = ChangeState
value = ifelse(StateType = A, 7751, 7750)
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "ar_burst"
triggerall = var(40) = 0
triggerall = RoundState = 2
triggerall = Alive
trigger1 = (stateno = 5000 || stateno = 5010 || stateno = 5020 || stateno = 5070) && Time > 0
trigger2 = stateno = [5001, 5099]
trigger2 = stateno != 5000 && stateno != 5010 && stateno != 5020 && stateno != 5070

;Abstract Reordered: parry on Z
[State -1, AR Parry]
type = ChangeState
value = 7740
triggerall = var(59) <= 0
triggerall = command = "ar_parry"
trigger1 = ctrl

;===========================================================================
;Abstract Reordered: BACKLACE AMMO (X)   [AR MECHANIC METER - restyle here]
;var(44) = rounds left (0-6), var(45) = quick-draw armed (next gun special fires an extra bullet),
;var(46) = the current gun special is the boosted one. Rounds are spent at the start of the gun states (Specials.cns).
;HUD: explods 9620-9625 = empty slots (anim 9611), 9610-9615 = loaded rounds (anim 9610), bottom of the screen.
[State -1, AR ammo round start]
type = VarSet
trigger1 = RoundState <= 1
var(44) = 6

[State -1, AR quick-draw round start]
type = VarSet
trigger1 = RoundState <= 1
var(45) = 0

[State -1, AR ammo floor]
type = VarSet
trigger1 = var(44) < 0
var(44) = 0

[State -1, AR ammo cap]
type = VarSet
trigger1 = var(44) > 6
var(44) = 6

[State -1, AR quick-draw armed glow]
type = PalFX
triggerall = !IsHelper
trigger1 = var(45) = 1
trigger1 = GameTime % 30 = 0
time = 10
add = 60, 20, 20
sinadd = 40, 10, 10, 10

[State -1, AR round 1 spent]
type = RemoveExplod
trigger1 = !IsHelper
trigger1 = var(44) < 1
trigger1 = NumExplod(9610)
ID = 9610
ignorehitpause = 1

[State -1, AR round 2 spent]
type = RemoveExplod
trigger1 = !IsHelper
trigger1 = var(44) < 2
trigger1 = NumExplod(9611)
ID = 9611
ignorehitpause = 1

[State -1, AR round 3 spent]
type = RemoveExplod
trigger1 = !IsHelper
trigger1 = var(44) < 3
trigger1 = NumExplod(9612)
ID = 9612
ignorehitpause = 1

[State -1, AR round 4 spent]
type = RemoveExplod
trigger1 = !IsHelper
trigger1 = var(44) < 4
trigger1 = NumExplod(9613)
ID = 9613
ignorehitpause = 1

[State -1, AR round 5 spent]
type = RemoveExplod
trigger1 = !IsHelper
trigger1 = var(44) < 5
trigger1 = NumExplod(9614)
ID = 9614
ignorehitpause = 1

[State -1, AR round 6 spent]
type = RemoveExplod
trigger1 = !IsHelper
trigger1 = var(44) < 6
trigger1 = NumExplod(9615)
ID = 9615
ignorehitpause = 1

[State -1, AR ammo slot 1 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9620) = 0
anim = 9611
ID = 9620
pos = 36, GameHeight - (28)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo round 1 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9610) = 0
trigger1 = var(44) >= 1
anim = 9610
ID = 9610
pos = 36, GameHeight - (28)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo slot 2 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9621) = 0
anim = 9611
ID = 9621
pos = 44, GameHeight - (28)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo round 2 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9611) = 0
trigger1 = var(44) >= 2
anim = 9610
ID = 9611
pos = 44, GameHeight - (28)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo slot 3 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9622) = 0
anim = 9611
ID = 9622
pos = 52, GameHeight - (28)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo round 3 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9612) = 0
trigger1 = var(44) >= 3
anim = 9610
ID = 9612
pos = 52, GameHeight - (28)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo slot 4 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9623) = 0
anim = 9611
ID = 9623
pos = 60, GameHeight - (28)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo round 4 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9613) = 0
trigger1 = var(44) >= 4
anim = 9610
ID = 9613
pos = 60, GameHeight - (28)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo slot 5 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9624) = 0
anim = 9611
ID = 9624
pos = 68, GameHeight - (28)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo round 5 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9614) = 0
trigger1 = var(44) >= 5
anim = 9610
ID = 9614
pos = 68, GameHeight - (28)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo slot 6 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9625) = 0
anim = 9611
ID = 9625
pos = 76, GameHeight - (28)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo round 6 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9615) = 0
trigger1 = var(44) >= 6
anim = 9610
ID = 9615
pos = 76, GameHeight - (28)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo slot 1 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9620) = 0
anim = 9611
ID = 9620
pos = -36, GameHeight - (28)
postype = right
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo round 1 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9610) = 0
trigger1 = var(44) >= 1
anim = 9610
ID = 9610
pos = -36, GameHeight - (28)
postype = right
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo slot 2 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9621) = 0
anim = 9611
ID = 9621
pos = -44, GameHeight - (28)
postype = right
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo round 2 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9611) = 0
trigger1 = var(44) >= 2
anim = 9610
ID = 9611
pos = -44, GameHeight - (28)
postype = right
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo slot 3 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9622) = 0
anim = 9611
ID = 9622
pos = -52, GameHeight - (28)
postype = right
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo round 3 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9612) = 0
trigger1 = var(44) >= 3
anim = 9610
ID = 9612
pos = -52, GameHeight - (28)
postype = right
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo slot 4 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9623) = 0
anim = 9611
ID = 9623
pos = -60, GameHeight - (28)
postype = right
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo round 4 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9613) = 0
trigger1 = var(44) >= 4
anim = 9610
ID = 9613
pos = -60, GameHeight - (28)
postype = right
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo slot 5 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9624) = 0
anim = 9611
ID = 9624
pos = -68, GameHeight - (28)
postype = right
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo round 5 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9614) = 0
trigger1 = var(44) >= 5
anim = 9610
ID = 9614
pos = -68, GameHeight - (28)
postype = right
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo slot 6 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9625) = 0
anim = 9611
ID = 9625
pos = -76, GameHeight - (28)
postype = right
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ammo round 6 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9615) = 0
trigger1 = var(44) >= 6
anim = 9610
ID = 9615
pos = -76, GameHeight - (28)
postype = right
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

;Abstract Reordered: 2+X = quick-draw reload (slower; next gun special fires an extra bullet)
[State -1, AR Quick-draw reload]
type = ChangeState
value = 7731
triggerall = var(59) <= 0
triggerall = command = "ar_reload"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = var(45) = 0 || var(44) < 6
trigger1 = ctrl || (stateno = [100,101])

;Abstract Reordered: X = reload Backlace (all 6 rounds)
[State -1, AR Reload]
type = ChangeState
value = 7730
triggerall = var(59) <= 0
triggerall = command = "ar_reload"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = var(44) < 6
trigger1 = ctrl || (stateno = [100,101])

;Abstract Reordered: CPU reloads when the gun is empty
[State -1, AR CPU reload]
type = ChangeState
value = 7730
triggerall = var(59) = 1
triggerall = var(44) = 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = random < 60


;===========================================================================
; AI switch -> ON
[State -1, Activate AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
trigger21 = command = "CPU21"
trigger22 = command = "CPU22"
trigger23 = command = "CPU23"
trigger24 = command = "CPU24"
trigger25 = command = "CPU25"
trigger26 = command = "CPU26"
trigger27 = command = "CPU27"
trigger28 = command = "CPU28"
trigger29 = command = "CPU29"
trigger30 = command = "CPU30"
v = 59
value = 1

;===========================================================================
[State -1, standGuard]
type = ChangeState
triggerall = var(59) && random <= 555
triggerall =(StateType != A) && (Ctrl)&& (enemynear, Facing != Facing) 
trigger1 = (P2StateType != C) && (P2MoveType = A)
trigger1 = p2dist x <= 70
value = 130

[State -1, airGuardHitBack]
type = ChangeState
triggerall = var(59) && random <= 555
triggerall =(StateType != A) && (enemynear, Facing != Facing)
triggerall = (P2StateType = C) && (P2MoveType = A)  
trigger1 = StateNo = 150
trigger1 = p2dist x <= 70
value = 152

[State -1, crouchGuard]
type = ChangeState
triggerall = var(59) && random <= 555
triggerall = (StateType != A) && (Ctrl) && (enemynear, Facing != Facing) 
trigger1 = (P2StateType = C) && (P2MoveType = A)  
trigger1 = p2dist x <= 70
value = 131

[State -1, standGuardHitBack]
type = ChangeState
triggerall = var(59) && random <= 555
triggerall =(StateType != A) && (enemynear, Facing != Facing) 
triggerall = (P2StateType != C) && (P2MoveType = A) 
trigger1 = StateNo = 152
trigger1 = p2dist x <= 70
value = 150

[State -1, airGuard]
type = ChangeState
triggerall = var(59) && random <= 555
triggerall = (StateType = A) && (Ctrl) && (enemynear, Facing != Facing) 
trigger1 = P2MoveType = A 
trigger1 = p2dist x <= 70
value = 132

;---------------------------------------------------------------------------
[State -1, AI: FLY AWAY NOW]
type = ChangeState
value = 3040
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = p2statetype != L
triggerall = stateno < 3040
triggerall = power >= 3000
triggerall = NumHelper(3042) = 0
triggerall = life <= 200
trigger1 = p2statetype != A
trigger1 = p2bodydist x >= 130
trigger1 = p2movetype != H
trigger1 = random >= 5
trigger1 = movetype != H

;---------------------------------------------------------------------------
[State -1, AI: Minigun]
type = ChangeState
value = 3060
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = p2statetype != L
triggerall = stateno < 3060
triggerall = power >= 3000
triggerall = NumHelper(3062) = 0
triggerall = life <= 200
trigger1 = p2statetype != A
trigger1 = p2bodydist x >= 65
trigger1 = random >= 10
trigger1 = movetype != H

;---------------------------------------------------------------------------
[State -1, AI: 5T-R1P3]
type = ChangeState
value = 3020
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = p2statetype != L
triggerall = stateno < 3020
triggerall = power >= 1000
trigger1 = p2bodydist x >= 100
trigger1 = random <= 12
trigger1 = movetype != H

;---------------------------------------------------------------------------
[State -1, AI: Bangin' Up]
type = ChangeState
value = 3000
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = p2statetype != L
triggerall = stateno < 3000
triggerall = power >= 2000
trigger1 = p2bodydist x <= 100
trigger1 = p2movetype != H
trigger1 = random <= 3
trigger1 = movetype != H

;---------------------------------------------------------------------------
[State -1, AI: Briefers 69]
type = ChangeState
value = 3030
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = p2statetype != L
triggerall = stateno < 3030
triggerall = power >= 2000
trigger1 = p2bodydist x <= 50
trigger1 = random <= 11
trigger1 = movetype != H

;---------------------------------------------------------------------------
[State -1, AI: Double Backlace]
type = ChangeState
value = 3050
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = p2statetype != L
triggerall = stateno < 3050
triggerall = power >= 1000
trigger1 = p2bodydist x <= 50
trigger1 = random <= 10
trigger1 = movetype != H

;---------------------------------------------------------------------------
[State -1, AI: Rolling Stone]
type = ChangeState
value = 1080
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = NumHelper(1082) = 0
trigger1 = random <= 40
trigger1 = p2bodydist x <= 110
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = p2statetype != L

;---------------------------------------------------------------------------
[State -1, AI: Cosmo's Pole]
type = ChangeState
value = 1070
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = NumHelper(1071) = 0
trigger1 = random <= 40
trigger1 = p2bodydist x >= 70
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = p2statetype != L

;---------------------------------------------------------------------------
[State -1, AI: Backlace (Mid-air)]
type = ChangeState
value = 1060
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A)
triggerall = NumHelper(1001)+NumHelper(1021) = 0
triggerall = NumHelper(1031)+NumHelper(1082) = 0
trigger1 = random <= 40
trigger1 = p2dist x >= 130
trigger1 = statetype != S
trigger1 = movetype != H
trigger1 = p2statetype != L

;---------------------------------------------------------------------------
[State -1, AI: Random Pole Dance]
type = ChangeState
value = 1055
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = random <= 30
trigger1 = p2dist x <= 50
trigger1 = p2statetype != A
trigger1 = statetype != A
trigger1 = p2statetype != L

;---------------------------------------------------------------------------
[State -1, AI: Rapid Fire (Anti-air)]
type = ChangeState
value = 1025
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = NumHelper(1001)+NumHelper(1021) = 0
triggerall = NumHelper(1031)+NumHelper(1082) = 0
triggerall = power >= 500
trigger1 = random <= 20
trigger1 = p2dist x <= 100
trigger1 = p2dist y <= 50
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = p2statetype = A

;---------------------------------------------------------------------------
[State -1, AI: Backlace (Anti-air)]
type = ChangeState
value = 1020
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = NumHelper(1001)+NumHelper(1021) = 0
triggerall = NumHelper(1031)+NumHelper(1082) = 0
trigger1 = random <= 40
trigger1 = p2dist x <= 100
trigger1 = p2dist y <= 50
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = p2statetype = A

;---------------------------------------------------------------------------
[State -1, AI: Rapid Fire]
type = ChangeState
value = 1005
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = NumHelper(1001)+NumHelper(1021) = 0
triggerall = NumHelper(1031)+NumHelper(1082) = 0
triggerall = power >= 500
trigger1 = random <= 20
trigger1 = p2dist x >= 70
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = p2statetype != L

;---------------------------------------------------------------------------
[State -1, AI: Backlace]
type = ChangeState
value = 1000
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = NumHelper(1001)+NumHelper(1021) = 0
triggerall = NumHelper(1031)+NumHelper(1082) = 0
trigger1 = random <= 40
trigger1 = p2dist x >= 70
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = p2statetype != L

;---------------------------------------------------------------------------
[State -1, AI: What the Flying Fuck]
type = ChangeState
value = 900
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A)
trigger1 = movetype != H
trigger1 = random <= 990
trigger1 = p2dist x <= 3
trigger1 = p2dist y <= 5
trigger1 = p2statetype != L
trigger1 = p2statetype = A
trigger1 = p2movetype != A

;---------------------------------------------------------------------------
[State -1, AI: Face sitting]
type = ChangeState
value = 800
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = movetype != H
trigger1 = random <= 990
trigger1 = p2dist x <= 3
trigger1 = p2dist y <= 5
trigger1 = p2statetype != L
trigger1 = p2statetype != A
trigger1 = p2movetype != A

;---------------------------------------------------------------------------
[State -1, AI: Standing Light Punch]
type = ChangeState
value = 200
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = random <= 500
trigger1 = p2statetype != L
trigger1 = p2dist x <= 50
trigger1 = p2statetype != A

;---------------------------------------------------------------------------
[State -1, AI: Standing Strong Punch]
type = ChangeState
value = 210
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = random <= 900
trigger1 = p2dist x <= 50
trigger1 = p2statetype != L

;----------------------------------------------------------------------------
[State -1, AI: Standing Light Kick]
type = ChangeState
value = 230
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = random <= 500
trigger1 = p2dist x <= 50
trigger1 = p2statetype != L

;----------------------------------------------------------------------------
[State -1, AI: Standing Strong Kick]
type = ChangeState
value = 240
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = random <= 900
trigger1 = p2dist x <= 50
trigger1 = p2statetype != L

;---------------------------------------------------------------------------
[State -1, AI: Crouching Light Punch]
type = ChangeState
value = 400
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = random <= 500
trigger1 = p2dist x <= 50
trigger1 = p2statetype = L

;--------------------------------------------------------------------------
[State -1, AI: Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = random <= 900
trigger1 = p2dist x <= 50
trigger1 = p2statetype = L

;--------------------------------------------------------------------------
[State -1, AI: Crouching Light Kick]
type = ChangeState
value = 430
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = random <= 500
trigger1 = p2dist x <= 50
trigger1 = p2statetype = L

;--------------------------------------------------------------------------
[State -1, AI: Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = random <= 900
trigger1 = p2dist x <= 50
trigger1 = p2statetype = L

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, AI: Jump Light Punch]
type = ChangeState
value = 600
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = random <= 500
trigger1 = P2Dist y >= 15
trigger1 = p2dist x <= 50
trigger1 = p2statetype = L
trigger1 = p2statetype = A

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, AI: Jump Strong Punch]
type = ChangeState
value = 610
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = random <= 900
trigger1 = P2Dist y >= 15
trigger1 = p2dist x <= 50
trigger1 = p2statetype = L
trigger1 = p2statetype = A

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, AI: Jump Light Kick]
type = ChangeState
value = 630
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = random <= 500
trigger1 = P2Dist y >= 15
trigger1 = p2dist x <= 50
trigger1 = p2statetype = L
trigger1 = p2statetype = A
;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, AI: Jump Strong Kick]
type = ChangeState
value = 640
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = random <= 900
trigger1 = P2Dist y >= 15
trigger1 = p2dist x <= 50
trigger1 = p2statetype = L

;---------------------------------------------------------------------------
;Taunt
[State -1, AI: Taunt]
type = ChangeState
value = 195 + (random%2)
triggerall = (roundstate = 3) && (var(59) != 0)
triggerall = Statetype = S
triggerall = p2dist x >= 100
triggerall = winko
triggerall = prevstateno != 195 ;So she won't keep taunting after winning
triggerall = prevstateno != 196
trigger1 = ctrl

;---------------------------------------------------------------------------
;FLY AWAY NOW
[State -1, FLY AWAY NOW]
type = ChangeState
value = 3040
triggerall = var(59) <= 0
triggerall = power >= 3000
triggerall = life <= 200
triggerall = NumHelper(3042) = 0
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || (((stateno=[200,440]) || (stateno=[1000,1080])) && (MoveContact || var(1)))
trigger1 = command = "FLY AWAY NOW"

;---------------------------------------------------------------------------
;Minigun
[State -1, Minigun]
type = ChangeState
value = 3060
triggerall = var(59) <= 0
triggerall = power >= 3000
triggerall = NumHelper(3062) = 0
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || (((stateno=[200,440]) || (stateno=[1000,1080])) && (MoveContact || var(1)))
trigger1 = command = "Minigun"

;---------------------------------------------------------------------------
;Briefers 69
[State -1, Briefers 69]
type = ChangeState
value = 3030
triggerall = var(59) <= 0
triggerall = power >= 2000
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || (((stateno=[200,440]) || (stateno=[1000,1080])) && (MoveContact || var(1)))
trigger1 = command = "Briefers 69"

;---------------------------------------------------------------------------
;5T-R1P3
[State -1, 5T-R1P3]
type = ChangeState
value = 3020
triggerall = var(59) <= 0
triggerall = power >= 2000
triggerall = NumHelper(3022) = 0
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || (((stateno=[200,440]) || (stateno=[1000,1080])) && (MoveContact || var(1)))
trigger1 = command = "5T-R1P3"

;---------------------------------------------------------------------------
;Double Backlace
[State -1, Double Backlace]
type = ChangeState
value = 3050
triggerall = var(59) <= 0
triggerall = power >= 1000
triggerall = NumHelper(3052)+NumHelper(3053) = 0
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || (((stateno=[200,440]) || (stateno=[1000,1080])) && (MoveContact || var(1)))
trigger1 = command = "Double Backlace"

;---------------------------------------------------------------------------
;Bangin' up
[State -1, Bangin' up]
type = ChangeState
value = 3000
triggerall = var(59) <= 0
triggerall = power >= 1000
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || (((stateno=[200,440]) || (stateno=[1000,1080])) && (MoveContact || var(1)))
trigger1 = command = "Bangin' up"

;===========================================================================
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0
ignorehitpause = 1

[State -1, Combo condition Check]
type = VarSet
trigger1 = movetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,240]) || (stateno = [400,440]) || (stateno = [600,640])
trigger2 = movecontact
trigger3 = (stateno = [1000,1020]) && animelemtime(5) > 0
trigger4 = (stateno = 1050) && movecontact
trigger5 = (stateno = 1060) && animelemtime(3+2*(var(10)=2)) > 0
trigger6 = stateno = 1077
trigger7 = (stateno = 1080) && movecontact
trigger8 = (stateno = 1081) && animelemtime(2) > 0
trigger9 = (stateno = 1091) && animelemtime(1) > 0
var(1) = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
; Rolling Stone
[State -1, Rolling Stone]
type = ChangeState
value = ifelse(var(44) >= 1, 1080, 7720)   ;Abstract Reordered: 1 round(s), else pistol-whip
triggerall = var(59) <= 0
triggerall = NumHelper(1001)+NumHelper(1021) = 0
triggerall = NumHelper(1031)+NumHelper(1082) = 0
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || ((stateno=[200,440]) && (MoveContact || var(1)))
trigger1 = command = "RollingStone"
trigger1 = (var(10):=1)||1
trigger2 = command = "RollingStone2"
trigger2 = (var(10):=2)||1

;---------------------------------------------------------------------------
; Cosmo's Pole
[State -1, Cosmo's Pole]
type = ChangeState
value = 1070
triggerall = var(59) <= 0
triggerall = NumHelper(1071) = 0
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || ((stateno=[200,440]) && (MoveContact || var(1)))
trigger1 = command = "Cosmo's Pole"
trigger1 = (var(10):=1)||1
trigger2 = command = "Cosmo's Pole2"
trigger2 = (var(10):=2)||1

;---------------------------------------------------------------------------
; Rapid Fire (Anti-air)
;カンフー突き手（弱）
[State -1, Rapid Fire (Anti-air)]
type = ChangeState
value = ifelse(var(44) >= 2, 1025, 7720)   ;Abstract Reordered: 2 round(s), else pistol-whip
triggerall = var(59) <= 0
triggerall = NumHelper(1001)+NumHelper(1021) = 0
triggerall = NumHelper(1031)+NumHelper(1082) = 0
triggerall = statetype != A
triggerall = power >= 500
triggerall = ctrl || (stateno=[100,101]) || ((stateno=[200,440]) && (MoveContact || var(1)))
trigger1 = command = "Rapid Fire2"

;---------------------------------------------------------------------------
; Backlace (Anti-Air)
;速いカンフー突き手（ゲージレベル１／３）
[State -1, Backlace (Anti-Air)]
type = ChangeState
value = ifelse(var(44) >= 1, 1020, 7720)   ;Abstract Reordered: 1 round(s), else pistol-whip
triggerall = var(59) <= 0
triggerall = NumHelper(1001)+NumHelper(1021) = 0
triggerall = NumHelper(1031)+NumHelper(1082) = 0
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || ((stateno=[200,440]) && (MoveContact || var(1)))
trigger1 = command = "Backlace-Anti-Air"
trigger1 = (var(10):=1)||1
trigger2 = command = "Backlace-Anti-Air2"
trigger2 = (var(10):=2)||1

;---------------------------------------------------------------------------
; Rapid Fire
;カンフー突き手（弱）
[State -1, Rapid Fire]
type = ChangeState
value = ifelse(var(44) >= 2, 1005, 7720)   ;Abstract Reordered: 2 round(s), else pistol-whip
triggerall = var(59) <= 0
triggerall = NumHelper(1001)+NumHelper(1021) = 0
triggerall = NumHelper(1031)+NumHelper(1082) = 0
triggerall = statetype != A
triggerall = power >= 500
triggerall = ctrl || (stateno=[100,101]) || ((stateno=[200,440]) && (MoveContact || var(1)))
trigger1 = command = "Rapid Fire"

;---------------------------------------------------------------------------
; Random Pole Dance
[State -1, Random Pole Dance]
type = ChangeState
value = 1055
triggerall = var(59) <= 0
;triggerall = power >= 500
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || ((stateno=[200,440]) && (MoveContact || var(1)))
trigger1 = command = "Pole"

;---------------------------------------------------------------------------
; Backlace (Mid-air)
;カンフー蹴り（弱）
[State -1, Backlace (Mid-air)]
type = ChangeState
value = ifelse(var(44) >= 1, 1060, 7721)   ;Abstract Reordered: 1 round(s), else pistol-whip
triggerall = var(59) <= 0
triggerall = NumHelper(1001)+NumHelper(1021) = 0
triggerall = NumHelper(1031)+NumHelper(1082) = 0
triggerall = statetype = A
triggerall = ctrl || (stateno=[100,101]) || ((stateno=[600,640]) && (MoveContact || var(1)))
trigger1 = command = "Backlace"
trigger1 = (var(10):=1)||1
trigger2 = command = "Backlace2"
trigger2 = (var(10):=2)||1

;---------------------------------------------------------------------------
; Backlace
;カンフー突き手（弱）
[State -1, Backlace]
type = ChangeState
value = ifelse(var(44) >= 1, 1000, 7720)   ;Abstract Reordered: 1 round(s), else pistol-whip
triggerall = var(59) <= 0
triggerall = NumHelper(1001)+NumHelper(1021) = 0
triggerall = NumHelper(1031)+NumHelper(1082) = 0
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || ((stateno=[200,440]) && (MoveContact || var(1)))
trigger1 = command = "Backlace"
trigger1 = (var(10):=1)||1
trigger2 = command = "Backlace2"
trigger2 = (var(10):=2)||1

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Flying Angel
;投げ
[State -1, Flying Angel]
type = ChangeState
value = 900
triggerall = var(59) <= 0
triggerall = command = "y"   ;Abstract Reordered: grab on Y
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100

;---------------------------------------------------------------------------
; Face Sitting
;投げ
trigger1 = 1


[State -1, Face Sitting]
type = ChangeState
value = 800
triggerall = var(59) <= 0
triggerall = command = "y"   ;Abstract Reordered: grab on Y
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100


;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
;Abstract Reordered normals: A = light, B = medium, C = heavy (6A / 3A / j.6A = her light kicks)
trigger1 = 1


[State -1, 6A (standing light kick)]
type = ChangeState
value = 230
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact

[State -1, 3A (crouching light kick)]
type = ChangeState
value = 430
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 || stateno = 230 || stateno = 400
trigger2 = movecontact

[State -1, 5A Light Punch]
type = ChangeState
value = 200
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])

[State -1, 5B Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = movecontact

[State -1, 5C Strong Kick]
type = ChangeState
value = 240
triggerall = var(59) <= 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 410 || stateno = 430
trigger2 = movecontact

[State -1, 2A Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 || stateno = 230
trigger2 = movecontact

[State -1, 2B Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = movecontact

[State -1, 2C Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59) <= 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430
trigger2 = movecontact

[State -1, j.6A (air light kick)]
type = ChangeState
value = 630
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holdfwd"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

[State -1, j.A Air Light Punch]
type = ChangeState
value = 600
triggerall = var(59) <= 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, j.B Air Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) <= 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

[State -1, j.C Air Strong Kick]
type = ChangeState
value = 640
triggerall = var(59) <= 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630
trigger2 = movecontact

[State -1, Taunt - Bird]
type = ChangeState
value = 196
triggerall = var(59) <= 0
triggerall = statetype != A
triggerall = command = "down_s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
;挑発

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) <= 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ

[State -1, Super Jump]
type = null;ChangeState
value = 65
triggerall = var(59) <= 0
triggerall = command = "SuperJump"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Super Jump - front
[State -1, Super Jump - front]
type = nuLL;ChangeState
value = 66
triggerall = var(59) <= 0
triggerall = command = "SuperJumpf"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Super Jump - back
[State -1, Super Jump - back]
type = null;ChangeState
value = 67
triggerall = var(59) <= 0
triggerall = command = "SuperJumpb"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

; Wall Jump
[State -1, State]
type = ChangeState
value = 60
triggerall = ctrl
triggerall = statetype = A
triggerall = command = "holdup"
triggerall = Pos Y <= -50
trigger1 = command = "holdfwd"
trigger1 = BackEdgeBodyDist <= 0
trigger2 = command = "holdback"
trigger2 = FrontEdgeBodyDist <= 0
