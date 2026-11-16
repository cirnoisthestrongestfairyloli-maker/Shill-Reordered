;-| Button Remapping |-----------------------------------------------------
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

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "DDD_ab"
command = ~D, D, a+b

[Command]
name = "DDD_ab"
command = D, D, a+b

[Command]
name = "QCB_ab"
command = ~D, DB, B, b+c

[Command]
name = "QCF_ab"
command = ~D, DF, F, b+c

[Command]
name = "DDD_ab"
command = ~D, D, b+c

[Command]
name = "DDD_ab"
command = D, D, b+c

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+c

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+c

[Command]
name = "DDD_ab"
command = ~D, D, a+c

[Command]
name = "DDD_ab"
command = D, D, a+c

;-| Special Motions |------------------------------------------------------

[Command]
name = "DP_a"
command = ~F, D, DF, a

[Command]
name = "DP_b"
command = ~F, D, DF, b

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
name = "DD_c"
command = ~D, D, c

[Command]
name = "DD_c"
command = D, D, c

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
command = b+c
time = 1

[Command]
name = "y+z"
command = y+z
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

;-| Dir |--------------------------------------------------------------
[Command]
name = "fwd";Required (do not remove)
command = F
time = 1

[Command]
name = "back";Required (do not remove)
command = B
time = 1

[Command]
name = "up" ;Required (do not remove)
command = U
time = 1

[Command]
name = "down";Required (do not remove)
command = D
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
;---------------------------------------------------------------------------
[State -1, Laser]
type = ChangeState
value = 2999
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a+b"
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Black Hole]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b+c"
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Cutter]
type = ChangeState
value = 200
triggerall = var(34) = 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, EX Cutter]
type = ChangeState
value = 201
triggerall = var(34) != 0
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Seed Drop]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Ice Bomb]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Eye Dropper]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Portal Crawl]
type = ChangeState
value = 800
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Teleport]
type = ChangeState
value = 160
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Multi Teleport]
type = null;ChangeState
value = 162
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "x"
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = null;ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall = stateno != [3000,3999]
triggerall = time > 0
trigger1 = movecontact
trigger2 = stateno = 621
trigger2 = var(7) = 1
trigger3 = numhelper > 0
trigger3 = helper,movecontact
trigger4 = numhelper(7777) > 0
;---------------------------------------------------------------------------
[State -1, Air Roman Cancel]
type = null;ChangeState
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall = stateno != [3000,3999]
triggerall = time > 0
trigger1 = movecontact
trigger2 = numhelper > 0
trigger2 = helper,movecontact
trigger3 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = null;ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 500
triggerall = movecontact
triggerall= stateno = 3000 || stateno = 3050
trigger1 = !ctrl
trigger2 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = null;ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 500
triggerall = movecontact
triggerall= stateno = 3002
trigger1 = animelemtime(21) >= 0

;---------------------------------------------------------------------------
[State -1, Air Force Roman Cancel]
type = null;ChangeState
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 500
triggerall = !ctrl
triggerall = movecontact
triggerall = stateno != 3001
triggerall= stateno = [3000,3080]
trigger1 = !ctrl
trigger2 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = null;ChangeState
value = 204
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A
trigger1 = command = "x" || command = "b+c"
trigger1 = command = "holdfwd"
trigger1 = power >= 1000
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153

;---------------------------------------------------------------------------
[State -1, Burst]
type = null;ChangeState
value = 8000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = stateno != [120,155]
triggerall = numhelper(9000)
triggerall = helper(9000),var(3) <= 0
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
triggerall = movetype = H
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = enemy,stateno != [120,155]
triggerall = enemy,stateno != [800,899]
triggerall = enemy,stateno != [3000,4999]
trigger1 = !ctrl
trigger2 = numenemy
trigger2 = enemy,movehit && p2stateno != [3000,4999]
trigger3 = enemy,numhelper
trigger3 = movetype = H && p2stateno != [3000,4999]
trigger4 = numenemy
trigger4 = enemy,movehit && p2stateno != [800,899]

;===========================================================================
;AI-------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;Defense
;===========================================================================
;---------------------------------------------------------------------------
;Phase 1
;---------------------------------------------------------------------------
[State -1, Cutter Round Start]
type = ChangeState
value = 200
triggerall = var(37) = 0
trigger1 = var(34) = 0
triggerall = roundstate = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 0
trigger1 = ctrl

[State -1, Cutter]
type = ChangeState
value = 200
triggerall = var(37) = 1
triggerall = var(36) = 0
trigger1 = var(34) = 0
triggerall = roundstate = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(35) >= var(47)
trigger1 = stateno = 0

[State -1, Teleport]
type = ChangeState
value = 160
triggerall = var(37) = 1
triggerall = var(36) = 1 || var(36) = 4
trigger1 = var(34) = 0
triggerall = roundstate = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(35) = (var(47)*.5)
triggerall = animelemtime(4) >= 0
trigger1 = stateno = 0

[State -1, Seed Drop]
type = ChangeState
value = 210
triggerall = var(37) = 1
triggerall = var(36) = 1
trigger1 = var(34) = 0
triggerall = roundstate = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(35) >= var(47)
trigger1 = stateno = 0

[State -1, Portal Crawl]
type = ChangeState
value = 800
triggerall = var(37) = 1
triggerall = var(36) = 2
trigger1 = var(34) = 0
triggerall = roundstate = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(35) >= var(47)
trigger1 = stateno = 0

[State -1, Eye Dropper]
type = ChangeState
value = 400
triggerall = var(37) = 1
triggerall = var(36) = 3
trigger1 = var(34) = 0
triggerall = roundstate = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(35) >= var(47)
trigger1 = stateno = 0

[State -1, Ice Bomb]
type = ChangeState
value = 220
triggerall = var(37) = 1
triggerall = var(36) = 4
trigger1 = var(34) = 0
triggerall = roundstate = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(35) >= var(47)
trigger1 = stateno = 0

[State -1, Laser]
type = ChangeState
value = 2999
triggerall = var(37) = 1
triggerall = var(36) = 5
trigger1 = var(34) = 0
triggerall = roundstate = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(35) >= var(47)
trigger1 = stateno = 0

;---------------------------------------------------------------------------
;Phase 2
;---------------------------------------------------------------------------
[State -1, Black Hole Round Start]
type = ChangeState
value = 3050
triggerall = var(37) = 0
trigger1 = var(34) != 0
triggerall = roundstate = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 0
trigger1 = ctrl

[State -1, Cutter]
type = ChangeState
value = 201
triggerall = var(37) = 1
triggerall = numhelper(9990)
triggerall = helper(9990),var(1) = 0
triggerall = helper(9990),var(10) = 1
trigger1 = var(34) != 0
triggerall = roundstate = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(35) >= var(48)
trigger1 = stateno = 0

[State -1, Teleport]
type = ChangeState
value = 160
triggerall = var(37) = 1
triggerall = var(36) = 1 || var(36) = 4
trigger1 = var(34) != 0
triggerall = roundstate = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(35) = (var(48)*.5)
triggerall = animelemtime(4) >= 0
trigger1 = stateno = 0

[State -1, Seed Drop]
type = ChangeState
value = 210
triggerall = var(37) = 1
triggerall = numhelper(9990)
triggerall = helper(9990),var(2) = 0
triggerall = helper(9990),var(10) = 2
trigger1 = var(34) != 0
triggerall = roundstate = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(35) >= var(48)
trigger1 = stateno = 0

[State -1, Portal Crawl]
type = ChangeState
value = 800
triggerall = var(37) = 1
triggerall = numhelper(9990)
triggerall = helper(9990),var(3) = 0
triggerall = helper(9990),var(10) = 3
trigger1 = var(34) != 0
triggerall = roundstate = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(35) >= var(48)
trigger1 = stateno = 0

[State -1, Eye Dropper]
type = ChangeState
value = 400
triggerall = var(37) = 1
triggerall = numhelper(9990)
triggerall = helper(9990),var(4) = 0
triggerall = helper(9990),var(10) = 4
trigger1 = var(34) != 0
triggerall = roundstate = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(35) >= var(48)
trigger1 = stateno = 0

[State -1, Ice Bomb]
type = ChangeState
value = 220
triggerall = var(37) = 1
triggerall = numhelper(9990)
triggerall = helper(9990),var(5) = 0
triggerall = helper(9990),var(10) = 5
trigger1 = var(34) != 0
triggerall = roundstate = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(35) >= var(48)
trigger1 = stateno = 0

[State -1, Laser]
type = ChangeState
value = 2999
triggerall = var(37) = 1
triggerall = numhelper(9990)
triggerall = helper(9990),var(6) = 0
triggerall = helper(9990),var(10) = 6
trigger1 = var(34) != 0
triggerall = roundstate = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(35) >= var(48)
trigger1 = stateno = 0

[State -1, Black Hole]
type = ChangeState
value = 3050
triggerall = var(37) = 1
triggerall = numhelper(9990)
triggerall = helper(9990),var(7) = 0
triggerall = helper(9990),var(10) = 7
trigger1 = var(34) != 0
triggerall = roundstate = 2
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(35) >= 30
trigger1 = ctrl
trigger1 = stateno = 0
