;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = z   ;Abstract Reordered: physical Y = her grab (internal z)
z = y   ;physical Z = parry (command ar_parry)
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

;Abstract Reordered: X = ice gauge Shatter, Z = parry, A+B+C = burst, double-motion supers (1 bar), Niflheim 3 bars
[Command]
name = "ar_x"
command = x
time = 1

[Command]
name = "ar_parry"
command = y
time = 1

[Command]
name = "ar_burst"
command = a+b+c
time = 1

[Command]
name = "ar_myriad"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "ar_myriad"
command = ~D, DF, F, D, DF, F, b+c
time = 30

[Command]
name = "ar_niflheim"
command = ~F, B, DB, D, DF, F, c
time = 30

[Command]
name = "ar_bufudyne"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[Command]
name = "ar_bufudyne"
command = ~D, DB, B, D, DB, B, b+c
time = 30


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

[Command]
name = "highjump"
command = >~D, U
time = 8

[Command]
name = "highjump"
command = >~D, UF
time = 8

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

;=== Abstract Reordered: burst gauge + ice meter HUD (explods) ===
[State -1, AR burst gauge 9668 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9668) = 0
trigger1 = var(48) = 0
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
trigger1 = var(48) = 0
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
trigger1 = var(48) > 3750
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
trigger1 = var(48) <= 3750 && var(48) > 3000
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
trigger1 = var(48) <= 3000 && var(48) > 2250
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
trigger1 = var(48) <= 2250 && var(48) > 1500
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
trigger1 = var(48) <= 1500 && var(48) > 750
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
trigger1 = var(48) <= 750 && var(48) > 0
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
trigger1 = var(48) > 3750
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
trigger1 = var(48) = 0
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
trigger1 = var(48) = 0
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
trigger1 = var(48) > 3750
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
trigger1 = var(48) <= 3750 && var(48) > 3000
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
trigger1 = var(48) <= 3000 && var(48) > 2250
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
trigger1 = var(48) <= 2250 && var(48) > 1500
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
trigger1 = var(48) <= 1500 && var(48) > 750
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
trigger1 = var(48) <= 750 && var(48) > 0
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
trigger1 = var(48) > 3750
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
trigger1 = !(var(48) = 0)
ID = 9668
ignorehitpause = 1

[State -1, AR burst gauge 9661 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9661)
trigger1 = !(var(48) = 0)
ID = 9661
ignorehitpause = 1

[State -1, AR burst gauge 9660 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9660)
trigger1 = !(var(48) > 3750)
ID = 9660
ignorehitpause = 1

[State -1, AR burst gauge 9662 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9662)
trigger1 = !(var(48) <= 3750 && var(48) > 3000)
ID = 9662
ignorehitpause = 1

[State -1, AR burst gauge 9663 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9663)
trigger1 = !(var(48) <= 3000 && var(48) > 2250)
ID = 9663
ignorehitpause = 1

[State -1, AR burst gauge 9664 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9664)
trigger1 = !(var(48) <= 2250 && var(48) > 1500)
ID = 9664
ignorehitpause = 1

[State -1, AR burst gauge 9665 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9665)
trigger1 = !(var(48) <= 1500 && var(48) > 750)
ID = 9665
ignorehitpause = 1

[State -1, AR burst gauge 9666 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9666)
trigger1 = !(var(48) <= 750 && var(48) > 0)
ID = 9666
ignorehitpause = 1

[State -1, AR burst gauge 9667 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9667)
trigger1 = !(var(48) > 3750)
ID = 9667
ignorehitpause = 1


;Abstract Reordered: mechanic meter HUD - Kuroko's MAGIC CIRCUIT bar, fill in the parry colour,
;bottom of the screen (P1 left, P2 right). Only the look changed; the meter logic is untouched.
[State -1, AR meter HUD frame P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7790) = 0
trigger1 = 1
anim = 7790
ID = 7790
pos = 32, GameHeight - (33)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD back P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7792) = 0
trigger1 = 1
anim = 7792
ID = 7792
pos = 40, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 11
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD fill 7791 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7791) = 0
trigger1 = var(45) < 100
anim = 7791
ID = 7791
pos = 40, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD fill 7795 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7795) = 0
trigger1 = var(45) >= 100
anim = 7795
ID = 7795
pos = 40, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD frame P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7790) = 0
trigger1 = 1
anim = 7790
ID = 7790
pos = GameWidth - (140), GameHeight - (33)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD back P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7792) = 0
trigger1 = 1
anim = 7792
ID = 7792
pos = GameWidth - (132), GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 11
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD fill 7791 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7791) = 0
trigger1 = var(45) < 100
anim = 7791
ID = 7791
pos = GameWidth - (40), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD fill 7795 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7795) = 0
trigger1 = var(45) >= 100
anim = 7795
ID = 7795
pos = GameWidth - (40), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD off 7791]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7791)
trigger1 = !(var(45) < 100)
ID = 7791
ignorehitpause = 1

[State -1, AR meter HUD off 7795]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7795)
trigger1 = !(var(45) >= 100)
ID = 7795
ignorehitpause = 1

[State -1, AR meter HUD scale 7791]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(7791)
ID = 7791
scale = 0.5 * (ifelse((var(45) / 100.0) < 0, 0, ifelse((var(45) / 100.0) > 1, 1, (var(45) / 100.0)))) + 0.00005, .5
ignorehitpause = 1

[State -1, AR meter HUD scale 7795]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(7795)
ID = 7795
scale = 0.5 * (1) + 0.00005, .5
ignorehitpause = 1





;=============================== Abstract Reordered (State -1) ===============================
;Abstract Reordered: burst cooldown (A+B+C while being hit, 75 s), var(48); comeback shortens it
[State -1, AR persona break reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(49) = 0

[State -1, AR burst round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(48) = 0

[State -1, AR burst recharge]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = var(48) > 0
var(48) = -1
ignorehitpause = 1

[State -1, AR burst comeback]
type = VarAdd
triggerall = !ishelper
triggerall = var(48) > 0
trigger1 = movetype = H
trigger1 = Life < var(23)
trigger1 = var(22) - Life > LifeMax * 0.15
var(48) = -30
ignorehitpause = 1

[State -1, AR burst comeback clamp]
type = VarSet
triggerall = !ishelper
trigger1 = var(48) < 0
var(48) = 0
ignorehitpause = 1

[State -1, AR burst combo start]
type = VarSet
triggerall = !ishelper
trigger1 = movetype != H
var(22) = Life
ignorehitpause = 1

[State -1, AR burst last life]
type = VarSet
triggerall = !ishelper
trigger1 = 1
var(23) = Life
ignorehitpause = 1

;Abstract Reordered: ice gauge var(45) (0-100). Every Bufula / Persona hit chills the opponent. Full = X becomes Shatter.
;var(46) = the opponent's hit count at the last chill hit.
[State -1, AR chill round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(45) = 0

[State -1, AR chill count round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(46) = 0

[State -1, AR chill hit]
type = VarAdd
triggerall = !ishelper
triggerall = NumEnemy
triggerall = RoundState = 2
triggerall = EnemyNear, MoveType = H
triggerall = EnemyNear, GetHitVar(ChainID) = 4590
trigger1 = EnemyNear, GetHitVar(HitCount) > var(46)
var(45) = 25
ignorehitpause = 1

[State -1, AR chill hit count]
type = VarSet
triggerall = !ishelper
triggerall = NumEnemy
triggerall = EnemyNear, MoveType = H
trigger1 = EnemyNear, GetHitVar(HitCount) > var(46)
var(46) = EnemyNear, GetHitVar(HitCount)
ignorehitpause = 1

[State -1, AR chill hit count reset]
type = VarSet
triggerall = !ishelper
trigger1 = !NumEnemy
trigger2 = EnemyNear, MoveType != H
var(46) = 0
ignorehitpause = 1

[State -1, AR chill clamp]
type = VarSet
triggerall = !ishelper
trigger1 = var(45) > 100
var(45) = 100
ignorehitpause = 1

[State -1, AR chill fade]
type = VarAdd
triggerall = !ishelper
triggerall = var(45) > 0 && var(45) < 100
trigger1 = RoundState = 2
trigger1 = GameTime % 30 = 0
var(45) = -1
ignorehitpause = 1

;Abstract Reordered: one launcher per combo. var(47) = a launcher connected in this combo (2C, Getsu-ei, EX Coup Droit, Niflheim).
;Cleared when the opponent leaves hitstun or is knocked down.
[State -1, AR launcher reset]
type = VarSet
triggerall = !IsHelper
trigger1 = !numenemy
trigger2 = numenemy
trigger2 = (enemynear,movetype != H) || ((enemynear,stateno >= 5110) && (enemynear,stateno <= 5120))
var(47) = 0
ignorehitpause = 1

[State -1, AR launcher used]
type = VarSet
triggerall = !IsHelper
trigger1 = MoveHit
trigger1 = (stateno = 420) || (stateno = [1200,1201]) || (stateno = 1002)
var(47) = 1
ignorehitpause = 1

;Abstract Reordered: Shatter - X with a full chill gauge (ground, from neutral or on contact with a normal)
[State -1, AR Shatter]
type = ChangeState
value = 7900
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = command = "ar_x"
triggerall = var(45) >= 100
triggerall = StateType != A
trigger1 = ctrl
trigger2 = (StateNo = [200,204]) && MoveContact
trigger3 = (StateNo = [210,212]) && MoveContact
trigger4 = (StateNo = [400,410]) && MoveContact

;Abstract Reordered: X = Artemisia strike (ground: state 205, air: state 601); Shatter above takes over when the ice gauge is full
[State -1, AR X Artemisia ground]
type = ChangeState
value = 205
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = command = "ar_x"
triggerall = StateType != A
triggerall = NumHelper(2000) <= 0
trigger1 = ctrl
trigger2 = (StateNo = [200,204]) && MoveContact
trigger3 = (StateNo = [210,212]) && MoveContact
trigger4 = (StateNo = [400,410]) && MoveContact

[State -1, AR X Artemisia air]
type = ChangeState
value = 601
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = command = "ar_x"
triggerall = StateType = A
triggerall = NumHelper(2000) <= 0
trigger1 = ctrl
trigger2 = (StateNo = [600,610]) && MoveContact

;Abstract Reordered: parry on Z
[State -1, AR Parry]
type = ChangeState
value = 7740
triggerall = !IsHelper
triggerall = roundstate = 2
triggerall = command = "ar_parry"
trigger1 = ctrl

;Abstract Reordered: Persona 5C (Artemisia strike) is state 221 (Mitsuru_AR.cns)

;===========================================================================
;===========================================================================
[State -1, Niflheim]
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "ar_niflheim"   ;Abstract Reordered: Ichigo lv3 input
triggerall = power >= 3000   ;Abstract Reordered: 3 bars
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(21) = 0
triggerall = !var(47)
trigger1 = ctrl
trigger2 = (Stateno = [200,204]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 411) && numhelper(7772)
trigger6 = (Stateno = 230) && Movecontact
trigger7 = stateno = 830 && movecontact
;---------------------------------------------------------------------------
[State -1, Bufudyne]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "ar_bufudyne"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (Stateno = [200,204]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 411) && numhelper(7772)
trigger6 = (Stateno = 230) && Movecontact
trigger7 = stateno = 830 && movecontact
;---------------------------------------------------------------------------
[State -1, Myriad Arrows]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "ar_myriad"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (Stateno = [200,204]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 411) && numhelper(7772)
trigger6 = (Stateno = 230) && Movecontact
trigger7 = stateno = 830 && movecontact
;---------------------------------------------------------------------------
[State -1, Exceed Accel]
type = ChangeState
triggerall = 0   ;Abstract Reordered: removed
value = 4000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y+z" || command = "holdy" && command = "holdz"
triggerall = fvar(19) > 0
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || stateno = 100
trigger2 = (Stateno = [200,204]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 411) && numhelper(7772)
trigger6 = (Stateno = 230) && Movecontact
trigger7 = stateno = 830 && movecontact
;---------------------------------------------------------------------------
[State -1, Getsu-ei]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = !var(47)   ;Abstract Reordered: one launcher per combo
triggerall = command = "DP_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,204]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 411) && numhelper(7772)
trigger6 = (Stateno = 230) && Movecontact
trigger7 = stateno = 5120 && time >= 3
;---------------------------------------------------------------------------
[State -1, Air Getsu-ei]
type = ChangeState
value = 1201
triggerall = !ishelper
triggerall = !AIlevel
triggerall = !var(47)   ;Abstract Reordered: one launcher per combo
triggerall = command = "DP_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (Stateno = 601) && numhelper(7774)
;---------------------------------------------------------------------------
[State -1, Coup Droit A]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,204]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 411) && numhelper(7772)
trigger6 = (Stateno = 230) && Movecontact
;---------------------------------------------------------------------------
[State -1, Coup Droit B]
type = ChangeState
value = 1001
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,204]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 411) && numhelper(7772)
trigger6 = (Stateno = 230) && Movecontact
;---------------------------------------------------------------------------
[State -1, Coup Droit EX]
type = ChangeState
value = 1002
triggerall = !ishelper
triggerall = !AIlevel
triggerall = !var(47)   ;Abstract Reordered: one launcher per combo
triggerall = command = "QCF_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (Stateno = [200,204]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 411) && numhelper(7772)
trigger6 = (Stateno = 230) && Movecontact
;---------------------------------------------------------------------------
[State -1, Marin Karin]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_a"
triggerall = var(36) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,204]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 411) && numhelper(7772)
trigger6 = (Stateno = 230) && Movecontact
;---------------------------------------------------------------------------
[State -1, Tentarafoo]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,204]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 411) && numhelper(7772)
trigger6 = (Stateno = 230) && Movecontact
;---------------------------------------------------------------------------
[State -1, Bufula]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = var(37) = 0
triggerall = command = "QCB_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (Stateno = [200,204]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = [400,420]) && Movecontact
trigger5 = (Stateno = 411) && numhelper(7772)
trigger6 = (Stateno = 230) && Movecontact
;===========================================================================
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
trigger2 = Stateno = 200 && Movecontact
trigger3 = (Stateno = [200,204]) && Movecontact
trigger4 = (Stateno = 410) && Movecontact
;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
trigger1 = Stateno = 100
trigger2 = Stateno = 200 && Movecontact
trigger3 = (Stateno = [200,204]) && Movecontact
trigger4 = (Stateno = 410) && Movecontact

;---------------------------------------------------------------------------
[State -1, Air Jump]
type = ChangeState
value = 45
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
triggerall = var(15) < 6
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [600,611]) && movecontact
trigger4 = stateno = 601
trigger4 = numhelper(7774) > 0

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
trigger4 = stateno = 601
trigger4 = numhelper(7774) > 0
trigger5 = stateno = 230
trigger5 = movecontact

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
trigger4 = stateno = 601
trigger4 = numhelper(7774) > 0
trigger5 = stateno = 230
trigger5 = movecontact

;---------------------------------------------------------------------------
[State -1, Ultra Burst]
type = ChangeState
triggerall = 0   ;Abstract Reordered: removed
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
triggerall = 0   ;Abstract Reordered: removed
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
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = var(25) = 1
trigger1 = ctrl
trigger2 = (Stateno = [400,410]) && Movecontact
trigger2 = prevstateno != [200,205]
trigger3 = (Stateno = [300,301]) && Movecontact
trigger4 = stateno = 211
trigger4 = numhelper(7772) > 0
trigger5 = stateno = 210
trigger5 = numhelper(7773) > 0

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
triggerall = 0   ;Abstract Reordered: removed
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
triggerall = 0   ;Abstract Reordered: removed
value = 202
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 201
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAAA]
type = ChangeState
triggerall = 0   ;Abstract Reordered: removed
value = 203
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 202
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAAAA]
type = ChangeState
triggerall = 0   ;Abstract Reordered: removed
value = 204
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 203
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAAAAA]
type = ChangeState
triggerall = 0   ;Abstract Reordered: removed
value = 205
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 204
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,204]) && Movecontact
trigger3 = (Stateno = 400) && Movecontact
trigger4 = (Stateno = 411) && numhelper(7772)
trigger4 = var(29) = 1
trigger5 = Stateno = 100

;---------------------------------------------------------------------------
trigger6 = (Stateno = [400,401]) && Movecontact

[State -1, 5BB]
type = ChangeState
triggerall = 0   ;Abstract Reordered: removed
value = 211
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 210
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, 5BBB]
type = ChangeState
triggerall = 0   ;Abstract Reordered: removed
value = 212
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 211
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, 5C]
type = ChangeState
value = 411   ;Abstract Reordered: Artemisia strikes (was an overhead)
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,204]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger5 = (Stateno = 411) && numhelper(7772)
trigger6 = Stateno = 100

;---------------------------------------------------------------------------
[State -1, 66A]
type = ChangeState
triggerall = 0   ;Abstract Reordered: removed
value = 230
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype != A
trigger1 = Stateno = 100

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 2A]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = 200) && Movecontact
trigger3 = (Stateno = 400) && Movecontact
trigger3 = var(30) > 0
trigger4 = (Stateno = 300) && Movecontact
trigger4 = prevstateno != 400
trigger5 = stateno = 201
trigger5 = numhelper(7776) > 0

;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = var(26) = 1
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [200,204]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact

;---------------------------------------------------------------------------
[State -1, 2BB]
type = ChangeState
triggerall = 0   ;Abstract Reordered: removed
value = 411
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = statetype != A
trigger1 = (stateno = 410) && movehit

;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = !AIlevel
triggerall = !var(47)   ;Abstract Reordered: one launcher per combo
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,204]) && Movecontact
trigger3 = (Stateno = [210,212]) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger5 = (Stateno = 411) && numhelper(7772)
trigger6 = Stateno = 100

;---------------------------------------------------------------------------
[State -1, jA]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, jAA]
type = ChangeState
triggerall = 0   ;Abstract Reordered: removed
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
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,601]
trigger2 = movecontact
trigger3 = (Stateno = 601) && numhelper(7774)

;---------------------------------------------------------------------------
[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (Stateno = 601) && numhelper(7774)

;---------------------------------------------------------------------------
[State -1, backdash alternate command]
type = ChangeState
triggerall = 0   ;Abstract Reordered: removed
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
triggerall = 0   ;Abstract Reordered: removed
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
triggerall = 0   ;Abstract Reordered: removed
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
trigger4 = stateno = 1401

;---------------------------------------------------------------------------
[State -1, Air Dodge]
type = ChangeState
triggerall = 0   ;Abstract Reordered: removed
value = 162
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = ChangeState
triggerall = 0   ;Abstract Reordered: removed
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall = prevstateno != [120,159]
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != 1200
triggerall = stateno != [8000,8050]
triggerall = stateno != [3000,3999]
triggerall = stateno != [4000,4999]
triggerall = time > 0
trigger1 = movecontact
trigger2 = numhelper(7777) > 0
;---------------------------------------------------------------------------
[State -1, Air Roman Cancel]
type = ChangeState
triggerall = 0   ;Abstract Reordered: removed
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall = stateno != [3000,3999]
triggerall = stateno != [4000,4999]
triggerall = time > 0
trigger1 = movecontact
trigger2 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
triggerall = 0   ;Abstract Reordered: removed
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 500
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall = stateno != [4000,4999]
trigger1 = movecontact
trigger1 = stateno = 3000
trigger2 = stateno = [3005,3050]
trigger2 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Air Force Roman Cancel]
type = ChangeState
triggerall = 0   ;Abstract Reordered: removed
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 500
triggerall = !ctrl
triggerall = stateno != [8000,8050]
triggerall = stateno != [4000,4999]
trigger1 = movecontact
trigger1 = stateno = [3000,3005]
trigger2 = stateno = 3055
trigger2 = numhelper(7777) > 0

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = ChangeState
triggerall = 0   ;Abstract Reordered: removed
value = 206
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A
trigger1 = command = "x" || command = "b+c"
trigger1 = command = "holdfwd"
trigger1 = power >= 1000
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153

;---------------------------------------------------------------------------
[State -1, Burst]
type = ChangeState
value = 8000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = stateno != [120,155]
triggerall = var(48) = 0   ;Abstract Reordered: 75 s cooldown
triggerall = Var(50) != 1
triggerall = command = "ar_burst"
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

[State -1, Forward Dodge]
type = ChangeState
value = 161
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 5
triggerall = random < (100*ailevel)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = prevstateno != 161
triggerall = facing != enemynear,facing
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [0,83]
trigger2 = p2movetype = A
trigger2 = stateno = 100
trigger3 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger4 = PlayerIdExist(helper(33333333),var(3))
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) + 1 / (PlayerId(helper(33333333),var(3)), vel x) +1 > 3 
trigger4 = (PlayerId(helper(33333333),var(3)), p2bodydist x) + 1 / (PlayerId(helper(33333333),var(3)), vel x) + 1 < 30

[State -1, Guard]
type = ChangeState
value = 120
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 4
triggerall = roundstate = 2
triggerall = inguarddist
trigger1 = ctrl

[State -1, Guard]
type = ChangeState
value = 120
triggerall = !ishelper
triggerall = numenemy
triggerall = AIlevel = [1,4]
triggerall = roundstate = 2
triggerall = inguarddist
triggerall = random < 499
trigger1 = ctrl

[State -1, Disable Default Guarding]
type = assertspecial
triggerall = stateno != [120,160]
trigger1 = AIlevel && numenemy
flag = noairguard
flag2 = nocrouchguard
flag3 = nostandguard

;===========================================================================
;Wake Up
;===========================================================================
[State -1, Getsu-ei]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 4
triggerall = random < (125*ailevel)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno = 5120 && time >= 15
triggerall = power < 1000
trigger1 = p2movetype = A
trigger1 = p2statetype != A
trigger1 = p2bodydist X = [0,50]
trigger1 = p2bodydist Y = [-120,0]
trigger1 = enemynear, Vel X >= 0

;===========================================================================
;Marin Karin
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Marin Karin]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 5
triggerall = random < (125*ailevel)
triggerall = var(36) = 0
triggerall = statetype != A
triggerall = enemynear,ctrl = 0
triggerall = p2movetype = H
triggerall = p2stateno != [120,155]
trigger1 = ctrl

;===========================================================================
;Movement
;===========================================================================
;---------------------------------------------------------------------------

[State -1, Run]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 4
triggerall = random < (125*ailevel)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2movetype = H
trigger1 = p2dist X > 70

;---------------------------------------------------------------------------

[State -1, backdash]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 3
triggerall = random < (125*ailevel)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2movetype = A
trigger1 = enemynear,Vel X >= 4

;---------------------------------------------------------------------------

[State -1, Air Dodge]
type = ChangeState
value = 162
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 5
triggerall = random < (100*ailevel)
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
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 4
triggerall = random < (125*ailevel)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
triggerall = ctrl
triggerall = pos Y <= -45
trigger1 = p2bodydist X >= 65

;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = ChangeState
value = 103
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 3
triggerall = random < (125*ailevel)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = (stateno = [600,601]) && moveguarded

;---------------------------------------------------------------------------

[State -1, Jump]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 3
triggerall = random < (125*ailevel)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != [40,53]
triggerall = stateno != [160,162]
trigger1 = PlayerIDExist(helper(33333333),var(3))
trigger1 = ceil(PlayerID(helper(33333333),var(3)), p2bodydist x + 1 / PlayerID(helper(33333333),var(3)), vel x) + 1 = ceil( 95 / abs(const(velocity.jump.y)))
trigger2 = enemynear,movetype = A
trigger2 = enemynear,statetype != A
trigger3 = (enemynear,numproj)||(enemynear,hitdefattr=SCA,AP)
trigger3 = enemynear,movetype = A
trigger3 = p2bodydist X = [35,500]
trigger3 = enemynear, Vel X != 0
trigger4 = (Stateno = 300) && Movecontact
trigger4 = prevstateno != [150,153]
trigger5 = enemynear,movetype = A
trigger5 = p2bodydist X = [0,35]
trigger5 = enemynear,statetype != A
trigger6 = prevstateno = 1003

;---------------------------------------------------------------------------
[State -1, Jump Forward]
type = varset
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = stateno = 40 || stateno = 45
trigger1 = p2movetype = H
sysvar(1) = 1

;===========================================================================
;Ground to Air
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Bufudyne]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 6
triggerall = random < (125*ailevel)
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2movetype = A
triggerall = enemynear,ctrl = 0
triggerall = roundstate = 2
triggerall = p2bodydist X <= 110
triggerall = enemynear,ctrl = 0
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 3
triggerall = random < (125*ailevel)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = A || p2statetype = L
triggerall = p2bodydist X = [15,50]
triggerall = p2bodydist Y = [-200,0]
triggerall = enemynear,pos Y <= -10
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Getsu-ei]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 4
triggerall = random < (125*ailevel)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2movetype = A
triggerall = ctrl
trigger1 = p2bodydist X = [0,50]
trigger1 = p2bodydist Y = [-120,0]
trigger1 = enemynear, Vel X >= 0

;===========================================================================
;Air to Air
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Ultra Burst]
type = ChangeState
value = 8050
triggerall = !ishelper
triggerall = numenemy
triggerall = AIlevel >= 7
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,70]
triggerall = p2dist y = [-120,40]
triggerall = Var(50) != 1
triggerall = alive && Roundstate = 2
triggerall = life < Lifemax/3
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Air Grab]
type = ChangeState
value = 840
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 5
triggerall = random < (125*ailevel)
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
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 2
triggerall = random < (125*ailevel)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [0,90]
triggerall = p2bodydist Y = [-90,0]
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, jAA]
type = ChangeState
value = 601
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = stateno = 600
trigger1 = movecontact

;===========================================================================
;Air to Ground
;===========================================================================
[State -1, jB]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 3
triggerall = random < (125*ailevel)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype != A
triggerall = pos Y < -10
triggerall = p2bodydist X = [10,95]
trigger1 = ctrl

;===========================================================================
;Ground to Ground
;===========================================================================
[State -1, Grab]
type = ChangeState
value = 800
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 5
triggerall = random < (125*ailevel)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = p2bodydist X = [0,15]
triggerall = p2stateno != 5120
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 1
triggerall = random < (125*ailevel)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = S
triggerall = p2statetype != L
triggerall = p2bodydist X = [0,170]
triggerall = prevstateno != 200
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 1
triggerall = random < (125*ailevel)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [0,68]
triggerall = prevstateno != 200
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 5C]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 4
triggerall = random < (125*ailevel)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist X = [0,40]
triggerall = p2statetype = C
trigger1 = ctrl
trigger2 = stateno = [300,301]
trigger2 = moveguarded
trigger3 = stateno = [200,202]
trigger3 = moveguarded
trigger3 = random <= 449
trigger4 = stateno = 203
trigger4 = moveguarded


;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 3
triggerall = random < (125*ailevel)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = S
triggerall = p2bodydist X = [0,110]
trigger1 = ctrl
trigger2 = stateno = [300,301]
trigger2 = moveguarded
trigger3 = stateno = [200,202]
trigger3 = moveguarded
trigger3 = random <= 449
trigger4 = stateno = 203
trigger4 = moveguarded

;---------------------------------------------------------------------------
[State -1, Coup Droit A]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 4
triggerall = random < (125*ailevel)
triggerall = statetype != A
triggerall = p2bodydist X < 115
triggerall = p2dist y >= -40
triggerall = enemynear,vel Y >= 0
triggerall = enemynear,vel x > 0
triggerall = enemynear,ctrl = 0
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
trigger1 = ctrl

;---------------------------------------------------------------------------
;===========================================================================
;Combo
;===========================================================================
[State -1, Niflheim]
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 6
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2life <= enemynear,lifemax/4
triggerall = var(21) = 0
triggerall = power >= 2000
triggerall = roundno > 2
trigger1 = stateno = [410,420]
trigger1 = movehit

;---------------------------------------------------------------------------
[State -1, Exceed Accel]
type = ChangeState
value = 4000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = fvar(19) > 0
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2bodydist X = [0,100]
trigger1 = (stateno = 420) && movehit
trigger2 = (stateno = 203) && movehit

;---------------------------------------------------------------------------
[State -1, Myriad Arrows]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 6
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = (stateno = 420) && movehit
;---------------------------------------------------------------------------
[State -1, Getsu-ei]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 5
triggerall = statetype != A
trigger1 = (stateno = 420) && movehit

;---------------------------------------------------------------------------
[State -1, Getsu-ei]
type = ChangeState
value = 1201
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 4
triggerall = statetype = A
trigger1 = (Stateno = 601) && numhelper(7774)

;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 400
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 201
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAAA]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 202
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5AAAAA]
type = ChangeState
value = 205
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel = [1,4]
trigger1 = stateno = 203
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 5
trigger1 = stateno = 203
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, 2BB]
type = ChangeState
value = 411
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 410
trigger1 = Movehit

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = (Stateno = 411) && numhelper(7772)

;---------------------------------------------------------------------------
[State -1, 5BB]
type = ChangeState
value = 211
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 210
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 5BBB]
type = ChangeState
value = 212
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 211
trigger1 = Movecontact

;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = AIlevel && numenemy
trigger1 = stateno = 212
trigger1 = Movecontact
trigger1 = animelemtime(11) >= 1

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
trigger1 = p2stateno != [5150,5151]

;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = numenemy
triggerall = AIlevel >= 8
triggerall =  movetype != H
triggerall = statetype != A
triggerall = power >= 1000
triggerall = time > 0
trigger1 = stateno = [220,221]
trigger1 = moveguarded
trigger2 = stateno = [3000,3599]
trigger2 = moveguarded
trigger3 = stateno = 420
trigger3 = moveguarded
trigger4 = stateno = [1000,1599]
trigger4 = enemynear,stateno = [120,159]
trigger4 = numhelper(7777) > 0
trigger5 = stateno = [3000,3599]
trigger5 = enemynear,stateno = [120,159]
trigger5 = numhelper(7777) > 0
trigger6 = stateno = [1000,1599]
trigger6 = moveguarded
trigger7 = stateno = 3000
trigger7 = movehit
trigger7 = animelemtime(27) > 0
trigger7 = numtarget
trigger7 = target,stateno = 5800

;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = numenemy
triggerall = AIlevel >= 8
triggerall =  movetype != H
triggerall = statetype = A
triggerall = power >= 1000
triggerall = time > 0
trigger1 = stateno = 620
trigger1 = moveguarded
trigger2 = stateno = [1000,1599]
trigger2 = enemynear,stateno = [120,159]
trigger2 = numhelper(7777) > 0
trigger3 = stateno = [1000,1599]
trigger3 = moveguarded

;---------------------------------------------------------------------------

[State -1, Burst]
type = ChangeState
value = 8000
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 5
triggerall = numhelper(9000)
triggerall = helper(9000),var(3) <= 0
triggerall = Var(50) != 1
triggerall = StateType != L
triggerall = alive && Roundstate = 2
triggerall = movetype = H
triggerall = life < Lifemax/3
triggerall = p2dist X = [0,30]
triggerall = p2dist Y = [-60,15]
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

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = ChangeState
value = 204
triggerall = !ishelper
triggerall = AIlevel && numenemy
triggerall = AIlevel >= 5
triggerall = statetype != A
triggerall = random <= 199
triggerall = power >= 1000
triggerall = p2dist X = [40,0]
triggerall = p2dist Y >= -60
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153

