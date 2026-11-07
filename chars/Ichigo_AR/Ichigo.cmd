; カンフーマンの入力コマンド定義ファイルです。
; コマンドの入力キーを設定するパートと、技を実行するための条件を設定するパートに分かれています。
;------------------------------------------------------------------------------
;==============================================================================
; 入力キーの設定パート
;==============================================================================
;------------------------------------------------------------------------------
;■設定はこの形が決まり事です。詳細は以下参照。
;
;[Command]
;name = "***"
;command = ###
;time = &&&
;
;■コマンドの名前：「name = "***"」という風に入れます。***に文字を入れてください。
; 　　　　　　　　アルファベットは大文字と小文字でも区別されます。日本語も可能です。
;
;■指定方法：「command = ###」という風に入れます。
;　　　　　　###に下記のキーを組み合わせ入力するコマンドを設定してください。
;
;　　方向キー：　B, DB, D, DF, F, UF, U, UB　（全て大文字で）
;　　　　　　　　B=Back（後）・D=Down（下）・F=Forward（前）・U=Up（上）になっています。
;
;　　ボタン　：　a, b, c, x, y, z, s 　　　　（全て小文字で）
; 
;　※特殊文字
;
;　　スラッシュ（ / ）：ボタンを押しっぱなしにする場合はこれを入れます。
;　　　　　　　　例：command = /F　　　（前キーを押したままにする）
;　　　　　　　　　　command = /B,y　　（後キーを押したままＹボタンを入力）
;
;　　チルダ　　（ ~ ）：ボタンが離される事を認識させる場合はこれを入れます。
;　　　　　　　　例：command = ~c　　　（Ｃボタンを離す）
;　　　　　　　　　　command = ~DB,DF,x（斜め後下を離して斜め前下=>Ｘボタンの順番に入力）
;
;　　　　　　　　※数値を追加する事で、ボタンを離すまでの時間、いわゆる『溜め』を設定出来ます。
;　　　　　　　　例：command = ~20z　　（Ｚボタンを押したままにし、２０フレーム後に離す）
;　　　　　　　　　　command = ~40B,F,b（後キーを押したままにし、４０フレーム後に離して前キー=>Ｂボタンの順番に入力）
;
;　　ドル　　　（ $ ）：複数の方向キー要素を入力出来るようにする場合はこれを入れます。
;　　　　　　　　例：command = $U　　　（上・斜め前上・斜め後上のどれからで始めても良い）
;　　　　　　　　　　command = $DF 　　（下・斜め前下・前のどれからで始めても良い）
;
;　　プラス　　（ + ）：ボタンを同時押しする場合はこれを入れます。
;　　　　　　　　例：command = a+b 　　（ＡボタンとＢボタンを同時押しします）
;　　　　　　　　　　command = x+y+z 　（ＸボタンとＹボタンとＺボタンを同時押しします）
;　　　　　　　　　　command = F+c 　　（前キーとＣボタンを同時押しします）
;
;　※これらの特殊文字は、組み合わせて使用する事も可能です。
;　　　　　　　　例：command = ~30$D,a+b
;　　　　　　　　　　　　　（下要素を３０フレーム溜めて離した後にＡボタンとＢボタンを同時押しします）
;
;■入力コマンド受付時間：「time = &&&」という風に入れます。オプションなので省略可能。
;　　　　　　　　　　　　&&&にコマンドを入力出来る時間を入れてください。時間はフレーム数です（１フレーム＝1/60秒）。
;　　　　　　　　例：time = 24　（入力受付時間を２４フレーム（0.4秒）に設定）
;
; 後は実際に登録されているものを参照してください。
;==============================================================================

;-| ボタン配置 |-----------------------------------------------------
;各ボタンの配置を簡単に変更できます。
;このキャラクターのボタン配置を変えたいときなどに使います。
;x = x を x = a に変えれば、xがaに変わります。

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| 標準化 |-------------------------------------------------------
[Defaults]
; timeを記述しなかった場合、以下の値が参照されます。最小値は1です。
command.time = 15

; buffer.timeの値です。1～30まで設定できます。
; 普通は1です。
command.buffer.time = 1

;------------------------------------------------------------------------------
;-| AI起動用 |-----------------------------------------------------------------
[Command]
name = "AI1"
command = F, B, B, F, F, B, B, F, F, B, B, F, F, B
time = 1

[Command]
name = "AI2"
command = U, D, D, U, U, D, D, U, U, D, D, U, U, D
time = 1

[Command]
name = "AI3"
command = D, U, U, D, D, U, U, D, D, U, U, D, D, U
time = 1

[Command]
name = "AI4"
command = B, F, F, B, B, F, F, B, B, F, F, B, B, F
time = 1

[Command]
name = "AI5"
command = a, x, x, a, a, x, x, a, a, x, x, a, a, x
time = 1

[Command]
name = "AI6"
command = b, y, y, b, b, y, y, b, b, y, y, b, b, y
time = 1

[Command]
name = "AI7"
command = c, z, z, c, c, z, z, c, c, z, z, c, c, z
time = 1

[Command]
name = "AI8"
command = x, a, a, x, x, a, a, x, x, a, a, x, x, a
time = 1

[Command]
name = "AI9"
command = y, b, b, y, y, b, b, y, y, b, b, y, y, b
time = 1

[Command]
name = "AI10"
command = z, c, c, z, z, c, c, z, z, c, c, z, z, c
time = 1

[Command]
name = "AI11"
command = F, B, F, B, F, B, F, B, F, B, F, B, F, B
time = 1

[Command]
name = "AI12"
command = U, D, U, D, U, D, U, D, U, D, U, D, U, D
time = 1

[Command]
name = "AI13"
command = D, U, D, U, D, U, D, U, D, U, D, U, D, U
time = 1

[Command]
name = "AI14"
command = B, F, B, F, B, F, B, F, B, F, B, F, B, F
time = 1

[Command]
name = "AI15"
command = a, x, a, x, a, x, a, x, a, x, a, x, a, x
time = 1

[Command]
name = "AI16"
command = b, y, b, y, b, y, b, y, b, y, b, y, b, y
time = 1

[Command]
name = "AI17"
command = c, z, c, z, c, z, c, z, c, z, c, z, c, z
time = 1

[Command]
name = "AI18"
command = x, a, x, a, x, a, x, a, x, a, x, a, x, a
time = 1

[Command]
name = "AI19"
command = y, b, y, b, y, b, y, b, y, b, y, b, y, b
time = 1

[Command]
name = "AI20"
command = z, c, z, c, z, c, z, c, z, c, z, c, z, c
time = 1

[Command]
name = "AI21"
command = F, B, F, B, F, B, F, B, F, B
time = 1

[Command]
name = "AI22"
command = U, D, U, D, U, D, U, D, U, D
time = 1

[Command]
name = "AI23"
command = D, U, D, U, D, U, D, U, D, U
time = 1

[Command]
name = "AI24"
command = B, F, B, F, B, F, B, F, B, F
time = 1

[Command]
name = "AI25"
command = D, U, B, F, D, U, B, F, D
time = 1

;------------------------------------------------------------------------------
;-| 3ゲージ超必殺技 |----------------------------------------------------------
[Command]
name = "天鎖斬月"
command = ~F, B, DB, D, DF, F, a
time = 25

[Command]
name = "天鎖斬月"
command = ~F, B, DB, D, DF, F, b
time = 25

[Command]
name = "天鎖斬月"
command = ~F, B, DB, D, DF, F, c
time = 25

;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------
[Command]
name = "一閃突"
command = ~D, DB, B, DB, D, DF, F, a
time = 25

[Command]
name = "一閃突"
command = ~D, DB, B, DB, D, DF, F, b
time = 25

[Command]
name = "一閃突"
command = ~D, DB, B, DB, D, DF, F, c
time = 25

[Command]
name = "月牙天衝"
command = ~D, DF, F, D, DF, F, a
time = 25

[Command]
name = "月牙天衝"
command = ~D, DF, F, D, DF, F, b
time = 25

[Command]
name = "月牙天衝"
command = ~D, DF, F, D, DF, F, c
time = 25

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "弱牙斬"
command = ~F, D, DF, a
time = 20

[Command]
name = "中牙斬"
command = ~F, D, DF, b
time = 20

[Command]
name = "強牙斬"
command = ~F, D, DF, c
time = 20

[Command]
name = "弱円月斬"
command = ~B, DB, D, DF, F, a
time = 20

[Command]
name = "中円月斬"
command = ~B, DB, D, DF, F, b
time = 20

[Command]
name = "強円月斬"
command = ~B, DB, D, DF, F, c
time = 20

[Command]
name = "弱斬月"
command = ~D, DF, F, a
time = 20

[Command]
name = "中斬月"
command = ~D, DF, F, b
time = 20

[Command]
name = "強斬月"
command = ~D, DF, F,c
time = 20

[Command]
name = "弱大波斬"
command = ~D, $U, a

[Command]
name = "中大波斬"
command = ~D, $U, b

[Command]
name = "強大波斬"
command = ~D, $U, c

[Command]
name = "弱根限斬"
command = ~D, D, a

[Command]
name = "中根限斬"
command = ~D, D, b

[Command]
name = "強根限斬"
command = ~D, D, c

[Command]
name = "jump"    
command = D, $U
time = 12

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------
[Command]
name = "FF"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = F, F
time = 10

[Command]
name = "BB"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------
[Command]
name = "MAX"
command = x+b
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = a+x
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = z
time = 1

[Command]
name = "DC"
command = a+b
time = 1

[Command]
name = "DC"
command = b+c
time = 1

[Command]
name = "DC"
command = c+a
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,x
time = 1

[Command]
name = "down_b"
command = /$D,c
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------
[Command]
name = "a"
command = x
time = 1

[Command]
name = "b"
command = c
time = 1

[Command]
name = "c"
command = y
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
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[command]
name = "fwd"
command = F
time = 1

[command]
name = "back"
command = B
time = 1

[command]
name = "up"
command = U
time = 1

[command]
name = "down"
command = D
time = 1

;------------------------------------------------------------------------------
;-| 方向キー押しっぱなし |-----------------------------------------------------
[Command]
name = "holdfwd"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$F
time = 1

[Command]
name = "holdback"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$B
time = 1

[Command]
name = "holdup"    ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$U
time = 1

[Command]
name = "holddown"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$D
time = 1

[Command]
name = "hold_a"
command = /$x
time = 1

[Command]
name = "hold_b"
command = /$c
time = 1

[Command]
name = "hold_c"
command = /$y
time = 1

[Command]
name = "hold_x"
command = /$a
time = 1

[Command]
name = "hold_y"
command = /$b
time = 1

[Command]
name = "hold_z"
command = /$b
time = 1

;------------------------------------------------------------------------------
;==============================================================================
; 技を実行するための条件の設定（ステートエントリーパート）
;==============================================================================
;------------------------------------------------------------------------------
; ここから下は「どのコマンドでどの番号のステートをどういう条件で出せるか」を設定する場所です。
;（ステートに関してはCNSファイルを参照）
; 
;■設定は基本的にこの形になります。
;
; [State -1, Label]                  ;「Label」の部分はただのラベルです。何でも良いです。それ以外は変更不可。
; type = ChangeState                 ;「別のステートに変更する」という意味のステートコントローラ
; value = new_state_number           ;出したい技のステート番号を入れます
; trigger1 = command = command_name  ;入力キー設定パートで登録したコマンドの名前をどれか入れます
; . . .  (any additional triggers)   ;trigger（条件を指定するトリガー）を追加出来ます
;
;■triggerに使える基本的な条件（通常は「トリガー」と呼ばれています）
;
;   - StateType    - キャラクターがどの状態の時にそのステートを出せるかどうかを決められます。
;                    S=立った状態・C=座った状態・A=空中にいる状態・L=横に倒れた状態、の４つが決まり事です。
;                    CNSのStatedefの下にある「Type = *」の項目が状態の意味なので、これをこのトリガーで判断します。
;
;   - Ctrl         - コントロールが可能か不可能かどちらかの時にそのステートを出せるかどうかを決められます。
;                    0=コントロール不可能状態・1=コントロール可能状態、ですが通常は Ctrl = 1 ( = 1 省略可能)が基本。
;
;   - StateNo      - 別の番号のステートから出せる事が可能になります。
;                    これを応用してスーパーキャンセルも可能です。
;
;   - MoveContact  - 物理攻撃が相手に当たった時（攻撃がヒットした時、もしくはガードされた時）に、
;                    そのステートを出せるかどうかを決められます。２種類４パターンあります。
;                    MoveContact or MoveContact = 1  （攻撃が当たった時）
;                    !MoveContact or MoveContact = 0 （攻撃が当たってない時）
;                    これを応用してスーパーキャンセルも可能です。
;
;　※上の４つ以外にもありますが、他のトリガーはM.U.G.E.N本体docsフォルダの中の
;　　CNSドキュメンテーションを参照してください。
;
;■ステートエントリーの順序
;
; ChangeStateの登録の順番は重要です。上に来れば来るほどコマンド入力の優先度が高くなります。
;
; 引用になりますが、例えば「波動拳コマンドのChangeState（↓＼→＋パンチ）」を
;「昇龍拳コマンドのChangeState（→↓＼＋パンチ）」よりも上に登録した場合、
; ゲーム中では昇龍拳を出そうとしても波動拳が誤って暴発しやすくなってしまいます。
; 防止するためには、「波動拳のChangeState」を「昇龍拳のChangeState」よりも下に登録しなくてはなりません。
;「レバーを前に入れて出す特殊技」と「投げ技」の関係なども同様です。
;
; 順番をよく考えて登録しましょう。
;
;■AI(CPU)はどう動くのか
;MUGENの標準CPUは相手に近づき適当に攻撃を繰り出すだけなので、AIスイッチによる制御が必要なこともあります。
;
;■

;Abstract Reordered: Bankai input finished with C = the 5 bar, 45 second Bankai
[Command]
name = "ar_bankai_c"
command = ~F, B, DB, D, DF, F, c

;Abstract Reordered: burst = A+B+C (all three together)
[Command]
name = "ar_burst"
command = a+b+c
time = 1

;Abstract Reordered: Orihime assist = quarter circle back (214) + A / B / C
[Command]
name = "ar_ori_a"
command = ~D, DB, B, a

[Command]
name = "ar_ori_b"
command = ~D, DB, B, b

[Command]
name = "ar_ori_c"
command = ~D, DB, B, c

;Abstract Reordered: Y = Grab, Z = Parry
[Command]
name = "ar_grab"
command = y
time = 1

[Command]
name = "ar_parry"
command = z
time = 1

[Statedef -1]とは？

;
; この部分はCNSプログラミングの拡張部分の、常時監視ステートになります。
; どのいかなる状態でも設定した記述が常に有効になるステートです（CNSの[Statedef -2]と似たような部分）。
;
; 必要な記述と行なので、絶対に消さないでください。
;
;==============================================================================
;------------------------------------------------------------------------------

[Statedef -1];←この行は絶対に消さないでください。必須の項目です。

;---------------------------------------------------------------------------
;Abstract Reordered: burst (Kamijo's) - A+B+C while being hit, recharges in 75 s (var(21))
;Abstract Reordered: Orihime cooldown (var(29), 5 s once she has left); when it's ready she does her taunt
[State -1, AR Orihime round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(29) = 0

[State -1, AR Orihime ready taunt]
type = Helper
triggerall = !ishelper
trigger1 = var(29) = 1
trigger1 = NumHelper(74100) = 0 && NumHelper(74150) = 0
trigger1 = RoundState = 2
helpertype = normal
name = "Orihime"
ID = 74150
stateno = 74150
pos = -55, 0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State -1, AR Orihime cooldown]
type = VarAdd
triggerall = !ishelper
trigger1 = var(29) > 0
trigger1 = NumHelper(74100) = 0
var(29) = -1

[State -1, AR burst round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(21) = 0

[State -1, AR burst recharge]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = var(21) > 0
var(21) = -1
ignorehitpause = 1

;Abstract Reordered: comeback - once a combo has done more than 15% of max life, every further hit
;knocks half a second (30 ticks) off the burst cooldown. var(25) = life when the combo started, var(26) = life last tick
[State -1, AR burst comeback]
type = VarAdd
triggerall = !ishelper
triggerall = var(21) > 0
trigger1 = movetype = H
trigger1 = Life < var(26)
trigger1 = var(25) - Life > LifeMax * 0.15
var(21) = -30
ignorehitpause = 1

[State -1, AR burst comeback clamp]
type = VarSet
triggerall = !ishelper
trigger1 = var(21) < 0
var(21) = 0
ignorehitpause = 1

[State -1, AR burst combo start]
type = VarSet
triggerall = !ishelper
trigger1 = movetype != H
var(25) = Life
ignorehitpause = 1

[State -1, AR burst last life]
type = VarSet
triggerall = !ishelper
trigger1 = 1
var(26) = Life
ignorehitpause = 1

;Abstract Reordered: burst HUD - Touma's BURST gauge, recoloured, just under the lifebar.
;var(21) = cooldown ticks (4500 = just used, 0 = ready). Anims 9660-9668, explod IDs = anims.
[State -1, AR burst gauge 9668 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9668) = 0
trigger1 = var(21) = 0
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
trigger1 = var(21) = 0
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
trigger1 = var(21) > 3750
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
trigger1 = var(21) <= 3750 && var(21) > 3000
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
trigger1 = var(21) <= 3000 && var(21) > 2250
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
trigger1 = var(21) <= 2250 && var(21) > 1500
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
trigger1 = var(21) <= 1500 && var(21) > 750
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
trigger1 = var(21) <= 750 && var(21) > 0
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
trigger1 = var(21) > 3750
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
trigger1 = var(21) = 0
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
trigger1 = var(21) = 0
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
trigger1 = var(21) > 3750
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
trigger1 = var(21) <= 3750 && var(21) > 3000
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
trigger1 = var(21) <= 3000 && var(21) > 2250
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
trigger1 = var(21) <= 2250 && var(21) > 1500
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
trigger1 = var(21) <= 1500 && var(21) > 750
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
trigger1 = var(21) <= 750 && var(21) > 0
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
trigger1 = var(21) > 3750
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
trigger1 = !(var(21) = 0)
ID = 9668
ignorehitpause = 1

[State -1, AR burst gauge 9661 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9661)
trigger1 = !(var(21) = 0)
ID = 9661
ignorehitpause = 1

[State -1, AR burst gauge 9660 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9660)
trigger1 = !(var(21) > 3750)
ID = 9660
ignorehitpause = 1

[State -1, AR burst gauge 9662 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9662)
trigger1 = !(var(21) <= 3750 && var(21) > 3000)
ID = 9662
ignorehitpause = 1

[State -1, AR burst gauge 9663 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9663)
trigger1 = !(var(21) <= 3000 && var(21) > 2250)
ID = 9663
ignorehitpause = 1

[State -1, AR burst gauge 9664 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9664)
trigger1 = !(var(21) <= 2250 && var(21) > 1500)
ID = 9664
ignorehitpause = 1

[State -1, AR burst gauge 9665 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9665)
trigger1 = !(var(21) <= 1500 && var(21) > 750)
ID = 9665
ignorehitpause = 1

[State -1, AR burst gauge 9666 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9666)
trigger1 = !(var(21) <= 750 && var(21) > 0)
ID = 9666
ignorehitpause = 1

[State -1, AR burst gauge 9667 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9667)
trigger1 = !(var(21) > 3750)
ID = 9667
ignorehitpause = 1


[State -1, AR burst]
type = ChangeState
value = ifelse(StateType = A, 721, 720)
triggerall = !ishelper
triggerall = var(59) != 1
triggerall = command = "ar_burst"
triggerall = var(21) = 0
triggerall = RoundState = 2
triggerall = Alive
trigger1 = (stateno = 5000 || stateno = 5010 || stateno = 5020 || stateno = 5070) && Time > 0
trigger2 = stateno = [5001, 5099]
trigger2 = stateno != 5000 && stateno != 5010 && stateno != 5020 && stateno != 5070

;Abstract Reordered: remembers whether the current state is an attack, so a Shunpo cancelled out
;of one (combo Shunpo) is charged meter instead of a stock in state 800
[State -1, AR attack tracker]
type = VarSet
triggerall = !ishelper
trigger1 = 1
var(7) = movetype = A
ignorehitpause = 1

;Abstract Reordered: parry on Z (states 700-709 in Ichigo-AR.cns)
;Abstract Reordered: charged air heavy is allowed again once the combo is over
;Abstract Reordered: var(17) = length of the current Bankai (2700 = long C version), cleared outside Bankai
[State -1, AR Bankai length reset]
type = VarSet
triggerall = !ishelper
trigger1 = var(40) = 0 && stateno != 3000
var(17) = 0

[State -1, AR charged air heavy reset]
type = VarSet
triggerall = !ishelper
triggerall = var(9)
trigger1 = !NumEnemy
trigger2 = EnemyNear, MoveType != H
var(9) = 0
ignorehitpause = 1

[State -1, AR Parry]
type = ChangeState
value = 700
triggerall = !ishelper
triggerall = var(59) != 1
triggerall = command = "ar_parry"
trigger1 = ctrl


;==============================================================================
;-----------------------------------------------------------------------------
;コンボ用変数
;-----------------------------------------------------------------------------
[State -1, Combo]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo]
type = VarSet
trigger1 = stateno = 200 && movecontact = [1,6]
trigger2 = stateno = 210 && movecontact = [1,6]
trigger3 = stateno = 220 && movecontact = [1,6]
trigger4 = stateno = 400 && movecontact = [1,6]
trigger5 = stateno = 410 && movecontact = [1,6]
trigger6 = stateno = 420 && movecontact = [1,6]
var(1) = 1

[State -1, SC]
type = VarSet
trigger1 = stateno = 1100 && movehit = [1,6]
trigger2 = stateno = 1110 && movehit = [1,6]
trigger3 = stateno = 1120 && movehit = [1,6]
trigger4 = stateno = 1650 && movehit = [1,6]
trigger5 = stateno = 1660 && movehit = [1,6]
var(1) = 2

[State -1, Combo]
type = VarSet
trigger1 = stateno = 600 && movecontact = [1,6]
trigger2 = stateno = 610 && movecontact = [1,6]
trigger3 = stateno = 620 && movecontact = [1,6]
var(1) = 5

[State -1, Combo]
type = VarSet
trigger1 = stateno = 6200 && movecontact = [1,6]
trigger2 = stateno = 6210 && movecontact = [1,6]
trigger3 = stateno = 6220 && movecontact = [1,6]
trigger4 = stateno = 6400 && movecontact = [1,6]
trigger5 = stateno = 6410 && movecontact = [1,6]
trigger6 = stateno = 6420 && movecontact = [1,6]
var(1) = 11

[State -1, Combo]
type = VarSet
trigger1 = stateno = 6600 && movecontact = [1,6]
trigger2 = stateno = 6610 && movecontact = [1,6]
trigger3 = stateno = 6620 && movecontact = [1,6]
var(1) = 15

;-----------------------------------------------------------------------------
;先行入力
;-----------------------------------------------------------------------------
;先行入力受付時間
[State 1000, 0]
type = varset
triggerall = var(32) = 0
trigger1 = var(31) > 0
var(32) = 8

;先行入力受付時間カウント
[State 1000, 0]
type = varadd
trigger1 = var(32) > 0
var(32) = -1

[State 1000, 0]
type = varset
triggerall = var(31) != 0
trigger1 = var(32) = 0
var(31) = 0

;---------------------------------------------------------------------------
[state -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "天鎖斬月"
var(31) = 3000

[state -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "一閃突"
var(31) = 2100

[state -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "月牙天衝"
var(31) = 2000

[state -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "弱牙斬"
var(31) = 1200

[state -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "中牙斬"
var(31) = 1210

[state -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "強牙斬"
var(31) = 1220

[state -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "弱円月斬"
var(31) = 1100

[state -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "中円月斬"
var(31) = 1110

[state -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "強円月斬"
var(31) = 1120

[state -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "弱斬月"
var(31) = 1000

[state -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "中斬月"
var(31) = 1010

[state -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "強斬月"
var(31) = 1020

[state -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "弱大波斬"
var(31) = 1400

[state -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "中大波斬"
var(31) = 1410

[state -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "強大波斬"
var(31) = 1420

[state -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "弱根限斬"
var(31) = 1300

[state -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "中根限斬"
var(31) = 1310

[state -1, VarSet]
type = varset
triggerall = var(31) = 0 && var(32) = 0
trigger1 = command = "強根限斬"
var(31) = 1320

;---------------------------------------------------------------------------
; ガードステートctrl成立判定
;---------------------------------------------------------------------------
[state -1, ctrl有効時セット]
type = varset
trigger1 = ctrl = 1
trigger1 = stateno = [150,155]
var(16) = 1

[state -1, ctrl有効時セット]
type = varset
trigger1 = !ctrl
trigger2 = stateno != [150,155]
var(16) = 0
ignorehitpause = 1

;===========================================================================
;！？
[State -1, ]
type = ChangeState
value = 3100
triggerall = var(59) != 1
triggerall = command = "月牙天衝" || var(31) = 2000
triggerall = var(39) = 1
triggerall = statetype != A
trigger1 = stateno = 7110 && AnimElemTime(5) > 0 && AnimElemTime(6) < 2 && movehit

;===========================================================================
;天鎖斬月
;Abstract Reordered: Bankai with C = 5 bars, lasts 45 seconds (3 bars / 15 s with A or B,
;or with C when he has less than 5 bars)
[State -1, AR Long Bankai length]
type = VarSet
triggerall = var(59) != 1
triggerall = command = "ar_bankai_c"
triggerall = power >= 5000
triggerall = var(40) = 0 && var(39) = 0
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105
trigger2 = var(1) = 1
trigger3 = var(1) = 2
var(17) = 2700

[State -1, AR Long Bankai]
type = ChangeState
value = 3000
triggerall = var(59) != 1
triggerall = command = "ar_bankai_c"
triggerall = power >= 5000
triggerall = var(40) = 0 && var(39) = 0
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105
trigger2 = var(1) = 1
trigger3 = var(1) = 2

[State -1, Bankai]
type = ChangeState
value = 3000
triggerall = var(59) != 1
triggerall = command = "天鎖斬月" || var(31) = 3000
triggerall = power >= 3000
triggerall = var(40) = 0 && var(39) = 0
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105
trigger2 = var(1) = 1
trigger3 = var(1) = 2

;天鎖斬月 - 終了
[State -1, Bankai - End]
type = ChangeState
value = 3010
triggerall = var(39) = 1
triggerall = statetype != A
triggerall = var(30) != 3000
triggerall = ctrl || (stateno = [100,101]) || stateno = 6105
trigger1 = var(40) <= 0
trigger2 = RoundState = 3

;===========================================================================
;一閃突
[State -1, Issen]
type = ChangeState
value = 2100
triggerall = var(59) != 1
triggerall = command = "一閃突" || var(31) = 2100
triggerall = power >= 1000
triggerall = var(39) = 0
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 2000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1
trigger4 = var(1) = 2

;---------------------------------------------------------------------------
;月牙天衝
[State -1, GETSUGA]
type = ChangeState
value = 2000
triggerall = var(59) != 1
triggerall = command = "月牙天衝" || var(31) = 2000
triggerall = power >= 1000
triggerall = var(39) = 0
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 2000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1
trigger4 = var(1) = 2

;===========================================================================
;必殺技(2)
[State -1, Special2 - Bankai]
type = ChangeState
value = 7100
triggerall = var(59) != 1
triggerall = command = "弱円月斬" || var(31) = 1100 || command = "中円月斬" || var(31) = 1110 || command = "強円月斬" || var(31) = 1120
triggerall = var(39) = 1
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105
trigger2 = var(1) = 11;月牙天衝

;---------------------------------------------------------------------------
;月牙天衝(黒)
[State -1, GETSUGA - Bankai]
type = ChangeState
value = 7000
triggerall = var(59) != 1
triggerall = command = "弱斬月" || var(31) = 1000 || command = "中斬月" || var(31) = 1010 || command = "強斬月" || var(31) = 1020
triggerall = var(39) = 1
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105
trigger2 = var(1) = 11

;===========================================================================
;弱牙斬
[State -1, A GAZAN]
type = ChangeState
value = 1200
triggerall = var(59) != 1
triggerall = command = "弱牙斬" || var(31) = 1200
triggerall = var(39) = 0
trigger1 = ctrl || (stateno = [100,101]) || stateno = 111 || stateno = 116 || (stateno = [800,801])
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1
trigger4 = var(1) = 5

;中牙斬
[State -1, B GAZAN]
type = ChangeState
value = 1210
triggerall = var(59) != 1
triggerall = command = "中牙斬" || var(31) = 1210
triggerall = var(39) = 0
trigger1 = ctrl || (stateno = [100,101]) || stateno = 111 || stateno = 116 || (stateno = [800,801])
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1
trigger4 = var(1) = 5

;RF牙斬
[State -1, RF GAZAN]
type = ChangeState
value = 1220
triggerall = var(59) != 1
triggerall = command = "強牙斬" || var(31) = 1220
triggerall = var(39) = 0
triggerall = power >= 1000   ;Abstract Reordered: EX costs 1 bar
trigger1 = ctrl || (stateno = [100,101]) || stateno = 111 || stateno = 116 || (stateno = [800,801])
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1
trigger4 = var(1) = 5

;---------------------------------------------------------------------------
;弱円月斬
[State -1, L SP2]
type = ChangeState
value = 1100
triggerall = var(59) != 1
triggerall = command = "弱円月斬" || var(31) = 1100
triggerall = var(15) = 0
triggerall = var(39) = 0
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801])
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1

;中円月斬
[State -1, S SP2]
type = ChangeState
value = 1110
triggerall = var(59) != 1
triggerall = command = "中円月斬" || var(31) = 1110
triggerall = var(15) = 0
triggerall = var(39) = 0
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801])
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1

;RF円月斬
[State -1, RF SP2]
type = ChangeState
value = 1120
triggerall = var(59) != 1
triggerall = command = "強円月斬" || var(31) = 1120
triggerall = var(15) = 0
triggerall = var(39) = 0
triggerall = power >= 1000   ;Abstract Reordered: EX costs 1 bar
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801])
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1

;---------------------------------------------------------------------------
;弱遅えっ！
[State -1, L SP2_EX]
type = ChangeState
value = 1600
triggerall = var(59) != 1
triggerall = command = "弱円月斬" || var(31) = 1100
triggerall = var(15) = 1
triggerall = var(39) = 0
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801])
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1

;中遅えっ！
[State -1, S SP2_EX]
type = ChangeState
value = 1600;1610
triggerall = var(59) != 1
triggerall = command = "中円月斬" || var(31) = 1110
triggerall = var(15) = 1
triggerall = var(39) = 0
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801])
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1

;RF遅えっ！
[State -1, RF SP2_EX]
type = ChangeState
value = 1620
triggerall = var(59) != 1
triggerall = command = "強円月斬" || var(31) = 1120
triggerall = var(15) = 1
triggerall = var(39) = 0
triggerall = power >= 1000   ;Abstract Reordered: EX costs 1 bar
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801])
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1

;------------------------------------------------------------------------------
;弱斬月
[State -1, L SP1]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = command = "弱斬月" || var(31) = 1000
triggerall = var(15) = 0
triggerall = var(39) = 0
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801])
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1

;中斬月
[State -1, S SP1]
type = ChangeState
value = 1010
triggerall = var(59) != 1
triggerall = command = "中斬月" || var(31) = 1010
triggerall = var(15) = 0
triggerall = var(39) = 0
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801])
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1

;RF斬月
[State -1, RF SP1]
type = ChangeState
value = 1020
triggerall = var(59) != 1
triggerall = command = "強斬月" || var(31) = 1020
triggerall = var(15) = 0
triggerall = var(39) = 0
triggerall = power >= 1000   ;Abstract Reordered: EX costs 1 bar
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801])
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1

;------------------------------------------------------------------------------
;弱飛ばすぜ？
[State -1, L SP1_EX]
type = ChangeState
value = 1500
triggerall = var(59) != 1
triggerall = command = "弱斬月" || var(31) = 1000
triggerall = var(15) = 1
triggerall = var(39) = 0
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801])
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1

;中飛ばすぜ？
[State -1, S SP1_EX]
type = ChangeState
value = 1510
triggerall = var(59) != 1
triggerall = command = "中斬月" || var(31) = 1010
triggerall = var(15) = 1
triggerall = var(39) = 0
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801])
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1

;RF飛ばすぜ？
[State -1, RF SP1_EX]
type = ChangeState
value = 1520
triggerall = var(59) != 1
triggerall = command = "強斬月" || var(31) = 1020
triggerall = var(15) = 1
triggerall = var(39) = 0
triggerall = power >= 1000   ;Abstract Reordered: EX costs 1 bar
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801])
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1

;------------------------------------------------------------------------------
;弱大波斬
[State -1, L Rock]
type = ChangeState
value = 1400
triggerall = 0   ;Abstract Reordered: Onami-zan (rock wave) removed
triggerall = var(59) != 1
triggerall = command = "弱大波斬" || var(31) = 1400
triggerall = var(39) = 0
triggerall = statetype != A
triggerall =!numhelper(1400)
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1
trigger4 = stateno = 40

;中大波斬
[State -1, S Rock]
type = ChangeState
value = 1410
triggerall = 0   ;Abstract Reordered: Onami-zan (rock wave) removed
triggerall = var(59) != 1
triggerall = command = "中大波斬" || var(31) = 1410
triggerall = var(39) = 0
triggerall = statetype != A
triggerall =!numhelper(1410)
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1
trigger4 = stateno = 40

;RF大波斬
[State -1, RF Rock]
type = ChangeState
value = 1420
triggerall = 0   ;Abstract Reordered: Onami-zan (rock wave) removed
triggerall = var(59) != 1
triggerall = command = "強大波斬" || var(31) = 1420
triggerall = var(39) = 0
triggerall = power >= 1000   ;Abstract Reordered: EX costs 1 bar
triggerall = statetype != A
triggerall =!numhelper(1425)
triggerall =!numhelper(1426)
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1
trigger4 = stateno = 40

;------------------------------------------------------------------------------
;弱根限斬
[State -1, L KONGEN]
type = ChangeState
value = 1300
triggerall = var(59) != 1
triggerall = command = "弱根限斬" || var(31) = 1300
triggerall = var(39) = 0
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1

;中根限斬
[State -1, S KONGEN]
type = ChangeState
value = 1310
triggerall = var(59) != 1
triggerall = command = "中根限斬" || var(31) = 1310
triggerall = var(39) = 0
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1

;RF根限斬
[State -1, RF KONGEN]
type = ChangeState
value = 1320
triggerall = var(59) != 1
triggerall = command = "強根限斬" || var(31) = 1320
triggerall = var(39) = 0
triggerall = power >= 1000   ;Abstract Reordered: EX costs 1 bar
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
trigger3 = var(1) = 1

;===========================================================================
;瞬歩
;Abstract Reordered: Orihime assist (214 + A/B/C), out of neutral or as a cancel from his normals
[State -1, AR Orihime kind]
type = VarSet
triggerall = !ishelper
triggerall = var(59) != 1
triggerall = command = "ar_ori_a" || command = "ar_ori_b" || command = "ar_ori_c"
triggerall = var(29) = 0 && NumHelper(74100) = 0
triggerall = RoundState = 2
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801])
trigger2 = (stateno = [200,699] || stateno = [6200,6699]) && movecontact
var(27) = ifelse(command = "ar_ori_c", 3, ifelse(command = "ar_ori_b", 2, 1))

[State -1, AR Orihime]
type = ChangeState
value = ifelse(statetype = A, 74001, 74000)
triggerall = !ishelper
triggerall = var(59) != 1
triggerall = command = "ar_ori_a" || command = "ar_ori_b" || command = "ar_ori_c"
triggerall = var(29) = 0 && NumHelper(74100) = 0
triggerall = RoundState = 2
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801])
trigger2 = (stateno = [200,699] || stateno = [6200,6699]) && movecontact

[State -1, Shunpo]
type = ChangeState
value = 800
triggerall = var(59) != 1
triggerall = command = "a"
;neutral Shunpo and guard-cancel Shunpo use a stock
trigger1 = var(13) >= 1
trigger1 = ctrl || stateno = 40 || (stateno = [100,101]) || (stateno = [105,106]) || (stateno = [110,111]) || (stateno = [115,116]) || stateno = 801 && time > 10
trigger2 = var(13) >= 1
trigger2 = stateno = [150,155]
trigger2 = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
;Abstract Reordered: combo Shunpo - cancel any of his moves (normals, specials, supers):
;costs half a Shunpo stock if he has one (or a half-full refill), otherwise 1 bar (charged in state 800)
trigger3 = movetype = A && (var(13) >= 1 || fvar(14) >= 210 || power >= 1000)
trigger3 = stateno != [900,919] && stateno != [700,709]

;---------------------------------------------------------------------------
;地上投げ
[State -1, Throw_Ground]
type = ChangeState
value = 900
triggerall = var(59) != 1
triggerall = command = "ar_grab"
triggerall = command != "holddown"
triggerall = var(39) = 0
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中投げ
[State -1, Throw_Air]
type = ChangeState
value = 910
triggerall = var(59) != 1
triggerall = command = "ar_grab"
triggerall = command != "holddown"
triggerall = var(39) = 0
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中ダッシュ・前
[State -1, Air Dash-Fwd]
type = ChangeState
value = 110
triggerall = var(59) != 1
triggerall = p2dist X >= 0 && command = "FF" || p2dist X < 0 && command = "BB"
triggerall = pos y <= -30
triggerall = statetype = A
triggerall = var(4) > 0
trigger1 = ctrl

;空中ダッシュ・後
[State -1, Air Dash-Back]
type = ChangeState
value = 115
triggerall = var(59) != 1
triggerall = p2dist X >= 0 && command = "BB" || p2dist X < 0 && command = "FF"
triggerall = pos y <= -30
triggerall = statetype = A
triggerall = var(4) > 0
trigger1 = ctrl

;------------------------------------------------------------------------------
;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Abstract Reordered: in Bankai, just holding forward runs (no double tap)
[State -1, AR Bankai hold-forward run]
type = ChangeState
value = 100
triggerall = var(59) != 1
triggerall = var(39) = 1
triggerall = statetype = S
triggerall = command = "holdfwd" && command != "holddown" && command != "holdup" && command != "holdback"
triggerall = command != "a" && command != "b" && command != "c" && command != "x" && command != "y" && command != "z"
trigger1 = ctrl && (stateno = 0 || stateno = 20)

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105+(6000*var(39))
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------
;ジャンプキャンセル
[State -1, Jump Cancel]
type = ChangeState
value = 45
triggerall = var(59) != 1
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(3) > 0
trigger1 = stateno = 600+(6000*var(39)) && movecontact = [1,6]
trigger2 = stateno = 610+(6000*var(39)) && movecontact = [1,6]
trigger3 = stateno = 620+(6000*var(39)) && movecontact = [1,6]

;------------------------------------------------------------------------------
;ジャンプキャンセル
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = var(59) != 1
triggerall = command = "holdup"
triggerall = statetype != A
trigger1 = stateno = 420 && movecontact = [1,6]
trigger2 = stateno = 1120 && AnimElemTime(12) > 0 && AnimElemTime(16) < 0 && movecontact = [1,6]

;==============================================================================
;立ち弱攻撃
[State -1, Stand Light Attack]
type = ChangeState
value = 200+(6000*var(39))
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105
trigger2 = stateno = 200+(6000*var(39)) && movecontact = [1,6]

;立ち中攻撃
[State -1, Stand Middle Attack]
type = ChangeState
value = 210+(6000*var(39))
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105
trigger2 = stateno = 200+(6000*var(39)) && movecontact = [1,6]
trigger3 = stateno = 400+(6000*var(39)) && movecontact = [1,6]

;立ち強攻撃
[State -1, Standing Strong Attack]
type = ChangeState
value = 220+(6000*var(39))
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105
trigger2 = stateno = 200+(6000*var(39)) && movecontact = [1,6]
trigger3 = stateno = 210+(6000*var(39)) && movecontact = [1,6]
trigger4 = stateno = 400+(6000*var(39)) && movecontact = [1,6]
trigger5 = stateno = 410+(6000*var(39)) && movecontact = [1,6]

;------------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) != 1
triggerall = command = "start"
triggerall = var(39) = 0
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105

;------------------------------------------------------------------------------
;しゃがみ弱攻撃
[State -1, Crouching Light Attack]
type = ChangeState
value = 400+(6000*var(39))
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105
trigger2 = stateno = 200+(6000*var(39)) && movecontact = [1,6]
trigger3 = stateno = 400+(6000*var(39)) && movecontact = [1,6]

;しゃがみ中攻撃
[State -1, Crouching Middle Attack]
type = ChangeState
value = 410+(6000*var(39))
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105
trigger2 = stateno = 200+(6000*var(39)) && movecontact = [1,6]
trigger3 = stateno = 210+(6000*var(39)) && movecontact = [1,6]
trigger4 = stateno = 400+(6000*var(39)) && movecontact = [1,6]

;しゃがみ強攻撃
[State -1, Crouching Strong Attack]
type = ChangeState
value = 420+(6000*var(39))
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || (stateno = [800,801]) || stateno = 6105
trigger2 = stateno = 200+(6000*var(39)) && movecontact = [1,6]
trigger3 = stateno = 210+(6000*var(39)) && movecontact = [1,6]
trigger4 = stateno = 220+(6000*var(39)) && movecontact = [1,6]
trigger5 = stateno = 400+(6000*var(39)) && movecontact = [1,6]
trigger6 = stateno = 410+(6000*var(39)) && movecontact = [1,6]
;Abstract Reordered: EX Zangetsu (RF) chains into the launcher once the swing or the wave connects
trigger7 = stateno = 1020 && movecontact
trigger8 = stateno = 1020
trigger8 = NumHelper(1020) > 0
trigger8 = Helper(1020), MoveContact

;------------------------------------------------------------------------------
;ジャンプ弱攻撃
[State -1, Jump Light Attack]
type = ChangeState
value = 600+(6000*var(39))
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl || stateno = 111 || stateno = 116 || (stateno = [800,801])
trigger2 = stateno = 600+(6000*var(39)) && movecontact = [1,6]

;ジャンプ中攻撃
[State -1, Jump Middle Attack]
type = ChangeState
value = 610+(6000*var(39))
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl || stateno = 111 || stateno = 116 || (stateno = [800,801])
trigger2 = stateno = 600+(6000*var(39)) && movecontact = [1,6]

;ジャンプ強攻撃
[State -1, Jump Strong Attack]
type = ChangeState
value = 620+(6000*var(39))
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl || stateno = 111 || stateno = 116 || (stateno = [800,801])
trigger2 = stateno = 600+(6000*var(39)) && movecontact = [1,6]
trigger3 = stateno = 610+(6000*var(39)) && movecontact = [1,6]

;---------------------------------------------------------------------------
;Damage Cancel
[State -1, Damage Cancel]
type = ChangeState
value = 850
;Abstract Reordered: off for players - the burst (A+B+C) replaces it
triggerall = var(59) = 1
triggerall = var(59) != 1
triggerall = command = "DC"
triggerall = (helper(40000),var(2) = 0) && power >= 1000 || (helper(40000),var(2) = 1) && power >= 2000
triggerall = alive
triggerall = movetype = H
trigger1 = (stateno = [5000,5040]) || (stateno = [5070,5081]) || (stateno = 5050 && time < 10)
trigger1 = var(14) = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; AI
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;---------------------------------------------------------------------------
; 各種ヘルパー
;---------------------------------------------------------------------------
[State -1, AI起動ヘルパー]
type = Helper
triggerall = var(59) != 1
trigger1 =!NumHelper(30000)
trigger1 =!IsHelper
trigger1 = roundstate <= 2 && alive
Trigger1 =!ctrl && stateno=0
helpertype = normal
name = "AI"
stateno = 30000
ID = 30000
pos = 0,0
keyctrl = 1
pausemovetime = 9999999
supermovetime = 9999999
persistent = 0

[State -1, ガードチェックヘルパー]
Type = Helper
triggerall = var(59) = 1
triggerall = RoundState = 2
trigger1 =!NumHelper(31000+id)
trigger1 =!IsHelper
HelperType = Normal
Name = "Guard"
PosType = left
StateNo = 31000
ID = 31000+id
PauseMoveTime = 0
pos=0,9999
pausemovetime=2147483647
supermovetime=2147483647
persistent = 0
IgnoreHitPause = 1
KeyCtrl = 0
Ownpal = 1

[State -1, 飛び道具確認ヘルパー]
Type = Helper
triggerall = var(59) = 1
trigger1 =!NumHelper(32000)
trigger1 =!ishelper
HelperType = Normal
Name = "TOBIDOUGU"
StateNo = 32000
ID = 32000
Pos = 9999,9999
KeyCtrl = 0
persistent = 0
pausemovetime=2147483647
supermovetime=2147483647

[State -1, 飛び道具確認ヘルパー]
Type = Helper
triggerall = var(59) = 1
trigger1 =!NumHelper(32500)
trigger1 =!ishelper
HelperType = Normal
Name = "TOBIDOUGU ITI A"
StateNo = 32500
ID = 32500
Pos = 9999,9999
KeyCtrl = 0
persistent = 0
pausemovetime=2147483647
supermovetime=2147483647

[State -1, 飛び道具確認ヘルパー]
Type = Helper
triggerall = var(59) = 1
trigger1 =!NumHelper(32501)
trigger1 =!ishelper
HelperType = Normal
Name = "TOBIDOUGU ITI B"
StateNo = 32500
ID = 32501
Pos = 9999,9999
KeyCtrl = 0
persistent = 0
pausemovetime=2147483647
supermovetime=2147483647

;---------------------------------------------------------------------------
[State -1, 関係無いステートに行かないように]
type = ChangeState
trigger1 = ishelper(30000)
trigger1 = stateno != 30000
value = 30000

[State -1, 関係無いステートに行かないように]
type = ChangeState
trigger1 = ishelper
trigger1 = ishelper(31000+root,id)
trigger1 = stateno != 31000
value = 31000

[State -1, 関係無いステートに行かないように]
type = SelfState
trigger1 = ishelper(32000)
trigger1 = stateno != 32000
value = 32000

[State -1, 関係無いステートに行かないように]
type = SelfState
trigger1 = ishelper(32500) || ishelper(32501)
trigger1 = stateno != 32500
value = 32500

;-----------------------------------------------------------------------
; AI swich -> ON
[State -1, AI]
type = VarSet
triggerall = !ishelper || isHelper(30000)
triggerall = !var(59)
Triggerall=RoundState<2||(RoundState=2&&ctrl)
trigger1  = Command = "AI1"
trigger2  = Command = "AI2"
trigger3  = Command = "AI3"
trigger4  = Command = "AI4"
trigger5  = Command = "AI5"
trigger6  = Command = "AI6"
trigger7  = Command = "AI7"
trigger8  = Command = "AI8"
trigger9  = Command = "AI9"
trigger10 = Command = "AI10"
trigger11 = Command = "AI11"
trigger12 = Command = "AI12"
trigger13 = Command = "AI13"
trigger14 = Command = "AI14"
trigger15 = Command = "AI15"
trigger16 = Command = "AI16"
trigger17 = Command = "AI17"
trigger18 = Command = "AI18"
trigger19 = Command = "AI19"
trigger20 = Command = "AI20"
trigger21 = Command = "AI21"
trigger22 = Command = "AI22"
trigger23 = Command = "AI23"
trigger24 = Command = "AI24"
trigger25 = Command = "AI25"
trigger26 = NumHelper(30000)
trigger26 = Helper(30000),var(59)
trigger26 = Helper(30000),time > 5
var(59) = 1

;-----------------------------------------------------------------------
[State -1, AI]
Type = VarSet
triggerall = Var(59) = 1
trigger1 = RoundState = 4
trigger2 = Win = 1
trigger3 = Lose = 1
trigger4 = DrawGame = 1
V = 59
value = -1

[State -1, AI]
Type = VarSet
triggerall = Var(59) = -1
trigger1 = RoundState = 2
V = 59
value = 1

;-----------------------------------------------------------------------
;タッグ用生死判別
[State -1, タッグ用生死判別]
Type = VarSet
;triggerall = var(59)>0
triggerall = RoundState = 2
trigger1 = NumEnemy <= 1
trigger2 = NumEnemy >= 2
trigger2 = enemynear(0),Life > 0
trigger2 = Ctrl || !NumTarget || NumTarget >= 2
trigger3 = NumEnemy >= 2
trigger3 = enemynear(0),Life > 0
trigger3 = Target,StateType = L ||  Facing*(Pos X - Target,Pos X) > 0
trigger4 = NumEnemy >= 2 && NumTarget = 1
trigger4 = Enemy(0),Life > 0 && Enemy(1),Life > 0
trigger4 = enemynear(0),ID = Target,ID
trigger4 = Target,StateType != L
trigger4 = Facing*(Pos X - Target,Pos X) <= 0
trigger4 = !Ctrl
var(58) = 0
IgnoreHitPause = 1

[State -1, タッグ用生死判別]
Type = VarSet
;triggerall = var(59)>0
triggerall = RoundState = 2
triggerall = NumEnemy >= 2
triggerall = !var(58)
trigger1 = enemynear(0),Life <= 0
trigger2 = NumEnemy >= 2 && NumTarget = 1
trigger2 = Enemy(0),Life > 0 && Enemy(1),Life > 0
trigger2 = enemynear(0),ID != Target,ID
trigger2 = Facing*(Pos X - Target,Pos X) <= 0
trigger2 = Target,StateType != L
trigger2 = !Ctrl
var(58) = 1
IgnoreHitPause = 1

;-----------------------------------------------------------------------
;相手の起き上がりの投げ無敵を調べる
[State -3]
Type = VarSet
trigger1 = enemynear(var(58)),statetype = L
V = 53
value = -1
IgnoreHitPause = 1

[State -3]
Type = VarAdd
triggerall = Var(53) > 0
trigger1 = enemynear(var(58)),statetype != L
V = 53
value = -1
IgnoreHitPause = 1

[State -3]
Type = VarSet
triggerall = Var(53) = -1
trigger1 = enemynear(var(58)),statetype != L
V = 53
value = 12
IgnoreHitPause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;勝ち挑発(嫌いな人はchangestateの前に「null;」を付けましょう)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;挑発
[State -1, taunt]
type = ChangeState
value = 195
triggerall = var(59) != 0
triggerall = var(57) >= 7
triggerall = var(39) = 0
triggerall = alive
triggerall = life > 0
triggerall = roundstate = 3
triggerall = statetype != A
triggerall = stateno != 195 && prevstateno != 195
trigger1 = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;浮かせからの連続技
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, h75hr];リセット
type = varset
triggerall = var(59)
triggerall = var(50)
trigger1 = enemynear(var(58)),statetype = L
trigger2 = enemynear(var(58)),movetype = A
trigger3 = enemynear(var(58)),movetype != H
trigger4 = enemynear(var(58)),stateno = [0,159]
trigger5 = enemynear(var(58)),ctrl=1
trigger6 = roundstate != 2
trigger7 = (stateno = [600,620]) || (stateno = [3000,4999])
var(50) = 0

[State -1, h75h];ヒット確認
type = varset
triggerall = var(59)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
trigger1 = stateno = 1650 && movehit
trigger2 = stateno = 1660 && movehit
var(50) = 1

[State -1, 前ジャンプ]
type = ChangeState
value = 31
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(50) = 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = StateType != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = P2BodyDist X = [-10,40]
trigger1 = ctrl || (stateno = [20,22]) || (stateno = [99,101]) || (stateno = [120,149])

;ダッシュ
[State -1, RUN]
type = ChangeState
value = 99
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(50) = 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
trigger1 = ctrl || (stateno = [20,22]) || (stateno = [120,149])

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; タッグ用
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, 敵が１人]
Type = VarSet
trigger1 = NumEnemy != 2
trigger2 = !(EnemyNear(0),Alive && EnemyNear(1),Alive)
v = 51
value = 0

[State -1, 敵が２人かつ前方のみ]
Type = VarSet
triggerall = NumEnemy = 2
triggerall = EnemyNear(0),Alive
triggerall = EnemyNear(1),Alive
trigger1 = ifelse(facing = 1,EnemyNear(0),Pos X - Pos X > 0,EnemyNear(0),Pos X - Pos X < 0)
trigger1 = ifelse(facing = 1,EnemyNear(1),Pos X - Pos X > 0,EnemyNear(1),Pos X - Pos X < 0)
v = 51
value = 1

[State -1, 自分、パートナー、敵、敵]
Type = VarSet
triggerall = NumEnemy = 2
triggerall = NumPartner
triggerall = EnemyNear(0),Alive
triggerall = EnemyNear(1),Alive
triggerall = Partner,Alive
trigger1 = ifelse(facing = 1,EnemyNear(0),Pos X - Pos X > 0,EnemyNear(0),Pos X - Pos X < 0)
trigger1 = ifelse(facing = 1,EnemyNear(1),Pos X - Pos X > 0,EnemyNear(1),Pos X - Pos X < 0)
trigger1 = ifelse(facing = 1,EnemyNear(0),Pos X - Partner,Pos X > 0,EnemyNear(0),Pos X - Partner,Pos X < 0)
trigger1 = ifelse(facing = 1,EnemyNear(1),Pos X - Partner,Pos X > 0,EnemyNear(1),Pos X - Partner,Pos X < 0)
v = 51
value = 2

[State -1, 自分、敵、パートナー、敵]
Type = VarSet
triggerall = NumEnemy = 2
triggerall = NumPartner
triggerall = EnemyNear(0),Alive
triggerall = EnemyNear(1),Alive
triggerall = Partner,Alive
trigger1 = ifelse(facing = 1,EnemyNear(0),Pos X - Pos X > 0,EnemyNear(0),Pos X - Pos X < 0)
trigger1 = ifelse(facing = 1,EnemyNear(1),Pos X - Pos X > 0,EnemyNear(1),Pos X - Pos X < 0)
trigger1 = ifelse(facing = 1,EnemyNear(0),Pos X - Partner,Pos X < 0,EnemyNear(0),Pos X - Partner,Pos X > 0)
trigger1 = ifelse(facing = 1,EnemyNear(1),Pos X - Partner,Pos X > 0,EnemyNear(1),Pos X - Partner,Pos X < 0)
v = 51
value = 3

[State -1, 自分、敵、敵、パートナー]
Type = VarSet
triggerall = NumEnemy = 2
triggerall = NumPartner
triggerall = EnemyNear(0),Alive
triggerall = EnemyNear(1),Alive
triggerall = Partner,Alive
trigger1 = ifelse(facing = 1,EnemyNear(0),Pos X - Pos X > 0,EnemyNear(0),Pos X - Pos X < 0)
trigger1 = ifelse(facing = 1,EnemyNear(1),Pos X - Pos X > 0,EnemyNear(1),Pos X - Pos X < 0)
trigger1 = ifelse(facing = 1,EnemyNear(0),Pos X - Partner,Pos X < 0,EnemyNear(0),Pos X - Partner,Pos X > 0)
trigger1 = ifelse(facing = 1,EnemyNear(1),Pos X - Partner,Pos X < 0,EnemyNear(1),Pos X - Partner,Pos X > 0)
v = 51
value = 4

[State -1, 背後に敵有り]
Type = VarSet
triggerall = NumEnemy = 2
triggerall = EnemyNear(0),Alive
triggerall = EnemyNear(1),Alive
trigger1 = ifelse(facing = 1,EnemyNear(0),Pos X - Pos X < 0,EnemyNear(0),Pos X - Pos X > 0)
trigger2 = ifelse(facing = 1,EnemyNear(1),Pos X - Pos X < 0,EnemyNear(1),Pos X - Pos X > 0)
v = 51
value = 5

;---------------------------------------------------------------------------
[State -1, パートナー不在]
Type = VarSet
triggerall = TeamMode = Simul
trigger1 = !NumPartner
trigger2 = !Partner,Alive
v = 52
value = 0

[State -1, パートナー後衛]
Type = VarSet
triggerall = TeamMode = Simul
triggerall = NumPartner
triggerall = Partner,Alive
trigger1 = ifelse(facing = 1,Partner,Pos X - Pos X < 0,Partner,Pos X - Pos X > 0)
v = 52
value = 1

[State -1, パートナー前衛]
Type = VarSet
triggerall = TeamMode = Simul
triggerall = NumPartner
triggerall = Partner,Alive
trigger1 = ifelse(facing = 1,Partner,Pos X - Pos X > 0,Partner,Pos X - Pos X < 0)
v = 52
value = 2

[State -1, パートナー被ダメージ]
Type = VarSet
triggerall = TeamMode = Simul
triggerall = NumPartner
triggerall = Partner,Alive
triggerall = Partner,MoveType = H
triggerall = ifelse(facing = 1,Partner,Pos X - Pos X > 0,Partner,Pos X - Pos X < 0)
trigger1 = Partner,StateNo = [5000,5100)
trigger2 = Partner,StateNo = [120,159]
v = 52
value = 3

[State -1, パートナー攻撃中]
Type = VarSet
triggerall = TeamMode = Simul
triggerall = NumPartner
triggerall = Partner,Alive
triggerall = Partner,MoveType = A
triggerall = Partner,MoveType != H
triggerall = EnemyNear(var(58)),MoveType = H
triggerall = ifelse(facing = 1,Partner,Pos X - Pos X > 0,Partner,Pos X - Pos X < 0)
trigger1 = EnemyNear(var(58)),StateNo = [5000,5100)
v = 52
value = 4

[State -1, パートナー被ステート奪取]
Type = VarSet
triggerall = TeamMode = Simul
triggerall = NumPartner
triggerall = Partner,Alive
triggerall = Partner,MoveType = H
triggerall = ifelse(facing = 1,Partner,Pos X - Pos X > 0,Partner,Pos X - Pos X < 0)
trigger1 = Partner,StateNo != [5000,5500]
trigger1 = Partner,StateNo != [120,159]
v = 52
value = 5

[State -1, パートナーステート奪取]
Type = VarSet
triggerall = TeamMode = Simul
triggerall = NumPartner
triggerall = Partner,Alive
triggerall =(Partner,StateNo = [2000,4999]) || Partner,StateNo > 5500
trigger1 = EnemyNear(var(58)),MoveType = H
trigger1 = EnemyNear(var(58)),StateNo != [5000,5500]
trigger1 = EnemyNear(var(58)),StateNo != [120,159]
v = 52
value = 6

;===========================================================================
; 背後に敵あり
;===========================================================================
[State -1, K投げ タッグ 後ろへ投げ]
type = ChangeState
value = 900
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = var(51) = 5
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 600 || var(57) >= 9
triggerall = StateType != A
triggerall = P2BodyDist X = [-5,15]
triggerall = EnemyNear(var(58)),MoveType != H
triggerall = EnemyNear(var(58)),StateType = S || EnemyNear(var(58)),StateType = C
triggerall = EnemyNear(var(58)),StateNo != [5100,5299]
trigger1 = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])

[State -1, 瞬歩(後) タッグ 背後取られた場合]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = var(51) = 5
triggerall = var(52) >= 60 && BackEdgeBodyDist >= 20
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = StateType != A
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = ifelse(facing = 1,(EnemyNear(0),Pos X - Pos X = [-100,0]),(EnemyNear(0),Pos X - Pos X = [0,100]))
trigger1 = EnemyNear(0),BackEdgeBodyDist >= 40
trigger1 = EnemyNear(0),facing = facing
trigger1 = var(23) := 7
trigger2 = ifelse(facing = 1,(EnemyNear(1),Pos X - Pos X = [-100,0]),(EnemyNear(1),Pos X - Pos X = [0,100]))
trigger2 = EnemyNear(1),BackEdgeBodyDist >= 40
trigger2 = EnemyNear(1),facing = facing
trigger2 = var(23) := 7

[State -1, ガードキャンセル瞬歩(後) タッグ 背後取られた場合]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = var(51) = 5
triggerall = var(52) >= 120 && BackEdgeBodyDist >= 20
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 600 || var(57) >= 9
triggerall = StateType != A
triggerall = StateNo = [150,151]
trigger1 = ifelse(facing = 1,(EnemyNear(0),Pos X - Pos X = [-100,0]),(EnemyNear(0),Pos X - Pos X = [0,100]))
trigger1 = EnemyNear(0),BackEdgeBodyDist >= 40
trigger1 = EnemyNear(0),facing = facing
trigger1 = var(23) := 7
trigger2 = ifelse(facing = 1,(EnemyNear(1),Pos X - Pos X = [-100,0]),(EnemyNear(1),Pos X - Pos X = [0,100]))
trigger2 = EnemyNear(1),BackEdgeBodyDist >= 40
trigger2 = EnemyNear(1),facing = facing
trigger2 = var(23) := 7

;===========================================================================
; 敵が２人かつ前方のみ
;===========================================================================

;===========================================================================
; 他
;===========================================================================
;弱飛ばすぜ？
[State -1, L SP1]
type = ChangeState
value = 1500
TriggerAll = var(59) >= 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(15) = 1
triggerall = var(39) = 0
TriggerAll = var(52) = [2,3]
TriggerAll = var(51) < 5
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 100
TriggerAll = StateType != A
TriggerAll = enemynear(var(58)),statetype != A
TriggerAll = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
Trigger1 = P2BodyDist X >= 200

;中大波斬　タッグ
[State -1, S Rock]
type = ChangeState
value = 1410
triggerall = var(59) >= 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = var(52) = [2,3]
triggerall = var(51) < 5
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 100
triggerall = StateType != A
triggerall = enemynear(var(58)),statetype != A
triggerall = !numhelper(1405)
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X >= 200

;弱牙斬
[State -1, A GAZAN]
type = ChangeState
value = 1200
triggerall = var(59) >= 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = var(52) = 4
triggerall = var(51) < 5
triggerall = var(12) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = EnemyNear(var(58)),MoveType = H
triggerall = EnemyNear(var(58)),StateType = A
triggerall = EnemyNear(var(58)),StateNo != [120,159]
triggerall = EnemyNear(var(58)),StateNo != [5100,5299]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist x = [-10+floor(8*(enemynear(var(58)),vel x)),floor((100*const(size.xscale))-20)+floor(8*(enemynear(var(58)),vel x))]
trigger1 = p2bodydist y = [-100-floor(8*(enemynear(var(58)),vel y)+(8*(8+1)/2)*fvar(20)),0-floor(8*(enemynear(var(58)),vel y)+(8*(8+1)/2)*fvar(20))]

;しゃがみ強攻撃 タッグ対空拾い
[State -1, Crouching Strong Attack]
type = ChangeState
value = 420
triggerall = var(59) >= 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = var(52) = 4
triggerall = var(51) < 5
triggerall = var(12) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = EnemyNear(var(58)),MoveType = H
triggerall = EnemyNear(var(58)),StateType = A
triggerall = EnemyNear(var(58)),StateNo != [120,159]
triggerall = EnemyNear(var(58)),StateNo != [5100,5299]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist x = [0+floor(14*(enemynear(var(58)),vel x)),60+floor(14*(enemynear(var(58)),vel x))]
trigger1 = p2bodydist y = [-120-floor(14*(enemynear(var(58)),vel y)+(14*(14+1)/2)*fvar(20)),0-floor(14*(enemynear(var(58)),vel y)+(14*(14+1)/2)*fvar(20))]

;===========================================================================
[State -1, ダッシュ タッグ]
type = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 600 || var(57) > 9
triggerall = StateType != A
triggerall =!Enemy,NumProj
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
triggerall = P2BodyDist X > 140
trigger1 = var(52) = [2,4]
trigger1 = EnemyNear(var(58)),facing = facing

;===========================================================================
; 砲台モード … 体力30％以下・パートナーの半分以下、パートナー被ステート奪取時
;===========================================================================
;弱大波斬
[State -1, L Rock]
type = ChangeState
value = 1400
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = var(52)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 600 || var(57) > 9
triggerall = StateType != A
triggerall =!InGuardDist || EnemyNear(var(58)),facing = facing || var(52) = 5
triggerall =!numhelper(1400)
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 =(100*life/lifeMax) <= 33
trigger1 = Life*2 < Partner,Life
trigger1 = Random <= (LifeMax - Life)
trigger1 = var(51) < 5
trigger1 = var(52) > 1 || BackEdgeBodyDist < 40
trigger2 = P2BodyDist X > 60
trigger2 = var(52) = 5 || var(52) = 6 && Power = PowerMax

;中大波斬
[State -1, S Rock]
type = ChangeState
value = 1410
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = var(52)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 600 || var(57) > 9
triggerall = StateType != A
triggerall =!InGuardDist || EnemyNear(var(58)),facing = facing || var(52) = 5
triggerall =!numhelper(1410)
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 =(100*life/lifeMax) <= 33
trigger1 = Life*2 < Partner,Life
trigger1 = Random <= (LifeMax - Life)
trigger1 = var(51) < 5
trigger1 = var(52) > 1 || BackEdgeBodyDist < 40
trigger2 = P2BodyDist X > 60
trigger2 = var(52) = 5 || var(52) = 6 && Power = PowerMax

[State -1, バックステップ、瞬歩(後) 砲台占位]
type = ChangeState
value = ifelse(var(51) = 5,800,105)
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = var(52)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 600 || var(57) > 9
triggerall = StateType != A
triggerall = BackEdgeBodyDist >= 40
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = EnemyNear(var(58)),MoveType != H
trigger1 =(100*life/lifeMax) <= 33
trigger1 = Life*2 < Partner,Life
trigger1 = Random <= (LifeMax - Life)
trigger1 = var(51) < 5
trigger1 = var(52) = 1 && BackEdgeBodyDist >= 40
trigger1 = var(23) := 7
trigger2 = P2BodyDist X <= 60
trigger2 = EnemyNear(var(58)),StateNo >= 1000 
trigger2 = var(52) = 5
trigger2 = var(23) := 7

;===========================================================================
; 鏖殺避け
;===========================================================================
[State -1, 退避 鏖殺避け]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = var(51) = 5 || var(52) = 1
triggerall = NumPartner
triggerall = P3Name="dragon"&&Partner,AuthorName="kayui uma"
triggerall = Partner,StateNo = 2002 || Partner,StateNo = 2102
triggerall = Partner,AnimTime < -3
triggerall = StateType != A
trigger1 = Ctrl || StateNo = 11 || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = var(23) := 7

[State -1, 待機 鏖殺避け]
type = ChangeState
value = 11
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = var(13) >= 1
triggerall = var(52) > 1
triggerall = var(51) < 5
triggerall = NumPartner
triggerall = P3Name="dragon"&&Partner,AuthorName="kayui uma"
triggerall = Partner,StateNo = 2002 || Partner,StateNo = 2102
triggerall = Partner,AnimTime < -3
triggerall = StateType != A
triggerall =!InGuardDist
trigger1 = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
Ctrl = 0

[State -1, 瞬歩(後) 鏖殺避け]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = var(52)
triggerall = P3Name = "dragon" && Partner,AuthorName = "kayui uma"
triggerall = Partner,StateNo = 2002 || Partner,StateNo = 2102
triggerall = Partner,AnimTime >= -3
triggerall = StateType != A
trigger1 = Ctrl || StateNo = 11 || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = var(23) := 7

[State -1, ガードキャンセル瞬歩(後) 鏖殺避け]
Type  = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = var(52)
triggerall = P3Name = "dragon" && Partner,AuthorName = "kayui uma"
triggerall = Partner,StateNo = 2002 || Partner,StateNo = 2102
triggerall = Partner,AnimTime >= -3
triggerall = StateType != A
trigger1 = StateNo = [150,151]
trigger1 = var(23) := 7

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;飛び道具対策
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;瞬歩
[State -1, Shunpo]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = enemynear(var(58)),MoveType != H
triggerall = InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [105,106]) || (stateno = [110,111]) || (stateno = [115,116]) || (stateno = [120,149]) || stateno = 801 && var(22) > 22
trigger1 = (Enemy,NumHelper > 0&&Enemy,NumHelper > Helper(32000),var(1)) || Enemy,Numproj != 0
trigger1 = var(45) = 1
trigger1 = var(23) := 3

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;瞬歩→攻撃
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;しゃがみ弱攻撃
[State -1, Crouching Light Attack]
type = ChangeState
value = 400+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (600 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = P2BodyDist X <= 40+(10*var(39))
triggerall = P2Dist X > -100
triggerall =!enemy,numproj
triggerall =!Inguarddist || P2Dist X < -40 || enemynear(var(58)),animtime > -10
triggerall = (stateno = [800,801]) && (var(23) = [2,4])
trigger1 = P2Dist X = [-80,40]
trigger2 = P2BodyDist X = [-10,floor(((60+(15*var(39)))*const(size.xscale))-20)]
trigger2 = enemynear(var(58)),movetype != H
trigger3 = P2BodyDist X <= 5
trigger3 = enemynear(var(58)),BackEdgeBodyDist < 10

;しゃがみ中攻撃
[State -1, Crouching Middle Attack]
type = ChangeState
value = 410+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (600 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall =!enemy,numproj
triggerall =!Inguarddist
triggerall = enemynear(var(58)),animtime = [-14,-10]
triggerall = (stateno = [800,801]) && (var(23) = [2,4])
trigger1 = P2BodyDist X = [floor(40*const(size.xscale)),floor((125*const(size.xscale))-20)]
trigger1 = enemynear(var(58)),movetype != H

;ジャンプ強攻撃(スカし中段)
[State -1, Jump Strong Attack]
type = ChangeState
value = 620+(6000*var(39))
triggerall = var(59) = 1
triggerall = (var(57) = [1,6]) && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 100
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != A 
triggerall = enemynear(var(58)),statetype != L
triggerall =!enemy,numproj
triggerall =!Inguarddist
triggerall = (stateno = [800,801]) && (var(23) = [2,4])
trigger1 = P2Dist X = [-120,60]
trigger1 = var(23) = 2 && Pos Y > -25
trigger1 = enemynear(var(58)),movetype != H || enemynear(var(58)),stateno = [120,159]

;ジャンプ中攻撃
[State -1, Jump Middle Attack]
type = ChangeState
value = 610+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (400 + (var(57) * 100))
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall =!enemy,numproj
triggerall =!Inguarddist || enemynear(var(58)),animtime > -10
triggerall = (stateno = [800,801]) && (var(23) = [2,4])
trigger1 = var(23) = 2 || var(23) = 3
trigger1 = enemynear(var(58)),statetype != A
trigger1 = enemynear(var(58)),movetype = H
trigger1 = P2Dist X = [-120,60]
trigger1 = var(23) = 2 && Pos Y < -50 || var(23) = 3
trigger2 = var(23) = 2
trigger2 = enemynear(var(58)),statetype != A
trigger2 = enemynear(var(58)),movetype != H || enemynear(var(58)),stateno = [120,159]
trigger2 = P2Dist X = [-120,60]
trigger2 = Pos Y < -25
trigger3 = var(23) != 2
trigger3 = enemynear(var(58)),statetype != A
trigger3 = enemynear(var(58)),movetype != H
trigger3 = P2BodyDist X = [-40,floor((105*const(size.xscale))-20)+floor(7*(EnemyNear(Var(58)),vel X))]
trigger3 = Pos Y < -20
trigger4 = enemynear(var(58)),statetype = A
trigger4 = P2BodyDist X = [-40,floor((105*const(size.xscale))-20)+floor(7*(EnemyNear(Var(58)),vel X))]
trigger4 = enemynear(var(58)),Pos Y - Pos Y = [-60,60]
trigger4 = Pos Y < -20

;ジャンプ強攻撃
[State -1, Jump Strong Attack]
type = ChangeState
value = 620+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 600
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall =!enemy,numproj
triggerall =!Inguarddist
triggerall = Pos Y < -40
triggerall = (stateno = [800,801]) && (var(23) = [2,4])
trigger1 = P2BodyDist X = [-20,floor((90*const(size.xscale))-20)+floor(9*(EnemyNear(Var(58)),vel X))]
trigger1 = enemynear(var(58)),Pos Y - Pos Y = [-120,-40]
trigger1 = enemynear(var(58)),StateType = A

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;飛び道具での反撃
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;RF飛ばすぜ？
[State -1, RF SP1]
type = ChangeState
value = 1520
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(15) = 1
triggerall = var(39) = 0
triggerall = power >= 1000   ;Abstract Reordered: EX costs 1 bar
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56)) || var(54)
triggerall = var(11) >= 3 && Random <= 200 || var(11) = 2 && Random <= 20
triggerall = statetype != A 
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = A
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X >= 160
trigger1 = enemynear(var(58)),movetype = A
trigger1 = enemynear(var(58)),AnimTime <= -15

;弱飛ばすぜ？
[State -1, L SP1]
type = ChangeState
value = 1500
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(15) = 1
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56)) || var(54)
triggerall = Random <= 600
triggerall = statetype != A 
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = A
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X >= 160
trigger1 = enemynear(var(58)),movetype = A
trigger1 = enemynear(var(58)),AnimTime <= -25

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;隙突き
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;中牙斬
[State -1, B GAZAN]
type = ChangeState
value = 1210
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((40 + (var(57) * 10)) * var(56))
triggerall = statetype != A
triggerall = enemynear(var(58)),ctrl = 0
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = A
triggerall = enemynear(var(58)),stateno >= 200
triggerall = (prevstateno = [130,155]) || (prevstateno = [5000,5999])
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [-5,floor((100*const(size.xscale))-20)]
trigger1 = enemynear(var(58)),statetype != A
trigger1 = enemynear(var(58)),animtime <= -8
trigger2 = p2bodydist x = [-10+floor(8*(enemynear(var(58)),vel x)),floor((100*const(size.xscale))-20)+floor(8*(enemynear(var(58)),vel x))]
trigger2 = p2bodydist y = [-100-floor(8*(enemynear(var(58)),vel y)+(8*(8+1)/2)*fvar(20)),0-floor(8*(enemynear(var(58)),vel y)+(8*(8+1)/2)*fvar(20))]
trigger2 = enemynear(var(58)),StateType = A

;しゃがみ弱攻撃
[State -1, Crouching Light Attack]
type = ChangeState
value = 400+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56)) || var(54)
triggerall = Random <= 600 || var(57) >= 9 || var(54)
triggerall = statetype != A
triggerall = enemynear(var(58)),ctrl = 0
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno >= 200
triggerall = enemynear(var(58)),animtime <= -6
triggerall =!enemy,numproj
triggerall =!InGuardDist || enemynear(var(58)),facing = facing || (prevstateno = [130,155])
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [-10,floor(((60+(15*var(39)))*const(size.xscale))-20)]

;ダッシュ(隙突き)
[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56)) || var(54)
triggerall = statetype != A
triggerall = P2Dist X > 0
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [120,149])
trigger1 = P2BodyDist X > 120 || enemynear(var(58)),facing = facing
trigger1 = enemynear(var(58)),statetype = A
trigger1 = enemynear(var(58)),MoveType = A
trigger1 =!enemynear(var(58)),HitDefAttr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
trigger1 = enemynear(var(58)),Time >= 60
trigger2 = enemynear(var(58)),MoveType != H
trigger2 = enemynear(var(58)),StateType = A
trigger2 =!enemynear(var(58)),Ctrl
trigger2 = enemynear(var(58)),facing = facing

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;切り返し
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;Damage Cancel
[State -1, Damage Cancel]
type = ChangeState
value = 850
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = (helper(40000),var(2) = 0) && power >= 1000 || (helper(40000),var(2) = 1) && power >= 2000
triggerall = alive
triggerall = movetype = H
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = enemynear(var(58)),MoveType = A
triggerall =!enemynear(var(58)),Ctrl
triggerall = enemynear(var(58)),StateNo != [0,22]
triggerall = enemynear(var(58)),StateNo != [50,52]
triggerall = enemynear(var(58)),StateNo != [100,119]
triggerall = p2bodydist X = [-60,60]
triggerall = enemynear(var(58)),Pos Y - Pos Y = [-60,60]
triggerall = (stateno = [5000,5040]) || (stateno = [5070,5081]) || (stateno = 5050 && time < 10)
triggerall = var(14) = 1
trigger1 = helper(40000),var(2) = 1
trigger1 = life < 400
trigger1 = Random <= 10+(life<100)*100
trigger2 = helper(40000),var(2) = 0
trigger2 = Random <= 50+(life<200)*200

;瞬歩
[State -1, Shunpo]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = enemynear(var(58)),time >= 50-var(56)*5 || (!time && var(56) > 7) || Random <= var(57)*var(56) || var(56) >= 10 || var(54)
triggerall = Random <= ((20 + (var(57) * 10)) * var(56)) || var(54)
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),StateNo >= 200
triggerall = (helper(40000),var(1) = 0) || (helper(40000),var(1) = 1) && !enemynear(var(58)),HitDefAttr = SCA, AT
triggerall = InGuardDist || enemy,numproj
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [105,106]) || (stateno = [110,111]) || (stateno = [115,116]) || (stateno = [120,149])
trigger1 = P2BodyDist X <= 50 && enemynear(var(58)),AnimTime <= -8
trigger1 = var(23) := 3
trigger2 = P2BodyDist X <= 75 && enemynear(var(58)),AnimTime <= -12
trigger2 = var(23) := 3
trigger3 = P2BodyDist X <= 100 && enemynear(var(58)),AnimTime <= -16
trigger3 = var(23) := 3
trigger4 = P2BodyDist X <= 150 && enemynear(var(58)),AnimTime <= -20
trigger4 = var(23) := 3
trigger5 = P2BodyDist X <= 175 && enemynear(var(58)),AnimTime <= -24
trigger5 = var(23) := 3
trigger6 = P2BodyDist X <= 200 && enemynear(var(58)),AnimTime <= -28
trigger6 = var(23) := 3
trigger7 = P2BodyDist X > 200 && enemynear(var(58)),AnimTime <= -32
trigger7 = var(23) := 3

;一閃突
[State -1, Issen]
type = ChangeState
value = 2100
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = power >= 1000
triggerall = enemynear(var(58)),time >= 50-var(56)*5 || (!time && var(56) > 7) || Random <= var(57)*var(56) || var(57) >= 5 && p2life <= 180 || var(56) >= 10 || var(54)
triggerall = Random <= ((20 + (var(57) * 10)) * var(56)) || var(54)
triggerall = Random <= 600 || var(57) >= 5 && p2life <= 180 || var(57) >= 9 || var(54)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),MoveType = A
triggerall = enemynear(var(58)),StateNo >= 200
triggerall = enemynear(var(58)),facing != facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149]) || (stateno = [800,801])
trigger1 = (stateno != [800,801])
trigger1 = p2bodydist X = [-60,80]
trigger1 = enemynear(var(58)),statetype != A
trigger1 = enemynear(var(58)),animtime <= -8
trigger2 = p2bodydist x = [-60+floor(8*(enemynear(var(58)),vel x)),80+floor(8*(enemynear(var(58)),vel x))]
trigger2 = enemynear(var(58)),StateType = A

;中牙斬
[State -1, B GAZAN]
type = ChangeState
value = 1210
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = enemynear(var(58)),time >= 50-var(56)*5 || (!time && var(56) > 7) || Random <= var(57)*var(56) || var(56) >= 10 || var(54)
triggerall = Random <= ((20 + (var(57) * 10)) * var(56)) || var(54)
triggerall = Random <= 600 || var(57) >= 9 || var(54)
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),MoveType = A
triggerall = enemynear(var(58)),facing != facing
triggerall = InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 111 || stateno = 116 || (stateno = [120,149]) || (stateno = [800,801])
trigger1 = (stateno != [800,801])
trigger1 = p2bodydist X = [-5,floor((100*const(size.xscale))-20)]
trigger1 = enemynear(var(58)),statetype != A
trigger1 = enemynear(var(58)),animtime <= -8
trigger1 = statetype != A || statetype = A && Pos Y > -40
trigger2 = p2bodydist x = [-10+floor(8*(enemynear(var(58)),vel x)),floor((100*const(size.xscale))-20)+floor(8*(enemynear(var(58)),vel x))]
trigger2 = p2bodydist y = [-100-floor(8*(enemynear(var(58)),vel y)+(8*(8+1)/2)*fvar(20)),0-floor(8*(enemynear(var(58)),vel y)+(8*(8+1)/2)*fvar(20))]
trigger2 = enemynear(var(58)),StateType = A

;瞬歩
[State -1, Shunpo]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = enemynear(var(58)),time >= 50-var(56)*5 || (!time && var(56) > 7) || Random <= var(57)*var(56) || var(56) >= 10 || var(54)
triggerall = Random <= ((20 + (var(57) * 10)) * var(56)) || var(54)
triggerall = Random <= 400
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = A
triggerall =!enemynear(var(58)),HitDefAttr = SCA, NT, ST, HT
triggerall = enemynear(var(58)),facing != facing
triggerall = BackEdgeBodyDist >= 40
triggerall = InGuardDist
triggerall =!enemy,numproj
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [25,100]
trigger1 = enemynear(var(58)),animtime <= -12
trigger1 = var(23) := 7

;バックステップ(対投げ用)
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56)) || var(54)
triggerall = Random <= 250 || var(57) >= 9 || var(54)
triggerall = StateType != A
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [-20,80]
trigger1 = enemynear(var(58)),statetype != A
trigger1 = enemynear(var(58)),HitDefAttr = SC,NT,ST,HT

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;無敵技ぶっぱ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;瞬歩
[State -1, Shunpo]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = var(57) = [1,4]
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = Random <= 1000/var(57)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),facing != facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [-5,100]
trigger1 = Random <= 100
trigger1 = var(23) := 3
trigger2 = p2bodydist X > 100
trigger2 = Random <= 50
trigger2 = var(23) := 3

;中牙斬
[State -1, B GAZAN]
type = ChangeState
value = 1210
triggerall = var(59)
triggerall = var(57) = [1,4]
triggerall = var(39) = 0
triggerall = Random <= 1000/var(57)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),facing != facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = p2bodydist X = [-5,50]
trigger1 = Random <= 100

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;防御(ガード等)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ガード
[State -1, Guard]
type = ChangeState
value = 120
triggerall = var(59)
triggerall = var(39) = 0
triggerall = stateno != [120,159]
triggerall = ctrl || stateno = 0 || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = inguarddist
trigger1 = Random <= (200 + (var(57) * 100)) && Random <= 600 || var(57) > 4
trigger2 = inguarddist
trigger2 = p2bodydist x > 90 || enemynear(var(58)),time > 50
trigger2 = Random <= var(57) * 150
trigger3 = inguarddist
trigger3 = enemynear(var(58)),numhelper > 0 || enemy,numproj > 0
trigger4 = var(57) > 4
trigger4 = enemynear(var(58)),movetype = A
trigger4 = !enemynear(var(58)),hitdefattr = SCA, NT, ST, HT
trigger4 = stateno != 100 || stateno = 100 && p2dist y > -45 || numenemy >= 2
trigger4 = p2bodydist x < 0
trigger4 = p2dist x > 0 || p2dist x < 0
trigger5 = var(57) > 4
trigger5 = inguarddist
trigger5 = numenemy > 1
trigger5 = enemy(0),numhelper+enemy(1),numhelper > 0 || enemy(0),numproj+enemy(1),numproj > 0
trigger6 = var(57) > 4
trigger6 = numhelper(31000+id)
trigger6 = helper(31000+id),inguarddist
trigger6 = !enemynear(var(58)),hitdefattr = SCA, NT, ST, HT
;trigger6 = numenemy >= 2

;ダウン回避(空中)
[State -1, HITFall_AIRRECOVER]
type = ChangeState
value = 5210
triggerall = var(59)
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56)) || var(54)
triggerall = Random <= 800
triggerall = StateNo = 5050
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Vel Y > 0
trigger1 = Pos Y < -20 && Pos Y > -80
trigger1 = P2Bodydist X = [-60,60]
trigger1 = P2Bodydist Y = [-40,40]
trigger1 = enemynear(var(58)),MoveType = A
trigger1 = enemynear(var(58)),Time < 15

;ガードキャンセル瞬歩
[State -1, GCShunpo]
type = ChangeState
value = 800
triggerall = var(59)
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 250 || helper(40000),var(2) = 0
triggerall = stateno = 150 || stateno = 152 || stateno = 154
triggerall = (helper(40000),var(1) = 0) || (helper(40000),var(1) = 1) && !enemynear(var(58)),HitDefAttr = SCA, AT
triggerall = P2BodyDist X = [0,150]
triggerall = enemynear(var(58)),StateNo >= 200
triggerall = enemynear(var(58)),MoveType = A
trigger1 = enemynear(var(58)),statetype != A
trigger1 = P2BodyDist X <= 50 && enemynear(var(58)),AnimTime <= -8
trigger1 = var(23) := 3
trigger2 = enemynear(var(58)),statetype != A
trigger2 = P2BodyDist X <= 75 && enemynear(var(58)),AnimTime <= -12
trigger2 = var(23) := 3
trigger3 = enemynear(var(58)),statetype != A
trigger3 = P2BodyDist X <= 100 && enemynear(var(58)),AnimTime <= -16
trigger3 = var(23) := 3
trigger4 = enemynear(var(58)),statetype != A
trigger4 = P2BodyDist X <= 150 && enemynear(var(58)),AnimTime <= -20
trigger4 = var(23) := 3
trigger5 = enemynear(var(58)),statetype != A
trigger5 = P2BodyDist X <= 175 && enemynear(var(58)),AnimTime <= -24
trigger5 = var(23) := 3
trigger6 = enemynear(var(58)),statetype != A
trigger6 = P2BodyDist X <= 200 && enemynear(var(58)),AnimTime <= -28
trigger6 = var(23) := 3
trigger7 = enemynear(var(58)),statetype != A
trigger7 = P2BodyDist X > 200 && enemynear(var(58)),AnimTime <= -32
trigger7 = var(23) := 3
trigger8 = enemynear(var(58)),statetype = A
trigger8 = p2bodydist y = [-100-floor(10*(enemynear(var(58)),vel y)+(10*(10+1)/2)*fvar(20)),0-floor(10*(enemynear(var(58)),vel y)+(10*(10+1)/2)*fvar(20))]
trigger8 = var(23) := 3

;中牙斬
[State -1, B GAZAN]
type = ChangeState
value = 1210
triggerall = var(59)
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = helper(40000),var(2) = 1 && power >= 1000 || helper(40000),var(2) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = helper(40000),var(2) = 0
triggerall = stateno = 150 || stateno = 152 || stateno = 154
triggerall = enemynear(var(58)),StateNo >= 200
triggerall = enemynear(var(58)),MoveType = A
trigger1 = p2bodydist X = [-5,100]
trigger1 = enemynear(var(58)),statetype != A
trigger1 = enemynear(var(58)),animtime <= -8
trigger1 = statetype != A || statetype = A && Pos Y > -40
trigger2 = p2bodydist x = [-10+floor(8*(enemynear(var(58)),vel x)),floor((100*const(size.xscale))-20)+floor(8*(enemynear(var(58)),vel x))]
trigger2 = p2bodydist y = [-100-floor(8*(enemynear(var(58)),vel y)+(8*(8+1)/2)*fvar(20)),0-floor(8*(enemynear(var(58)),vel y)+(8*(8+1)/2)*fvar(20))]
trigger2 = enemynear(var(58)),StateType = A

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;連続技
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;---------------------------------------------------------------------------
;優先項目
;---------------------------------------------------------------------------
;ジャンプキャンセル(ガードされたときのフォロー)
[State -1, Jump Cancel]
type = ChangeState
value = 37
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(3) > 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 400
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = backedgebodydist > 20
triggerall = moveguarded
trigger1 = stateno = 600 && movecontact = [1,6]
trigger2 = stateno = 610 && movecontact = [1,6]
trigger3 = stateno = 620 && movecontact = [1,6]

;しゃがみ弱攻撃
[State -1, Crouching Light Attack]
type = ChangeState
value = 400+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = stateno = 99
trigger1 = P2BodyDist X = [-15,5]

;RF円月斬
[State -1, RF SP2]
type = ChangeState
value = 1120
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(15) = 0
triggerall = var(39) = 0
triggerall = power >= 3000
triggerall = p2life > 200
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (600 + (var(57) * 100))
triggerall = var(13) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = movehit = [1,6]
trigger1 = stateno = 220 && movecontact = [1,6]

;立ち強攻撃
[State -1, Standing Strong Attack]
type = ChangeState
value = 220
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = power >= 3000
triggerall = p2life > 200
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (600 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = P2BodyDist X = [-10,floor((105*const(size.xscale))-30)]
triggerall = movehit = [1,6]
trigger1 = stateno = 210 && movecontact = [1,6]
trigger2 = stateno = 410 && movecontact = [1,6]

;-----------------------------------------------------------------------------
;ガード崩し連携
;-----------------------------------------------------------------------------
;瞬歩
[State -1, Shunpo]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),statetype = C
triggerall = enemynear(var(58)),movetype = H
triggerall = P2BodyDist X = [-20,80]
triggerall = time > 1
triggerall = moveguarded
trigger1 = var(1) = 1
trigger1 = var(23) := 2

;しゃがみ中攻撃
[State -1, Crouching Middle Attack]
type = ChangeState
value = 410+(6000*var(39))
triggerall = var(59) = 1
triggerall = (var(57) = [1,6]) && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 400
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),statetype = S
triggerall = enemynear(var(58)),movetype = H
triggerall = P2BodyDist X = [-10,floor((125*const(size.xscale))-30)]
triggerall = moveguarded
trigger1 = stateno = 200+(6000*var(39)) && movecontact = [1,6]
trigger2 = stateno = 210+(6000*var(39)) && movecontact = [1,6]

;しゃがみ弱攻撃
[State -1, Crouching Light Attack]
type = ChangeState
value = 400+(6000*var(39))
triggerall = var(59) = 1
triggerall = (var(57) = [1,6]) && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 400
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),statetype = S
triggerall = enemynear(var(58)),movetype = H
triggerall = P2BodyDist X = [-10,floor(((60+(15*var(39)))*const(size.xscale))-30)]
triggerall = moveguarded
trigger1 = stateno = 200+(6000*var(39)) && movecontact = [1,6]

;-----------------------------------------------------------------------------
;瞬歩
;-----------------------------------------------------------------------------
;瞬歩(ガードキャンセル、ブロッキング等への反撃)
[State -1, Shunpo]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = enemynear(var(58)),statetype != L
triggerall = var(1) = 1 || var(1) = 5 || var(1) = 11 || var(1) = 15
triggerall = time > 1
trigger1 = moveguarded = [1,6]
trigger1 = enemynear(var(58)),MoveType = A
trigger1 = var(23) := 3
trigger2 = (movehit = [1,6]) && enemynear(var(58)),MoveType != H
trigger2 = var(23) := 3

;瞬歩(ガードされたときのフォロー)
[State -1, Shunpo]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = enemynear(var(58)),statetype != L
triggerall = backedgebodydist > 20
triggerall = var(1) = 1 || var(1) = 5 || var(1) = 11 || var(1) = 15
triggerall = moveguarded = [1,6]
triggerall = time > 1
trigger1 = statetype != A
trigger1 = Random <= 50 || enemynear(var(58)),MoveType = I
trigger1 = var(23) := 7
trigger2 = statetype = A
trigger2 = Random <= 200 || Vel Y < 0
trigger2 = var(23) := 8

[State -1, Shunpo]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (600 + (var(57) * 100))
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = P2BodyDist X = [-20,120]
triggerall = time > 1
triggerall = movehit = [1,6]
trigger1 = stateno = 610 && movecontact = [1,6]
trigger1 = p2bodydist X > 60 || Vel Y < 0
trigger1 = var(23) := 3
trigger2 = stateno = 620 && movecontact = [1,6]
trigger2 = p2bodydist X > 60 || Vel Y < 0
trigger2 = var(23) := 3

;瞬歩
[State -1, Shunpo]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (600 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = time > 1
triggerall = movehit = [1,6]
trigger1 = stateno = 220 && movecontact = [1,6]
trigger1 = var(23) := 2
trigger2 = stateno = 410 && movecontact = [1,6]
trigger2 = p2bodydist X > 70
trigger2 = var(23) := 2
trigger3 = stateno = 6220 && movecontact = [1,6]
trigger3 = p2bodydist X > 90
trigger3 = var(23) := 2
trigger4 = stateno = 6420 && movecontact = [1,6]
trigger4 = var(23) := 2

;瞬歩
[State -1, Shunpo]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (600 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = enemynear(var(58)),backedgebodydist < 10 || enemynear(var(58)),frontedgebodydist < 10
triggerall = P2BodyDist X = [-10,75]
triggerall = time > 1
triggerall = movehit = [1,6]
trigger1 = stateno = 220 && movecontact = [1,6]
trigger1 = var(23) := 2
trigger2 = stateno = 410 && movecontact = [1,6]
trigger2 = p2bodydist X > 70
trigger2 = var(23) := 2
trigger3 = stateno = 6220 && movecontact = [1,6]
trigger3 = p2bodydist X > 90
trigger3 = var(23) := 2
trigger4 = stateno = 6420 && movecontact = [1,6]
trigger4 = var(23) := 2

;瞬歩
[State -1, Shunpo]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (600 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = time > 1
triggerall = movehit = [1,6]
trigger1 = stateno = 220 && movecontact = [1,6]
trigger1 = var(23) := 3
trigger2 = stateno = 410 && movecontact = [1,6]
trigger2 = p2bodydist X > 70
trigger2 = var(23) := 3
trigger3 = stateno = 6220 && movecontact = [1,6]
trigger3 = p2bodydist X > 90
trigger3 = var(23) := 3
trigger4 = stateno = 6420 && movecontact = [1,6]
trigger4 = var(23) := 3

;-----------------------------------------------------------------------------
;超必殺技
;-----------------------------------------------------------------------------
;！？
[State -1, ]
type = ChangeState
value = 3100
triggerall = var(59) != 0;var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 1
;triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = time > 1
triggerall = movehit
trigger1 = stateno = 7110 && AnimElemTime(5) > 0 && AnimElemTime(6) < 2

;天鎖斬月
[State -1, Bankai]
type = ChangeState
value = 3000
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = power >= 3000
triggerall = var(40) = 0 && var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100)) || stateno = 1120
triggerall = p2life > 200
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = movehit
trigger1 = stateno = 220 && movecontact = [1,6]
trigger2 = stateno = 410 && movecontact = [1,6]
trigger2 = p2bodydist X > 70
trigger3 = stateno = 1100 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 && movehit
trigger4 = stateno = 1110 && AnimElemTime(6) > 0 && AnimElemTime(7) < 0 && movehit
trigger5 = stateno = 1120 && AnimElemTime(9) > 0 && AnimElemTime(10) < 0 && movehit

;月牙天衝
[State -1, GETSUGA]
type = ChangeState
value = 2000
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = power >= 1000
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 400 || p2life <= 100
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = movehit = [1,6]
trigger1 = stateno = 220 && movecontact = [1,6]
trigger2 = stateno = 410 && movecontact = [1,6]
trigger2 = p2bodydist X > 70
trigger3 = stateno = 420 && movecontact = [1,6]
trigger4 = stateno = 1100 && AnimElemTime(5) > 0 && AnimElemTime(6) < 0 && movehit
trigger5 = stateno = 1110 && AnimElemTime(9) > 0 && AnimElemTime(10) < 0 && movehit
trigger6 = stateno = 1120 && AnimElemTime(12) > 0 && AnimElemTime(16) < 0 && movehit

;-----------------------------------------------------------------------------
;地上チェーン
;-----------------------------------------------------------------------------
;ジャンプキャンセル
[State -1, Jump Cancel]
type = ChangeState
value = 36
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(3) > 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = enemynear(var(58)),Pos Y - Pos Y < 0
triggerall = movehit = [1,6]
trigger1 = stateno = 610
trigger2 = stateno = 6620

;ジャンプキャンセル
[State -1, Jump Cancel]
type = ChangeState
value = 31
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = movehit
trigger1 = stateno = 420 && movecontact = [1,6]
trigger2 = stateno = 1120 && AnimElemTime(12) > 0 && AnimElemTime(16) < 0 && movecontact = [1,6]

;しゃがみ強攻撃(エリアル移行技)
[State -1, Crouching Strong Attack]
type = ChangeState
value = 420
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = var(13) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = P2BodyDist X = [-10,floor((90*const(size.xscale))-30)]
triggerall = movehit = [1,6]
trigger1 = stateno = 210 && movecontact = [1,6]
trigger2 = stateno = 410 && movecontact = [1,6]

;---------------------------------------------------------------------------
;立ち中攻撃
[State -1, Stand Middle Attack]
type = ChangeState
value = 210+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (600 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = P2BodyDist X = [-10,floor((105*const(size.xscale))-30)]
triggerall = movecontact = [1,6]
trigger1 = stateno = 200+(6000*var(39)) && movecontact = [1,6]
trigger2 = stateno = 400+(6000*var(39)) && movecontact = [1,6]

;しゃがみ中攻撃
[State -1, Crouching Middle Attack]
type = ChangeState
value = 410+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (600 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = P2BodyDist X = [-10,floor((125*const(size.xscale))-30)]
triggerall = movecontact = [1,6]
trigger1 = stateno = 200+(6000*var(39)) && movecontact = [1,6]
trigger2 = stateno = 210+(6000*var(39)) && movecontact = [1,6]
trigger3 = stateno = 400+(6000*var(39)) && movecontact = [1,6]

;立ち強攻撃
[State -1, Standing Strong Attack]
type = ChangeState
value = 220
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (600 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = P2BodyDist X = [-10,floor((105*const(size.xscale))-30)]
triggerall = movecontact = [1,6]
trigger1 = stateno = 210 && movecontact = [1,6]
trigger2 = stateno = 410 && movecontact = [1,6]

;立ち強攻撃
[State -1, Standing Strong Attack]
type = ChangeState
value = 6220
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (600 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = P2BodyDist X = [-10,105]
triggerall = movecontact = [1,6]
trigger1 = stateno = 6210 && movecontact = [1,6]
trigger2 = stateno = 6410 && movecontact = [1,6]

;しゃがみ強攻撃
[State -1, Crouching Strong Attack]
type = ChangeState
value = 6420
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (600 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = P2BodyDist X = [-10,floor((125*const(size.xscale))-30)]
triggerall = movecontact = [1,6]
trigger1 = stateno = 6210 && movecontact = [1,6]
trigger2 = stateno = 6220 && movecontact = [1,6]
trigger3 = stateno = 6410 && movecontact = [1,6]

;-----------------------------------------------------------------------------
;必殺技
;-----------------------------------------------------------------------------
;必殺技(2)
[State -1, Special2 - Bankai]
type = ChangeState
value = 7100
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = movehit = [1,6]
trigger1 = stateno = 6210 && movecontact = [1,6]
trigger2 = stateno = 6220 && movecontact = [1,6]
trigger3 = stateno = 6410 && movecontact = [1,6]
trigger4 = stateno = 6420 && movecontact = [1,6]

;月牙天衝(黒)
[State -1, GETSUGA - Bankai]
type = ChangeState
value = 7000
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = movehit = [1,6]
trigger1 = stateno = 6210 && movecontact = [1,6]
trigger2 = stateno = 6220 && movecontact = [1,6]
trigger3 = stateno = 6410 && movecontact = [1,6]
trigger4 = stateno = 6420 && movecontact = [1,6]

;弱円月斬
[State -1, L SP2]
type = ChangeState
value = 1100
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(15) = 0
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = movehit = [1,6]
trigger1 = stateno = 210 && movecontact = [1,6]
trigger2 = stateno = 220 && movecontact = [1,6]
trigger3 = stateno = 410 && movecontact = [1,6]

;弱遅えっ！
[State -1, L SP2]
type = ChangeState
value = 1600
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(15) = 1
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = movehit = [1,6]
trigger1 = stateno = 210 && movecontact = [1,6]
trigger2 = stateno = 220 && movecontact = [1,6]
trigger3 = stateno = 410 && movecontact = [1,6]

;弱飛ばすぜ？
[State -1, L SP1]
type = ChangeState
value = 1500
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(15) = 1
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = movehit = [1,6]
trigger1 = stateno = 210 && movecontact = [1,6]
trigger2 = stateno = 220 && movecontact = [1,6]
trigger3 = stateno = 410 && movecontact = [1,6]

;弱斬月
[State -1, L SP1]
type = ChangeState
value = 1000
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(15) = 0
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype = H
triggerall = P2BodyDist X = [-10,80]
triggerall = moveguarded
trigger1 = stateno = 210 && movecontact = [1,6]
trigger2 = stateno = 220 && movecontact = [1,6]
trigger3 = stateno = 410 && movecontact = [1,6]
trigger4 = stateno = 420 && movecontact = [1,6]

;-----------------------------------------------------------------------------
;空中チェーン
;-----------------------------------------------------------------------------
;RF牙斬
[State -1, RF GAZAN]
type = ChangeState
value = 1220
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = var(11) >= 3 && Random <= 80 || var(11) = 2 && Random <= 10
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),MoveType = H
trigger1 = stateno = 610 && movehit = [1,6]

;弱牙斬
[State -1, A GAZAN]
type = ChangeState
value = 1200
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),MoveType = H
trigger1 = stateno = 610 && movehit = [1,6]

;ジャンプ中攻撃
[State -1, Jump Middle Attack]
type = ChangeState
value = 610+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (400 + (var(57) * 100))
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),MoveType = H
trigger1 = stateno = 600+(6000*var(39)) && movecontact = [1,6]

;ジャンプ強攻撃
[State -1, Jump Strong Attack]
type = ChangeState
value = 620+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (400 + (var(57) * 100))
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),MoveType = H
trigger1 = stateno = 610+(6000*var(39)) && movecontact = [1,6]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;起き攻め
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;---------------------------------------------------------------------------
;起き攻め
;---------------------------------------------------------------------------
;RF大波斬
[State -1, RF Rock]
type = ChangeState
value = 1420
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(41) && var(11) >= 1
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = var(11) >= 3 && Random <= 100 || var(11) = 2 && Random <= 10
triggerall = StateType != A
triggerall = enemynear(var(58)),MoveType = H
triggerall = enemynear(var(58)),stateno != [150,155]
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall =!numhelper(1425)
triggerall =!numhelper(1426)
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = enemynear(var(58)),StateType = A
trigger2 = enemynear(var(58)),StateType = L

;弱大波斬
[State -1, L Rock]
type = ChangeState
value = 1400
triggerall = var(59)
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 600
triggerall = StateType != A
triggerall = P2BodyDist X < 140
triggerall = enemynear(var(58)),MoveType = H
triggerall = enemynear(var(58)),stateno != [150,155]
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall =!numhelper(1400)
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = enemynear(var(58)),StateType = L
trigger1 = EnemyNear(var(58)),AnimTime = [-50,-40]
trigger2 = enemynear(var(58)),StateType = A
trigger2 = enemynear(var(58)),StateNo = 5642

;中大波斬
[State -1, S Rock]
type = ChangeState
value = ifelse(p2bodydist X<160,1400,1410)
triggerall = var(59)
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 600
triggerall = StateType != A
triggerall = P2BodyDist X >= 120
triggerall = enemynear(var(58)),MoveType = H
triggerall = enemynear(var(58)),stateno != [150,155]
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall =!numhelper(1400)
triggerall =!numhelper(1410)
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = enemynear(var(58)),StateType = A
trigger2 = enemynear(var(58)),StateType = L

;---------------------------------------------------------------------------
;位置取り
;---------------------------------------------------------------------------
;ダッシュ 起き攻め位置取り
[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = Random <= (200 + (var(57) * 100))
triggerall = RoundState = 2
triggerall = StateType != A
triggerall =!inguarddist
triggerall =!enemy,numproj
triggerall = P2BodyDist X >= 90
triggerall = ctrl || (stateno = [20,22]) || (stateno = [120,149])
trigger1 = enemynear(var(58)),StateType = A
trigger1 = enemynear(var(58)),StateNo = [5000,5100]
trigger2 = enemynear(var(58)),StateType = L
trigger3 = enemynear(var(58)),StateNo = 5622

;ダッシュ 起き攻め位置取り
[State -1, RUN]
type = ChangeState
value = 110
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 200
triggerall = RoundState = 2
triggerall = statetype = A
triggerall = var(4) > 0 && pos y <= -30
triggerall =!inguarddist
triggerall =!enemy,numproj
triggerall = ctrl
trigger1 = enemynear(var(58)),StateType = L
trigger2 = enemynear(var(58)),StateNo = 5622

;歩き(起き攻め位置取り)
[State -1, Walk]
type = ChangeState
value = 22
triggerall = var(59) >= 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = stateno != 22
triggerall = ctrl || (stateno = [20,22])
trigger1 = enemynear(var(58)),StateType = L
trigger2 = enemynear(var(58)),StateNo = 5622

;後ジャンプ 起き攻め 起き攻め放棄
[State -1, 後ジャンプ]
type = ChangeState
value = 32
triggerall = var(59) >= 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = power >= 1000   ;Abstract Reordered: EX costs 1 bar
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 100
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = BackEdgeBodyDist > 40
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [-30,60]
trigger1 = enemynear(var(58)),StateNo = 5120
trigger1 = enemynear(var(58)),AnimTime <= -12
trigger1 = enemynear(var(58)),Vel X = 0

;バックステップ 起き攻め放棄
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = var(59) >= 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 200
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = BackEdgeBodyDist > 40
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [-30,60]
trigger1 = enemynear(var(58)),StateNo = [5120,5129]
trigger1 = enemynear(var(58)),AnimTime <= -12

;バックダッシュ
[State -1, Back Step]
type = ChangeState
value = 6105
triggerall = var(59) >= 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 1
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 200
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = BackEdgeBodyDist > 40
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [-30,60]
trigger1 = enemynear(var(58)),StateNo = [5120,5129]
trigger1 = enemynear(var(58)),AnimTime <= -12

;空中ダッシュ・後
[State -1, Air Dash-Back]
type = ChangeState
value = 115
triggerall = var(59) >= 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = Random <= (200 + (var(57) * 100))
triggerall = RoundState = 2
triggerall = StateType = A
triggerall = var(4) > 0 && pos y <= -30
triggerall = BackEdgeBodyDist > 40
triggerall = P2BodyDist X = [-30,60]
triggerall = ctrl
trigger1 = enemynear(var(58)),StateType = L
trigger1 = Random <= 100
trigger2 = enemynear(var(58)),StateNo = [5120,5129]
trigger2 = enemynear(var(58)),AnimTime <= -12

;瞬歩 起き攻め放棄
[State -1, Shunpo]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = BackEdgeBodyDist <= 40
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X <= 60
trigger1 = enemynear(var(58)),StateNo = [5100,5129]
trigger1 = var(23) := 3

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 対瞬歩
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;RF斬月
[State -1, RF SP1]
type = ChangeState
value = 1020
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = power >= 1000   ;Abstract Reordered: EX costs 1 bar
triggerall = var(15) = 0 && var(39) = 0
triggerall = RoundState = 2
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = var(11) >= 3 && Random <= 250 || var(11) = 2 && Random <= 10
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = p2bodydist x = [-10,80]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = enemy,authorname = "ikaruga" && enemy,numexplod(78431)
trigger1 = enemynear(var(58)),stateno = [800,801]

;RF円月斬
[State -1, RF SP2]
type = ChangeState
value = 1120
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = power >= 1000   ;Abstract Reordered: EX costs 1 bar
triggerall = var(15) = 0 && var(39) = 0
triggerall = RoundState = 2
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = var(11) >= 3 && Random <= 250 || var(11) = 2 && Random <= 10
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = p2bodydist x = [-10,80]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = enemy,authorname = "ikaruga" && enemy,numexplod(78431)
trigger1 = enemynear(var(58)),stateno = [800,801]

;RF飛ばすぜ？
[State -1, RF SP1]
type = ChangeState
value = 1520
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = power >= 1000   ;Abstract Reordered: EX costs 1 bar
triggerall = var(15) = 1 && var(39) = 0
triggerall = RoundState = 2
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = var(11) >= 3 && Random <= 250 || var(11) = 2 && Random <= 10
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = enemy,authorname = "ikaruga" && enemy,numexplod(78431)
trigger1 = enemynear(var(58)),stateno = [800,801]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;立ち回り、技振り(地上)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;---------------------------------------------------------------------------
;投げ
;---------------------------------------------------------------------------
;投げ
[State -1, Throw]
type = ChangeState
value = 900
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = var(53) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 600 || var(57) >= 9 || var(54)
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [30,49]
triggerall = enemynear(var(58)),stateno != 105
triggerall = enemynear(var(58)),stateno != [150,155]
triggerall = enemynear(var(58)),stateno != [5100,5299]
triggerall = p2bodydist X = [-5,15]
trigger1 = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])

;---------------------------------------------------------------------------
;対空
;---------------------------------------------------------------------------
;弱根限斬
[State -1, L KONGEN]
type = ChangeState
value = 1300
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56)) || var(54)
triggerall = Random <= 600 || var(57) >= 9 || var(54)
triggerall = statetype != A
triggerall = enemynear(var(58)),StateType = A
Triggerall = enemynear(var(58)),StateType != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = !((p2stateno = [810,811]) && enemynear(var(58)),authorname = "ikaruga")
triggerall = enemynear(var(58)),facing != facing
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 111 || stateno = 116 || (stateno = [120,149]) || (stateno = [800,801])
trigger1 = p2bodydist x = [-30+floor(12*(enemynear(var(58)),vel x)),57+floor(12*(enemynear(var(58)),vel x))]
trigger1 = p2bodydist y = [-999-floor(12*(enemynear(var(58)),vel y)+(12*(12+1)/2)*fvar(20)),0-floor(12*(enemynear(var(58)),vel y)+(12*(12+1)/2)*fvar(20))]

;しゃがみ強攻撃
[State -1, Crouching Strong Attack]
type = ChangeState
value = 420+(6000*var(39))
triggerall = var(59) = 1
triggerall = (var(57) = [1,6]) && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= ((20 + (var(57) * 10)) * var(56))
triggerall = Random <= 150
triggerall = statetype != A
triggerall = enemynear(var(58)),StateType = A
Triggerall = enemynear(var(58)),StateType != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [5020,5040]
triggerall = !((p2stateno = [810,811]) && enemynear(var(58)),authorname = "ikaruga")
triggerall = enemynear(var(58)),facing != facing
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149]) || (stateno = [800,801])
trigger1 = p2bodydist x = [0+floor(14*(enemynear(var(58)),vel x)),floor((90*const(size.xscale))-20)+floor(14*(enemynear(var(58)),vel x))]
trigger1 = p2bodydist y = [-120-floor(14*(enemynear(var(58)),vel y)+(14*(14+1)/2)*fvar(20)),0-floor(14*(enemynear(var(58)),vel y)+(14*(14+1)/2)*fvar(20))]

;---------------------------------------------------------------------------
;下段
;---------------------------------------------------------------------------
;しゃがみ弱攻撃
[State -1, Crouching Light Attack]
type = ChangeState
value = 400+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H || enemynear(var(58)),stateno = [120,159]
triggerall = enemynear(var(58)),movetype != A
triggerall =!InGuardDist || enemynear(var(58)),facing = facing
triggerall = P2BodyDist X = [-10,floor(((60+(15*var(39)))*const(size.xscale))-20)]
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = Random <= 250
trigger1 = ifelse(enemynear(var(58)),statetype = S,1,Random <= 500)

;---------------------------------------------------------------------------
;中段
;---------------------------------------------------------------------------
[State -1, 前ジャンプ 中段]
type = ChangeState
value = 31
triggerall = var(59) = 1
triggerall = (var(57) = [1,6]) && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(13) >= 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = StateType != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H || enemynear(var(58)),stateno = [120,159]
triggerall = enemynear(var(58)),movetype != A
triggerall = P2BodyDist X = [-5,100]
triggerall = !inguarddist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = Random <= 250 && ifelse(enemynear(var(58)),statetype = C,1,Random <= 250)
trigger1 = var(23) := 2
trigger2 = TeamMode = simul
trigger2 = numpartner
trigger2 = partner,alive
trigger2 = partner,movetype = A
trigger2 = Random <= 400 && ifelse(enemynear(var(58)),statetype = C,1,Random <= 250)
trigger2 = var(23) := 2

;瞬歩
[State -1, Shunpo]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = (var(57) = [1,6]) && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = StateType != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H || enemynear(var(58)),stateno = [120,159]
triggerall = enemynear(var(58)),movetype != A
triggerall = P2BodyDist X = [-5,100]
triggerall = !inguarddist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = Random <= 250 && ifelse(enemynear(var(58)),statetype = C,1,Random <= 250)
trigger1 = var(23) := 2
trigger2 = TeamMode = simul
trigger2 = numpartner
trigger2 = partner,alive
trigger2 = partner,movetype = A
trigger2 = Random <= 400 && ifelse(enemynear(var(58)),statetype = C,1,Random <= 250)
trigger2 = var(23) := 2

;---------------------------------------------------------------------------
;上段
;---------------------------------------------------------------------------
;しゃがみ弱攻撃
[State -1, Crouching Light Attack]
type = ChangeState
value = 400+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= 200 || enemynear(var(58)),movetype = H && enemynear(var(58)),stateno != [150,155]
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall =!InGuardDist || enemynear(var(58)),facing = facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149]) || (stateno = [800,801]) && (var(23) = [2,4]) && enemynear(var(58)),movetype = I
trigger1 = P2BodyDist X = [-10,floor(((60+(15*var(39)))*const(size.xscale))-20)]

;立ち弱攻撃
[State -1, Stand Light Attack]
type = ChangeState
value = 200+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= 100
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall =!InGuardDist || enemynear(var(58)),facing = facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149]) || (stateno = [800,801]) && (var(23) = [2,4]) && enemynear(var(58)),movetype = I
trigger1 = P2BodyDist X = [-10,floor(((60+(30*var(39)))*const(size.xscale))-20)]

;しゃがみ中攻撃
[State -1, Crouching Middle Attack]
type = ChangeState
value = 410+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= 100
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall =!InGuardDist || enemynear(var(58)),facing = facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149]) || (stateno = [800,801]) && (var(23) = [2,4]) && enemynear(var(58)),movetype = I
trigger1 = P2BodyDist X = [floor(40*const(size.xscale)),floor((125*const(size.xscale))-20)]

;立ち中攻撃
[State -1, Stand Middle Attack]
type = ChangeState
value = 210+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= 50
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall =!InGuardDist || enemynear(var(58)),facing = facing
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149]) || (stateno = [800,801]) && (var(23) = [2,4]) && enemynear(var(58)),movetype = I
trigger1 = P2BodyDist X = [floor(40*const(size.xscale)),floor(105*const(size.xscale))]

;立ち強攻撃
[State -1, Standing Strong Attack]
type = ChangeState
value = 220+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= 100
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X > 120

;しゃがみ強攻撃
[State -1, Crouching Strong Attack]
type = ChangeState
value = 420+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= 100
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X > 120

;---------------------------------------------------------------------------
;RFぶっぱ
;---------------------------------------------------------------------------
;RF斬月
[State -1, RF SP1]
type = ChangeState
value = 1020
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(15) = 0
triggerall = var(39) = 0
triggerall = power >= 1000   ;Abstract Reordered: EX costs 1 bar
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = var(11) >= 3 && Random <= 50 || var(11) = 2 && Random <= 10
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X > 120

;RF円月斬
[State -1, RF SP2]
type = ChangeState
value = 1120
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(15) = 0
triggerall = var(39) = 0
triggerall = power >= 1000   ;Abstract Reordered: EX costs 1 bar
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = var(11) >= 3 && Random <= 50 || var(11) = 2 && Random <= 10
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall =!enemy,numproj
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [60,180]

;RF飛ばすぜ？
[State -1, RF SP1]
type = ChangeState
value = 1520
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(15) = 1
triggerall = var(39) = 0
triggerall = power >= 1000   ;Abstract Reordered: EX costs 1 bar
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = var(11) >= 3 && Random <= 50 || var(11) = 2 && Random <= 10
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X > 120

;RF遅えっ！
[State -1, RF SP2]
type = ChangeState
value = 1620
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(15) = 1
triggerall = var(39) = 0
triggerall = power >= 1000   ;Abstract Reordered: EX costs 1 bar
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = var(11) >= 3 && Random <= 50 || var(11) = 2 && Random <= 10
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall =!enemy,numproj
triggerall =!InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [80,200]

;---------------------------------------------------------------------------
;その他牽制
;---------------------------------------------------------------------------
;弱大波斬
[State -1, L Rock]
type = ChangeState
value = 1400
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall =!numhelper(1400)
triggerall =!enemy,numproj
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = var(57) = [1,6]
trigger1 = enemynear(var(58)),movetype != H
trigger1 = P2BodyDist X > 200
trigger1 = Random <= 20
trigger2 = numhelper(1410)
trigger2 = enemynear(var(58)),stateno = [130,159]
trigger2 = P2BodyDist X > 160
trigger2 = Random <= 200

;中大波斬
[State -1, S Rock]
type = ChangeState
value = 1410
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = enemynear(var(58)),statetype != A
triggerall = enemynear(var(58)),statetype != L
triggerall =!numhelper(1410)
triggerall =!enemy,numproj
triggerall = P2BodyDist X > 200
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = var(57) = [1,6]
trigger1 = enemynear(var(58)),movetype != H
trigger1 = P2BodyDist X > 200
trigger1 = Random <= 20
trigger2 = numhelper(1400)
trigger2 = enemynear(var(58)),stateno = [130,159]
trigger2 = P2BodyDist X > 160
trigger2 = Random <= 200

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;立ち回り、技振り(空中)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;投げ
[State -1, Throw]
type = ChangeState
value = 900
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = var(53) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 600 || var(57) >= 9 || var(54)
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),stateno != [150,155]
triggerall = p2bodydist X = [-5,15]
triggerall = enemynear(var(58)),Pos Y - Pos Y = [-40,40]
trigger1 = ctrl

;ジャンプ弱攻撃
[State -1, Jump Light Attack]
type = ChangeState
value = 600+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100)) || prevstateno = 31 || prevstateno = 36
triggerall = Random <= 600 || prevstateno = 31 || prevstateno = 36
triggerall = statetype = A
triggerall = enemynear(var(58)),StateType = A
triggerall = enemynear(var(58)),statetype != L
triggerall = ctrl || stateno = 111 || stateno = 116
trigger1 = P2BodyDist X = [-30,floor((65*const(size.xscale))-20)]
trigger1 = enemynear(var(58)),Pos Y - Pos Y = [-40,20]

;ジャンプ中攻撃
[State -1, Jump Middle Attack]
type = ChangeState
value = 610+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 600
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = ctrl || stateno = 111 || stateno = 116
trigger1 = Vel Y >= 0
trigger1 = P2BodyDist X = [-40,floor((105*const(size.xscale))-20)+floor(7*(EnemyNear(Var(58)),vel X)+floor(7*vel X))]
trigger1 = enemynear(var(58)),statetype != A
trigger2 = var(13) >= 1
trigger2 = Vel Y < 0
trigger2 = P2BodyDist X = [-40,floor((105*const(size.xscale))-20)+floor(7*(EnemyNear(Var(58)),vel X)+floor(7*vel X))]
trigger2 = Pos Y > -25
trigger2 = enemynear(var(58)),statetype != A
trigger3 = P2BodyDist X = [-40,floor((105*const(size.xscale))-20)+floor(7*(EnemyNear(Var(58)),vel X)+floor(7*vel X))]
trigger3 = enemynear(var(58)),StateType = A
trigger3 = enemynear(var(58)),Pos Y - Pos Y = [-60,60]

;ジャンプ強攻撃
[State -1, Jump Strong Attack]
type = ChangeState
value = 620+(6000*var(39))
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = Random <= 600
triggerall = statetype = A
triggerall = enemynear(var(58)),statetype != L
triggerall = ctrl || stateno = 111 || stateno = 116
trigger1 = P2BodyDist X = [-20,80+floor(9*(EnemyNear(Var(58)),vel X)+floor(9*vel X))]
trigger1 = enemynear(var(58)),Pos Y - Pos Y = [-120,-40]
trigger1 = enemynear(var(58)),StateType = A

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;移動
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;瞬歩
[State -1, Shunpo]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(13) >= 1
triggerall = var(24) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= 1000/var(57)
triggerall = Random <= 60
triggerall = enemynear(var(58)),movetype != H
triggerall = enemynear(var(58)),statetype != L
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [105,106]) || stateno = 111 || stateno = 116 || (stateno = [120,149])
trigger1 = p2bodydist x >= 80
trigger1 = var(23) := 3
trigger2 = StateType = A
trigger2 = p2bodydist x >= 80
trigger2 = var(23) := 4
trigger3 = p2bodydist x < 120
trigger3 = var(23) := 7
trigger4 = StateType = A
trigger4 = p2bodydist x < 120
trigger4 = var(23) := 8

;ダッシュ
[State -1, RUN]
type = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = Random <= (200 + (var(57) * 100))
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = statetype != A
triggerall = !inguarddist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [120,149])
trigger1 = p2bodydist x >= 240
trigger1 = Random <= 400
trigger2 = p2bodydist x = [120,240]
trigger2 = Random <= 200
trigger3 = p2bodydist x = [60,120]
trigger3 = Random <= 100

;空中ダッシュ・前
[State -1, Air Dash-Fwd]
type = ChangeState
value = 110
triggerall = var(59) = 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = Random <= (200 + (var(57) * 100))
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = statetype = A
triggerall = !inguarddist
triggerall = !Enemy,NumProj
triggerall = enemynear(var(58)),statetype != A || enemynear(var(58)),statetype = A && enemynear(var(58)),stateno != [5000,5999]
triggerall = var(4) > 0 && pos y <= -30
triggerall = ctrl
trigger1 = p2bodydist x >= 240
trigger1 = Random <= 600
trigger2 = p2bodydist x = [-25,240]
trigger2 = Random <= 400
trigger3 = p2bodydist x < -60
trigger3 = Random <= 400

;歩き
[State -1, Walk]
type = ChangeState
value = 21
triggerall = var(59) >= 1
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = RoundState = 2
triggerall = StateType != A
triggerall = enemynear(var(58)),StateNo != [5120,5299]
triggerall = enemynear(var(58)),StateType != L
triggerall = enemynear(var(58)),StateType != A
triggerall = stateno != 21
triggerall = ctrl || (stateno = [20,22])
trigger1 = P2BodyDist X <= 140
trigger1 =!InGuardDist || enemynear(var(58)),facing = facing
trigger2 = P2BodyDist X > 180

[State -1, 前ジャンプ]
type = ChangeState
value = 31
triggerall = var(59)
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = power >= 1000   ;Abstract Reordered: EX costs 1 bar
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = StateType != A
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X > 60
trigger1 = (var(57) = [1,6]) && Random <= 50 || (p2bodydist x = [140,200]) && Random <= 100 || p2bodydist x >= 200 && Random <= 200
trigger1 = (var(57) = [1,6]) || var(57) >= 7 && Random <= 500

[State -1, 後ジャンプ]
type = ChangeState
value = 32
triggerall = var(59)
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = power >= 1000   ;Abstract Reordered: EX costs 1 bar
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = BackEdgeBodyDist > 60
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X > 60
trigger1 = enemynear(var(58)),movetype = I
trigger1 = enemynear(var(58)),statetype != A
trigger1 = Random <= 50

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = var(59)
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 0
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = BackEdgeBodyDist > 60
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [60,140]
trigger1 = enemynear(var(58)),movetype = I
trigger1 = enemynear(var(58)),statetype != A
trigger1 = EnemyNear(var(58)),facing != facing
trigger1 =!Enemy,NumProj
trigger1 = Random <= 150

;バックダッシュ
[State -1, Back Step]
type = ChangeState
value = 6105
triggerall = var(59)
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = var(39) = 1
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype != A
triggerall = BackEdgeBodyDist > 60
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2BodyDist X = [60,140]
trigger1 = enemynear(var(58)),movetype = I
trigger1 = enemynear(var(58)),statetype != A
trigger1 = EnemyNear(var(58)),facing != facing
trigger1 =!Enemy,NumProj
trigger1 = Random <= 150

;空中ダッシュ・後
[State -1, Air Dash-Back]
type = ChangeState
value = 115
triggerall = var(59)
triggerall = var(57) >= 1 && (var(57) < 4 && random <= (200 + (var(57) * 200)) || var(57) >= 4)
triggerall = RoundState = 2 && enemynear(var(58)),life > 0
triggerall = Random <= (200 + (var(57) * 100))
triggerall = statetype = A
triggerall = BackEdgeBodyDist > 60
triggerall = var(4) > 0 && pos y <= -30
triggerall = ctrl
trigger1 = P2BodyDist X = [60,140]
trigger1 = enemynear(var(58)),movetype = I
trigger1 = enemynear(var(58)),statetype != A
trigger1 = EnemyNear(var(58)),facing != facing
trigger1 =!Enemy,NumProj
trigger1 = Random <= 150

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;その他
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;挑発(レベルアップ用)
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 1
triggerall = var(57) < 8 || var(56) < 10
triggerall = var(39) = 0
triggerall = var(55) >= 1
triggerall = Random <= 150
triggerall = RoundState = 2 && enemynear(var(58)),life > 0 && fvar(22) = 0
triggerall = statetype != A
triggerall = !inguarddist
triggerall = !enemy,numproj
triggerall = stateno != 195 && prevstateno != 195
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || (stateno = [120,149])
trigger1 = P2bodydist X >= 80
trigger1 = enemynear(var(58)),StateType = L
trigger2 = P2bodydist X >= 120
trigger2 = enemynear(var(58)),StateType = A
trigger2 = enemynear(var(58)),movetype = H

;---------------------------------------------------------------------------
;レベルアップシステム
[State -3]
Type = VarAdd
triggerall = var(59) = 1
triggerall = Var(57) = [1,7]
triggerall = var(55) >= 1
trigger1 = stateno = 195 && time = 1 ;挑発
var(57) = 1
IgnoreHitPause = 1

[State -3]
Type = VarAdd
triggerall = var(59) = 1
triggerall = Var(56) = [1,9]
triggerall = var(55) >= 1
trigger1 = stateno = 195 && time = 1 ;挑発
var(56) = 1
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;リミッター(規定以上のレベルに設定すると強制的にAIがOFFになる)
[State -3]
Type = VarSet
trigger1 = var(57) > 8
trigger2 = Var(56) > 10
var(57) = 0

;リミッター2(反応速度を下げすぎた場合、レベルを1に設定)
[State -1, ]
Type = VarSet
trigger1 = Var(56) < 1
var(56) = 1

;反応速度連動アップ
[State -3]
Type = VarSet
triggerall = Var(56) < 10
trigger1 = var(57) >= 9
var(56) = 10

;---------------------------------------------------------------------------
;体力ピンチ時発狂
[State -1, ]
Type = VarSet
triggerall = var(59)
trigger1 = roundstate = [0,1]
var(54) = 0

[State -1, ]
Type = VarSet
triggerall = var(59)
trigger1 = life <= 500
trigger1 = life <= var(57) * var(56) * 8
trigger2 = life <= 100
var(54) = 1

;この下、一行以上空ける事！
