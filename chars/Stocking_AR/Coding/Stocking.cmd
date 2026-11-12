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
command.time = 30

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
name = "Bangin' up"
command = ~D, DF, F, D, DF, F, a+b
time = 20

[Command]
name = "Sweet healing"   
command = ~F,DF,D,DB,B, a+b
time = 30

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
name = "Cutting Air"
command = ~D, DF, F, a

[Command]
name = "Cutting Air2"
command = ~D, DF, F, b

[Command]
name = "Cutting Barrage"
command = ~D, DF, F, c

[Command]
name = "Thigh Highs Cutter"
command = ~F, D, DF, a

[Command]
name = "Thigh Highs Cutter2"
command = ~F, D, DF, b

[Command]
name = "Stripecopter"
command = ~D, DB, B, a

[Command]
name = "Stripecopter2"
command = ~D, DB, B, b

[Command]
name = "Surprising Stripes"
command = ~F, DF, D, DB, B, a

[Command]
name = "Surprising Stripes2"
command = ~F, DF, D, DB, B, b

[Command]
name = "Thight Blender"
command = ~D, D, a

[Command]
name = "Thight Blender2"
command = ~D, D, b

[Command]
name = "Backstabbing Air"
command = ~D, DF, F, D, DF, F, a+b

[Command]
name = "Backstabbing Air"
command = ~D, DF, F, D, DF, F, b+c

[Command]
name = "Backstabbing Air"
command = ~D, DF, F, D, DF, F, a+c

[Command]
name = "Stripping Blender"
command = ~D, DB, B, D, DB, B, a+b

[Command]
name = "Stripping Blender"
command = ~D, DB, B, D, DB, B, b+c

[Command]
name = "Stripping Blender"
command = ~D, DB, B, D, DB, B, a+c

[Command]
name = "Hyper Cutting Barrage"
command = ~F, DF, D, DB, B, F, a+b

[Command]
name = "Hyper Cutting Barrage"
command = ~F, DF, D, DB, B, F, b+c

[Command]
name = "Hyper Cutting Barrage"
command = ~F, DF, D, DB, B, F, a+c

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
name = "Critical Slash"
command = ~F, B, DB, D, DF, F, c



;Abstract Reordered: A/B/C = light/medium/heavy, X = sugar (eat a candy), Y = grab, Z = parry, A+B+C = burst
[Command]
name = "ar_parry"
command = z
time = 1

[Command]
name = "ar_burst"
command = a+b+c
time = 1

[Command]
name = "ar_eat"
command = x
time = 1

[Statedef -1]

;---------------------------------------------------------------------------
;Abstract Reordered: burst (Kamijo's) - A+B+C while being hit, recharges in 75 s (var(40))
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
;knocks half a second (30 ticks) off the burst cooldown. var(41) = life when the combo started, var(42) = life last tick
[State -1, AR burst comeback]
type = VarAdd
triggerall = !ishelper
triggerall = var(40) > 0
trigger1 = movetype = H
trigger1 = Life < var(42)
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
var(42) = Life
ignorehitpause = 1

;Abstract Reordered: burst HUD - Touma's BURST gauge, recoloured, just under the lifebar.
;var(40) = cooldown ticks (4500 = just used, 0 = ready). Anims 9660-9668, explod IDs = anims.
[State -1, AR burst gauge 9668 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9668) = 0
trigger1 = var(40) = 0
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
trigger1 = var(40) = 0
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
trigger1 = var(40) > 3750
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
trigger1 = var(40) <= 3750 && var(40) > 3000
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
trigger1 = var(40) <= 3000 && var(40) > 2250
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
trigger1 = var(40) <= 2250 && var(40) > 1500
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
trigger1 = var(40) <= 1500 && var(40) > 750
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
trigger1 = var(40) <= 750 && var(40) > 0
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
trigger1 = var(40) > 3750
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
trigger1 = var(40) = 0
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
trigger1 = var(40) = 0
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
trigger1 = var(40) > 3750
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
trigger1 = var(40) <= 3750 && var(40) > 3000
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
trigger1 = var(40) <= 3000 && var(40) > 2250
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
trigger1 = var(40) <= 2250 && var(40) > 1500
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
trigger1 = var(40) <= 1500 && var(40) > 750
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
trigger1 = var(40) <= 750 && var(40) > 0
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
trigger1 = var(40) > 3750
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
trigger1 = !(var(40) = 0)
ID = 9668
ignorehitpause = 1

[State -1, AR burst gauge 9661 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9661)
trigger1 = !(var(40) = 0)
ID = 9661
ignorehitpause = 1

[State -1, AR burst gauge 9660 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9660)
trigger1 = !(var(40) > 3750)
ID = 9660
ignorehitpause = 1

[State -1, AR burst gauge 9662 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9662)
trigger1 = !(var(40) <= 3750 && var(40) > 3000)
ID = 9662
ignorehitpause = 1

[State -1, AR burst gauge 9663 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9663)
trigger1 = !(var(40) <= 3000 && var(40) > 2250)
ID = 9663
ignorehitpause = 1

[State -1, AR burst gauge 9664 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9664)
trigger1 = !(var(40) <= 2250 && var(40) > 1500)
ID = 9664
ignorehitpause = 1

[State -1, AR burst gauge 9665 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9665)
trigger1 = !(var(40) <= 1500 && var(40) > 750)
ID = 9665
ignorehitpause = 1

[State -1, AR burst gauge 9666 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9666)
trigger1 = !(var(40) <= 750 && var(40) > 0)
ID = 9666
ignorehitpause = 1

[State -1, AR burst gauge 9667 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9667)
trigger1 = !(var(40) > 3750)
ID = 9667
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

;---------------------------------------------------------------------------
;Abstract Reordered: Sugar meter (X). var(43) = sugar (3 candies of 100), var(44) = Sugar Rush timer,
;var(45) = sugar crash timer, var(46) = hits counted in the current combo
[State -1, AR sugar round start]
type = VarSet
trigger1 = RoundState <= 1
var(43) = 0

[State -1, AR rush round start]
type = VarSet
trigger1 = RoundState <= 1
var(44) = 0

[State -1, AR crash round start]
type = VarSet
trigger1 = RoundState <= 1
var(45) = 0

[State -1, AR crash stun round start]
type = VarSet
trigger1 = RoundState <= 1
var(19) = 0

;ComboCount = hits in her current combo (her projectiles too)
[State -1, AR sugar from hits (her and her projectiles)]
type = VarAdd
triggerall = !IsHelper
trigger1 = ComboCount > var(46)
var(43) = 12 * (ComboCount - var(46))
ignorehitpause = 1

[State -1, AR hits counted]
type = VarSet
triggerall = !IsHelper
trigger1 = ComboCount != var(46)
var(46) = ComboCount
ignorehitpause = 1

[State -1, AR sugar from blocked hits]
type = VarAdd
trigger1 = !IsHelper
trigger1 = MoveGuarded = 1
var(43) = 4
ignorehitpause = 1

[State -1, AR sugar cap]
type = VarSet
trigger1 = var(43) > 300
var(43) = 300

[State -1, AR rush ending -> crash]
type = VarSet
trigger1 = var(44) = 1
var(45) = 90

[State -1, AR rush timer]
type = VarAdd
trigger1 = var(44) > 0
var(44) = -1

[State -1, AR crash timer]
type = VarAdd
trigger1 = var(45) > 0
var(45) = -1

[State -1, AR rush glow]
type = PalFX
trigger1 = var(44) > 0
trigger1 = GameTime % 20 = 0
time = 12
add = 70, 10, 50
sinadd = 40, 10, 30, 12

[State -1, AR crash look]
type = PalFX
trigger1 = var(45) > 0
time = 2
add = -20, -20, -20
mul = 220, 220, 220
color = 160

;combo scaling: full damage for the first 2 hits, then -7.5% a hit down to 40%; 10% less during the crash
[State -1, AR damage (combo scaling + crash)]
type = AttackMulSet
trigger1 = 1
value = ifelse(var(45) > 0, 0.9, 1) * ifelse(ComboCount <= 2, 1, ifelse(ComboCount >= 10, 0.4, 1 - 0.075 * (ComboCount - 2)))
ignorehitpause = 1

;normals used in this combo (Sugar Rush can't repeat them)
[State -1, AR combo over: normals free again]
type = VarSet
trigger1 = ComboCount = 0
var(47) = 0
ignorehitpause = 1

[State -1, AR normal used]
type = VarSet
trigger1 = movecontact
trigger1 = ((stateno = [200,240]) || (stateno = [400,440])) || (stateno = [600,640])
var(47) = var(47) | ifelse(stateno = 200, 1, ifelse(stateno = 210, 2, ifelse(stateno = 230, 4, ifelse(stateno = 240, 8, ifelse(stateno = 400, 16, ifelse(stateno = 410, 32, ifelse(stateno = 430, 64, ifelse(stateno = 440, 128, ifelse(stateno = 600, 256, ifelse(stateno = 610, 512, ifelse(stateno = 630, 1024, ifelse(stateno = 640, 2048, 0))))))))))))
ignorehitpause = 1

;the same standing / crouching normal more than twice in a row pushes her away
[State -1, AR repeat count]
type = VarSet
trigger1 = MoveContact = 1
trigger1 = (stateno = [200,240]) || (stateno = [400,440])
var(49) = ifelse(stateno = var(48), var(49) + 1, 1)
ignorehitpause = 1

[State -1, AR repeat last]
type = VarSet
trigger1 = MoveContact = 1
trigger1 = (stateno = [200,240]) || (stateno = [400,440])
var(48) = stateno
ignorehitpause = 1

[State -1, AR repeat reset]
type = VarSet
trigger1 = ComboCount = 0
trigger1 = movetype != A
var(49) = 0
ignorehitpause = 1

;Abstract Reordered: repeat pushback removed (it pushed combos out of range)

;supers: blocked = extra recovery (state 7780)
[State -1, AR super blocked]
type = VarSet
trigger1 = stateno = [3000,3069]
trigger1 = NumEnemy
trigger1 = enemynear,stateno = [150,155]
var(39) = 1
ignorehitpause = 1

[State -1, AR super block flag off]
type = VarSet
trigger1 = stateno != [3000,3069]
trigger1 = stateno != 7780
var(39) = 0

;sugar crash: when the rush runs out she's dazed (open) for a moment
[State -1, AR crash stun pending]
type = VarSet
trigger1 = var(44) = 1
var(19) = 1

[State -1, AR crash stun]
type = ChangeState
value = 7790
triggerall = var(19) = 1
triggerall = statetype != A
triggerall = movetype != H
trigger1 = ctrl
trigger2 = stateno = 0 || stateno = 20 || stateno = 11

[State -1, AR candy bar]
type = ModifyExplod
trigger1 = NumExplod(9630)
ID = 9630
scale = ifelse(var(43) >= 300, 1, (var(43) % 100) / 100.0), 1
ignorehitpause = 1

[State -1, AR candy 1 eaten]
type = RemoveExplod
trigger1 = var(43) < 100
trigger1 = NumExplod(9610)
ID = 9610
ignorehitpause = 1

[State -1, AR candy 2 eaten]
type = RemoveExplod
trigger1 = var(43) < 200
trigger1 = NumExplod(9611)
ID = 9611
ignorehitpause = 1

[State -1, AR candy 3 eaten]
type = RemoveExplod
trigger1 = var(43) < 300
trigger1 = NumExplod(9612)
ID = 9612
ignorehitpause = 1

[State -1, AR sugar slot 1 P1]
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

[State -1, AR sugar candy 1 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9610) = 0
trigger1 = var(43) >= 100
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

[State -1, AR sugar slot 2 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9621) = 0
anim = 9611
ID = 9621
pos = 48, GameHeight - (28)
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

[State -1, AR sugar candy 2 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9611) = 0
trigger1 = var(43) >= 200
anim = 9610
ID = 9611
pos = 48, GameHeight - (28)
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

[State -1, AR sugar slot 3 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9622) = 0
anim = 9611
ID = 9622
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

[State -1, AR sugar candy 3 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9612) = 0
trigger1 = var(43) >= 300
anim = 9610
ID = 9612
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

[State -1, AR sugar bar P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9630) = 0
anim = 9612
ID = 9630
pos = 30, GameHeight - (20)
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR sugar slot 1 P2]
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

[State -1, AR sugar candy 1 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9610) = 0
trigger1 = var(43) >= 100
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

[State -1, AR sugar slot 2 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9621) = 0
anim = 9611
ID = 9621
pos = -48, GameHeight - (28)
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

[State -1, AR sugar candy 2 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9611) = 0
trigger1 = var(43) >= 200
anim = 9610
ID = 9611
pos = -48, GameHeight - (28)
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

[State -1, AR sugar slot 3 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9622) = 0
anim = 9611
ID = 9622
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

[State -1, AR sugar candy 3 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9612) = 0
trigger1 = var(43) >= 300
anim = 9610
ID = 9612
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

[State -1, AR sugar bar P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9630) = 0
anim = 9612
ID = 9630
pos = -30, GameHeight - (20)
postype = right
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

;Abstract Reordered: 2+X with 3 candies = Sweet Healing (+100 life, uses all candies)
[State -1, AR Sweet Healing]
type = ChangeState
value = 7770
triggerall = var(59) <= 0
triggerall = command = "ar_eat"
triggerall = command = "holddown"
triggerall = var(43) >= 300
triggerall = statetype != A
triggerall = life < lifemax
trigger1 = ctrl

;Abstract Reordered: X = eat a candy (Sugar Rush)
[State -1, AR Eat a candy]
type = ChangeState
value = 7760
triggerall = var(59) <= 0
triggerall = command = "ar_eat"
triggerall = var(43) >= 100
triggerall = statetype != A
trigger1 = ctrl

;Abstract Reordered: Sugar Rush - normals jump cancel on hit
[State -1, AR rush jump cancel]
type = ChangeState
value = 40
triggerall = var(59) <= 0
triggerall = var(44) > 0
triggerall = command = "holdup"
triggerall = statetype != A
trigger1 = (stateno = [200,240]) || (stateno = [400,440])
trigger1 = movehit


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
triggerall = life <= 200
trigger1 = p2statetype != A
trigger1 = p2bodydist x >= 130
trigger1 = p2movetype != H
trigger1 = random >= 5
trigger1 = movetype != H

;---------------------------------------------------------------------------
[State -1, AI: Critical Slash]
type = ChangeState
value = 3060
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = p2statetype != L
triggerall = stateno < 3060
triggerall = power >= 3000
trigger1 = p2statetype != A
trigger1 = p2bodydist x >= 65
trigger1 = random >= 10
trigger1 = movetype != H

;---------------------------------------------------------------------------
[State -1, AI: Stripping Blender]
type = ChangeState
value = 3020
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = p2statetype != L
triggerall = stateno < 3020
triggerall = power >= 1000
trigger1 = p2dist x <= 30
trigger1 = p2dist y <= 50
trigger1 = random <= 12
trigger1 = movetype != H

;---------------------------------------------------------------------------
[State -1, AI: Backstabbing Air]
type = ChangeState
value = 3000
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = p2statetype != L
triggerall = stateno < 3000
triggerall = power >= 1000
trigger1 = p2bodydist x <= 100
trigger1 = p2movetype != H
trigger1 = random <= 3
trigger1 = movetype != H

;---------------------------------------------------------------------------
[State -1, AI: Hyper Cutting Barrage]
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
[State -1, AI: Sweet Healing]
type = ChangeState
value = 3050
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = p2statetype != L
triggerall = stateno < 3050
triggerall = life != 1000
triggerall = power >= 3000
trigger1 = p2bodydist x <= 50
trigger1 = random <= 5
trigger1 = movetype != H

;---------------------------------------------------------------------------
[State -1, AI: Thight Blender]
type = ChangeState
value = 1080
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = random <= 40
trigger1 = p2bodydist x <= 50
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = p2statetype != L

;---------------------------------------------------------------------------
[State -1, AI: Stripecopter]
type = ChangeState
value = 1070
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = random <= 40
trigger1 = p2bodydist x >= 30
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = p2statetype != L

;---------------------------------------------------------------------------
[State -1, AI: Stripe Strike]
type = ChangeState
value = 1060
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A)
trigger1 = random <= 40
trigger1 = p2dist x >= 120
trigger1 = statetype != S
trigger1 = movetype != H
trigger1 = p2statetype != L

;---------------------------------------------------------------------------
[State -1, AI: Surprising Stripes]
type = ChangeState
value = 1050
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = random <= 30
trigger1 = p2dist x <= 50
trigger1 = p2statetype != A
trigger1 = statetype != A
trigger1 = p2statetype != L

;---------------------------------------------------------------------------
[State -1, AI: Thigh Highs Cutter]
type = ChangeState
value = 1010
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = random <= 40
trigger1 = p2dist x <= 30
trigger1 = p2dist y <= 50
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = p2statetype = A

;---------------------------------------------------------------------------
[State -1, AI: Cutting Air]
type = ChangeState
value = 1000
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = random <= 40
trigger1 = p2dist x >= 10
trigger1 = statetype != A
trigger1 = movetype != H
trigger1 = p2statetype != L

;---------------------------------------------------------------------------
[State -1, AI: Falling Angel]
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
[State -1, AI: Stocking Drop]
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
value = 195 + (random%1)
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
;Sweet healing
[State -1, Sweet healing]
type = ChangeState
value = 3050
triggerall = 0   ;Abstract Reordered: now 2+X with 3 candies (state 7770)
triggerall = var(59) <= 0
triggerall = power >= 3000
triggerall = statetype != A
triggerall = life != 1000
triggerall = ctrl || (stateno=[100,101]) || (((stateno=[200,440]) || (stateno=[1000,1080])) && (MoveContact || var(1)))
trigger1 = command = "Sweet healing"

;---------------------------------------------------------------------------
;Critical Slash
[State -1, Critical Slash]
type = ChangeState
value = 3060
triggerall = var(59) <= 0
triggerall = power >= 3000
triggerall = NumHelper(3062) = 0
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || (((stateno=[200,440]) || (stateno=[1000,1080])) && (MoveContact || var(1)))
trigger1 = command = "Critical Slash"

;---------------------------------------------------------------------------
;Hyper Cutting Barrage
[State -1, Hyper Cutting Barrage]
type = ChangeState
value = 3030
triggerall = var(59) <= 0
triggerall = power >= 2000
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || (((stateno=[200,440]) || (stateno=[1000,1080])) && (MoveContact || var(1)))
trigger1 = command = "Hyper Cutting Barrage"

;---------------------------------------------------------------------------
;Stripping Blender
[State -1, Stripping Blender]
type = ChangeState
value = 3020
triggerall = var(59) <= 0
triggerall = power >= 2000
triggerall = NumHelper(3022) = 0
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || (((stateno=[200,440]) || (stateno=[1000,1080])) && (MoveContact || var(1)))
trigger1 = command = "Stripping Blender"

;---------------------------------------------------------------------------
;Bangin' up
[State -1, Bangin' up]
type = ChangeState
value = 3000
triggerall = var(59) <= 0
triggerall = power >= 1000
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || (((stateno=[200,440]) || (stateno=[1000,1080])) && (MoveContact || var(1)))
trigger1 = command = "Backstabbing Air"

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
trigger3 = (stateno = 1000) && animelemtime(4) > 0
trigger4 = (stateno = 1050) && movecontact
trigger5 = (stateno = 1060) && animelemtime(7) > 0
trigger6 = stateno = 1077
trigger7 = (stateno = 1080) && movecontact
trigger8 = (stateno = 1081) && animelemtime(1) > 0
trigger9 = (stateno = 1090) && animelemtime(1) > 0
var(1) = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
; Thight Blender
[State -1, Thight Blender]
type = ChangeState
value = 1080
triggerall = var(59) <= 0
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || ((stateno=[200,440]) && (MoveContact || var(1)))
trigger1 = command = "Thight Blender"
trigger1 = (var(10):=1)||1
trigger2 = command = "Thight Blender2"
trigger2 = (var(10):=2)||1

;---------------------------------------------------------------------------
; Stripecopter
[State -1, Stripecopter]
type = ChangeState
value = 1070
triggerall = var(59) <= 0
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || ((stateno=[200,440]) && (MoveContact || var(1)))
trigger1 = command = "Stripecopter"
trigger1 = (var(10):=1)||1
trigger2 = command = "Stripecopter2"
trigger2 = (var(10):=2)||1

;---------------------------------------------------------------------------
; Thigh Highs Cutter
;速いカンフー突き手（ゲージレベル１／３）
[State -1, Thigh Highs Cutter]
type = ChangeState
value = 1010
triggerall = var(59) <= 0
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || ((stateno=[200,440]) && (MoveContact || var(1)))
trigger1 = command = "Thigh Highs Cutter"
trigger1 = (var(10):=1)||1
trigger2 = command = "Thigh Highs Cutter2"
trigger2 = (var(10):=2)||1

;---------------------------------------------------------------------------
; Hyper Cutting Barrage
[State -1, Cutting Barrage]
type = ChangeState
value = 1090
triggerall = var(59) <= 0
triggerall = power >= 500
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || (stateno=[200,440]) && MoveContact
trigger1 = command = "Cutting Barrage"

;---------------------------------------------------------------------------
; Surprising Stripes
[State -1, Surprising Stripes]
type = ChangeState
value = 1050
triggerall = var(59) <= 0
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || ((stateno=[200,440]) && (MoveContact || var(1)))
trigger1 = command = "Surprising Stripes"
trigger1 = (var(10):=1)||1
trigger2 = command = "Surprising Stripes2"
trigger2 = (var(10):=2)||1

;---------------------------------------------------------------------------
; Stripe Strike
;カンフー蹴り（弱）
[State -1, Stripe Strike]
type = ChangeState
value = 1060
triggerall = var(59) <= 0
triggerall = statetype = A
triggerall = ctrl || (stateno=[100,101]) || ((stateno=[600,640]) && (MoveContact || var(1)))
trigger1 = command = "Cutting Air"
trigger1 = (var(10):=1)||1
trigger2 = command = "Cutting Air2"
trigger2 = (var(10):=2)||1

;---------------------------------------------------------------------------
; Cutting Air
;カンフー突き手（弱）
[State -1, Cutting Air]
type = ChangeState
value = 1000
triggerall = var(59) <= 0
triggerall = NumHelper(1001) = 0
triggerall = statetype != A
triggerall = ctrl || (stateno=[100,101]) || ((stateno=[200,440]) && (MoveContact || var(1)))
trigger1 = command = "Cutting Air"
trigger1 = (var(10):=1)||1
trigger2 = command = "Cutting Air2"
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
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = A)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
; Face Sitting
;投げ
[State -1, Face Sitting]
type = ChangeState
value = 800
triggerall = var(59) <= 0
triggerall = command = "y"   ;Abstract Reordered: grab on Y
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
;Abstract Reordered normals: A = light, B = medium, C = heavy (6A / 3A = her light kicks)
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
trigger3 = var(44) > 0
trigger3 = ((stateno = [200,240]) || (stateno = [400,440])) && stateno != 230
trigger3 = movecontact
trigger3 = (var(47) & 4) = 0

[State -1, 3A (crouching light kick)]
type = ChangeState
value = 430
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact
trigger3 = var(44) > 0
trigger3 = ((stateno = [200,240]) || (stateno = [400,440])) && stateno != 430
trigger3 = movecontact
trigger3 = (var(47) & 64) = 0

[State -1, 5A Light Punch]
type = ChangeState
value = 200
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = var(44) > 0
trigger2 = ((stateno = [200,240]) || (stateno = [400,440])) && stateno != 200
trigger2 = movecontact
trigger2 = (var(47) & 1) = 0

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
trigger3 = var(44) > 0
trigger3 = ((stateno = [200,240]) || (stateno = [400,440])) && stateno != 210
trigger3 = movecontact
trigger3 = (var(47) & 2) = 0

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
trigger3 = var(44) > 0
trigger3 = ((stateno = [200,240]) || (stateno = [400,440])) && stateno != 240
trigger3 = movecontact
trigger3 = (var(47) & 8) = 0

[State -1, 2A Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = var(44) > 0
trigger2 = ((stateno = [200,240]) || (stateno = [400,440])) && stateno != 400
trigger2 = movecontact
trigger2 = (var(47) & 16) = 0

[State -1, 2B Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = movecontact
trigger3 = var(44) > 0
trigger3 = ((stateno = [200,240]) || (stateno = [400,440])) && stateno != 410
trigger3 = movecontact
trigger3 = (var(47) & 32) = 0

[State -1, 2C Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59) <= 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 410 || stateno = 430
trigger2 = movecontact
trigger3 = var(44) > 0
trigger3 = ((stateno = [200,240]) || (stateno = [400,440])) && stateno != 440
trigger3 = movecontact
trigger3 = (var(47) & 128) = 0

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
trigger3 = var(44) > 0
trigger3 = (stateno = [600,640]) && stateno != 630
trigger3 = movecontact
trigger3 = (var(47) & 1024) = 0

[State -1, j.A Air Light Punch]
type = ChangeState
value = 600
triggerall = var(59) <= 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(44) > 0
trigger2 = (stateno = [600,640]) && stateno != 600
trigger2 = movecontact
trigger2 = (var(47) & 256) = 0

[State -1, j.B Air Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) <= 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger3 = var(44) > 0
trigger3 = (stateno = [600,640]) && stateno != 610
trigger3 = movecontact
trigger3 = (var(47) & 512) = 0

[State -1, j.C Air Strong Kick]
type = ChangeState
value = 640
triggerall = var(59) <= 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630
trigger2 = movecontact
trigger3 = var(44) > 0
trigger3 = (stateno = [600,640]) && stateno != 640
trigger3 = movecontact
trigger3 = (var(47) & 2048) = 0

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
