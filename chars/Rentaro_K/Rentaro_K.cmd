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
name = "Unlimited Burst"
command =~D,DF,F,D,DF,F,x
time = 20

[Command]
name = "Unlimited Burst"
command =~D,DF,F,D,DF,F,~x
time = 20

[Command]
name = "Unlimited Burst"
command =~D,DF,F,D,DF,F,y
time = 20

[Command]
name = "Unlimited Burst"
command =~D,DF,F,D,DF,F,~y
time = 20

[Command]
name = "Unlimited Burst"
command =~D,DF,F,D,DF,F,z
time = 20

[Command]
name = "Unlimited Burst"
command =~D,DF,F,D,DF,F,~z
time = 20

[Command]
name = "Final Strike"
command =~D,DB,B,D,DB,B,x
time = 20

[Command]
name = "Final Strike"
command =~D,DB,B,D,DB,B,~x
time = 20

[Command]
name = "Final Strike"
command =~D,DB,B,D,DB,B,y
time = 20

[Command]
name = "Final Strike"
command =~D,DB,B,D,DB,B,~y
time = 20

[Command]
name = "Final Strike"
command =~D,DB,B,D,DB,B,z
time = 20

[Command]
name = "Final Strike"
command =~D,DB,B,D,DB,B,~z
time = 20

[Command]
name = "Gun Fire EX"
command =~D,DF,F,x+y
time = 18

[Command]
name = "Gun Fire EX"
command =~D,DF,F,x+z
time = 18

[Command]
name = "Gun Fire EX"
command =~D,DF,F,y+z
time = 18

[Command]
name = "Unebiko EX"
command =~F,D,DF,x+y
Time = 18

[Command]
name = "Uneboko EX"
command =~F,D,DF,x+z
Time = 18

[Command]
name = "Unebiko EX"
command =~F,D,DF,y+z
Time = 18

[Command]
name = "Shoukahanameishi EX"
command =~D,DB,B,x+y
time = 18

[Command]
name = "Shoukahanameishi EX"
command =~D,DB,B,x+z
time = 18

[Command]
name = "Shoukahanameishi EX"
command =~D,DB,B,y+z
time = 18

[Command]
name = "Terminal Horizon"
command = x+y+z
time = 15

;-| Special Motions |------------------------------------------------------

[Command]
name = "Gun Fire X"
command =~D,DF,F,x
time = 16

[Command]
name = "Gun Fire X"
command =~D,DF,F,~x
time = 16

[Command]
name = "Gun Fire Y"
command =~D,DF,F,y
time = 16

[Command]
name = "Gun Fire Y"
command =~D,DF,F,~y
time = 16

[Command]
name = "Gun Fire Z"
command =~D,DF,F,z
time = 16

[Command]
name = "Gun Fire Z"
command =~D,DF,F,~z
time = 16

[Command]
name = "Unebiko"
command =~F,D,DF,x
Time = 16

[Command]
name = "Unebiko"
command =~F,D,DF,~x
Time = 16

[Command]
name = "Unebiko"
command =~F,D,DF,y
Time = 16

[Command]
name = "Unebiko"
command =~F,D,DF,~y
Time = 16

[Command]
name = "Unebiko"
command =~F,D,DF,z
Time = 16

[Command]
name = "Unebiko"
command =~F,D,DF,~z
Time = 16

[Command]
name = "Kasen"
command =~D,DB,B,x
time = 16

[Command]
name = "Kasen"
command =~D,DB,B,~x
time = 16

[Command]
name = "Rouchou"
command =~D,DB,B,y
time = 16

[Command]
name = "Rouchou"
command =~D,DB,B,~y
time = 16

[Command]
name = "Kabuto"
command =~D,DB,B,z
time = 16

[Command]
name = "Kabuto"
command =~D,DB,B,~z
time = 16

[Command]
name = "Enju"
command =~D,D,x
Time = 16

[Command]
name = "Enju"
command =~D,D,~x
Time = 16

[Command]
name = "Enju"
command =~D,D,y
Time = 16

[Command]
name = "Enju"
command =~D,D,~y
Time = 16

[Command]
name = "Enju"
command =~D,D,z
Time = 16

[Command]
name = "Enju"
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

[State -1, Unlimited Burst]
type = Changestate
value = 4000
triggerall = command = "Unlimited Burst"
triggerall = statetype != A
triggerall = power >= 3000
triggerall = Var(46) = 0
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = StateNo = 810 && MoveContact
trigger5 = StateNo = [1000,1020]
trigger5 = AnimElemTime(5) > 0

[State -1, AP Unlimited Burst]
type = Changestate
value = 4000
triggerall = command = "Unlimited Burst"
triggerall = statetype != A
triggerall = Var(45) >= 350
triggerall = Var(46) = 1
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = StateNo = 810 && MoveContact
trigger5 = StateNo = [1000,1020]
trigger5 = AnimElemTime(5) > 0

[State -1, Final Strike]
type = Changestate
value = 4100
triggerall = command = "Final Strike"
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = StateNo = 810 && MoveContact
trigger5 = StateNo = [1000,1020]
trigger5 = AnimElemTime(5) > 0

[State -1, Terminal Horizon]
type = ChangeState
value = 3000
triggerall = Var(47) >= 3
triggerall = Var(49) <= 0
triggerall = StateType != A
triggerall = command = "Terminal Horizon"
triggerall = StateNo != [2000,2999]
triggerall = StateNo != [4000,4199]
triggerall = MoveType != H
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (Stateno = [200,499]) && (movecontact || movereversed)
trigger3 = (Stateno = [1000,1999]) && (movecontact || movereversed)
trigger4 = (Stateno = [200,499])
trigger5 = (Stateno = [1000,1999])

[State -1, Unebiko EX]
type = Changestate
value = 2100
triggerall = command = "Unebiko EX"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = Var(46) = 0
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = StateNo = 810 && MoveContact
trigger5 = StateNo = 5120 && time = [4,9]
trigger6 = StateNo = [1000,1020]
trigger6 = AnimElemTime(5) > 0

[State -1, AP Unebiko EX]
type = Changestate
value = 2100
triggerall = command = "Unebiko EX"
triggerall = statetype != A
triggerall = Var(45) >= 150
triggerall = Var(46) = 1
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = StateNo = 810 && MoveContact
trigger5 = StateNo = 5120 && time = [4,9]
trigger6 = StateNo = [1000,1020]
trigger6 = AnimElemTime(5) > 0

[State -1, Kasen EX]
type = Changestate
value = 2200
triggerall = command = "Shoukahanameishi EX"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = Var(46) = 0
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = StateNo = 810 && MoveContact
trigger5 = StateNo = [1000,1020]
trigger5 = AnimElemTime(5) > 0

[State -1, AP Kasen EX]
type = Changestate
value = 2200
triggerall = command = "Shoukahanameishi EX"
triggerall = statetype != A
triggerall = Var(45) >= 150
triggerall = Var(46) = 1
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = StateNo = 810 && MoveContact
trigger5 = StateNo = [1000,1020]
trigger5 = AnimElemTime(5) > 0

[State -1, Shoukahanameishi EX]
type = Changestate
value = 2300
triggerall = command = "Shoukahanameishi EX"
triggerall = statetype = A
triggerall = power >= 1000
triggerall = Var(46) = 0
trigger1 = ctrl
trigger2 = var(20)
trigger3 = var(21)
trigger4 = StateNo = 1030
trigger4 = AnimElemTime(5) > 0

[State -1, AP Shoukahanamesihi EX]
type = Changestate
value = 2300
triggerall = command = "Shoukahanameishi EX"
triggerall = statetype = A
triggerall = Var(45) >= 150
triggerall = Var(46) = 1
trigger1 = ctrl
trigger2 = var(20)
trigger3 = var(21)
trigger4 = StateNo = 1030
trigger4 = AnimElemTime(5) > 0

[State -1, Gun Fire EX]
type = Changestate
value = 2000
triggerall = command = "Gun Fire EX"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = Var(46) = 0
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = StateNo = 810 && MoveContact
trigger5 = StateNo = [1000,1020]
trigger5 = AnimElemTime(5) > 0

[State -1, AP Gun Fire EX]
type = Changestate
value = 2000
triggerall = command = "Gun Fire EX"
triggerall = statetype != A
triggerall = Var(45) >= 150
triggerall = Var(46) = 1
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = StateNo = 810 && MoveContact
trigger5 = StateNo = [1000,1020]
trigger5 = AnimElemTime(5) > 0

[State -1, Air Gun Fire EX]
type = Changestate
value = 2010
triggerall = command = "Gun Fire EX"
triggerall = statetype = A
triggerall = power >= 1000
triggerall = Var(46) = 0
trigger1 = ctrl
trigger2 = var(20)
trigger3 = var(21)
trigger4 = StateNo = 1030
trigger4 = AnimElemTime(5) > 0

[State -1, Air AP Gun Fire EX]
type = Changestate
value = 2010
triggerall = command = "Gun Fire EX"
triggerall = statetype = A
triggerall = Var(45) >= 150
triggerall = Var(46) = 1
trigger1 = ctrl
trigger2 = var(20)
trigger3 = var(21)
trigger4 = StateNo = 1030
trigger4 = AnimElemTime(5) > 0

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

[State -1, Shoukahanameishi]
type = ChangeState
value = 1300
triggerall = Statetype = A
triggerall = command = "Kasen" || command = "Rouchou" || command = "Kabuto"
trigger1 = ctrl
trigger2 = var(20)

[State -1, Unebiko]
type = ChangeState
value = 1100
triggerall = Statetype != A
triggerall = command = "Unebiko"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = StateNo = 5120 && time = [4,9]

[State -1,  Gun Fire X]
type = ChangeState
value = 1000
triggerall = Statetype != A
triggerall = command = "Gun Fire X"
triggerall = !(NumHelper(1001) || NumHelper(1002))
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1,  Gun Fire Y]
type = ChangeState
value = 1010
triggerall = Statetype != A
triggerall = command = "Gun Fire Y"
triggerall = !(NumHelper(1011) || NumHelper(1012))
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1,  Gun Fire Z]
type = ChangeState
value = 1020
triggerall = Statetype != A
triggerall = command = "Gun Fire Z"
triggerall = !(NumHelper(1021) || NumHelper(1022))
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1, Air Gun Fire]
type = ChangeState
value = 1030
triggerall = Statetype = A
triggerall = command = "Gun Fire X" || command = "Gun Fire Y" || command = "Gun Fire Z"
triggerall = !(NumHelper(1031) || NumHelper(1032))
trigger1 = ctrl
trigger2 = var(20)

[State -1, Kasen]
type = ChangeState
value = 1200
triggerall = Statetype != A
triggerall = command = "Kasen"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1, Uki Rouchou]
type = ChangeState
value = 1210
triggerall = Statetype != A
triggerall = command = "Rouchou"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1, Rokuro Kabuto]
type = ChangeState
value = 1220
triggerall = Statetype != A
triggerall = command = "Kabuto"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1, Enju High Kick]
type = ChangeState
value = 1400
triggerall = Var(46) = 0
triggerall = Statetype != A
triggerall = command = "Enju"
triggerall = !(Numhelper(1401) || NumHelper(1411))
triggerall = Var(48) >= 420
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1, Enju Dive Kick]
type = ChangeState
value = 1410
triggerall = Var(46) = 1
triggerall = Statetype != A
triggerall = command = "Enju"
triggerall = !(Numhelper(1401) || NumHelper(1411))
triggerall = Var(48) >= 420
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

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

[State -1, Stand Strong Punch]
type = ChangeState
value = 225
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = 220) && Movecontact
trigger3 = StateNo = 220 && (AnimElemTime(4) > 0)

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
