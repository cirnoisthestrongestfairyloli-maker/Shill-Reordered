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
command.time = 15
command.buffer.time = 1

;-| AI |--------------------------------------------------------
[Command]
Name = "AI_00"
Command = U, U, D, D, B, F, B, F, b, a
Time = 0

[Command]
Name = "AI_01"
Command = U, U, D, D, B, F, B, F, a, a
Time = 0

[Command]
Name = "AI_02"
Command = U, U, D, D, B, F, B, F, b, b
Time = 0

[Command]
Name = "AI_03"
Command = U, U, D, D, B, F, B, F, c, c
Time = 0

[Command]
Name = "AI_04"
Command = U, U, D, D, B, F, B, F, x, x
Time = 0

[Command]
Name = "AI_05"
Command = U, U, D, D, B, F, B, F, y, y
Time = 0

[Command]
Name = "AI_06"
Command = U, U, D, D, B, F, B, F, z, z
Time = 0

[Command]
Name = "AI_07"
Command = U, U, D, D, B, F, B, F, s, s
Time = 0

[Command]
Name = "AI_08"
Command = U, U, D, D, B, F, B, F, a, b
Time = 0

[Command]
Name = "AI_09"
Command = U, U, D, D, B, F, B, F, a, c
Time = 0

[Command]
Name = "AI_10"
Command = U, U, D, D, B, F, B, F, a, x
Time = 0

[Command]
Name = "AI_11"
Command = U, U, D, D, B, F, B, F, a, y
Time = 0

[Command]
Name = "AI_12"
Command = U, U, D, D, B, F, B, F, a, z
Time = 0

[Command]
Name = "AI_13"
Command = U, U, D, D, B, F, B, F, a, s
Time = 0

[Command]
Name = "AI_14"
Command = U, U, D, D, B, F, B, F, b, c
Time = 0

[Command]
Name = "AI_15"
Command = U, U, D, D, B, F, B, F, b, x
Time = 0

[Command]
Name = "AI_16"
Command = U, U, D, D, B, F, B, F, b, y
Time = 0

[Command]
Name = "AI_17"
Command = U, U, D, D, B, F, B, F, b, z
Time = 0

[Command]
Name = "AI_18"
Command = U, U, D, D, B, F, B, F, b, s
Time = 0

[Command]
Name = "AI_19"
Command = U, U, D, D, B, F, B, F, c, a
Time = 0

[Command]
Name = "AI_20"
Command = U, U, D, D, B, F, B, F, c, b
Time = 0

[Command]
Name = "AI_21"
Command = U, U, D, D, B, F, B, F, c, x
Time = 0

[Command]
Name = "AI_22"
Command = U, U, D, D, B, F, B, F, c, y
Time = 0

[Command]
Name = "AI_23"
Command = U, U, D, D, B, F, B, F, c, z
Time = 0

[Command]
Name = "AI_24"
Command = U, U, D, D, B, F, B, F, c, s
Time = 0

[Command]
Name = "AI_25"
Command = U, U, D, D, B, F, B, F, s, a
Time = 0

[Command]
Name = "AI_26"
Command = U, U, D, D, B, F, B, F, s, b
Time = 0

[Command]
Name = "AI_27"
Command = U, U, D, D, B, F, B, F, s, c
Time = 0

[Command]
Name = "AI_28"
Command = U, U, D, D, B, F, B, F, s, x
Time = 0

[Command]
Name = "AI_29"
Command = U, U, D, D, B, F, B, F, s, y
Time = 0

[Command]
Name = "AI_30"
Command = U, U, D, D, B, F, B, F, s, z
Time = 0

;-| Super Motions |--------------------------------------------------------
[Command]
name = "Covering_fire&blast"
command = ~D, DB, B, D, DB, B, a+b
time = 30
[Command]
name = "Covering_fire&blast"
command = ~D, DB, B, D, DB, B, b+c
time = 30
[Command]
name = "Covering_fire&blast"
command = ~D, DB, B, D, DB, B, a+c
time = 30

[Command]
name = "A_sword_of_promised_victory"
command = ~F, B, DB, D, DF, F, c
time = 30

[Command]
name = "Magical_power_release-charge&rise-"
command = ~D, DF, F, D, DF, F, a+b
time = 30
[Command]
name = "Magical_power_release-charge&rise-"
command = ~D, DF, F, D, DF, F, b+c
time = 30
[Command]
name = "Magical_power_release-charge&rise-"
command = ~D, DF, F, D, DF, F, a+c
time = 30

[Command]
name = "Intuition"
command = ~B, D, DB, c
time = 20

[Command]
name = "Magical_power_release-rise-_a"
command = ~F, D, DF, a
time = 20

[Command]
name = "Magical_power_release-rise-_b"
command = ~F, D, DF, b
time = 20

[Command]
name = "Magical_power_release-rise-_c"
command = ~F, D, DF, c
time = 20

[Command]
name = "Magical_power_release-charge-l_a"
command = ~D, DB, B, a

[Command]
name = "Magical_power_release-charge-l_b"
command = ~D, DB, B, b

[Command]
name = "Magical_power_release-charge-l_c"
command = ~D, DB, B, c

[Command]
name = "Magical_power_release-charge-m_a"
command = ~D, DF, F, a

[Command]
name = "Magical_power_release-charge-m_b"
command = ~D, DF, F, b

[Command]
name = "Magical_power_release-charge-m_c"
command = ~D, DF, F, c

[Command]
name = "Wind_King_coming_down_hard_on_a"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "Wind_King_coming_down_hard_on_b"
command = x
time = 1

[Command]
name = "Wind_King_coming_down_hard_on_c"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "Invisible_Air"
command = ~F, D, B, c
time = 30

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 12

[Command]
name = "FF"
command = F, >~$F, U, >~$U, F 
time = 16

[Command]
name = "BB"
command = B, B
time = 12

[Command]
name = "BB"
command = B, >~$B, U, >~$U, B
time = 16
[Command]
name = "SJ"
command = D, $U
time = 10

[Command]
name = "DD"
command = D, D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "recovery"
command = y
time = 1

[Command]
name = "recovery"
command = x
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

[Command]
name = "ab"
command = a+b
time = 0

[Command]
name = "abc"
command = a+b+c
time = 0

[Command]
name = "az"
command = a+z
time = 0
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
name = "start"
command = s
time = 1

[Command]
name = "CM_F"
command = F
time = 1

[Command]
name = "CM_D"
command = D
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
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
name = "hold_s"
command = /s
time = 1

[Command]
name = "A溜め"
command = /$a
time = 1

[Command]
name = "B溜め"
command = /$b
time = 1

[Command]
name = "C溜め"
command = /$c
time = 1

[Command]
name = "X溜め"
command = /$x
time = 1

[Command]
name = "Y溜め"
command = /c
time = 1

[Command]
name = "Z溜め"
command = /$z
time = 1

[Command]
name = "ABC溜め"
command = /b
time = 1

;Abstract Reordered: A/B/C = light/medium/heavy, X = Strike Air, Y = grab, Z = parry, A+B+C = burst, hold B+C = charge
[Command]
name = "ar_grab"
command = y
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
name = "ar_hold_b"
command = /b
time = 1

[Command]
name = "ar_hold_c"
command = /c
time = 1

[Statedef -1]

;---------------------------------------------------------------------------
;Abstract Reordered: burst (Kamijo's) - A+B+C while being hit, recharges in 75 s (fvar(30))
[State -1, AR burst round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
fvar(30) = 0

[State -1, AR burst recharge]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = fvar(30) > 0
fvar(30) = -1
ignorehitpause = 1

;Abstract Reordered: comeback - once a combo has done more than 15% of max life, every further hit
;knocks half a second (30 ticks) off the burst cooldown. fvar(31) = life when the combo started, fvar(33) = life last tick
[State -1, AR burst comeback]
type = VarAdd
triggerall = !ishelper
triggerall = fvar(30) > 0
trigger1 = movetype = H
trigger1 = Life < fvar(33)
trigger1 = fvar(31) - Life > LifeMax * 0.15
fvar(30) = -30
ignorehitpause = 1

[State -1, AR burst comeback clamp]
type = VarSet
triggerall = !ishelper
trigger1 = fvar(30) < 0
fvar(30) = 0
ignorehitpause = 1

[State -1, AR burst combo start]
type = VarSet
triggerall = !ishelper
trigger1 = movetype != H
fvar(31) = Life
ignorehitpause = 1

[State -1, AR burst last life]
type = VarSet
triggerall = !ishelper
trigger1 = 1
fvar(33) = Life
ignorehitpause = 1

[State -1, AR burst HUD 9601 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9601) = 0
trigger1 = fvar(30) = 0
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
trigger1 = fvar(30) > 0
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
trigger1 = fvar(30) > 0
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
trigger1 = fvar(30) = 0
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
trigger1 = fvar(30) > 0
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
trigger1 = fvar(30) > 0
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
trigger1 = fvar(30) > 0
trigger1 = NumExplod(9601)
ID = 9601
ignorehitpause = 1

[State -1, AR burst HUD dim off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = fvar(30) = 0
trigger1 = NumExplod(9602) || NumExplod(9603)
ID = 9602
ignorehitpause = 1

[State -1, AR burst HUD bar off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = fvar(30) = 0
trigger1 = NumExplod(9603)
ID = 9603
ignorehitpause = 1

[State -1, AR burst HUD bar]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(9603)
ID = 9603
scale = (4500 - fvar(30)) / 4500.0, 1
ignorehitpause = 1

[State -1, AR burst]
type = ChangeState
value = ifelse(StateType = A, 7751, 7750)
triggerall = !ishelper
triggerall = var(59) != 1
triggerall = command = "ar_burst"
triggerall = fvar(30) = 0
triggerall = RoundState = 2
triggerall = Alive
trigger1 = (stateno = 5000 || stateno = 5010 || stateno = 5020 || stateno = 5070) && Time > 0
trigger2 = stateno = [5001, 5099]
trigger2 = stateno != 5000 && stateno != 5010 && stateno != 5020 && stateno != 5070

;Abstract Reordered: parry on Z
[State -1, AR Parry]
type = ChangeState
value = 7740
triggerall = var(59) != 1
triggerall = command = "ar_parry"
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; 煙幕による視野外からの援護射撃及び爆破
[State -1]
type = ChangeState
value = 3500
triggerall = (Command = "Covering_fire&blast") && power >= 1000
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = [200,235]) || (stateno = [400,420])
trigger2 = movecontact

;---------------------------------------------------------------------------
; 約束された勝利の剣
[State -1]
type = ChangeState
value = 3100
triggerall = (Command = "A_sword_of_promised_victory")
triggerall = power >= 3000 && (var(58) = 1)
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = [200,235]) || (stateno = [400,420])
trigger2 = movecontact

;---------------------------------------------------------------------------
; 魔力放出・突撃及び上昇
[State -1]
type = ChangeState
value = 3000
triggerall = (Command = "Magical_power_release-charge&rise-") && power >= 1000
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = [200,235]) || (stateno = [400,420])
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
; 風王鉄槌
[State -1]
type = ChangeState
value = 1200
triggerall = (Command = "Wind_King_coming_down_hard_on_a") && (var(59) != 1)
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = [200,235]) || (stateno = [400,420])
trigger2 = movecontact

[State -1]
type = ChangeState
value = 1210
triggerall = Var(59) != 1
triggerall = (Command = "Wind_King_coming_down_hard_on_b") && (var(59) != 1)
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = [200,235]) || (stateno = [400,420])
trigger2 = movecontact

[State -1]
type = ChangeState
value = 1220
triggerall = (Command = "Wind_King_coming_down_hard_on_c") && (var(59) != 1)
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = [200,235]) || (stateno = [400,420])
trigger2 = movecontact



[State 0, VarSet]
type = VarSet
trigger1 = time >= 0
trigger1 = 1
v =  58   ;fv = 10
value = 1
ignorehitpause = 1
persistent = 1

;---------------------------------------------------------------------------
;ゲージ溜め
[State -1]
Type = ChangeState
Value = 1850
TriggerAll = Var(59) != 1
triggerall = power < 3000
TriggerAll = command = "ar_hold_b" && command = "ar_hold_c"   ;Abstract Reordered: hold B + C
TriggerAll = StateType != A
trigger1 = stateno != 1850
Trigger1 = Ctrl ||  MoveType != H
;===========================================================================
;---------------------------------------------------------------------------
; 直感
[State -1]
type = ChangeState
value = 1600
triggerall = Var(59) != 1
triggerall = (Command = "Intuition")
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = [200,235]) || (stateno = [400,420])
trigger2 = movecontact

;---------------------------------------------------------------------------
; 魔力放出・上昇
[State -1]
type = ChangeState
value = 1500
triggerall = (Command = "Magical_power_release-rise-_a")
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = [200,235]) || (stateno = [400,420])
trigger2 = movecontact

[State -1]
type = ChangeState
value = 1510
triggerall = (Command = "Magical_power_release-rise-_b")
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = [200,235]) || (stateno = [400,420])
trigger2 = movecontact

[State -1]
type = ChangeState
value = 1520
triggerall = (Command = "Magical_power_release-rise-_c")
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = [200,235]) || (stateno = [400,420])
trigger2 = movecontact

;---------------------------------------------------------------------------
; 魔力放出・上昇
[State -1]
type = ChangeState
value = 1500
triggerall = (Command = "Magical_power_release-rise-_a")
trigger1 = statetype = A && (ctrl || (stateno = 125 && time >= 5))
trigger2 = (stateno = [600,620]) && movecontact

[State -1]
type = ChangeState
value = 1510
triggerall = (Command = "Magical_power_release-rise-_b")
trigger1 = statetype = A && (ctrl || (stateno = 125 && time >= 5))
trigger2 = (stateno = [600,620]) && movecontact
[State -1]
type = ChangeState
value = 1520
triggerall = (Command = "Magical_power_release-rise-_c")
trigger1 = statetype = A && (ctrl || (stateno = 125 && time >= 5))
trigger2 = (stateno = [600,620]) && movecontact
;---------------------------------------------------------------------------
; 魔力放出・突撃(下段)
[State -1]
type = ChangeState
value = 1400
triggerall = (Command = "Magical_power_release-charge-l_a")
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = [200,235]) || (stateno = [400,420])
trigger2 = movecontact

[State -1]
type = ChangeState
value = 1410
triggerall = (Command = "Magical_power_release-charge-l_b")
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = [200,235]) || (stateno = [400,420])
trigger2 = movecontact

[State -1]
type = ChangeState
value = 1420
triggerall = (Command = "Magical_power_release-charge-l_c")
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = [200,235]) || (stateno = [400,420])
trigger2 = movecontact

;---------------------------------------------------------------------------
; 魔力放出・突撃(中段)
[State -1]
type = ChangeState
value = 1300
triggerall = (Command = "Magical_power_release-charge-m_a")
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = [200,235]) || (stateno = [400,420])
trigger2 = movecontact

[State -1]
type = ChangeState
value = 1310
triggerall = (Command = "Magical_power_release-charge-m_b")
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = [200,235]) || (stateno = [400,420])
trigger2 = movecontact

[State -1]
type = ChangeState
value = 1320
triggerall = (Command = "Magical_power_release-charge-m_c")
trigger1 = statetype != A && (ctrl || (stateno = 100 && time >= 5))
trigger2 = (stateno = [200,235]) || (stateno = [400,420])
trigger2 = movecontact




;===========================================================================
;---------------------------------------------------------------------------
;特殊行動
[State -1]
type = ChangeState
value = 5201
triggerall = Var(59) != 1
trigger1 = 0   ;Abstract Reordered: X / Z are Strike Air / parry now

;---------------------------------------------------------------------------
;チャンスメイク
[State -2]
type = VarSet
triggerall = Var(59) != 1
triggerall = var(10) = 0
trigger1 = command = "CM_F" && command != "holddown"&& Command != "holdup"
var(10) = 1

[State -2]
type = VarSet
triggerall = Var(59) != 1
triggerall = var(11) = 0
trigger1 = command = "CM_D" && command != "holdfwd"&& Command != "holdback"
var(11) = 1

;------------------------------------------
;　投げ
[State -1]
type = ChangeState
value = 800
triggerall = 0   ;Abstract Reordered: grab is on Y
trigger1 = command = "holdfwd" && p2bodydist X < 3 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 7 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)

[State -1]
type = ChangeState
value = 800
triggerall = Var(59) != 1
triggerall = command = "ar_grab"   ;Abstract Reordered: grab on Y
trigger1 = statetype = S && ctrl && stateno != 100
trigger1 = p2bodydist X < 7 && p2movetype != H && p2statetype != A

;---------------------------------------------------------------------------
;スーパージャンプ
[State -1]
type = ChangeState
value = 95
triggerall = command = "holdup"
trigger1 = (stateno = 420 && AnimElemTime(5) = 1) && movehit

[State -1]
type = ChangeState
value = 95
triggerall = Var(59) != 1
trigger1 = command = "SJ"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF" && statetype = S && ctrl

;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB" && statetype = S && ctrl

;---------------------------------------------------------------------------
;挑発
[State -1]
type = ChangeState
value = IfElse((Random = [0,500]),195,196)
triggerall = Var(59) != 1
triggerall = command = "start"
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;空中ダッシュ
[State -1]
Type = ChangeState
Value = 125
TriggerAll = Var(59) != 1
TriggerAll = Command = "FF" || Command = "holdfwd" && Command = "ab" && Command != "holddown" && Command != "holdup" || Command = "holdfwd" && Command = "y" && Command != "holddown" && Command != "holdup" 
TriggerAll = Pos Y < -35.75 
TriggerAll = StateType = A
triggerall = var(42) < 1
Trigger1 = Ctrl

;---------------------------------------------------------------------------
;空中バックダッシュ
[State -1]
Type = ChangeState
Value = 126
TriggerAll = Var(59) != 1
TriggerAll = Command = "BB" || Command = "holdback" && Command = "ab" && Command != "holddown" && Command != "holdup" || Command = "holdback" && Command = "y" && Command != "holddown" && Command != "holdup" 
TriggerAll = Pos Y < -35.75 
TriggerAll = StateType = A
triggerall = var(42) < 1
Trigger1 = Ctrl 


;===========================================================================
;---------------------------------------------------------------------------
;立ち弱
[State -1]
type = ChangeState
value = 200
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = stateno = 200 && movecontact
;---------------------------------------------------------------------------
;立ち中
[State -1]
type = ChangeState
value = 240
triggerall = command = "b" && command != "holddown" && command = "holdfwd"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = movecontact

[State -1]
type = ChangeState
value = 230
triggerall = command = "b" && command != "holddown" && command = "holdback"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = movecontact

;---------------------------------------------------------------------------
;立ち中
[State -1]
type = ChangeState
value = 270
triggerall = command = "Magical_power_release-charge-l_b"
trigger1 = statetype =A && ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = movecontact
trigger3= stateno = [600,620]
trigger3 =  movecontact
[State -1]
type = ChangeState
value = 270
triggerall = command = "Magical_power_release-charge-l_a"
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = movecontact
trigger3= stateno = [600,620]
trigger3 =  movecontact
[State -1]
type = ChangeState
value = 270
triggerall = command = "Magical_power_release-charge-l_c"
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = movecontact
trigger3= stateno = [600,620]
trigger3 =  movecontact
[State -1]
type = ChangeState
value = 210
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200) || (stateno = 400)
trigger2 = movecontact

;---------------------------------------------------------------------------
;立ち強
[State -1]
type = ChangeState
value = 260
triggerall = command = "c" && command != "holddown" && command = "holdfwd"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,220]) || (stateno = [400,410])
trigger2 = movecontact

[State -1]
type = ChangeState
value = 250
triggerall = command = "c" && command != "holddown" && command = "holdback"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,220]) || (stateno = [400,410])
trigger2 = movecontact

[State -1]
type = ChangeState
value = 220
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,420])
trigger2 = movecontact

;---------------------------------------------------------------------------
;しゃがみ弱
[State -1]
type = ChangeState
value = 400
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 200)
trigger2 = movecontact
trigger3 = stateno = 400 && movecontact
;---------------------------------------------------------------------------
;しゃがみ中
[State -1]
type = ChangeState
value = 410
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 200) || (stateno = 400)
trigger2 = movecontact

;---------------------------------------------------------------------------
;しゃがみ強
[State -1]
type = ChangeState
value = 420
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = [200,220]) || (stateno = [400,410])
trigger2 = movecontact

;---------------------------------------------------------------------------
;空中弱
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
;---------------------------------------------------------------------------
;空中中
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact

;---------------------------------------------------------------------------
;空中強
[State -1]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,610]) && movecontact
