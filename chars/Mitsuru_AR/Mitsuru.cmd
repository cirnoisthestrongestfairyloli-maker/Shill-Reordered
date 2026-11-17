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


;Abstract Reordered: A/B/C = light/medium/heavy (C = EX), X = her D attacks (Shatter when the chill gauge is full),
;Y = grab, Z = parry, A+B+C = burst. Her own buttons x, y, a, b are now A, B, C, X (see the single buttons below).
;-| Super Motions |--------------------------------------------------------
[Command]
name = "Myriad_Arrows_A"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "Myriad_Arrows_B"
command = ~D, DF, F, D, DF, F, b+c
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "BURST"
command = a+b+c
time = 1

[Command]
name = "Coup_Droit_L"
command = ~D, DB, B, a
time = 20

[Command]
name = "Coup_Droit_M"
command = ~D, DB, B, b
time = 20

[Command]
name = "Coup_Droit_X"
command = ~D, DB, B, c
time = 20

[Command]
name = "Bufula_L"
command = ~D, DF, F, a
time = 20

[Command]
name = "Bufula_M"
command = ~D, DF, F, b
time = 20

[Command]
name = "Bufula_X"
command = ~D, DF, F, c
time = 20

[Command]
name = "Getsu-ei"
command = b+x
time = 1

[Command]
name = "ar_grab"
command = y
time = 1

[Command]
name = "ar_parry"
command = z
time = 1

[Command]
name = "ar_x"
command = x
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "DFF"     ;Required (do not remove)
command = /$D,$F,/$D,$F
time = 20

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

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,c
time = 1

[Command]
name = "down_b"
command = /$D,x
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "holda"
command = /c   ;Abstract Reordered
time = 1

[Command]
name = "holdb"
command = /x   ;Abstract Reordered
time = 1

[Command]
name = "holdx"
command = /a   ;Abstract Reordered
time = 1

[Command]
name = "holdy"
command = /b   ;Abstract Reordered
time = 1

[Command]
name = "a"
command = c   ;Abstract Reordered
time = 1

[Command]
name = "b"
command = x   ;Abstract Reordered
time = 1

[Command]
name = "c"
command = a+b+c+x+y+z   ;Abstract Reordered
time = 1

[Command]
name = "x"
command = a   ;Abstract Reordered
time = 1

[Command]
name = "y"
command = b   ;Abstract Reordered
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Single Dir |----------------------------------------------------------------
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdupfwd"
command = /$UF
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

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
name = "holddownfwd";Required (do not remove)
command = /$DF
time = 1

;---------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;Abstract Reordered: ice gauge bar (var(21)) and burst gauge (var(24)) HUD
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
trigger1 = var(21) < 100
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
trigger1 = var(21) >= 100
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
trigger1 = var(21) < 100
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
trigger1 = var(21) >= 100
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
trigger1 = !(var(21) < 100)
ID = 7791
ignorehitpause = 1

[State -1, AR meter HUD off 7795]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7795)
trigger1 = !(var(21) >= 100)
ID = 7795
ignorehitpause = 1

[State -1, AR meter HUD scale 7791]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(7791)
ID = 7791
scale = 0.5 * (ifelse((var(21) / 100.0) < 0, 0, ifelse((var(21) / 100.0) > 1, 1, (var(21) / 100.0)))) + 0.00005, .5
ignorehitpause = 1

[State -1, AR meter HUD scale 7795]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(7795)
ID = 7795
scale = 0.5 * (1) + 0.00005, .5
ignorehitpause = 1



;Abstract Reordered: burst cooldown (A+B+C while being hit, 75 s), var(24); comeback shortens it
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

;Abstract Reordered: ice gauge var(21) (0-100). Every Bufula hit chills the opponent. Full = X becomes Shatter.
;var(28) = the opponent's hit count at the last chill hit.
[State -1, AR chill round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(21) = 0

[State -1, AR chill count round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(28) = 0

[State -1, AR chill hit]
type = VarAdd
triggerall = !ishelper
triggerall = NumEnemy
triggerall = RoundState = 2
triggerall = EnemyNear, MoveType = H
triggerall = EnemyNear, GetHitVar(ChainID) = [1009, 1012]
trigger1 = EnemyNear, GetHitVar(HitCount) > var(28)
var(21) = 25
ignorehitpause = 1

[State -1, AR chill hit count]
type = VarSet
triggerall = !ishelper
triggerall = NumEnemy
triggerall = EnemyNear, MoveType = H
trigger1 = EnemyNear, GetHitVar(HitCount) > var(28)
var(28) = EnemyNear, GetHitVar(HitCount)
ignorehitpause = 1

[State -1, AR chill hit count reset]
type = VarSet
triggerall = !ishelper
trigger1 = !NumEnemy
trigger2 = EnemyNear, MoveType != H
var(28) = 0
ignorehitpause = 1

[State -1, AR chill clamp]
type = VarSet
triggerall = !ishelper
trigger1 = var(21) > 100
var(21) = 100
ignorehitpause = 1

[State -1, AR chill fade]
type = VarAdd
triggerall = !ishelper
triggerall = var(21) > 0 && var(21) < 100
trigger1 = RoundState = 2
trigger1 = GameTime % 30 = 0
var(21) = -1
ignorehitpause = 1

;Abstract Reordered: Shatter - X with a full chill gauge (ground, from neutral or on contact with a light normal)
[State -1, AR Shatter]
type = ChangeState
value = 7900
triggerall = !IsHelper
triggerall = RoundState = 2
triggerall = command = "ar_x"
triggerall = var(21) >= 100
triggerall = StateType != A
triggerall = var(49) <= 3
trigger1 = ctrl
trigger2 = (StateNo = [200, 206]) && MoveContact
trigger3 = (StateNo = [400, 406]) && MoveContact

;Abstract Reordered: parry on Z
[State -1, AR Parry]
type = ChangeState
value = 7740
triggerall = !IsHelper
triggerall = roundstate = 2
triggerall = command = "ar_parry"
trigger1 = ctrl



;-----------------------------------------------------------------------------
;BURSTS
[State ];Defensive Burst
type=ChangeState
value=6001
TriggerAll = var(49) <= 3
trigger1=command="BURST"
trigger1=RoundState=2&&var(50)>=100&&movetype=H&&!ctrl&&alive&&(enemynear,HitDefAttr=SCA,NA||enemynear,HitDefAttr=SCA,SA||enemynear,HitDefAttr=SCA,NP||enemynear,HitDefAttr=SCA,SP)
trigger2=command="BURST"
trigger2=RoundState=2&&var(50)>=100&&((stateno=[120,159])&&time>=1)&&(enemynear,HitDefAttr=SCA,NA||enemynear,HitDefAttr=SCA,SA||enemynear,HitDefAttr=SCA,NP||enemynear,HitDefAttr=SCA,SP)
ignorehitpause = 1

[State ];Normal Burst
triggerall = 0   ;Abstract Reordered: burst is defensive only
type=ChangeState
value=6000
TriggerAll = var(49) <= 3
TriggerAll = !(Numhelper(301)||NumHelper(306)||NumHelper(405)||NumHelper(410)||NumHelper(505)||NumHelper(510)||NumHelper(1010)||NumHelper(1011)||NumHelper(1012))
trigger1=command="BURST"
trigger1=roundstate=2&&var(50)>=100&&ctrl&&!movecontact
trigger2=command="BURST"
trigger2=roundstate=2&&var(50)>=100&&ctrl&&((stateno=[60,65])&&time>=5)&&!movecontact

[State ];One More! Burst
triggerall = 0   ;Abstract Reordered: burst is defensive only
type=ChangeState
value=6002
TriggerAll = var(49) <= 3
trigger1=command="BURST"
trigger1=RoundState=2&&var(50)>=100&&((stateno=[200,249])&&MoveContact)
trigger2=command="BURST"
trigger2=RoundState=2&&var(50)>=100&&(stateno=250&&Time>32&&MoveContact)
trigger3=command="BURST"
trigger3=RoundState=2&&var(50)>=100&&((stateno=[251,699])&&MoveContact)
trigger4=command="BURST"
trigger4=RoundState=2&&var(50)>=100&&(stateno=701&&Var(8)>0)
trigger5=command="BURST"
trigger5=RoundState=2&&var(50)>=100&&(stateno=706&&MoveContact)
trigger6=command="BURST"
trigger6=RoundState=2&&var(50)>=100&&((stateno=[1000,1007])&&Var(8)>0)
trigger7=command="BURST"
trigger7=RoundState=2&&var(50)>=100&&((stateno=[2000,2006])&&MoveContact)
trigger8=command="BURST"
trigger8=RoundState=2&&var(50)>=100&&(Numhelper(301)||NumHelper(505))
trigger8=helper(301),MoveContact||helper(505),MoveContact

;-----------------------------------------------------------------------------
;SPECIALS
[State -1, Myriad Arrows A]
type = ChangeState
value = 2000
triggerall = command = "Myriad_Arrows_A"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = (Stateno = [200,206]) && movecontact
trigger3 = (Stateno = [400,406]) && movecontact
trigger4 = (Stateno = [1000,1007]) && var(8) > 0
trigger5 = Stateno = 1021 && var(8) > 0

[State -1, Myriad Arrows B]
type = ChangeState
value = 2006
triggerall = command = "Myriad_Arrows_B"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = (Stateno = [200,206]) && movecontact
trigger3 = (Stateno = [400,406]) && movecontact
trigger4 = (Stateno = [1000,1007]) && var(8) > 0
trigger5 = Stateno = 1021 && var(8) > 0

;-----------------------------------------------------------------------------
;EX SKILLS
[State -1, Coup Droit EX]
type = ChangeState
value = 1006
triggerall = Statetype != A && power >= 500
triggerall = command = "Coup_Droit_X"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = (Stateno = [200,405]) && movecontact

[State -1, Bufula EX]
type = ChangeState
value = 1019
TriggerAll = var(49) <= 3
triggerall = Statetype != A && power >= 500
triggerall = command = "Bufula_X"
triggerall = !(Numhelper(301) || NumHelper(306) || NumHelper(410) || NumHelper(505) || NumHelper(510) || NumHelper(1015) || NumHelper(1016) || NumHelper(1017))
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = (Stateno = [200,405]) && movecontact

;-----------------------------------------------------------------------------
;SKILLS
[State -1, Coup Droit Light]
type = ChangeState
value = 1000
triggerall = Statetype != A
triggerall = command = "Coup_Droit_L"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = (Stateno = [200,405]) && movecontact

[State -1, Coup Droit Medium]
type = ChangeState
value = 1003
triggerall = Statetype != A
triggerall = command = "Coup_Droit_M"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = (Stateno = [200,405]) && movecontact

;-----------------------------------------------------------------------------
[State -1, Bufula Light]
type = ChangeState
value = 1010
TriggerAll = var(49) <= 3
triggerall = Statetype != A
triggerall = command = "Bufula_L"
triggerall = !(Numhelper(301) || NumHelper(306) || NumHelper(410) || NumHelper(505) || NumHelper(510) || NumHelper(1015) || NumHelper(1016) || NumHelper(1017))
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = (Stateno = [200,405]) && movecontact
trigger3 = Stateno = 1021 && var(56) = 1

[State -1, Bufula Medium]
type = ChangeState
value = 1018
TriggerAll = var(49) <= 3
triggerall = Statetype != A
triggerall = command = "Bufula_M"
triggerall = !(Numhelper(301) || NumHelper(306) || NumHelper(410) || NumHelper(505) || NumHelper(510) || NumHelper(1015) || NumHelper(1016) || NumHelper(1017))
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = (Stateno = [200,405]) && movecontact

;-----------------------------------------------------------------------------
[State -1, Getsu-ei]
type = ChangeState
value = 1020
triggerall = command = "Getsu-ei"
triggerAll = life > (lifemax*0.05)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = (Stateno = [200,599]) && movecontact
trigger3 = (ctrl || (Anim = [39,65]))

;---------------------------------------------------------------------------
;THROWS
[State -1, Ground]
type = ChangeState
value = 700
triggerall = command = "ar_grab"   ;Abstract Reordered: Y = grab
triggerall = statetype != A
triggerall = Roundstate = 2
trigger1 = ctrl
[State -1, Air]
type = ChangeState
value = 705
triggerall = command = "ar_grab"   ;Abstract Reordered: Y = grab
triggerall = Roundstate = 2
trigger1 =  statetype = A && (ctrl || (Anim = [39,65]))

;---------------------------------------------------------------------------
;DODGING
[State -1, Dodge forward]
triggerall = 0   ;Abstract Reordered: removed
type = ChangeState
value = 750
triggerall = Statetype != A
triggerall = command = "a" && command = "x"
triggerall = command = "holdfwd"
trigger1 = ctrl
[State -1, Dodge back]
triggerall = 0   ;Abstract Reordered: removed
type = ChangeState
value = 751
triggerall = Statetype != A
triggerall = command = "a" && command = "x"
triggerall = command = "holdback"
trigger1 = ctrl

;---------------------------------------------------------------------------
;REGULAR ATTACKS
;AOA
[State -1, AOA]
triggerall = 0   ;Abstract Reordered: removed
type = ChangeState
value = 250
triggerall = command = "x" && command = "y"
triggerall = command != "holddown"
triggerall = EnemyNear,StateNo != 625
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
[State -1, RUSH 'EM!]
triggerall = 0   ;Abstract Reordered: removed
type = ChangeState
value = 251
triggerall = command = "x" || command = "y"
triggerall = target,p2dist x > 0
trigger1 = stateno = 250 && AnimElemTime(10) > 0 && MoveContact && EnemyNear,StateNo = 625
[State -1, BEAT 'EM UP!]
type = ChangeState
value = ifelse(stateno=252,253,ifelse(stateno=253,254,ifelse(stateno=254,255,ifelse(stateno=255,256,257))))
triggerall = command = "x" || command = "y"
trigger1 = (stateno = [252,255]) && AnimElemTime(18) > 0 && movecontact
[State -1, LAUNCH UP]
type = ChangeState
value = 258
triggerall = command = "a"
trigger1 = (stateno = [252,256]) && movecontact
[State -1, Jump]
type = ChangeState
value = 50
triggerall = command = "up"
trigger1 = stateno = 258 && movecontact
[State -1, LAUNCH BACK]
type = ChangeState
value = 259
triggerall = command = "b"
trigger1 = (stateno = [252,256]) && movecontact

;Sweep
[State -1, Sweep]
triggerall = 0   ;Abstract Reordered: removed
type = ChangeState
value = 405
triggerall = command = "x" && command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
trigger2 = (Stateno = [200,404]) && MoveContact

;5A
[State -1, 5A]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
;5AA
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = P2Bodydist X <= 100
triggerall = command = "x"
trigger1 = stateno = 200 && movecontact
trigger2 = stateno = 202 && movecontact && Anim != 204
;5AAA
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = command = "x"
trigger1 = stateno = 201 && movecontact
;Coup Droit
[State -1, Coup Droit]
type = ChangeState
value = 1000
triggerall = command = "x"
trigger1 = stateno = 202 && movecontact && Anim = 204
;Myriad Arrows
[State -1, Myriad Arrows]
type = ChangeState
value = 2000
triggerall = command = "x"
triggerall = power >= 1000
trigger1 = (stateno = [1001,1002]) && var(8) > 0 && var(20) = 1

;5B
[State -1, 5B]
type = ChangeState
value = 205
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
trigger2 = (Stateno = [200,202])

;2A1&2
[State -1, 2A 1&2]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
;2A3
[State -1, 2A3]
type = ChangeState
value = 401
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = stateno = 400 && Anim = 400 && (AnimElemTime (4) >= 1)
trigger2 = stateno = 401 && Anim = 401 && (AnimElemTime (5) >= 1)
;2B
[State -1, 2B]
type = ChangeState
value = 402
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
trigger2 = (Stateno = [400,401]) && movehit

;j.A
[State -1, j.A]
type = ChangeState
value = 500
triggerall = command = "x"
trigger1 = statetype = A && (ctrl || (Anim = [39,65]))
;j.B
[State -1, j.B]
type = ChangeState
value = 501
triggerall = command = "y"
trigger1 = statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = stateno = 500 && movecontact
;---------------------------------------------------------------------------
;PERSONA ATTACKS
[State -1, 5C]
type = ChangeState
value = 300
TriggerAll = var(49) <= 3
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = !(Numhelper(301) || NumHelper(306) || NumHelper(405) || NumHelper(410) || NumHelper(505) || NumHelper(510))
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
trigger2 =(StateNo =[200,209]) && movecontact
;5D
[State -1, 5D]
type = ChangeState
value = 305
TriggerAll = var(49) <= 3
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = !(Numhelper(301) || NumHelper(306) || NumHelper(405) || NumHelper(410) || NumHelper(505) || NumHelper(510))
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
trigger2 =(StateNo =[200,209]) && movecontact

;2C
[State -1, 2C]
type = ChangeState
value = 407
TriggerAll = var(49) <= 3
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = !(Numhelper(301) || NumHelper(306) || NumHelper(405) || NumHelper(410) || NumHelper(505) || NumHelper(510))
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
;2D
[State -1, 2D]
type = ChangeState
value = 412
TriggerAll = var(49) <= 3
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = !(Numhelper(301) || NumHelper(306) || NumHelper(405) || NumHelper(410) || NumHelper(505) || NumHelper(510))
trigger1 = statetype != A && (ctrl || (Anim = [99,101]))
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 202
trigger4 = stateno = 203 && movecontact
trigger5 =(Stateno = [400,401]) && movecontact

;j.C
[State -1, j.C]
type = ChangeState
value = 502
TriggerAll = var(49) <= 3
triggerall = command = "a"
triggerall = !(Numhelper(301) || NumHelper(306) || NumHelper(405) || NumHelper(410) || NumHelper(505) || NumHelper(510))
trigger1 = statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = stateno = 202 && movecontact
;j.D
[State -1, j.D]
type = ChangeState
value = 504
TriggerAll = var(49) <= 3
triggerall = command = "b"
triggerall = !(Numhelper(301) || NumHelper(306) || NumHelper(405) || NumHelper(410) || NumHelper(505) || NumHelper(510))
trigger1 = statetype = A && (ctrl || (Anim = [39,65]))
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 205 && movecontact && (AnimElemTime (6) >= 1)

;---------------------------------------------------------------------------
;Dash Fwd
[State -1, Dash Fwd]
type = ChangeState
value = 100
triggerall = Roundstate = 2
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = Roundstate = 2
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;AirDash Forward
[State -1, AirDash Forward]
type = ChangeState
value = 60
triggerall = Roundstate = 2
triggerall = time > 1
trigger1 = command = "FF"
trigger1 = stateno = 50
trigger1 = ctrl

;---------------------------------------------------------------------------
;AirDash Back
[State -1, AirDash Back]
type = ChangeState
value = 62
triggerall = Roundstate = 2
triggerall = time > 1
trigger1 = command = "BB"
trigger1 = stateno = 50
trigger1 = ctrl

[State -1]
Type = VarSet
triggerall = Var(59) = 1
trigger1 = Win = 1
trigger2 = Lose = 1
trigger3 = DrawGame = 1
trigger4 = RoundState = 4
var(59) = -1
IgnoreHitPause = 1

[State -1]
Type = VarSet
trigger1 = Var(59) = -1
trigger1 = RoundState = 1
var(59) = 1
IgnoreHitPause = 1

[state jump cancel]
type=changestate
value=40
triggerall=command="holdup"
trigger1 = Stateno = 202 && Movehit
trigger2 = Stateno = 402 && MoveContact

[state airjump cancel]
type=changestate
value=45
triggerall=command="holdup"
trigger1 = Stateno = 500 && MoveContact
trigger2 = StateNo = 502
trigger2 = Numhelper(505)
trigger2 = Helper(505),AnimElemTime(16) > 0 && Helper(505),MoveContact

;---------------------------------------------------------------------------
;Tauntage
[State -1]
type = ChangeState
value = 195
TriggerAll = command = "start"
TriggerAll = StateNo!= 195
TriggerAll = StateNo = 0 && AnimElemTime(95) <= 0
trigger1 = statetype = S
trigger1 = ctrl
