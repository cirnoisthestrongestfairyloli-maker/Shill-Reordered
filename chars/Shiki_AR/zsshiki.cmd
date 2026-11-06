; 1. Command definition
; ---------------------

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

	; Normal



	; Reversed


	
;-| Special Motions |------------------------------------------------------
	; Normal
	[Command]
	name = "QCF_x"
	command = ~D, DF, F, a
	time = 15

	[Command]
	name = "QCF_y"
	command = ~D, DF, F, b
	time = 15

	[Command]
	name = "QCF_z"
	command = ~D, DF, F, c
	time = 15
	
	[Command]
	name = "DP_x"
	command = ~F, D, DF, a
	time = 15

	[Command]
	name = "DP_y"
	command = ~F, D, DF, b
	time = 15

	[Command]
	name = "DP_z"
	command = ~F, D, DF, c
	time = 15

	[Command]
	name = "DD_x"
	command = ~D, D, a
	time = 15

	[Command]
	name = "DD_y"
	command = ~D, D, b
	time = 15

	[Command]
	name = "DD_z"
	command = ~D, D, c
	time = 15

	[Command]
	name = "HCB_x"
	command = ~F, D, B, a
	time = 15

	[Command]
	name = "HCB_y"
	command = ~F, D, B, b
	time = 15

	[Command]
	name = "HCB_z"
	command = ~F, D, B, c
	time = 15

	[Command]
	name = "QCB_a"
	command = ~D, DB, B, a+x
	time = 15

	; Reversed	
	[Command]
	name = "QCB_x"
	command = ~D, DB, B, a
	time = 15

	[Command]
	name = "QCB_y"
	command = ~D, DB, B, b
	time = 15

	[Command]
	name = "QCB_z"
	command = ~D, DB, B, c
	time = 15
	
	[Command]
	name = "RDP_x"
	command = ~B, D, DB, a
	time = 15

	[Command]
	name = "RDP_y"
	command = ~B, D, DB, b
	time = 15

	[Command]
	name = "RDP_z"
	command = ~B, D, DB, c
	time = 15

	[Command]
	name = "HCF_x"
	command = ~B, D, F, a
	time = 15

	[Command]
	name = "HCF_y"
	command = ~B, D, F, b
	time = 15

	[Command]
	name = "HCF_z"
	command = ~B, D, F, c
	time = 15
	
	[Command]
	name = "QCF_a"
	command = ~D, DF, F, a+x
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

[Command]
name = "highjump"
command = ~$D, $U
time = 5

[Command]
name = "highjump"
command = ~$D, U
time = 5

[Command]
name = "highjump"
command = $D, ~U
time = 5

[Command]
name = "highjump"
command = ~10$D, U
time = 5

[Command]
name = "highjump"
command = ~10$D, $U
time = 5

[Command]
name = "highjump"
command = ~10$D, ~U
time = 5

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
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

[Command]
name = "throw"
command = y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,a
time = 1

[Command]
name = "back_y"
command = /$B,b
time = 1

[Command]
name = "back_z"
command = /$B,c
time = 1

[Command]
name = "down_x"
command = /$D,a
time = 1

[Command]
name = "down_y"
command = /$D,b
time = 1

[Command]
name = "down_z"
command = /$D,c
time = 1

[Command]
name = "fwd_x"
command = /$F,a
time = 1

[Command]
name = "fwd_y"
command = /$F,b
time = 1

[Command]
name = "fwd_z"
command = /$F,c
time = 1

[Command]
name = "up_x"
command = /$U,a
time = 1

[Command]
name = "up_y"
command = /$U,b
time = 1

[Command]
name = "up_z"
command = /$U,c
time = 1


[Command]
name = "back_b"
command = /$B,y
time = 1

[Command]
name = "back_c"
command = /$B,z
time = 1


[Command]
name = "down_b"
command = /$D,y
time = 1

[Command]
name = "down_c"
command = /$D,z
time = 1


[Command]
name = "fwd_b"
command = /$F,y
time = 1

[Command]
name = "fwd_c"
command = /$F,z
time = 1


[Command]
name = "up_b"
command = /$U,y
time = 1

[Command]
name = "up_c"
command = /$U,z
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "ar_gsd"
command = a+x
time = 1



[Command]
name = "ar_btn_a"
command = a
time = 1

[Command]
name = "ar_btn_b"
command = b
time = 1

[Command]
name = "ar_btn_c"
command = c
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
command = /a
time = 1

[Command]
name = "hold_y"
command = /b
time = 1

[Command]
name = "hold_z"
command = /c
time = 1


[Command]
name = "hold_b"
command = /y
time = 1

[Command]
name = "hold_c"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

[Command]
name = "recovery"
command = /a
time = 1

[Command]
name = "recovery"
command = /b
time = 1

[Command]
name = "recovery"
command = /c
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

;Abstract Reordered: A/B/C = light/medium/heavy, X = Mystic Eyes mode, A+X = God Speed Dash,
;Y = throw, Z = parry, A+B+C = burst. Supers: 236236AB, 214214AB, 236236BC, Lv3 ~F, B, DB, D, DF, F, C
;(_r = the same motion when the opponent is behind him, like his other commands)
[Command]
name = "ar_me"
command = x
time = 1

[Command]
name = "ar_parry"
command = z
time = 1

[Command]
name = "ar_burst"
command = a+b+c
time = 1

[Command]
name = "ar_tc3"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "ar_tc3_r"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[Command]
name = "ar_tc2"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[Command]
name = "ar_tc2_r"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "ar_meodp"
command = ~D, DF, F, D, DF, F, b+c
time = 30

[Command]
name = "ar_meodp_r"
command = ~D, DB, B, D, DB, B, b+c
time = 30

[Command]
name = "ar_17"
command = ~F, B, DB, D, DF, F, c
time = 30

[Command]
name = "ar_17_r"
command = ~B, F, DF, D, DB, B, c
time = 30

[Statedef -1]

;---------------------------------------------------------------------------
;==== AR BURST (HUD: the "AR burst gauge" blocks below) ====
;Abstract Reordered: burst (Kamijo's) - A+B+C while being hit, recharges in 75 s (var(45))
[State -1, AR burst round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(45) = 0

[State -1, AR burst recharge]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = var(45) > 0
var(45) = -1
ignorehitpause = 1

;Abstract Reordered: comeback - once a combo has done more than 15% of max life, every further hit
;knocks half a second (30 ticks) off the burst cooldown. var(46) = life when the combo started, var(47) = life last tick
[State -1, AR burst comeback]
type = VarAdd
triggerall = !ishelper
triggerall = var(45) > 0
trigger1 = movetype = H
trigger1 = Life < var(47)
trigger1 = var(46) - Life > LifeMax * 0.15
var(45) = -30
ignorehitpause = 1

[State -1, AR burst comeback clamp]
type = VarSet
triggerall = !ishelper
trigger1 = var(45) < 0
var(45) = 0
ignorehitpause = 1

[State -1, AR burst combo start]
type = VarSet
triggerall = !ishelper
trigger1 = movetype != H
var(46) = Life
ignorehitpause = 1

[State -1, AR burst last life]
type = VarSet
triggerall = !ishelper
trigger1 = 1
var(47) = Life
ignorehitpause = 1

;Abstract Reordered: burst HUD - Touma's BURST gauge, recoloured, just under the lifebar.
;var(45) = cooldown ticks (4500 = just used, 0 = ready). Anims 9660-9668, explod IDs = anims.
[State -1, AR burst gauge 9668 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9668) = 0
trigger1 = var(45) = 0
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
trigger1 = var(45) = 0
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
trigger1 = var(45) > 3750
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
trigger1 = var(45) <= 3750 && var(45) > 3000
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
trigger1 = var(45) <= 3000 && var(45) > 2250
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
trigger1 = var(45) <= 2250 && var(45) > 1500
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
trigger1 = var(45) <= 1500 && var(45) > 750
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
trigger1 = var(45) <= 750 && var(45) > 0
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
trigger1 = var(45) > 3750
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
trigger1 = var(45) = 0
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
trigger1 = var(45) = 0
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
trigger1 = var(45) > 3750
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
trigger1 = var(45) <= 3750 && var(45) > 3000
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
trigger1 = var(45) <= 3000 && var(45) > 2250
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
trigger1 = var(45) <= 2250 && var(45) > 1500
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
trigger1 = var(45) <= 1500 && var(45) > 750
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
trigger1 = var(45) <= 750 && var(45) > 0
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
trigger1 = var(45) > 3750
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
trigger1 = !(var(45) = 0)
ID = 9668
ignorehitpause = 1

[State -1, AR burst gauge 9661 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9661)
trigger1 = !(var(45) = 0)
ID = 9661
ignorehitpause = 1

[State -1, AR burst gauge 9660 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9660)
trigger1 = !(var(45) > 3750)
ID = 9660
ignorehitpause = 1

[State -1, AR burst gauge 9662 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9662)
trigger1 = !(var(45) <= 3750 && var(45) > 3000)
ID = 9662
ignorehitpause = 1

[State -1, AR burst gauge 9663 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9663)
trigger1 = !(var(45) <= 3000 && var(45) > 2250)
ID = 9663
ignorehitpause = 1

[State -1, AR burst gauge 9664 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9664)
trigger1 = !(var(45) <= 2250 && var(45) > 1500)
ID = 9664
ignorehitpause = 1

[State -1, AR burst gauge 9665 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9665)
trigger1 = !(var(45) <= 1500 && var(45) > 750)
ID = 9665
ignorehitpause = 1

[State -1, AR burst gauge 9666 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9666)
trigger1 = !(var(45) <= 750 && var(45) > 0)
ID = 9666
ignorehitpause = 1

[State -1, AR burst gauge 9667 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9667)
trigger1 = !(var(45) > 3750)
ID = 9667
ignorehitpause = 1


[State -1, AR burst]
type = ChangeState
value = ifelse(StateType = A, 7751, 7750)
triggerall = !ishelper
triggerall = AILevel = 0   ;players only (his var 59 is Mystic Eyes)
triggerall = command = "ar_burst"
triggerall = var(45) = 0
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
triggerall = AILevel = 0
triggerall = command = "ar_parry"
trigger1 = ctrl

;---------------------------------------------------------------------------
;==== AR MYSTIC EYES (X) ====
;var(40) gauge 0..1000, var(41) enemy life last tick, var(42) own life last tick, var(43) mode on last tick
;var(59) = 1 while the mode is on (his native Burst Mode flag: 2 God Speed charges, Lv2 -> Instant Death)
[State -1, AR ME round start]
type = VarSet
triggerall = !IsHelper
trigger1 = RoundState < 2
var(59) = 0

[State -1, AR ME round start 2]
type = VarSet
triggerall = !IsHelper
trigger1 = RoundState < 2
var(43) = 0

[State -1, AR ME gain dealt]
type = VarAdd
triggerall = !IsHelper
triggerall = var(59) != 1 && RoundState = 2 && NumEnemy
trigger1 = EnemyNear, Life < var(41)
var(40) = (var(41) - EnemyNear, Life) * 2
ignorehitpause = 1

[State -1, AR ME gain taken]
type = VarAdd
triggerall = !IsHelper
triggerall = var(59) != 1 && RoundState = 2
trigger1 = Life < var(42)
var(40) = (var(42) - Life) * 3
ignorehitpause = 1

[State -1, AR ME drain]
type = VarAdd
triggerall = !IsHelper
trigger1 = var(59) = 1 && RoundState = 2
var(40) = -2

[State -1, AR ME cap]
type = VarSet
triggerall = !IsHelper
trigger1 = var(40) > 1000
var(40) = 1000
ignorehitpause = 1

[State -1, AR ME floor]
type = VarSet
triggerall = !IsHelper
trigger1 = var(40) < 0
var(40) = 0
ignorehitpause = 1

[State -1, AR ME timeout]
type = VarSet
triggerall = !IsHelper
trigger1 = var(59) = 1 && var(40) <= 0
trigger1 = StateNo != 700
var(59) = 0

[State -1, AR ME ended early (Lv2/Lv3 used inside it)]
type = VarSet
triggerall = !IsHelper
trigger1 = var(43) = 1 && var(59) != 1
var(40) = 0

[State -1, AR ME last mode]
type = VarSet
triggerall = !IsHelper
trigger1 = 1
var(43) = ifelse(var(59) = 1, 1, 0)
ignorehitpause = 1

[State -1, AR ME last enemy life]
type = VarSet
triggerall = !IsHelper
trigger1 = NumEnemy
var(41) = EnemyNear, Life
ignorehitpause = 1

[State -1, AR ME last own life]
type = VarSet
triggerall = !IsHelper
trigger1 = 1
var(42) = Life
ignorehitpause = 1

[State -1, AR ME damage]
type = AttackMulSet
triggerall = !IsHelper
trigger1 = 1
value = ifelse(var(59) = 1, 1.15, 1)

[State -1, AR ME AI use]
type = ChangeState
value = 700
triggerall = !IsHelper
triggerall = AILevel > 0 && RoundState = 2
triggerall = var(59) = 0 && var(40) >= 1000
triggerall = StateType != A
trigger1 = ctrl && P2BodyDist X < 90 && random < 40

;==== AR MYSTIC EYES HUD (mechanic meter, bottom of the screen; restyle here) ====
;9610 = frame, 9611 = fill while charging, 9612 = fill while the mode is on; fill x scale = var(40) / 1000
[State -1, AR ME HUD 9610 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9610) = 0
trigger1 = 1
anim = 9610
ID = 9610
pos = 40, GameHeight - (14)
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

[State -1, AR ME HUD 9611 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9611) = 0
trigger1 = var(59) != 1
anim = 9611
ID = 9611
pos = 40, GameHeight - (14)
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 11
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ME HUD 9612 P1]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9612) = 0
trigger1 = var(59) = 1
anim = 9612
ID = 9612
pos = 40, GameHeight - (14)
postype = left
facing = 1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 11
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ME HUD 9610 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9610) = 0
trigger1 = 1
anim = 9610
ID = 9610
pos = -40, GameHeight - (14)
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

[State -1, AR ME HUD 9611 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9611) = 0
trigger1 = var(59) != 1
anim = 9611
ID = 9611
pos = -40, GameHeight - (14)
postype = right
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 11
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ME HUD 9612 P2]
type = Explod
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(9612) = 0
trigger1 = var(59) = 1
anim = 9612
ID = 9612
pos = -40, GameHeight - (14)
postype = right
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 11
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -1, AR ME HUD charge off]
type = RemoveExplod
triggerall = !IsHelper
trigger1 = var(59) = 1 && NumExplod(9611)
ID = 9611
ignorehitpause = 1

[State -1, AR ME HUD active off]
type = RemoveExplod
triggerall = !IsHelper
trigger1 = var(59) != 1 && NumExplod(9612)
ID = 9612
ignorehitpause = 1

[State -1, AR ME HUD fill]
type = ModifyExplod
triggerall = !IsHelper
trigger1 = NumExplod(9611)
ID = 9611
scale = var(40) / 1000.0, 1
ignorehitpause = 1

[State -1, AR ME HUD fill 2]
type = ModifyExplod
triggerall = !IsHelper
trigger1 = NumExplod(9612)
ID = 9612
scale = var(40) / 1000.0, 1
ignorehitpause = 1

;==== end AR MYSTIC EYES HUD ====


;===========================================================================
; AI Behavior
;===========================================================================
[State -1, AI Defense]
type = ChangeState
triggerall = stateno!= [120,160] 
triggerall = AILevel != 0 && RoundState = 2
triggerall = ctrl
trigger1 = InGuardDist 
trigger1 = random < 100*(AILevel**2/64.0)
value = 120

;---------------------------------------------------------------------------
[State -1, AI Recovery]
type = ChangeState
triggerall = AILevel != 0 && RoundState = 2
triggerall = HitFall = 1
triggerall = StateNo != [5200,5210]
trigger1 = CanRecover = 1
trigger1 = Random < 30*(AILevel/2**64.0)
value = IfElse(Pos Y < 0, 5210, 5200)

;---------------------------------------------------------------------------
[State -1, AI Jump Cancel]
type = ChangeState
value = 40
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A
triggerall = random < 80*(AILevel**2/64.0)
trigger1 = var(18) < 4 && var(17) = 1 && MoveContact = 1 
trigger1 = StateNo != 200
trigger1 = StateNo != [400,420]
trigger1 = (EnemyNear, StateType = A || var(16) = 2)
trigger2 = StateNo = 1012 && NumTarget(1013) && MoveType = A
trigger3 = StateNo = 1018 && NumTarget(1018) && MoveType = A 

;---------------------------------------------------------------------------
[State -1, AI Air Jump]
type = ChangeState
value = 45
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateNo = 50
triggerall = Time > 13
triggerall = Var(6) = 0
trigger1 = EnemyNear, Pos Y - Pos Y <= -70

;---------------------------------------------------------------------------
[State -1, AI Air Jump Cancel]
type = ChangeState
value = 45
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType = A
triggerall = var(16) = 1 && MoveHit = 1 && Var(18) < 4
triggerall = StateNo = [600,620]
triggerall = Var(6) = 0
trigger1 = EnemyNear, Pos Y < Pos Y 

;---------------------------------------------------------------------------
[State -1, AI Air Throw]
type = ChangeState
value = IfElse(FrontEdgeBodyDist > 50, 810, 815)
triggerall = AILevel != 0 && RoundState = 2
triggerall = var(1) = 0
triggerall = EnemyNear, StateType = A
triggerall = StateType = A
triggerall = P2BodyDist X = [0,40]
triggerall = P2BodyDist Y = [-5,5]
trigger1 = ctrl 
trigger2 = var(16) = 1 && MoveHit = 1 && var(17) = 1 && MoveContact = 1

;---------------------------------------------------------------------------
[State -1, AI Ground Throw]
type = ChangeState
value = IfElse(FrontEdgeBodyDist > 50, 800, 805)
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType = S
triggerall = EnemyNear, StateType != A
triggerall = abs(P2BodyDist X) = [0,30]
triggerall = var(0) = 0 && EnemyNear, MoveType != H
trigger1 = (ctrl || stateno = [100,101]) && random < 100*(AILevel**2/64.0)

;---------------------------------------------------------------------------
[State -1, AI 6D]
type = ChangeState
value = 231 
triggerall = AILevel != 0 && RoundState = 2
triggerall = var(15) = 0
triggerall = StateType != A
triggerall = EnemyNear, StateType = A
triggerall = IfElse(var(59) != 1, var(25) = 0, var(25) < 2 )
trigger1 = UniqHitCount > 1 && var(16) = 1 && MoveHit = 1 && var(17) = 1 && MoveContact = 1 && var(18) = [2,3]

;---------------------------------------------------------------------------
[State -1, AI 5D]
type = ChangeState
value = 230
triggerall = AILevel != 0 && RoundState = 2
triggerall = var(15) = 0
triggerall = StateType != A
triggerall = IfElse(var(59) != 1, var(25) = 0, var(25) < 2 )
trigger1 = UniqHitCount > 1 && var(16) = 1 && MoveHit = 1 && var(17) = 1 && MoveContact = 1 && var(18) = [2,3]

;---------------------------------------------------------------------------
[State -1, AI 2D]
type = ChangeState
value = 430 
triggerall = random < 100*(AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = var(15) = 0
triggerall = StateType != A
triggerall = EnemyNear, StateType = A
triggerall = IfElse(var(59) != 1, var(25) = 0, var(25) < 2 )
trigger1 = UniqHitCount > 1 && var(16) = 1 && MoveHit = 1 && var(17) = 1 && MoveContact = 1 && var(18) = [2,3]

;---------------------------------------------------------------------------
[State -1, AI j.D]
type = ChangeState
value = 630
triggerall = AILevel != 0 && RoundState = 2
triggerall = var(15) = 0
triggerall = StateType = A && Pos Y <= -70
triggerall = IfElse(var(59) != 1, var(25) = 0, var(25) < 2 )
trigger1 = UniqHitCount > 1 && var(16) = 1 && MoveHit = 1 && var(17) = 1 && MoveContact = 1 && var(18) = [2,3]

;---------------------------------------------------------------------------
[State -1, AI Seventeen Dissection]
type = ChangeState
value = 3020
triggerall = random < 35*(AILevel**2/64.0)
triggerall = Power >= 3000
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A
triggerall = abs(P2BodyDist X) <= 75
triggerall = P2BodyDist Y >= -60
triggerall = Var(15) = 0
trigger1 = (ctrl || stateno = [100,101]) 
trigger2 = var(16) = 1 && MoveHit = 1 && (var(17) = [1,2]) 
trigger3 = (ctrl && EnemyNear, MoveType = A) 
trigger4 = stateno = 5120 && time > 6 && P2MoveType = A

;---------------------------------------------------------------------------
[State -1, AI MEoDP: Instant Death]
type = ChangeState
value = 3015
triggerall = random < 35*(AILevel**2/64.0)
triggerall = var(59) = 1
triggerall = Power >= 2000
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A
triggerall = abs(P2BodyDist X) <= 75
triggerall = P2BodyDist Y >= -45
triggerall = Var(15) = 0
trigger1 = (ctrl || stateno = [100,101]) 
trigger2 = var(16) = 1 && MoveHit = 1 && (var(17) = [1,2]) 
trigger3 = (ctrl && EnemyNear, MoveType = A)
trigger4 = stateno = 5120 && time > 6 && P2MoveType = A

;---------------------------------------------------------------------------
[State -1, AI MEoDP]
type = ChangeState
value = 3010
triggerall = random < 35*(AILevel**2/64.0)
triggerall = var(59) = 0
triggerall = Power >= 2000
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A
triggerall = abs(P2BodyDist X) <= 75
triggerall = P2BodyDist Y >= -45
triggerall = Var(15) = 0
trigger1 = (ctrl || stateno = [100,101])
trigger2 = var(16) = 1 && MoveHit = 1 && (var(17) = [1,2]) 
trigger3 = (ctrl && EnemyNear, MoveType = A) 
trigger4 = stateno = 5120 && time > 6 && P2MoveType = A

;---------------------------------------------------------------------------
[State -1, AI Trump Card Edge No.2]
type = ChangeState
value = 3005
triggerall = random < 35*(AILevel**2/64.0)
triggerall = Power >= 1000 
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A
triggerall = abs(P2BodyDist X) <= 90
triggerall = P2StateType != A
triggerall = Var(15) = 0
trigger1 = (ctrl || stateno = [100,101]) 
trigger2 = var(16) = 1 && MoveHit = 1 && (var(17) = [1,2]) 
trigger3 = stateno = 5120 && time > 6 && P2MoveType = A

;---------------------------------------------------------------------------
[State -1, AI Trump Card Edge No.3]
type = ChangeState
value = 3000
triggerall = random < 35*(AILevel**2/64.0)
triggerall = Power >= 1000 
triggerall = var(59) != 2
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A
triggerall = abs(P2BodyDist X) <= 75
triggerall = P2BodyDist Y >= -70
triggerall = Var(15) = 0
trigger1 = (ctrl || stateno = [100,101]) 
trigger2 = var(16) = 1 && MoveHit = 1 && (var(17) = [1,2]) 
trigger3 = stateno = 5120 && time > 6 && P2MoveType = A 

;---------------------------------------------------------------------------
[State -1, AI A A Kick Even I Don't Understand]
type = ChangeState
value = 1005
triggerall = random < 60*(AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A
triggerall = abs(P2BodyDist X) <= 15
triggerall = P2BodyDist Y >= -70
triggerall = Var(15) = 0
trigger1 = (ctrl || stateno = [100,101])
trigger2 = (ctrl && EnemyNear, MoveType = A)
trigger3 = var(17) = 1 && MoveContact = 1
trigger4 = stateno = 5120 && time > 6 && P2MoveType = A

;---------------------------------------------------------------------------
[State -1, AI B A Kick Even I Don't Understand]
type = ChangeState
value = 1006
triggerall = random < 40*(AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A
triggerall = abs(P2BodyDist X) <= 20 
triggerall = P2BodyDist Y >= -90
triggerall = Var(15) = 0
trigger1 = (ctrl || stateno = [100,101])
trigger2 = (ctrl && EnemyNear, MoveType = A)
trigger3 = var(17) = 1 && MoveContact = 1
trigger4 = stateno = 5120 && time > 6 && P2MoveType = A

;---------------------------------------------------------------------------
[State -1, AI C A Kick Even I Don't Understand]
type = ChangeState
value = 1007
triggerall = random < 30*(AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A
triggerall = abs(P2BodyDist X) <= 25 
triggerall = P2BodyDist Y >= -105
triggerall = Var(15) = 0
triggerall = Power >= 500 
triggerall = var(59) != 2
trigger1 = (ctrl || stateno = [100,101])
trigger2 = (ctrl && EnemyNear, MoveType = A)
trigger3 = var(17) && var(18) < IfElse(var(59) != 1, 6, 7) && StateNo != 1007
trigger4 = (StateNo = [150,155])
trigger5 = stateno = 5120 && time > 6 && P2MoveType = A

;---------------------------------------------------------------------------
[State -1, AI A Trump Card No.3]
type = ChangeState
value = 1000
triggerall = random < 50*(AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A 
triggerall = abs(P2BodyDist X) <= 60
triggerall = IfElse(EnemyNear, StateType != A, P2BodyDist Y >= -100, (EnemyNear, Pos Y = [-25,-75]))
triggerall = var(15) = 0
triggerall = EnemyNear, MoveType != A
trigger1 = (ctrl || stateno = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1

;---------------------------------------------------------------------------
[State -1, AI B Trump Card No.3]
type = ChangeState
value = 1001
triggerall = random < 40*(AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A 
triggerall = abs(P2BodyDist X) = [65,85]
triggerall = IfElse(EnemyNear, StateType != A, P2BodyDist Y >= -100, (EnemyNear, Pos Y = [-25,-75]))
triggerall = var(15) = 0
triggerall = EnemyNear, MoveType != A
trigger1 = (ctrl || stateno = [100,101]) && random < 45*(AILevel**2/64.0)
trigger2 = var(16) = 1 && MoveHit = 1 && var(17) = 1 && MoveContact = 1

;---------------------------------------------------------------------------
[State -1, AI C Trump Card No.3]
type = ChangeState
value = 1002
triggerall = random < 30*(AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A 
triggerall = Power >= 500 
triggerall = var(59) != 2
triggerall = abs(P2BodyDist X) <= 115
triggerall = IfElse(EnemyNear, StateType != A, P2BodyDist Y >= -100, (EnemyNear, Pos Y = [-25,-75]))
triggerall = var(15) = 0
triggerall = EnemyNear, MoveType != A
trigger1 = (ctrl || stateno = [100,101])
trigger2 = var(16) = 1 && MoveHit = 1 && var(17) && var(18) < IfElse(var(59) = 0, 6, 7) && StateNo != 1002
trigger3 = (StateNo = [150,155]) 

;---------------------------------------------------------------------------
[State -1, AI A Trump Card No.2]
type = ChangeState
value = 1010
triggerall = random < 100*(AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A 
triggerall = abs(P2BodyDist X) <= 50
triggerall = EnemyNear, StateType != A
triggerall = var(15) = 0
triggerall = EnemyNear, MoveType != A
trigger1 = var(16) = 1 && MoveHit = 1 && var(17) = 1

;---------------------------------------------------------------------------
[State -1, AI B Trump Card No.2]
type = ChangeState
value = 1011
triggerall = random < 80*(AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A 
triggerall = abs(P2BodyDist X) <= 70
triggerall = EnemyNear, StateType != A
triggerall = var(15) = 0
triggerall = EnemyNear, MoveType != A
trigger1 = var(16) = 1 && MoveHit = 1 && var(17) = 1 && var(18) > 1 

;---------------------------------------------------------------------------
[State -1, AI C Trump Card No.2]
type = ChangeState
value = 1012
triggerall = random < 15*(AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A 
triggerall = Power >= 500 
triggerall = abs(P2BodyDist X) <= 110
triggerall = EnemyNear, StateType != A
triggerall = var(15) = 0
triggerall = EnemyNear, MoveType != A
trigger1 = var(16) = 1 && MoveHit = 1 && var(17) && var(18) < IfElse(var(59) = 0, 6, 7) && StateNo != 1012 
trigger2 = (StateNo = [150,155])
trigger3 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, A Engrossed Counterattack]
type = ChangeState
value = 1016
triggerall = random < 60*(AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2BodyDist X = [0,40]
triggerall = EnemyNear, Pos Y > Pos Y 
triggerall = StateType = A
triggerall = Pos Y <= -50
triggerall = var(15) = 0
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1 && var(18) < 6

;---------------------------------------------------------------------------
[State -1, B Engrossed Counterattack]
type = ChangeState
value = 1016
triggerall = random < 60*(AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2BodyDist X = [0,50]
triggerall = EnemyNear, Pos Y > Pos Y 
triggerall = StateType = A
triggerall = Pos Y <= -50
triggerall = var(15) = 0
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1 && var(18) < 6

;---------------------------------------------------------------------------
[State -1, C Engrossed Counterattack]
type = ChangeState
value = 1017
triggerall = random < 60*(AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = Power >= 500 
triggerall = var(59) != 2
triggerall = P2BodyDist X = [0,60]
triggerall = EnemyNear, Pos Y > Pos Y 
triggerall = StateType = A
triggerall = Pos Y <= -50
triggerall = var(15) = 0
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) && var(18) < IfElse(var(59) = 0, 7, 8) && StateNo != 1022
trigger3 = (StateNo = [150,155])
trigger4 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, AI God Speed Flash]
type = ChangeState
value = 2000
triggerall = random < 50*(AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A
triggerall = Power >= 500 
triggerall = var(59) != 2
triggerall = IfElse(var(59) != 1, var(25) = 0, var(25) < 2 )
trigger1 = var(16) = 1 && MoveHit = 1 && var(17) && var(18) < 7 && StateNo != 2000 

;---------------------------------------------------------------------------
[State -1, AI God Speed Strike]
type = ChangeState
value = 2005
triggerall = random < 50*(AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A
triggerall = Power >= 500 
triggerall = var(59) != 2
triggerall = IfElse(var(59) != 1, var(25) = 0, var(25) < 2 )
trigger1 = var(16) = 1 && MoveHit = 1 && var(17) && var(18) < 7 && StateNo != 2005 

;---------------------------------------------------------------------------
[State -1, AI 5A]
type = ChangeState
value = 200 
triggerall = random < 100 * (AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = abs(P2BodyDist X) <= 40
triggerall = P2StateType != A
triggerall = StateType != A
triggerall = var(15) = 0
triggerall = P2MoveType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (var(17) = 1 && MoveContact = 1 || Time > 4) && (var(18) = 1) 

;---------------------------------------------------------------------------
[State -1, AI 5B]
type = ChangeState
value = 210 
triggerall = random < 100 * (AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = abs(P2BodyDist X) <= 40
triggerall = IfElse(P2StateType != A, abs(P2BodyDist Y) <= 40, abs(P2BodyDist Y) = [20, 40])
triggerall = StateType != A
triggerall = P2StateNo != 5120
triggerall = P2MoveType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1 && var(18) < 2

;---------------------------------------------------------------------------
[State -1, AI 6C]
type = ChangeState
value = 221 
triggerall = Random < 100*(AILevel/2**64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = abs(P2BodyDist X) <= 55
triggerall = IfElse(P2StateType != A, abs(P2BodyDist Y) <= 30, abs(P2BodyDist Y) = [10,30])
triggerall = StateType != A
triggerall = var(15) = 0
triggerall = P2MoveType != A
trigger1 = (ctrl || (StateNo = [100,101]))
trigger2 = var(16) = 1 && var(17) = 1 && MoveHit = 1 && (var(18) = [2,3]) 

;---------------------------------------------------------------------------
[State -1, AI 5C]
type = ChangeState
value = 220
triggerall = Random < 100*(AILevel/2**64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = abs(P2BodyDist X) <= 55
triggerall = IfElse(P2StateType != A, abs(P2BodyDist Y) <= 30, abs(P2BodyDist Y) = [10,30])
triggerall = var(15) = 0
triggerall = P2MoveType != A
triggerall = StateType != A
triggerall = IfElse(var(59) != 1, var(25) = 0, var(25) < 2 )
trigger1 = var(17) = 1 && MoveContact = 1 && var(18) < 4

;---------------------------------------------------------------------------
[State -1, AI 2A]
type = ChangeState
value = 400
triggerall = random < 100 * (AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = abs(P2BodyDist X) <= 40
triggerall = IfElse(P2StateType != A, abs(P2BodyDist Y) <= 30, abs(P2BodyDist Y) = [10,30]) 
triggerall = StateType != A
triggerall = var(15) = 0
triggerall = P2MoveType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (var(17) = 1 && MoveContact = 1 || Time > 4) && (var(18) = 1)

;---------------------------------------------------------------------------
[State -1, AI 2B]
type = ChangeState
value = 410
triggerall = random < 100 * (AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = abs(P2BodyDist X) <= 50
triggerall = var(15) = 0
triggerall = P2MoveType != A
triggerall = IfElse(P2StateType != A, abs(P2BodyDist Y) <= 40, abs(P2BodyDist Y) = [10, 40])
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1 && var(18) < 2

;---------------------------------------------------------------------------
[State -1, AI 2C]
type = ChangeState
value = 420
triggerall = random < 100 * (AILevel**2/64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = abs(P2BodyDist X) <= 40
triggerall = var(15) = 0
triggerall = P2MoveType != A
triggerall = P2StateType != A
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1 && var(18) < 3

;---------------------------------------------------------------------------
[State -1, AI j.A]
type = ChangeState
value = 600
triggerall = Random < 100*(AILevel/2**64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2BodyDist X = [0,60]
triggerall = (P2BodyDist Y = [-75,-25]) 
triggerall = var(15) = 0
triggerall = P2MoveType != A
triggerall = StateType = A
trigger1 = (ctrl || StateNo = 110 && Vel X > 0)

;---------------------------------------------------------------------------
[State -1, AI j.B]
type = ChangeState
value = 610
triggerall = Random < 100*(AILevel/2**64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2BodyDist X = [0,40]
triggerall = (P2BodyDist Y = [-10,40]) 
triggerall = var(15) = 0
triggerall = P2MoveType != A
triggerall = StateType = A
trigger1 = (ctrl || StateNo = 110 && Vel X > 0)
trigger2 = var(17) = 1 && MoveContact = 1 && var(18) < 2

;---------------------------------------------------------------------------
[State -1, AI j.C]
type = ChangeState
value = 620
triggerall = Random < 100*(AILevel/2**64.0)
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2BodyDist X = [0,60]
triggerall = (P2BodyDist Y = [-40,0]) 
triggerall = var(15) = 0
triggerall = P2MoveType != A
triggerall = StateType = A
trigger1 = (ctrl || StateNo = 110 && Vel X > 0)
trigger2 = var(17) = 1 && MoveContact = 1 && var(18) < 3

;===========================================================================
; Player Behavior
;===========================================================================

;---------------------------------------------------------------------------
[State -1, Seventeen Dissection]
type = ChangeState
value = 3020
triggerall = Power >= 3000
triggerall = AILevel = 0
triggerall = StateType != A
triggerall = IfElse(P2Dist X >= 0, command = "ar_17", command = "ar_17_r")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = IfElse(var(59) = 0, (var(17) = [1,2]), var(17))
trigger3 = (StateNo = [150,155]) && random < 10*(AILevel**2/64.0)
trigger3 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, MEoDP: Instant Death]
type = ChangeState
value = 3015
triggerall = var(59) = 1
triggerall = Power >= 2000
triggerall = AILevel = 0
triggerall = StateType != A
triggerall = IfElse(P2Dist X >= 0, command = "ar_meodp", command = "ar_meodp_r")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17)
trigger3 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, MEoDP]
type = ChangeState
value = 3010
triggerall = var(59) = 0
triggerall = Power >= 2000
triggerall = AILevel = 0
triggerall = StateType != A
triggerall = IfElse(P2Dist X >= 0, command = "ar_meodp", command = "ar_meodp_r")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = [1,2]
trigger3 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, Trump Card Edge No.2]
type = ChangeState
value = 3005
triggerall = Power >= 1000 
triggerall = var(59) != 2
triggerall = AILevel = 0
triggerall = StateType != A
triggerall = IfElse(P2Dist X >= 0, command = "ar_tc2", command = "ar_tc2_r")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = [1,2]
trigger3 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, Trump Card Edge No.3]
type = ChangeState
value = 3000
triggerall = Power >= 1000 
triggerall = var(59) != 2
triggerall = AILevel = 0
triggerall = StateType != A
triggerall = IfElse(P2Dist X >= 0, command = "ar_tc3", command = "ar_tc3_r")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = [1,2]
trigger3 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, God Speed Flash]
type = ChangeState
value = 2000
triggerall = AILevel = 0
triggerall = StateType != A
triggerall = IfElse(P2Dist X >= 0, command = "QCF_a", command = "QCB_a")
triggerall = Power >= 500 
triggerall = var(59) != 2
triggerall = IfElse(var(59) != 1, var(25) = 0, var(25) < 2 )
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) && var(18) < 7 && StateNo != 2000
trigger3 = (StateNo = [150,155])
trigger4 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, God Speed Strike]
type = ChangeState
value = 2005
triggerall = AILevel = 0
triggerall = StateType != A
triggerall = IfElse(P2Dist X >= 0, command = "QCB_a", command = "QCF_a")
triggerall = Power >= 500 
triggerall = var(59) != 2
triggerall = IfElse(var(59) != 1, var(25) = 0, var(25) < 2 )
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) && var(18) < 7 && StateNo != 2005
trigger3 = (StateNo = [150,155])
trigger4 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, A A Kick Even I Don't Understand]
type = ChangeState
value = 1005
triggerall = AILevel = 0
triggerall = StateType != A
triggerall = IfElse(P2Dist X >= 0, command = "DP_x", command = "RDP_x")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1
trigger3 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, B A Kick Even I Don't Understand]
type = ChangeState
value = 1006
triggerall = AILevel = 0
triggerall = StateType != A
triggerall = IfElse(P2Dist X >= 0, command = "DP_y", command = "RDP_y")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1
trigger3 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, C A Kick Even I Don't Understand]
type = ChangeState
value = 1007
triggerall = AILevel = 0
triggerall = StateType != A
triggerall = IfElse(P2Dist X >= 0, command = "DP_z", command = "RDP_z")
triggerall = Power >= 500 
triggerall = var(59) != 2
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) && var(18) < IfElse(var(59) != 1, 6, 7) && StateNo != 1007
trigger3 = (StateNo = [150,155])
trigger4 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, A Trump Card No.2]
type = ChangeState
value = 1010
triggerall = AILevel = 0
triggerall = StateType != A 
triggerall = IfElse(P2Dist X >= 0,  command = "QCB_x", command = "QCF_x")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1
trigger3 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, B Trump Card No.2]
type = ChangeState
value = 1011
triggerall = AILevel = 0
triggerall = StateType != A 
triggerall = IfElse(P2Dist X >= 0,  command = "QCB_y", command = "QCF_y")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1
trigger3 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, C Trump Card No.2]
type = ChangeState
value = 1012
triggerall = Power >= 500 
triggerall = var(59) != 2
triggerall = AILevel = 0
triggerall = StateType != A 
triggerall = IfElse(P2Dist X >= 0,  command = "QCB_z", command = "QCF_z")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) && var(18) < IfElse(var(59) = 0, 6, 7) && StateNo != 1012
trigger3 = (StateNo = [150,155])
trigger4 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, A Trump Card No.3]
type = ChangeState
value = 1000
triggerall = AILevel = 0
triggerall = StateType != A 
triggerall = IfElse(P2Dist X >= 0,  command = "QCF_x", command = "QCB_x")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1
trigger3 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, B Trump Card No.3]
type = ChangeState
value = 1001
triggerall = AILevel = 0
triggerall = StateType != A 
triggerall = IfElse(P2Dist X >= 0, command = "QCF_y", command = "QCB_y")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1
trigger3 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, C Trump Card No.3]
type = ChangeState
value = 1002
triggerall = AILevel = 0
triggerall = Power >= 500 
triggerall = var(59) != 2
triggerall = StateType != A 
triggerall = IfElse(P2Dist X >= 0, command = "QCF_z", command = "QCB_z")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) && var(18) < IfElse(var(59) = 0, 6, 7) && StateNo != 1002
trigger3 = (StateNo = [150,155])
trigger4 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, A Engrossed Counterattack]
type = ChangeState
value = 1015
triggerall = AILevel = 0
triggerall = command = "DD_x"
triggerall = StateType = A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1 && var(18) < 6
trigger3 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, B Engrossed Counterattack]
type = ChangeState
value = 1016
triggerall = AILevel = 0
triggerall = command = "DD_y"
triggerall = StateType = A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1 && var(18) < 6
trigger3 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, C Engrossed Counterattack]
type = ChangeState
value = 1017
triggerall = AILevel = 0
triggerall = Power >= 500 
triggerall = var(59) != 2
triggerall = StateType = A 
triggerall = command = "DD_z"
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) && var(18) < IfElse(var(59) = 0, 6, 7) && StateNo != 1017
trigger3 = (StateNo = [150,155])
trigger4 = stateno = 5120 && time > 6

;---------------------------------------------------------------------------
[State -1, Burst Engage]
type = ChangeState
value = 700
triggerall = AILevel = 0
triggerall = command = "ar_me" && command != "ar_gsd"   ;Abstract Reordered: X, full Mystic Eyes gauge
triggerall = var(59) = 0
triggerall = var(40) >= 1000
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1
trigger3 = StateNo = [150,155]

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = StateType != A
triggerall = AILevel = 0
triggerall = command = "up"
trigger1 = var(18) < 4 && var(17) = 1 && MoveContact = 1
trigger1 = StateNo != 200
trigger1 = StateNo != [400,420]
trigger2 = StateNo = 1012 && NumTarget(1013) && MoveType = A
trigger3 = StateNo = 1018 && NumTarget(1018) && MoveType = A

;---------------------------------------------------------------------------
[State -1, Air Jump]
type = ChangeState
value = 45
triggerall = AILevel = 0
triggerall = StateNo = 50
triggerall = AILevel = 0
triggerall = Time > 13
triggerall = Var(6) = 0
trigger1 = command = "up"

;---------------------------------------------------------------------------
[State -1, Air Jump Cancel]
type = ChangeState
value = 45
triggerall = AILevel = 0
triggerall = StateType = A
triggerall = var(16) = 1 && MoveHit = 1 && Var(18) < 4
triggerall = StateNo = [600,620]
triggerall = Var(6) = 0
trigger1 = command = "up"

;---------------------------------------------------------------------------
[State -1, Air Dash Cancel]
type = ChangeState
value = 110
triggerall = AILevel = 0
triggerall = StateNo = [600,620]
triggerall = Var(7) = 0
triggerall = command = "FF"
trigger1 = Var(17)

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = IfElse(command = "FF", 110, 115)
triggerall = AILevel = 0
triggerall = StateNo = 50
triggerall = Pos Y <= -50
triggerall = Var(7) = 0
triggerall = command = "FF" || command = "BB"
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Run]
type = ChangeState
value = IfElse(P2Dist X < 0, 105, 100)
triggerall = AILevel = 0
triggerall = StateType = S
triggerall = command = "FF"
triggerall = Anim != 702
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Backhop]
type = ChangeState
triggerall = AILevel = 0
value = IfElse(P2Dist X < 0, 100, 105)
triggerall = StateType = S
triggerall = command = "BB"
triggerall = Anim != 702
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Air Throw]
type = ChangeState
value = IfElse(command != "holdback", 810, 815)
triggerall = AILevel = 0
triggerall = StateType = A
triggerall = command = "throw"
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1

;---------------------------------------------------------------------------
[State -1, Ground Throw]
type = ChangeState
value = IfElse(command != "holdback", 800, 805)
triggerall = AILevel = 0
triggerall = StateType = S
triggerall = ctrl
trigger1 = command = "throw"

;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200 
triggerall = AILevel = 0
triggerall = command != "holddown"
triggerall = command = "ar_btn_a" && command != "ar_gsd"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 400 && var(17)
trigger3 = Time > 4 && (var(18) = 1)

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210 
triggerall = AILevel = 0
triggerall = command != "holddown"
triggerall = command = "ar_btn_b"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1 && var(18) < 2

;---------------------------------------------------------------------------
[State -1, 6C]
type = ChangeState
value = 221 
triggerall = AILevel = 0
triggerall = command != "holddown"
triggerall = command = "fwd_z"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (var(17) = 1 && MoveContact = 1) && (var(18) < 4) 

;---------------------------------------------------------------------------
[State -1, 5C]
type = ChangeState
value = 220
triggerall = AILevel = 0
triggerall = command != "holddown"
triggerall = command = "ar_btn_c"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1 && var(18) < 3

;---------------------------------------------------------------------------
[State -1, 6D]
type = ChangeState
value = 231 
triggerall = AILevel = 0
triggerall = command != "holddown"
triggerall = command = "ar_gsd" && command = "holdfwd"
triggerall = StateType != A
triggerall = IfElse(var(59) != 1, var(25) = 0, var(25) < 2 )
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1 && var(18) < 4

;---------------------------------------------------------------------------
[State -1, 5D]
type = ChangeState
value = 230 
triggerall = AILevel = 0
triggerall = command != "holddown"
triggerall = command = "ar_gsd"
triggerall = StateType != A
triggerall = IfElse(var(59) != 1, var(25) = 0, var(25) < 2 )
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1 && var(18) < 4

;---------------------------------------------------------------------------
[State -1, 2A]
type = ChangeState
value = 400
triggerall = AILevel = 0
triggerall = command = "holddown"
triggerall = command = "ar_btn_a" && command != "ar_gsd"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && var(17)
trigger3 = Time > 2 && (var(18) = 1) 

;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 410
triggerall = AILevel = 0
triggerall = command = "holddown"
triggerall = command = "ar_btn_b"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1 && var(18) < 2

;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = AILevel = 0
triggerall = command = "holddown"
triggerall = command = "ar_btn_c"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1 && var(18) < 3

;---------------------------------------------------------------------------
[State -1, 2D]
type = ChangeState
value = 430
triggerall = AILevel = 0
triggerall = command = "holddown"
triggerall = command = "ar_gsd"
triggerall = StateType != A
triggerall = IfElse(var(59) != 1, var(25) = 0, var(25) < 2 )
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && MoveContact = 1 && var(18) < 4

;---------------------------------------------------------------------------
[State -1, j.A]
type = ChangeState
value = 600
triggerall = AILevel = 0
triggerall = command = "ar_btn_a" && command != "ar_gsd"
triggerall = StateType = A
trigger1 = ctrl || StateNo = 110 && Vel X > 0

;---------------------------------------------------------------------------
[State -1, j.B]
type = ChangeState
value = 610
triggerall = AILevel = 0
triggerall = command = "ar_btn_b"
triggerall = StateType = A
trigger1 = ctrl || StateNo = 110 && Vel X > 0
trigger2 = var(17) = 1 && MoveContact = 1 && var(18) < 2

;---------------------------------------------------------------------------
[State -1, j.C]
type = ChangeState
value = 620
triggerall = AILevel = 0
triggerall = command = "ar_btn_c"
triggerall = StateType = A
trigger1 = ctrl || StateNo = 110 && Vel X > 0 
trigger2 = var(17) = 1 && MoveContact = 1 && var(18) < 3

;---------------------------------------------------------------------------
[State -1, j.D]
type = ChangeState
value = 630
triggerall = AILevel = 0
triggerall = command = "ar_gsd"
triggerall = StateType = A
triggerall = IfElse(var(59) != 1, var(25) = 0, var(25) < 2 )
trigger1 = ctrl || (StateNo = [100,101]) 
trigger2 = var(17) = 1 && MoveContact = 1 && var(18) < 4
