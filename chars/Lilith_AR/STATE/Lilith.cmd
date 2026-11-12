;-| ボタンリマップ（ボタンコンフィグ）|----------------------------------------

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;-| デフォルト設定 |-----------------------------------------------------------

[Defaults]
command.time = 18  ;標準のコマンド入力受付時間。
                   ;各コマンドで省略している場合に有効。
                   ;このパラメータを消した場合、デフォルトは１フレームになる。
                   ;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

command.buffer.time = 1  ;標準のコマンド入力記憶時間。
                         ;入力した直後にコマンドを記憶し、
                         ;指を離してもコマンドが成功している状態を
                         ;ここで設定した時間の分維持する。
                         ;１～３０フレームまでの間で設定可能。
                         ;デフォルトは１フレーム。

;-| EX必殺技 |-------------------------------------------------------------

;Abstract Reordered: A/B/C = light/medium/heavy punch (C = ES), X = Mimic Doll, Y = grab, Z = parry, A+B+C = burst
[Command]
name = "スプレンダーラブ"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[Command]
name = "スプレンダーラブ"
command = ~D, DB, B, D, DB, B, b+c
time = 30

[Command]
name = "スプレンダーラブ"
command = ~D, DB, B, D, DB, B, a+c
time = 30

[Command]
name = "ルミナスイリュージョン"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "ルミナスイリュージョン"
command = ~D, DF, F, D, DF, F, b+c
time = 30

[Command]
name = "ルミナスイリュージョン"
command = ~D, DF, F, D, DF, F, a+c
time = 30

[Command]
name = "グルーミーパペットショウ"
command = ~F, B, DB, D, DF, F, c
time = 30

[Command]
name = "弱ソウルフラッシュ"
command = ~D, DF, F, a
time = 20

[Command]
name = "中ソウルフラッシュ"
command = ~D, DF, F, b
time = 20

[Command]
name = "強ソウルフラッシュ"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "ESソウルフラッシュ"
command = ~D, DF, F, c
time = 20

[Command]
name = "弱シャイニングブレイド"
command = ~F, D, DF, a
time = 20

[Command]
name = "中シャイニングブレイド"
command = ~F, D, DF, b
time = 20

[Command]
name = "強シャイニングブレイド"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "ESシャイニングブレイド"
command = ~F, D, DF, c
time = 20

[Command]
name = "GC弱シャイニングブレイド"
command = ~F, D, DF, a
time = 20

[Command]
name = "GC中シャイニングブレイド"
command = ~F, D, DF, b
time = 20

[Command]
name = "GC強シャイニングブレイド"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "GCESシャイニングブレイド"
command = ~F, D, DF, c
time = 20

[Command]
name = "弱メリーターン"
command = ~D, DB, B, a
time = 20

[Command]
name = "中メリーターン"
command = ~D, DB, B, b
time = 20

[Command]
name = "強メリーターン"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "ESメリーターン"
command = ~D, DB, B, c
time = 20

[Command]
name = "弱ミスティックアロー"
command = ~F, DF, D, DB, a
time = 20

[Command]
name = "中ミスティックアロー"
command = ~F, DF, D, DB, b
time = 20

[Command]
name = "強ミスティックアロー"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "ESミスティックアロー"
command = ~F, DF, D, DB, c
time = 20

[Command]
name = "追い討ち攻撃"
command = /$U, a
time = 15

[Command]
name = "追い討ち攻撃"
command = /$U, b
time = 15

[Command]
name = "ES追い討ち攻撃"
command = /$U, c
time = 15

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "ハイジャンプ"
command = $D, $U
time = 10

[Command]
name = "ミミックドール"
command = x
time = 1

[Command]
name = "ミラードール"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "溜めx"
command = ~a
time = 1

[Command]
name = "溜めy"
command = ~b
time = 1

[Command]
name = "溜めz"
command = ~c
time = 1

[Command]
name = "溜めa"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "溜めb"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "溜めc"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "fwd"
command = /F
time = 1

[Command]
name = "back"
command = /B
time = 1

[Command]
name = "a"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "b"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "c"
command = U, D, U, D, U, D, U, D
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
name = "start"
command = s
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

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

[Statedef -1] ;必須項目

;---------------------------------------------------------------------------
;Abstract Reordered: burst (Kamijo's) - A+B+C while being hit, recharges in 75 s (var(20))
[State -1, AR burst round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(20) = 0

[State -1, AR burst recharge]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = var(20) > 0
var(20) = -1
ignorehitpause = 1

;Abstract Reordered: comeback - once a combo has done more than 15% of max life, every further hit
;knocks half a second (30 ticks) off the burst cooldown. var(21) = life when the combo started, var(22) = life last tick
[State -1, AR burst comeback]
type = VarAdd
triggerall = !ishelper
triggerall = var(20) > 0
trigger1 = movetype = H
trigger1 = Life < var(22)
trigger1 = var(21) - Life > LifeMax * 0.15
var(20) = -30
ignorehitpause = 1

[State -1, AR burst comeback clamp]
type = VarSet
triggerall = !ishelper
trigger1 = var(20) < 0
var(20) = 0
ignorehitpause = 1

[State -1, AR burst combo start]
type = VarSet
triggerall = !ishelper
trigger1 = movetype != H
var(21) = Life
ignorehitpause = 1

[State -1, AR burst last life]
type = VarSet
triggerall = !ishelper
trigger1 = 1
var(22) = Life
ignorehitpause = 1

;Abstract Reordered: burst HUD - Touma's BURST gauge, recoloured, just under the lifebar.
;var(20) = cooldown ticks (4500 = just used, 0 = ready). Anims 9660-9668, explod IDs = anims.
[State -1, AR burst gauge 9668 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9668) = 0
trigger1 = var(20) = 0
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
trigger1 = var(20) = 0
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
trigger1 = var(20) > 3750
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
trigger1 = var(20) <= 3750 && var(20) > 3000
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
trigger1 = var(20) <= 3000 && var(20) > 2250
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
trigger1 = var(20) <= 2250 && var(20) > 1500
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
trigger1 = var(20) <= 1500 && var(20) > 750
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
trigger1 = var(20) <= 750 && var(20) > 0
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
trigger1 = var(20) > 3750
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
trigger1 = var(20) = 0
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
trigger1 = var(20) = 0
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
trigger1 = var(20) > 3750
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
trigger1 = var(20) <= 3750 && var(20) > 3000
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
trigger1 = var(20) <= 3000 && var(20) > 2250
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
trigger1 = var(20) <= 2250 && var(20) > 1500
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
trigger1 = var(20) <= 1500 && var(20) > 750
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
trigger1 = var(20) <= 750 && var(20) > 0
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
trigger1 = var(20) > 3750
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
trigger1 = !(var(20) = 0)
ID = 9668
ignorehitpause = 1

[State -1, AR burst gauge 9661 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9661)
trigger1 = !(var(20) = 0)
ID = 9661
ignorehitpause = 1

[State -1, AR burst gauge 9660 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9660)
trigger1 = !(var(20) > 3750)
ID = 9660
ignorehitpause = 1

[State -1, AR burst gauge 9662 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9662)
trigger1 = !(var(20) <= 3750 && var(20) > 3000)
ID = 9662
ignorehitpause = 1

[State -1, AR burst gauge 9663 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9663)
trigger1 = !(var(20) <= 3000 && var(20) > 2250)
ID = 9663
ignorehitpause = 1

[State -1, AR burst gauge 9664 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9664)
trigger1 = !(var(20) <= 2250 && var(20) > 1500)
ID = 9664
ignorehitpause = 1

[State -1, AR burst gauge 9665 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9665)
trigger1 = !(var(20) <= 1500 && var(20) > 750)
ID = 9665
ignorehitpause = 1

[State -1, AR burst gauge 9666 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9666)
trigger1 = !(var(20) <= 750 && var(20) > 0)
ID = 9666
ignorehitpause = 1

[State -1, AR burst gauge 9667 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9667)
trigger1 = !(var(20) > 3750)
ID = 9667
ignorehitpause = 1


[State -1, AR burst]
type = ChangeState
value = ifelse(StateType = A, 7751, 7750)
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "ar_burst"
triggerall = var(20) = 0
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
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "ar_parry"
trigger1 = ctrl
trigger2 = StateNo = 52


;==============================================================================
; ダークフォース
;==============================================================================
[State -1, DF解除]
type = ChangeState
triggerall = var(59) = 0
triggerall = var(6) = 1
triggerall = (StateType != A)
triggerall = (command = "ミミックドール") || (command = "ミラードール")
trigger1 = Ctrl
trigger2 = StateNo = 52
value = 1001

[State -1, ミミックドール]
type = ChangeState
triggerall = var(59) = 0
triggerall = var(6) = 0
triggerall = power >= 1000
triggerall = (StateType != A)
triggerall = (command = "ミミックドール")
trigger1 = Ctrl
trigger2 = StateNo = 52
value = 1000

[State -1, ミラードール]
type = ChangeState
triggerall = var(59) = 0
triggerall = var(6) = 0
triggerall = power >= 1000
triggerall = (StateType != A)
triggerall = (command = "ミラードール")
trigger1 = Ctrl
trigger2 = StateNo = 52
value = 1100

;==============================================================================
; EX必殺技
;==============================================================================

[State -1,グルーミーパペットショウ]
type = ChangeState
value = 900
triggerall = power >= 3000   ;AR: Lv3
triggerall = var(8) = 0
triggerall = command = "グルーミーパペットショウ"
triggerall = (StateType != A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger2 = (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger3 = (prevstateno != 100) && (prevstateno != 105)
trigger4 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger4 = (prevstateno != 100) && (prevstateno != 105)
trigger5 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger5 = (prevstateno != 100) && (prevstateno != 105)
trigger6 = StateNo = 52
trigger7 = (StateNo = 100) || (StateNo = 105)

;------------------------------------------------------------------------------

[State -1,空中ルミナスイリュージョン]
type = ChangeState
value = 865
triggerall = power >= 1000
triggerall = command = "ルミナスイリュージョン"
triggerall = (StateType = A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 600) || (StateNo = 605) || (StateNo = 610)
trigger3 = (StateNo = 630) || (StateNo = 635) || (StateNo = 640)

[State -1,地上ルミナスイリュージョン]
type = ChangeState
value = 860
triggerall = power >= 1000
triggerall = command = "ルミナスイリュージョン"
triggerall = (StateType != A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) || (StateNo = 205) || (StateNo = 210) || (StateNo = 215) || (StateNo = 220) || (StateNo = 225)
trigger3 = (StateNo = 230) || (StateNo = 235) || (StateNo = 240) || (StateNo = 245) || (StateNo = 250) || (StateNo = 255)
trigger4 = (stateno = 400) || (stateno = 405) || (StateNo = 410)
trigger5 = (stateno = 430) || (stateno = 435) || (StateNo = 440)
trigger6 = StateNo = 52
trigger7 = (StateNo = 100) || (StateNo = 105)

;------------------------------------------------------------------------------

[State -1,スプレンダーラブ]
type = ChangeState
value = 850
triggerall = power >= 1000
triggerall = var(8) = 0
triggerall = command = "スプレンダーラブ"
triggerall = (StateType != A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger2 = (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger3 = (prevstateno != 100) && (prevstateno != 105)
trigger4 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger4 = (prevstateno != 100) && (prevstateno != 105)
trigger5 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger5 = (prevstateno != 100) && (prevstateno != 105)
trigger6 = StateNo = 52
trigger7 = (StateNo = 100) || (StateNo = 105)

;==============================================================================
; 必殺技
;==============================================================================

[State -1,ESミスティックアロー]
type = ChangeState
value = 833
triggerall = power >= 500   ;AR: ES = half a bar
triggerall = var(8) = 0
triggerall = command = "ESミスティックアロー"
triggerall = (StateType != A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger2 = (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger3 = (prevstateno != 100) && (prevstateno != 105)
trigger4 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger4 = (prevstateno != 100) && (prevstateno != 105)
trigger5 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger5 = (prevstateno != 100) && (prevstateno != 105)
trigger6 = StateNo = 52
trigger7 = (StateNo = 100) || (StateNo = 105)

[State -1,強ミスティックアロー]
type = ChangeState
value = 832
triggerall = var(8) = 0
triggerall = command = "強ミスティックアロー"
triggerall = (StateType != A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger2 = (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger3 = (prevstateno != 100) && (prevstateno != 105)
trigger4 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger4 = (prevstateno != 100) && (prevstateno != 105)
trigger5 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger5 = (prevstateno != 100) && (prevstateno != 105)
trigger6 = StateNo = 52
trigger7 = (StateNo = 100) || (StateNo = 105)

[State -1,中ミスティックアロー]
type = ChangeState
value = 831
triggerall = var(8) = 0
triggerall = command = "中ミスティックアロー"
triggerall = (StateType != A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger2 = (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger3 = (prevstateno != 100) && (prevstateno != 105)
trigger4 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger4 = (prevstateno != 100) && (prevstateno != 105)
trigger5 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger5 = (prevstateno != 100) && (prevstateno != 105)
trigger6 = StateNo = 52
trigger7 = (StateNo = 100) || (StateNo = 105)

[State -1,弱ミスティックアロー]
type = ChangeState
value = 830
triggerall = var(8) = 0
triggerall = command = "弱ミスティックアロー"
triggerall = (StateType != A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger2 = (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger3 = (prevstateno != 100) && (prevstateno != 105)
trigger4 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger4 = (prevstateno != 100) && (prevstateno != 105)
trigger5 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger5 = (prevstateno != 100) && (prevstateno != 105)
trigger6 = StateNo = 52
trigger7 = (StateNo = 100) || (StateNo = 105)

;------------------------------------------------------------------------------

[State -1,GCESシャイニングブレイド]
type = ChangeState
value = 818
triggerall = power >= 500   ;AR: ES = half a bar
triggerall = var(8) = 0
triggerall = command = "GCESシャイニングブレイド"
trigger1 = (stateno = 150 || stateno = 152)

[State -1,GC強シャイニングブレイド]
type = ChangeState
value = 817
triggerall = var(8) = 0
triggerall = command = "GC強シャイニングブレイド"
trigger1 = (stateno = 150 || stateno = 152)

[State -1,GC中シャイニングブレイド]
type = ChangeState
value = 816
triggerall = var(8) = 0
triggerall = command = "GC中シャイニングブレイド"
trigger1 = (stateno = 150 || stateno = 152)

[State -1,GC弱シャイニングブレイド]
type = ChangeState
value = 815
triggerall = var(8) = 0
triggerall = command = "GC弱シャイニングブレイド"
trigger1 = (stateno = 150 || stateno = 152)

;-------------------------------------------------------------------------------

[State -1,ESシャイニングブレイド]
type = ChangeState
value = 818
triggerall = power >= 500   ;AR: ES = half a bar
triggerall = var(8) = 0
triggerall = command = "ESシャイニングブレイド"
triggerall = (StateType != A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger2 = (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger3 = (prevstateno != 100) && (prevstateno != 105)
trigger4 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger4 = (prevstateno != 100) && (prevstateno != 105)
trigger5 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger5 = (prevstateno != 100) && (prevstateno != 105)
trigger6 = StateNo = 52
trigger7 = (StateNo = 100) || (StateNo = 105)

[State -1,強シャイニングブレイド]
type = ChangeState
value = 817
triggerall = var(8) = 0
triggerall = command = "強シャイニングブレイド"
triggerall = (StateType != A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger2 = (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger3 = (prevstateno != 100) && (prevstateno != 105)
trigger4 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger4 = (prevstateno != 100) && (prevstateno != 105)
trigger5 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger5 = (prevstateno != 100) && (prevstateno != 105)
trigger6 = StateNo = 52
trigger7 = (StateNo = 100) || (StateNo = 105)

[State -1,中シャイニングブレイド]
type = ChangeState
value = 816
triggerall = var(8) = 0
triggerall = command = "中シャイニングブレイド"
triggerall = (StateType != A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger2 = (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger3 = (prevstateno != 100) && (prevstateno != 105)
trigger4 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger4 = (prevstateno != 100) && (prevstateno != 105)
trigger5 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger5 = (prevstateno != 100) && (prevstateno != 105)
trigger6 = StateNo = 52
trigger7 = (StateNo = 100) || (StateNo = 105)

[State -1,弱シャイニングブレイド]
type = ChangeState
value = 815
triggerall = var(8) = 0
triggerall = command = "弱シャイニングブレイド"
triggerall = (StateType != A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger2 = (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger3 = (prevstateno != 100) && (prevstateno != 105)
trigger4 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger4 = (prevstateno != 100) && (prevstateno != 105)
trigger5 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger5 = (prevstateno != 100) && (prevstateno != 105)
trigger6 = StateNo = 52
trigger7 = (StateNo = 100) || (StateNo = 105)

;------------------------------------------------------------------------------

[State -1,ESソウルフラッシュ]
type = ChangeState
value = ifelse(StateType=A,808,803)
triggerall = var(8) = 0
triggerall = power >= 500   ;AR: ES = half a bar
triggerall = NumProjID(800) = 0
triggerall = command = "ESソウルフラッシュ"
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
;空中
trigger2 = (stateno = 600) && (MoveContact = [1,6]) || (stateno = 605) && (MoveContact = [1,6])
trigger3 = (stateno = 630) && (MoveContact = [1,6]) || (stateno = 635) && (MoveContact = [1,6])
trigger4 = (stateno = 50)
;地上
trigger5 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger5 = (prevstateno != 100) && (prevstateno != 105)
trigger6 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger6 = (prevstateno != 100) && (prevstateno != 105)
trigger7 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger7 = (prevstateno != 100) && (prevstateno != 105)
trigger8 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger8 = (prevstateno != 100) && (prevstateno != 105)
trigger9 = StateNo = 52
trigger10= (StateNo = 100) || (StateNo = 105)

[State -1,弱ソウルフラッシュ]
type = ChangeState
value = ifelse(StateType=A,805,800)
triggerall = var(8) = 0
triggerall = NumProjID(800) = 0
triggerall = command = "弱ソウルフラッシュ"
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
;空中
trigger2 = (stateno = 600) && (MoveContact = [1,6]) || (stateno = 605) && (MoveContact = [1,6])
trigger3 = (stateno = 630) && (MoveContact = [1,6]) || (stateno = 635) && (MoveContact = [1,6])
trigger4 = (stateno = 50)
;地上
trigger5 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger5 = (prevstateno != 100) && (prevstateno != 105)
trigger6 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger6 = (prevstateno != 100) && (prevstateno != 105)
trigger7 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger7 = (prevstateno != 100) && (prevstateno != 105)
trigger8 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger8 = (prevstateno != 100) && (prevstateno != 105)
trigger9 = StateNo = 52
trigger10= (StateNo = 100) || (StateNo = 105)

[State -1,中ソウルフラッシュ]
type = ChangeState
value = ifelse(StateType=A,806,801)
triggerall = var(8) = 0
triggerall = NumProjID(800) = 0
triggerall = command = "中ソウルフラッシュ"
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
;空中
trigger2 = (stateno = 600) && (MoveContact = [1,6]) || (stateno = 605) && (MoveContact = [1,6])
trigger3 = (stateno = 630) && (MoveContact = [1,6]) || (stateno = 635) && (MoveContact = [1,6])
trigger4 = (stateno = 50)
;地上
trigger5 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger5 = (prevstateno != 100) && (prevstateno != 105)
trigger6 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger6 = (prevstateno != 100) && (prevstateno != 105)
trigger7 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger7 = (prevstateno != 100) && (prevstateno != 105)
trigger8 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger8 = (prevstateno != 100) && (prevstateno != 105)
trigger9 = StateNo = 52
trigger10= (StateNo = 100) || (StateNo = 105)

[State -1,強ソウルフラッシュ]
type = ChangeState
value = ifelse(StateType=A,807,802)
triggerall = var(8) = 0
triggerall = NumProjID(800) = 0
triggerall = command = "強ソウルフラッシュ"
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
;空中
trigger2 = (stateno = 600) && (MoveContact = [1,6]) || (stateno = 605) && (MoveContact = [1,6])
trigger3 = (stateno = 630) && (MoveContact = [1,6]) || (stateno = 635) && (MoveContact = [1,6])
trigger4 = (stateno = 50)
;地上
trigger5 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger5 = (prevstateno != 100) && (prevstateno != 105)
trigger6 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger6 = (prevstateno != 100) && (prevstateno != 105)
trigger7 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger7 = (prevstateno != 100) && (prevstateno != 105)
trigger8 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger8 = (prevstateno != 100) && (prevstateno != 105)
trigger9 = StateNo = 52
trigger10= (StateNo = 100) || (StateNo = 105)

;------------------------------------------------------------------------------

[State -1,ESメリーターン]
type = ChangeState
value = 828
triggerall = var(8) = 0
triggerall = power >= 500   ;AR: ES = half a bar
triggerall = command = "ESメリーターン"
triggerall = (StateType != A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger2 = (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger3 = (prevstateno != 100) && (prevstateno != 105)
trigger4 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger4 = (prevstateno != 100) && (prevstateno != 105)
trigger5 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger5 = (prevstateno != 100) && (prevstateno != 105)
trigger6= StateNo = 52
trigger7 = (StateNo = 100) || (StateNo = 105)

[State -1,強メリーターン]
type = ChangeState
value = 827
triggerall = var(8) = 0
triggerall = command = "強メリーターン"
triggerall = (StateType != A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger2 = (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger3 = (prevstateno != 100) && (prevstateno != 105)
trigger4 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger4 = (prevstateno != 100) && (prevstateno != 105)
trigger5 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger5 = (prevstateno != 100) && (prevstateno != 105)
trigger6= StateNo = 52
trigger7 = (StateNo = 100) || (StateNo = 105)

[State -1,中メリーターン]
type = ChangeState
value = 826
triggerall = var(8) = 0
triggerall = command = "中メリーターン"
triggerall = (StateType != A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger2 = (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger3 = (prevstateno != 100) && (prevstateno != 105)
trigger4 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger4 = (prevstateno != 100) && (prevstateno != 105)
trigger5 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger5 = (prevstateno != 100) && (prevstateno != 105)
trigger6= StateNo = 52
trigger7 = (StateNo = 100) || (StateNo = 105)

[State -1,弱メリーターン]
type = ChangeState
value = 825
triggerall = var(8) = 0
triggerall = command = "弱メリーターン"
triggerall = (StateType != A) 
trigger1 = ctrl || GetHitVar(hittime) = 0 || StateNo = 5120 && AnimTime = 0
trigger2 = (StateNo = 200) && (MoveContact = [1,6]) || (StateNo = 205) && (MoveContact = [1,6]) || (StateNo = 210) && (MoveContact = [1,6]) || (StateNo = 215) && (MoveContact = [1,6])
trigger2 = (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 230) && (MoveContact = [1,6]) || (StateNo = 235) && (MoveContact = [1,6])
trigger3 = (prevstateno != 100) && (prevstateno != 105)
trigger4 = (stateno = 400) && (MoveContact = [1,6]) || (stateno = 405) && (MoveContact = [1,6])
trigger4 = (prevstateno != 100) && (prevstateno != 105)
trigger5 = (stateno = 430) && (MoveContact = [1,6]) || (stateno = 435) && (MoveContact = [1,6])
trigger5 = (prevstateno != 100) && (prevstateno != 105)
trigger6= StateNo = 52
trigger7 = (StateNo = 100) || (StateNo = 105)

;==============================================================================

[State -1, ES追い討ち攻撃]
type = ChangeState
value = 751
triggerall = P2StateType = L || P2StateNo = [5100, 5110]
triggerall = power >= 500   ;AR: ES = half a bar
triggerall = command = "ES追い討ち攻撃"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = StateNo = 40
trigger3 = StateNo = 52

[State -1, 追い討ち攻撃]
type = ChangeState
value = 750
triggerall = P2StateType = L || P2StateNo = [5100, 5110]
triggerall = command = "追い討ち攻撃"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = StateNo = 40
trigger3 = StateNo = 52

;==============================================================================
; 通常投げ
;==============================================================================

[State -1, 地上投げ前P]
type = ChangeState
triggerall = (command = "ar_grab")   ;Abstract Reordered: Y
triggerall = var(3) = 0
triggerall = (command != "back")   ;Y alone = forward
triggerall = (P2BodyDist X < 10)
triggerall = (P2StateType != A)
triggerall = (P2MoveType != H)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = StateNo = 52
value = 700

[State -1, 地上投げ後P]
type = ChangeState
triggerall = (command = "ar_grab")   ;Abstract Reordered: Y
triggerall = var(3) = 0
triggerall = (command = "back")
triggerall = (P2BodyDist X < 11)
triggerall = (P2StateType != A)
triggerall = (P2MoveType != H)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = StateNo = 52
value = 701

[State -1, 空中投げ前]
type = ChangeState
triggerall = (command = "ar_grab")   ;Abstract Reordered: Y
triggerall = (command != "back")   ;Y alone = forward
triggerall = (StateType = A)
triggerall = (P2BodyDist X < 14)
triggerall = (P2Dist Y = [-80,20])
triggerall = (P2StateType = A)
triggerall = (P2MoveType != H)
trigger1 = Ctrl
value = 720

[State -1, 空中投げ後]
type = ChangeState
triggerall = (command = "ar_grab")   ;Abstract Reordered: Y
triggerall = (command = "back")
triggerall = (StateType = A)
triggerall = (P2BodyDist X < 15)
triggerall = (P2Dist Y = [-80,20])
triggerall = (P2StateType = A)
triggerall = (P2MoveType != H)
trigger1 = Ctrl
value = 721

;==============================================================================
; 移動関連
;==============================================================================

[State -1, ハイジャンプ]
type = ChangeState
value = 40
triggerall = (StateType != A) && (Ctrl)
trigger1 = command = "ハイジャンプ"

[State -1, ジャンプ補助]
type = ChangeState
value = 40
triggerall = (StateNo = 52) && (time >= 3)
trigger1 = command = "holdup" 
trigger2 = command = "up" 
trigger3 = command = "ハイジャンプ"

[State -1, 走る]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 移動起き上がり前]
type = ChangeState
triggerall = (Alive)
triggerall = (RoundState = 2) && (StateNo = 5110) && (MoveType = H)
triggerall = (command = "holdfwd")
trigger1 = (command = "x")
trigger2 = (command = "y")
trigger3 = (command = "z")
trigger4 = (command = "a")
trigger5 = (command = "b")
trigger6 = (command = "c")
value = 780

[State -1, 移動起き上がり後]
type = ChangeState
triggerall = (Alive)
triggerall = (RoundState = 2) && (StateNo = 5110) && (MoveType = H)
triggerall = (command = "holdback")
trigger1 = (command = "x")
trigger2 = (command = "y")
trigger3 = (command = "z")
trigger4 = (command = "a")
trigger5 = (command = "b")
trigger6 = (command = "c")
value = 781

;==============================================================================
; 通常攻撃技
;==============================================================================
[State -1, 近立弱Ｐ]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 9
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (time >= 7) && (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 205) && (time >= 7) && (prevstateno != 100) && (prevstateno != 105)
trigger4 = (Stateno = 400) && (time >= 7) && (prevstateno != 100) && (prevstateno != 105)
trigger5 = StateNo = 52
trigger6 = (StateNo = 100) || (StateNo = 105)

[State -1, 遠立弱Ｐ]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = (Statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (time >= 7) && (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 205) && (time >= 7) && (prevstateno != 100) && (prevstateno != 105)
trigger4 = (Stateno = 400) && (time >= 7) && (prevstateno != 100) && (prevstateno != 105)
trigger5 = StateNo = 52
trigger6 = (StateNo = 100) || (StateNo = 105)

[State -1, 近立中Ｐ]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 9
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 205) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger4 = (StateNo = 230) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger5 = (StateNo = 235) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger6 = (stateno = 400) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger7 = (stateno = 430) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger8 = StateNo = 52
trigger9 = (StateNo = 100) || (StateNo = 105)

[State -1, 遠立中Ｐ]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 205) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger4 = (StateNo = 230) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger5 = (StateNo = 235) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger6 = (stateno = 400) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger7 = (stateno = 430) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger8 = StateNo = 52
trigger9 = (StateNo = 100) || (StateNo = 105)

[State -1, 近立強Ｐ]
type = ChangeState
value = 225
triggerall = (command = "z") && (command != "holddown")
triggerall = P2BodyDist X <= 9
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 205) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger4 = (StateNo = 210) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger5 = (StateNo = 215) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger6 = (StateNo = 230) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger7 = (StateNo = 235) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger8 = (StateNo = 240) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger9 = (stateno = 400) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger10 = (stateno = 405) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger11 = (stateno = 430) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger12 = (stateno = 435) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger13 = StateNo = 52
trigger14 = (StateNo = 100) || (StateNo = 105)

[State -1, 遠立ち強パンチ]
type = ChangeState
value = 220
triggerall = (command = "z") && (command != "holddown")
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 205) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger4 = (StateNo = 210) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger5 = (StateNo = 215) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger6 = (StateNo = 230) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger7 = (StateNo = 235) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger8 = (StateNo = 240) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger9 = (stateno = 400) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger10 = (stateno = 405) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger11 = (stateno = 430) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger12 = (stateno = 435) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger13 = StateNo = 52
trigger14 = (StateNo = 100) || (StateNo = 105)

[State -1, 近立弱Ｋ]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 9
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [2,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 205) && (MoveContact = [2,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger4 = (StateNo = 230) && (time >= 7) && (prevstateno != 100) && (prevstateno != 105)
trigger5 = (StateNo = 235) && (time >= 7) && (prevstateno != 100) && (prevstateno != 105)
trigger6 = (stateno = 400) && (MoveContact = [2,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger7 = StateNo = 52
trigger8 = (StateNo = 100) || (StateNo = 105)

[State -1, 遠立弱Ｋ]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [2,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 205) && (MoveContact = [2,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger4 = (StateNo = 230) && (time >= 7) && (prevstateno != 100) && (prevstateno != 105)
trigger5 = (StateNo = 235) && (time >= 7) && (prevstateno != 100) && (prevstateno != 105)
trigger6 = (stateno = 400) && (MoveContact = [2,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger7 = StateNo = 52
trigger8 = (StateNo = 100) || (StateNo = 105)

[State -1, 立中Ｋ]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 205) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger4 = (StateNo = 210) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger5 = (StateNo = 215) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger6 = (StateNo = 230) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger7 = (StateNo = 235) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger8 = (stateno = 400) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger9 = (stateno = 405) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger10 = (stateno = 430) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger11 = StateNo = 52
trigger12 = (StateNo = 100) || (StateNo = 105)

[State -1, 近立強Ｋ]
type = ChangeState
value = 255
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 9
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 205) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger4 = (StateNo = 210) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger5 = (StateNo = 215) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger6 = (StateNo = 220) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger7 = (StateNo = 225) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger8 = (StateNo = 230) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger9 = (StateNo = 235) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger10 = (StateNo = 240) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger11 = (stateno = 400) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger12 = (stateno = 405) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger13 = (stateno = 430) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger14 = (stateno = 435) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger15 = StateNo = 52
trigger16 = (StateNo = 100) || (StateNo = 105)

[State -1, 遠立強Ｋ]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 205) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger4 = (StateNo = 210) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger5 = (StateNo = 215) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger6 = (StateNo = 220) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger7 = (StateNo = 225) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger8 = (StateNo = 230) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger9 = (StateNo = 235) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger10 = (StateNo = 240) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger11 = (stateno = 400) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger12 = (stateno = 405) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger13 = (stateno = 430) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger14 = (stateno = 435) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger15 = StateNo = 52
trigger16 = (StateNo = 100) || (StateNo = 105)

;------------------------------------------------------------------------------
[State -1, 屈弱Ｐ]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 200) && (time >= 7) && (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 205) && (time >= 7) && (prevstateno != 100) && (prevstateno != 105)
trigger4 = (stateno = 400) && (time >= 7) && (prevstateno != 100) && (prevstateno != 105)
trigger5 = StateNo = 52

[State -1, 屈中Ｐ]
type = ChangeState
value = 405
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 205) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger4 = (StateNo = 230) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger5 = (StateNo = 235) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger6 = (stateno = 400) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger7 = (stateno = 430) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger8 = StateNo = 52

[State -1, 屈強Ｐ]
type = ChangeState
value = 410
triggerall = command = "z"
triggerall = command != "holdfwd"   ;AR: 3C = sweep
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 205) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger4 = (StateNo = 210) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger5 = (StateNo = 215) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger6 = (StateNo = 230) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger7 = (StateNo = 235) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger8 = (StateNo = 240) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger9 = (stateno = 400) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger10= (stateno = 405) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger11= (stateno = 430) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger12= (stateno = 435) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger13= StateNo = 52

[State -1, 屈弱Ｋ]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [2,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 205) && (MoveContact = [2,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger4 = (StateNo = 230) && (time >= 7) && (prevstateno != 100) && (prevstateno != 105)
trigger5 = (StateNo = 235) && (time >= 7) && (prevstateno != 100) && (prevstateno != 105)
trigger6 = (stateno = 400) && (MoveContact = [2,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger7 = StateNo = 52

[State -1, 屈中Ｋ]
type = ChangeState
value = 435
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 205) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger4 = (StateNo = 210) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger5 = (StateNo = 215) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger6 = (StateNo = 230) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger7 = (StateNo = 235) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger8 = (stateno = 400) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger9 = (stateno = 405) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger10= (stateno = 430) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger11= StateNo = 52

[State -1, 屈強Ｋ]
type = ChangeState
value = 440
triggerall = command = "z" && command = "holdfwd"   ;AR: 3C = sweep
triggerall = command = "holddown"
trigger1 = (statetype = C) && (ctrl)
trigger2 = (StateNo = 200) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger3 = (StateNo = 205) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger4 = (StateNo = 210) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger5 = (StateNo = 215) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger6 = (StateNo = 220) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger7 = (StateNo = 225) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger8 = (StateNo = 230) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger9 = (StateNo = 235) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger10= (StateNo = 240) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger11= (stateno = 400) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger12= (stateno = 405) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger13= (stateno = 410) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger14= (stateno = 430) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger15= (stateno = 435) && (MoveContact = [1,3]) && (prevstateno != 100) && (prevstateno != 105)
trigger16= StateNo = 52

;------------------------------------------------------------------------------
[State -1, 跳弱Ｐ]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = (statetype = A) && (ctrl)
;再攻撃
trigger2 = (StateNo = 605) && (anim = 650) && (movecontact = 0)
trigger3 = (StateNo = 610) && (anim = 650) && (movecontact = 0)
trigger4 = (StateNo = 630) && (anim = 650) && (movecontact = 0)
trigger5 = (StateNo = 635) && (anim = 650) && (movecontact = 0)
trigger6 = (StateNo = 640) && (anim = 650) && (movecontact = 0)

[State -1, 跳中Ｐ]
type = ChangeState
value = 605
triggerall = command = "y"
trigger1 = (statetype = A) && (ctrl)
trigger2 = (StateNo = 600) && (MoveContact = [1,3])
trigger3 = (StateNo = 630) && (MoveContact = [1,3])
;再攻撃
trigger4 = (StateNo = 600) && (anim = 650) && (movecontact = 0)
trigger5 = (StateNo = 610) && (anim = 650) && (movecontact = 0)
trigger6 = (StateNo = 630) && (anim = 650) && (movecontact = 0)
trigger7 = (StateNo = 635) && (anim = 650) && (movecontact = 0)
trigger8 = (StateNo = 640) && (anim = 650) && (movecontact = 0)

[State -1, 跳強Ｐ]
type = ChangeState
value = 610
triggerall = command = "z"
trigger1 = (statetype = A) && (ctrl)
trigger2 = (StateNo = 600) && (MoveContact = [1,3])
trigger3 = (StateNo = 630) && (MoveContact = [1,3])
trigger4 = (StateNo = 605) && (MoveContact = [1,3])
trigger5 = (StateNo = 635) && (MoveContact = [1,3])
;再攻撃
trigger6 = (StateNo = 600) && (anim = 650) && (movecontact = 0)
trigger7 = (StateNo = 605) && (anim = 650) && (movecontact = 0)
trigger8 = (StateNo = 630) && (anim = 650) && (movecontact = 0)
trigger9 = (StateNo = 635) && (anim = 650) && (movecontact = 0)
trigger10= (StateNo = 640) && (anim = 650) && (movecontact = 0)

[State -1, 跳弱Ｋ]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = (statetype = A) && (ctrl)
trigger2 = (StateNo = 600) && (MoveContact = [1,3])
;再攻撃
trigger3 = (StateNo = 600) && (anim = 650) && (movecontact = 0)
trigger4 = (StateNo = 605) && (anim = 650) && (movecontact = 0)
trigger5 = (StateNo = 610) && (anim = 650) && (movecontact = 0)
trigger6 = (StateNo = 635) && (anim = 650) && (movecontact = 0)
trigger7 = (StateNo = 640) && (anim = 650) && (movecontact = 0)

[State -1, 跳中Ｋ]
type = ChangeState
value = 635
triggerall = command = "b"
trigger1 = (statetype = A) && (ctrl)
trigger2 = (StateNo = 600) && (MoveContact = [1,3])
trigger3 = (StateNo = 605) && (MoveContact = [1,3])
trigger4 = (StateNo = 630) && (MoveContact = [1,3])
;再攻撃
trigger5 = (StateNo = 600) && (anim = 650) && (movecontact = 0)
trigger6 = (StateNo = 605) && (anim = 650) && (movecontact = 0)
trigger7 = (StateNo = 610) && (anim = 650) && (movecontact = 0)
trigger8 = (StateNo = 630) && (anim = 650) && (movecontact = 0)
trigger9 = (StateNo = 640) && (anim = 650) && (movecontact = 0)

[State -1, 跳強Ｋ]
type = ChangeState
value = 640
triggerall = command = "c"
trigger1 = (statetype = A) && (ctrl)
trigger2 = (StateNo = 600) && (MoveContact = [1,3])
trigger3 = (StateNo = 630) && (MoveContact = [1,3])
trigger4 = (StateNo = 605) && (MoveContact = [1,3])
trigger5 = (StateNo = 635) && (MoveContact = [1,3])
trigger6 = (StateNo = 610) && (MoveContact = [1,3])
;再攻撃
trigger7 = (StateNo = 600) && (anim = 650) && (movecontact = 0)
trigger8 = (StateNo = 605) && (anim = 650) && (movecontact = 0)
trigger9 = (StateNo = 610) && (anim = 650) && (movecontact = 0)
trigger10= (StateNo = 630) && (anim = 650) && (movecontact = 0)
trigger11= (StateNo = 635) && (anim = 650) && (movecontact = 0)

;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
