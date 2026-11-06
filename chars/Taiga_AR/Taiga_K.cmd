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
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
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
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
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
; 

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
name = "Curbstomp"
command =~D,DF,F,D,DF,F,x
time = 20

[Command]
name = "Curbstomp"
command =~D,DF,F,D,DF,F,~x
time = 20

[Command]
name = "Curbstomp"
command =~D,DF,F,D,DF,F,y
time = 20

[Command]
name = "Curbstomp"
command =~D,DF,F,D,DF,F,~y
time = 20

[Command]
name = "Curbstomp"
command =~D,DF,F,D,DF,F,z
time = 20

[Command]
name = "Curbstomp"
command =~D,DF,F,D,DF,F,~z
time = 20

[Command]
name = "TD Combo"
command =~D,DB,B,D,DB,B,x
time = 20

[Command]
name = "TD Combo"
command =~D,DB,B,D,DB,B,~x
time = 20

[Command]
name = "TD Combo"
command =~D,DB,B,D,DB,B,y
time = 20

[Command]
name = "TD Combo"
command =~D,DB,B,D,DB,B,~y
time = 20

[Command]
name = "TD Combo"
command =~D,DB,B,D,DB,B,z
time = 20

[Command]
name = "TD Combo"
command =~D,DB,B,D,DB,B,~z
time = 20

[Command]
name = "Demon Thrust EX"
command =~D,DF,F,x+y
time = 18

[Command]
name = "Demon Thrust EX"
command =~D,DF,F,x+z
time = 18

[Command]
name = "Demon Thrust EX"
command =~D,DF,F,y+z
time = 18

[Command]
name = "Tiger Upper EX"
command =~F,D,DF,x+y
Time = 18

[Command]
name = "Tiger Upper EX"
command =~F,D,DF,x+z
Time = 18

[Command]
name = "Tiger Upper EX"
command =~F,D,DF,y+z
Time = 18

[Command]
name = "Sled EX"
command =~D,DB,B,x+y
time = 18

[Command]
name = "Sled EX"
command =~D,DB,B,x+z
time = 18

[Command]
name = "Sled EX"
command =~D,DB,B,y+z
time = 18

[Command]
name = "Tiger Eye"
command = x+y+z
time = 15

;-| Special Motions |------------------------------------------------------

[Command]
name = "Demon Thrust X"
command =~D,DF,F,x
time = 16

[Command]
name = "Demon Thrust X"
command =~D,DF,F,~x
time = 16

[Command]
name = "Demon Thrust Y"
command =~D,DF,F,y
time = 16

[Command]
name = "Demon Thrust Y"
command =~D,DF,F,~y
time = 16

[Command]
name = "Demon Thrust Z"
command =~D,DF,F,z
time = 16

[Command]
name = "Demon Thrust Z"
command =~D,DF,F,~z
time = 16

[Command]
name = "Tiger Upper"
command =~F,D,DF,x
Time = 16

[Command]
name = "Tiger Upper"
command =~F,D,DF,~x
Time = 16

[Command]
name = "Tiger Upper"
command =~F,D,DF,y
Time = 16

[Command]
name = "Tiger Upper"
command =~F,D,DF,~y
Time = 16

[Command]
name = "Tiger Upper"
command =~F,D,DF,z
Time = 16

[Command]
name = "Tiger Upper"
command =~F,D,DF,~z
Time = 16

[Command]
name = "Sled Ram X"
command =~D,DB,B,x
time = 16

[Command]
name = "Sled Ram X"
command =~D,DB,B,~x
time = 16

[Command]
name = "Sled Ram Y"
command =~D,DB,B,y
time = 16

[Command]
name = "Sled Ram Y"
command =~D,DB,B,~y
time = 16

[Command]
name = "Sled Ram Z"
command =~D,DB,B,z
time = 16

[Command]
name = "Sled Ram Z"
command =~D,DB,B,~z
time = 16

[Command]
name = "Ryuji"
command =~D,D,x
Time = 16

[Command]
name = "Ryuji"
command =~D,D,~x
Time = 16

[Command]
name = "Ryuji"
command =~D,D,y
Time = 16

[Command]
name = "Ryuji"
command =~D,D,~y
Time = 16

[Command]
name = "Ryuji"
command =~D,D,z
Time = 16

[Command]
name = "Ryuji"
command =~D,D,~z
Time = 16

[Command]
name = "Guard_Counter"
command = x+y
time = 1

[Command]
name = "Guard_Counter"
command = x+z
time = 1

[Command]
name = "Guard_Counter"
command = y+z
time = 1

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
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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

[command]
name="rls_dir"
command=~U
time=1

[command]
name="rls_dir"
command=~U
time=1

[command]
name="rls_dir"
command=~UF
time=1

[command]
name="rls_dir"
command=~F
time=1

[command]
name="rls_dir"
command=~DF
time=1

[command]
name="rls_dir"
command=~D
time=1

[command]
name="rls_dir"
command=~DB
time=1

[command]
name="rls_dir"
command=~B
time=1

[command]
name="rls_dir"
command=~UB
time=1

[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
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

[State -1, Curbstomp]
type = Changestate
value = 4000
triggerall = command = "Curbstomp"
triggerall = statetype != A
triggerall = power >= 3000
triggerall = Var(46) = 0
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = StateNo = 810 && MoveContact
trigger5 = StateNo = 1232
trigger5 = AnimElemTime(3) > 0

[State -1, AP Curbstomp]
type = Changestate
value = 4000
triggerall = command = "Curbstomp"
triggerall = statetype != A
triggerall = Var(45) >= 350
triggerall = Var(46) = 1
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = StateNo = 810 && MoveContact
trigger5 = StateNo = 1232
trigger5 = AnimElemTime(3) > 0

[State -1, TD Combo]
type = Changestate
value = 4100
triggerall = command = "TD Combo"
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = var(24)
trigger5 = StateNo = 810 && MoveContact
trigger6 = StateNo = 1232
trigger6 = AnimElemTime(3) > 0

[State -1, Tiger Eye]
type = ChangeState
value = 3000
triggerall = Var(47) >= 3
triggerall = Var(49) <= 0
triggerall = StateType != A
triggerall = command = "Tiger Eye"
triggerall = MoveType != H
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)

[State -1, Tiger Upper EX]
type = Changestate
value = 2100
triggerall = command = "Tiger Upper EX"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = Var(46) = 0
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = StateNo = 810 && MoveContact
trigger5 = StateNo = 5120 && time = [4,9]
trigger6 = StateNo = 1232
trigger6 = AnimElemTime(3) > 0

[State -1, AP Tiger Upper EX]
type = Changestate
value = 2100
triggerall = command = "Tiger Upper EX"
triggerall = statetype != A
triggerall = Var(45) >= 150
triggerall = Var(46) = 1
triggerall = Var(49) <= 0
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = StateNo = 810 && MoveContact
trigger5 = StateNo = 5120 && time = [4,9]
trigger6 = StateNo = 1232
trigger6 = AnimElemTime(3) > 0

[State -1, AP Tiger Upper EX 2]
type = Changestate
value = 2100
triggerall = command = "Tiger Upper EX"
triggerall = statetype != A
triggerall = Var(45) >= 100
triggerall = Var(46) = 1
triggerall = Var(49) > 0
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = StateNo = 810 && MoveContact
trigger5 = StateNo = 5120 && time = [4,9]
trigger6 = StateNo = 1232
trigger6 = AnimElemTime(3) > 0

[State -1, Demon Thrust EX]
type = Changestate
value = 2000
triggerall = command = "Demon Thrust EX"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = Var(46) = 0
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = Var(23)
trigger5 = StateNo = 810 && MoveContact
trigger6 = StateNo = 1232
trigger6 = AnimElemTime(3) > 0

[State -1, AP Demon Thrust EX]
type = Changestate
value = 2010
triggerall = command = "Demon Thrust EX"
triggerall = statetype != A
triggerall = Var(45) >= 150
triggerall = Var(46) = 1
triggerall = Var(49) <= 0
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = Var(23)
trigger5 = StateNo = 810 && MoveContact
trigger6 = StateNo = 1232
trigger6 = AnimElemTime(3) > 0

[State -1, AP Demon Thrust EX 2]
type = Changestate
value = 2010
triggerall = command = "Demon Thrust EX"
triggerall = statetype != A
triggerall = Var(45) >= 100
triggerall = Var(46) = 1
triggerall = Var(49) > 0
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = Var(23)
trigger5 = StateNo = 810 && MoveContact
trigger6 = StateNo = 1232
trigger6 = AnimElemTime(3) > 0

[State -1, Sled EX]
type = Changestate
value = 2200
triggerall = command = "Sled EX"
triggerall = power >= 1000
triggerall = Var(46) = 0
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = Var(23)
trigger5 = StateNo = 810 && MoveContact
trigger6 = StateNo = 1232
trigger6 = AnimElemTime(3) > 0

[State -1, AP Sled EX]
type = Changestate
value = 2200
triggerall = command = "Sled EX"
triggerall = Var(45) >= 150
triggerall = Var(46) = 1
triggerall = Var(49) <= 0
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = Var(23)
trigger5 = StateNo = 810 && MoveContact
trigger6 = StateNo = 1232
trigger6 = AnimElemTime(3) > 0

[State -1, AP Sled EX 2]
type = Changestate
value = 2200
triggerall = command = "Sled EX"
triggerall = Var(45) >= 100
triggerall = Var(46) = 1
triggerall = Var(49) > 0
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = Var(23)
trigger5 = StateNo = 810 && MoveContact
trigger6 = StateNo = 1232
trigger6 = AnimElemTime(3) > 0

[State -1, Max Mode]
type = ChangeState
value = 6000
triggerall = var(45) >= 100
triggerall = Var(46) != 1
triggerall = StateType != A
triggerall = command = "a"
triggerall = MoveType != H
triggerall = !Numhelper(6003)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Max Mode Off]
type = ChangeState
value = 6005
triggerall = Var(46) = 1
triggerall = StateType != A
triggerall = command = "a"
triggerall = MoveType != H
trigger1 = ctrl || (StateNo = [100,101])

;===========================================================================
;---------------------------------------------------------------------------

[State -1, Tiger Upper]
type = ChangeState
value = 1100
triggerall = Statetype != A
triggerall = command = "Tiger Upper"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = Var(23)
trigger4 = StateNo = 5120 && time = [4,9]

[State -1, Demon Thrust Z]
type = ChangeState
value = 1000
triggerall = Statetype != A
triggerall = command = "Demon Thrust Z"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = Var(23)

[State -1, Demon Thrust X]
type = ChangeState
value = 1010
triggerall = Statetype != A
triggerall = command = "Demon Thrust X"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = Var(23)

[State -1, Demon Thrust Y]
type = ChangeState
value = 1020
triggerall = Statetype != A
triggerall = command = "Demon Thrust Y"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = Var(23)

[State -1, Sled Ram Light]
type = ChangeState
value = 1210
triggerall = Statetype != A
triggerall = command = "Sled Ram X"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = Var(23)

[State -1, Sled Ram Medium]
type = ChangeState
value = 1220
triggerall = Statetype != A
triggerall = command = "Sled Ram Y"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = Var(23)

[State -1, Sled Ram Heavy]
type = ChangeState
value = 1200
triggerall = Statetype != A
triggerall = command = "Sled Ram Z"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = Var(23)

[State -1, Air Sled Ram]
type = ChangeState
value = 1230
triggerall = Statetype = A
triggerall = command = "Sled Ram X" || command = "Sled Ram Y" || command = "Sled Ram Z"
trigger1 = ctrl
trigger2 = var(20)

[State -1, Ryuji]
type = ChangeState
value = 1300
triggerall = Statetype != A
triggerall = command = "Ryuji"
triggerall = !(Numhelper(1301))
triggerall = Var(48) >= 360
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = Var(23)

[State -1, Guard Counter]
type = ChangeState
value = 950
triggerall = Var(46) = 0
triggerall = StateType != A
triggerall = power >= 1000
triggerall = Command = "Guard_Counter" && Command != "holddown" && Command = "holdfwd"
trigger1 = Stateno = 150 || Stateno = 152

[State -1, Guard Counter]
type = ChangeState
value = 950
triggerall = Var(46) = 0
triggerall = StateType != A
triggerall = power >= 1000
triggerall = Command = "Guard_Counter" && Command != "holddown" && Command = "holdback"
trigger1 = Stateno = 150 || Stateno = 152

[State -1, AP Guard Counter]
type = ChangeState
value = 950
triggerall = Var(46) = 1
triggerall = StateType != A
triggerall = Var(45) >= 100
triggerall = Command = "Guard_Counter" && Command != "holddown" && Command = "holdfwd"
trigger1 = Stateno = 150 || Stateno = 152

[State -1, AP Guard Counter]
type = ChangeState
value = 950
triggerall = Var(46) = 1
triggerall = StateType != A
triggerall = Var(45) >= 100
triggerall = Command = "Guard_Counter" && Command != "holddown" && Command = "holdback"
trigger1 = Stateno = 150 || Stateno = 152

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (stateno = 210) && movecontact
trigger3 = (stateno = 410) && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (stateno = [210,220]) && movecontact
trigger3 = (stateno = 410) && movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = Stateno = 600 && movecontact

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = Stateno = 610 && movecontact

;---------------------------------------------------------------------------

[state jump cancel]
type=changestate
value=40
trigger1=command="holdup"
trigger1=statetype = C
trigger1=stateno = [400,420]
trigger1=movecontact
