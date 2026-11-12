;-| Button Remapping |-----------------------------------------------------
[Remap]
x = a
y = b
z = c
a = x
b = y
c = z
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

[Command]
name = "QCB_ab"
command = ~D, DB, B, D, DB, B, c

[Command]
name = "QCF_ab"
command = ~D, DF, F, D, DF, F, c

[Command]
name = "DDD_ab"
command =  ~D, DF, F, D, DF, F, x

[Command]
name = "DDD_ab"
command = D, DF, F, D, DF, F, x

[Command]
name = "QCB_ab"
command = ~D, DB, B, D, DB, B, c

[Command]
name = "QCF_ab"
command = ~D, DF, F, D, DF, F, c

[Command]
name = "DDD_ab"
command = ~D, DF, F, D, DF, F, x

[Command]
name = "DDD_ab"
command = D, DF, F, D, DF, F, x

[Command]
name = "QCB_ab"
command = ~D, DB, B, D, DB, B, c

[Command]
name = "QCF_ab"
command = ~D, DF, F, D, DF, F, c

[Command]
name = "DDD_ab"
command = ~D, DF, F, D, DF, F, x

[Command]
name = "DDD_ab"
command = D, DF, F, D, DF, F, x

;-| Special Motions |------------------------------------------------------

[Command]
name = "DP_a"
command = ~F, D, DF, a

[Command]
name = "DP_b"
command = ~F, D, DF, b

[Command]
name = "DP_c"
command = ~F, D, DF, c

[Command]
name = "DD_a"
command = ~D, D, a

[Command]
name = "DD_a"
command = D, D, a

[Command]
name = "DD_b"
command = ~D, D, b

[Command]
name = "DD_b"
command = D, D, b

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

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
name = "FF"     ;Required (do not remove)
command = /$F,a+b
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = /$B,a+b
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /z
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
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1


[Command]
name = "holdc"
command = /c
time = 1


[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "b+c"
command = x
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "a+b"
command = a+b
time = 1


[Command]
name = "y+z"
command = 
time = 1

;-| Directional |--------------------------------------------------------------
[Command]
name = "F";Required (do not remove)
command = /F
time = 1

[Command]
name = "UF";Required (do not remove)
command = /UF
time = 1

[Command]
name = "U" ;Required (do not remove)
command = /U
time = 1

[Command]
name = "UB";Required (do not remove)
command = /UB
time = 1

[Command]
name = "B";Required (do not remove)
command = /B
time = 1

[Command]
name = "DB";Required (do not remove)
command = /DB
time = 1

[Command]
name = "D";Required (do not remove)
command = /D
time = 1

[Command]
name = "DF";Required (do not remove)
command = /DF
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
name = "highjump"
command = >~D, U
time = 8

[Command]
name = "highjump"
command = >~D, UF
time = 8

[Command]
name = "holdb+c"
command = x
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = null;ChangeState          ;Don't change this
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

;===========================================================================
;===========================================================================
[State -1, Raging Roar]
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DDD_ab"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2life <= (enemynear,lifemax)*.25
triggerall = var(21) = 0
triggerall = fvar(35) <= 0
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = stateno = 620
trigger5 = numhelper(7771)
trigger6 = (stateno = 830) && movecontact
;---------------------------------------------------------------------------
[State -1, Pale Bringer]
type = ChangeState
value = 3050
Triggerall = numhelper(9884)!=0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger1 = (stateno = 3000) && movecontact
;---------------------------------------------------------------------------
[State -1, Tempest Blade]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = stateno = 5120 && time >= 3
trigger6 = stateno = 620
trigger6 = numhelper(7771)
trigger7 = (stateno = 830) && movecontact


[State -1, Power Raise Overdrive]
type = ChangeState
value = 3080
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(44)<3
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = stateno = 5120 && time >= 3
trigger6 = stateno = 620
trigger6 = numhelper(7771)
trigger7 = (stateno = 830) && movecontact
;---------------------------------------------------------------------------
[State -1, Exceed Accel]
type = ChangeState
value = 4000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y+z" || command = "holdy" && command = "holdz"
triggerall = fvar(19) > 0
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || stateno = 100
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = stateno = 5120 && time >= 3
trigger6 = stateno = 620
trigger6 = numhelper(7771)
trigger7 = (stateno = 830) && movecontact



;---------------------------------------------------------------------------
[State -1, Rising Sword A]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_a"
triggerall = statetype != A
trigger1 = ctrl
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = stateno = 5120 && time >= 3
trigger6 = stateno = 620
trigger6 = numhelper(7771)
;---------------------------------------------------------------------------
[State -1, Rising Sword B]
type = ChangeState
value = 1101
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = stateno = 5120 && time >= 3
trigger6 = stateno = 620
trigger6 = numhelper(7771)
;---------------------------------------------------------------------------
[State -1, EX Rising Sword]
type = ChangeState
value = 1150
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = stateno = 5120 && time >= 3
trigger6 = stateno = 620
trigger6 = numhelper(7771)
;---------------------------------------------------------------------------
[State -1, Air Rising Sword A]
type = ChangeState
value = 1102
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [400,610]) && movecontact
trigger3 = stateno = 620
trigger3 = animelemtime(11) >= 0
trigger3 = numhelper(7771)

;---------------------------------------------------------------------------
[State -1, Air Rising Sword B]
type = ChangeState
value = 1103
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 620
trigger3 = animelemtime(11) >= 0
trigger3 = numhelper(7771)

;---------------------------------------------------------------------------
[State -1, Air EX Rising Sword]
type = ChangeState
value = 1151
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_c"
triggerall = statetype = A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 620
trigger3 = animelemtime(11) >= 0
trigger3 = numhelper(7771)

;---------------------------------------------------------------------------
[State -1, Overdrive Surge A]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact

;---------------------------------------------------------------------------
[State -1, Overdrive Surge B]
type = ChangeState
value = 1201
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = stateno = 1200 && movecontact
;---------------------------------------------------------------------------
[State -1, EX Overdrive Surge]
type = ChangeState
value = 1202
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
;---------------------------------------------------------------------------
[State -1, Black Orbiter A]
type = ChangeState
value = 1000
triggerall = var(16) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact

;---------------------------------------------------------------------------
[State -1, Black Orbiter B]
type = ChangeState
value = 1001
triggerall = var(16) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact

;---------------------------------------------------------------------------
[State -1, Black Orbiter EX]
type = ChangeState
value = 1002
triggerall = var(16) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact


;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = !AIlevel
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Back Dash]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = !AIlevel
trigger1 = command = "BB"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 75
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "highjump"
triggerall = fvar(38) < 8
trigger1 = Stateno = 100
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (stateno = [210,211]) && movecontact
trigger4 = (Stateno = 410) && Movecontact

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
trigger1 = Stateno = 100
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (stateno = [210,211]) && movecontact
trigger4 = (Stateno = 410) && Movecontact

;---------------------------------------------------------------------------
[State -1, Air Jump]
type = ChangeState
value = 45
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(11) = 1
triggerall = var(15) < 6
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [600,611]) && movecontact && prevstateno != 220
trigger4 = stateno = 202 && movecontact
trigger5 = stateno = 1005
trigger5 = movecontact && animelemtime(6) > 3
trigger6 = stateno = 620
trigger6 = animelemtime(11) >= 0

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = 102
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "FF"
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [600,611]) && movecontact
trigger4 = stateno = 620
trigger4 = animelemtime(11) >= 0

;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = ChangeState
value = 103
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "BB"
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [600,611]) && movecontact
trigger4 = stateno = 620
trigger4 = animelemtime(11) >= 0

;---------------------------------------------------------------------------
[State -1, Ultra Burst]
type = ChangeState
value = 8050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3

;---------------------------------------------------------------------------
[State -1, Ultra Guard Cancel]
type = ChangeState
value = 8060
triggerall = !ishelper
triggerall = !AIlevel
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
trigger1 = stateno = [120,155]

;---------------------------------------------------------------------------
[State -1, Grab]
type = ChangeState
value = 800
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype != A
triggerall = ctrl
trigger1 = stateno != 100

[State -1, Running Grab]
type = ChangeState
value = 820
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype != A
trigger1 = stateno = 100

[State -1, Air Grab]
type = ChangeState
value = 840
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------
[State -1, 4A]
type = ChangeState
value = 300
triggerall = !ishelper
triggerall = !ailevel
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = 300) && Movecontact
trigger2 = var(30) > 0
;---------------------------------------------------------------------------
[State -1, 5A]
type = changestate
value = 200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [400,401]) && Movecontact
trigger3 = (Stateno = [300,301]) && Movecontact

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 201
trigger1 = Movecontact

;---------------------------------------------------------------------------

[State -1, Power Raise]
type = ChangeState
value = 1500
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b+c"

triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 211
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(31) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [400,401]) && Movecontact
trigger3 = (Stateno = [300,301]) && Movecontact

;---------------------------------------------------------------------------
[State -1, 5BB]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 210
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5BBB]
type = ChangeState
value = 202
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 210
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5C]
type = ChangeState
value = 212
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = var(31) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [400,401]) && Movecontact
trigger3 = (Stateno = [300,301]) && Movecontact

;---------------------------------------------------------------------------
[State -1, 4C]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = var(31) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,202]) && Movecontact

;---------------------------------------------------------------------------
[State -1, 66A]
type = ChangeState
value = 230
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = Stateno = 100

;---------------------------------------------------------------------------
[State -1, 66B]
type = ChangeState
value = 240
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = Stateno = 100

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
[State -1, 2A]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
;--------------------------------------------------------------------------
[State -1, 2A]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = stateno = 400
triggerall = var(18) < 3
triggerall = var(32) = 0
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,212]) && movecontact
trigger5 = (stateno = 410) && movecontact
trigger6 = Stateno = 100
;---------------------------------------------------------------------------
[State -1, jA]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = var(35) = 1
triggerall = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
[State -1, jAA]
type = ChangeState
value = 601
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = stateno = 600
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, jB]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = var(36) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,601]
trigger2 = movecontact
trigger3 = stateno = 202
trigger3 = movecontact
;---------------------------------------------------------------------------
[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,601]
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = animelemtime(11) >= 0
trigger5 = stateno = 202
trigger5 = movecontact
;---------------------------------------------------------------------------
[State -1, backdash alternate command]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command = "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 5120 && time >= 3

;---------------------------------------------------------------------------
[State -1, Dodge]
type = ChangeState
value = 160
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Forward Dodge]
type = ChangeState
value = 161
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------



;---------------------------------------------------------------------------


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------

;===========================================================================
;AI-------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;Guarding
;===========================================================================
;---------------------------------------------------------------------------

[State -1, Forward Dodge]
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
type = ChangeState
value = ifelse(p2bodydist X <= 65 && enemynear,movetype!=H && p2bodydist Y >= -170,1101,161)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = prevstateno != 161
triggerall = facing != enemynear,facing
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,30]
trigger2 = p2movetype = A
trigger2 = stateno = 100
trigger3 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger4 = PlayerIdExist(helper(33333333),var(3))
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) > 3 
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) < 30

[State -1, Guard]
type = ChangeState
value = 120
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = inguarddist
trigger1 = ctrl


[State -1, Guard]
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
type = ChangeState
value = 120
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && InGuardDist
triggerall = inguarddist
triggerall = enemynear,numproj || (enemynear,numhelper && p2movetype != H) ||(enemynear,hitdefattr=SCA,AP)
triggerall = ctrl
trigger1 = enemynear,hitdefattr = SCA, AA, HP
trigger2 = InGuardDist || (P2BodyDist X <= 0 && P2MoveType = A)  || (P2StateNo >= 200 & (P2StateNo != [5000,5999])& P2MoveType != H)
trigger3 = Statetype = A & StateNo != 100 & StateNo != 101 & Anim != 100 & Anim != 101
trigger4 = PlayerIdExist(helper(33333333),var(3))
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) > 3 
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) / (PlayerId(helper(33333333),var(3)), vel x) < 20




[State -1, Guard]
type = ChangeState
value = 120
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = inguarddist
trigger1 = ctrl

[State -3, ChangeState] 
type = ChangeState
value = 131
triggerall = !IsHelper
triggerall = stateno != 102
triggerall = RoundState = 2
triggerall = Alive
triggerall = movetype !=H
triggerall = movetype !=A
triggerall = stateno != [900,999]
triggerall = ailevel && StateType != A
triggerall = P2StateType = C
triggerall = NumEnemy
triggerall = !EnemyNear, HitDefAttr = SCA,NT,ST,HT
triggerall = Ctrl && P2StateType != A
trigger1 = InGuardDist
trigger1 = Facing != EnemyNear, Facing
trigger2 = P2BodyDist x < 0 && P2MoveType = A



[State -3, ChangeState] ; standing block/guard
type = ChangeState
value = 130
triggerall = !IsHelper
triggerall = movetype !=H
triggerall = movetype !=A
triggerall = stateno != 102
triggerall = stateno != [900,999]
triggerall = RoundState = 2
triggerall = Alive
triggerall = ailevel && StateType != A
triggerall = P2StateType != C
triggerall = NumEnemy
triggerall = !EnemyNear, HitDefAttr = SCA,NT,ST,HT
triggerall = Ctrl
trigger1 = InGuardDist
trigger1 = Facing != EnemyNear, Facing
trigger2 = Facing = EnemyNear, Facing
trigger2 = P2Dist X > 0
trigger2 = P2BodyDist X = [-30,60] ; to be changed for your own need
trigger2 = P2MoveType = A
trigger3 = P2BodyDist X < 0 && P2MoveType = A


[State -3, ChangeState] ; in-air block/guard
type = ChangeState
value = 132
triggerall = movetype !=H
triggerall = stateno != 102
triggerall = movetype !=A
triggerall = stateno != [900,999]
triggerall = RoundState = 2
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = Alive
triggerall = ailevel && StateType = A
trigger1 = InGuardDist
trigger2 = P2BodyDist X < 0 && P2MoveType = A



[State -1, Disable Default Guarding]
type = assertspecial
triggerall = stateno != [120,160]
trigger1 = AIlevel && numenemy
flag = noairguard
flag2 = nocrouchguard
flag3 = nostandguard

[State -1, Catastrophe]
type = ChangeState
value = 3900
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = ailevel && numenemy
triggerall = power >= 2000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2life <= lifemax*.25
triggerall = var(21) = 0
trigger1 = (stateno = [200,213]) && movehit
trigger2 = (stateno = [400,420]) && movehit

;===========================================================================
;Wake Up
;===========================================================================
[State -1, Rising Sword]
type = ChangeState
value = 1101
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno = 5120 && time >= 15
trigger1 = p2movetype = A
trigger1 = p2statetype != A
trigger1 = p2bodydist X = [10,60]
trigger1 = p2bodydist Y = [-165,0]
trigger1 = enemynear, Vel X >= 0

;===========================================================================
;Movement
;===========================================================================

;---------------------------------------------------------------------------

[State -1, backdash]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2movetype = A
trigger1 = enemynear,Vel X >= 3

;---------------------------------------------------------------------------

[State -1, Run]
type = changestate
value = 100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2movetype = H
trigger1 = p2bodydist X > 85

;---------------------------------------------------------------------------

[State -1, Air Dodge]
type = ChangeState
value = 162
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = time > 9
trigger1 = p2movetype = A 
trigger1 = enemynear, vel X >= 0
trigger2 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger3 = PlayerIdExist(helper(33333333),var(3))
trigger3 = (PlayerId(helper(33333333),var(3)), p2bodydist x) >= 20 

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = 102
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
triggerall = var(24)!=0
triggerall = ctrl
triggerall = pos Y <= -45
trigger1 = p2bodydist X >= 65

[State -1, Air Dash]
type = ChangeState
value = 102
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
triggerall = ctrl
trigger1 = backedgedist < 45
trigger1 = stateno = 5210 && ctrl = 1
trigger2 = stateno = 5210 && ctrl = 1
trigger2 = p2bodydist X >=70
trigger2 = p2bodydist Y >= -300
trigger3 = stateno = 5210 && ctrl = 1
trigger3 = p2bodydist X = [-15,25]
trigger3 = p2bodydist Y >= -300

;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = changestate
value = 103
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) > 0
trigger1 = (stateno = [600,611]) && moveguarded && prevstateno != 220

;---------------------------------------------------------------------------

;[State -1, Jump]
;type = ChangeState
;value = 40
;triggerall = !ishelper
;triggerall = AIlevel && numenemy
;triggerall = roundstate = 2
;triggerall = statetype != A
;triggerall = ctrl
;triggerall = stateno != [40,53]
;triggerall = stateno != [160,162]
;trigger1 = PlayerIDExist(helper(33333333),var(3))
;trigger1 = ceil(PlayerID(helper(33333333),var(3)), p2bodydist x / PlayerID(helper(33333333),var(3)), vel x ) = ceil( 95 / abs(const(velocity.jump.y)))
;trigger2 = enemynear,movetype = A
;trigger2 = enemynear,statetype != A
;trigger3 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
;trigger3 = enemynear,movetype = A
;trigger3 = p2bodydist X = [35,500]
;trigger3 = enemynear, Vel X != 0
;trigger4 = (Stateno = 300) && Movecontact
;trigger4 = prevstateno != [150,153]
;trigger5 = enemynear,movetype = A
;trigger5 = p2bodydist X = [0,35]
;trigger5 = enemynear,statetype != A

;---------------------------------------------------------------------------
[State -1, Jump Forward]
type = varset
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = stateno = 40 || stateno = 45
trigger1 = p2movetype = H
sysvar(1) = 1

;---------------------------------------------------------------------------

[State -1, 2B]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,60,5)
value = 410
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype!=H
trigger1 = ctrl
trigger1 = p2bodydist X = [-15,65]
trigger1 = p2bodydist Y = [-150,-50]
trigger1 = p2statetype = A 
;---------------------------------------------------------------------------

[State -1, Craver]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,60,5)
value = 1101
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2movetype = A
triggerall = p2bodydist Y = [-160,0]
triggerall = ctrl
trigger1 = p2bodydist X = [10,50]
trigger1 = enemynear, Vel X >= 0
trigger1 = enemynear, ctrl = 0

[State -1, Air Grab]
type = ChangeState
value = 840
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = enemynear,movetype !=H
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,15]
triggerall = p2bodydist Y = [-60,10]
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, jA]
type = ChangeState
value = 600
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(35) = 1
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,35]
triggerall = p2bodydist Y = [-50,20]
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, jB]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = 610
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(36) = 1
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,60]
triggerall = p2bodydist Y = [-50,40]
trigger1 = ctrl

;===========================================================================
;Air to Ground
;===========================================================================

[State -1, jB]
type = ChangeState
value = 610
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype != A
triggerall = vel Y > 0
triggerall = p2bodydist X = [-50,50]
trigger1 = ctrl

;===========================================================================
;Ground to Ground
;===========================================================================
[State -1, Grab]
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
type = changestate
value = 800
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = p2bodydist X = [0,20]
triggerall = enemynear,ctrl = 0
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, 5A]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = ifelse(random<=450,300,ifelse(p2bodydist x<10,400,200))
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [-10,50]
triggerall = p2bodydist y = [0,15]
trigger1 = ctrl

[State -1, 5A]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = ifelse(p2bodydist x < 40 && enemy,pos y > -20,210,200)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [0,60]
triggerall = enemy,pos Y = [-70,0]
trigger1 = ctrl
[State -1, 5A\\2A]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = ifelse(p2statetype=L,400,200)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist X = [-10,60]
triggerall = enemynear,pos Y = [-60,0]
trigger1 = ctrl

[State -1, 2C]
type = ChangeState
value = 420
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = S
triggerall = p2bodydist X = [50,80]
triggerall = random<=299
trigger1 = ctrl

[State -1, 2C]
type = ChangeState
value = 420
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = statetype!=A
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = enemynear,statetype = L
triggerall = p2bodydist X = [-10,50]
trigger1 = ctrl



;---------------------------------------------------------------------------
[State -1, Tempest Blade]
type = changestate
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = 3000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2bodydist X = [0,200]
triggerall = enemynear,ctrl = 0
triggerall = p2statetype != A
triggerall = enemynear,stateno != 100
triggerall = enemynear,stateno != [40,59]
triggerall = enemynear,statetype != L
triggerall = p2movetype != I
trigger1 = ctrl


;---------------------------------------------------------------------------




[State -1, jAA]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = 610
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(36) = 1
trigger1= stateno = 600 && movehit

;---------------------------------------------------------------------------

[State -1, jC]
type = ChangeState
value = ifelse(random<=750 && power >= 500,1150,ifelse(random<=550,1103,620))
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
trigger1= stateno = [601,610]
trigger1 = movehit
trigger1 = p2bodydist X = [0,60]

[State -1, 5AA]
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 400
trigger1 = Movecontact
trigger2 = stateno = 300
trigger2 = Movecontact
;---------------------------------------------------------------------------
[State -1, 5AA]
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = 202
triggerall = !ishelper
triggerall =roundstate=2
triggerall = AIlevel && numenemy
trigger1 = stateno = 201
trigger1 = movehit


[State -1, 5AAA]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = ifelse(enemynear,statetype=A,1101,ifelse(random<=450,420,ifelse(random<=550,1000,ifelse(random<=750,202,1001))))
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 201
trigger1 = MoveGuarded
;---------------------------------------------------------------------------
[State -1, 5B]
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = AIlevel && numenemy
TRIGGERALL = ROUNDSTATE=2
triggerall = p2dist Y <= -110
trigger1 = (stateno = [200,211]) 
trigger1 = Movehit


[State -1, 5B]
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 202 
trigger1 = Movehit
trigger1 = animelemtime(7)>=0


[State -1, 5AAA]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = ifelse(enemynear,statetype=A,1101,ifelse(random<=450,420,ifelse(random<=550,1000,ifelse(random<=750,210,1001))))
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 202
trigger1 = MoveGuarded
;---------------------------------------------------------------------------
[State -1, 5BB]
type = ChangeState
value = 211
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 210
trigger1 = Movehit

[State -1, 5AAA]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = ifelse(enemynear,statetype=A,1101,ifelse(random<=450,420,ifelse(random<=550,1000,ifelse(random<=750,211,1001))))
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 210
trigger1 = MoveGuarded
;---------------------------------------------------------------------------
[State -1, 5BBB]
type = ChangeState
value = ifelse(enemynear,statetype=A,1101,ifelse(random<=450,420,ifelse(random<=550,1000,ifelse(random<=750,211,1001))))
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 211
trigger1 = MoveGuarded
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)

[State -1, 5A]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = 420
trigger1 = movehit
trigger1 = stateno = 410
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = enemynear,statetype=S

[State -1, Tempest Blade]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = ifelse(var(44)=0 && power>=1000,3080,ifelse(power>=1000,3000,ifelse(random<=550,1001,1200)))
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 420 && movehit


[State -1, 5AAA]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = ifelse(enemynear,statetype=A,1101,ifelse(random<=450,420,ifelse(random<=550,1000,ifelse(random<=750,212,1001))))
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 211
trigger1 = MoveGuarded
triggerall = roundstate=2

[State -1, Tempest Blade]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = ifelse(enemynear,statetype=A,1101,ifelse(random<=450,1201,ifelse(random<=550,1000,ifelse(random<=350,220,1001))))
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 420 && MoveGuarded

[State -1, 5BBB]
type = ChangeState
value = ifelse(enemy,life <enemy,lifemax*.25 && power >=2000 && var(21)=0,3900,ifelse(power>=2000,3000,ifelse(var(44)<=2 && enemy,backedgedist<25 && power>=1000,3080,ifelse(var(44)>=1,1500,ifelse(var(26)=0 && random<=350 && enemy,backedgedist<25,410,ifelse(power>=1000,3000,ifelse(random<=950 && power>=500 && var(33)=0,1202,ifelse(random<=550,1511,1200))))))))
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 212
trigger1 = MoveGuarded
triggerall = roundstate=2

[State -1, Ultra Burst]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = 8050
triggerall = var(50) = 0
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype !=A 
triggerall = life < 300
trigger1 = ctrl 


[State -1, Power Surge]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = 3080
triggerall = statetype=S
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = var(44)=0
trigger1 = ctrl 
[State -1, Air Jump]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = 45
triggerall = var(50)=0
triggerall = life < 350
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = (stateno = 610)
trigger1 = movecontact

[State 0, Exceed Accel]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = enemynear,life < 250
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = fvar(19)>0
trigger1 = stateno = 202
trigger1 = movehit
value = 4000

[State -1, Ultra Burst]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = 8050
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,40]
triggerall = Var(50) != 1
triggerall = alive && Roundstate = 2
triggerall = life < Lifemax/3
trigger1 = ctrl

[State 0, Cancel.]
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
type = ChangeState
value = 8050
triggerall = var(50)=0
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = Roundstate = 2
triggerall = life < 350
trigger1 = stateno = 45
trigger1 = prevstateno = 610
trigger2 = prevstateno = 610


;---------------------------------------------------------------------------

[State -1, Jump Cancel]
type = ChangeState
value = 42
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = enemynear,statetype=A
trigger1 = (Stateno = 410) && movehit

;===========================================================================
;Misc
;===========================================================================
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = prevstateno != [190,199]
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 3
triggerall = statetype != A
trigger1 = ctrl

[State -1, Wake up]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = 1101
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno = 5120 && time >= 5
trigger1 = enemynear,movetype = A
trigger1 = p2statetype != A
trigger1 = p2bodydist X = [-10,80]
trigger1 = p2bodydist Y = [-165,0]

[State -1, Reginleiv]
type = ChangeState
triggerall = random <= (ailevel)*ifelse(ailevel>=4,120,20)
value = 1000
triggerall = ailevel && numenemy
triggerall = enemynear,statetype!=A
triggerall = p2bodydist x >= 190
triggerall = random<=150
triggerall = enemy,power<1000
triggerall = prevstateno != 1000
triggerall = roundstate=2
triggerall = statetype!=A
trigger1 = ctrl

[State -1, Reginleiv]
type = ChangeState
value = ifelse(random<=850 && power>= 500,1002,1000)
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = enemynear,power < 1000
triggerall = statetype != A
triggerall = enemynear,statetype != A
triggerall = enemynear,ctrl = 0
triggerall = enemynear,movetype!=H
triggerall = roundstate = 2
triggerall = p2bodydist x >= 160
triggerall = p2bodydist y = [-95,0]
triggerall = enemynear,vel Y >= 0
triggerall = enemynear,stateno != [120,160]
triggerall = enemynear,stateno != [5080,5120]
triggerall = enemynear,stateno != [6080,6120]
triggerall = enemynear,stateno != 40
triggerall = enemynear,stateno != [52,58]
triggerall = stateno != [6060,6061]
trigger1 = ctrl
;---------------------------------------------------------------------------

[State -1, Burst]
type = changestate
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
value = 8000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = stateno != [120,155]
triggerall = Var(50) != 1
triggerall = StateType != L
triggerall = alive && Roundstate = 2
triggerall = movetype = H
triggerall = life < Lifemax/3
triggerall = p2dist X = [0,30]
triggerall = p2dist Y = [-60,15]
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = stateno != [120,155]
triggerall = stateno != [800,899]
triggerall = stateno != [3000,4999]
trigger1 = !ctrl
trigger2 = numenemy
trigger2 = enemy,movehit && p2stateno != [3000,4999]
trigger3 = enemy,numhelper
trigger3 = movetype = H && p2stateno != [3000,4999]
trigger4 = numenemy
trigger4 = enemy,movehit && p2stateno != [800,899]

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
triggerall = random <= (ailevel)*ifelse(ailevel>=6,120,30)
type = changestate
value = 203
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = statetype != A
triggerall = random <= 199
triggerall = power >= 1000
triggerall = p2dist X = [40,0]
triggerall = p2dist Y >= -60
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153