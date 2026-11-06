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
trigger1 = animelemtime(6) = 0
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
;■起き上がりボイス用
[state -2, varrandom]
type = varrandom
trigger1 = anim = 5120
v = 5
range = 11+(var(11)=[100,300])*4,14+(var(11)=[100,300])*4
ignorehitpause = 1
;---------------------------------------------------------------------------
;■起き上がりに強がりを言う
[state -2, playsnd]
type = playsnd
trigger1 = time = 1
trigger1 = stateno = 5120
trigger1 = random < 500+(life<lifemax*0.6)*200
value = 11,var(5)
channel = 0
;---------------------------------------------------------------------------
;■ヤミ化
[state -2, helper]
type = helper
triggerall = 0   ;Abstract Reordered: dark form only through the Despair install (X)
triggerall = numhelper(15000) = 0
triggerall = (var(41)+var(42)+var(43)+var(44)+var(45)) >= 3
triggerall = roundstate = 2
triggerall = var(2) >= 10
trigger1 = ctrl
name = "dark"
id = 15000
stateno = 15000
postype = front
pos = (0) - GameWidth/2,0
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
sinadd = -200,-200,-200,360
ignorehitpause = 1
persistent = 0

[state -2, varset]
type = varset
triggerall = var(40) = 0
trigger1 = var(46)
var(41) = floor(var(46)/100)
ignorehitpause = 1

[state -2, varset]
type = varset
trigger1 = var(40) != 0
trigger1 = ctrl
var(46) = 0
ignorehitpause = 1

[state -2, varset]
type = varset
triggerall = var(40) = 0
trigger1 = life < floor(lifemax/3)
var(42) = 1
ignorehitpause = 1

[state -2, varset]
type = varset
triggerall = var(40) = 0
trigger1 = roundstate < 2
trigger1 = var(42) = 1
var(42) = 0
ignorehitpause = 1

[state -2, varset]
type = varset
triggerall = var(40) = 0
triggerall = numenemy
triggerall = enemynear,movetype != h
trigger1 = enemynear,stateno >= 2000
trigger1 = statetype != l
trigger1 = movetype = h
trigger1 = stateno != [120,155]
trigger1 = prevstateno != [120,155]
trigger1 = time < 2
trigger2 = enemynear,hitdefattr = sca,ha,ht,hp	;機能しないので
trigger2 = enemynear,movehit
var(43) = 1
ignorehitpause = 1

[state -2, varset]
type = varset
triggerall = var(40) = 0
trigger1 = alive = 0
trigger2 = lose
var(44) = 1
ignorehitpause = 1

[state -2, varset]
type = varset
triggerall = var(40) = 0
trigger1 = numpartner
trigger1 = partner,alive = 0
var(45) = 1
ignorehitpause = 1

[state -2, varset]
type = varset
trigger1 = roundstate < 2
trigger1= var(40) = 2
var(46) = 150
ignorehitpause = 1

[state -2, varset]
type = varset
trigger1 = roundstate < 2
trigger1= var(40) = 1
var(46) = 50
ignorehitpause = 1

[state -2, varset]
type = varset
trigger1 = roundstate < 2
trigger1 = time > 2
trigger1= var(40) != 0
var(40) = 0
ignorehitpause = 1
;===========================================================================
;■デバッグ表示
[state -2, displaytoclipboard];■
type = null;displaytoclipboard
trigger1 = 1
text = "over magic: %d / danger: %d / wound: %d / lose: %d / friend dead: %d\n"
params = var(41),var(42),var(43),var(44),var(45)

[state -2, appendtoclipboard];■
type = null;appendtoclipboard
trigger1 = 1
text = "enemy code: %d / partner code: %d / last target: %d / karma: %d / dark: %d"
params = var(11),var(12),var(15),var(46),var(40)

[state -2, displaytoclipboard]
type = displaytoclipboard
trigger1 = 1
text = "jump: %d / pos y: %d / bdistx: %d / bdisty: %d / fdist: %d\n"
params = sysvar(3),floor(pos y),floor(p2bodydist x),floor(p2bodydist y),floor(frontedgedist)

[state -2, appendtoclipboard]
type = appendtoclipboard
trigger1 = 1
text = "mode: %d / regen: %d / m-limit: %d / hit: %d / prev: %d\n"
params = var(53),var(1),var(56),var(14),prevstateno

;===========================================================================
; Abstract Reordered: X mechanic
;   Before she has lost a round: Regeneration (hold X, state 7770 in sayaka_AR.cns).
;   Once she loses a round (var(39), kept for the rest of the match): Despair gauge (fvar(5), 0..1000).
;   Every later round starts at 10%. It fills from damage taken (x3 per point) and blocked hits (+15).
;   Full + X = Despair install (state 7780): dark form for 12 s (var(38)), +25% damage, Affettuoso,
;   drains about 10% of her life (never KOs her).
;===========================================================================
[state -2, AR despair new match]
type = VarSet
triggerall = !ishelper
trigger1 = RoundNo = 1
trigger1 = RoundState < 2
var(39) = 0

[state -2, AR despair lost a round]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState >= 3
trigger1 = Lose
var(39) = 1
ignorehitpause = 1

[state -2, AR despair round start]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
fvar(5) = ifelse(var(39), 100, 0)

[state -2, AR despair round start timer]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(38) = 0

[state -2, AR despair fill (damage)]
type = VarAdd
triggerall = !ishelper
triggerall = var(39) = 1
triggerall = var(38) = 0
triggerall = RoundState = 2
trigger1 = Life < var(8)
fvar(5) = (var(8) - Life) * 3
ignorehitpause = 1

[state -2, AR despair fill (block)]
type = VarAdd
triggerall = !ishelper
triggerall = var(39) = 1
triggerall = var(38) = 0
triggerall = RoundState = 2
trigger1 = stateno = 150 || stateno = 152 || stateno = 154
trigger1 = Time = 0
fvar(5) = 15

[state -2, AR despair clamp]
type = VarSet
triggerall = !ishelper
trigger1 = fvar(5) > 1000
fvar(5) = 1000
ignorehitpause = 1

[state -2, AR despair last life]
type = VarSet
triggerall = !ishelper
trigger1 = 1
var(8) = Life
ignorehitpause = 1

[state -2, AR install end]
type = VarSet
triggerall = !ishelper
trigger1 = var(38) = 1
var(40) = 0

[state -2, AR install end gauge]
type = VarSet
triggerall = !ishelper
trigger1 = var(38) = 1
fvar(5) = 0

[state -2, AR install timer]
type = VarAdd
triggerall = !ishelper
trigger1 = var(38) > 0
trigger1 = RoundState = 2
var(38) = -1

[state -2, AR install gauge drains]
type = VarSet
triggerall = !ishelper
trigger1 = var(38) > 0
fvar(5) = var(38) * 1000.0 / 720

[state -2, AR install life drain]
type = LifeAdd
triggerall = !ishelper
trigger1 = var(38) > 0
trigger1 = var(38) % 8 = 0
trigger1 = RoundState = 2
trigger1 = Life > 1
value = -1
kill = 0
absolute = 1

[state -2, AR install damage up]
type = AttackMulSet
triggerall = !ishelper
trigger1 = var(38) > 0
value = 1.25
ignorehitpause = 1

[state -2, AR install damage normal]
type = AttackMulSet
triggerall = !ishelper
trigger1 = var(38) = 0
value = 1
ignorehitpause = 1

[state -2, AR install aura]
type = PalFX
triggerall = !ishelper
trigger1 = var(38) > 0
trigger1 = var(38) % 40 = 0
time = 40
add = -30, -40, 20
sinadd = 30, 20, 50, 40
ignorehitpause = 1

[state -2, AR regen circle off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = stateno != 7770
trigger1 = NumExplod(7770)
ID = 7770
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
trigger1 = var(39) = 0 || (var(39) = 1 && var(38) = 0 && fvar(5) < 1000)
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

[state -2, AR meter HUD fill 7795 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7795) = 0
trigger1 = var(39) = 1 && var(38) = 0 && fvar(5) >= 1000
anim = 7795
ID = 7795
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

[state -2, AR meter HUD fill 7796 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7796) = 0
trigger1 = var(39) = 1 && var(38) > 0
anim = 7796
ID = 7796
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

[state -2, AR meter HUD icon 7797 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7797) = 0
trigger1 = var(39) = 0
anim = 9610
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
trigger1 = var(39) = 1
anim = 9611
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
trigger1 = var(39) = 0 || (var(39) = 1 && var(38) = 0 && fvar(5) < 1000)
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

[state -2, AR meter HUD fill 7795 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7795) = 0
trigger1 = var(39) = 1 && var(38) = 0 && fvar(5) >= 1000
anim = 7795
ID = 7795
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

[state -2, AR meter HUD fill 7796 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7796) = 0
trigger1 = var(39) = 1 && var(38) > 0
anim = 7796
ID = 7796
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

[state -2, AR meter HUD icon 7797 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7797) = 0
trigger1 = var(39) = 0
anim = 9610
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
trigger1 = var(39) = 1
anim = 9611
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

[state -2, AR meter HUD off 7791]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7791)
trigger1 = !(var(39) = 0 || (var(39) = 1 && var(38) = 0 && fvar(5) < 1000))
ID = 7791
ignorehitpause = 1

[state -2, AR meter HUD off 7795]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7795)
trigger1 = !(var(39) = 1 && var(38) = 0 && fvar(5) >= 1000)
ID = 7795
ignorehitpause = 1

[state -2, AR meter HUD off 7796]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7796)
trigger1 = !(var(39) = 1 && var(38) > 0)
ID = 7796
ignorehitpause = 1

[state -2, AR meter HUD off 7797]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7797)
trigger1 = !(var(39) = 0)
ID = 7797
ignorehitpause = 1

[state -2, AR meter HUD off 7798]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7798)
trigger1 = !(var(39) = 1)
ID = 7798
ignorehitpause = 1

[state -2, AR meter HUD scale 7791]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(7791)
ID = 7791
scale = 0.5 * (ifelse((ifelse(var(39) = 0, (RedLife - Life) / (LifeMax * 0.25), fvar(5) / 1000.0)) < 0, 0, ifelse((ifelse(var(39) = 0, (RedLife - Life) / (LifeMax * 0.25), fvar(5) / 1000.0)) > 1, 1, (ifelse(var(39) = 0, (RedLife - Life) / (LifeMax * 0.25), fvar(5) / 1000.0))))) + 0.00005, .5
ignorehitpause = 1

[state -2, AR meter HUD scale 7795]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(7795)
ID = 7795
scale = 0.5 * (1) + 0.00005, .5
ignorehitpause = 1

[state -2, AR meter HUD scale 7796]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(7796)
ID = 7796
scale = 0.5 * (ifelse((fvar(5) / 1000.0) < 0, 0, ifelse((fvar(5) / 1000.0) > 1, 1, (fvar(5) / 1000.0)))) + 0.00005, .5
ignorehitpause = 1

;Abstract Reordered: the background stays inverted for the whole Despair install
;(not during Affettuoso, which has its own background effects)
[state -2, AR install background inverted]
type = BGPalFX
triggerall = !ishelper
trigger1 = var(38) > 0
trigger1 = RoundState = 2
trigger1 = stateno != [3400,3499]
time = var(38)
invertall = 1
ignorehitpause = 1

[state -2, AR install background reset]
type = BGPalFX
triggerall = !ishelper
trigger1 = RoundState = 0
time = 1

;Abstract Reordered: ground 236A / 236C pull the opponent all the way back to her (she dashes through them)
[state -2, AR oratorio pull 1010 target x]
type = VarSet
triggerall = !ishelper
triggerall = stateno = 1010 || stateno = 1070 || stateno = 1090 || stateno = 1095
triggerall = NumTarget(1010)
triggerall = target(1010), MoveType = H
triggerall = target(1010), StateType = A
trigger1 = 1
var(9) = target(1010), Pos X
ignorehitpause = 1

[state -2, AR oratorio pull 1010 distance]
type = VarSet
triggerall = !ishelper
triggerall = stateno = 1010 || stateno = 1070 || stateno = 1090 || stateno = 1095
triggerall = NumTarget(1010)
triggerall = target(1010), MoveType = H
triggerall = target(1010), StateType = A
trigger1 = 1
var(9) = ceil(Pos X) - var(9)
ignorehitpause = 1

[state -2, AR oratorio pull 1010 their facing]
type = VarSet
triggerall = !ishelper
triggerall = stateno = 1010 || stateno = 1070 || stateno = 1090 || stateno = 1095
triggerall = NumTarget(1010)
triggerall = target(1010), MoveType = H
triggerall = target(1010), StateType = A
trigger1 = 1
var(54) = target(1010), facing
ignorehitpause = 1

[state -2, AR oratorio pull 1010]
type = TargetVelSet
triggerall = !ishelper
triggerall = stateno = 1010 || stateno = 1070 || stateno = 1090 || stateno = 1095
triggerall = NumTarget(1010)
triggerall = target(1010), MoveType = H
triggerall = target(1010), StateType = A
trigger1 = abs(var(9)) > 24
x = ifelse(var(9) > 400, 400, ifelse(var(9) < -400, -400, var(9))) * 0.16 * var(54)
id = 1010
ignorehitpause = 1

[state -2, AR oratorio pull 1010 arrived]
type = TargetVelSet
triggerall = !ishelper
triggerall = stateno = 1010 || stateno = 1070 || stateno = 1090 || stateno = 1095
triggerall = NumTarget(1010)
triggerall = target(1010), MoveType = H
triggerall = target(1010), StateType = A
trigger1 = abs(var(9)) <= 24
x = 0
id = 1010
ignorehitpause = 1

[state -2, AR oratorio pull 1070 target x]
type = VarSet
triggerall = !ishelper
triggerall = stateno = 1010 || stateno = 1070 || stateno = 1090 || stateno = 1095
triggerall = NumTarget(1070)
triggerall = target(1070), MoveType = H
triggerall = target(1070), StateType = A
trigger1 = 1
var(9) = target(1070), Pos X
ignorehitpause = 1

[state -2, AR oratorio pull 1070 distance]
type = VarSet
triggerall = !ishelper
triggerall = stateno = 1010 || stateno = 1070 || stateno = 1090 || stateno = 1095
triggerall = NumTarget(1070)
triggerall = target(1070), MoveType = H
triggerall = target(1070), StateType = A
trigger1 = 1
var(9) = ceil(Pos X) - var(9)
ignorehitpause = 1

[state -2, AR oratorio pull 1070 their facing]
type = VarSet
triggerall = !ishelper
triggerall = stateno = 1010 || stateno = 1070 || stateno = 1090 || stateno = 1095
triggerall = NumTarget(1070)
triggerall = target(1070), MoveType = H
triggerall = target(1070), StateType = A
trigger1 = 1
var(54) = target(1070), facing
ignorehitpause = 1

[state -2, AR oratorio pull 1070]
type = TargetVelSet
triggerall = !ishelper
triggerall = stateno = 1010 || stateno = 1070 || stateno = 1090 || stateno = 1095
triggerall = NumTarget(1070)
triggerall = target(1070), MoveType = H
triggerall = target(1070), StateType = A
trigger1 = abs(var(9)) > 24
x = ifelse(var(9) > 400, 400, ifelse(var(9) < -400, -400, var(9))) * 0.16 * var(54)
id = 1070
ignorehitpause = 1

[state -2, AR oratorio pull 1070 arrived]
type = TargetVelSet
triggerall = !ishelper
triggerall = stateno = 1010 || stateno = 1070 || stateno = 1090 || stateno = 1095
triggerall = NumTarget(1070)
triggerall = target(1070), MoveType = H
triggerall = target(1070), StateType = A
trigger1 = abs(var(9)) <= 24
x = 0
id = 1070
ignorehitpause = 1

