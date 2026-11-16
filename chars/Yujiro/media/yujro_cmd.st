;※これはコマンドファイルのバックアップです。
;　もし「kfmc.cmd」が何らかの影響で消えた時はstateフォルダにコピーして
; 「kfmc.def」内で登録し直すか、ファイル名をkfmc.cmdに変更して使用してください。
;------------------------------------------------------------------------------
; 教材用カンフーマン（ちょっとこ丸版）のコマンドファイルです。
; コマンドに関する設定は４部構成になっています。
;==============================================================================
; Win版専用パート
;==============================================================================
;------------------------------------------------------------------------------
; ここはWin版から（正確にはLinux版から）追加された要素の二つ。
; コマンド関連の初期設定を任意に指定出来るようになった(`・ω・´)
;
;『ボタンリマップ』はボタン配置変更用の項目。
; 定義パートでいちいち変更しなくても良いようになっちゃった。
; 面倒臭い人用かな！（ﾏﾃｺﾗ
;
;『デフォルト設定』では各[Command]で省略した場合の
; 入力受付時間と入力記憶時間を予め決めておく項目。
;
; この２項目は省略可能。
;------------------------------------------------------------------------------
;-| ボタンリマップ（ボタンコンフィグ）|---------------------------------------- 第１部

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;------------------------------------------------------------------------------
; 例えば「本来Ｘボタンで出す弱パンチをＢボタンに変えたい場合」なら、
;
; x = b
;
; で簡単に出来る。使わないボタンを使っているボタンに割り当てる事も可能。
;------------------------------------------------------------------------------
;-| デフォルト設定 |----------------------------------------------------------- 第２部

[Defaults]
command.time = 15  ;標準のコマンド入力受付時間。
                   ;各コマンドで省略している場合に有効。
                   ;このパラメータを消した場合、デフォルトは１フレームになる。
                   ;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

command.buffer.time = 1  ;標準のコマンド入力記憶時間。
                         ;入力した直後にコマンドを記憶し、
                         ;指を離してもコマンドが成功している状態を
                         ;ここで設定した時間の分維持する。
                         ;１～３０フレームまでの間で設定可能。
                         ;デフォルトは１フレーム。

;============================================================================== 第３部
; コマンド定義パート（入力キーを設定する）
;==============================================================================
;------------------------------------------------------------------------------
; ここがキーとボタンの組み合わせで格闘ゲームにおける
;『入力コマンド』を直接設定・編集するパート。
;
; 一つずつコマンドに名前を付けて入力キーを組み合わせる単純な作業になるけど、
; 組み合わせが独特だから覚えるのは難易度が少し高い。
;
; 下記で「書式の決まり」と「組み合わせに必要なアルファベットと記号」を
; 全て説明しましょう。
;------------------------------------------------------------------------------
;■書式の決まり■
;
; [Command]         ：入力コマンドを１個定義する。
; name = "***"      ：コマンド名を決める。大文字と小文字も区別される。
; command = ###     ：実際に入力するキーを組み合わせる。詳細は後述。
; time = &&&        ：入力受付時間を設定（オプション）。
; buffer.time = @@@ ：入力記憶時間を設定（オプション）。
;
; 小ネタでも説明している通り、登録が可能な数は最大『１２８個』まで。
;
;
;※『必須コマンド名』と書いてるコマンドは、システム側で処理してます。
;　コマンド名を変えたり、消してはいけません。キーの変更は出来ます。
;------------------------------------------------------------------------------
;■必要なアルファベットと記号■
;
; 上記の「command = ###」の『###』に該当する部分で、
; 組み合わせるキーとボタンを設定しなければならない。
;
; ※設定したキーやボタンはM.U.G.E.Nのオプションモードにある
;  「キーコンフィグ」にて設定したキーなどに対応しています。
;
; ★方向キー★（全て必ず大文字で）
;
; 　B 　：「後方」にキーを入れる（ Backward ）
; 　D 　：「下方」にキーを入れる（ Downward ）
; 　F 　：「前方」にキーを入れる（ Forward ）
; 　U 　：「上方」にキーを入れる（ Upward ）
;
; 　DB　：「後ろ斜め下」にキーを入れる（「D」と「B」が同時に入力された事を認識）
; 　UB　：「後ろ斜め上」にキーを入れる（「U」と「B」が同時に入力された事を認識）
; 　DF　：「前斜め下」にキーを入れる（「D」と「F」が同時に入力された事を認識）
; 　UF　：「前斜め上」にキーを入れる（「U」と「F」が同時に入力された事を認識）
;
; ★ボタン★（全て必ず小文字で）
;
; 　a 　：「Ａボタン」を押す
; 　b 　：「Ｂボタン」を押す
; 　c 　：「Ｃボタン」を押す
; 　x 　：「Ｘボタン」を押す
; 　y 　：「Ｙボタン」を押す
; 　z 　：「Ｚボタン」を押す
; 　s 　：「スタートボタン」を押す
;
; ★記号★（入力効果を変化させる命令）
;
; 　/ 　：（スラッシュ）キーやボタンを「押しっぱなし」にしている事を認識する場合に追加する
;
; 　　（例）：　/b       = Ｂボタンを押したままにする
; 　　　　　　　/F       = 前キーを押したままにする
; 　　　　　　　/U,z     = 上キーを押したままＺボタンを入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　~ 　：（チルダ）キーやボタンが「離された時」を認識する場合に追加する
;
; 　　（例）：　~x       = Ｘボタンを離す
; 　　　　　　　~DF      =「前斜め下」のキーを離す
; 　　　　　　　~DB,F,c  =「後ろ斜め下」を離した後に前キー・Ｃボタンの順番に入力する
;
; 　　　　　　※「ボタンを離すまでの時間（溜め時間）」も設定する事が出来る
;
; 　　　　　　　~30x     = Ｘボタンを押したままにして、３０フレーム以上経ったら離す
; 　　　　　　　~50B,F,a = 後ろキーを５０フレームまで溜めて前キー・Ａボタンの順番に入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　$ 　：（ドル）方向キーの「複数の内どれかが入力されている事」を認識する場合に追加する
;
; 　　（例）：　$B       =「後方」「後ろ斜め下」「後ろ斜め上」のどれかが入力されている状態
; 　　　　　　　$UF      =「前」「上」「前斜め上」のどれかが入力されている状態
;
; 　　　　　　※この記号は「方向キー」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　+ 　：（プラス）ボタンを「同時押し」している事を認識する場合に追加する
;
; 　　（例）：　x+y      = ＸボタンとＹボタンを同時押しする
; 　　　　　　　a+b+c    = ＡボタンとＢボタンとＣボタンを同時押しする
;
; 　　　　　　※この記号は「ボタン」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　> 　：（グレーターザン）大なり（Win版で追加された記号）
; 　　　　　　　　　　　　「他のキーが入力されていない事を確認して、そのキーを押す」場合
;
; 　　（例）：　a,>~a    = Ａボタン以外が入力されていない状態でＡボタンを離す
; 　　　　　　　F,>~F,>F = 前キー以外が入力されていない状態で前キーを離し、
;　　　　　　　　　　　　　もう一度前キーを入力する
;
;-------------------------------------------------------------------------------
; ●これらの記号は全て組み合わせて使う事が出来る●
;
; 　　（例）：　~80$DB,DF,F,/a+y+c
; 　　　　　　　
; 　　　　　　「後方」「下」「後ろ斜め下」のどれかを８０フレームまで溜めて
; 　　　　　　「前斜め下」→「前」を入力した後、ＡとＹとＣを同時押ししたままにする
;
;------------------------------------------------------------------------------
;-| ＡＩ発動用コマンド |-------------------------------------------------------

;※ＣＰＵに『人間には入力出来ないコマンド』を入力させる事で、
;　『擬似ＡＩプログラム』を発動させるようにするテクニック。
;　発動確率はまさにランダムなので、運任せ。

[Command]
name = "AI-000"
command = ~F,a,~D,y,~U,c+x,D,b+y,F,z,z,z+a
time = 1

[Command]
name = "AI-001"
command = ~F,c,~D,y,~U,c+a,D,b+x,B,z,z,z+b
time = 1

[Command]
name = "AI-002"
command = ~F,y,~D,y,~U,c+y,D,b+z,F,z,z,z+c
time = 1

[Command]
name = "AI-003"
command = ~F,b,~D,y,~U,c+b,D,b+a,B,z,z,z+x
time = 1

[Command]
name = "AI-004"
command = ~F,x,~D,x,~U,c+x,D,b+y,F,z,z,z+y
time = 1

[Command]
name = "AI-005"
command = ~F,z,~D,y,~U,c+a,D,b+c,B,z,z,z+a
time = 1

[Command]
name = "AI-006"
command = ~D,U,x+y+z,~F,F,b,c,y,B,~B,a+b+c,U
time = 1

[Command]
name = "AI-007"
command = ~U,D,x+b+z,~F,F,b,b,x,B,~B,a+y+c,F
time = 1

[Command]
name = "AI-008"
command = ~D,U,a+y+c,~F,F,b,a,z,B,~B,x+b+z,D
time = 1

[Command]
name = "AI-009"
command = ~U,D,x+b+c,~F,F,b,c,x,B,~B,a+y+z,B
time = 1

[Command]
name = "AI-010"
command = ~x,~y,~z,~a,~b,~c,~s,a+b+c,x+y+z,~F,B
time = 1

;***********************************
[Command]
name = "AI-011"
command = F,D,F
time = 0

[Command]
name = "AI-012"
command = B,F,B
time = 0

[Command]
name = "AI-013"
command = U,B,U
time = 0

[Command]
name = "AI-014"
command = D,U,D
time = 0

;***********************************
[Command]
name = "AI-015"
command = a,s,a
time = 0

[Command]
name = "AI-016"
command = b,a,b
time = 0

[Command]
name = "AI-017"
command = c,b,c
time = 0

[Command]
name = "AI-018"
command = x,c,x
time = 0

[Command]
name = "AI-019"
command = y,x,y
time = 0

[Command]
name = "AI-020"
command = z,y,z
time = 0

[Command]
name = "AI-021"
command = s,z,s
time = 0

;------------------------------------------------------------------------------
;-| スーパーアーツ |-----------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。

[Command]
name = "瞬獄殺"      ;日本語のコマンド名も使える
command = x,x,F,a,y
time = 25

;禊
[Command]
name = "misogi"
command = ~D,DB,B,D,DB,B,a+b
time = 20

;***********************************
;天狗石 ＆ X.F.L.A.T.（モドキ）
[Command]
name = "tengu_ishi"
command = ~D,DF,F,D,DF,F,a
time = 20

[Command]
name = "tengu_ishi"
command = ~D,DF,F,D,DF,F,b
time = 20

;***********************************
;電刃波動拳
[Command]
name = "denjin_hadouken"
command = ~D,DF,F,D,DF,F,x
time = 20

[Command]
name = "denjin_hadouken"
command = ~D,DF,F,D,DF,F,y
time = 20

;***********************************
;カンフー突き手・改
[Command]
name = "kung_fu_palm_custom"
command = ~D,DB,B,D,DB,B,x
time = 20

[Command]
name = "kung_fu_palm_custom"
command = ~D,DB,B,D,DB,B,y
time = 20

;***********************************
;カンフーアベンジャー
[Command]
name = "kung_fu_avenger"
command = ~50$B,F,B,F,a+y
time = 20

[Command]
name = "kung_fu_avenger"
command = ~50$B,F,B,F,b+x
time = 20

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

;阿修羅閃空
[Command]
name = "ashura-000"
command = ~F,D,DF,a+b

[Command]
name = "ashura-001"
command = ~F,D,DF,x+y

[Command]
name = "ashura-002"
command = ~B,D,DB,a+b

[Command]
name = "ashura-003"
command = ~B,D,DB,x+y

;***********************************
;カンフーニー・改
[Command]
name = "knee"
command = ~D,DF,F,a

[Command]
name = "knee"
command = ~D,DF,F,b

;***********************************
;カンフーカウンター
[Command]
name = "kung_fu_counter"
command = ~D,DB,B,a

[Command]
name = "kung_fu_counter"
command = ~D,DB,B,b

;***********************************
;カンフーアッパー・改
[Command]
name = "upper"
command = ~F,D,DF,x

[Command]
name = "upper"
command = ~F,D,DF,y

;***********************************
;波動拳＆斬空波動拳
[Command]
name = "hadouken"
command = ~D,DF,F,x

[Command]
name = "hadouken"
command = ~D,DF,F,y

;***********************************
;カンフーブロー・改
[Command]
name = "blow"
command = ~D,DB,B,x

[Command]
name = "blow"
command = ~D,DB,B,y

;------------------------------------------------------------------------------
;-| 特殊技 |-------------------------------------------------------------------

;ガードキャンセル攻撃
[Command]
name = "counter_k"
command = ~B,DB,D,a

[Command]
name = "counter_k"
command = ~B,DB,D,b

[Command]
name = "counter_p"
command = ~B,DB,D,x

[Command]
name = "counter_p"
command = ~B,DB,D,y

;***********************************
;ブロッキング
[Command]
name = "blocking-000"
command = F
time = 1

[Command]
name = "blocking-001"
command = /F
time = 1

[Command];クイックスタンディングと共用
name = "blocking-002"
command = D
time = 1

[Command]
name = "blocking-003"
command = /D
time = 1

;***********************************
;スーパージャンプ
[Command]
name = "super_jump"
command = D,$U
time = 7

;***********************************
;電刃波動拳用ボタン溜め
[Command]
name = "denjin_hold"
command = /x

[Command]
name = "denjin_hold"
command = /y

;***********************************
;勝利メッセージ用
[Command]
name = "hold_s"
command = /s

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F,F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B,B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = a+b
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = x+y
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

;[Command]
;name = "fwd_a"
;command = /F,a

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

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

;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

;============================================================================== 第４部
; ステートエントリーパート（技などを出せるようにするための条件を設定）
;==============================================================================
;------------------------------------------------------------------------------
; コマンド名と入力するコマンドを設定しただけじゃ意味が無いので、ここから
;「実際に入力したコマンドでどの番号のステートをどういう条件で出せるか」
; を決めなければならない。
;
; ステートコントローラ「ChangeState」しか使わないけど、
; そんなに難しくないのでトリガーを覚えてたらすぐ出来る。
;
; ここさえ押さえておけば簡単なトリガー設定の流れは覚えられるかと。
;
; エントリーの順番にはある程度の法則があるけど、
; おまけフォルダの「小ネタ.txt」を参照。（波動拳が暴発ﾅﾝﾀﾗｶﾝﾀﾗ）
;
; ChangeStateなどステートコントローラの基本的な設置例は
; おまけフォルダの「テンプレート.txt」を参照。
;------------------------------------------------------------------------------
; ■準常時監視ステート（－１）■
; コマンドファイル（のステートエントリーパート）に必要な項目です。
; 絶対に消してはいけないので要注意。
;
; 通常の食らい状態以外の「P2StateNo」や「TargetState」等で制御された、
; 作成者が任意に指定した相手側の食らいステートに限り、
; 登録したステートコントローラが有効にはなりません。
;------------------------------------------------------------------------------

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;==============================================================================
; スーパーアーツ
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 瞬獄殺]
type = ChangeState
triggerall = (var(34) <= 0) && (var(35) <= 0) ;Var(34)とVar(35)両方の値が０以下の時
triggerall = (command = "瞬獄殺")             ;「瞬獄殺」と定めた名前のコマンドを入力した時
triggerall = (Power > 2999)                   ;パワーゲージがレベル３以上溜まっている時（※）
trigger1 = (StateType != A) && (Ctrl)         ;「空中以外」＆「コントロール可能」の時
trigger2 = (StateNo = [200,299])              ;現在のステートが２００以上２９９以下の時
value = 3500                                  ;[Statedef 3500]のステートを出せる

;------------------------------------------------------------------------------
; ここで↑にて実際に使っている「瞬獄殺のChangeState」を例に
; 解説して行きましょ！m9っ｀Д´)
;
; まず特定のコマンドを入力したいならば、
; 必ず『呼び出すコマンドのトリガー』は設定しましょう。
; 特殊な条件でない限り、コマンドは通常「triggerall」の方で設定した方が良い。
;
;「triggerall」とは『有効になる状況を限定するための条件』を指定する。
; triggerallの条件が有効にならない限り、trigger1以降の条件も有効にはならない。
; 何個でも増やせる。ステート作成の基本テクニックの一つなので覚えておいてね。
; しかしtriggerallはtrigger1以降が無いと「単体では」使えないので注意。
;（trigger1以降を全てコメント化してM.U.G.E.Nでそのキャラを選んで試してみよう）
;
; さて↑で実際に限定しているtriggerallの条件だけど、日本語で表すなら
;『変数のVar(34)とVar(35)が０以下で、コマンド名が「瞬獄殺」のコマンドを入力、
;　かつパワーゲージ（※）がレベル３以上溜まっている状態の時』になる。
; この条件が全て揃えば、trigger1以降に設定した状況で
; 本当にvalueの値が有効になる（この場合瞬獄殺のステートが出せる）。
;
; 今trigger1には「自分の状態が空中ではない時」かつ「コントロールが可能の時」
; の条件を設定してます。両方満たしていればピカーン！(ﾟ∀ﾟ)
;
; そして瞬獄殺はコマンド入力の関係上『立ち通常攻撃を空振りしても出せる』という
; 特性があるので、実際に↑のtrigger2で別条件として再現しています。
;（ステートが２００～２９９の内どれかの時）
;
;
; ※『パワーゲージ』は「スーパーコンボゲージ」や「超必殺技ゲージ」などで
; 　呼ばれてる部分のゲージです。
; 　ゲージが「１０００ポイント」なら『レベル１』と同じ意味になります。
;
; 　まぁパッと見、M.U.G.E.Nのパワーゲージって仕組みが
; 　ストＺＥＲＯシリーズの「スーパーコンボレベルゲージ」まんまだよね（苦笑
;------------------------------------------------------------------------------

[State -1, 禊]
type = ChangeState
triggerall = (PalNo = 7)
triggerall = (var(34) <= 0) && (var(35) <= 0)
triggerall = (command = "misogi")
triggerall = (StateType != A)
triggerall = (Power > 2999)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
;■■■地上スーパーキャンセル■■■
trigger3 = (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger4 = (StateNo = 1001) && (MoveContact)
trigger5 = (StateNo = 1005) && (MoveContact)
trigger6 = (StateNo = 1007) && (MoveContact)
value = 3504

;------------------------------------------------------------------------------

[State -1, X.F.L.A.T.（モドキ）]
type = ChangeState
triggerall = (var(0) = 0)
triggerall = (var(34) <= 0) && (var(35) <= 0)
triggerall = (command = "tengu_ishi")
triggerall = (StateType = A)
triggerall = (Power > 999)
trigger1 = (Ctrl) && (Pos Y < -60)
trigger2 = (StateNo = [600,699]) && (MoveContact)
;■■■空中スーパーキャンセル■■■
trigger3 = (StateNo = 750) && (MoveContact)
trigger4 = (StateNo = 1000) && (StateType = A) && (Time = [14,22])
trigger5 = (StateNo = [1002,1003]) && (StateType = A) && (MoveContact)
trigger6 = (StateNo = 1012) && (StateType = A) && (MoveContact)
value = 3005

[State -1, 天狗石]
type = ChangeState
triggerall = (var(0) = 0)
triggerall = (var(34) <= 0) && (var(35) <= 0)
triggerall = (command = "tengu_ishi")
triggerall = (StateType != A)
triggerall = (Power > 999)
trigger1 = (Ctrl) && (Pos Y >= 0)
trigger2 = (StateNo = [200,499]) && (MoveContact)
;■■■地上スーパーキャンセル■■■
trigger3 = (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger4 = (StateNo = 1001) && (MoveContact)
trigger5 = (StateNo = 1005) && (MoveContact)
trigger6 = (StateNo = 1007) && (MoveContact)
value = 3004

[State -1, 電刃波動拳]
type = ChangeState
triggerall = (var(0) = 0)
triggerall = (var(34) <= 0) && (var(35) <= 0)
triggerall = (command = "denjin_hadouken")
triggerall = (Power > 999)
triggerall = (NumHelper(2000) = 0)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
;■■■地上スーパーキャンセル■■■
trigger3 = (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger4 = (StateNo = 1001) && (MoveContact)
trigger5 = (StateNo = 1005) && (MoveContact)
trigger6 = (StateNo = 1007) && (MoveContact)
value = 3000

[State -1, カンフー突き手・改]
type = ChangeState
triggerall = (var(0) = 0)
triggerall = (var(34) <= 0) && (var(35) <= 0)
triggerall = (command = "kung_fu_palm_custom")
triggerall = (Power > 999)
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact)
;■■■地上スーパーキャンセル■■■
trigger3 = (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger4 = (StateNo = 1001) && (MoveContact)
trigger5 = (StateNo = 1005) && (MoveContact)
trigger6 = (StateNo = 1007) && (MoveContact)
value = 3001

[State -1, カンフーアベンジャー]
type = ChangeState
triggerall = (NumEnemy != 0)
triggerall = !(Enemy,TeamMode = Simul) ;相手のチームモードが「Simul」以外
triggerall = !(TeamMode = Simul)       ;自分のチームモードが「Simul」以外
triggerall = (var(0) = 0)
triggerall = (var(34) <= 0) && (var(35) <= 0)
triggerall = (command = "kung_fu_avenger")
triggerall = (Power > 999)
trigger1 = (StateType != A) && (Ctrl)
value = 3011

;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 阿修羅閃空]
type = ChangeState
triggerall = (command = "ashura-000") || (command = "ashura-001") || (command = "ashura-002") || (command = "ashura-003")
trigger1 = (StateType != A) && (Ctrl)
;■■■オリジナルコンボ■■■
trigger2 = (var(35) = 1) && (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger3 = (var(35) = 1) && (StateNo = 1001) && (MoveContact)
trigger4 = (var(35) = 1) && (StateNo = 1005) && (MoveContact)
trigger5 = (var(35) = 1) && (StateNo = [1007,1008]) && (MoveContact)
value = 1011

;------------------------------------------------------------------------------

[State -1, カンフーニー・改]
type = ChangeState
triggerall = (command = "knee")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact || Time = [1,9])
;■■■オリジナルコンボ■■■
trigger3 = (var(35) = 1) && (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger4 = (var(35) = 1) && (StateNo = 1001) && (MoveContact)
trigger5 = (var(35) = 1) && (StateNo = 1005) && (MoveContact)
trigger6 = (var(35) = 1) && (StateNo = [1007,1008]) && (MoveContact)
value = 1001

[State -1, カンフーカウンター]
type = ChangeState
triggerall = (command = "kung_fu_counter") && (var(35) <= 0)
trigger1 = (StateType != A) && (Ctrl)
value = 1009

;------------------------------------------------------------------------------

[State -1, カンフーアッパー・改]
type = ChangeState
triggerall = (command = "upper")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact || Time = [1,9])
;■■■オリジナルコンボ■■■
trigger3 = (var(35) = 1) && (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger4 = (var(35) = 1) && (StateNo = 1001) && (MoveContact)
trigger5 = (var(35) = 1) && (StateNo = 1005) && (MoveContact)
trigger6 = (var(35) = 1) && (StateNo = [1007,1008]) && (MoveContact)
value = 1005

[State -1, 波動拳＆斬空波動拳]
type = ChangeState
triggerall = (command = "hadouken")
trigger1 = (Ctrl) && (NumProjID(1000) = 0) && (var(35) <= 0)
trigger2 = (StateNo = [200,699]) && (MoveContact || Time = [1,9])
;■■■オリジナルコンボ■■■
trigger3 = (var(35) = 1) && (Ctrl)
trigger4 = (var(35) = 1) && (StateNo = 750) && (StateType = A) && (MoveContact)
trigger5 = (var(35) = 1) && (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger6 = (var(35) = 1) && (StateNo = 1000) && (StateType = A) && (Time = [14,22])
trigger7 = (var(35) = 1) && (StateNo = 1001) && (StateType != A) && (MoveContact)
trigger8 = (var(35) = 1) && (StateNo = [1002,1003]) && (StateType = A) && (MoveContact)
trigger9 = (var(35) = 1) && (StateNo = 1005) && (StateType != A) && (MoveContact)
trigger10= (var(35) = 1) && (StateNo = 1006) && (StateType = A) && (MoveContact)
trigger11= (var(35) = 1) && (StateNo = [1007,1008]) && (StateType != A) && (MoveContact)
trigger12= (var(35) = 1) && (StateNo = 1012) && (StateType = A) && (MoveContact)
value = 1000

[State -1, カンフーブロー・改]
type = ChangeState
triggerall = (command = "blow")
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = [200,499]) && (MoveContact || Time = [1,9])
;■■■オリジナルコンボ■■■
trigger3 = (var(35) = 1) && (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger4 = (var(35) = 1) && (StateNo = 1001) && (MoveContact)
trigger5 = (var(35) = 1) && (StateNo = 1005) && (MoveContact)
trigger6 = (var(35) = 1) && (StateNo = [1007,1008]) && (MoveContact)
value = 1007

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, カンフースルー・改]
type = ChangeState
triggerall = (command = "y")
triggerall = (StateNo != 100)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
;地上投げ
trigger1 = (command = "holdfwd") || (command = "holdback")
trigger1 = (StateType != A)
trigger1 = (Ctrl)
trigger1 = (P2BodyDist X < 8)
trigger1 = (P2StateType != A)
trigger1 = (P2MoveType != H)
;空中投げ
trigger2 = (command = "holdfwd") || (command = "holdback")
trigger2 = (StateType = A)
trigger2 = (Ctrl)
trigger2 = (P2BodyDist X < 14)
trigger2 = (P2Dist Y = [-60,30])
trigger2 = (P2StateType = A)
trigger2 = (P2MoveType != H)
value = 800

;※「trigger*」も条件の付け方によって何個でも増やせる。

;------------------------------------------------------------------------------

[State -1, 天魔空刃脚]
type = ChangeState
triggerall = (command = "blocking-003") && (command = "b")
trigger1 = (StateType = A) && (Ctrl) && (Vel X > 0) && (Vel Y = [-1.75,1.75])
;■■■オリジナルコンボ■■■
trigger2 = (var(35) = 1) && (StateNo = [600,699]) && (MoveContact)
trigger3 = (var(35) = 1) && (StateNo = 1000) && (StateType = A) && (Time = [14,22])
trigger4 = (var(35) = 1) && (StateNo = [1002,1003]) && (MoveContact)
trigger5 = (var(35) = 1) && (StateNo = 1006) && (MoveContact)
trigger6 = (var(35) = 1) && (StateNo = 1012) && (StateType = A) && (MoveContact)
value = 750

[State -1, ガードキャンセル]
type = ChangeState
triggerall = (RoundState = 2) && (Alive)
triggerall = (command = "counter_k") || (command = "counter_p")
trigger1 = (Power > 999)
trigger1 = (StateType != A)
trigger1 = (StateNo = [150,153])
trigger1 = !(HitShakeOver)
trigger1 = (InGuardDist)
value = 703

;------------------------------------------------------------------------------

[State -1, オリジナルコンボ発動]
type = ChangeState
triggerall = (var(0) = 0)
triggerall = (var(34) = 0) && (var(35) = 0) && (fvar(12) = 0)
triggerall = (NumEnemy)
triggerall = (RoundState = 2) && (Alive)
triggerall = (Power > 1499)
trigger1 = (command = "b") && (command = "y") && (Ctrl)
value = 704

[State -1, 回り込み]
type = ChangeState
triggerall = (RoundState = 2) && (Alive)
trigger1 = (command = "a") && (command = "x") && (StateType != A) && (Ctrl)
value = 702

[State -1, クイックスタンディング]
type = ChangeState
triggerall = (command = "blocking-002") && (RoundState = 2) && (Alive)
trigger1 = (StateNo = 5050) && (Pos Y > 5)
trigger2 = (PrevStateNo = 5071) && (StateNo = 5110) && (Time = [0,3])
trigger3 = (StateNo = 5100)
value = 10001

[State -1, 移動起き上がり]
type = ChangeState
triggerall = (Alive)
triggerall = (RoundState = 2) && (StateNo = 5110) && (MoveType = H) && (Time > 1)
trigger1 = (command = "holdfwd") || (command = "holdback")
value = 10002

;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
triggerall = (StateNo != 100)
trigger1 = (command = "FF") && (StateType = S) && (Ctrl)
value = 100

[State -1, バックステップ]
type = ChangeState
triggerall = (StateNo != 100)
trigger1 = (command = "BB") && (StateType = S) && (Ctrl)
value = 105

[State -1, 空中ダッシュ]
type = ChangeState
triggerall = (Pos Y < -40)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
triggerall = !(PrevStateNo = 45 && StateNo = 50)
trigger1 = (command = "FF") && (StateType = A) && (Ctrl)
value = 101

[State -1, 空中バックダッシュ]
type = ChangeState
triggerall = (Pos Y < -40)
triggerall = (StateNo != 101)
triggerall = (StateNo != 106)
triggerall = !(PrevStateNo = 45 && StateNo = 50)
trigger1 = (command = "BB") && (StateType = A) && (Ctrl)
value = 106

[State -1, スーパージャンプ]
type = ChangeState
trigger1 = (command = "super_jump") && (StateType != A) && (Ctrl)
value = 10003

;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 立ち弱パンチ]
type = ChangeState
triggerall = (command = "x") && (command != "holddown")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (AnimElemTime(3) > 1)
trigger3 = (StateNo = 400) && (AnimElemTime(2) > 1)
trigger4 = (StateNo = 430) && (AnimElemTime(3) > 1)
;■■■オリジナルコンボ■■■
trigger5 = (var(35) = 1) && (StateNo = [200,499]) && (MoveContact)
trigger6 = (var(35) = 1) && (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger7 = (var(35) = 1) && (StateNo = 1001) && (MoveContact)
trigger8 = (var(35) = 1) && (StateNo = 1005) && (MoveContact)
trigger9 = (var(35) = 1) && (StateNo = [1007,1008]) && (MoveContact)
value = 200

[State -1, 立ち強パンチ]
type = ChangeState
triggerall = (command = "y") && (command != "holddown")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 230) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
trigger5 = (StateNo = 430) && (MoveContact)
;■■■オリジナルコンボ■■■
trigger6 = (var(35) = 1) && (StateNo = [200,499]) && (MoveContact)
trigger7 = (var(35) = 1) && (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger8 = (var(35) = 1) && (StateNo = 1001) && (MoveContact)
trigger9 = (var(35) = 1) && (StateNo = 1005) && (MoveContact)
trigger10= (var(35) = 1) && (StateNo = [1007,1008]) && (MoveContact)
value = 210

[State -1, 立ち弱キック]
type = ChangeState
triggerall = (command = "a") && (command != "holddown")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (AnimElemTime(3) > 1)
trigger3 = (StateNo = 400) && (AnimElemTime(2) > 1)
trigger4 = (StateNo = 430) && (AnimElemTime(3) > 1)
;■■■オリジナルコンボ■■■
trigger5 = (var(35) = 1) && (StateNo = [200,499]) && (MoveContact)
trigger6 = (var(35) = 1) && (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger7 = (var(35) = 1) && (StateNo = 1001) && (MoveContact)
trigger8 = (var(35) = 1) && (StateNo = 1005) && (MoveContact)
trigger9 = (var(35) = 1) && (StateNo = [1007,1008]) && (MoveContact)
value = 230

[State -1, 立ち強キック]
type = ChangeState
triggerall = (command = "b") && (command != "holddown")
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 230) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
trigger5 = (StateNo = 430) && (MoveContact)
;■■■オリジナルコンボ■■■
trigger6 = (var(35) = 1) && (StateNo = [200,499]) && (MoveContact)
trigger7 = (var(35) = 1) && (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger8 = (var(35) = 1) && (StateNo = 1001) && (MoveContact)
trigger9 = (var(35) = 1) && (StateNo = 1005) && (MoveContact)
trigger10= (var(35) = 1) && (StateNo = [1007,1008]) && (MoveContact)
value = 240

;------------------------------------------------------------------------------

[State -1, しゃがみ弱パンチ]
type = ChangeState
triggerall = (command = "x") && (command = "holddown")
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (StateNo = 200) && (AnimElemTime(3) > 1)
trigger3 = (StateNo = 400) && (AnimElemTime(2) > 1)
trigger4 = (StateNo = 430) && (AnimElemTime(3) > 1)
;■■■オリジナルコンボ■■■
trigger5 = (var(35) = 1) && (StateNo = [200,499]) && (MoveContact)
trigger6 = (var(35) = 1) && (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger7 = (var(35) = 1) && (StateNo = 1001) && (MoveContact)
trigger8 = (var(35) = 1) && (StateNo = 1005) && (MoveContact)
trigger9 = (var(35) = 1) && (StateNo = [1007,1008]) && (MoveContact)
value = 400

[State -1, しゃがみ強パンチ]
type = ChangeState
triggerall = (command = "y") && (command = "holddown")
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 230) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
trigger5 = (StateNo = 430) && (MoveContact)
;■■■オリジナルコンボ■■■
trigger6 = (var(35) = 1) && (StateNo = [200,499]) && (MoveContact)
trigger7 = (var(35) = 1) && (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger8 = (var(35) = 1) && (StateNo = 1001) && (MoveContact)
trigger9 = (var(35) = 1) && (StateNo = 1005) && (MoveContact)
trigger10= (var(35) = 1) && (StateNo = [1007,1008]) && (MoveContact)
value = 410

[State -1, しゃがみ弱キック]
type = ChangeState
triggerall = (command = "a") && (command = "holddown")
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (StateNo = 200) && (AnimElemTime(3) > 1)
trigger3 = (StateNo = 400) && (AnimElemTime(2) > 1)
trigger4 = (StateNo = 430) && (AnimElemTime(3) > 1)
;■■■オリジナルコンボ■■■
trigger5 = (var(35) = 1) && (StateNo = [200,499]) && (MoveContact)
trigger6 = (var(35) = 1) && (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger7 = (var(35) = 1) && (StateNo = 1001) && (MoveContact)
trigger8 = (var(35) = 1) && (StateNo = 1005) && (MoveContact)
trigger9 = (var(35) = 1) && (StateNo = [1007,1008]) && (MoveContact)
value = 430

[State -1, しゃがみ強キック]
type = ChangeState
triggerall = (command = "b") && (command = "holddown")
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (StateNo = 200) && (MoveContact)
trigger3 = (StateNo = 230) && (MoveContact)
trigger4 = (StateNo = 400) && (MoveContact)
trigger5 = (StateNo = 430) && (MoveContact)
;■■■オリジナルコンボ■■■
trigger6 = (var(35) = 1) && (StateNo = [200,499]) && (MoveContact)
trigger7 = (var(35) = 1) && (StateNo = 1000) && (StateType != A) && (Time = [12,26])
trigger8 = (var(35) = 1) && (StateNo = 1001) && (MoveContact)
trigger9 = (var(35) = 1) && (StateNo = 1005) && (MoveContact)
trigger10= (var(35) = 1) && (StateNo = [1007,1008]) && (MoveContact)
value = 440

;------------------------------------------------------------------------------

[State -1, ジャンプ弱パンチ]
type = ChangeState
triggerall = (command = "x")
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 630) && (MoveContact)
;■■■オリジナルコンボ■■■
trigger3 = (var(35) = 1) && (StateNo = [600,699]) && (MoveContact)
trigger4 = (var(35) = 1) && (StateNo = 750) && (MoveContact)
trigger5 = (var(35) = 1) && (StateNo = 1000) && (StateType = A) && (Time = [14,22])
trigger6 = (var(35) = 1) && (StateNo = [1002,1003]) && (MoveContact)
trigger7 = (var(35) = 1) && (StateNo = 1006) && (MoveContact)
trigger8 = (var(35) = 1) && (StateNo = 1012) && (StateType = A) && (MoveContact)
value = 600

[State -1, ジャンプ強パンチ]
type = ChangeState
triggerall = (command = "y")
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600 || StateNo = 630) && (MoveContact)
;■■■オリジナルコンボ■■■
trigger3 = (var(35) = 1) && (StateNo = [600,699]) && (MoveContact)
trigger4 = (var(35) = 1) && (StateNo = 750) && (MoveContact)
trigger5 = (var(35) = 1) && (StateNo = 1000) && (StateType = A) && (Time = [14,22])
trigger6 = (var(35) = 1) && (StateNo = [1002,1003]) && (MoveContact)
trigger7 = (var(35) = 1) && (StateNo = 1006) && (MoveContact)
trigger8 = (var(35) = 1) && (StateNo = 1012) && (StateType = A) && (MoveContact)
value = 610

[State -1, ジャンプ弱キック]
type = ChangeState
triggerall = (command = "a")
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600) && (MoveContact)
;■■■オリジナルコンボ■■■
trigger3 = (var(35) = 1) && (StateNo = [600,699]) && (MoveContact)
trigger4 = (var(35) = 1) && (StateNo = 750) && (MoveContact)
trigger5 = (var(35) = 1) && (StateNo = 1000) && (StateType = A) && (Time = [14,22])
trigger6 = (var(35) = 1) && (StateNo = [1002,1003]) && (MoveContact)
trigger7 = (var(35) = 1) && (StateNo = 1006) && (MoveContact)
trigger8 = (var(35) = 1) && (StateNo = 1012) && (StateType = A) && (MoveContact)
value = 630

[State -1, ジャンプ強キック]
type = ChangeState
triggerall = (command = "b")
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (StateNo = 600 || StateNo = 630) && (MoveContact)
;■■■オリジナルコンボ■■■
trigger3 = (var(35) = 1) && (StateNo = [600,699]) && (MoveContact)
trigger4 = (var(35) = 1) && (StateNo = 750) && (MoveContact)
trigger5 = (var(35) = 1) && (StateNo = 1000) && (StateType = A) && (Time = [14,22])
trigger6 = (var(35) = 1) && (StateNo = [1002,1003]) && (MoveContact)
trigger7 = (var(35) = 1) && (StateNo = 1006) && (MoveContact)
trigger8 = (var(35) = 1) && (StateNo = 1012) && (StateType = A) && (MoveContact)
value = 640

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
triggerall = (command = "start")
trigger1 = (StateType != A) && (Ctrl)
value = 10000

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
