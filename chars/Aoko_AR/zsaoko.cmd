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
	command = ~D, DB, B, x
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
	command = ~D, DF, F, x
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
name = "throw"
command = y
time = 1

[Command]
name = "burst"
command = a+x
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
name = "back_a"
command = /$B,x
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
name = "down_a"
command = /$D,x
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
name = "fwd_a"
command = /$F,x
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
name = "up_a"
command = /$U,x
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
name = "ar_btn_x"
command = x
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

[Command]
name = "hold_a"
command = /x
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

;Abstract Reordered: A/B/C = light/medium/heavy, X = Starmine, Y = throw, Z = parry,
;A+B+C = burst, A+X = Burst Mode. Supers: 236236AB, 214214AB, 236236BC, Lv3 ~F, B, DB, D, DF, F, C
;(_r = the same motion when the opponent is behind her, like her other commands)
[Command]
name = "ar_parry"
command = z
time = 1

[Command]
name = "ar_burst"
command = a+b+c
time = 1

[Command]
name = "ar_mde"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "ar_mde_r"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[Command]
name = "ar_mse"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[Command]
name = "ar_mse_r"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "ar_sb"
command = ~D, DF, F, D, DF, F, b+c
time = 30

[Command]
name = "ar_sb_r"
command = ~D, DB, B, D, DB, B, b+c
time = 30

[Command]
name = "ar_retro"
command = ~F, B, DB, D, DF, F, c
time = 30

[Command]
name = "ar_retro_r"
command = ~B, F, DF, D, DB, B, c
time = 30

[Statedef -1]

;---------------------------------------------------------------------------
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

[State -1, AR burst HUD 9601 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9601) = 0
trigger1 = var(45) = 0
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
trigger1 = var(45) > 0
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
trigger1 = var(45) > 0
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
trigger1 = var(45) = 0
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
trigger1 = var(45) > 0
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
trigger1 = var(45) > 0
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
trigger1 = var(45) > 0
trigger1 = NumExplod(9601)
ID = 9601
ignorehitpause = 1

[State -1, AR burst HUD dim off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = var(45) = 0
trigger1 = NumExplod(9602) || NumExplod(9603)
ID = 9602
ignorehitpause = 1

[State -1, AR burst HUD bar off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = var(45) = 0
trigger1 = NumExplod(9603)
ID = 9603
ignorehitpause = 1

[State -1, AR burst HUD bar]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(9603)
ID = 9603
scale = (4500 - var(45)) / 4500.0, 1
ignorehitpause = 1

[State -1, AR burst]
type = ChangeState
value = ifelse(StateType = A, 7751, 7750)
triggerall = !ishelper
triggerall = AILevel = 0   ;players only (her var 59 is Burst Mode)
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


;===========================================================================
; AI Behavior
;===========================================================================

 ;--------------------------------------------
[State -1, AI Guard]
type = ChangeState
value = 120
triggerall = movetype !=H || stateno=5210
triggerall = roundstate = 2
triggerall = stateno!=[120,155]
triggerall = statetype!=A
triggerall=AILevel>0 && p2movetype!=H
triggerall = fvar(15) >-25
triggerall = ((EnemyNear, movetype=A&& enemy,numproj>0)||(  enemy,numproj>0 || enemynear,hitdefattr = SCA,AA))
;triggerall = (statetype!=A)||(statetype=A && fvar(15) >5)
triggerall =movetype=I || stateno=5210 || (helper(10003),var(7)=1)
Triggerall =  Random < (113*AILevel)
triggerall =InGuardDist||((EnemyNear, movetype=A&& enemy,numproj>0)||( enemy,numproj>0 || enemynear,hitdefattr = SCA,AA))
trigger1 = ctrl ||(stateno=[10,20])||stateno=100|| stateno=[10,12]


;;---------------------------------------------------------------------------
;;[State -1, Debug Recovery]
;;type = ChangeState
;;triggerall = HitFall = 1
;;triggerall = StateNo != [5200,5210]
;;trigger1 = CanRecover = 1
;;value = Cond(Pos Y < 0, 5210, 5200)
;
;;---------------------------------------------------------------------------
;[State -1, AI Recovery]
;type = ChangeState
;triggerall = AILevel != 0 && RoundState = 2
;triggerall = HitFall = 1
;triggerall = StateNo != [5200,5210]
;trigger1 = CanRecover = 1
;trigger1 = Random < 30*(AILevel/2**64.0)
;value = Cond(Pos Y < 0, 5210, 5200)
;
;---------------------------------------------------------------------------
[State -1, AI Air Dash]
type = ChangeState
value = 110
triggerall = AILevel != 0
triggerall = Random < 75 * AILevel
triggerall = StateNo = 50
triggerall = Pos Y <= -60
triggerall = P2MoveType != A
triggerall = Helper(10003), var(14) = 1
triggerall = P2Dist X >= 50
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, AI Air Dash Back]
type = ChangeState
value = 115
triggerall = AILevel != 0
triggerall = Random < 75 * AILevel
triggerall = StateNo = 50
triggerall = Pos Y <= -60
triggerall = P2MoveType != A
triggerall = Helper(10003), var(15) = 1
triggerall = P2Dist X >= 50
trigger1 = ctrl

;;-------------------------------------------------
[State -1, AI Jump]
type = ChangeState
triggerall = stateno!=40
triggerall = statetype!=A
triggerall = roundstate = 2
triggerall = AILevel>0
trigger1= helper(10003), var(30)=1 &&(ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) 
trigger2 = Helper(10003), var(30) = 1 && var(8) = 1
trigger2 = StateNo = 421
value = 40

;;-------------------------------------------------
[State -1, AI Air Jump]
type = ChangeState
triggerall = stateno!=45 && prevstateno!=45
triggerall = statetype=A
triggerall = roundstate = 2
triggerall = AILevel>0
triggerall= var(6)=0
trigger1= Helper(10003), var(32) = 1 && (p2movetype= A && ctrl)
trigger2 = Helper(10003), var(32) = 1 && StateNo = 610 && var(8) = 1
trigger3 = Helper(10003), var(32) = 1 && StateNo = 630 && var(8) = 1
value = 45

;---------------------------------------------------------------------------
[State -1, AI Retroflow - Genesis Light Year]
type = ChangeState
value = 3020
triggerall = random < 80 * AILevel
triggerall = AILevel != 0 && RoundState = 2
triggerall = Cond(var(59) != 1, Power = 3000, Power > 0)
triggerall = StateType != A
triggerall = P2Dist Y >= -80
trigger1 = ctrl && (var(34) <= 0|| P2MoveType = A) && P2BodyDist X <= 50 && Random < AILevel * Cond(P2MoveType != A, 5, 50)  && P2StateType != L
trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && !var(35) && AILevel >= 4 && var(34) = 3020  && P2StateType != L
trigger3 = var(34) = 3020 && var(35) && AILevel >= 4  && P2StateType != L

;---------------------------------------------------------------------------
[State -1, AI Severe Break Slider]
type = ChangeState
value = 3015
triggerall = random < 90 * AILevel
triggerall = AILevel != 0 && RoundState = 2
triggerall = Power > 0 && var(59) = 1
triggerall = P2Dist Y >= -110 
triggerall = StateType != A
trigger1 = ctrl && (var(34) <= 0|| P2MoveType = A) && Random < AILevel * Cond(P2MoveType != A, 5, 50)
trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && !var(35) && AILevel >= 4 && var(34) = 3010
trigger3 = var(34) = 3010 && var(35) && AILevel >= 4

;---------------------------------------------------------------------------
[State -1, AI Severe Break]
type = ChangeState
value = 3010
triggerall = random < 70 * AILevel 
triggerall = AILevel != 0 && RoundState = 2
triggerall = var(59) = 0
triggerall = Power >= 2000
triggerall = P2Dist Y >= -110 
triggerall = StateType != A
trigger1 = ctrl && (var(34) <= 0|| P2MoveType = A)  && Random < AILevel * Cond(P2MoveType != A, 5, 50)
trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && !var(35) && AILevel >= 4 && var(34) = 3010
trigger3 = var(34) = 3010 && var(35) && AILevel >= 4

;---------------------------------------------------------------------------
[State -1, AI Aoko Moonsault Edge]
type = ChangeState
value = 3005
triggerall = random < 60 * AILevel
triggerall = AILevel != 0 && RoundState = 2
triggerall = Var(15) = 0
triggerall = P2Dist Y >= -100
triggerall = Cond(var(59) = 0, Power >= 1000, Power > 0) 
triggerall = var(59) != 2
triggerall = StateType != A
;triggerall = Var(15) = 0
trigger1 = ctrl && (var(34) = 0|| P2MoveType = A) && P2BodyDist X <= 60 && P2StateType != A
trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && !var(35) && AILevel >= 4 && var(34) = 3005
trigger3 = var(34) = 3005 && var(35) && AILevel >= 4

;---------------------------------------------------------------------------
[State -1, AI Magic Draw Edge]
type = ChangeState
value = 3000
triggerall = random < 60 * AILevel
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2StateType != A
triggerall = Cond(var(59) = 0, Power >= 1000, Power > 0) 
triggerall = var(59) != 2
triggerall = StateNo != 3000
triggerall = StateType != A
triggerall = Var(25) = 0
triggerall = helper(10003),var(8)=0 ;Don't use this on wakeup
triggerall = helper(10003),var(23)=1 ;Listen for projectile rules
trigger1 = ctrl && var(34) <= 0
trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && !var(35) && AILevel >= 4 && var(34) = 3000
trigger3 = var(34) = 3000 && var(35) && AILevel >= 4
;---------------------------------------------------------------------------
[State -1, AI Starmine Bomber (Set)]
type = ChangeState
value = 2000
triggerall = AILevel != 0 && RoundState = 2
triggerall = Random < 20 * AILevel
triggerall = P2Dist Y >= -100
triggerall = StateType != A
triggerall = P2Dist Y >= -100
triggerall = Cond(var(59) = 0, Power >= 500, Power > 0)
triggerall = var(26) = 0
triggerall = Helper(10003), var(8) = 0
trigger1 = var(35) && AIlevel >=4&&var(34)=2000
trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && AIlevel >=4&&var(34)=2000 && P2BodyDist X = [50,100]
trigger3 = ctrl && var(34) <= 0 && P2MoveType != A && P2BodyDist X = [50,100]

;---------------------------------------------------------------------------
[State -1, AI Air Starmine Bomber (Set)]
type = ChangeState
value = 2005
triggerall = AILevel != 0 && RoundState = 2
triggerall = Random < 30 * AILevel
triggerall = StateType = A
triggerall = P2Dist Y = [-10, 150]
triggerall = Cond(var(59) = 0, Power >= 500, Power > 0) 
triggerall = var(59) != 2
triggerall = var(26) = 0
triggerall = Pos Y <= -60
trigger1 = var(35) && AIlevel >=4&&var(34)=2005
trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && AIlevel >=4&&var(34)=2005
trigger3 = ctrl && var(34) <= 0 && P2MoveType != A && P2BodyDist X = [20,100]

;---------------------------------------------------------------------------
[State -1, AI Starmine Bomber (Detonate)]
type = ChangeState
value = 2000
triggerall = AILevel != 0 && RoundState = 2
triggerall = Random < 20 * AILevel
triggerall = P2Dist Y >= -80
triggerall = StateType != A
triggerall = Var(15) = 0
triggerall = P2Dist Y >= -60
triggerall = Cond(var(59) = 0, Power >= 500, Power > 0)
triggerall = var(26) = 1
triggerall = Helper(10003), var(8) = 0
trigger1 = var(35) && AIlevel >=4&&var(34)=2000
trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && ((AIlevel >=4&&var(34)=2000) || var(27) = 1) && P2MoveType != A ;|| var(28) > 75 && var(27) = 0 && P2BodyDist X >= 50) && P2MoveType != A
trigger3 = ctrl && var(34) <= 0 && P2MoveType != A && var(27) = 1 && P2BodyDist X = [50,105]

;---------------------------------------------------------------------------
[State -1, AI Air Starmine Bomber (Detonate)]
type = ChangeState
value = 2005
triggerall = AILevel != 0 && RoundState = 2
triggerall = Random < 30 * AILevel
triggerall = StateType = A
triggerall = P2Dist Y = [-10, 150]
triggerall = Cond(var(59) = 0, Power >= 500, Power > 0) 
triggerall = var(59) != 2
triggerall = var(26) = 1
triggerall = Pos Y <= -60
trigger1 = var(35) && AIlevel >=4&&var(34)=2005
trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && ((AIlevel >=4&&var(34)=2005) || var(27) = 1) && P2MoveType != A; 

;---------------------------------------------------------------------------
[State -1, AI Burst Engage]
type = ChangeState
value = 700
triggerall = random < 40 * AILevel
triggerall = AILevel != 0 && RoundState = 2
triggerall = var(59) = 0
triggerall = Power >= 2000
trigger1 = var(16) = 1 && Var(17) = 1
trigger2 = P2BodyDist X <= 25 && StateNo = [150,155]
trigger3 = 0   ;Abstract Reordered: not while being hit
trigger4 = var(35) && AIlevel >=4&&var(34)=700
trigger5 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && AIlevel >=4&&var(34)=700
trigger6 = ctrl && var(34) <= 0 && P2BodyDist X = [30,100]

;---------------------------------------------------------------------------
[State -1, AI A Aoko Moonsault]
type = ChangeState
value = 1005
triggerall = AILevel != 0 && RoundState = 2
triggerall = random < 50 * AILevel
triggerall = P2Dist Y >= -50
triggerall = P2StateType != L
triggerall = StateType != A
triggerall = Var(15) = 0
triggerall = P2StateNo != [120,155]
trigger1 = var(35) && AIlevel >=4&&var(34)=1005
trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && AIlevel >=4&&var(34)=1005

;---------------------------------------------------------------------------
[State -1, AI B Aoko Moonsault]
type = ChangeState
value = 1006
triggerall = AILevel != 0 && RoundState = 2
triggerall = random < 50 * AILevel
triggerall = P2Dist Y >= -70
triggerall = P2StateType != L
triggerall = StateType != A
triggerall = Var(15) = 0
triggerall = P2StateNo != [120,155]
trigger1 = ctrl && P2MoveType = A && P2BodyDist X <= 40
trigger2 = var(44) && P2MoveType = A && P2BodyDist X <= 40
trigger3 = var(35) && AIlevel >=4&&var(34)=1006
trigger4 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && AIlevel >=4&&var(34)=1006

;---------------------------------------------------------------------------
[State -1, AI C Aoko Moonsault]
type = ChangeState
value = 1007
triggerall = random < 20 * AILevel
triggerall = AILevel != 0 && RoundState = 2
triggerall = Var(15) = 0
triggerall = P2Dist Y >= -100
triggerall = Cond(var(59) = 0, Power >= 500, Power > 0) 
triggerall = StateType != A
triggerall = var(59) != 2
triggerall = StateNo != 1007
trigger1 = (StateNo = [150,155]) && P2BodyDist X <= 20
trigger2 = var(44) && P2MoveType = A && P2BodyDist X <= 20 && P2StateType != A
trigger3 = var(35) && AIlevel >=4&&var(34)=1007
trigger3 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && AIlevel >=4&&var(34)=1007

;---------------------------------------------------------------------------
[State -1, AI A Magic Draw]
type = ChangeState
value = 1000
triggerall = AILevel != 0 && RoundState = 2
triggerall = random < 100 * AILevel
triggerall = StateType != A
triggerall = Var(25) = 0
triggerall = helper(10003),var(8)=0 ;Don't use this on wakeup
triggerall = helper(10003),var(20)=1 ;Listen for projectile rules
triggerall = var(18) < 5
trigger1 = ctrl && var(34) <= 0
trigger2 = var(35) && AIlevel >=4&&var(34)=1000
trigger3 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && AIlevel >=4&&var(34)=1000

;---------------------------------------------------------------------------
[State -1, AI B Magic Draw]
type = ChangeState
value = 1001
triggerall = AILevel != 0 && RoundState = 2
triggerall = random < 100 * AILevel
triggerall = StateType != A
triggerall = Var(25) = 0
triggerall = helper(10003),var(8)=0 ;Don't use this on wakeup
triggerall = helper(10003),var(21)=1 ;Listen for projectile rules
triggerall = var(18) < 5
trigger1 = ctrl && var(34) <= 0

;---------------------------------------------------------------------------
[State -1, AI C Magic Draw]
type = ChangeState
value = 1002
triggerall = AILevel != 0 && RoundState = 2
triggerall = random < 40 * AILevel
triggerall = StateType != A
triggerall = Cond(var(59) = 0, Power >= 500, Power > 0) 
triggerall = Var(25) = 0
triggerall = helper(10003),var(8)=0 ;Don't use this on wakeup
triggerall = helper(10003),var(22)=1 ;Listen for projectile rules
triggerall = Cond(var(59) != 1, var(18) < 6, var(18) < 7)
trigger1 = ctrl && var(34) <= 0


;---------------------------------------------------------------------------
[State -1, AI A Browning Starbow]
type = ChangeState
value = 1015
triggerall = random < 60 * AILevel
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2Dist Y >= -50
triggerall = Var(15) = 0
triggerall = StateType != A 
trigger1 = var(35) && AIlevel >=4&&var(34)=1015
trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && AIlevel >=4&&var(34)=1015 && P2StateType != L

;---------------------------------------------------------------------------
[State -1, AI B Browning Starbow]
type = ChangeState
value = 1016
triggerall = random < 60 * AILevel
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2Dist Y >= -50
triggerall = Var(15) = 0
triggerall = StateType != A 
trigger1 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) 
trigger1 = EnemyNear, NumProj > 0 && P2BodyDist X >= 150

;---------------------------------------------------------------------------
[State -1, AI C Browning Starbow]
type = ChangeState
value = 1017
triggerall = AILevel != 0 && RoundState = 2
triggerall = Cond(var(59) = 0, Power >= 500, Power > 0) 
triggerall = var(59) != 2
triggerall = random < 40 * AILevel
triggerall = P2Dist Y >= -50
triggerall = Var(15) = 0
triggerall = StateType != A 
trigger1 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101]))  && EnemyNear, NumProj > 0 && P2BodyDist X >= 175

;---------------------------------------------------------------------------
[State -1, AI Air Throw]
type = ChangeState
value = Cond(FrontEdgeBodyDist <= 50, 810, 815)
triggerall = AILevel != 0 && RoundState = 2
triggerall = var(1) = 0
triggerall = StateNo != [800,899]
trigger1 = !var(35) && ctrl && var(34)<=0
trigger2 = var(35) && AIlevel >=4&&var(34)=810
trigger3 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && AIlevel >=4&&var(34)=810

;---------------------------------------------------------------------------
[State -1, AI Throw]
type = ChangeState
value = Cond(EnemyNear, BackEdgeDist >= 50, 805, 800)
triggerall = random<70*AILevel
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType = S
triggerall = EnemyNear, StateType != A
triggerall = var(0) = 0
triggerall = P2BodyDist X = [0,50]
trigger1 = (ctrl || stateno = [100,101])

;---------------------------------------------------------------------------
[State -1, AI 6A]
type = ChangeState
value = 222
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2StateType != A
triggerall = StateType != A
triggerall = P2Dist Y >= -55 && P2StateType != L
triggerall = random< 100 * AILevel
triggerall = Helper(10003), var(8) = 0
triggerall = Var(15) = 0
triggerall = P2MoveType != A
trigger1 = var(35) && AIlevel >=4&&var(34)=222 && (P2StateType != L && P2Dist Y >= -45 || P2StateType = A && (P2Dist Y = [-15,-45]))
trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && AIlevel >=4&&var(34)=222 && (P2StateType != L && P2Dist Y >= -45 || P2StateType = A && (P2Dist Y = [-15,-45]))

;---------------------------------------------------------------------------
[State -1, AI 6AB]
type = ChangeState
value = 223
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2Dist Y >= -40
triggerall = StateType != A
triggerall = P2StateType != L
trigger1 = StateNo = 222 && MoveContact

;---------------------------------------------------------------------------
[State -1, AI 6ABC]
type = ChangeState
value = 224
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2Dist Y >= -40
triggerall = StateType != A
triggerall = P2StateType != L
trigger1 = StateNo = 223 && MoveContact

;---------------------------------------------------------------------------
[State -1, AI 6ABC~6C]
type = ChangeState
value = 225
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2StateType = S || P2StateType = S && StateNo = [120,155]
triggerall = P2StateType != A
triggerall = StateType != A
trigger1 = StateNo = 224 && MoveContact

;---------------------------------------------------------------------------
[State -1, AI 6ABC~4C]
type = ChangeState
value = 226
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2Dist Y >= -60
triggerall = StateType != A
triggerall = P2StateType = C || P2StateType = A || P2StateType = C && StateNo = [120,155]
trigger1 = StateNo = 224 && MoveContact

;---------------------------------------------------------------------------
[State -1, AI 5A]
type = ChangeState
value = 200
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2StateType != L
triggerall = P2Dist Y >= -30
triggerall = StateType != A
triggerall = random< 100 * AILevel
triggerall = Helper(10003), var(8) = 0
triggerall = Var(15) = 0
triggerall = P2MoveType != A
trigger1 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && helper(10003),var(10)>0&& p2BodyDist X <30
trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && abs(p2BodyDist X=[0,30]) && p2statetype!=A && p2movetype=I&&random <199 && helper(10003),var(3)=0 
trigger3 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && (P2StateType = S) && p2BodyDist X <40
trigger4 = var(35) && AIlevel >=4&&var(34)=200 
trigger5 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && AIlevel >=4&&var(34)=200

;---------------------------------------------------------------------------
[State -1, AI 5B]
type = ChangeState
value = 210
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2Dist Y >= -40
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = random< 100 * AILevel
triggerall = Helper(10003), var(8) = 0
triggerall = Var(15) = 0
triggerall = P2MoveType != A
trigger1 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && helper(10003),var(11)>0&& p2BodyDist X <50
trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && abs(p2BodyDist X=[15,50]) && p2statetype!=A && p2movetype=I&&random <199 && helper(10003),var(3)=0 
trigger3 = var(35) && AIlevel >=4&&var(34)=210
trigger4 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && AIlevel >=4&&var(34)=210

;---------------------------------------------------------------------------
[State -1, AI 4C]
type = ChangeState
value = 221
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A
triggerall = random< 100 * AILevel
triggerall = Helper(10003), var(8) = 0
triggerall = Var(15) = 0
triggerall = P2MoveType != A
trigger1 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && abs(p2BodyDist X=[25,50]) && p2statetype = C && p2movetype=I&&random <199 && helper(10003),var(3)=0
trigger2 = var(35) && AIlevel >=4&&var(34)=221
trigger3 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && AIlevel >=4&&var(34)=221

;---------------------------------------------------------------------------
[State -1, AI 5C]
type = ChangeState
value = 220
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2Dist Y >= -80
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = random< 100 * AILevel
triggerall = Helper(10003), var(8) = 0
triggerall = Var(15) = 0
triggerall = P2MoveType != A
trigger1 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && helper(10003),var(12)>0&& p2BodyDist X <70
trigger2 = var(35) && AIlevel >=4&&var(34)=220 
trigger3 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && AIlevel >=4&&var(34)=220 

;---------------------------------------------------------------------------
[State -1, AI 5D (Set)]
type = ChangeState
value = 230 
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2Dist Y >= -80
triggerall = StateType != A
triggerall = random< 100 * AILevel
triggerall = Helper(10003), var(8) = 0
triggerall = var(26) = 0
trigger1 = var(35) && AIlevel >=4&&var(34)=230
trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && AIlevel >=4&&var(34)=230
trigger3 = ctrl && var(34) <= 0 && P2MoveType != A && (P2StateType = A || P2StateType = L) && P2BodyDist X = [50,105]

;---------------------------------------------------------------------------
[State -1, AI 5D (Detonate)]
type = ChangeState
value = 230 
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A
triggerall = Helper(10003), var(8) = 0
triggerall = Var(15) = 0
triggerall = P2MoveType != A
triggerall = var(26) = 1
triggerall = P2BodyDist X >= 50
;trigger1 = var(27) = 1
;trigger1 = var(17) = 1 && var(18) < 4
;trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && var(27) = 1
;trigger3 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && var(28) > 75 && var(27) = 0
trigger1 = var(35) && AIlevel >=4&&var(34)=230
trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && ((AIlevel >=4&&var(34)=230) || var(27) = 1) && P2MoveType != A ;|| var(28) > 75 && var(27) = 0 && P2BodyDist X >= 50) && P2MoveType != A
trigger3 = ctrl && var(34) <= 0 && P2MoveType != A && var(27) = 1 && P2BodyDist X = [50,105]
;---------------------------------------------------------------------------
[State -1, AI 2A]
type = ChangeState
value = 400
triggerall = AILevel != 0 && RoundState = 2
triggerall = random< 100 * AILevel
triggerall = P2StateType != C
triggerall = P2Dist Y >= -15
triggerall = StateType != A
;triggerall = Var(15) = 0
triggerall = P2MoveType != A
triggerall = Helper(10003), var(8) = 0
trigger1 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101]))  && abs(p2BodyDist X=[5,40]) && p2statetype!=A && p2movetype=I&&random <199 && helper(10003),var(3)=0
trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && (helper(10003),var(10)>0)
trigger3 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && (P2StateType = S || P2StateType = L) && p2BodyDist X <40
trigger4 = var(35) && AIlevel >=4&&var(34)=400
trigger5 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && AIlevel >=4&&var(34)=400

;---------------------------------------------------------------------------
[State -1, AI 2B]
type = ChangeState
value = 410
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2Dist Y >= -30
triggerall = StateType != A
triggerall = P2StateType != L
triggerall = random< 100 * AILevel
triggerall = Helper(10003), var(8) = 0
;triggerall = Var(15) = 0
triggerall = P2MoveType != A
trigger1 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && helper(10003),var(11)>0&& p2BodyDist X <50
trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && abs(p2BodyDist X=[15,50]) && p2statetype!=A && p2movetype=I&&random <199 && helper(10003),var(3)=0 
trigger3 = var(35) && AIlevel >=4&&var(34)=410
trigger4 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && AIlevel >=4&&var(34)=410

;---------------------------------------------------------------------------
[State -1, AI 2C]
type = ChangeState
value = 420
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A
triggerall = P2Dist Y >= -40
triggerall = P2StateType != A 
triggerall = random< 100 * AILevel
triggerall = Helper(10003), var(8) = 0
triggerall = Var(15) = 0
triggerall = P2MoveType != A
trigger1 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && helper(10003),var(12)>0&& p2BodyDist X <50
trigger2 = var(35) && AIlevel >=4&&var(34)=420
trigger3 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && AIlevel >=4&&var(34)=420

;---------------------------------------------------------------------------
[State -1, AI 2D (Set)]
type = ChangeState
value = 430 
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2StateType != A
triggerall = StateType != A
triggerall = random< 100 * AILevel
triggerall = Helper(10003), var(8) = 0
triggerall = P2MoveType != A
triggerall = var(26) = 0
trigger1 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101]))  && (P2BodyDist X <=30)&&!var(35) && AIlevel >=4&&var(34)=430
trigger2 = var(35) && AIlevel >=4&&var(34)=430
trigger3 = ctrl && var(34) <= 0 && (P2StateType = A || P2StateType = L) && P2BodyDist X <= 50

;---------------------------------------------------------------------------
[State -1, AI 2D (Detonate)]
type = ChangeState
value = 430 
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType != A
triggerall = Helper(10003), var(8) = 0
triggerall = Var(15) = 0
triggerall = P2MoveType != A
triggerall = var(26) = 1
triggerall = P2BodyDist X <= 50
trigger1 = var(35) && AIlevel >=4&&var(34)=430
trigger2 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) &&!var(35) && ((AIlevel >=4&&var(34)=430) || var(27) = 1) && P2MoveType != A; || var(28) > 75 && var(27) = 0)

;---------------------------------------------------------------------------
[State -1, AI 3C]
type = ChangeState
value = 421
triggerall = AILevel != 0 && RoundState = 2
triggerall = P2Dist Y >= -55
triggerall = StateType != A
triggerall = random< 100 * AILevel
triggerall = P2StateType != L
triggerall = Var(15) = 0
triggerall = P2MoveType != A
triggerall = Helper(10003), var(8) = 0
trigger1 = (ctrl || (StateNo = [10,20]) || (StateNo = [100,101])) && helper(10003),var(10)>0&& p2BodyDist X < 40
trigger2 = var(35) && AIlevel >=4&&var(34)=421
trigger3 = (ctrl)&&!var(35) && AIlevel >=4&&var(34)=421
;---------------------------------------------------------------------------
[State -1, AI j.A]
type = ChangeState
value = 600
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType = A && Pos Y <= -40
triggerall = P2StateType != L
triggerall = random< 100 * AILevel
trigger1 = ctrl && var(34) <=0 && (P2Dist Y = [-25, 35]) && P2BodyDist X = [0,45]
trigger2 = var(35) && AIlevel >=4&&var(34)=600
trigger3 = (ctrl)&&!var(35) && AIlevel >=4&&var(34)=600

;---------------------------------------------------------------------------
[State -1, AI j.B]
type = ChangeState
value = 610
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType = A && Pos Y <= -40
triggerall = P2StateType = A
triggerall = random< 100 * AILevel
trigger1 = ctrl && var(34) <=0 && ( P2Dist Y = [-55, 15]) && P2BodyDist X = [0,35]
trigger2 = var(35) && AIlevel >=4&&var(34)=610
trigger3 = (ctrl)&&!var(35) && AIlevel >=4&&var(34)=610

;---------------------------------------------------------------------------
[State -1, AI j.C]
type = ChangeState
value = 620
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType = A && Pos Y <= -40
triggerall = P2StateType != L
triggerall = random< 100 * AILevel
trigger1 = ctrl && var(34) <=0 && ( P2Dist Y = [-25, 55]) && P2BodyDist X = [0,40]
trigger2 = var(35) && AIlevel >=4&&var(34)=620
trigger3 = (ctrl)&&!var(35) && AIlevel >=4&&var(34)=620

;---------------------------------------------------------------------------
[State -1, AI j.D (Set)]
type = ChangeState
value = 630 
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType = A && Pos Y <= -40
triggerall = random< 100 * AILevel
triggerall = Helper(10003), var(8) = 0
triggerall = var(26) = 0
trigger1 = ctrl && var(34) <=0  &&P2MoveType != A && (P2BodyDist X = [0,50]) && P2Dist Y = [-10, 70]
trigger2 = var(35) && AIlevel >=4&&var(34)=630
trigger3 = (ctrl)&&!var(35) && AIlevel >=4&&var(34)=630 && (P2BodyDist X = [0,50]) && P2Dist Y = [-10, 70]

;---------------------------------------------------------------------------
[State -1, AI j.D (Detonate)]
type = ChangeState
value = 630 
triggerall = AILevel != 0 && RoundState = 2
triggerall = StateType = A
triggerall = Helper(10003), var(8) = 0
triggerall = Var(15) = 0
triggerall = P2MoveType != A
triggerall = var(26) = 1
triggerall = P2BodyDist X = [0,50]
trigger1 = var(35) && AIlevel >=4&&var(34)=630
trigger2 = (ctrl)&&!var(35) && ((AIlevel >=4&&var(34)=630) || var(27) = 1) && P2MoveType != A; || var(28) > 75 && var(27) = 0)

;===========================================================================
; Player Behavior
;===========================================================================

;---------------------------------------------------------------------------
[State -1, Retroflow - Genesis Light Year]
type = ChangeState
value = 3020
triggerall = Cond(var(59) != 1, Power = 3000, Power > 0)
triggerall = AILevel = 0
triggerall = StateType != A
triggerall = Cond(P2BodyDist X >= 0, command = "ar_retro", command = "ar_retro_r")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = Cond(var(59) = 0, (var(17) = [1,2]), var(17))

;---------------------------------------------------------------------------
[State -1, Severe Break Slider]
type = ChangeState
value = 3015
triggerall = var(59) = 1
triggerall = Power > 0
triggerall = AILevel = 0
triggerall = StateType != A
triggerall = Cond(P2BodyDist X >= 0, command = "ar_sb", command = "ar_sb_r")
trigger1 = ctrl || (StateNo = [100,101]) || StateNo = 3000 && Time > 45
trigger2 = var(17)
trigger3 = var(44)

;---------------------------------------------------------------------------
[State -1, Severe Break]
type = ChangeState
value = 3010
triggerall = var(59) = 0
triggerall = Power >= 2000
triggerall = AILevel = 0
triggerall = StateType != A
triggerall = StateNo != 3000
triggerall = Cond(P2BodyDist X >= 0, command = "ar_sb", command = "ar_sb_r")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = [1,2]
trigger3 = var(44)

;---------------------------------------------------------------------------
[State -1, Aoko Moonsault Edge]
type = ChangeState
value = 3005
triggerall = Cond(var(59) = 0, Power >= 1000, Power > 0) 
triggerall = var(59) != 2
triggerall = AILevel = 0
triggerall = StateType != A
triggerall = Cond(P2BodyDist X >= 0, command = "ar_mse", command = "ar_mse_r")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = [1,2]
trigger3 = var(44)

;---------------------------------------------------------------------------
[State -1, Magic Draw Edge]
type = ChangeState
value = 3000
triggerall = Cond(var(59) = 0, Power >= 1000, Power > 0) 
triggerall = var(59) != 2
triggerall = AILevel = 0
triggerall = StateNo != 3000
triggerall = StateType != A
triggerall = Cond(P2BodyDist X >= 0, command = "ar_mde", command = "ar_mde_r")
trigger1 = ctrl || (StateNo = [100,101])
triggerall = NumHelper(13000) = 0
trigger2 = var(17) = [1,2]
trigger3 = var(44)

;---------------------------------------------------------------------------
[State -1, Starmine Bomber]
type = ChangeState
value = 2000
triggerall = AILevel = 0
triggerall = StateType != A
triggerall = Cond(P2BodyDist X >= 0, command = "QCB_a", command = "QCF_a")
triggerall = Cond(var(59) = 0, Power >= 500, Power > 0) 
triggerall = var(59) != 2
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) && var(18) < Cond(var(59) != 1, 7, 8) && StateNo != 2000
trigger3 = (StateNo = [150,155])
trigger4 = var(44)

;---------------------------------------------------------------------------
[State -1, Air Starmine Bomber]
type = ChangeState
value = 2005
triggerall = AILevel = 0
triggerall = StateType = A
triggerall = command = "QCB_a"
triggerall = Cond(var(59) = 0, Power >= 500, Power > 0) 
triggerall = var(59) != 2
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) && var(18) < Cond(var(59) != 1, 7, 8) && StateNo != 2005
trigger3 = (StateNo = [150,155])
trigger4 = var(44)

;---------------------------------------------------------------------------
[State -1, A Aoko Moonsault]
type = ChangeState
value = 1005
triggerall = AILevel = 0
triggerall = StateType != A
triggerall = Cond(P2BodyDist X >= 0, command = "DP_x", command = "RDP_x")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1
trigger3 = var(44)

;---------------------------------------------------------------------------
[State -1, B Aoko Moonsault]
type = ChangeState
value = 1006
triggerall = AILevel = 0
triggerall = StateType != A
triggerall = Cond(P2BodyDist X >= 0, command = "DP_y", command = "RDP_y")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1
trigger3 = var(44)

;---------------------------------------------------------------------------
[State -1, C Aoko Moonsault]
type = ChangeState
value = 1007
triggerall = AILevel = 0
triggerall = StateType != A
triggerall = Cond(P2BodyDist X >= 0, command = "DP_z", command = "RDP_z")
triggerall = Cond(var(59) = 0, Power >= 500, Power > 0) 
triggerall = var(59) != 2
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) && var(18) < Cond(var(59) != 1, 6, 7) && StateNo != 1007
trigger3 = (StateNo = [150,155])
trigger4 = var(44)

;---------------------------------------------------------------------------
[State -1, A Browning Starbow]
type = ChangeState
value = 1015
triggerall = AILevel = 0
triggerall = StateType != A 
triggerall = Cond(P2BodyDist X >= 0,  command = "QCB_x", command = "QCF_x")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1
trigger3 = var(44)

;---------------------------------------------------------------------------
[State -1, B Browning Starbow]
type = ChangeState
value = 1016
triggerall = AILevel = 0
triggerall = StateType != A 
triggerall = Cond(P2BodyDist X >= 0, command = "QCB_y", command = "QCF_y")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1
trigger3 = var(44)

;---------------------------------------------------------------------------
[State -1, C Browning Starbow]
type = ChangeState
value = 1017
triggerall = Cond(var(59) = 0, Power >= 500, Power > 0) 
triggerall = var(59) != 2
triggerall = AILevel = 0
triggerall = StateType != A 
triggerall = Cond(P2BodyDist X >= 0, command = "QCB_z", command = "QCF_z")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) && var(18) < Cond(var(59) = 0, 6, 7) && StateNo != 1017
trigger3 = (StateNo = [150,155])
trigger4 = var(44)

;---------------------------------------------------------------------------
[State -1, A Magic Draw]
type = ChangeState
value = 1000
triggerall = AILevel = 0
triggerall = StateType != A 
triggerall = Cond(P2BodyDist X >= 0,  command = "QCF_x", command = "QCB_x")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1
trigger3 = var(44)

;---------------------------------------------------------------------------
[State -1, B Magic Draw]
type = ChangeState
value = 1001
triggerall = AILevel = 0
triggerall = StateType != A 
triggerall = Cond(P2BodyDist X >= 0, command = "QCF_y", command = "QCB_y")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1
trigger3 = var(44)

;---------------------------------------------------------------------------
[State -1, C Magic Draw]
type = ChangeState
value = 1002
triggerall = AILevel = 0
triggerall = Cond(var(59) = 0, Power >= 500, Power > 0) 
triggerall = var(59) != 2
triggerall = StateType != A 
triggerall = Cond(P2BodyDist X >= 0, command = "QCF_z", command = "QCB_z")
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) && var(18) < Cond(var(59) = 0, 6, 7) && StateNo != 1002
trigger3 = (StateNo = [150,155])
trigger4 = var(44)

;---------------------------------------------------------------------------
[State -1, Burst Engage]
type = ChangeState
value = 700
triggerall = AILevel = 0
triggerall = command = "burst"
triggerall = var(59) = 0
triggerall = Power >= 1000
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = Var(17) = 1
trigger3 = StateNo = [150,155]
trigger4 = 0   ;Abstract Reordered: not while being hit (A+B+C burst instead)

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = StateType != A
triggerall = AILevel = 0
triggerall = command = "up"
trigger1 = var(8) = 1

;---------------------------------------------------------------------------
[State -1, Air Jump]
type = ChangeState
value = 45
triggerall = AILevel = 0
triggerall = StateNo = 50
triggerall = AILevel = 0
triggerall = Time > 13
triggerall = Var(6) = 0 && var(7) = 0
trigger1 = command = "up"

;---------------------------------------------------------------------------
[State -1, Air Jump Cancel]
type = ChangeState
value = 45
triggerall = AILevel = 0
triggerall = StateType = A
triggerall = Var(6) = 0 && var(7) = 0
triggerall = command = "up"
trigger1 = var(8) = 1

;---------------------------------------------------------------------------
[State -1, Air Dash Cancel]
type = ChangeState
value = 110
triggerall = AILevel = 0
triggerall = StateNo = [600,630]
triggerall = Var(6) = 0 && Var(7) = 0
triggerall = Pos Y <= -60
triggerall = command = "FF"
trigger1 = var(8) = 1

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = Cond(command = "FF", 110, 115)
triggerall = AILevel = 0
triggerall = StateNo = 50
triggerall = Pos Y <= -60
triggerall = Var(6) = 0 && var(7) = 0
triggerall = command = "FF" || command = "BB"
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Run]
type = ChangeState
value = Cond(P2BodyDist X >= 0, 100, 105)
triggerall = AILevel = 0
triggerall = StateType = S
triggerall = command = "FF"
triggerall = Anim != 702
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Backhop]
type = ChangeState
triggerall = AILevel = 0
value = Cond(P2BodyDist X >= 0, 105, 100)
triggerall = StateType = S
triggerall = command = "BB"
triggerall = Anim != 702
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Air Throw]
type = ChangeState
value = Cond(command != "holdback", 810, 815)
triggerall = AILevel = 0
triggerall = StateType = A
triggerall = command = "throw"
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1

;---------------------------------------------------------------------------
[State -1, Ground Throw]
type = ChangeState
value = Cond(command != "holdback", 800, 805)
triggerall = AILevel = 0
triggerall = StateType = S
triggerall = ctrl
trigger1 = command = "throw"

;---------------------------------------------------------------------------
[State -1, 6A]
type = ChangeState
value = 222 
triggerall = AILevel = 0
triggerall = command != "holddown"
triggerall = command = "fwd_x"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && (var(18) < 4) 

;---------------------------------------------------------------------------
[State -1, 6AB]
type = ChangeState
value = 223 
triggerall = AILevel = 0
triggerall = command != "holddown"
triggerall = command = "ar_btn_b"
triggerall = StateType != A
trigger1 = stateno = 222 && MoveContact

;---------------------------------------------------------------------------
[State -1, 6ABC]
type = ChangeState
value = 224
triggerall = AILevel = 0
triggerall = command != "holddown"
triggerall = command = "ar_btn_c"
triggerall = StateType != A
trigger1 = stateno = 223 && MoveContact

;---------------------------------------------------------------------------
[State -1, 6ABC~6C]
type = ChangeState
value = 225
triggerall = AILevel = 0
triggerall = command != "holddown"
triggerall = command = "fwd_z"
triggerall = StateType != A
trigger1 = stateno = 224 && MoveContact

;---------------------------------------------------------------------------
[State -1, 6ABC~4C]
type = ChangeState
value = 226
triggerall = AILevel = 0
triggerall = command != "holddown"
triggerall = command = "back_z"
triggerall = StateType != A
trigger1 = stateno = 224 && MoveContact

;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200 
triggerall = AILevel = 0
triggerall = command != "holddown"
triggerall = command = "ar_btn_a"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 400 && var(17)

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210 
triggerall = AILevel = 0
triggerall = command != "holddown"
triggerall = command = "ar_btn_b"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && var(18) < 2

;---------------------------------------------------------------------------
[State -1, 4C]
type = ChangeState
value = 221 
triggerall = AILevel = 0
triggerall = command != "holddown"
triggerall = command = "back_z"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (var(17) = 1) && (var(18) < 4) 

;---------------------------------------------------------------------------
[State -1, 5C]
type = ChangeState
value = 220
triggerall = AILevel = 0
triggerall = command != "holddown"
triggerall = command = "ar_btn_c"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && var(18) < 3

;---------------------------------------------------------------------------
[State -1, 5D]
type = ChangeState
value = 230 
triggerall = AILevel = 0
triggerall = command != "holddown"
triggerall = command = "ar_btn_x"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && var(18) < 4

;---------------------------------------------------------------------------
[State -1, 2A]
type = ChangeState
value = 400
triggerall = AILevel = 0
triggerall = command = "holddown"
triggerall = command = "ar_btn_a"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && var(17)

;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 410
triggerall = AILevel = 0
triggerall = command = "holddown"
triggerall = command = "ar_btn_b"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && var(18) < 2

;---------------------------------------------------------------------------
[State -1, 3C]
type = ChangeState
value = 421
triggerall = AILevel = 0
triggerall = command = "holddownfwd" && command = "ar_btn_c"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && var(18) < 4
trigger3 = StateNo = 224 && MoveContact   ;Abstract Reordered: 6A>6B>6C into 3C launcher

;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = AILevel = 0
triggerall = command = "holddown"
triggerall = command = "ar_btn_c"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && var(18) < 3

;---------------------------------------------------------------------------
[State -1, 2D]
type = ChangeState
value = 430
triggerall = AILevel = 0
triggerall = command = "holddown"
triggerall = command = "ar_btn_x"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(17) = 1 && var(18) < 4

;---------------------------------------------------------------------------
[State -1, j.A]
type = ChangeState
value = 600
triggerall = AILevel = 0
triggerall = command = "ar_btn_a"
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
trigger2 = var(17) = 1 && var(18) < 2

;---------------------------------------------------------------------------
[State -1, j.C]
type = ChangeState
value = 620
triggerall = AILevel = 0
triggerall = command = "ar_btn_c"
triggerall = StateType = A
trigger1 = ctrl || StateNo = 110 && Vel X > 0 
trigger2 = var(17) = 1 && var(18) < 3

;---------------------------------------------------------------------------
[State -1, j.D]
type = ChangeState
value = 630
triggerall = AILevel = 0
triggerall = command = "ar_btn_x"
triggerall = StateType = A
trigger1 = ctrl || (StateNo = [100,101]) 
trigger2 = var(17) = 1 && var(18) < 4
