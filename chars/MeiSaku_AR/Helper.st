;================================
; Helper States
;================================

;---------------------------------------------------------------------------
; Universal Projectile Destruction
[Statedef 999]
type = A
physics = N
movetype = I
anim = 1998 ;Your blank animation
velset = 0,0
ctrl = 0
movehitpersist = 1

[State -2, P2 Safe Fall]
type = targetstate
triggerall = numtarget=1 ;Just to prevent Simul mode shenanigans
triggerall = target,pos y>=-20 && target,vel y>0
triggerall = target,alive && target,hitfall && target,gethitvar(fall.recover)
triggerall = target,stateno=5030 || target,stateno=5035 || target,stateno=5050 || target,stateno=5071
trigger1 = target,AILevel <= 0
trigger1 = target,command="recovery"
trigger2 = target,AILevel > 0
trigger2 = random%100 <= 10*ceil((target,AILevel)*(target,AILevel)/64.0)
value = 5205
ignorehitpause = 1

[State 1112, nothitby]
type = nothitby
trigger1 = ishelper
time = 1
value = SCA
ignorehitpause = 1

[State 1112, Noshadow]
type = assertspecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 1112, End]
type = destroyself
triggerall = ishelper
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = target,time <= 1 && !(target,hitshakeover)
ignorehitpause = 1

;-----------------------
; Spellcard Use Effect
[Statedef 20000]
anim = 1999
velset = 0,0
sprpriority = 3

[State 20000, Noshadow]
type = assertspecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 2000, Spellcard Effect]
type = helper
trigger1 = time = 0
helpertype = normal
name = "Spellcard_Name"
id = 1998
stateno = 20001
pos = 0,-floor(pos y)
postype = left
ownpal = 1
facing = 1
pausemovetime = 9999999
supermovetime = 9999999

[State 4000, Superportrait]
type = explod
triggerall = time = 0
trigger1 = root,stateno = 3000
trigger2 = root,stateno = 4000
id = 4000
removetime = 60;40
;scale = 0.5,0.5
anim = 3998
pos = floor(const240p(gamewidth/2.0)),floor(const240p(gameheight/2.0))
postype = back
bindtime = -1
ownpal = 1
sprpriority = -2
scale = const240p(0.5*0.8),const240p(0.5*0.8)
removeongethit = 1
ignorehitpause = 1
pausemovetime = 60
supermovetime = 60

[State 4000, MEX]
type = modifyexplod
trigger1 = numexplod(4000) = 1
trigger1 = time >= 30
id = 4000
scale = const240p(0.8*(0.5+(0.25*(time-30)))),const240p(0.8*(0.5+(0.25*(time-30))))
trans = addalpha
alpha = 256-floor(256.0*(time-30)/30.0),0+floor(256.0*(time-30)/30.0)

[State 1999, CA]
type = changeanim
trigger1 = time = 0
value = ifelse(ishelper(2999),2999,ifelse(ishelper(3999),3999,1999))

[State 1999, Angleset]
type = angleadd
trigger1 = 1
value = -10

[State 1999, Varadd]
type = varadd
trigger1 = time <= 20
var(0) = 1

[State 1999, Angledraw]
type = angledraw
trigger1 = 1
scale = 0.5+0.15*var(0),0.5+0.15*var(0)

[State 700, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-ifelse(time<30,0,floor(256.0*(time-30)/40.0)),256

[State 700, Zeeky]
type = destroyself
trigger1 = time >= 70

;-----------------------
; Spellcard Name Effect
[Statedef 20001]
velset = 0,0
anim = 1998

[State Screen Scretch?]
type = VarSet
trigger1 = 1
fvar(0) = Gamewidth/320.0
[State friction coefficient (for text scaling and vertical movement) (0 to 1)]
type = VarSet
trigger1 = 1
fvar(1) = 0.75
[State friction coefficient 2 (for text horizontal movement) (0 to 1)]
type = VarSet
trigger1 = 1
fvar(2) = 0.75
[State friction coefficient 3 (for text final vertical movement) (0 to 1)]
type = VarSet
trigger1 = 1
fvar(3) = 0.85

[State 10000, Explod]
type = Explod
trigger1 = Time = 0
pos = 0,0
Anim = 20015+ifelse(teamside=1,0,1)
postype = left
ownpal = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermove = 1
ontop = 1
ID = 20011
[State 10000, Explod]
type = Explod
trigger1 = Time = 0
Anim = 2090+ifelse(teamside=1,0,1)+100*(root,stateno=2100)+1000*(root,stateno=3000)+2000*(root,stateno=4000)
pos = 0,0
postype = left
ownpal = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermove = 1
ontop = 1
ID = 20010

[State Zoom Out]
type = ModifyExplod
trigger1 = Time<=60
ID = 20010
pos = ifelse(teamside=2,0,floor(Gamewidth/1.0))-floor((1-fvar(2)**(time))*310*fvar(0)*ifelse(teamside=2,-1,1)), GameHeight - (-10)-floor((1-fvar(1)**(time))*85)
postype = left
facing = 1
bindtime = -1
scale = .25+8.75*(fvar(1)**(time)),.25+8.75*(fvar(1)**(time))

[State Zoom Out]
type = ModifyExplod
trigger1 = Time>60 && time < 125
ID = 20010
pos = ifelse(teamside=2,0,floor(Gamewidth/1.0))-floor((1-fvar(2)**(time))*310*fvar(0)*ifelse(teamside=2,-1,1)), GameHeight - (-10)-floor((1-fvar(1)**(time))*85)-floor((1-fvar(3)**(time-60))*120)
postype = left
facing = 1
bindtime = -1
scale = .25+8.75*(fvar(1)**(time)),.25+8.75*(fvar(1)**(time))

[State Zoom Out]
type = ModifyExplod
trigger1 = Time<=60
ID = 20011
pos = ifelse(teamside=2,0,floor(Gamewidth/1.0))-floor((1-fvar(2)**(time))*345*fvar(0)*ifelse(teamside=2,-1,1)), GameHeight - (-10)-floor((1-fvar(1)**(time))*85)
postype = left
facing = 1
bindtime = -1
scale = 4*(.25+8.75*(fvar(1)**(time))),4*(.25+8.75*(fvar(1)**(time)))

[State Zoom Out]
type = ModifyExplod
trigger1 = Time>60 && time < 125
ID = 20011
pos = ifelse(teamside=2,0,floor(Gamewidth/1.0))-floor((1-fvar(2)**(time))*345*fvar(0)*ifelse(teamside=2,-1,1)), GameHeight - (-10)-floor((1-fvar(1)**(time))*85)-floor((1-fvar(3)**(time-60))*120)
postype = left
facing = 1
bindtime = -1
scale = 4*(.25+8.75*(fvar(1)**(time))),4*(.25+8.75*(fvar(1)**(time)))

[State Sas]
type = VarAdd
trigger1 = var(0)>=1
var(0) = 1

[State Sas]
type = VarSet
triggerall = var(0)<=0
trigger1 = root,stateno != [2000,2099] ;Windchime
trigger1 = root,stateno != [2100,2199] ;Rocs Fist
trigger1 = root,stateno != [3000,3099] ;Tiger
trigger1 = root,stateno != [4000,4099] ;Lotus Palm
var(0) = 1

[State Zoom Out]
type = ModifyExplod
trigger1 = var(0)>0
ID = 20010
trans = addalpha
alpha = ceil(256*(1-var(0)/30.0)),ceil(256*(var(0)/30.0))
[State Zoom Out]
type = ModifyExplod
trigger1 = var(0)>0
ID = 20011
trans = addalpha
alpha = ceil(256*(1-var(0)/30.0)),256
[State ass]
type = RemoveExplod
trigger1 = var(0)>=30
id = 20010
[State ass]
type = RemoveExplod
trigger1 = var(0)>=30
id = 20011
[State thend]
type = DestroySelf
trigger1 = var(0)>=30

;-----------------------
; Palette Selector
; The following state utilizes pieces of code from Flawless's X-Costume selector
; with modifications by RicePigeon.
[Statedef 20002]
velset = 0,0
anim = 20002
sprpriority = 8

[State 20002, REX]
type = removeexplod
trigger1 = 1
id = 20020
ignorehitpause = 1

[State 20002, VS]
type = varset
trigger1 = time = 0
var(10) = 1+(random%2*(root,AILevel>0))

[State 20002, AD]
type = angledraw
trigger1 = 1
scale = 0.25,0.25
ignorehitpause = 1

[State 20002, VS]
type = varset
trigger1 = time = 0
var(5) = 12 ;MAXIMUM # OF PALETTES

[State 12345, PosSet]
type = PosSet
trigger1 =!time 
x = floor(root,pos x);root,facing*-90
y = floor(root,pos y)-25
ignorehitpause = 1

[State 12345, AS]
type=assertspecial
trigger1=1
flag=intro
flag2=noshadow
flag3=nobardisplay

[State 12345, Reset]
type=varset
trigger1=!time
var(0)=200

[State 12345, Pal]
type=varset
trigger1=!time
var(1)=root,palno

[State 12345, Varset]
type=varset
trigger1=var(1)<1||var(1)>var(5) ; last palette
var(1)=1+(var(1)<1)*(var(5)-1) ; subtract -1 from your last palette

[State 12345, Varset]
type=varset
trigger1=var(10)<1||var(10)>2 ; last palette
var(10)=1+(var(1)<1) ; subtract -1 from your last palette

[State 12345, PlaySnd]
type = PlaySnd
trigger1 =fvar(39)=2 
value = S12345,0
volumescale = 100
channel = 20

[State 12345, PlaySnd]
type = PlaySnd
triggerall=ishelper(20002)
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="start"||(roundstate=2&&roundno!=-1)
trigger2=root,AILevel
trigger2=time>=60
value = S20002,1
volumescale = 100
channel = 20
persistent =0 

[State 12345, Countdown]
type = VarAdd
trigger1 =1 
var(0)=-1

[State 12345, Countdown]
type = VarAdd
trigger1=!var(2)&&var(0)<150
trigger1=root,command="up"||root,command="down"||root,command="back"||root,command="fwd"
var(0)=25

[State 12345, Countdown]
type = VarAdd
trigger1=!var(2)&&var(0)<150
trigger1=var(20)>30||var(21)>30||var(22)>30||var(23)>30
var(0)=25
persistent=5

[State 12345, PlaySnd]
type = PlaySnd
triggerall=ishelper(20002) && !var(2)
trigger1=root,command="up"||root,command="down"||root,command="back"||root,command="fwd"
value = S20002,0
volumescale = 100
channel = 20
;persistent =0

[State 12345, PlaySnd]
type = PlaySnd
triggerall=ishelper(20002) && !var(2)
trigger1=var(20)>30||var(21)>30||var(22)>30||var(23)>30
value = S20002,0
volumescale = 100
channel = 20
persistent=5

[State 12345, Varadd]
type=varadd
trigger1=!var(2)
trigger1=root,command="back"||root,command="fwd"
var(1)=1-(root,command="back"&&facing=1||root,command="fwd"&&facing=-1)*2

[State 12345, Varadd]
type=varadd
trigger1=!var(2)
trigger1=var(20)>30||var(21)>30
var(1)=1-(var(20)>30&&facing=1||var(21)>30&&facing=-1)*2
persistent = 5

[State 12345, Varadd]
type=varadd
trigger1=!var(2)
trigger1=root,command="up"||root,command="down"
var(10)=1

[State 12345, Varadd]
type=varadd
trigger1=!var(2)
trigger1=(var(22)>30)||(var(23)>30)
var(10)=1
persistent = 5

[State 12345, Varadd]
type=varadd
trigger1=(root,command="up"||root,command="down"||root,command="back"||root,command="fwd")&&!fvar(39)||fvar(39)
var(2)=1

[State 12345, Varadd]
type=varadd
trigger1=(var(20)>30||var(21)>30||var(22)>30||var(23)>30)&&!fvar(39)||fvar(39)
var(2)=1
persistent=5

[State 12345, Varset]
type=varset
trigger1=!time||var(2)>=1;6;17
var(2)=0

[State 12345, Varset]
type=varadd
trigger1=root,command="holdback"
var(20)=1
[State 12345, Varset]
type=varadd
trigger1=root,command="holdfwd"
var(21)=1
[State 12345, Varset]
type=varadd
trigger1=root,command="holdup"
var(22)=1
[State 12345, Varset]
type=varadd
trigger1=root,command="holddown"
var(23)=1

[State 12345, Varset]
type=varset
trigger1=root,command!="holdback"
var(20)=0
[State 12345, Varset]
type=varset
trigger1=root,command!="holdfwd"
var(21)=0
[State 12345, Varset]
type=varset
trigger1=root,command!="holdup"
var(22)=0
[State 12345, Varset]
type=varset
trigger1=root,command!="holddown"
var(23)=0

[State 181, EXPLOD]
type = explod
trigger1 = 1
anim = 20009+var(10)
removetime = 24
id = 20020
postype = left;p1
pos = 15+floor(gamewidth-30)*(teamside!=1),floor(screenpos y);+30
;pos = -50,-90
scale = 0.5*0.667,0.5*0.667
ownpal = 0
sprpriority = 5
removeongethit = 1
ignorehitpause = 0

[State 181, EXPLOD]
type = explod
trigger1 = 1
anim = 20020+ifelse(teamside=1,0,1)
removetime = 24;1
id = 20020
;postype = p1
;pos = 0,-100
postype = left;p1
pos = 3+floor(gamewidth-6)*(teamside!=1),floor(screenpos y)+25
scale = 0.2,0.2
ownpal = 0
trans = addalpha
alpha = 256-128*(var(10)=2),0
sprpriority = 5
removeongethit = 1
ignorehitpause = 0

[State 181, EXPLOD]
type = explod
trigger1 = 1
anim = 20022+ifelse(teamside=1,0,1)
removetime = 24
id = 20020
;postype = p1
;pos = 0,-100
postype = left;p1
pos = 3+floor(gamewidth-6)*(teamside!=1),floor(screenpos y)+35
scale = 0.2,0.2
ownpal = 0
trans = addalpha
alpha = 256-128*(var(10)=1),0
sprpriority = 5
removeongethit = 1
ignorehitpause = 0

[State 181, EXPLOD]
type = explod
triggerall=ishelper(20002)
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="start"||(roundstate=2&&roundno!=-1)
trigger2=root,AILevel
trigger2=time>=60
persistent = 0
anim = 20003
removetime = 24
postype = p1
;space = stage ;;MUGEN 1.1 ONLY
pos = 0,0
scale = 0.25,0.25
;pos = pos x + camerapos x + 25*facing,pos y - 75 ;;MUGEN 1.1 ONLY
;facing = facing ;;MUGEN 1.1 ONLY
ownpal = 0
sprpriority = 5
;bindid = playerid ;;MUGEN 1.1 ONLY
removeongethit = 1
ignorehitpause = 0

[State 12345, End]
type=changestate;destroyself
triggerall=ishelper(20002)
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="start"||(roundstate=2&&roundno!=-1)
trigger2=root,AILevel
trigger2=time>=60
value = 20003

;-----------------------
; Palette Selector End
[Statedef 20003]
velset = 0,0
anim = 1998
sprpriority = 8

[State 20003, Zeeky]
type = destroyself
trigger1 = time>=30

;-----------------------
; Dash FX
[Statedef 10100]
physics = N
velset = 0,0
anim = 10100
sprpriority = 5

[State 10100, Noshadow]
type = assertspecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 700, T]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/10.0),256

[State 700, AD]
type = angledraw
trigger1 = 1
scale = 0.7+(0.1*time),0.7+(0.1*time)

[State 700, Zeeky]
type = destroyself
trigger1 = time >= 10

;-----------------------
; Darkness Effect
[Statedef 701]
anim = 1998
velset = 0,0

[State 701, BGPFX]
type = bgpalfx
trigger1 = time < 32
time = 1
mul = 256-(6*time),256-(6*time),256-(6*time)

[State 701, BGPFX]
type = bgpalfx
trigger1 = time >= 32
time = 1
mul = 64,64,64

[state 701, CS]
type = changestate
trigger1 = root,stateno != [2000,2199]
trigger1 = root,stateno != 3000
trigger1 = root,stateno != [4000,4099]
value = 702

[state 701, CS]
type = destroyself
trigger1 = root,stateno = 4001

;-----------------------
; Darkness Effect - Fade back in
[Statedef 702]
anim = 1998+0*(var(0):=192)
velset = 0,0

[state 701, VS]
type = null
trigger1 = var(0)>0
trigger1 = var(0):=var(0)-(6*time)

[state 701, CS]
type = destroyself
trigger1 = var(0)<=0

[State 701, BGPFX]
type = bgpalfx
trigger1 = var(0)>0
time = 1
mul = 256-var(0),256-var(0),256-var(0)

;-----------------------
; AI Tree Helper
[Statedef 20010]
velset = 0,0
anim = 1998
sprpriority = 8
; Variable Usage
; Var(0) = RNG
; Var(1) = Next state for Root to enter
; Var(2) = Cooldown until next value of Var(1) is passed to Root
; Var(3) = Maximum number of possible state options available

[State 20010, TURN]
type = turn
trigger1 = facing != root,facing
ignorehitpause = 1

[State 20010, RAND]
type = varset
trigger1 = 1
var(0) = random

[State 20010, BTR]
type = bindtoroot
trigger1 = 1
pos = 0,0
ignorehitpause = 1

;===================
; AI TREE STARTS HERE
;===================

[State 20010, Condition: Ground Idle + Close Range]
type = null
triggerall = numenemy
triggerall = root,AILevel > 0 && var(2)=0
triggerall = root,statetype != A
triggerall = enemynear(0),movetype != H
triggerall = ctrl || (root,stateno = 100 && root,p2bodydist x <=5)*(root,AILevel > 3)
triggerall = !(root,inguarddist)
triggerall = (enemynear(0),statetype != A && enemynear(0),statetype != L)
triggerall = (root,p2bodydist x >= -1.5||root,stateno=100) && root,p2bodydist x <= 50
triggerall = (var(3):=6)||1 ; Number of Options
trigger1 = root,p2bodydist x < 24
trigger1 = floor(var(3)*var(0)/1000.0)=[0,2]
trigger1 = (var(1):=200+200*(random%2=1))||1
trigger1 = var(2):=11-root,AILevel
trigger2 = root,p2bodydist x >= 24
trigger2 = floor(Var(3)*var(0)/1000.0)=3
trigger2 = (var(1):=410)||1
trigger2 = var(2):=11-root,AILevel
trigger3 = root,p2bodydist x < 24 && enemynear(0),movetype != A
trigger3 = (enemynear(0),stateno!=[800,899]) && (enemynear(0),stateno!=[120,155]) && (enemynear(0),stateno != 40)
trigger3 = floor(var(3)*var(0)/1000.0)=4 || root,AILevel > 6 && enemynear(0),stateno=20 && enemynear(0),vel x <= 0 && root,p2bodydist x < 20
trigger3 = (var(1):=800)||1
trigger3 = var(2):=11-root,AILevel
trigger4 = floor(var(3)*var(0)/1000.0)=5
trigger4 = (var(1):=105)||1
trigger4 = var(2):=11-root,AILevel

[State 20010, Condition: Ground Idle + Mid Range]
type = null
triggerall = numenemy
triggerall = root,AILevel > 0 && var(2)=0
triggerall = root,statetype != A
triggerall = enemynear(0),movetype != H
triggerall = root,ctrl
triggerall = (enemynear(0),statetype != A && enemynear(0),statetype != L)
triggerall = root,p2bodydist x > 50
triggerall = (var(3):=5)||1 ; Number of Options
trigger1 = floor(var(3)*var(0)/1000.0)=0
trigger1 = (var(1):=100)||1
trigger1 = var(2):=11-root,AILevel
trigger2 = floor(var(3)*var(0)/1000.0)=1
trigger2 = (var(1):=2)||1
trigger2 = var(2):=11-root,AILevel
trigger3 = root,p2bodydist x <= 150
trigger3 = floor(var(3)*var(0)/1000.0)=2
trigger3 = (var(1):=217)||1
trigger3 = var(2):=11-root,AILevel
trigger4 = root,p2bodydist x >= 80
trigger4 = floor(var(3)*var(0)/1000.0)=3
trigger4 = (var(1):=1102)||1
trigger4 = var(2):=11-root,AILevel

[State 20010, Condition: Ground Idle + Airborne p2]
type = null
triggerall = numenemy
triggerall = root,AILevel > 0 && var(2)=0
triggerall = root,statetype != A
triggerall = root,ctrl
triggerall = !(root,inguarddist)
triggerall = enemynear(0),statetype = A
triggerall = root,p2bodydist x >= 0 && root,p2bodydist x <= 50
triggerall = (var(3):=5)||1 ; Number of Options
trigger1 = ((enemynear(0),stateno != [5020,5040]) && (enemynear(0),stateno != [5085,5089]))
trigger1 = root,p2bodydist y < -25-15*(enemynear(0),vel y >= 0)
trigger1 = floor(var(3)*var(0)/1000.0)=0
trigger1 = (var(1):=200)||1
trigger1 = var(2):=11-root,AILevel
trigger2 = floor(var(3)*var(0)/1000.0)=3
trigger2 = (var(1):=1+(random%3))||1
trigger2 = var(2):=11-root,AILevel

[State 20010, Condition: Air Idle + Airborne p2]
type = null
triggerall = numenemy
triggerall = root,AILevel > 0 && var(2)=0
triggerall = root,statetype = A
triggerall = root,ctrl
triggerall = !(root,inguarddist)
triggerall = enemynear(0),statetype = A
triggerall = root,p2bodydist x >= 0 && root,p2bodydist x <= 90
triggerall = (var(3):=3)||1 ; Number of Options
trigger1 = floor(var(3)*var(0)/1000.0)=0
trigger1 = (var(1):=600)||1
trigger1 = var(2):=11-root,AILevel
trigger2 = floor(var(3)*var(0)/1000.0)=1
trigger2 = (var(1):=610)||1
trigger2 = var(2):=11-root,AILevel
trigger3 = floor(var(3)*var(0)/1000.0)=2
trigger3 = (var(1):=620)||1
trigger3 = var(2):=11-root,AILevel

[State 20010, Condition: Air Idle + Ground p2]
type = null
triggerall = numenemy
triggerall = root,AILevel > 0 && var(2)=0
triggerall = root,statetype = A
triggerall = root,ctrl
triggerall = !(root,inguarddist)
triggerall = enemynear(0),statetype = A
triggerall = root,p2bodydist x >= 0 && root,p2bodydist x <= 90
triggerall = (var(3):=2)||1 ; Number of Options
trigger1 = floor(var(3)*var(0)/1000.0)=0
trigger1 = (var(1):=600)||1
trigger1 = var(2):=11-root,AILevel
trigger2 = floor(var(3)*var(0)/1000.0)=1
trigger2 = (var(1):=620)||1
trigger2 = var(2):=11-root,AILevel

[State 20010, Condition: Chain Combo]
type = null
triggerall = numenemy
triggerall = root,AILevel > 0 && var(2)=0
triggerall = root,movecontact
triggerall = !(root,inguarddist)
triggerall = enemynear(0),movetype = H
triggerall = (enemynear(0),statetype != A && enemynear(0),statetype != L)
triggerall = root,p2bodydist x >= 0
trigger1 = root,stateno = 200 || root,stateno = 400
trigger1 = root,p2bodydist x < 24
trigger1 = (var(1):=(root,stateno))||1
trigger1 = var(2):=11-root,AILevel
trigger2 = root,p2bodydist x >= 24 && root,p2bodydist x <= 40
trigger2 = root,stateno = 200 || root,stateno = 400
trigger2 = (var(1):=410)||1
trigger2 = var(2):=11-root,AILevel
trigger3 = root,stateno = 410 && root,movecontact
trigger3 = (var(1):=220+5*(enemynear(0),backedgebodydist<=30))||1
trigger3 = var(2):=11-root,AILevel

[State 20010, Condition: Combo into Specials]
type = null
triggerall = numenemy
triggerall = root,AILevel > 2 && var(2)=0
triggerall = !(root,inguarddist)
triggerall = enemynear(0),movetype = H
triggerall = enemynear(0),statetype != L
triggerall = root,p2bodydist x >= 0
trigger1 = (root,stateno = 220 || root,stateno = 225) && root,moveguarded
trigger1 = (var(1):=1002)||1
trigger1 = var(2):=11-root,AILevel
trigger2 = (root,stateno = 220 || root,stateno = 225) && root,movehit
trigger2 = (var(1):=1403)||1
trigger2 = var(2):=11-root,AILevel

[State 20010, Condition: Combo into Spellcards]
type = null
triggerall = numenemy
triggerall = root,AILevel > 3 && var(2)=0
triggerall = root,Power >= 1000
triggerall = !(root,inguarddist)
triggerall = enemynear(0),movetype = H
triggerall = enemynear(0),statetype != L
triggerall = root,p2bodydist x >= 0
trigger1 = root,stateno = 1400 && root,movehit >= 23
trigger1 = (var(1):=2000)
trigger1 = var(2):=11-root,AILevel

;===================
; AI TREE STOPS HERE
;===================

[State 20010, PVS]
type = parentvarset
trigger1 = var(2)=11-root,AILevel
trigger2 = var(2)=10-root,AILevel
var(58) = var(1)
;persistent = 0

[State 20010, VA]
type = varadd
trigger1 = var(2)>0
var(2) = -1

[State 20010, PVS]
type = parentvarset
trigger1 = var(2)<=0
var(58) = 0

[State 20010, Zeeky]
type = destroyself
trigger1 = root,AILevel <= 0
trigger2 = root,roundstate != 2