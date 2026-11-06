;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;====================<BUTTON REMAPPING>====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;====================<DEFAULT VALUES>====================

[Defaults]
command.time = 15
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

[Command]
name = "MusouTensei"
command = ~D, DF, F, D, DB, B, a+b
time=32
[Command]
name = "MusouTensei"
command = ~D, DF, F, D, DB, B, b+c
time=32
[Command]
name = "MusouTensei"
command = ~D, DF, F, D, DB, B, a+c
time=32

[Command]
name = "FantasyHeaven"
command = ~F, B, DB, D, DF, F, c
time=32

[Command]
name = "KungFuBarrage"
command = ~D, DF, F, D, DF, F, a+b
time = 32

[Command]
name = "WindGod"
command = ~F, DF, D, DB, B, F, a+b
time = 32
[Command]
name = "WindGod"
command = ~F, DF, D, DB, B, F, b+c
time = 32
[Command]
name = "WindGod"
command = ~F, DF, D, DB, B, F, a+c
time = 32

[Command]
name = "KungFuBarrageMax"
command = ~D, DF, F, D, DF, F, b+c
time = 32
[Command]
name = "KungFuBarrageMax"
command = ~D, DF, F, D, DF, F, a+c
time = 32

[Command]
name = "FantasySeal"
command = ~D, DB, B, D, DB, B, a+b
time = 32

[Command]
name = "FantasySealMax"
command = ~D, DB, B, D, DB, B, b+c
time = 32
[Command]
name = "FantasySealMax"
command = ~D, DB, B, D, DB, B, a+c
time = 32

[Command]
name = "DemonBindCrcle"
command = ~D, D, a+b
time = 32
[Command]
name = "DemonBindCrcle"
command = ~D, D, b+c
time = 32
[Command]
name = "DemonBindCrcle"
command = ~D, D, a+c
time = 32

[Command]
name = "AcensionKick"
command = ~45$D, $U, a
time = 15
[Command]
name = "AcensionKick"
command = ~45$D, $U, b
time = 15

[Command]
name = "AcensionKickEX"
command = ~45$D, $U, c
time = 16

[Command]
name = "Amulet"
command = ~45$B, F, a
time = 15
[Command]
name = "Amulet"
command = ~45$B, F, b
time = 15

[Command]
name = "WallJump"
command = ~F, D, DF, a
time = 16
[Command]
name = "WallJump"
command = ~F, D, DF, b
time = 16

[Command]
name = "EX KF Upper"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "DimRift"
command = ~B, D, DB, a
time = 16
[Command]
name = "DimRift"
command = ~B, D, DB, b
time = 16

[Command]
name = "DimRiftEX"
command = ~B, D, DB, c
time = 16

[Command]
name = "Border"
command = x
time = 1

[Command]
name = "BorderEX"
command = ~D, DB, B, x
time = 15

[Command]
name = "KickFly"
command = ~D, DB, B, a
time = 15
[Command]
name = "KickFly"
command = ~D, DB, B, b
time = 15

[Command]
name = "Boom"
command = ~D, D, a
time = 15
[Command]
name = "Boom"
command = ~D, D, b
time = 15

[Command]
name = "412p"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "412k"
command = U, D, U, D, U, D, U, D
time = 1

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
command = a+x
time = 1

[Command]
name = "pp"
command = y
time = 1

[Command]
name = "kk"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "a+x"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = U, D, U, D, U, D, U, D
time = 1

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
command = /$F, a
time = 1

[Command]
name = "b"
command = /$F, b
time = 1

[Command]
name = "c"
command = /$F, c
time = 1

[Command]
name = "x"
command = a
time = 1

[Command]
name = "y"
command = b
time = 1

[Command]
name = "z"
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
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /c
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
;Release Direction
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

;--------------------------------------------------------------------------
;Release Button
[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1
;---------------------------------------------------------------------------
;Other
[Command]
name = "highjump"
command = $D, $U
time = 15
[Command]
name = "DU"
command = D, U
time = 18
[Command]
name = "DU"
command = DB, UF
time = 18
[Command]
name = "DU"
command = DF, UB
time = 18
[Command]
name = "DU"
command = $D, UF
time = 18
[Command]
name = "DU"
command = $D, UB
time = 18
;---------------------------------------------------------------------------

;Abstract Reordered: A/B/C = light/medium/heavy punch, F + A/B/C = kicks, X = Hakurei Border,
;Y = grab, Z = parry, A+B+C = burst, hold B+C = meter charge
[Command]
name = "ar_parry"
command = z
time = 1

[Command]
name = "ar_burst"
command = a+b+c
time = 1

[Statedef -1]

;---------------------------------------------------------------------------
;Abstract Reordered: burst (Kamijo's) - A+B+C while being hit, recharges in 75 s (var(37))
[State -1, AR burst round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(37) = 0

[State -1, AR burst recharge]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = var(37) > 0
var(37) = -1
ignorehitpause = 1

;Abstract Reordered: comeback - once a combo has done more than 15% of max life, every further hit
;knocks half a second (30 ticks) off the burst cooldown. var(47) = life when the combo started, var(51) = life last tick
[State -1, AR burst comeback]
type = VarAdd
triggerall = !ishelper
triggerall = var(37) > 0
trigger1 = movetype = H
trigger1 = Life < var(51)
trigger1 = var(47) - Life > LifeMax * 0.15
var(37) = -30
ignorehitpause = 1

[State -1, AR burst comeback clamp]
type = VarSet
triggerall = !ishelper
trigger1 = var(37) < 0
var(37) = 0
ignorehitpause = 1

[State -1, AR burst combo start]
type = VarSet
triggerall = !ishelper
trigger1 = movetype != H
var(47) = Life
ignorehitpause = 1

[State -1, AR burst last life]
type = VarSet
triggerall = !ishelper
trigger1 = 1
var(51) = Life
ignorehitpause = 1

[State -1, AR burst HUD 9601 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9601) = 0
trigger1 = var(37) = 0
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
trigger1 = var(37) > 0
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
trigger1 = var(37) > 0
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
trigger1 = var(37) = 0
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
trigger1 = var(37) > 0
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
trigger1 = var(37) > 0
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
trigger1 = var(37) > 0
trigger1 = NumExplod(9601)
ID = 9601
ignorehitpause = 1

[State -1, AR burst HUD dim off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = var(37) = 0
trigger1 = NumExplod(9602) || NumExplod(9603)
ID = 9602
ignorehitpause = 1

[State -1, AR burst HUD bar off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = var(37) = 0
trigger1 = NumExplod(9603)
ID = 9603
ignorehitpause = 1

[State -1, AR burst HUD bar]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(9603)
ID = 9603
scale = (4500 - var(37)) / 4500.0, 1
ignorehitpause = 1

[State -1, AR burst]
type = ChangeState
value = ifelse(StateType = A, 7751, 7750)
triggerall = !ishelper
triggerall = AILevel = 0
triggerall = command = "ar_burst"
triggerall = var(37) = 0
triggerall = RoundState = 2
triggerall = Alive
trigger1 = (stateno = 5000 || stateno = 5010 || stateno = 5020 || stateno = 5070) && Time > 0
trigger2 = stateno = [5001, 5099]
trigger2 = stateno != 5000 && stateno != 5010 && stateno != 5020 && stateno != 5070

;Abstract Reordered: the charged 6j.C bounce is allowed again once the combo is over
[State -1, AR charged kick reset]
type = VarSet
triggerall = !IsHelper
triggerall = var(8)
trigger1 = !NumEnemy
trigger2 = EnemyNear, MoveType != H
var(8) = 0
ignorehitpause = 1

;Abstract Reordered: parry on Z
[State -1, AR Parry]
type = ChangeState
value = 7740
triggerall = AILevel = 0
triggerall = command = "ar_parry"
trigger1 = ctrl


[State -1, Tick Fix]
type = CtrlSet
triggerall = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = StateNo = 810 && !AnimTime
trigger4 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
trigger5 = (StateNo = [700,715]) && !AnimTime
trigger6 = (StateNo = [6080,6082]) && !AnimTime
value = 1

[State -1, Denjin Shoryuken]
type=ChangeState
value=3600
triggerall=!AILevel && !var(40)
triggerall=RoundState=2 && StateType != A &&var(20)<=0&& power >= 3000-1000*(var(53))&&command ="MusouTensei"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)
[State -1, Denjin Shoryuken]
type=ChangeState
value=3500
triggerall=!AILevel && !var(40)
triggerall=RoundState=2 && StateType != A &&var(20)<=0&& power >= 3000-1000*(var(53))&&command ="FantasyHeaven"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)
[State -1, Denjin Shoryuken]
type=ChangeState
value=3501
triggerall=var(40)&&var(41)>=7 && RoundState=2
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=(StateNo=[200,650])&&movecontact
[State -1, Kung Fu Barrage Max]
type = ChangeState
value = 3300
triggerall = !ailevel && command = "DemonBindCrcle" && !var(40)
triggerall = RoundState = 2 && StateType != A
triggerall = power >= 1000*(var(53)=0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)
[State -1, Kung Fu Barrage Max]
type = ChangeState
value = 3200
triggerall = !ailevel && command = "WindGod" && !var(40)
triggerall = RoundState = 2 && StateType != A
triggerall = power >= 1000*(var(53)=0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)
[State -1, Grand KF Upper]
type = ChangeState
value = 3150
triggerall = !ailevel && command = "KungFuBarrageMax" && !var(40)
triggerall = RoundState = 2
triggerall = power >= 2000-1000*(var(53))
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)
[State -1, Grand KF Upper]
type = ChangeState
value = 3100
triggerall = !ailevel && command = "KungFuBarrage" && !var(40)
triggerall = RoundState = 2
triggerall = power >= 1000*(!var(53))
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)
[State -1, Kung Fu Barrage Max]
type = ChangeState
value = 3050
triggerall = !ailevel && command = "FantasySealMax" && !var(40)
triggerall = RoundState = 2 && StateType != A && numhelper(3055)=0
triggerall = power >= 2000-1000*(var(53))
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)
[State -1, Kung Fu Barrage]
type = ChangeState
value = 3000
triggerall = !ailevel && command = "FantasySeal" && !var(40)
triggerall = RoundState = 2 && StateType != A && numhelper(3005)=0
triggerall = power >= 1000*(!var(53))
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
[State -1, EX KF Upper]
type = null;ChangeState
value = 1120
triggerall = !ailevel && command = "EX KF Upper" && !var(40)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
[State -1, TatsumakiSenpukyack]
type = ChangeState
value = 1400
triggerall = !ailevel && command = "KickFly"
triggerall = RoundState = 2
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(4) || var(5)
trigger3 = (StateNo = [600,659]) && movecontact   ;Abstract Reordered: air normals convert into Flying Kick
[State -1, Light KF Palm]
type = null;ChangeState
value = 1350+10*(pos y < 0)
triggerall = !ailevel && command = "WallJump"
triggerall = RoundState = 2
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
[State -1, Light KF Palm]
type = ChangeState
value = Ifelse(command="DimRiftEX"&&var(20) <= 60&&power>=500*!var(53),1201,1200)
triggerall = !ailevel && (command="DimRift"||(command="DimRiftEX"&&power>=500*!var(53)&&var(20) <= 60))
triggerall = RoundState = 2
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
[State -1, Acension Kick]
type = ChangeState
value = Ifelse(command="AcensionKickEX"&&var(20) <= 60&&power>=500*!var(53),1005,1000)
triggerall = !ailevel && (command="AcensionKick"||(command="AcensionKickEX"&&power>=500*!var(53)&&var(20) <= 60))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
[State -1, Cautionary Border]
type=ChangeState
value=Ifelse(command="BorderEX"&&var(20) <= 60&&power>=500*!var(53),1305,1300)
triggerall=!AILevel && RoundState=2 && (command="Border"||(command="BorderEX"&&power>=500*!var(53)&&var(20) <= 60))
triggerall=numhelper(1310)=0&&numhelper(1311)=0
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno = 450) && movecontact && (command="BorderEX" && power>=500*!var(53)&&var(20) <= 60)
[State -1, Reversor]
type = null;ChangeState
value = 1380
triggerall = !ailevel && command = "Boom"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Light KF Palm]
type = ChangeState
value = 1100+(pos y < 0)
triggerall = !ailevel && command = "Amulet"
triggerall = RoundState = 2 && !numhelper(1100) && !numhelper(1101)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

;========================================================================
[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = !AILevel&&RoundState = 2 && StateType != A
trigger1 = power >= 1000*!var(53) && !var(20) && !var(40)
;------------------------------------------------------------------------
[State -1, Throw]
type =ChangeState
value = 800
trigger1=command="pp"   ;Abstract Reordered: grab on Y
trigger1=!AILevel&&RoundState=2 && Statetype!=A && !var(20)
trigger1=ctrl
;------------------------------------------------------------------------
[State -1, Air Throw]
type = null;ChangeState
value = 850
trigger1=(command="holdfwd"||command="holdback")&&(command="pp")
trigger1=!AILevel&&RoundState=2 && Statetype =A && Pos Y<=-30 && !var(20)
trigger1=ctrl
;-------------------------------------------------------------------------
[State -1, Power Charge]
type = ChangeState
value = 730
trigger1 = command = "hold_b" && command = "hold_y"
trigger1 = !AILevel&&RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20) && !var(40) && !var(53)
trigger1 = ctrl || (StateNo = [100,101])
;--------------------------------------------------------------------------
[State -1, SIdestep/Dodge]
type = ChangeState
value = Ifelse(command="holdfwd",710,Ifelse(command="holdback",715,700))
triggerall = command = "a+x"
triggerall = !AILevel && RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))
;--------------------------------------------------------------------------
[State -1, Custom Combo]
type = ChangeState
value = Ifelse(StateType = A,905,900)
triggerall = !AILevel && command = "c+z" && RoundState = 2 && power >= 1000 && !var(20) && !var(40)
triggerall = !var(54)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])
trigger1 = !var(41)

[State -1, MAX Mode]
type = ChangeState
value = 770
triggerall = command = "c+z" && var(54) && !var(40)
triggerall = RoundState = 2 && StateType != A
triggerall = var(53) <= 0 && Power >= 1000
trigger1 = ctrl || (Stateno = [100,101])

;--------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 123
triggerall= !AILevel && var(55)=2 && roundstate=2 && statetype != A
trigger1 = ctrl && command = "DU" 
trigger2 = stateno=420 && anim=425 && movehit && command = "holdup"
;--------------------------------------------------------------------------
[State -1, Forward Dash/ Run /Dash Back]
type = ChangeState
value = Ifelse(command = "BB",105,100)
trigger1 = !AILevel&&Roundstate=2&&statetype = S
trigger1 = command = "FF"||command = "BB"
trigger1 = ctrl
;--------------------------------------------------------------------------
;[State -1, Air Dash]
;type = ChangeState
;value = 110
;trigger1 = !AILevel && Roundstate=2 && statetype = A && !var(42) && !var(14) && Pos Y<-20
;trigger1 = command = "FF"||command = "BB"
;trigger1 = ctrl
;--------------------------------------------------------------------------
[State -1, Standing Low Punch]
type=ChangeState
value=200
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="x"
triggerall = command != "a"   ;Abstract Reordered: F + button = kick
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Standing Medium Punch]
type=ChangeState
value=210
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="y"
triggerall = command != "b"   ;Abstract Reordered: F + button = kick
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Standing High Punch]
type=ChangeState
value=220
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="z"
triggerall = command != "c"   ;Abstract Reordered: F + button = kick
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Standing Low Kick]
type=ChangeState
value=230
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="a"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=(stateno=[200,209])&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Standing Medium Kick]
type=ChangeState
value=240
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="b"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,239])||(stateno=[400,419])||(stateno=[430,439]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Standing High Kick]
type=ChangeState
value=ifelse((stateno=[100,103]),255,250)
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="c"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,249])||(stateno=[400,449]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Crouching Low Punch]
type=ChangeState
value=400
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="x"
triggerall = command != "a"   ;Abstract Reordered: F + button = kick
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type=ChangeState
value=410
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command= "holddown"&& command="y"
triggerall = command != "b"   ;Abstract Reordered: F + button = kick
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Crouching High Punch]
type=ChangeState
value=420
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="z"
triggerall = command != "c"   ;Abstract Reordered: F + button = kick
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Crouching Low Kick]
type=ChangeState
value=430
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="a"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[400,409]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type=ChangeState
value=440
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="b"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,239])||(stateno=[400,419])||(stateno=[430,439]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Crouching High Kick]
type=ChangeState
value=450
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="c"
trigger1=ctrl||stateno=[100,103]
trigger2=var(4)
trigger3=((stateno=[200,249])||(stateno=[400,449]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Jumping Low Punch]
type=ChangeState
value=600
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="x"
triggerall = command != "a"   ;Abstract Reordered: F + button = kick
trigger1=ctrl
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Jumping Medium Punch]
type=ChangeState
value=610
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="y"
triggerall = command != "b"   ;Abstract Reordered: F + button = kick
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,609])||(stateno=[630,639]))&&movecontact&&var(55)=2
;---------------------------------------------------------------------------
[State -1, Jumping High Punch]
type=ChangeState
value=620
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="z"
triggerall = command != "c"   ;Abstract Reordered: F + button = kick
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,619])||(stateno=[630,649]))&&movecontact&&var(55)=2
;---------------------------------------------------------------------------
[State -1, Jumping Low Kick]
type=ChangeState
value=630
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="a"
trigger1=ctrl
trigger2=var(4)
trigger3=(stateno=[600,609])&&movecontact&&var(55)=2
;---------------------------------------------------------------------------
[State -1, Tenmakujinkyaku/Jumping Medium Kick]
type=ChangeState
value=640
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="b"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,619])||(stateno=[630,639]))&&movecontact&&var(55)=2
;---------------------------------------------------------------------------
[State -1, Jumping High Kick]
type=ChangeState
value=7760   ;Abstract Reordered: hold C to charge
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="c"
trigger1=ctrl
trigger2=var(4)
trigger3=(stateno=[600,642])&&movecontact&&var(55)=2
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = !AILevel&&Roundstate=2&&StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)
;--------------------------------------------------------------------------
;AI
;--------------------------------------------------------------------------
;-------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 800
triggerall = AILevel&&numenemy&&random < (500 * (AIlevel ** 2 / 64.0))
triggerall = roundstate=2&&statetype!=A&& enemynear,statetype!=L&&(enemynear,stateno!=[5120,5201]) && !var(20)
triggerall = enemynear,movetype!=H&&enemynear,statetype!=A&&enemynear,Hitover&&(p2bodydist x =[0,30])
triggerall = ctrl||stateno=100||stateno=52
trigger1 = random>=800
trigger2 = enemynear,stateno=[120,155]
trigger2 = random>=500
trigger3 = stateno=100
trigger4=(p2bodydist x=[0,30])&&random<250
trigger5=(p2stateno=[120,155])&&(p2bodydist x=[0,30])&&random<500
;------------------------------------------------------------------------
[State -1, Standing Low Punch AI]
type = ChangeState
value = 200
triggerall = AILevel && numenemy&&roundstate=2&&StateType != A
triggerall = p2bodydist x <=55&&(p2bodydist y = [-80,5])&&P2statetype = S&&P2statetype != L&& random < (750 * (AIlevel ** 2 / 64.0))
trigger1 = ctrl
trigger2 = (stateno = [100,101]) && random < 500
;---------------------------------------------------------------------------
[State -1, Standing Medium Punch AI]
type = ChangeState
value = 210
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A && P2statetype != C
triggerall = (p2bodydist x = [0, 60]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 350
;---------------------------------------------------------------------------
[State -1, Standing High Punch AI]
type = ChangeState
value = 220
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 80]) && (p2bodydist y = [ -80, 80]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (80 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit&&var(55)
trigger2 = random < 650
;---------------------------------------------------------------------------
[State -1, Standing Low Kick AI]
type = ChangeState
value = 230
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 45]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (80 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [400,409]))&& movehit&&var(55)
trigger2 = random < 400
trigger3 = (stateno = [100,101]) && random < 300
;---------------------------------------------------------------------------
[State -1, Standing Medium Kick AI]
type = ChangeState
value = 240
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A && P2statetype != C
triggerall = (p2bodydist x = [0, 55]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 450
;---------------------------------------------------------------------------
[State -1, Standing High Kick AI]
type = ChangeState
value = 250
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall = (p2bodydist x = [0, 60]) && (p2bodydist y = [ -60, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [240,249])|| (stateno = [440,449]))&& movehit && stateno != 225&&var(55)
trigger2 = random < 800
;---------------------------------------------------------------------------
[State -1, Crouching Low Punch]
type = ChangeState
value = 400
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 40]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (300 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [100,101]
;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 55]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 800
;---------------------------------------------------------------------------
[State -1, Crouching High Punch]
type = ChangeState
value = 420
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 100]) &&(p2bodydist y = [-20,5]) && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (425 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit&&var(55)
trigger2 = random < 900
;---------------------------------------------------------------------------
[State -1, Crouching Low Kick]
type = ChangeState
value = 430
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 35]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [400,409]))&& movehit&&var(55)
;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 45]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (275 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 350
;---------------------------------------------------------------------------
[State -1, Crouching High Kick]
type = ChangeState
value = 450
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 75]) && (p2bodydist y = [ -110, 50]) && p2statetype != L && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (300 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [220,229])|| (stateno = [240,249])||(stateno = [420,429])||(stateno = [440,449]))&& movehit&&var(55)
trigger2 = random < 500
;---------------------------------------------------------------------------
[State -1, Jumping Low Punch]
type = ChangeState
value = 600
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A
triggerall = (p2bodydist x = [0,60]) && (p2bodydist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < (600 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A
triggerall = (p2bodydist x = [0, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (ifelse((vel x > 0 && p2statetype = A), 250, 125) * (AIlevel ** 2 / 64.0)) 
trigger2 = (stateno = [600,609])&& movehit && var(55)=2 && random < 750
trigger3 = (stateno = [630,639])&& movehit && var(55)=2 && random < 250
;---------------------------------------------------------------------------
[State -1, Jumping High Punch]
type = ChangeState
value = 620
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A
triggerall = (p2bodydist x = [0, 100]) && (p2bodydist y = [ -80, 50]) && p2statetype != L 
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall)
trigger2 = (stateno = [610,619])&& movehit && var(55)=2 && random < 700
trigger3 = (stateno = [640,649])&& movehit && var(55)=2 && random < 200
;---------------------------------------------------------------------------
[State -1, Jumping Low Kick]
type = ChangeState
value = 630
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A
triggerall = (p2bodydist x = [0, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [600,609])&& movehit && var(55)=2 && random < 250
;---------------------------------------------------------------------------
[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A
triggerall = (p2bodydist x = [0, 90]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (250 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall)
trigger2 = (stateno = [610,619])&& movehit && var(55)=2 && random < 100
trigger3 = (stateno = [630,639])&& movehit && var(55)=2 && random < 750
;---------------------------------------------------------------------------
[State -1, Jumping High Kick]
type = ChangeState
value = 650
triggerall = AILevel && numenemy &&roundstate=2&&statetype = A
triggerall = (p2bodydist x = [0, 110]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (250 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall) 
trigger2 = (stateno = [610,619])&& movehit && var(55)=2 && random < 250
trigger3 = (stateno = [640,649])&& movehit && var(55)=2 && random < 750

;---------------------------------------------------------------------------
[State -1, run]
type = changestate
value = 100
trigger1 = AIlevel && numenemy
trigger1 = statetype = S && roundstate = 2 && ctrl && random < (300 * (AIlevel ** 2 / 64.0))
trigger1 = (stateno != [100, 105]) && enemynear, movetype != A && p2bodydist x > 120

[State -1, dash]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = statetype = S && roundstate = 2 && ctrl
triggerall = (p2bodydist x = [0, 80]) && backedgebodydist > 80 && (stateno != [100, 105])
trigger1 = enemynear, movetype = A && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -3 && random < (300 * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type = changestate
value = 40
triggerall = AIlevel && numenemy&&random < (50 * (AIlevel ** 2 / 64.0))
triggerall = roundstate = 2 && statetype != A
triggerall = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT
trigger1=ctrl

[state -1,AI Air Guard]
type = ChangeState
value = 132
triggerall = AIlevel && numenemy&& roundstate = 2&&InGuardDist
triggerall = ctrl&&statetype = A
trigger1 = enemynear,numproj
trigger2 = enemynear,HitDefAttr = SCA, NA,SA,HA
trigger2 = random <=ifelse(backedgedist<=10,900,700)

[State -1, Guard]
type = ChangeState
value = 120
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && InGuardDist
trigger1 = ctrl && (StateNo != [120, 155]) && !var(20)
trigger1 = P2BodyDist x >= 40
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger1 = StateType != A || P2StateType = A
trigger1 = ifElse(StateType = A, ((var(3) != [1, 2]) || StateNo = 5210), 1)
trigger1 = Random < (ifElse((P2StateNo = [200, 699]), 100, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))

[State -1, Guard]
type = changestate
value = 120
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && inguarddist
trigger1 = ctrl && (stateno != [120, 155]) && !var(20)
trigger1 = ifelse(statetype = A, (var(9) != 2 || stateno = 5210), 1)
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = random < (ifelse((p2stateno = [200, 699]), 600, ifelse((p2stateno = [1000, 2999]), 800, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, Guard]
type = ChangeState
value = 120
triggerall= AILevel && numenemy&& (StateNo!=[120,155]) && !(enemynear,ctrl) && random < (750 * (AIlevel ** 2 / 64.0))
triggerall= Ctrl||stateno = 21
triggerall=enemynear,Movetype=A && !(enemynear,hitdefattr=SCA,AT) 
trigger1 = inguarddist

[State -1, Super Jump]
type = ChangeState
value = 123
triggerall = AILevel && numenemy && var(55)=2 && statetype != A && roundstate = 2 && (p2bodydist y = [-320,5])
triggerall = stateno != 100 && pos y = 0 && (enemynear,Statetype!=C)
trigger1 = ctrl && enemy,vel y < -1 && (p2bodydist x = [ 10, 70]) && enemynear,movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && enemy,vel y < -1 && random < (150 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear,movetype = H && (enemynear,stateno=5040)
trigger2 = p2bodydist x <= 50 && random < (150 * (AIlevel ** 2 / 64.0))
trigger3 = ctrl && enemynear,MoveType != H&&P2BodyDist Y < -90&& enemy,vel y <= 0 && random < (350 * (AIlevel ** 2 / 64.0))
trigger4 = stateno=450 && MoveHit && random < (800 * (AIlevel ** 2 / 64.0))
trigger5 = ctrl && (p2bodydist x<=140) && (enemynear,statetype!=A) && (enemynear,movetype =A) && (enemynear,stateno=[2000,4999]) && random < (750 * (AIlevel ** 2 / 64.0))

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = AILevel && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000*!var(53) && var(20) <= 60
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)
[State -1, powercharge]
type = changestate
value = 730
triggerAll = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A && !var(20) && !var(40) && !var(53)
trigger1 = Power < const(data.power)
trigger1 = ctrl && Power < const(data.power) && Power < PowerMax
trigger1 = !InGuardDist && P2BodyDist x >= 160 && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, roll / dodge]
type = changestate
value = ifelse(random < 600, 700, 710)
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, movetype = A && p2bodydist x < 80

[State -1, airrecover]
type =changestate
value=ifelse((pos y>=-20),5200,5210)
triggerall= AILevel && numenemy
triggerall= roundstate=2 && stateno=5050
trigger1= vel y>-1 && alive && canrecover && random < (350 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Doom Time]
type =ChangeState
value=3600
triggerall=AILevel && RoundState=2 && numenemy && StateType != A && var(20)<=0 && power >= 3000
triggerall=(p2bodydist x=[30,100]) && (p2bodydist y = [ -50, 5]) && enemynear,statetype!=L && !(enemynear,canrecover) && random < (400 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,stateno!=[120,155]) && (enemynear,stateno!=[5110,5220])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)
[State -1, messatsugoushoryuu]
type = changestate
value = 3200
triggerall=AIlevel&&roundstate = 2 && numenemy && statetype != A &&power >= 1000*!var(53) &&var(20)<=0 && !var(40)
triggerall=(enemynear,Movetype!=A)&&(enemynear,stateno!=[120,155])&&(enemynear,statetype!=C)&&(enemynear,statetype!=L)
triggerall=(p2dist x=[10,60])&&(p2dist y=[-110,5])&&(random<60*(AIlevel ** 2 / 64.0))
trigger1=ctrl|| StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)
[State -1, Raijinshou]
type = changestate
value = 3300
triggerall = roundstate = 2 && AILevel && NumEnemy && random < (700 * (AIlevel ** 2 / 64.0))
triggerall = power >= 1000*!var(53)&&var(20)<=0 && (P2Bodydist x = [-64,64])&& p2movetype != H
triggerall=(enemynear,statetype != L) && StateType != A
trigger1=ctrl|| StateNo=40 || StateNo=52 || (StateNo=[100,101])

[State -1, Happy Happy Trigger]
type=ChangeState
value = Ifelse(power>=2000&&random<=500,3150,3100)
triggerall=AILevel && numenemy && RoundState=2 && (stateno!=3000) && var(20)<=0 && power >= 1000*!var(53) && random < (70 * (AIlevel ** 2 / 64.0)) && !var(40)
triggerall=(enemynear,statetype != L) &&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])
trigger1=ctrl|| StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
[State -1, Raijinshou]
type = changestate
value = 3050
triggerall=AILevel && numenemy && RoundState=2 && (stateno!=3000) && StateType != A && var(20)<=0 && power >= 2000 && random < (270 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L) &&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])&&(p2dist x >=25)
trigger1=ctrl|| StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
[State -1, Raijinshou]
type = changestate
value = 3000
triggerall=AILevel && numenemy && RoundState=2 && (stateno!=3000) && StateType != A && var(20)<=0 && power >= 1000*!var(53) && random < (70 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L) &&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])&&(p2dist x =[25,155])&&(p2dist y =[-115,0])
trigger1=ctrl|| StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
[State -1, Bomb]
type = null;changestate
value = 1380
triggerall = AILevel && numenemy&&roundstate=2
triggerall = StateType = S || StateType = C
triggerall = Random < AILevel * 125
triggerall = ctrl = 1
triggerall = p2stateno != [3000,4999]
trigger1 = p2movetype = A
trigger1 = (p2dist y=[-80,5]) && (p2Dist X >= 120 || p2Dist X < 120)


[State Ryuenjin]
type=null;changestate
value=1350+10*(pos y < 0)
triggerall=AILevel && numenemy && RoundState=2 && StateType != A && P2statetype != L
triggerall=(enemynear,stateno!=[120,155])
triggerall=random < (200 * (AIlevel ** 2 / 64.0)) && (p2bodydist x <=120)
trigger1= ctrl|| var(5) || stateno = 21|| stateno = 22 || StateNo=40 || StateNo=52 || (StateNo=[100,101])

[State -1, SafeBarier]
type=ChangeState
value=Ifelse(power>=800&&random<=250,1305,1300)
triggerall=AILevel && numenemy && RoundState=2 && numhelper(1310)=0 && numhelper(1311)=0
triggerall=(enemynear,stateno!=[120,155])
triggerall=random < (150 * (AIlevel ** 2 / 64.0)) && (p2bodydist x >=35)&&(p2bodydist y=[-40,225])
trigger1= ctrl|| var(5) || stateno = 21|| stateno = 22 || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2 = ctrl && (enemy,numproj > 0) && p2bodydist X >100
trigger3 = ctrl && p2movetype = A && p2bodydist X >= 100
trigger4 = ctrl && p2statetype = L && random <15 && p2bodydist X = [0+vel X*4+(enemynear,vel x*3),30+vel X*4+(enemynear,vel x*3)]

[State -1, DimRift]
type=ChangeState
value=1200
triggerall=AILevel && numenemy && RoundState=2 && random < (50 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,Movetype!=A)&&(enemynear,stateno!=[120,155])&&(enemynear,stateno!=[5100,5220])&&(enemynear,statetype!=L)
triggerall=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger1=(p2dist x >= 50)
trigger2=(p2dist y <= -50)

[State -1, Energy Bolt]
type = ChangeState
value = 1100+(pos y < 0)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && !numhelper(1100) && !numhelper(1101)
triggerall = (p2stateno != [120, 155]) && p2statetype != L
triggerall = !var(6)
trigger1 = ctrl && p2dist x > 80 && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 255]) && stateno != 207 && stateno != 225 && (movehit = [1, 8]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, EX Moonsault Slash]
type = changestate
value = 1005
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (p2bodydist x = [0, 90]) && p2dist y >= 0 && (p2statetype != L)
triggerall = !var(6)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 255]) && stateno != 207 && stateno != 225 && (movehit = [1, 8]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, AcensionKick]
type=ChangeState
value=1000
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (var(3) != [1, 2]) && pos y <= -32
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 90]) && p2dist y >= -30 && (p2statetype != L)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Orbit]
type = ChangeState
value=Ifelse(power>=800&&random<=250,1005,1000)
triggerall=AILevel && numenemy && RoundState = 2 && StateType != A && p2movetype = A && random < (200 * (AIlevel ** 2 / 64.0))
triggerall = P2bodydist X <= 50
triggerall = P2BodyDist Y = [-50,50]
trigger1 = ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
