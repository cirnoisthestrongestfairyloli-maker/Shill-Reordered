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
[command]
name = ""
command = D
time = 15

s = s


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

;-| Special Motions |------------------------------------------------------
[Command]
name = "Grab"
command = ~D,DF,F,a
time = 30

[Command]
name = "Crunch"
command = ~D,DF,F,b
time = 30

[Command]
name = "cromwell call"
command = ~D,DB,B,c
time = 10

[Command]
name = "Bat"
command = ~30$B,$F,a
time = 30

[Command]
name = "One Shot"
command = D,DB,B,z
time = 30

[Command]
name = "baskervile"
command = ~D,DF,F,a+b
time = 30

[Command]
name = "Bullets"
command = ~D,DF,F,y+z
time = 30

[Command]
name = "A colony of bats"
command = ~D,DB,B,a+b
time = 30

[Command]
name = "Cromwell"
command = ~D,D,c
time = 50

[Command]
name = "Hell Hand"
command = ~D,DB,B,x
time = 30

;[Command]
;name = "bloodsucking"
;command = ~D,,,,c
;time = 50




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

;Ai
[Command]
name = "cpu1"
command = U, D, F
time = 1

[Command]
name = "cpu2"
command = U, B, F
time = 1

[Command]
name = "cpu3"
command = U, D, D
time = 1

[Command]
name = "cpu4"
command = F, B, U
time = 1

[Command]
name = "cpu5"
command = U, F, U, B
time = 1

[Command]
name = "cpu6"
command = U, D, B
time = 1

[Command]
name = "cpu7"
command = F, F, B
time = 1

[Command]
name = "cpu8"
command = U, D, U
time = 1

[Command]
name = "cpu9"
command = F, B, B
time = 1

[Command]
name = "cpu10"
command = F, F, B, B
time = 1

[Command]
name = "cpu11"
command = U, U, F
time = 1

[Command]
name = "cpu12"
command = U, B, B
time = 1

[Command]
name = "cpu13"
command = U, B, F, F
time = 1

[Command]
name = "cpu14"
command = U, F, B, U
time = 1

[Command]
name = "cpu15"
command = U, B, F, U
time = 1

[Command]
name = "cpu16"
command = U, B, B, B
time = 1

[Command]
name = "cpu17"
command = U, D, B, F
time = 1

[Command]
name = "cpu18"
command = U, D, B, D
time = 1

[Command]
name = "cpu19"
command = U, D, F, U
time = 1

[Command]
name = "cpu20"
command = U, D, U, B
time = 1

[Command]
name = "cpu21"
command = U, D, F, F
time = 1

[Command]
name = "cpu22"
command = F, F, F, F
time = 1

[Command]
name = "cpu23"
command = U, U, U, D
time = 1

[Command]
name = "cpu24"
command = B, B, B
time = 1

[Command]
name = "cpu25"
command = D, D, D, D
time = 1

[Command]
name = "cpu26"
command = D, D, D
time = 1

[Command]
name = "cpu27"
command = F, F, F
time = 1

[Command]
name = "cpu28"
command = U, U, U
time = 1

[Command]
name = "cpu29"
command = U, U, B, B
time = 1

[Command]
name = "cpu30"
command = D, D, F, F
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

[Command]
name = "Guard Cancel A"
command = ~a
time = 10

[Command]
name = "Guard Cancel B"
command = ~b
time = 10

[Command]
name = "Guard Cancel C"
command = ~c
time = 10

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
name = "hold_c"
command = /c
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
[Statedef -1]

[State -1, AI TRIGGER]
type = Varset
triggerall = RoundState = 2
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"
v = 7
value = 7




;Ai Combo #2
;---------------------------
[State -1, AI Combo B]
type = ChangeState
value = 1401
triggerall = var(0) = 10
triggerall = statetype != A
triggerall = var(7)
triggerall = !Win
trigger1 = ctrl
trigger1 = Random <= 20
;----------------------------------

;Ai Combo #3
;--------------
[State -1, AI Combo C]
type = Changestate
Value = 120
triggerall = var(0) != 10
triggerall = var(7)
Trigger1 = Ctrl
Trigger1 = InGuardDist
Trigger1 = Random = [0,700]






;===========================================================================
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;---------------------------------------------------------------------------
[State -1, baskervile]
type = ChangeState
value = 18
triggerall = var(0) != 10
triggerall = statetype != A
triggerall = power > 1999
triggerall = command = "baskervile"
triggerall = NumHelper(281) = 0
trigger1 = ctrl
trigger2 = stateno = 200 & time > 4
trigger3 = stateno = 210 & time > 7
trigger4 = stateno = 230 
trigger5 = stateno = 157 & time > 5
trigger6 = stateno = 345 & time > 10
trigger7 = stateno = 54 && time > 12
trigger8 = stateno = 55 && time > 15
;---------------------------------------------------------------------------
[State -1, baskervile and hounds]
type = ChangeState
value = 1501
triggerall = var(0) = 10
triggerall = statetype != A
triggerall = power > 2999
triggerall = command = "baskervile"
triggerall = NumHelper(282) = 0
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, One Shot]
type = ChangeState
value = 2570
triggerall = var(0) != 10
triggerall = statetype != A
triggerall = power > 999
triggerall = command = "One Shot"
trigger1 = ctrl
trigger2 = stateno = 200 & time > 4
trigger3 = stateno = 210 & time > 7
trigger4 = stateno = 230 
trigger5 = stateno = 157 & time > 5
trigger6 = stateno = 345 & time > 10
trigger7 = stateno = 54 && time > 12
trigger8 = stateno = 55 && time > 15
;---------------------------------------------------------------------------
[State -1, hellhands]
type = ChangeState
value = 1500
triggerall = statetype != A
triggerall = power > 1999
triggerall = command = "Hell Hand"
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Bullets]
type = ChangeState
value = 1111
triggerall = var(0) != 10
triggerall = statetype != A
triggerall = power > 999
triggerall = command = "Bullets"
trigger1 = ctrl
trigger2 = stateno = 200 & time > 4
trigger3 = stateno = 210 & time > 7
trigger4 = stateno = 230 
trigger5 = stateno = 157 & time > 5
trigger6 = stateno = 345 & time > 10
trigger7 = stateno = 54 && time > 12
trigger8 = stateno = 55 && time > 15
;---------------------------------------------------------------------------
[State -1, search and destroy]
type = ChangeState
value = 1502
triggerall = var(0) = 10
triggerall = statetype != A
triggerall = power > 2999
triggerall = command = "Bullets"
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Grab]
type = ChangeState
value = 800
triggerall = var(0) != 10
triggerall = statetype != A
triggerall = command = "Grab"
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, 42 cromwell-hound]
type = ChangeState
value = 1404
triggerall = var(0) = 10
triggerall = statetype != A
triggerall = command = "Crunch"
trigger1 = ctrl
;--------------------------------------------------------
[State -1, Crunch]
type = ChangeState
value = 345
triggerall = var(0) != 10
triggerall = command = "Crunch"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 & time > 4
trigger3 = stateno = 210 & time > 7
trigger4 = stateno = 230 
;---------------------------------------------------------------------------
[State -1, AI]
type = ChangeState
value = 345
triggerall = var(0) != 10
triggerall = var(7)
triggerall = !Win
triggerall = statetype != A
trigger1 = ctrl
trigger1 = Random <= 30
;---------------------------------------------------------------
[State -1, cromwell call]
type = ChangeState
value = 1401
triggerall = statetype != a
triggerall = command = "cromwell call"
triggerall = NumHelper(882) = 0
trigger1 = ctrl
;-------------------------------------------------------------------
;[State -1, Shark Short]
;type = ChangeState
;value = 234
;triggerall = var(0) != 10
;triggerall = statetype != a
;triggerall = command = "WhipS"
;trigger1 = ctrl
;trigger2 = (stateno = 200) || (stateno = 210)
;trigger3 = (stateno = 230) || (stateno = 240)
;trigger4 = (stateno = 345) || (stateno = 800)
;trigger5 = (stateno = 123) || (stateno = 125)
;-------------------------------------------------
[State -1, bat]
type = ChangeState
value = 157
triggerall = var(0) != 10
triggerall = statetype != A
triggerall = command = "Bat"
trigger1 = ctrl
;----------------------------------------------------------------------------
[State -1, A colony of bats]
type = ChangeState
value = 158
triggerall = var(0) != 10
triggerall = statetype != A
triggerall = power > 999
triggerall = command = "A colony of bats"
trigger1 = ctrl
trigger2 = stateno = 200 & time > 4
trigger3 = stateno = 210 & time > 7
trigger4 = stateno = 230 
trigger5 = stateno = 157 & time > 5
trigger6 = stateno = 345 & time > 10
trigger7 = stateno = 54 && time > 12
trigger8 = stateno = 55 && time > 15
;----------------------------------------------------------------------------
[State -1, cromwell]
type = ChangeState
value = 8800
triggerall = var(0) != 10
triggerall = command = "Cromwell"
triggerall = statetype = S
trigger1 = power > 2999
trigger1 = ctrl
;----------------------------------------------------------------
;----------------------------------------------------------------
[State -1, cromwell attack1]
type = ChangeState
value = 1403
triggerall = var(0) = 10
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = ctrl
;----------------------------------------------------------------
[State -1, cromwell attack2]
type = ChangeState
value = 1405
triggerall = var(0) = 10
triggerall = statetype != A
triggerall = command = "b"
trigger1 = ctrl
;----------------------------------------------------------------
[State -1, cromwell attack3]
type = ChangeState
value = 1402
triggerall = var(0) = 10
triggerall = statetype != A
triggerall = command = "c"
trigger1 = ctrl
;------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand light kick]
type = ChangeState
value = 200
triggerall = var(0) != 10
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Light Kicka
;立ち弱キック
[State -1, Stand strong Kick]
type = ChangeState
value = 210
triggerall = var(0) != 10
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 & time > 2
;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Slash]
type = ChangeState
value = 220
triggerall = var(0) != 10
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 & time > 3
trigger3 = stateno = 210 & time > 5
;---------------------------------------------------------------------------
[State -1, recovery(C)]
type = ChangeState
value = 1406
triggerall = var(0) = 10
triggerall = command = "x"
triggerall = power > 999
trigger1 = statetype != A
trigger1 = ctrl
;----------------------------------------------------------------------------
[State -1, AI]
type = ChangeState
value = 1406
triggerall = var(0) = 10
triggerall = var(7)
triggerall = !Win
triggerall = life <= 300
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Taunt
[State -1, recovery]
type = ChangeState
value = 500
triggerall = var(0) != 10
triggerall = command = "x"
triggerall = power > 1999
trigger1 = statetype != A
trigger1 = ctrl
;----------------------------------------------------------------------------
[State -1, AI]
type = ChangeState
value = 500
triggerall = var(0) != 10
triggerall = var(7)
triggerall = !Win
triggerall = power > 999
triggerall = life <= 300
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Crouching gun shot zacal]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = !Var(41) = 0
trigger1 = statetype = C
trigger1 = ctrl
;trigger2 = stateno = 410 && time > 13
;---------------------------------------------------------------------------
[State -1, Crouching gun shot casle]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = !Var(40) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 420 && time > 12
;---------------------------------------------------------------------------
[State -1, Jump jackal]
type = ChangeState
value = 600
triggerall = var(0) != 10
triggerall = !Var(41) = 0
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && time > 15

;---------------------------------------------------------------------------
[State -1, Jump cassull]
type = ChangeState
value = 610
triggerall = var(0) != 10
triggerall = !Var(40) = 0
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && time > 7

;---------------------------------------------------------------------------
;[State -1, Jump Strong Kick]
;type = ChangeState
;value = 640
;triggerall = command = "c"
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2 = stateno = 630 && time > 5
;---------------------------------------------------------------------------
[State -1, jackal]
type = ChangeState
value = 55
triggerall = var(0) != 10
triggerall = !Var(41) = 0
triggerall = command = "y"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 55 && time > 15
trigger3 = stateno = 200 & time > 4
trigger4 = stateno = 210 & time > 7
trigger5 = stateno = 230 
trigger6 = stateno = 157 & time > 5
trigger7 = stateno = 345 & time > 10
;-----------------------------------------------------------------------
[State -1, casull]
type = ChangeState
value = 54
triggerall = var(0) != 10
triggerall = !Var(40) = 0
triggerall = command = "z"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 54 && time > 12
trigger3 = stateno = 200 & time > 4
trigger4 = stateno = 210 & time > 7
trigger5 = stateno = 230 
trigger6 = stateno = 157 & time > 5
trigger7 = stateno = 345 & time > 10
;---------------------------------------------------------------------------
[State -1, charge casull]
type = ChangeState
value = 56
triggerall = power > 399
triggerall = var(0) != 10
triggerall = Var(40) = 0
triggerall = command = "z"
triggerall = statetype = S
trigger1 = ctrl
;----------------------------------------------------------------------------
[State -1, charge jackal]
type = ChangeState
value = 57
triggerall = power > 399
triggerall = var(0) != 10
triggerall = Var(41) = 0
triggerall = command = "y"
triggerall = statetype = S
trigger1 = ctrl

[State -1, Guard Cancel Counter]
type = ChangeState
value = 1900
;triggerall = statetype != A
triggerall = power >= 500
triggerall = statetype != A
triggerall = stateno=[150,155]
trigger1 = command="Guard Cancel A"
trigger1 = var(10) := 1

[State -1, Guard Cancel Counter]
type = ChangeState
value = 1901
;triggerall = statetype != A
triggerall = power >= 500
triggerall = statetype != A
triggerall = stateno=[150,155]
trigger1 = command="Guard Cancel B"
trigger1 = var(10) := 1

[State -1, Guard Cancel Counter]
type = ChangeState
value = 1902
;triggerall = statetype != A
triggerall = power >= 500
triggerall = statetype != A
triggerall = stateno=[150,155]
trigger1 = command="Guard Cancel C"
trigger1 = var(10) := 1