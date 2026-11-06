;===========================================================================
;†††-2 STATES†††
;===========================================================================
[statedef -2]
;---------------------------------------------------------------------------
;■フリータイマー
[state -2, varadd]
type = varadd
trigger1 = roundstate > 1
var(2) = 1
ignorehitpause = 1
;---------------------------------------------------------------------------
;■バイタリティ監視
[state -2, varset]
type = varset
trigger1 = roundstate <= 3
var(3) = life
;---------------------------------------------------------------------------
;■放置バグ回避
[state -2, selfstate]
type = selfstate
trigger1 = anim = 0
trigger1 = stateno = 0
trigger1 = prevstateno != 0
trigger1 = ctrl
trigger1 = time > 10
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;■挑発ボイス（監視）
[state -2, playsnd]
type = playsnd
trigger1 = alive
trigger1 = anim = 195
trigger1 = animelemtime(3) = 0
value = 10,90
channel = 0
;---------------------------------------------------------------------------
;■ダメージボイス
[state -2, playsnd]
type = playsnd
trigger1 = alive = 1
trigger1 = time = 3
trigger1 = roundstate = 2
trigger1 = movetype = h
trigger1 = random < 500
trigger1 = (stateno != [150,155])
trigger1 = (stateno != [5100,5120]) && (stateno != 5001) && (stateno != 5011)
trigger1 = (stateno != 5030) && (stateno != 5035) && (stateno != 5040) && (stateno != 5050)
trigger1 = (stateno != 5071) && (stateno != 5200) && (stateno != 5201) && (stateno != 5210)
trigger1 = (anim != 5120) && (anim != 9020) && (anim != [66660,66662]) && (anim != 100327)
value = 11,1+floor(random/334);;0-2
channel = 11
lowpriority = 1
;---------------------------------------------------------------------------
;■KOボイス
[state -2, varset]
type = varset
trigger1 = alive = 1
trigger1 = var(20) != 0
var(20) = 0

[state -2, varadd]
type = varadd
trigger1 = alive = 0
trigger1 = var(20) < 3
var(20) = 1
ignorehitpause = 1

[state -2, playsnd]
type = playsnd
trigger1 = alive = 0
trigger1 = var(20) = 2
value = 11,20
channel = 11
ignorehitpause = 1
;---------------------------------------------------------------------------
;■ワールドエンド発動待機
[state -2, helper]
type = helper
triggerall = numhelper(15000) = 0
triggerall = roundstate = 2
triggerall = var(2) >= 10
triggerall = var(40) = 0
triggerall = var(41) = 1
triggerall = var(45) = 1
trigger1 = ctrl
name = "hikari"
id = 15000
stateno = 15000
postype = front
pos = -160,0
facing = facing
pausemovetime = 3
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal = 1

[state -2, palfx]
type = palfx
trigger1 = numhelper(15000) = 1
trigger1 = helper(15000),time = 1
time = 180
sinadd = 100,100,100,360
ignorehitpause = 1
persistent = 0

[state -2, varset]
type = varset
triggerall = var(45) = 1
triggerall = roundstate = 2
trigger1 = numpartner
trigger1 = life + partner,life < (lifemax + partner,lifemax)/2
var(41) = 1
ignorehitpause = 1

[state -2, varrangeset]
type = varrangeset
trigger1 = roundstate < 2
value = 0
first = 40
last = 41
;===========================================================================
;Abstract Reordered: Hope gauge (var(24), 0-100, 2 stocks of 50). Her hits fill it:
;+3 per normal hit, +5 per special hit, +1 when blocked, nothing during supers.
;var(25) = armed (X spent 50), var(26) = last combo count, var(27) = this special is powered.
[state -2, AR hope round reset]
type = varrangeset
trigger1 = !ishelper
trigger1 = roundstate < 2
value = 0
first = 24
last = 27

[state -2, AR hope gain]
type = varadd
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = var(14) > var(26)
triggerall = numenemy
trigger1 = stateno < 3000 || stateno >= 5000
var(24) = (var(14) - var(26)) * ifelse((enemynear,stateno >= 150) && (enemynear,stateno <= 155), 1, ifelse((stateno >= 1000) && (stateno < 2000), 5, 3))
ignorehitpause = 1

[state -2, AR hope combo count]
type = varset
trigger1 = !ishelper
var(26) = var(14)
ignorehitpause = 1

[state -2, AR hope cap]
type = varset
trigger1 = !ishelper
trigger1 = var(24) > 100
var(24) = 100
ignorehitpause = 1

[state -2, AR hope floor]
type = varset
trigger1 = !ishelper
trigger1 = var(24) < 0
var(24) = 0
ignorehitpause = 1

[state -2, AR hope lost on hit]
type = varset
trigger1 = !ishelper
trigger1 = var(25) = 1
trigger1 = movetype = h
trigger1 = (stateno < 150) || (stateno > 155)
var(25) = 0
ignorehitpause = 1

[state -2, AR hope powered off]
type = varset
trigger1 = !ishelper
trigger1 = (stateno < 1000) || (stateno > 1301)
var(27) = 0
ignorehitpause = 1

[state -2, AR hope armed glow]
type = palfx
trigger1 = !ishelper
trigger1 = var(25) = 1
trigger1 = movetype != h
time = 2
add = 50,0,40
sinadd = 50,15,45,40
ignorehitpause = 1

;Abstract Reordered: mechanic meter HUD - Kuroko's MAGIC CIRCUIT bar, fill in the parry colour,
;bottom of the screen (P1 left, P2 right). Only the look changed; the meter logic is untouched.
[state -2, AR meter HUD frame P1]
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

[state -2, AR meter HUD back P1]
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

[state -2, AR meter HUD fill 7791 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7791) = 0
trigger1 = 1
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

[state -2, AR meter HUD tick 0 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7803) = 0
trigger1 = 1
anim = 7793
ID = 7803
pos = 86.0, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 13
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[state -2, AR meter HUD icon 7797 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7797) = 0
trigger1 = var(25) = 0
anim = 9616
ID = 7797
pos = 19, GameHeight - (20)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[state -2, AR meter HUD icon 7798 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7798) = 0
trigger1 = var(25) = 1
anim = 9617
ID = 7798
pos = 19, GameHeight - (20)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[state -2, AR meter HUD frame P2]
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

[state -2, AR meter HUD back P2]
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

[state -2, AR meter HUD fill 7791 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7791) = 0
trigger1 = 1
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

[state -2, AR meter HUD tick 0 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7803) = 0
trigger1 = 1
anim = 7793
ID = 7803
pos = GameWidth - (86.0), GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 13
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[state -2, AR meter HUD icon 7797 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7797) = 0
trigger1 = var(25) = 0
anim = 9616
ID = 7797
pos = GameWidth - (19), GameHeight - (20)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[state -2, AR meter HUD icon 7798 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7798) = 0
trigger1 = var(25) = 1
anim = 9617
ID = 7798
pos = GameWidth - (19), GameHeight - (20)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[state -2, AR meter HUD off 7797]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7797)
trigger1 = !(var(25) = 0)
ID = 7797
ignorehitpause = 1

[state -2, AR meter HUD off 7798]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7798)
trigger1 = !(var(25) = 1)
ID = 7798
ignorehitpause = 1

[state -2, AR meter HUD scale 7791]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(7791)
ID = 7791
scale = 0.5 * (ifelse((var(24) / 100.0) < 0, 0, ifelse((var(24) / 100.0) > 1, 1, (var(24) / 100.0)))) + 0.00005, .5
ignorehitpause = 1

;===========================================================================
;■デバッグ表示
[state -2, displaytoclipboard];■default
type = displaytoclipboard
trigger1 = !ishelper
text = "combo: %d / bdistx: %d / bdisty: %d / pos y: %d/ v7: %d\n"
params = var(14),floor(p2bodydist x),floor(p2bodydist y),pos y,var(7)

[state -2, appendtoclipboard]
type = appendtoclipboard
trigger1 = !ishelper
text = "mode: %d / g-cancel: %d / m-limit: %d / p2a: %d / prev: %d\n"
params = var(53),var(55),var(56),var(49),prevstateno

[state -2, appendtoclipboard]
type = appendtoclipboard
trigger1 = !ishelper
trigger1 = var(45) != 0
text = "combo: %d / w-end: %d / flag: %d / hom: %d\n"
params = var(14),var(40),var(41),var(45)

