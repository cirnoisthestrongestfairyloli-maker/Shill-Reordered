;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;-------------------------------------------------------------------------------
;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;Abstract Reordered: the original -2 (no guard, damage armour helper, damage cap via LifeSet, projectile
;immunity helper, palette 11/12 god mode) was removed. Saitama blocks and takes damage like everyone else.
;---------------------------------------------------------------------------
[Statedef -2]

;normal-contact flag: cleared when he changes state; the hitbox helpers set it when they hit or are blocked
[State -2, AR contact reset]
type = VarSet
triggerall = !IsHelper
trigger1 = StateNo != var(45)
var(44) = 0
ignorehitpause = 1

[State -2, AR contact state]
type = VarSet
triggerall = !IsHelper
trigger1 = 1
var(45) = StateNo
ignorehitpause = 1

;=== AR BLOCKED = -8 (user, 2026-11-12) ===
;var(46): 0 nothing | 1 a normal was just blocked | 2 the opponent is in block stun | 100+n = n ticks of lock left.
;While it is set Saitama gets no control once his normal ends, until 8 ticks after the opponent's block stun ends.
;var(49) = ticks spent waiting at 1 (gives up after 12).
[State -2, AR blocked confirm]
type = VarSet
triggerall = !IsHelper
trigger1 = var(46) = 1
trigger1 = NumEnemy
trigger1 = EnemyNear, StateNo = [150, 155]
var(46) = 2
ignorehitpause = 1

[State -2, AR blocked wait]
type = VarAdd
triggerall = !IsHelper
trigger1 = var(46) = 1
var(49) = 1
ignorehitpause = 1

[State -2, AR blocked give up]
type = VarSet
triggerall = !IsHelper
trigger1 = var(46) = 1 && var(49) > 12
trigger2 = var(46) > 0 && (MoveType = H || RoundState != 2 || !NumEnemy)
var(46) = 0
ignorehitpause = 1

[State -2, AR blocked wait reset]
type = VarSet
triggerall = !IsHelper
trigger1 = var(46) != 1
var(49) = 0
ignorehitpause = 1

[State -2, AR blocked countdown]
type = VarAdd
triggerall = !IsHelper
trigger1 = var(46) > 100
var(46) = -1

[State -2, AR blocked done]
type = VarSet
triggerall = !IsHelper
trigger1 = var(46) = 100
var(46) = 0

[State -2, AR blocked stun over]
type = VarSet
triggerall = !IsHelper
trigger1 = var(46) = 2
trigger1 = NumEnemy
trigger1 = !(EnemyNear, StateNo = [150, 155])
var(46) = 108

[State -2, AR blocked lock]
type = CtrlSet
triggerall = !IsHelper
trigger1 = var(46) > 0
trigger1 = MoveType = I && Ctrl
value = 0
;=== END AR BLOCKED ===

;barrage (Normal Punches) only once per combo: var(48) is set while it runs and cleared when the opponent recovers
[State -2, AR barrage used]
type = VarSet
triggerall = !IsHelper
trigger1 = StateNo = [1050, 1052]
var(48) = 1
ignorehitpause = 1

[State -2, AR barrage reset]
type = VarSet
triggerall = !IsHelper
trigger1 = var(48)
trigger1 = StateNo != [1050, 1052]
trigger1 = !NumEnemy || EnemyNear, MoveType != H
var(48) = 0
ignorehitpause = 1

;=== AR SERIOUS ===
;fvar(20) gauge 0-3000 (3 stocks), fvar(21) a stock is armed (X), fvar(22) the current move is Serious,
;fvar(23) armour defence is set, fvar(24) enemy life last tick, fvar(25) own life last tick
[State -2, AR serious round reset]
type = VarSet
triggerall = !IsHelper
trigger1 = RoundState < 2
fvar(20) = 0
ignorehitpause = 1

[State -2, AR serious round reset armed]
type = VarSet
triggerall = !IsHelper
trigger1 = RoundState < 2
fvar(21) = 0
ignorehitpause = 1

[State -2, AR serious gain dealt]
type = VarAdd
triggerall = !IsHelper
triggerall = RoundState = 2 && NumEnemy
triggerall = fvar(22) = 0
trigger1 = EnemyNear, Life < fvar(24)
trigger1 = EnemyNear, MoveType = H
fvar(20) = (fvar(24) - EnemyNear, Life) * 2.5
ignorehitpause = 1

[State -2, AR serious gain taken]
type = VarAdd
triggerall = !IsHelper
triggerall = RoundState = 2
trigger1 = Life < fvar(25)
fvar(20) = (fvar(25) - Life) * 2
ignorehitpause = 1

[State -2, AR serious gain time]
type = VarAdd
triggerall = !IsHelper
trigger1 = RoundState = 2
trigger1 = fvar(22) = 0
fvar(20) = 0.4

[State -2, AR serious clamp]
type = VarSet
triggerall = !IsHelper
trigger1 = fvar(20) > 3000
fvar(20) = 3000
ignorehitpause = 1

[State -2, AR serious enemy life]
type = VarSet
triggerall = !IsHelper
trigger1 = NumEnemy
fvar(24) = EnemyNear, Life
ignorehitpause = 1

[State -2, AR serious own life]
type = VarSet
triggerall = !IsHelper
trigger1 = 1
fvar(25) = Life
ignorehitpause = 1

;an armed stock is spent by the next special or super: fvar(22) = 2 on its first tick, then 1
[State -2, AR serious on]
type = VarSet
triggerall = !IsHelper
triggerall = fvar(21) && fvar(22) = 0
trigger1 = stateno = 1000 || stateno = 1010 || stateno = 1020 || stateno = 1030 || stateno = [1050, 1052] || stateno = [1400, 1402] || stateno = [1600, 1601] || stateno = [1700, 1702] || stateno = [3100, 3102]
fvar(22) = 2
ignorehitpause = 1

[State -2, AR serious spend]
type = VarAdd
triggerall = !IsHelper
trigger1 = fvar(22) = 2
fvar(20) = -1000
ignorehitpause = 1

[State -2, AR serious flash]
type = PalFX
triggerall = !IsHelper
trigger1 = fvar(22) = 2
time = 12
add = 200, 120, 40
ignorehitpause = 1

[State -2, AR serious sound]
type = PlaySnd
triggerall = !IsHelper
trigger1 = fvar(22) = 2
value = 8500, 0
ignorehitpause = 1

[State -2, AR serious disarm]
type = VarSet
triggerall = !IsHelper
trigger1 = fvar(22) = 2
fvar(21) = 0
ignorehitpause = 1

[State -2, AR serious running]
type = VarSet
triggerall = !IsHelper
trigger1 = fvar(22) = 2
fvar(22) = 1
ignorehitpause = 1

[State -2, AR serious end]
type = VarSet
triggerall = !IsHelper
trigger1 = fvar(22)
trigger1 = !(stateno = 1000 || stateno = 1010 || stateno = 1020 || stateno = 1030 || stateno = [1050, 1052] || stateno = [1400, 1402] || stateno = [1600, 1601] || stateno = [1700, 1702] || stateno = [3100, 3102])
trigger2 = RoundState != 2
fvar(22) = 0
ignorehitpause = 1

;armour: hits do not interrupt the Serious move and do half damage. Throws are not armoured.
[State -2, AR serious armour]
type = HitOverride
triggerall = !IsHelper
trigger1 = fvar(22)
trigger1 = MoveType != H
attr = SCA, NA, SA, HA, NP, SP, HP
stateno = 0
keepstate = 1
slot = 0
time = 2
ignorehitpause = 1

[State -2, AR serious armour defence]
type = DefenceMulSet
triggerall = !IsHelper
trigger1 = fvar(22)
trigger1 = MoveType != H
value = 2
ignorehitpause = 1

[State -2, AR serious armour defence flag]
type = VarSet
triggerall = !IsHelper
trigger1 = fvar(22)
trigger1 = MoveType != H
fvar(23) = 1
ignorehitpause = 1

[State -2, AR serious armour defence off]
type = DefenceMulSet
triggerall = !IsHelper
trigger1 = fvar(23)
trigger1 = fvar(22) = 0 || MoveType = H
value = 1
ignorehitpause = 1

[State -2, AR serious armour defence flag off]
type = VarSet
triggerall = !IsHelper
trigger1 = fvar(23)
trigger1 = fvar(22) = 0 || MoveType = H
fvar(23) = 0
ignorehitpause = 1

[State -2, AR serious glow]
type = PalFX
triggerall = !IsHelper
trigger1 = fvar(22)
time = 2
add = 90, 30, 0
sinadd = 60, 20, 0, 20
ignorehitpause = 1

[State -2, AR serious armed pulse]
type = PalFX
triggerall = !IsHelper
trigger1 = fvar(21)
trigger1 = GameTime % 40 = 0
time = 14
add = 120, 20, 20
ignorehitpause = 1

;Abstract Reordered: mechanic meter HUD - Kuroko's MAGIC CIRCUIT bar, fill in the parry colour,
;bottom of the screen (P1 left, P2 right). Only the look changed; the meter logic is untouched.
[State -2, AR meter HUD frame P1]
type = Explod
triggerall = !IsHelper
triggerall = RoundState >= 1
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

[State -2, AR meter HUD back P1]
type = Explod
triggerall = !IsHelper
triggerall = RoundState >= 1
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

[State -2, AR meter HUD fill 7791 P1]
type = Explod
triggerall = !IsHelper
triggerall = RoundState >= 1
triggerall = TeamSide = 1
trigger1 = NumExplod(7791) = 0
trigger1 = fvar(21) = 0
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

[State -2, AR meter HUD fill 7796 P1]
type = Explod
triggerall = !IsHelper
triggerall = RoundState >= 1
triggerall = TeamSide = 1
trigger1 = NumExplod(7796) = 0
trigger1 = fvar(21) = 1
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

[State -2, AR meter HUD tick 0 P1]
type = Explod
triggerall = !IsHelper
triggerall = RoundState >= 1
triggerall = TeamSide = 1
trigger1 = NumExplod(7803) = 0
trigger1 = 1
anim = 7793
ID = 7803
pos = 70.7, GameHeight - (22)
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

[State -2, AR meter HUD tick 1 P1]
type = Explod
triggerall = !IsHelper
triggerall = RoundState >= 1
triggerall = TeamSide = 1
trigger1 = NumExplod(7813) = 0
trigger1 = 1
anim = 7793
ID = 7813
pos = 101.3, GameHeight - (22)
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

[State -2, AR meter HUD frame P2]
type = Explod
triggerall = !IsHelper
triggerall = RoundState >= 1
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

[State -2, AR meter HUD back P2]
type = Explod
triggerall = !IsHelper
triggerall = RoundState >= 1
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

[State -2, AR meter HUD fill 7791 P2]
type = Explod
triggerall = !IsHelper
triggerall = RoundState >= 1
triggerall = TeamSide = 2
trigger1 = NumExplod(7791) = 0
trigger1 = fvar(21) = 0
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

[State -2, AR meter HUD fill 7796 P2]
type = Explod
triggerall = !IsHelper
triggerall = RoundState >= 1
triggerall = TeamSide = 2
trigger1 = NumExplod(7796) = 0
trigger1 = fvar(21) = 1
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

[State -2, AR meter HUD tick 0 P2]
type = Explod
triggerall = !IsHelper
triggerall = RoundState >= 1
triggerall = TeamSide = 2
trigger1 = NumExplod(7803) = 0
trigger1 = 1
anim = 7793
ID = 7803
pos = GameWidth - (70.7), GameHeight - (22)
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

[State -2, AR meter HUD tick 1 P2]
type = Explod
triggerall = !IsHelper
triggerall = RoundState >= 1
triggerall = TeamSide = 2
trigger1 = NumExplod(7813) = 0
trigger1 = 1
anim = 7793
ID = 7813
pos = GameWidth - (101.3), GameHeight - (22)
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

[State -2, AR meter HUD off 7791]
type = RemoveExplod
triggerall = !IsHelper
trigger1 = NumExplod(7791)
trigger1 = !(fvar(21) = 0)
ID = 7791
ignorehitpause = 1

[State -2, AR meter HUD off 7796]
type = RemoveExplod
triggerall = !IsHelper
trigger1 = NumExplod(7796)
trigger1 = !(fvar(21) = 1)
ID = 7796
ignorehitpause = 1

[State -2, AR meter HUD scale 7791]
type = ModifyExplod
triggerall = !IsHelper
trigger1 = NumExplod(7791)
ID = 7791
scale = 0.5 * (ifelse((fvar(20) / 3000.0) < 0, 0, ifelse((fvar(20) / 3000.0) > 1, 1, (fvar(20) / 3000.0)))) + 0.00005, .5
ignorehitpause = 1

[State -2, AR meter HUD scale 7796]
type = ModifyExplod
triggerall = !IsHelper
trigger1 = NumExplod(7796)
ID = 7796
scale = 0.5 * (ifelse((fvar(20) / 3000.0) < 0, 0, ifelse((fvar(20) / 3000.0) > 1, 1, (fvar(20) / 3000.0)))) + 0.00005, .5
ignorehitpause = 1

;=== END AR SERIOUS ===

[Statedef -3]

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52
trigger2 = stateno = 106
value = 40, 0

[State -3, Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 40
value = 40, 1

[State -3, sound]
type = PlaySnd
triggerall = time = 1
trigger1 = stateno = 105
trigger2 = stateno = 100
value = 40,2

[State -3, Voice]
type = PlaySnd
triggerall = Time = 1 && Random <= 50
trigger1 = stateno = 40
value = 40, 3
channel = 0

[State -3, Voice dashing]
type = PlaySnd
triggerall = Time = 1 && Random <= 600
trigger1 = stateno = 100
trigger2 = stateno = 105
value = 40, 4

;this will make the character teleport when he gets hit by a combo
; [State 40, Voice]
; type = PlaySnd
; triggerall = time = 1 && Random <= 500
; trigger1 = stateno = 42
; trigger2 = stateno = 43
; value = s40,3 ;(random%2) ;+var(12)
; channel = 0

; [State -3, GetHit Snd]
; type = playsnd
; triggerall = alive && time = 1  && Random <= 500
; triggerall = stateno = 5000 || stateno = 5010
; trigger1 = gethitvar(animtype) >= 2 && random < 500
; trigger2 = gethitvar(animtype) = 1 && random < 375
; trigger3 = gethitvar(animtype) = 0 && random < 250
; value = 5000, 0 + (random % 4)
; channel = 0
; ignorehitpause = 1
; 
; [State -3, GetHit Hard Snd]
; type = playsnd
; triggerall = alive && time = 1 && Random <= 500
; trigger1 = (stateno = 5000 || stateno = 5010) && numenemy
; trigger1 = gethitvar(fall) || (enemynear, hitdefattr = SCA, SA, HA)
; trigger2 = (stateno = 5020 || stateno = 5070 || stateno = 5080)
; trigger3 = (stateno = 5050 || stateno = 5100) && (prevstateno != [5000, 5199])
; value = 5001, 0 + (random % 3)
; channel = 0
; ignorehitpause = 1

; Gethit Sounds
[State -2, PlaySnd]
type = PlaySnd
triggerall = gethitvar(damage) <= 45
triggerall = alive
trigger1 = (stateno = 5000) || (stateno = 5010) ;|| (stateno = 5020) || (stateno = 5070)
trigger1 = time = 0
trigger2 = (stateno != 5000) && (stateno != 5010); && (stateno != 5020) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
trigger3 = movetype = H && time = 0
trigger3 = stateno != [120,160]
trigger3 = stateno != [0,51]
value = 5000, random%5
volumescale = 130
channel = 0

[State -2, PlaySnd]
type = PlaySnd
triggerall = gethitvar(damage) > 45
triggerall = gethitvar(damage) <= 109
triggerall = alive
trigger1 = (stateno = 5020) || (stateno = 5070)
trigger1 = time = 0
trigger2 = (stateno != 5020) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
trigger3 = movetype = H && time = 0
trigger3 = stateno != [120,160]
trigger3 = stateno != [0,51]
value = 5000, random%3;5
volumescale = 130
channel = 0

[State -2, PlaySnd]
type = PlaySnd
triggerall = gethitvar(damage) > 109
triggerall = alive
trigger1 = (stateno = 5000) || (stateno = 5010) || (stateno = 5020) || (stateno = 5070)
trigger1 = time = 0
trigger2 = (stateno != 5000) && (stateno != 5010) && (stateno != 5020) && (stateno != 5070)
trigger2 = stateno != [120,160]
trigger2 = gethitvar(damage)
trigger3 = movetype = H && time = 0
trigger3 = stateno != [120,160]
trigger3 = stateno != [0,51]
value = 5001, random%3
volumescale = 130
channel = 0

;SND stops
[State -3]
type = StopSnd
trigger1 = stateno = [5000,5200]
channel = 3

;everytime you end your oponent with a supér move this will show up
[State -3, Super Finish]
type = Helper
triggerAll = WinKO
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = 1 && (StateNo = [1400,4999])
trigger1 = var(23) := StateNo
trigger2 = (StateNo = [1400,3099])
trigger2 = var(23) := 3000
trigger3 = (StateNo = [1500,3199])
trigger3 = var(23) := 3100
trigger4 = (StateNo = [1600,3299])
trigger4 = var(23) := 3200
trigger5 = (StateNo = [1701,3399])
trigger5 = var(23) := 3300
trigger6 = (StateNo = [3101,3499])
trigger6 = var(23) := 3400
helperType = Normal
stateNo = 8600
ID = 8600
name = "Super Finish"
posType = left
pos = 160,-120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State 8100, Floor Dust]
type = Explod
triggerall = Time = 1
trigger1 = stateno = 40
anim = 6040
sprPriority = -9
posType = P1
pos = 70, ceil(pos y)
scale = 0.4,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State -3, Landing Dust Explod]
type = Explod
triggerall = Time = 1
trigger1 = stateno = 52
;trigger2 = stateno = 106
anim = 6020
sprPriority = -3
posType = P1
scale = 0.3,0.3
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

;-------------------------------------------------------------------------------

;===============================================================================
;                             Armor controllers
;===============================================================================
[Statedef 10015]
Type = S
VelSet = 0,0
Sprpriority = 2
ctrl=0

[State a]
type=selfstate
trigger1=!ishelper
value=0
[State 1825]
type = assertspecial
trigger1 = 1
flag = invisible

[State a]
Type = Turn
trigger1 = Facing*(Parent,Facing) < 0
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State a]
type = posset
trigger1 = 1
x = root,pos x
y = root,pos y
ignorehitpause = 1

[State a]
type = changeanim
trigger1 = 1
value = root,anim
elem = root,animelemno(0)
ignorehitpause = 1

[State a]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 10016
time = 1
ignorehitpause = 1

[State a]
type = destroyself
;trigger1 = root,stateno=[120,159]
trigger1 = root,MoveType=H
;===============================================================================
[Statedef 10016]
Type = S
VelSet = 0,0
Sprpriority = 2
ctrl=0

[State a]
type=selfstate
trigger1=!ishelper
value=0
[State 1825]
type = assertspecial
trigger1 = 1
flag = invisible

[State a]
type = parentvarset
trigger1 = time = 0
var(55) = GetHitVar(damage)
ignorehitpause = 1

[State a]
Type = Turn
trigger1 = Facing*(Parent,Facing) < 0
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State a]
type = posset
trigger1 = 1
x = root,pos x
y = root,pos y
ignorehitpause = 1

[State a]
type = changeanim
trigger1 = 1
value = root,anim
elem = root,animelemno(0)
ignorehitpause = 1

[State a]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
stateno = 10016
time = 1
ignorehitpause = 1

[State a]
type = ChangeState
trigger1 = time = 1
value = 10015
ctrl = 0

[State a]
type = destroyself
;trigger1 = root,stateno=[120,159]
trigger1 = root,MoveType=H
;-------------------------------------------------------------------------------
[StateDef 60100]
ctrl=0
physics=N
velset=0
sprpriority=-5

[State 6000, Bind]
type=BindToRoot
trigger1=1
facing=1
pos=0,0

[State 30401];No Bound
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value = 0

[State 0, PosSet]  ;Set the character way below the floor so when they go to there statedef 5150 they
                          ;won't reappear on screen.
type = PosSet
trigger1 = 1
x = -8000000
y = 8000000
ignorehitpause = 1

[State 6000, Hit]
type=ChangeAnim
trigger1=SelfAnimExist(Root,Anim)
value=Root,Anim
elem=Root,AnimElemNo(0)

[State 6000, STypsetS]
type=StateTypeSet
trigger1=Root,StateType=S
StateType=S
[State 6000, STypsetC]
type=StateTypeSet
trigger1=Root,StateType=C
StateType=C
[State 6000, STypsetA]
type=StateTypeSet
trigger1=Root,StateType=A
StateType=A
[State 6000, STypsetL]
type=StateTypeSet
trigger1=Root,StateType=L
StateType=L

[State 6000, MTypsetA]
type=StateTypeSet
trigger1=Root,MoveType=A
MoveType=A
[State 6000, MTypsetI]
type=StateTypeSet
trigger1=Root,MoveType=I
MoveType=I
[State 6000, MTypsetH]
type=StateTypeSet
trigger1=Root,MoveType=H
MoveType=H

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = noshadow

[State 6000, NotHitBy]
type = NotHitBy
trigger1 = parent, var(13)>5&& parent,var(51) = 0&&parent,var(50) = 0
trigger2 = parent, var(13)>10&& parent,var(51) > 0&&parent,var(50) = 0
trigger3 = parent, var(13)>20&& parent,var(50) =1
value = SCA
ignorehitpause = 1

[State 6000, HO]
type = HitOverride
trigger1 = 1
attr = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
time = -1
stateno = 60105
ignorehitpause = 1
[State 0, destroyself]
type = destroyself
trigger1 = parent, stateno = [120,155]
trigger2 = parent,stateno = [5000,5150]
ignorehitpause = 1
;-------------------------------------------------------------------------------
[StateDef 60105]
ctrl = 0
physics = N
velset = 0
sprpriority = -5

[State 30401];No Bound
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value = 0

[State 0, PosSet]  ;Set the character way below the floor so when they go to there statedef 5150 they                          ;won't reappear on screen.
type = PosSet
trigger1 = 1
x = -8000000
y = 8000000
ignorehitpause = 1

[State 6005, PVA]
type=ParentVarAdd
trigger1=!time
var(6)=1
ignorehitpause=1
[State 6005, PVA]
type=ParentVarAdd
trigger1=!time
var(13)=1
ignorehitpause=1
[State 6005, PVS]
type = ParentVarSet
triggerall=parent,var(13)<=10 &&var(51) > 0&&parent,var(50) = 0
trigger1=1
var(20)=IfElse(GetHitVar(damage)*.4<=lifemax*0.5,GetHitVar(damage)*.5,lifemax*0.5)
ignorehitpause=1
[State 6005, PVS]
type = ParentVarSet
triggerall=parent,var(13)<=5 &&var(51) = 0&&parent,var(50) = 0
trigger1=1
var(20)=IfElse(GetHitVar(damage)*.2<=lifemax*0.2,GetHitVar(damage)*.2,lifemax*0.2)
ignorehitpause=1

[State 6005, PVS]
type = ParentVarSet
triggerall=parent,var(13)<=20 &&parent,var(50) = 1
trigger1=1
var(20)=IfElse(GetHitVar(damage)*.02<=lifemax*0.02,GetHitVar(damage)*.02,lifemax*0.02)
ignorehitpause=1

[State 6005, Change]
type = ChangeState
trigger1 = 1
value = 60100
;-------------------------------------------------------------------------------
[Statedef 75]
type = A
physics = N
movetype = I
anim = 75
sprpriority = 2
ctrl = 0

[State 75, hitoverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 75
ignorehitpause = 1
[State 75, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1
; [State 75, snd]
; type = playsnd
; trigger1 = !time && prevstateno = 75
; value = 5, 24
; channel = 1

[State 75]
type = bgpalfx
trigger1 = movehit = [1, 10]
time = 1
add = (280 -25 * movehit), (280 -25 * movehit), (280 -25 * movehit)
[State 75, drop]
type = targetdrop
trigger1 = numtarget

[State 75, bind]
type = bindtoroot
trigger1 = 1
facing = 1
time = -1
[State 75, Anim]
type = changeanim
trigger1 = 1
value = 75
[State 75, noshadow]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = noshadow

[State 75, End]
type = destroyself
trigger1 = roundstate != 2
;-------------------------------------------------------------------------------
