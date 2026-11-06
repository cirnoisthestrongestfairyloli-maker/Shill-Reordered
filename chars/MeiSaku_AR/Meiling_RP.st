;---------------------------------------------------------------------------
; Variable usage:
;-------------------------------------------------------------------
; var(1)  - Used for combo condition (updated every tick)
; var(3)  - Multihit Counter (Used in Wind Chime)
; var(4)  - Throw Dampener Flag

; var(7)  - Tiger Strength
; var(8)  - Air Dash Identifier
; var(10) - Variation Identifier (for moves with multiple versions)

; Var(33) - Juggle points 1
;   0 - state 
; Var(34) - Juggle points 2
;   0 - state 

; fvar(5) - cornerpush
; fvar(10) - Damage dampener (Raw)
; fvar(11) - Damage dampener (Final)

;---------------------------------------------------------------------------
; Lose
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, AR Sakuya on point]
type = ChangeState
trigger1 = var(47) = 1
trigger1 = !InCustomState
value = 40170
ignorehitpause = 1

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180, AR Sakuya on point]
type = ChangeState
trigger1 = var(47) = 1
trigger1 = !InCustomState
value = 40180
ignorehitpause = 1

[State 180, Generic WinQuote]
type = victoryquote
trigger1 = Time = 0
value = 1+(random%5)

[State 180, Vs Chunners Quote]
type = victoryquote
triggerall = numenemy
trigger1 = Time = 0
trigger1 = enemy,name = "Chun-Li" || enemy,name = "Chunli"
value = 6+(random%2)

[State 180, Vs Yukari Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Yukari_Yakumo" || enemy,name = "Yukari Yakumo"
trigger2 = enemy,name = "Yakumo Yukari" || enemy,name = "Yukari_RP"
value = 8+(random%3)

[State 180, Vs Lie Meiling Quote]
type = victoryquote
triggerall = numenemy
trigger1 = Time = 0
trigger1 = enemy,name = "Lie_RP" || enemy,name = "LieMeiling_RP"
value = 11+(random%3)

[State 180, Vs A Big Gay Fish Quote]
type = victoryquote
triggerall = numenemy
trigger1 = Time = 0
trigger1 = enemy,name = "Primeus"
value = 14

[State 180, Vs Reimu Quote]
type = victoryquote
triggerall = numenemy
trigger1 = Time = 0
trigger1 = enemy,name = "Reimu_RP" || enemy,name = "Reimu" || enemy,name = "Reimu_Hakurei"
value = 15+(random%3)

[State 180, Vs Alice Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Alice_RP" || enemy,name = "Alice Margatroid"
trigger2 = enemy,name = "Alice" && enemy,authorname = "Mikage"
value = 18+(random%3)

[State 180, Vs Patchouli Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Patchouli_RP" || enemy,name = "Patchouli"
trigger2 = enemy,name = "Patchouli Knowledge" || enemy,name = "Patchy"
trigger3 = enemy,name = "Patche" || enemy,name = "Patchouli_Knowledge"
value = 21+(random%3)

[State 180, Vs Cirno Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Cirno_RP" || enemy,name = "Cirno"
trigger2 = enemy,name = "Chiruno"
value = 24+(random%3)

[State 180, Vs Sakuya Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Sakuya_RP" || enemy,name = "Sakuya_K"
trigger2 = enemy,name = "Sakuya Izayoi" || enemy,name = "Izayoi Sakuya"
trigger3 = enemy,name = "Sakuya" || enemy,name = "Pads" || enemy,name = "Padio"
value = 27+(random%3)

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
value = 181+(random%2)

;---------------------------------------------------------------------------
; Win pose 1
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, AR Sakuya on point]
type = ChangeState
trigger1 = var(47) = 1
trigger1 = !InCustomState
value = 40181
ignorehitpause = 1

[State 181, PSND]
type = playsnd
trigger1 = animelemtime(4)=0
value = 181,1
channel = 0

[State 1200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 7,2

[state 1301, ES]
type = envshake
trigger1 = animelemtime(4)=0
time = 24
ampl = -8
freq = 90

[State 181, ASS]
type = assertspecial
trigger1 = time <= 90
flag = roundnotover

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 2
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, AR Sakuya on point]
type = ChangeState
trigger1 = var(47) = 1
trigger1 = !InCustomState
value = 40182
ignorehitpause = 1

[State 181, PSND]
type = playsnd
trigger1 = animelemtime(2)=0
value = 181,2
channel = 0

[state 182, ASS]
type = assertspecial
trigger1 = time < 90
flag = roundnotover

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Introduction
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 191, AR Sakuya on point]
type = ChangeState
trigger1 = var(47) = 1
trigger1 = !InCustomState
value = 40191
ignorehitpause = 1

[State 190, Vs Lie]
type = changestate ;Special Intro vs Lie Meiling
trigger1 = time = 0
trigger1 = teammode = single
trigger1 = numenemy
trigger1 = enemynear(0),teammode = single
trigger1 = enemynear(0),name = "LieMeiling_RP"
trigger1 = enemynear(0),selfanimexist(19110) ;Check for version compatability
value = 19100

[State 191, Alternate Intro]
type = changestate
trigger1 = time = 0
trigger1 = random%2=0
value = 193

[State 191, PSND]
type = playsnd
trigger1 = time = 5
value = 190,0+2*(random%2)
channel = 0

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = animtime = 0;time > 180
value = 192

;---------------------------------------------------------------------------
; Introduction
[Statedef 192]
type = S
ctrl = 0
anim = 0
velset = 0,0

[State 192, AR Sakuya on point]
type = ChangeState
trigger1 = var(47) = 1
trigger1 = !InCustomState
value = 40192
ignorehitpause = 1

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = 1;time > 180
value = 0

;---------------------------------------------------------------------------
; Introduction 2
[Statedef 193]
type = S
ctrl = 0
anim = 192
velset = 0,0
sprpriority = 0

[State 193, AR Sakuya on point]
type = ChangeState
trigger1 = var(47) = 1
trigger1 = !InCustomState
value = 40193
ignorehitpause = 1

[State 1000, Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Namazu"
ID = 6192
pos = 0,0
postype = p1
stateno = 6192
ownpal = 1
facing = 1
size.xscale = 0.5
size.yscale = 0.5

[State 6195, PSND]
type = playsnd
trigger1 = time = 60
value = 193,0
channel = 0

[State 1000, Effect]
type = helper
trigger1 = time = 90
helpertype = normal
name = "SuperLing"
ID = 6195
pos = 320,-20
postype = p1
stateno = 6195
ownpal = 0
facing = -1

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 191, 2]
type = AssertSpecial
trigger1 = time <= 90;< 120
trigger2 = numhelper(6195)
trigger2 = helper(6195),stateno != 6197
flag = invisible
flag2 = noshadow

[State 191, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 193,1
channel = 0

[State 191, 3]
type = ChangeState
trigger1 = animtime = 0
value = 192

;---------------------------------------------------------------------------
; Intro 2 - Namazu
[Statedef 6192]
anim = 6192
velset = 0,0
sprpriority = -1

[State 6192, VS]
type = varset
trigger1 = 1
fvar(0) = sin(6*time*pi/180.0)
[State 6192, VS]
type = varset
trigger1 = 1
fvar(1) = -sin(6*time*pi/180.0)

[State 3200, AD]
type = angledraw
trigger1 = 1
scale = 1.0+0.05*fvar(0),1.0+0.05*fvar(1)

[State 6192, CS]
type = changestate
trigger1 = time >= 105;120
value = 6193

;---------------------------------------------------------------------------
; Intro 2 - Namazu KO
[Statedef 6193]
physics = N
anim = 6193
velset = 0,0;-12,-6
sprpriority = -1

[State 6193, VS]
type = velset
trigger1 = time = 5
x = -12
y = -6

[State 6193, PSND]
type = playsnd
trigger1 = time = 0
value = 1,4
channel = 2

[State 6193, VA]
type = veladd
trigger1 = time > 5
y = 0.35

[State 6193, PSND]
type = playsnd
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 7,2
channel = 2
persistent = 0
[State 0, EnvShake]
type = EnvShake
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
persistent = 0
time = 60
freq = 60
ampl = -10

[State 6193, Zeeky]
type = destroyself
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)

;---------------------------------------------------------------------------
; Intro 2 - Namazu KO
[Statedef 6195]
anim = 6195;1300
velset = 16,-0.5
sprpriority = 2

[State 1001, AFI]
Type = AfterImage
Trigger1 = time = 0
Trans = Add
Time = 4
Length = 4
TimeGap = 1
FrameGap = 1
PalBright = 0,0,0
;PalContrast = 255,255,255
PalAdd = 0,0,0
PalMul = .8,.8,.8

[State 1001, DP]
Type = AfterImageTime
Trigger1 = 1
Time = 4

[State 6195, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause

[State 4000, Superportrait]
type = explod
trigger1 = time = 18
id = 8020
removetime = 14
anim = 8020+(random%2)
scale = 1,1
pos = 43,-53
postype = p1
ownpal = 1
velocity = 0,0
sprpriority = 8
removeongethit = 1
ignorehitpause = 1

[State 6195, VS]
type = velset
trigger1 = time >= 20
x = 0
y = 0

[State 6195, CS]
type = changestate
trigger1 = time >= 30
value = 6196

;---------------------------------------------------------------------------
; Intro 2 - Namazu KO
[Statedef 6196]
physics = N
anim = 6196;1300
velset = 0,-2
sprpriority = 0

[State 6196, VA]
type = veladd
trigger1 = time
y = 0.5

[State 6195, CS]
type = changestate;destroyself
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 6197

;---------------------------------------------------------------------------
; Intro 2 - Namazu KO
[Statedef 6197]
physics = N
anim = 6197
velset = 0,0
sprpriority = 0

[State 6197, PS]
type = posset
trigger1 = 1
y = 0

[State 6195, CS]
type = destroyself
trigger1 = time

;---------------------------------------------------------------------------
; Introduction - Vs Lie Meiling
[Statedef 19100]
type = S
ctrl = 0
anim = 19100
velset = 0,0

[State 191, PSND]
type = playsnd
trigger1 = time = 0
value = 5000,0
channel = 0

[State 19110, PSND]
type = playsnd
trigger1 = animelemtime(37)=0
value = 4000,2
channel = 0

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay
flag3 = nomusic
ignorehitpause = 1

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = animtime = 0;time > 180
value = 192

;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
movetype = I
physics = S
ctrl = 0
anim = 195
velset = 0,0
sprpriority = 2

[State 195, AR Sakuya on point]
type = ChangeState
trigger1 = var(47) = 1
trigger1 = !InCustomState
value = 40195
ignorehitpause = 1

[State 181, PSND]
type = playsnd
trigger1 = animelemtime(2)=0
value = 195,(random%3)
channel = 0

[State 195, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1