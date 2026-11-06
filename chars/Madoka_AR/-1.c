;===========================================================================
;†††-1 STATES†††
;===========================================================================
[remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| default values |-------------------------------------------------------

[defaults]
command.time = 15
command.buffer.time = 1

;-| ai activation |---------------------------------------------------------

[command]
name = "ai1"
command = DF, B, DB, D, DF, F, B, D, DB, x
time = 1

[command]
name = "ai2"
command = DF, B, DB, D, DF, F, B, D, DB, y
time = 1

[command]
name = "ai3"
command = DF, B, DB, D, DF, F, B, D, DB, z
time = 1

[command]
name = "ai4"
command = DF, B, DB, D, DF, F, B, D, DB, a
time = 1

[command]
name = "ai5"
command = DF, B, DB, D, DF, F, B, D, DB, b
time = 1

[command]
name = "ai6"
command = DF, B, DB, D, DF, F, B, D, DB, c
time = 1

[command]
name = "ai7"
command = DF, B, DB, D, DF, F, B, D, DB, x+y
time = 1

[command]
name = "ai8"
command = DF, B, DB, D, DF, F, B, D, DB, y+z
time = 1

[command]
name = "ai9"
command = DF, B, DB, D, DF, F, B, D, DB, z+x
time = 1

[command]
name = "ai10"
command = DF, B, DB, D, DF, F, B, D, DB, a+b
time = 1

[command]
name = "ai11"
command = DF, B, DB, D, DF, F, B, D, DB, b+c
time = 1

[command]
name = "ai12"
command = DF, B, DB, D, DF, F, B, D, DB, c+a
time = 1

[command]
name = "ai13"
command = DF, B, DB, D, DF, F, B, D, DB, x+a
time = 1

[command]
name = "ai14"
command = DF, B, DB, D, DF, F, B, D, DB, x+b
time = 1

[command]
name = "ai15"
command = DF, B, DB, D, DF, F, B, D, DB, x+c
time = 1

[command]
name = "ai16"
command = DF, B, DB, D, DF, F, B, D, DB, y+a
time = 1

[command]
name = "ai17"
command = DF, B, DB, D, DF, F, B, D, DB, y+b
time = 1

[command]
name = "ai18"
command = DF, B, DB, D, DF, F, B, D, DB, y+c
time = 1

[command]
name = "ai19"
command = DF, B, DB, D, DF, F, B, D, DB, z+a
time = 1

[command]
name = "ai20"
command = DF, B, DB, D, DF, F, B, D, DB, z+b
time = 1

[command]
name = "ai21"
command = DF, B, DB, D, DF, F, B, D, DB, z+c
time = 1

[command]
name = "ai22"
command = DF, B, DB, D, DF, F, B, D, DB, x+y+z
time = 1

[command]
name = "ai23"
command = DF, B, DB, D, DF, F, B, D, DB, x+y+a
time = 1

[command]
name = "ai24"
command = DF, B, DB, D, DF, F, B, D, DB, x+y+b
time = 1

[command]
name = "ai25"
command = DF, B, DB, D, DF, F, B, D, DB, x+y+c
time = 1

[command]
name = "ai26"
command = DF, B, DB, D, DF, F, B, D, DB, x+a+z
time = 1

[command]
name = "ai27"
command = DF, B, DB, D, DF, F, B, D, DB, x+b+z
time = 1

[command]
name = "ai28"
command = DF, B, DB, D, DF, F, B, D, DB, x+c+z
time = 1

[command]
name = "ai29"
command = DF, B, DB, D, DF, F, B, D, DB, a+y+z
time = 1

[command]
name = "ai30"
command = DF, B, DB, D, DF, F, B, D, DB, b+y+z
time = 1

[command]
name = "ai31"
command = DF, B, DB, D, DF, F, B, D, DB, c+y+z
time = 1

[command]
name = "ai32"
command = DF, B, DB, D, DF, F, B, D, DB, a+b+c
time = 1

;-| hypers |--------------------------------------------------------

[command]
name = "luminous"
command = U, D, U, D, U, D, U, D

[command]
name = "ascension"
command = ~F, B, DB, D, DF, F, c
time = 30

[command]
name = "r-star"
command = ~F, B, DB, D, DF, F, b
time = 30

[command]
name = "rapid1"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[command]
name = "rapid1"
command = ~D, DF, F, D, DF, F, b+c
time = 30

[command]
name = "rapid1"
command = ~D, DF, F, D, DF, F, a+c
time = 30

[command]
name = "rapid2"
command = U, D, U, D, U, D, U, D

[command]
name = "rapid3"
command = U, D, U, D, U, D, U, D

[command]
name = "msg1"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[command]
name = "msg1"
command = ~D, DB, B, D, DB, B, b+c
time = 30

[command]
name = "msg1"
command = ~D, DB, B, D, DB, B, a+c
time = 30

[command]
name = "msg2"
command = U, D, U, D, U, D, U, D

[command]
name = "msg3"
command = U, D, U, D, U, D, U, D

[command]
name = "arrow1"
command = ~D, DF, F, a

[command]
name = "arrow2"
command = ~D, DF, F, b

[command]
name = "arrow3"
command = ~D, DF, F, c

[command]
name = "squall1"
command = ~D, DB, B, a

[command]
name = "squall2"
command = ~D, DB, B, b

[command]
name = "squall3"
command = ~D, DB, B, c

[command]
name = "luna1"
command = ~F, D, DF, a

[command]
name = "luna2"
command = ~F, D, DF, b

[command]
name = "luna3"
command = ~F, D, DF, c

;-| ex |---------------------------------------------------------

[command]
name = "ppp"
command = b+c

[command]
name = "kkk"
command = b+c

[Command]
name = "sjump-n"
command = $D, U
time = 10

[Command]
name = "sjump-f"
command = $D, UF
time = 10

[Command]
name = "sjump-b"
command = $D, UB
time = 10

;-| original command |------------------------------------------------------

[command]
name = "hold_s"
command = /s
time = 1

[command]
name = "sdown"
command = /D
time = 1

[command]
name = "sdownfwd"
command = /DF
time = 1

[command]
name = "sdownback"
command = /DB
time = 1

[command]
name = "u"
command = /U
time = 1

[command]
name = "uf"
command = /UF
time = 1

[command]
name = "ub"
command = /UB
time = 1

;-| double tap |-----------------------------------------------------------

[command]
name = "ff" ;required (do not remove)
command = F, F
time = 10

[command]
name = "bb" ;required (do not remove)
command = B, B
time = 10

;-| 2/3 button combination |-----------------------------------------------

[command]
name = "recovery";required (do not remove)
command = x+y
time = 1

[command]
name = "p+k"
command = x+a
time = 1

[command]
name = "p+k"
command = y+b
time = 1

[command]
name = "p+k"
command = z+c
time = 1

;-| dir + button |----------------------------------------------------------

[command]
name = "fwd_a"
command = /$F,a
time = 1

[command]
name = "fwd_b"
command =/$F,b
time = 1

[command]
name = "fwd_c"
command = /$F,c
time = 1

[command]
name = "fwd_x"
command = /$F,x
time = 1

[command]
name = "fwd_s"
command = /$F,s
time = 1

[command]
name = "fwd_y"
command = /$F,y
time = 1

[command]
name = "fwd_z"
command = /$F,z
time = 1

[command]
name = "back_a"
command = /$B,a
time = 1

[command]
name = "back_b"
command = /$B,b
time = 1

[command]
name = "back_c"
command = /$B,c
time = 1

[command]
name = "back_x"
command = /$B,x
time = 1

[command]
name = "back_y"
command = /$B,y
time = 1

[command]
name = "back_z"
command = /$B,z
time = 1

[command]
name = "down_a"
command = /$D,a
time = 1

[command]
name = "down_b"
command = /$D,b
time = 1

[command]
name = "down_c"
command = /$D,c
time = 1

[command]
name = "down_x"
command = /$D,x
time = 1

[command]
name = "down_y"
command = /$D,y
time = 1

[command]
name = "down_z"
command = /$D,z
time = 1

;-| single button |---------------------------------------------------------

[command]
name = "a"
command = a
time = 1

[command]
name = "b"
command = b
time = 1

[command]
name = "c"
command = c
time = 1

[command]
name = "x"
command = x
time = 1

[command]
name = "y"
command = y
time = 1

[command]
name = "z"
command = z
time = 1

[command]
name = "start"
command = s
time = 1

;-| dir |--------------------------------------------------------------

[command]
name = "fwd"
command = $F
time = 1

[command]
name = "back"
command = $B
time = 1

[command]
name = "up"
command = $U
time = 1

[command]
name = "down"
command = $D
time = 1

;-| hold dir |--------------------------------------------------------------

[command]
name = "holdfwd";required (do not remove)
command = /$F
time = 1

[command]
name = "holdback";required (do not remove)
command = /$B
time = 1

[command]
name = "holdup" ;required (do not remove)
command = /$U
time = 1

[command]
name = "holddown";required (do not remove)
command = /$D
time = 1

;Abstract Reordered: A/B/C = light/medium/heavy, X = Hope, Y = grab, Z = parry, A+B+C = burst
[command]
name = "ar_hope"
command = x
time = 1

[command]
name = "ar_grab"
command = y
time = 1

[command]
name = "ar_parry"
command = z
time = 1

[command]
name = "ar_burst"
command = a+b+c
time = 1

[statedef -1]
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
triggerall = var(50) = 0
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
triggerall = var(50) = 0
triggerall = command = "ar_parry"
trigger1 = ctrl

;Abstract Reordered: X = Hope. Spends 50 Hope (var(24)); the next arrow special is powered (var(25)).
[State -1, AR Hope]
type = ChangeState
value = 7760
triggerall = var(50) = 0
triggerall = command = "ar_hope"
triggerall = var(24) >= 50
triggerall = var(25) = 0
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

;===========================================================================
;†超必殺技†
;===========================================================================
;■ルミナスワールドエンド
[state -1, luminous world end]
type = changestate
value = 4000
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = 0   ;Abstract Reordered: tag-only, off
triggerall = statetype != a
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = stateno = 106
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;■トーラスアセンション
[state -1, torus ascension]
type = changestate
value = 3500
triggerall = var(50) = 0
triggerall = command = "ascension"
triggerall = statetype != a
triggerall = power >= 3000
trigger1 = ctrl
trigger2 = stateno = 106
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;■レイジングスター
[state -1, raging star]
type = changestate
value = 3300
triggerall = var(50) = 0
triggerall = command = "r-star"
triggerall = statetype != a
triggerall = power >= 3000
trigger1 = ctrl
trigger2 = stateno = 106
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;■ゴッズメッセージ
[state -1, gods message]
type = changestate
value = 3200
triggerall = var(1) = 0
triggerall = var(50) = 0
triggerall = command = "msg1" || command = "msg2" || command = "msg3"
triggerall = statetype != a
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;■ラピッドファイアアロー
[state -1, rapid fire arrow]
type = changestate
value = 3000
triggerall = var(50) = 0
triggerall = command = "rapid1" || command = "rapid2" || command = "rapid3"
triggerall = statetype != a
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 106
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;===========================================================================
;†必殺技†
;===========================================================================
;■マジカルアロー
[state -1, magical arrow]
type = changestate
value = 1000
triggerall = var(50) = 0
triggerall = command = "arrow1" || command = "arrow2" || command = "arrow3"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 106
trigger3 = stateno = [200,320]
trigger3 = stateno != 240 && stateno != 250
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;===========================================================================
;■ブラストスコール
[state -1, blast squall]
type = changestate
value = 1100
triggerall = var(50) = 0
triggerall = command = "squall1" || command = "squall2" || command = "squall3"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 106
trigger3 = stateno = [200,320]
trigger3 = stateno != 240 && stateno != 250
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;===========================================================================
;■ルナティックシャフト
[state -1, lunatic shaft]
type = changestate
value = 1200
triggerall = var(50) = 0
triggerall = command = "luna1" || command = "luna2" || command = "luna3"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 106
trigger3 = stateno = [200,320]
trigger3 = stateno != 240 && stateno != 250
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
;---------------------------------------------------------------------------
;■マジカルアローインザスカイ
[state -1, magical arrow mid air]
type = changestate
value = 1300
triggerall = var(50) = 0
triggerall = command = "arrow1" || command = "arrow2" || command = "arrow3"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [400,450]
trigger2 = (stateno != 420) && (stateno != 450)
trigger2 = movecontact
;---------------------------------------------------------------------------
;■へちょ化
[state -1, hecho]
type = changestate
value = 197
triggerall = var(50) = 0
triggerall = 0   ;Abstract Reordered: off
triggerall = statetype != a
trigger1 = ctrl
trigger2 = (stateno = 106)
trigger3 = stateno = [195,199]
trigger4 = stateno = [200,350]
trigger4 = roundstate > 2		;ラウンド外のみ
;===========================================================================
;†システム†
;===========================================================================
;■ガードキャンセル
[state -1, guard cancel attack]
type = changestate
value = 2000
triggerall = var(50) = 0
triggerall = command = "kkk"
triggerall = statetype != a
triggerall = power >= 1000
trigger1 = stateno = [150,155]
ignorehitpause = 1
;---------------------------------------------------------------------------
;■マギアキャンセル
[state -1, magia cancel]
type = changestate
value = 900+(command="holdfwd")
triggerall = var(10) > 0
triggerall = var(50) = 0
triggerall = command = "ppp"
triggerall = power >= 1000
trigger1 = stateno = [200,499]
trigger1 = movecontact
trigger2 = stateno = 501
trigger2 = movecontact
trigger3 = stateno = [1000,1999]
;===========================================================================
;†投げ技†
;===========================================================================
;■ポコパン
[state -1, poco pan]
type = changestate
value = 500
triggerall = var(50) = 0
triggerall = command = "ar_grab"   ;Abstract Reordered: grab on Y
triggerall = statetype = s
trigger1 = ctrl
trigger2 = stateno = 197
trigger2 = time > 10
;---------------------------------------------------------------------------
;■マジカルEMG
[state -1, magical emg]
type = changestate
value = 550
triggerall = var(50) = 0
triggerall = command = "ar_grab"   ;Abstract Reordered: grab on Y
triggerall = statetype = a
trigger1 = ctrl
;===========================================================================
;†補助動作†
;===========================================================================
;■ダッシュ
[state -1, run fwd]
type = changestate
value = 100
triggerall = var(50) = 0
triggerall = command = "ff"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 197
trigger2 = time > 10
;---------------------------------------------------------------------------
;■バックステップ
[state -1, step back]
type = changestate
value = 105
triggerall = var(50) = 0
triggerall = command = "bb"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 197
trigger2 = time > 10
;---------------------------------------------------------------------------
;■空中ダッシュ
[state -1, air dash fwd]
type = changestate
value = 110
triggerall = var(50) = 0
triggerall = sysvar(3) > 0
triggerall = command = "ff"
trigger1 = stateno != 110
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 1400
trigger2 = movehit
;---------------------------------------------------------------------------
;■空中バックダッシュ
[state -1, air dash back]
type = changestate
value = 115
triggerall = var(50) = 0
triggerall = sysvar(3) > 0
triggerall = command = "bb"
trigger1 = stateno != 115
trigger1 = statetype = a
trigger1 = ctrl
;---------------------------------------------------------------------------
;■エアジャンプ
[state -1, air jump]
type = changestate
value = 45
triggerall = var(50) = 0
triggerall = sysvar(3) > 0
triggerall = command = "up"
trigger1 = statetype = a
trigger1 = time >= 10
trigger1 = ctrl
;---------------------------------------------------------------------------
;■ジャンプキャンセル
[state -1, jump]
type = changestate
value = 40
triggerall = var(50) = 0
triggerall = sysvar(3) > 0
triggerall = command = "up" || command = "holdup"
triggerall = movehit
trigger1 = stateno = [200,350]
trigger1 = stateno != 350
ignorehitpause = 1
;---------------------------------------------------------------------------
;■エアジャンプキャンセル
[state -1, jump cancel]
type = changestate
value = 45
triggerall = var(50) = 0
triggerall = sysvar(3) > 0
triggerall = command = "up"
triggerall = movehit
trigger1 = stateno = [400,450]
trigger1 = (stateno != 420)
ignorehitpause = 1
;===========================================================================
;†特殊技†
;===========================================================================
;■スカイナピーチ
[state -1, skyna peach]
type = changestate
value = 450
triggerall = var(50) = 0
triggerall = command = "fwd_c"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = [400,440]
trigger2 = movecontact
;===========================================================================
; 通常技
;===========================================================================
;■立ち小パンチ・ねこフリック
[state -1, standing jab]
type = changestate
value = 200
triggerall = var(50) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = prevstateno != 200
trigger3 = movecontact || (animelemtime(3) > 0)
;---------------------------------------------------------------------------
;■立ち中パンチ・スパークルビーライン
[state -1, standing strong]
type = changestate
value = 210
triggerall = var(50) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 300 || stateno = 230
trigger2 = movecontact
;---------------------------------------------------------------------------
;■立ち大パンチ・シャイニングドレス
[state -1, standing fierce]
type = changestate
value = 220
triggerall = var(50) = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 300 || stateno = 230 || stateno = 210 || stateno = 310 || stateno = 240
trigger2 = movecontact
;---------------------------------------------------------------------------
;■立ち小キック・いぬキック
[state -1, standing short]
type = changestate
value = 230
triggerall = var(50) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 300
trigger2 = movecontact
;---------------------------------------------------------------------------
;■立ち中キック・ワイルドピーチ
[state -1, standing forward]
type = changestate
value = 240
triggerall = var(50) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 300 || stateno = 230 || stateno = 210
trigger2 = movecontact
;---------------------------------------------------------------------------
;■立ち大キック・メテオインパクト
[state -1, standing roundhouse]
type = changestate
value = 250
triggerall = var(50) = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 300 || stateno = 230 || stateno = 210 || stateno = 310 || stateno = 240 || stateno = 220
trigger2 = movecontact
;---------------------------------------------------------------------------
;■しゃがみ小パンチ・ねこフリック
[state -1, crouching jab]
type = changestate
value = 300
triggerall = var(50) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 300
trigger3 = prevstateno != 300
trigger3 = movecontact || (animelemtime(3) > 0)
;---------------------------------------------------------------------------
;■しゃがみ中パンチ・アストログリム
[state -1, crouching strong]
type = changestate
value = 310
triggerall = var(50) = 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 300 || stateno = 230 || stateno = 210
trigger2 = movecontact
;---------------------------------------------------------------------------
;■しゃがみ大パンチ・スターアメイズ
[state -1, crouching fierce]
type = changestate
value = 320
triggerall = var(50) = 0
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 300 || stateno = 230 || stateno = 210 || stateno = 310 || stateno = 240 || stateno = 220
trigger2 = movecontact
;---------------------------------------------------------------------------
;■ジャンプ小パンチ・ティンクルスター
[state -1, jumping jab]
type = changestate
value = 400
triggerall = var(50) = 0
triggerall = command = "a"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = prevstateno != 400
trigger2 = movecontact
;---------------------------------------------------------------------------
;■ジャンプ中パンチ・コメットソード
[state -1, jumping strong]
type = changestate
value = 410
triggerall = var(50) = 0
triggerall = command = "b"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
;---------------------------------------------------------------------------
;■ジャンプ大パンチ・セレスティアルライト
[state -1, jumping fierce]
type = changestate
value = 420
triggerall = var(50) = 0
triggerall = command = "c"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = 400 || stateno = 410
trigger2 = movecontact
;---------------------------------------------------------------------------
;■挑発
[state -1, taunt]
type = changestate
value = 195
triggerall = var(50) = 0
triggerall = command = "start"
trigger1 = statetype != a
trigger1 = ctrl
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;===========================================================================
;†AI ACTIVATION SWITCH†
;===========================================================================
[state -1, ai]
type = helper
triggerall = !ishelper
triggerall = numhelper(9990) = 0
triggerall = var(51) = 0
trigger1 = command = "ai1"
trigger2 = command = "ai2"
trigger3 = command = "ai3"
trigger4 = command = "ai4"
trigger5 = command = "ai5"
trigger6 = command = "ai6"
trigger7 = command = "ai7"
trigger8 = command = "ai8"
trigger9 = command = "ai9"
trigger10 = command = "ai10"
trigger11 = command = "ai11"
trigger12 = command = "ai12"
trigger13 = command = "ai13"
trigger14 = command = "ai14"
trigger15 = command = "ai15"
trigger16 = command = "ai16"
trigger17 = command = "ai17"
trigger18 = command = "ai18"
trigger19 = command = "ai19"
trigger20 = command = "ai20"
trigger21 = command = "ai21"
trigger22 = command = "ai22"
trigger23 = command = "ai23"
trigger24 = command = "ai24"
trigger25 = command = "ai25"
trigger26 = command = "ai26"
trigger27 = command = "ai27"
trigger28 = command = "ai28"
trigger29 = command = "ai29"
trigger30 = command = "ai30"
trigger31 = command = "ai31"
trigger32 = command = "ai32"
trigger33 = var(52) = 1
name = "ai"
id = 9990
stateno = 9990
postype = front
pos = -160,0
facing = facing

[state -1, setting]
type = helper
triggerall = !ishelper
triggerall = numhelper(9999) = 0
trigger1 = var(2) < 100
trigger2 = numhelper(9990) != 0
name = "setting"
id = 9999
stateno = 9999
postype = front
pos = -160,0
;===========================================================================
;†環境変数†
;===========================================================================
;■リセット
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = var(50) = 1
trigger1 = random < 50*var(50);250
trigger2 = var(50) = 2
trigger2 = random < 10*var(50);50
trigger3 = var(50) = 3
trigger3 = random < 5*var(50);25
trigger4 = var(50) = 4
trigger4 = random < 1*var(50);5
trigger5 = movetype = h
trigger5 = stateno != [150,155]
var(53) = 0

;■アローコンボ、ルナコンボ
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = [10,20]
trigger1 = statetype = a || p2movetype != h
var(53) = 0

;■ブラスト連係
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = [33,35]
trigger1 = p2statetype = l
trigger2 = statetype = a
trigger3 = moveguarded
trigger4 = stateno = 1250
var(53) = 0

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 35
trigger1 = p2movetype != h
trigger2 = movecontact
var(53) = 0

;■ジャンプ連係
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 40
trigger1 = stateno = 52
trigger2 = p2movetype = a
trigger2 = p2bodydist x < 80
var(53) = 0

;■対空ジャンプ
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 50
trigger1 = vel y > 0
trigger2 = stateno = 550
var(53) = 0

;■エアダッシュ連係
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 60
trigger1 = stateno = 52
trigger2 = movecontact
var(53) = 0

;■マギアキャンセル・フォロー
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 70
trigger1 = stateno = 1200
trigger2 = movecontact
var(53) = 0

;■マジカルアロー・コマンド管理
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = stateno = 1000
trigger1 = var(7) != [1,3]
trigger1 = time < 2
var(7) = 1

[state -1, changeanim]
type = changeanim
triggerall = var(50) != 0
triggerall = stateno = 1000
triggerall = anim != [1001,1003]
trigger1 = time < 2
value = 1000+var(7)
elem = time

;■ブラストスコール・コマンド管理
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = stateno = 1100
trigger1 = var(7) != [3,7]
trigger1 = time < 2
var(7) = 3

;■マジカルアローインザスカイ・コマンド管理
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = stateno = 1300
trigger1 = var(7) != [1,3]
trigger1 = time < 2
var(7) = 1

;■ゴッズメッセージ・コマンド管理
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = stateno = 3200
trigger1 = var(7) != [3,7]
trigger1 = time < 2
var(7) = 3

;■累積監視
[state -1, varadd]
type = varadd
triggerall = var(50) != 0
triggerall = alive && numenemy
trigger1 = enemynear,ctrl = 0
trigger1 = p2movetype != h
trigger1 = p2stateno != 5120
var(49) = 1

[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = alive && numenemy
trigger1 = enemynear,ctrl = 1
trigger2 = p2movetype = h
var(49) = 0

;■投げ無敵認識
[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = stateno = 500 || stateno = 550
trigger1 = animtime = 0
var(48) = 1

;■投げ無敵認識解除
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = numenemy
trigger1 = enemy,roundsexisted = 0
trigger1 = roundstate < 2
trigger2 = stateno = 500 || stateno = 550
trigger2 = movehit
var(48) = 0

;■ガードキャンセル＆マギアキャンセル・インターバル
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = 2000
trigger2 = stateno = 900
var(55) = 2000-100*var(50)

[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = var(55) > 0
var(55) = -1
ignorehitpause = 1

;■無敵技・インターバル
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = 3000
trigger2 = stateno = 3300
var(56) = 600

[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = var(56) > 0
var(56) = -1
ignorehitpause = 1

;■挑発・インターバル
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = [195,199]
trigger1 = time < 5
var(57) = 1000

[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = var(57) > 0
var(57) = -1
ignorehitpause = 1

;■歩行
[state -1, varset]
type = varset
triggerall = !ishelper
triggerall = var(50) != 0
triggerall = sysvar(1) = 0
triggerall = stateno = 21
trigger1 = p2movetype = h
trigger2 = random < 500+100*(pos x<0)+100*(p2bodydist x>100)
sysvar(1) = 1

[state -1, varset]
type = varset
triggerall = !ishelper
triggerall = var(50) != 0
triggerall = sysvar(1) = 0
triggerall = stateno = 21
triggerall = p2movetype != h
trigger1 = random < 300*100*(pos x>0)+100*(p2bodydist x<100)
sysvar(1) = -1

;■ジャンプ
[state -1, varset]
type = varset
triggerall = !ishelper
triggerall = var(50) != 0
triggerall = stateno = 41 || stateno = 45
triggerall = time < 2
triggerall = p2movetype != h
trigger1 = random < 100
trigger2 = var(53) = 50
sysvar(1) = 0-1*(random<500)

;■バックジャンプ連係
[state -1, varset]
type = varset
triggerall = !ishelper
triggerall = var(50) != 0
triggerall = stateno = 41 || stateno = 45
triggerall = time < 2
trigger1 = var(53) = 40
triggerall = random < 800
sysvar(1) = 0-(random<800)
;===========================================================================
;†反撃動作†
;===========================================================================
;■トーラスアセンション
[state -1, torus ascension]
type = changestate
value = 3500
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = power >= 5000
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
triggerall = p2bodydist x = [0,40+30*(enemynear,vel x>0)]
trigger1 = random < 10*var(50);50
trigger1 = prevstateno = [130,155]			;■ガードヒット監視
;---------------------------------------------------------------------------
;■小パンチ
[state -1, jab]
type = changestate
value = 200+100*(statetype=c)
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
triggerall = p2bodydist x = [-20,40]
trigger1 = random < 40*var(50);200
trigger1 = prevstateno = [130,155]			;■ガードヒット監視
;---------------------------------------------------------------------------
;■立ち小キック
[state -1, standing short]
type = changestate
value = 230
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
triggerall = p2bodydist x = [-20,30]
trigger1 = random < 20*var(50);100
trigger1 = prevstateno = [130,155]			;■ガードヒット監視
;---------------------------------------------------------------------------
;■中パンチ
[state -1, standing strong]
type = changestate
value = 210+100*(statetype=c)
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
triggerall = p2bodydist x = [30,70]
trigger1 = random < 30*var(50);150
trigger1 = prevstateno = [130,155]			;■ガードヒット監視
;---------------------------------------------------------------------------
;■ルナティックシャフト
[state -1, lunatic shaft]
type = changestate
value = 1200
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
;triggerall = p2statetype = a
triggerall = p2bodydist x = [-20,100]
trigger1 = random < 10*var(50);50
trigger1 = prevstateno = [130,155]			;■ガードヒット監視
;---------------------------------------------------------------------------
;■ガードキャンセル
[state -1, guard cancel attack]
type = changestate
value = 2000
triggerall = var(50) > 2
triggerall = var(55) = 0				;■禁止ラグをクリア
triggerall = power > 1000+1500
triggerall = alive && numenemy
triggerall = stateno = [150,153]
triggerall = statetype != a
triggerall = time < 10
triggerall = life < lifemax/5
trigger1 = p2bodydist x = [-5,80]
trigger1 = p2dist y > -80
trigger1 = backedgedist < 160
trigger1 = random < 5*var(50);25
ignorehitpause = 1
;===========================================================================
;†コモン動作†
;===========================================================================
;■ガード
[state -1, guard]
type = changestate
value = 120
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = inguarddist
triggerall = stateno != 105
triggerall = stateno != 81
triggerall = stateno != [110,115]
trigger1 = enemynear,hitdefattr = sca,aa
trigger2 = enemynear,hitdefattr = sca,ap
trigger3 = enemynear,numproj || (enemynear,numhelper && p2movetype != h)
triggerall = random < 40*var(58)*var(50)

[state -1, guard]
type = changestate
value = 120
triggerall = !ishelper
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = p2statetype = a
triggerall = p2movetype = a
triggerall = p2dist x = [-50,50]
trigger1 = enemynear,hitdefattr = sca,aa
triggerall = random < 40*var(58)*var(50)

;■回避ステップ
[state -1, step back]
type = changestate
value = 105
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
trigger1 = p2statetype != a
trigger1 = enemynear,hitdefattr = sca,at
triggerall = random < 30*var(58)*var(50)
;===========================================================================
;■ルミナスワールドエンド
[state -1, luminous world end]
type = changestate
value = 4000
triggerall = var(40) = 1
triggerall = var(50) != 0
triggerall = power >= 2000
triggerall = statetype != a
triggerall = numpartner && partner,alive
triggerall = partner,movetype != h
trigger1 = ctrl
trigger2 = stateno = 106
trigger3 = stateno = [200,350]
trigger3 = movecontact
trigger4 = stateno = 197
trigger4 = time > 10
triggerall = random < 40*var(50);200
;===========================================================================
;†タッグ用エントリ†
;===========================================================================
;■援護
[state -1, assist & attack]
type = changestate
value = ifelse(((power<1000)||var(56)),1000,3000)
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = p2movetype = a
triggerall = p2bodydist x > -30
triggerall = p2bodydist y > -30
triggerall = numpartner
trigger1 = partner,time > 6
trigger1 = partner,statetype != l
trigger1 = partner,movetype = h
triggerall = random < 60*var(50);300
;===========================================================================
;†フリーエントリ†
;===========================================================================
;■トーラスアセンション
[state -1, torus ascension]
type = changestate
value = 3500
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(59) = 0
triggerall = power >= 5000
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = ctrl || (stateno = 21) || (stateno = 101) || ((stateno = 5120) && (animtime = 0)) || ((stateno = 197) && (time > 10))
triggerall = p2bodydist x = [0,40+30*(enemynear,vel x>0)]
triggerall = p2movetype != h
trigger1 = p2statetype != a
trigger1 = p2movetype = a
trigger1 = enemynear,time < 20-(lifemax-life)*var(50)*0.001
trigger1 = var(49) >= 15-(lifemax-life)*var(50)*0.001
trigger2 = p2statetype != a
trigger2 = prevstateno = 240
trigger2 = p2stateno < 3000
trigger3 = p2statetype = a
trigger3 = p2bodydist y > -20
trigger3 = enemynear,vel y > 0
triggerall = random < 50*var(50);250
;---------------------------------------------------------------------------
;■小パンチ
[state -1, jab]
type = changestate
value = 200+100*(random<300)
triggerall = !ishelper
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = ctrl || (stateno = 21) || (stateno = 101)
trigger1 = p2statetype = s || p2statetype = c
trigger1 = p2movetype != a
trigger1 = p2bodydist x = [-30,20]
trigger1 = random < (20+100*p2movetype=h)*var(50);100
;---------------------------------------------------------------------------
;■レイジングスター
[state -1, raging star]
type = changestate
value = 3300
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(56) = 0
triggerall = var(59) = 0
triggerall = power >= 3500
triggerall = (life < lifemax/2) || (power >= 5000)
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = ctrl || (stateno = 21) || (stateno = 101) || ((stateno = 5120) && (animtime = 0))
triggerall = p2bodydist x = [0,150]
triggerall = p2dist y > -50
trigger1 = p2movetype = a
trigger1 = enemynear,time < 20-(lifemax-life)*var(50)*0.001
trigger1 = var(49) >= 15-(lifemax-life)*var(50)*0.001
triggerall = random < 50*var(50);250
;---------------------------------------------------------------------------
;■ラピッドファイアアロー
[state -1, rapid fire]
type = changestate
value = 3000
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(56) = 0
triggerall = var(59) = 0
triggerall = power = [2000,3000]
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = ctrl || (stateno = 21) || (stateno = 101) || ((stateno = 5120) && (animtime = 0))
triggerall = p2bodydist x > 150
triggerall = p2dist y > -50
trigger1 = p2movetype = a
trigger1 = enemynear,time < 20-(lifemax-life)*var(50)*0.001
trigger1 = var(49) >= 15-(lifemax-life)*var(50)*0.001
triggerall = random < 30*var(50);150
;---------------------------------------------------------------------------
;■ゴッズメッセージ
[state -1, gods message]
type = changestate
value = 3200
triggerall = var(1) = 0
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(56) = 0
triggerall = var(59) = 0
triggerall = power >= 3500-1000*(life<lifemax/2)
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = ctrl || (stateno = 21) || (stateno = 101) || ((stateno = 5120) && (animtime = 0))
triggerall = p2bodydist x > 100
triggerall = p2dist y > -50
trigger1 = life < p2life
trigger1 = var(7) := 3+2*floor(random/334)
triggerall = random < 10*var(50);50
;---------------------------------------------------------------------------
;■ルナティックシャフト
[state -1, lunatic shaft]
type = changestate
value = 1200
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(59) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = ctrl || (stateno = 21) || (stateno = 101) || ((stateno = 5120) && (animtime = 0))
triggerall = p2bodydist x = [-10,60]
triggerall = p2dist y > -80-50*(enemynear,vel y>0)
trigger1 = p2statetype = a
trigger1 = enemynear,vel y >= 0
trigger2 = p2movetype = a || enemynear,vel x > 0
trigger2 = enemynear,time < 20-(lifemax-life)*var(50)*0.001
trigger2 = var(49) >= 15-(lifemax-life)*var(50)*0.001
trigger3 = prevstateno = 240
triggerall = random < (10+10*(p2movetype!=h))*var(50);100
;---------------------------------------------------------------------------
;■マジカルアロー
[state -1, magical arrow]
type = changestate
value = 1000
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = ctrl || (stateno = 21)
triggerall = p2bodydist x > 180
triggerall = p2dist y > -100
trigger1 = var(7) := 3
trigger1 = random < 10*var(50);50
;---------------------------------------------------------------------------
;■ジャンプ小パンチ
[state -1, jumping jab]
type = changestate
value = 400
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(59) = 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
triggerall = p2movetype != h			
trigger1 = ctrl
trigger1 = p2bodydist x = [-20,60]
trigger1 = p2bodydist y = [-10,20]
triggerall = random < 40*var(50);200
;---------------------------------------------------------------------------
;■ジャンプ大パンチ
[state -1, jumping fierce]
type = changestate
value = 420
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(59) = 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = vel y > 0
triggerall = p2movetype != h			
trigger1 = ctrl
trigger1 = p2bodydist x = [-30,60]
trigger1 = p2bodydist y = [-30,40]
trigger1 = random < 50*var(50);250
;---------------------------------------------------------------------------
;■ゴッズメッセージ（ラウンド外）
[state -1, gods message]
type = changestate
value = 3200
triggerall = var(1) = 0
triggerall = var(50) != 0
triggerall = var(59) = 0
triggerall = power >= 2000
triggerall = alive && numenemy
triggerall = roundstate > 2
triggerall = matchover != 1
triggerall = statetype != a
triggerall = ctrl || (stateno = 21)
trigger1 = life < lifemax
trigger1 = var(7) := 3+2*floor(random/334)
triggerall = random < 6*var(50);30
;===========================================================================
;†ブラストスコールコンビネーション†
;===========================================================================
;■装填
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(59) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = p2movetype != a
triggerall = p2bodydist x > 150
trigger1 = ctrl || (stateno = 21)
triggerall = random < 10*var(50);50
var(53) = 30

;■ブラストスコール
[state -1, blast squall]
type = changestate
value = 1100
triggerall = var(50) != 0
triggerall = var(53) = [30,31];２段階認証
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = ctrl || (stateno = 21) || (stateno = 101)
trigger1 = random < 40*var(50);200

[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = var(53) = 30
trigger1 = stateno = 1100
trigger1 = animelemtime(2) < 0
var(7) = 5+2*(p2bodydist x>180)

[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = var(53) = 30
trigger1 = stateno = 1100
trigger1 = animelemtime(11) > 0
var(53) = 33-2*((var(7)=7)&&(p2bodydist x>120))

[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = var(53) = 31		;第二射
trigger1 = stateno = 1100
trigger1 = animelemtime(2) < 0
var(7) = 5

[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = var(53) = 31
trigger1 = numhelper(6100) = 2
var(53) = 33

[state -1, varset];ゴッズメッセージから
type = varset
triggerall = var(50) != 0
trigger1 = var(53) = 0
trigger1 = numhelper(7200) = 1
trigger1 = helper(7200),stateno = 7200
var(53) = 33

;■エアダッシュモードへ
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 33
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = stateno = 101
trigger1 = p2bodydist x = [80,120]
trigger1 = random < 10*var(50)
var(53) = 60

;■ダッシュ
[state -1, run fwd]
type = changestate
value = 101
triggerall = var(50) != 0
triggerall = var(53) = 33
triggerall = alive && numenemy
triggerall = roundstate = 2
trigger1 = statetype != a
trigger1 = ctrl
trigger1 = random < 200*var(50);1000

;■しゃがみ中パンチ
[state -1, crouching strong]
type = changestate
value = 310
triggerall = var(50) != 0
triggerall = var(53) = 33
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = stateno = 101
trigger1 = p2statetype = s
trigger1 = p2bodydist x = [-10,40]
trigger1 = random < 40*var(50);200

;■ポコパン
[state -1, poco pan]
type = changestate
value = 500
triggerall = var(50) != 0
triggerall = var(53) = 33
triggerall = var(48) <= 5	;■投げ耐性のある相手はパス
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
trigger1 = p2bodydist x = [-10,10]
trigger1 = p2statetype != a
trigger1 = p2movetype != a
trigger1 = p2stateno != [150,155]
trigger1 = random < 80*var(50);400

;■ルナティックシャフト
[state -1, lunatic shaft]
type = changestate
value = 1200
triggerall = var(50) > 2
triggerall = var(53) = 33
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = p2bodydist x = [-30,60+20*(p2movetype=a)]
triggerall = p2dist y > -100
trigger1 = p2movetype = a
trigger1 = enemynear,time < 20-(lifemax-life)*var(50)*0.001
trigger1 = var(49) >= 15-(lifemax-life)*var(50)*0.001
trigger2 = p2statetype = a
trigger2 = p2movetype != h
triggerall = random < 40*var(50);200

[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = var(53) = 33
trigger1 = stateno = 500
trigger1 = movehit
var(53) = 35

;■ダッシュ
[state -1, run fwd]
type = changestate
value = 101
triggerall = var(50) != 0
triggerall = var(53) = 35
triggerall = alive && numenemy
triggerall = roundstate = 2
trigger1 = statetype != a
trigger1 = ctrl || (stateno = 21)
trigger1 = p2bodydist x > 10
trigger1 = random < 200*var(50);1000

[state -1, brake]
type = changestate
value = 0
ctrl = 1
triggerall = var(50) != 0
triggerall = var(53) = [33,35]
triggerall = alive
triggerall = statetype != a
triggerall = prevstateno != 0
triggerall = stateno = 101
trigger1 = p2dist x < 5

;■立ち小パンチ
[state -1, standing jab]
type = changestate
value = 200
triggerall = var(50) != 0
triggerall = var(53) = [33,35]
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = p2movetype = h
trigger1 = p2bodydist x = [-10,35]
trigger1 = p2bodydist y > -enemynear,const(movement.yaccel)*110
trigger1 = statetype != a
trigger1 = ctrl || stateno = 101
triggerall = random < 80*var(50);200
;===========================================================================
;†ジャンプコンビネーション†
;===========================================================================
;■装填
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(59) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = p2bodydist x = [100,140]
triggerall = p2movetype != h
trigger1 = ctrl || (stateno = 21) || (stateno = 101)
triggerall = random < 5*var(50);25
var(53) = 40

;■ジャンプ
[state -1, jump]
type = changestate
value = 41
triggerall = var(50) != 0
triggerall = var(53) = 40
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = ctrl || (stateno = 21) || (stateno = 101)
trigger1 = random < 40*var(50);200

;■空中制御
[state -1, jump or air dash back]
type = changestate
value = 115
triggerall = var(50) != 0
triggerall = var(53) = 40
triggerall = sysvar(3) > 0
triggerall = alive && numenemy
triggerall = statetype = a
trigger1 = ctrl
trigger1 = pos y < -80
trigger1 = random < 20*var(50);100

;■マジカルアローインザスカイ
[state -1, magical arrow mid air]
type = changestate
value = 1300
triggerall = var(50) != 0
triggerall = var(53) = 40
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = prevstateno != 1300
trigger1 = stateno = 115
trigger1 = time > 15
trigger2 = sysvar(3) = 0
trigger2 = ctrl
triggerall = random < 40*var(50);200
;===========================================================================
;†対空投げモード†
;===========================================================================
;■装填
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 0				;■投げ耐性のある相手はパス
triggerall = var(59) = 0
triggerall = var(48) <= 5	;■投げ耐性のある相手はパス
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = ctrl || (stateno = 21)
trigger1 = p2statetype = a
trigger1 = p2movetype != h
trigger1 = p2bodydist x = [0,50]
trigger1 = p2bodydist y = [-100,-50]
trigger1 = enemynear,vel y >= 0
trigger1 = random < 10*var(50)
var(53) = 50

;■ジャンプ
[state -1, jump]
type = changestate
triggerall = var(50) != 0
triggerall = var(53) = 50
triggerall = alive && numenemy
trigger1 = statetype != a
trigger1 = ctrl || (stateno = 21)
value = 41

;■マジカルEMG
[state -1, magical emg]
type = changestate
value = 550
triggerall = var(50) != 0
triggerall = var(53) = 50
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
trigger1 = p2statetype = a
trigger1 = p2movetype != a
trigger1 = p2bodydist x = [-10,60]
trigger1 = p2bodydist y = [-60,0]
trigger1 = random < 80*var(50);400
;===========================================================================
;†エアダッシュモード†
;===========================================================================
;■装填
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(59) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = ctrl || (stateno = 21)
trigger1 = p2statetype != a
trigger1 = p2bodydist x = [80,120]
trigger1 = random < 10*var(50)
var(53) = 60

;■ジャンプ
[state -1, jump]
type = changestate
triggerall = var(50) != 0
triggerall = var(53) = 60
triggerall = alive && numenemy
trigger1 = statetype != a
trigger1 = ctrl || (stateno = 21) || (stateno = 101)
value = 41

;■空中ダッシュ
[state -1, air dash fwd]
type = changestate
value = 110
triggerall = var(50) != 0
triggerall = var(53) = 60
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = random < 80*var(50);400
trigger1 = sysvar(3) = 1
trigger1 = p2movetype != a
trigger1 = pos y < -40+2*var(50)
trigger1 = ctrl
trigger1 = random < 200*var(50);1000

;■マジカルEMG
[state -1, magical emg]
type = changestate
value = 550
triggerall = var(50) != 0
triggerall = var(53) = 60
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
triggerall = p2movetype != h
triggerall = p2bodydist x = [-10,60]
triggerall = p2bodydist y = [-60,0]
trigger1 = stateno = 110
trigger2 = prevstateno = 110
trigger2 = ctrl
triggerall = random < 80*var(50);400

;■ジャンプ大パンチ
[state -1, jumping fierce]
type = changestate
value = 420
triggerall = var(50) != 0
triggerall = var(53) = 60
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2bodydist x = [-40,60]
triggerall = p2bodydist y = [-40,60]
trigger1 = stateno = 110
trigger2 = prevstateno = 110
trigger2 = ctrl
triggerall = random < 80*var(50);400
;===========================================================================
;†マギアキャンセル（フォロー）†
;===========================================================================
;■装填
[state -1, varset]
type = varset
triggerall = var(50) > 3
triggerall = var(55) = 0				;■禁止ラグをクリア
triggerall = var(59) = 0
triggerall = var(10) > 0
triggerall = alive && numenemy
triggerall = power >= 2000-1000*(life<lifemax/2)
triggerall = stateno = [1000,1100]
triggerall = p2movetype = a
trigger1 = p2bodydist x = [-10,80]
trigger1 = p2bodydist y = [-100,0]
triggerall = random < 40*var(50);200
var(53) = 70

;■マギアキャンセル
[state -1, magia cancel]
type = changestate
value = 900
triggerall = var(50) != 0
triggerall = var(53) = 70
triggerall = alive && numenemy
triggerall = power >= 1000
trigger1 = stateno = [1000,1100]

;■ルナティックシャフト
[state -1, lunatic shaft]
type = changestate
value = 1200
triggerall = var(50) > 3
triggerall = var(53) = 70
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = ctrl
triggerall = random < 200*var(50);1000
;===========================================================================
;†地上コンボ†
;===========================================================================
;■小パンチ
[state -1, jab]
type = changestate
value = 200+100*(statetype=c)
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = stateno = 200 || stateno = 300
triggerall = prevstateno != [200,300]
;triggerall = p2statetype = s || p2statetype = c
trigger1 = p2bodydist x <= 20
trigger1 = movecontact = [1,10]
trigger1 = random < 150*var(50);750

;■立ち小パンチ（拾い）
[state -1, standing jab]
type = changestate
value = 200
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = p2statetype = a
triggerall = p2movetype = h
triggerall = numhelper(7000) = 0
trigger1 = enemynear,vel y > 0
trigger1 = p2bodydist x = [-10,35]
trigger1 = p2bodydist y > -enemynear,const(movement.yaccel)*110
trigger1 = statetype != a
trigger1 = ctrl || stateno = 21 || stateno = 101
triggerall = random < 200*var(50);1000
;---------------------------------------------------------------------------
;■中パンチ
[state -1, strong]
type = changestate
value = 210+100*((statetype=c)&&(random<500))
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = stateno = 200 || stateno = 230 || stateno = 300
triggerall = p2statetype = s || p2statetype = c
trigger1 = movecontact = [1,10]
trigger1 = random < 100*var(50);500
;---------------------------------------------------------------------------
;■立ち大パンチ
[state -1, standing fierce]
type = changestate
value = 220
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = stateno = 210 || stateno = 310
trigger1 = movehit = [1,5]
trigger1 = random < 70*var(50);350
trigger2 = moveguarded = [1,10]
trigger2 = random < 70*var(50);350

[state -1, standing fierce]
type = changestate
value = 220
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = p2statetype = a
triggerall = movehit = [1,5]
trigger1 = stateno = 200 || stateno = 300
trigger1 = prevstateno = 200 || prevstateno = 300 || p2bodydist x > 20
trigger2 = stateno = 210 || stateno = 310
triggerall = random < 160*var(50);800
;---------------------------------------------------------------------------
;■立ち大キック
[state -1, standing roundhouse]
type = changestate
value = 250
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = stateno = 210 || stateno = 310
triggerall = p2statetype = s || p2statetype = c
trigger1 = movehit = [1,5]
trigger1 = random < 70*var(50);350
trigger2 = p2statetype = c
trigger2 = moveguarded = [1,10]
trigger2 = random < 80*var(50);400
;---------------------------------------------------------------------------
;■立ち中キック
[state -1, standing forward]
type = changestate
value = 240
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = stateno = 210 || stateno = 230 || stateno = 310
triggerall = p2statetype = s || p2statetype = c
trigger1 = moveguarded = [1,10]
trigger1 = random < 20*var(50);100
;---------------------------------------------------------------------------
;■しゃがみ大パンチ
[state -1, crouching fierce]
type = changestate
value = 320
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = stateno = 210
triggerall = p2statetype = c
trigger1 = moveguarded = [1,10]
trigger1 = random < 40*var(50);200
;---------------------------------------------------------------------------
;■マジカルアロー
[state -1, magical arrow]
type = changestate
value = 1000
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = stateno = 220 || stateno = 320
trigger1 = moveguarded = [1,5]
trigger1 = var(7) := 1
trigger1 = random < 40*var(50);200

;■ブラストスコール
[state -1, blast squall]
type = changestate
value = 1100
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = stateno = 220 || stateno = 320
trigger1 = moveguarded = [5,10]
trigger1 = var(7) := 3
trigger1 = random < 20*var(50);100
;---------------------------------------------------------------------------
;■レイジングスター
[state -1, raging star]
type = changestate
value = 3300
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = stateno = 220
triggerall = power >= 3000
triggerall = p2life < 300
triggerall = p2bodydist y > -10
trigger1 = movehit = [1,5]
trigger1 = random < 150*var(50);750
;---------------------------------------------------------------------------
;■追撃ジャンプ
[state -1, jump]
type = changestate
value = 41
triggerall = var(50) != 0
triggerall = alive && numenemy
trigger1 = stateno = 250
trigger1 = movehit
trigger1 = numhelper(6100) = 0
trigger2 = stateno = 220
trigger2 = p2statetype = a
trigger2 = movehit
triggerall = random < 170*var(50);850

[state -1, air jump]
type = changestate
value = 45
triggerall = var(50) != 0
triggerall = sysvar(3) = 1
triggerall = alive && numenemy
trigger1 = stateno = 450
trigger1 = movehit
triggerall = random < 170*var(50);850
;===========================================================================
;□マジカルアローコンボ

;■マジカルアロー
[state -1, magical arrow]
type = changestate
value = 1000
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = stateno = 220
triggerall = p2statetype != a
trigger1 = movehit = [1,2]
trigger1 = var(7) := 2
trigger1 = var(53) := 10
trigger1 = random < 200*var(50);1000

;■マギアキャンセルD
[state -1, magia cancel]
type = changestate
value = 901
triggerall = var(10) > 0
triggerall = var(50) > 3
triggerall = var(53) = 10
triggerall = alive && numenemy
triggerall = power >= 2000-1000*(life<lifemax/3)
trigger1 = stateno = 1000
trigger1 = animelemtime(10) = [6,10]
trigger1 = random < 150*var(50);750

;■立ち小パンチ
[state -1, standing jab]
type = changestate
value = 200
triggerall = var(50) != 0
triggerall = var(53) = 10
triggerall = alive && numenemy
triggerall = stateno = 101
trigger1 = p2bodydist x < 20
trigger1 = random < 160*var(50);800
;===========================================================================
;□ルナコンボ

[state -1, varset]
type = varset
triggerall = var(14) < 3
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(56) = 0	;レイジングスターがアイドル中は派生しない
triggerall = power >= 2000-1000*(life<lifemax/3)
trigger1 = stateno = 1200
trigger1 = movehit = [1,5]
trigger1 = random < (20+power/200)*var(50);100
var(53) = 20

;■マギアキャンセルN
[state -1, magia cancel]
type = changestate
value = 900
triggerall = var(10) > 0
triggerall = var(50) > 3
triggerall = var(53) = 20
triggerall = alive && numenemy
triggerall = power >= 2000-1000*(life<lifemax/3)
trigger1 = stateno = 1200
trigger1 = animelemtime(4) = [0,8]
trigger1 = random < 200*var(50);1000

;■小パンチ
[state -1, standing jab]
type = changestate
value = 200
triggerall = var(50) != 0
triggerall = var(53) = 20
triggerall = alive && numenemy
trigger1 = ctrl && statetype != a
trigger1 = p2bodydist x = [-10,40]
trigger1 = p2bodydist y > -enemynear,const(movement.yaccel)*110
trigger1 = enemynear,vel y > 0
trigger2 = stateno = 200
trigger2 = prevstateno != 200
trigger2 = movehit = [1,5]
triggerall = random < 200*var(50);1000
;===========================================================================
;†空中コンボ†
;===========================================================================
;■ジャンプ小パンチ
[state -1, jumping jab]
type = changestate
value = 400
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = a
triggerall = p2statetype = a
triggerall = p2movetype = h
triggerall = prevstateno != 400
triggerall = prevstateno != 420				
trigger1 = ctrl
trigger1 = p2bodydist x = [-20,60]
trigger1 = p2bodydist y = [-15-15*(sysvar(3)=0),15]
trigger2 = stateno = 400
trigger2 = sysvar(3) = 1
trigger2 = movehit
trigger2 = p2bodydist y > -15
triggerall = random < 160*var(50);800
;---------------------------------------------------------------------------
;■ジャンプ中パンチ
[state -1, jumping strong]
type = changestate
value = 410+10*(roundstate!=2)
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
trigger1 = stateno = 400
trigger1 = movehit
triggerall = random < 200*var(50);1000
;---------------------------------------------------------------------------
;■ジャンプ大パンチ
[state -1, jumping fierce]
type = changestate
value = 420
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype = a
trigger1 = p2statetype = a
trigger1 = stateno = 410
trigger1 = movecontact
trigger2 = stateno = 400
trigger2 = moveguarded
triggerall = random < 200*var(50);1000
;---------------------------------------------------------------------------
;■スカイナピーチ
[state -1, skyna peach]
type = changestate
value = 450
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = p2statetype = a
trigger1 = pos y < -30
trigger1 = stateno = 420
trigger1 = movecontact
triggerall = random < 200*var(50);1000

;■アローけん制に分岐
[state -1, varset]
type = varset
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = alive && numenemy
trigger1 = vel y > 0
trigger1 = sysvar(3) = 0
trigger1 = prevstateno = 450
triggerall = random < 20*var(50);100
var(53) = 40
;===========================================================================
;†コモン動作†
;===========================================================================
;■挑発
[state -1, taunt]
type = changestate
value = 195+(life=lifemax)*2
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(57) = 0
triggerall = var(37) = 1
triggerall = alive
triggerall = roundstate = 2
triggerall = ctrl || (stateno = 21)
triggerall = statetype != a
triggerall = prevstateno != [195,199]
triggerall = life > floor(lifemax*0.7)
trigger1 = time = 3
trigger1 = var(2)%5 = 0
trigger1 = roundstate != 2
trigger1 = matchover != 1
trigger2 = var(50) = 1					;■初心者モード
trigger2 = life > floor(lifemax*0.5)
trigger2 = random < 50
trigger3 = roundstate = 2
trigger3 = life > p2life*2				;■すごく余裕
trigger3 = random < 10+80*(p2statetype=l)
;---------------------------------------------------------------------------
;■起き上がり
[state -1, hit_getup]
type = changestate
value = 5120
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = l
triggerall = stateno = 5110
triggerall = hitover
trigger1 = time > 20
trigger1 = random < 50*var(50);250
;---------------------------------------------------------------------------
;■受身
[state -1, recover]
type = changestate
value = 5200
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = stateno = 5050
triggerall = vel y > 0
triggerall = pos y >= -20
triggerall = canrecover
trigger1 = random < 50*var(50)

[state -1, recover]
type = changestate
value = 5210
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = stateno = 5050
triggerall = vel y > -1
triggerall = canrecover
trigger1 = random < 50*var(50)
;---------------------------------------------------------------------------
;■バックステップ
[state -1, step back]
type = changestate
value = 105
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = p2bodydist x = [0,100]
triggerall = backedgedist > 80
trigger1 = prevstateno != 106
trigger1 = p2movetype = a
trigger1 = enemynear,time < 20-(lifemax-life)*var(50)*0.001
trigger1 = var(49) >= 15-(lifemax-life)*var(50)*0.001
triggerall = random < 10*var(50);50
;---------------------------------------------------------------------------
;■バックステップ（へちょ解除）
[state -1, step back]
type = changestate
value = 105
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
trigger1 = stateno = 197
trigger1 = time > 100
trigger1 = random < 30
;---------------------------------------------------------------------------
;■バックステップ（ラウンド外）
[state -1, step back]
type = changestate
value = 105
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = (stateno = 0) && (anim = 0)
triggerall = roundstate > 2
trigger1 = frontedgedist < 40
;---------------------------------------------------------------------------
;■歩行
[state -1, walk]
type = changestate
value = 21
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = ctrl
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = anim = 0
triggerall = prevstateno != 21
trigger1 = random < 100-10*var(50);50

[state -1, brake]
type = changestate
value = 0
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive
triggerall = statetype != a
triggerall = stateno = 21
trigger1 = time > 120
trigger2 = p2dist x < 30
trigger3 = p2movetype = a
triggerall = random < 50*var(50);250
ctrl = 1
;---------------------------------------------------------------------------
;■ダッシュ
[state -1, run fwd]
type = changestate
value = 101
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = ctrl || (stateno = 21)
trigger1 = prevstateno != 101
trigger1 = p2statetype = a
trigger1 = p2movetype = h
trigger1 = p2bodydist x >= 0
trigger1 = p2dist y = [-120,-10]
triggerall = random < 150*var(50);750

[state -1, brake]
type = changestate
value = 0
ctrl = 1
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive
triggerall = statetype != a
triggerall = prevstateno != 0
triggerall = stateno = 101
trigger1 = p2dist x < 50-30*(p2movetype=h)
;---------------------------------------------------------------------------
;■ブレーキ（ラウンド外）
[state -1, brake]
type = changestate
value = 0
triggerall = var(50) != 0
triggerall = alive
triggerall = statetype != a
triggerall = prevstateno != 0
triggerall = roundstate != 2
triggerall = stateno = 21 || stateno = 101
trigger1 = time > 90
trigger2 = p2dist x < 0
ctrl = 1
;---------------------------------------------------------------------------
;■歩行（ラウンド外）
[state -1, walk]
type = changestate
value = 21
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = (stateno = 0) && (anim = 0)
triggerall = roundstate > 2
triggerall = numpartner > 0
triggerall = partner,alive = 1
trigger1 = var(30) = 0
trigger1 = prevstateno != 21
trigger1 = pos x = [partner,pos x-30,partner,pos x+30]

[state -1, brake]
type = changestate
value = 0
ctrl = 1
triggerall = var(50) != 0
triggerall = alive
trigger1 = roundstate > 2
trigger1 = stateno = 21
trigger1 = numpartner > 0
trigger1 = (pos x != [partner,pos x-30,partner,pos x+30]) || time > 60
;===========================================================================
;■AI演出用
[state -1, width]
type = width
trigger1 = var(50) != 0
trigger1 = roundstate != 2
edge = 1,1
;===========================================================================
;■デバッガ
[state -1, debug]
type = varset
trigger1 = 1
var(59) = 0
