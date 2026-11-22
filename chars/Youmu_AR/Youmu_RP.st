;---------------------------------------------------------------------------
; Variable usage:
; var(1)  - Used for combo condition (updated every tick)
; Var(10) - Variation Identifier

; Var(33) - Juggle points 1
;   0 - state 
; Var(34) - Juggle points 2
;   0 - state 

; FVar(10) - Damage Scaler

;-------------------------
; Upwards Jump
[Statedef 117]
type = A
physics = N
ctrl = 0
velset = 0,0
anim = 117
sprpriority = 1

[State 100, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 100,0
persistent = 0

[State 105, 1]
type = VarSet
trigger1 = time=0
var(10) = ifelse((command="holdfwd"),45,ifelse((command="holdback"),135,90))

[State 105, 1]
type = VelSet
trigger1 = animelemtime(3)=0
x = 4.0*cos(var(10)*pi/180.0)
y = -7.5*sin(var(10)*pi/180.0)

[State 117, VA]
type = veladd
trigger1 = animelemtime(3)>1
y = 0.2+0.3*(animelemtime(6)>=0)

[State 700, Explod]
type = Explod
trigger1 = Time = 0;2
ID = 700
anim = 701
pos = 50,-50
removetime = 11
sprpriority = 1
facing = -1

[State 700, Effect]
type = helper
trigger1 = time = 0;2
helpertype = normal
name = "Dash_FX"
ID = 10110+1*(var(10)=135)+2*(var(10)=45)
pos = 0,-90;-15,-50
postype = p1
stateno = 10100
ownpal = 1
facing = -1

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -(vel y)
value = 106

;-------------------------
; Downwards Jump
[Statedef 118]
type = A
physics = N
ctrl = 0
velset = 0,0
anim = 117
sprpriority = 1

[State 100, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 100,0
persistent = 0

[State 105, 1]
type = VarSet
trigger1 = time=0
var(10) = ifelse((command="holdfwd"),45,ifelse((command="holdback"),135,90))

[State 105, 1]
type = VelSet
trigger1 = animelemtime(3)=0
x = 4.0*cos(var(10)*pi/180.0)
y = 6.0*sin(var(10)*pi/180.0)

[State 117, VA]
type = veladd
trigger1 = animelemtime(3)>1
y = 0.2+0.3*(animelemtime(6)>=0)

[State 700, Explod]
type = Explod
trigger1 = Time = 0;2
ID = 700
anim = 701
pos = 50,-50
removetime = 11
sprpriority = 1
facing = -1

[State 700, Effect]
type = helper
trigger1 = time = 0;2
helpertype = normal
name = "Dash_FX"
ID = 10115+1*(var(10)=135)+2*(var(10)=45)
pos = 0,0;-15,-50
postype = p1
stateno = 10100
ownpal = 1
facing = -1

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -(vel y)
value = 106

;---------------------------------------------------------------------------
; Lose by Time Over
; CNS difficulty: basic
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, PSND]
type = playsnd
trigger1 = time = 0
value = 171,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
; CNS difficulty: basic
[Statedef 180]
type = S

[State 180, VQ]
type = victoryquote
trigger1 = time = 0
value = 1+(random%6)

[State 180, Reimu Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Reimu_RP" || enemy,name = "Reimu" || enemy,name = "Reimu Hakurei"
trigger2 = enemy,name = "Hakurei Reimu" || enemy,name = "Reimu_Hakurei" || enemy,name = "Hakurei_Reimu" 
trigger3 = enemy,name = "Reimu_THIZ"
value = 7+(random%2)

[State 180, Marisa Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Marisa_RP" || enemy,name = "Marisa_K" || enemy,name = "Marisa Kirisame"
trigger2 = enemy,name = "Marisa_Kirisame" || enemy,name = "Kirisame_Marisa" || enemy,name = "Kirisame Marisa"
trigger3 = enemy,name = "Marisa_THIZ"
value = 9+(random%2)

[State 180, Lie Meiling Win Quote]
type = victoryquote
triggerall = numenemy
trigger1 = Time = 0
trigger1 = enemy,name = "Lie_RP" || enemy,name = "LieMeiling_RP"
value = 15+(random%2)

[State 180, Hong Meiling Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Meiling_RP" || enemy,name = "Meiling_K" || enemy,name = "Hong_Meiling"
trigger2 = enemy,name = "Hong Meirin" || enemy,name = "Hong Meiling" || enemy,name = "Hong_Meirin"
trigger3 = enemy,name = "Meiling_THIZ"
value = 13+(random%2)

[State 180, Sanae Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Sanae_RP" || enemy,name = "Sanae Kochiya" || enemy,name = "Sanae_Kochiya" || enemy,name = "Sanae"
trigger2 = enemy,name = "Sanae_R9x7" || enemy,name = "Kochiya Sanae" || enemy,name = "Kochiya_Sanae"
trigger3 = enemy,name = "Sanae_THIZ"
value = 11+(random%2)

[State 180, Yuyuko Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Yuyuko_RP" || enemy,name = "Yuyuko Saigyouji" || enemy,name = "Yuyuko_Saigyouji"
trigger2 = enemy,name = "Yuyuko" || enemy,name = "Saigyouji Yuyuko" || enemy,name = "Saigyouji_Yuyuko"
trigger3 = enemy,name = "Yuyuko Saigyouzi" || enemy,name = "Yuyuko_Saigyouzi" || enemy,name = "Saigyouzi Yuyuko" || enemy,name = "Saigyouzi_Yuyuko"
value = 17+(random%2)

[State 180, Yukari Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Yukari_RP" || enemy,name = "Yukari Yakumo" || enemy,name = "Yukari_Yakumo"
trigger2 = enemy,name = "Sukima" || enemy,name = "Yakumo Yukari" || enemy,name = "Yakumo_Yukari"
trigger3 = enemy,name = "Yukari_THIZ"
value = 19+(random%2)

[State 180, Seiga/Yoshika Win Quote]
type = victoryquote
triggerall = numenemy
triggerall = Time = 0
trigger1 = enemy,name = "Seiga_RP" || enemy,name = "Seiga Kaku" || enemy,name = "Seiga_Kaku"
trigger2 = enemy,name = "Seiga" || enemy,name = "Kaku Seiga" || enemy,name = "Kaku_Seiga"
trigger3 = enemy,name = "Yoshika" || enemy,name = "Yoshika Miyako" || enemy,name = "Yoshika_Miyako"
trigger4 = enemy,name = "ZUN's Cab Driver" || enemy,name = "Miyako Yoshika" || enemy,name = "Miyako_Yoshika"
value = 21+(random%2)

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
value = 181

;---------------------------------------------------------------------------
; Win pose
[Statedef 181]
type = S
ctrl = 0
anim = 18100+10*floor(2.0*random/1000.0)
velset = 0,0

[State 181, ASS]
type = assertspecial
trigger1 = time<120
flag = roundnotover

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, PSND]
type = playsnd
trigger1 = anim = 18110
trigger1 = animelemtime(5)=0
value = 1000,10

;---------------------------------------------------------------------------
; Introduction
; CNS difficulty: basic
; CNS ƒŒƒxƒ‹: Šî–{
[Statedef 191]
type = S
ctrl = 0
anim = 19000
velset = 0,0

[State 191, VS]
type = varset
trigger1 = time = 0
var(10) = floor(2.0*random/1000.0)

[State 191, CA]
type = changeanim
trigger1 = time = 0
trigger1 = var(10)=0
value = 19000
[State 191, CA]
type = changeanim
trigger1 = time = 0
trigger1 = var(10)=1
value = 19010

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = animtime = 0
value = 0

;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
movetype = I
physics = S
ctrl = 0
anim = 195
sprpriority = 1

[State 195, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1