;===========================================================================
;†††-3 STATES†††
;===========================================================================
[statedef -3]
;---------------------------------------------------------------------------
;■マギアキャンセル結界
;装填
[state -3, varset]
type = varset
triggerall = !ishelper
trigger1 = roundstate < 2
trigger2 = playeridexist(var(15)) = 1
trigger2 = playerid(var(15)),movetype != h
var(10) = 1
;---------------------------------------------------------------------------
;■へちょキャンセル
[state -3, playsnd]
type = playsnd
trigger1 = prevstateno = 197
trigger1 = time = 1
value = 2,11

[state -3, explod]
type = explod
trigger1 = prevstateno = 197
trigger1 = time = 1
id = 25800
anim = 25800
postype = p1
pos = 0,0
sprpriority = 5
ownpal = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)

[state -3, bgpalfx]
type = bgpalfx
trigger1 = prevstateno = 197
trigger1 = time = 1
time = 6
add = var(21),var(22),var(23)
;invertall = 1
;---------------------------------------------------------------------------
;■アローエフェクト
[state -3, removeexplod]
type = removeexplod
trigger1 = stateno != [1000,5000]
id = 24000
;---------------------------------------------------------------------------
;■バミリ固定
[state -3, nothitby]
type = nothitby
trigger1 = roundstate < 2
value = sca,aa

[state -3, playerpush]
type = playerpush
trigger1 = roundstate < 2
value = 0

[state -3, playerpush]
type = playerpush
trigger1 = roundstate > 2
trigger1 = stateno < 40
value = 0
;---------------------------------------------------------------------------
;■ターゲット管理
[state -3, targetdrop]
type = targetdrop
trigger1 = numtarget > 1
trigger1 = movehit = 1
trigger1 = hitdefattr = sca,aa
excludeid = stateno
ignorehitpause = 1
;---------------------------------------------------------------------------
;■コンボ制限
[state -3, varset]
type = varset
trigger1 = var(13) < 2
trigger1 = stateno = [400,499]
trigger1 = movehit
trigger1 = playeridexist(var(15))
trigger1 = playerid(var(15)),statetype != a
var(13) = 1

[state -3, varset]
type = varset
triggerall = var(13) = 1
trigger1 = statetype != a
var(13) = 2

[state -3, varset]
type = varset
trigger1 = playeridexist(var(15))
trigger1 = playerid(var(15)),movetype != h
var(13) = 0
;---------------------------------------------------------------------------
;■コンボヒットカウンタ≒補正係数
[state -3, varset]
type = varset
trigger1 = playeridexist(var(15))
trigger1 = playerid(var(15)),movetype != h
trigger2 = var(15) = 0
var(14) = 0

[state -3, varadd]
type = varadd
trigger1 = movecontact = 1
var(14) = 1
;---------------------------------------------------------------------------
;■汎用コンボはめ制限


;---------------------------------------------------------------------------
;■コンボ補正値
[state -3, varset]
type = varset
trigger1 = var(14) < 100
fvar(1) = 1   ;Abstract Reordered: global scaling handles this

[state -3, varset]
type = varset
trigger1 = var(14) >= 100
fvar(1) = 1
;---------------------------------------------------------------------------
;■パワー補正値
[state -3, varset]
type = varset
trigger1 = roundstate = 2
fvar(2) = 1.0+(lifemax-life)*0.0005

[state -3, varset]
type = varset
trigger1 = roundstate = 2
trigger1 = numenemy
fvar(3) = 1.0+(life-enemynear,life)*0.0005
;---------------------------------------------------------------------------
;■リジェネ
[state -3, lifeadd]
type = lifeadd
trigger1 = alive = 1
trigger1 = var(1) > 0
trigger1 = var(2)%18 = 0   ;Abstract Reordered: was %6 (300 life total), now 100 over the same 30 s
trigger1 = movetype != h
value = 1
ignorehitpause = 1

[state -3, varadd]
type = varadd
trigger1 = alive = 1
trigger1 = var(1) > 0
trigger1 = var(2)%6 = 0
var(1) = -1
ignorehitpause = 1

[state -3, explod]
type = explod
trigger1 = var(1) > 0
trigger1 = var(2)%90 = 0
trigger1 = movetype != h
id = 25500
anim = 25500
postype = p1
pos = 0,-floor(const(size.yscale)*30)
random = 30,30
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
ignorehitpause = 1

[state -3, explod]
type = explod
trigger1 = var(1) > 0
trigger1 = var(2)%90 = 30
trigger1 = movetype != h
id = 25501
anim = 25500
postype = p1
pos = floor(const(size.xscale)*30),-floor(const(size.yscale)*30)
random = 30,30
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
ignorehitpause = 1

[state -3, explod]
type = explod
trigger1 = var(1) > 0
trigger1 = var(2)%90 = 60
trigger1 = movetype != h
id = 25502
anim = 25500
postype = p1
pos = -floor(const(size.xscale)*30),-floor(const(size.yscale)*30)
random = 30,30
ontop = 1
ownpal = 1
bindtime = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
ignorehitpause = 1
;---------------------------------------------------------------------------
;■敵情報取得
[state -3, varset]
type = varset
triggerall = !ishelper
trigger1 = var(15) = 0
trigger1 = numenemy
trigger1 = enemynear,alive
var(15) = enemynear,id

[state -3, varset]
type = varset
triggerall = !ishelper
trigger1 = numtarget
var(15) = target,id

[state -3, varset]
type = varset
triggerall = !ishelper
trigger1 = roundstate = 2
trigger1 = numenemy > 1
trigger1 = playeridexist(var(15))
trigger1 = playerid(var(15)),alive = 0
var(15) = 0

[state -3, varset]
type = varset
triggerall = !ishelper
trigger1 = playeridexist(var(15))
var(16) = ceil(playerid(var(15)),pos x)

[state -3, varset]
type = varset
triggerall = !ishelper
trigger1 = playeridexist(var(15))
var(17) = ceil(playerid(var(15)),pos y)

[state -3, varset]
type = varset
triggerall = !ishelper
trigger1 = numtarget = 1
var(18) = target,id

[state -3, varset]
type = varset
triggerall = !ishelper
triggerall = numenemy > 1
trigger1 = uniqhitcount = 2
trigger2 = numtarget(stateno) = 2
var(18) = enemynear(0),id

[state -3, varset]
type = varset
triggerall = !ishelper
triggerall = numenemy > 1
trigger1 = uniqhitcount = 2
trigger2 = numtarget(stateno) = 2
var(19) = enemynear(1),id

[state -3, varset]
type = varset
triggerall = !ishelper
trigger1 = ctrl = 1
var(18) = 0

[state -3, varset]
type = varset
triggerall = !ishelper
trigger1 = ctrl = 1
var(19) = 0
;---------------------------------------------------------------------------
;■味方情報取得
[state -3, varset]
type = varset
trigger1 = numpartner
var(30) = partner,stateno
;---------------------------------------------------------------------------
;■リバーサル入力予約
[state -3, varset]
type = null
triggerall = var(50) = 0
triggerall = statetype = l
trigger1 = power >= 1000
trigger1 = command = "rapid1" || command = "rapid2" || command = "rapid3"
trigger1 = var(0) := 3000	;■ラピッドファイアアロー
trigger2 = power >= 1000
trigger2 = var(1) = 0
trigger2 = command = "msg1" || command = "msg2" || command = "msg3"
trigger2 = var(0) := 3200	;■ゴッズメッセージ
trigger3 = power >= 3000
trigger3 = command = "r-star"
trigger3 = var(0) := 3300	;■レイジングスター
trigger4 = power >= 3000
trigger4 = command = "ascension" 
trigger4 = var(0) := 3500	;■トーラスアセンション
trigger5 = command = "luna1" || command = "luna2" || command = "luna3"
trigger5 = var(0) := 1200	;■ルナティックシャフト
trigger6 = command = "arrow1" || command = "arrow2" || command = "arrow3"
trigger6 = var(0) := 1000	;■マジカルアロー
trigger7 = command = "squall1" || command = "squall2" || command = "squall3"
trigger7 = var(0) := 1100	;■ブラストスコール
trigger8 = command = "ff"
trigger8 = var(0) := 100	;■ダッシュ
trigger9 = command = "bb"
trigger9 = var(0) := 105	;■バックステップ
trigger10 = command = "holdup"
trigger10 = var(0) := 40	;■ジャンプ
;trigger11 = var(40) = 1
;trigger11 = power >= 2000
;trigger11 = command = "luminous"
;trigger11 = var(0) := 4000	;■ルミナスワールドエンド（未使用）

;■コマンド格納予約
[state -3, varset]
type = null
triggerall = var(50) = 0
triggerall = statetype = l
trigger1 = command = "rapid1" || command = "msg1" || command = "luna1" || command = "arrow1" || command = "squall1"
trigger1 = var(6) := 1
trigger2 = command = "rapid2" || command = "msg2" || command = "luna2" || command = "arrow2" || command = "squall2"
trigger2 = var(6) := 2
trigger3 = command = "rapid3" || command = "msg3" || command = "luna3" || command = "arrow3" || command = "squall3"
trigger3 = var(6) := 3
;---------------------------------------------------------------------------
;■変数のリセット
;□システム補助
[state -3, varset]
type = varset
triggerall = !ishelper
trigger1 = statetype != l
var(0) = 0

[state -3, varset]
type = varset
trigger1 = ctrl
var(5) = 0

[state -3, varset]
type = varset
trigger1 = ctrl
var(6) = 0

[state -3, varset]
type = varset
trigger1 = ctrl
var(7) = 0
;---------------------------------------------------------------------------
;■システム
;□着地
[state -3, varset]
type = varset
trigger1 = movehit
trigger2 = movetype = h
trigger2 = statetype = a
sysvar(2) = 0

;□空中制御
[state -3, varset]
type = varset
trigger1 = statetype != a 
trigger1 = ctrl
trigger2 = roundstate = 1
sysvar(3) = 1

[state -3, varadd]
type = varadd
trigger1 = stateno = [110,115]
trigger1 = time = 1
sysvar(3) = -1

[state -3, varadd]
type = varadd
trigger1 = stateno = 45
trigger1 = time = 1
sysvar(3) = -1

;□ハイジャンプ（未使用）
[state -3, varset]
type = varset
trigger1 = roundstate = 1
trigger2 = statetype != a 
trigger2 = ctrl
trigger3 = stateno = 52
sysvar(4) = 0

[state -3, varset]
type = varset
trigger1 = stateno = 60
sysvar(4) = 1
;---------------------------------------------------------------------------
;■表示優先度
[state -3, sprpriority]
type = sprpriority
trigger1 = !ishelper
trigger1 = movetype != h
value = 3;ちっちゃいので

[state -3, sprpriority]
type = sprpriority
trigger1 = !ishelper
trigger1 = movetype = h
value = -1-(alive=0)*2
;---------------------------------------------------------------------------
;■端
[state -3, width]
type = width
trigger1 = statetype = a
trigger1 = movetype != h
edge = -1-(2**9!=512),-1-(2**9!=512)
ignorehitpause = 1
