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
trigger1 = root,stateno = 4000
trigger2 = root,stateno = 4100
trigger3 = root,stateno = 4200
id = 4000
removetime = 60;40
;scale = 0.5,0.5
anim = 3998
pos = floor(const240p(gamewidth/2.0))-40,floor(const240p(gameheight/2.0))-20
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
Anim = 2090+ifelse(teamside=1,0,1)+100*(root,stateno=2100)+2000*(root,stateno=4000)+2100*(root,stateno=4100)+2200*(root,stateno=4200)
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
pos = ifelse(teamside=2,0,floor(Gamewidth/1.0))-floor((1-fvar(2)**(time))*310*fvar(0)*ifelse(teamside=2,-1,1)),250-floor((1-fvar(1)**(time))*85)
postype = left
facing = 1
bindtime = -1
scale = .25+8.75*(fvar(1)**(time)),.25+8.75*(fvar(1)**(time))

[State Zoom Out]
type = ModifyExplod
trigger1 = Time>60 && time < 125
ID = 20010
pos = ifelse(teamside=2,0,floor(Gamewidth/1.0))-floor((1-fvar(2)**(time))*310*fvar(0)*ifelse(teamside=2,-1,1)),250-floor((1-fvar(1)**(time))*85)-floor((1-fvar(3)**(time-60))*120)
postype = left
facing = 1
bindtime = -1
scale = .25+8.75*(fvar(1)**(time)),.25+8.75*(fvar(1)**(time))

[State Zoom Out]
type = ModifyExplod
trigger1 = Time<=60
ID = 20011
pos = ifelse(teamside=2,0,floor(Gamewidth/1.0))-floor((1-fvar(2)**(time))*345*fvar(0)*ifelse(teamside=2,-1,1)),250-floor((1-fvar(1)**(time))*85)
postype = left
facing = 1
bindtime = -1
scale = 4*(.25+8.75*(fvar(1)**(time))),4*(.25+8.75*(fvar(1)**(time)))

[State Zoom Out]
type = ModifyExplod
trigger1 = Time>60 && time < 125
ID = 20011
pos = ifelse(teamside=2,0,floor(Gamewidth/1.0))-floor((1-fvar(2)**(time))*345*fvar(0)*ifelse(teamside=2,-1,1)),250-floor((1-fvar(1)**(time))*85)-floor((1-fvar(3)**(time-60))*120)
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
trigger1 = root,stateno != 2000 ;Slash of Meditation
trigger1 = root,stateno != 2100 ;Slash of Present
trigger1 = root,stateno != [4000,4003] ;6-Root Cleansing
trigger1 = root,stateno != 4100 ;Secret of Life and Death
trigger1 = root,stateno != [4200,4202] ;Matsuyoi Reflecting Satellite Slash
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
var(5) = 21 ;MAXIMUM # OF PALETTES

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
trigger1 = root,stateno != [4000,4299]
value = 702

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

;------------------------------
; Focus Counter
[StateDef 30000]
Type = A
MoveType = I
Physics = N
SprPriority = 0
anim = 1998
velset = 0,0

[State 24000, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 24000, BTR]
type = bindtoroot
trigger1 = 1
ignorehitpause = 1
pos = 0,0

[State 30000, Life Meter Tracker]
type = varset
trigger1 = root,life>0
trigger1 = root,life < var(40)
var(41) = var(40) - (root,life)

[State 30000, Life Meter Tracker]
type = varset
trigger1 = root,life>0
var(40) = root,life

[State 30000, PVA]
type = parentvaradd
trigger1 = var(41)>0
var(50) = -ceil(var(41)*cond((root,var(53)>=3),1.10,cond((root,var(53)=2),1.00,1.00)))

[State 30000, PVA]
type = varset
trigger1 = var(41)>0
var(41) = 0

[State 24000, VS]
type = varset
trigger1 = var(56)!=(root,var(50))
var(56) = root,var(50)

[State 24000, VS]
type = varset
trigger1 = var(56)<0
var(56) = 0

[State 21000, Explod]
type = explod
trigger1 = numexplod(30000)=0
anim = 30000
id = 30000
scale = 1.0,0.75
pos = 16*ifelse(teamside=1,1,-1)+ifelse(teamside=1,0,floor(gamewidth/1.0)),40+160+5;10;204
postype = left
facing = ifelse(root,teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
pausemovetime = 9999999
supermovetime = 9999999

[State 21000, Explod]
type = explod
trigger1 = numexplod(30001)=0
anim = 30001
id = 30001
scale = 1.0,0.75
pos = 16*ifelse(teamside=1,1,-1)+ifelse(teamside=1,0,floor(gamewidth/1.0)),40+160+5;10;204
postype = left
facing = ifelse(root,teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
pausemovetime = 9999999
supermovetime = 9999999

[State 21000, Explod]
type = explod
trigger1 = (root,var(50))<300;400;334
trigger1 = numexplod(30010)=0
anim = 30010
id = 30010
scale = 0.25,0.25
pos = 55*ifelse(teamside=1,1,-1)+ifelse(teamside=1,0,floor(gamewidth/1.0)),50+160-15;0;204
postype = left
facing = 1;ifelse(root,teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
pausemovetime = 9999999
supermovetime = 9999999
[State 21000, Explod]
type = explod
;trigger1 = (root,var(50))>=334 && (root,var(50))<667
trigger1 = (root,var(50))>=300 && (root,var(50))<700
trigger1 = numexplod(30011)=0
anim = 30011
id = 30011
scale = 0.25,0.25
pos = 55*ifelse(teamside=1,1,-1)+ifelse(teamside=1,0,floor(gamewidth/1.0)),50+160-15;0;204
postype = left
facing = 1;ifelse(root,teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
pausemovetime = 9999999
supermovetime = 9999999
[State 21000, Explod]
type = explod
trigger1 = (root,var(50))>=700 && (root,var(50))<950;667
trigger1 = numexplod(30012)=0
anim = 30012
id = 30012
scale = 0.25,0.25
pos = 55*ifelse(teamside=1,1,-1)+ifelse(teamside=1,0,floor(gamewidth/1.0)),50+160-15;0;204
postype = left
facing = 1;ifelse(root,teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
pausemovetime = 9999999
supermovetime = 9999999
[State 21000, Explod]
type = explod
trigger1 = (root,var(50))>=950;667
trigger1 = numexplod(30013)=0
anim = 30013
id = 30013
scale = 0.25,0.25
pos = 55*ifelse(teamside=1,1,-1)+ifelse(teamside=1,0,floor(gamewidth/1.0)),50+160-15;0;204
postype = left
facing = 1;ifelse(root,teamside=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
pausemovetime = 9999999
supermovetime = 9999999

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !((root,var(50))<300)
trigger1 = numexplod(30010)=1
ID = 30010
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !((root,var(50))>=300 && (root,var(50))<700)
trigger1 = numexplod(30011)=1
ID = 30011
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !((root,var(50))>=700 && (root,var(50))<950)
trigger1 = numexplod(30012)=1
ID = 30012
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !((root,var(50))>=950)
trigger1 = numexplod(30013)=1
ID = 30013

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(30001)=1
ID = 30001
scale = 1.0*(var(56)/1000.0),0.75
ignorehitpause =1

[State 0, ModifyExplod]
type = palfx
trigger1 = (root,var(50))<300
add = 0,0,256
mul = 0,0,256
time = -1
ignorehitpause =1
[State 0, ModifyExplod]
type = palfx
trigger1 = (root,var(50))>=300 && (root,var(50))<700
add = 0,256,0
mul = 0,256,0
time = -1
ignorehitpause =1
[State 0, ModifyExplod]
type = palfx
trigger1 = (root,var(50))>=700 && (root,var(50))<950
add = 256,128,0
mul = 256,128,0
time = -1
ignorehitpause =1
[State 0, ModifyExplod]
type = palfx
trigger1 = (root,var(50))>=950
add = 256,0,0
mul = 256,0,0
time = -1
ignorehitpause =1

[State 30000, Level Helper]
type = parentvarset
trigger1 = !(root,var(53)=1)
trigger1 = (root,var(50))<300
var(53) = 1
[State 30000, Level Helper]
type = parentvarset
trigger1 = !(root,var(53)=2)
trigger1 = (root,var(50))>=300 && (root,var(50))<700
var(53) = 2
[State 30000, Level Helper]
type = parentvarset
trigger1 = !(root,var(53)=3)
trigger1 = (root,var(50))>=700 && (root,var(50))<950
var(53) = 3
[State 30000, Level Helper]
type = parentvarset
trigger1 = !(root,var(53)=4)
trigger1 = (root,var(50))>=950
var(53) = 4

;------------------------------
; Myon
[StateDef 30050]
Type = A
MoveType = I
Physics = N
SprPriority = -1
anim = 30050
velset = 0,0

[State 0, ModifyExplod]
type = palfx
trigger1 = root,stateno != 4100
trigger1 = (root,var(50))<300
add = 0,0,0
mul = 0,128,256
time = -1
ignorehitpause =1
[State 0, ModifyExplod]
type = palfx
trigger1 = root,stateno != 4100
trigger1 = (root,var(50))>=300 && (root,var(50))<700
add = 0,0,0
mul = 60,256,60
time = -1
ignorehitpause =1
[State 0, ModifyExplod]
type = palfx
trigger1 = root,stateno != 4100
trigger1 = (root,var(50))>=700 && (root,var(50))<950
add = 0,0,0
mul = 256,128,0
time = -1
ignorehitpause =1
[State 0, ModifyExplod]
type = palfx
trigger1 = root,stateno != 4100
trigger1 = (root,var(50))>=950
add = 0,0,0
mul = 256,60,60
time = -1
ignorehitpause =1

[State 30050, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 30050, I'm behind you you stupid fucking ghost half]
type = turn
trigger1 = facing != root,facing

[State 30050, Get your pasty white ass over here]
type = Velset
trigger1 = 1
x = (rootdist x-52)*0.025

[State 30050, Get your pasty white ass over here]
type = Velset
trigger1 = 1
y = (rootdist y-98)*0.025

[State 30050, you do know you cant kill ghosts, right? We're sorta incorporeal and all.]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 30050, Vanish]
type = assertspecial
trigger1 = root,stateno = 4201
flag = invisible
ignorehitpause = 1

[State 4000, Effect]
type = helper
trigger1 = root,stateno != 4201
persistent = 5
helpertype = normal
name = "Wisp"
ID = 30051
pos = 0,0
postype = p1
stateno = 30051
ownpal = 0
facing = 1
pausemovetime = cond((enemy,name="Training"||enemy,name="Sakuya_RP"),0,999999)
supermovetime = 999999999

[State 30050, ModifyExplod]
type = palfx
trigger1 = root,stateno = 4100 && (root,time=[22,52])
trigger1 = (root,var(50))<300
add = 0,0,0
mul = 0+ceil((192*0.0333)*(root,time-22)),128+ceil((32*0.0333)*(root,time-22)),256
time = -1
ignorehitpause =1
[State 30050, ModifyExplod]
type = palfx
trigger1 = root,stateno = 4100 && (root,time=[22,52])
trigger1 = (root,var(50))>=300 && (root,var(50))<700
add = 0,0,0
mul = 60+ceil((132*0.0333)*(root,time-22)),256-ceil((96*0.0333)*(root,time-22)),60+ceil((196*0.0333)*(root,time-22))
time = -1
ignorehitpause =1
[State 30050, ModifyExplod]
type = palfx
trigger1 = root,stateno = 4100 && (root,time=[22,52])
trigger1 = (root,var(50))>=700 && (root,var(50))<950
add = 0,0,0
mul = 256-ceil((64*0.0333)*(root,time-22)),128+ceil((32*0.0333)*(root,time-22)),0+ceil((256*0.0333)*(root,time-22))
time = -1
ignorehitpause =1
[State 30050, ModifyExplod]
type = palfx
trigger1 = root,stateno = 4100 && (root,time=[22,52])
trigger1 = (root,var(50))>=950
add = 0,0,0
mul = 256-ceil((64*0.0333)*(root,time-22)),60+ceil((100*0.0333)*(root,time-22)),60+ceil((196*0.0333)*(root,time-22))
time = -1
ignorehitpause =1

[State 30050, I call this Dappermyon. Pretty cool, huh?]
type = changestate
trigger1 = root,var(54)>0
value = 30052

;------------------------------
; Myon
[StateDef 30051]
Type = A
MoveType = I
Physics = N
SprPriority = -1
anim = 30050
velset = 0,0

[State 30051, MVS]
type = null;multivarset doesnt exist, why?
trigger1 = time = 0
trigger1 = (var(1):=floor(360.0*random/1000.0))||1
trigger1 = (var(2):=floor(16.0*random/1000.0))||1

[State 30051, Displace]
type = Posadd
trigger1 = time=0
x = floor(var(2)*cos(var(1)*pi/180))
y = floor(var(2)*sin(var(1)*pi/180))

[State 30050, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 30050, you do know you cant kill ghosts, right? We're sorta incorporeal and all.]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-floor(256.0*time/20.0),256
ignorehitpause = 1

[State 30051, VelS]
type = velset
trigger1 = 1
y = -1.5

[State 30051, VS]
type = varset
trigger1 = time = 0
var(0) = 50+floor(26.0*random/1000.0)

[State 30051, AD]
type = Angledraw
trigger1 = 1
scale = var(0)*0.01*(1-time*0.025),var(0)*0.01*(1-time*0.025)

[State 30051, Zeeky]
type = destroyself
trigger1 = time = 20
trigger2 = root,stateno = 4201

;------------------------------
; Myon
[StateDef 30052]
Type = A
MoveType = I
Physics = N
SprPriority = -1
velset = 0,0

[State 30050, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 30050, I'm behind you you stupid fucking ghost half]
type = turn
trigger1 = facing != root,facing

[State 30050, Get your pasty white ass over here]
type = Velset
trigger1 = time<12
trigger1 = rootdist x != 0
trigger1 = (12-time)*1.000000 != 0
x = (rootdist x)/((12-time)*1.000000)

[State 30050, Get your pasty white ass over here]
type = Velset
trigger1 = time<12
trigger1 = rootdist y-45 != 0
trigger1 = (12-time)*1.000000 != 0
y = (rootdist y-45)/((12-time)*1.000000)

[State 30050, you do know you cant kill ghosts, right? We're sorta incorporeal and all.]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 30050, BTR]
type = bindtoroot
trigger1 = time>=12
pos = 0,-45

[State 30050, Invis]
type = changeanim
trigger1 = time=12
value = 1998+0*floor(var(50):=0)+0*floor(fvar(0):=0)

[State 24000, VS]
type = varset
trigger1 = var(56)!=(root,var(54))
var(54) = root,var(54)

[State 24000, VS]
type = varset
trigger1 = time = 0
var(55) = root,var(54)

[State 21000, Explod]
type = explod
trigger1 = time>=12
trigger1 = numexplod(30000)=0
anim = 30000
id = 30000
scale = 1.0,0.75
pos = -44*ifelse(root,facing=1,1,-1),45+5
postype = p1
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
pausemovetime = 9999999
supermovetime = 9999999

[State 0, PalFX]
type = PalFX
trigger1 = time>=12
time = 1
add = 0,256,0
mul = 0,256,0
invertall = 0
color = 256
;ignorehitpause = 
;persistent = 

[State 21000, Explod]
type = explod
trigger1 = time>=12
trigger1 = numexplod(30001)=0
anim = 30001
id = 30001
scale = 1.0,0.75
pos = -44*ifelse(root,facing=1,1,-1),45+5
postype = p1
facing = ifelse(root,facing=1,1,-1)
vfacing = 1
bindtime = -1
removetime = -1
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
pausemovetime = 9999999
supermovetime = 9999999

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(30001)=1
ID = 30001
scale = (1.0*var(54)/var(55)),0.75
ignorehitpause =1

[State 21000, REX]
type = removeexplod
trigger1 = root,var(54)<=0
;trigger2 = root,stateno = [4200,4299]
id = 30000

[State 21000, REX]
type = removeexplod
trigger1 = root,var(54)<=0
;trigger2 = root,stateno = [4200,4299]
id = 30001

[State 0, PalFX]
type = PalFX
trigger1 = time>=12
trigger1 = root,var(54)<=0
time = 0
add = 0,0,0
mul = 256,256,256
invertall = 0
color = 256

[State 30050, Time Over]
type = changestate
trigger1 = root,var(54)<=0
value = 30050

;------------------------------
; Myon Clone Buffer
[StateDef 30053]
Type = A
MoveType = I
Physics = N
SprPriority = 1
anim = 1998
velset = 0,0

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 30053, BTR]
type = bindtoroot
trigger1 = 1
pos = 0,0

[State 30053, VS]
type = varset
trigger1 = time=0
var(59)=root,stateno

[State 30053, Spirit Level]
type = varset
trigger1 = time=0
var(53)=root,var(53)

[State 30053, Spirit Level]
type = varset
trigger1 = time=0
var(54)=root,var(54)

[State 30053, Hard Scale Flags]
type = varset
trigger1 = time=0
var(57)=root,var(57)

[State 30053, Attack Level]
type = varset
trigger1 = time=0
var(10)=root,var(10)

[State -2, Copy Forced Prorate]
type = varset
trigger1 = time = 0
fvar(30) = root,fvar(30)

[State -2, Copy Dampener]
type = varset
trigger1 = time = 0
fvar(10) = root,fvar(10)

[State -2, Final Dampen]
type = null
trigger1 = (stateno!=[2000,4999])
trigger1 = (fvar(11):=ifelse(root,fvar(9)>fvar(10),root,fvar(9),fvar(10))*ifelse(root,var(4)>0,0.5,1.0)*0.6) || 1
ignorehitpause = 1

[State 30053, CS]
type = changestate
trigger1 = time>=11
value = var(59)

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

[State 20010, Ground Idle]
type = null
triggerall = numenemy
triggerall = root,AILevel > 0 && var(2)=0
triggerall = root,statetype != A
triggerall = root,ctrl || root,stateno = 100 || root,stateno = 105
;triggerall = !(root,inguarddist)
triggerall = (enemynear(0),statetype != A && enemynear(0),statetype != L)
triggerall = (var(3):=16)||1 ; Number of Options
trigger1 = floor(var(3)*var(0)/1000.0)=0
trigger1 = (var(1):=200+200*(random%2=0))||1
trigger1 = var(2):=11-root,AILevel
trigger2 = floor(var(3)*var(0)/1000.0)=1
trigger2 = (var(1):=210+200*(random%2=0))||1
trigger2 = var(2):=11-root,AILevel
trigger3 = floor(Var(3)*var(0)/1000.0)=2
trigger3 = (var(1):=215)||1
trigger3 = var(2):=11-root,AILevel
trigger4 = floor(var(3)*var(0)/1000.0)=3
trigger4 = (var(1):=220+200*(random%2=0))||1
trigger4 = var(2):=11-root,AILevel
trigger5 = floor(var(3)*var(0)/1000.0)=4
trigger5 = (var(1):=225)||1
trigger5 = var(2):=11-root,AILevel
trigger6 = floor(var(3)*var(0)/1000.0)=5
trigger6 = (var(1):=800)||1
trigger6 = var(2):=11-root,AILevel
trigger7 = floor(var(3)*var(0)/1000.0)=6
trigger7 = (var(1):=801)||1
trigger7 = var(2):=11-root,AILevel
trigger8 = floor(var(3)*var(0)/1000.0)=7
trigger8 = (var(1):=1000+(random%3))||1
trigger8 = var(2):=11-root,AILevel
trigger9 = floor(var(3)*var(0)/1000.0)=8
trigger9 = (var(1):=1100+(random%3))||1
trigger9 = var(2):=11-root,AILevel
trigger10 = floor(var(3)*var(0)/1000.0)=9
trigger10 = (var(1):=1200+(random%3))||1
trigger10 = var(2):=11-root,AILevel
trigger11 = floor(var(3)*var(0)/1000.0)=10
trigger11 = (var(1):=1300+(random%3))||1
trigger11 = var(2):=11-root,AILevel
trigger12 = floor(var(3)*var(0)/1000.0)=11
trigger12 = (var(1):=2000)||1
trigger12 = var(2):=11-root,AILevel
trigger13 = floor(var(3)*var(0)/1000.0)=12
trigger13 = (var(1):=2100)||1
trigger13 = var(2):=11-root,AILevel
trigger14 = floor(var(3)*var(0)/1000.0)=13
trigger14 = (var(1):=4000)||1
trigger14 = var(2):=11-root,AILevel
trigger15 = floor(var(3)*var(0)/1000.0)=14
trigger15 = (var(1):=100)||1
trigger15 = var(2):=11-root,AILevel
trigger16 = floor(var(3)*var(0)/1000.0)=15
trigger16 = (var(1):=105)||1
trigger16 = var(2):=11-root,AILevel

[State 20010, Ground Idle]
type = null
triggerall = root,AILevel > 0 && var(2)=0
triggerall = root,statetype = A
triggerall = root,ctrl || root,stateno = 110 || root,stateno = 115
triggerall = (var(3):=7)||1 ; Number of Options
trigger1 = floor(var(3)*var(0)/1000.0)=0
trigger1 = (var(1):=600)||1
trigger1 = var(2):=11-root,AILevel
trigger2 = floor(var(3)*var(0)/1000.0)=1
trigger2 = (var(1):=610)||1
trigger2 = var(2):=11-root,AILevel
trigger3 = floor(Var(3)*var(0)/1000.0)=2
trigger3 = (var(1):=620)||1
trigger3 = var(2):=11-root,AILevel
trigger4 = floor(var(3)*var(0)/1000.0)=3
trigger4 = (var(1):=625)||1
trigger4 = var(2):=11-root,AILevel
trigger5 = floor(var(3)*var(0)/1000.0)=4
trigger5 = (var(1):=2000)||1
trigger5 = var(2):=11-root,AILevel
trigger6 = floor(var(3)*var(0)/1000.0)=5
trigger6 = (var(1):=100)||1
trigger6 = var(2):=11-root,AILevel
trigger7 = floor(var(3)*var(0)/1000.0)=6
trigger7 = (var(1):=105)||1
trigger7 = var(2):=11-root,AILevel

[State 20010, Light]
type = null
triggerall = root,AILevel > 0 && var(2)=0
triggerall = root,statetype = A
triggerall = root,stateno = 200 || root,stateno = 400
triggerall = (var(3):=7)||1 ; Number of Options
trigger1 = floor(var(3)*var(0)/1000.0)=0
trigger1 = (var(1):=200+200*(random%2=0))||1
trigger1 = var(2):=11-root,AILevel
trigger2 = floor(var(3)*var(0)/1000.0)=1
trigger2 = (var(1):=210+200*(random%2=0))||1
trigger2 = var(2):=11-root,AILevel
trigger3 = floor(Var(3)*var(0)/1000.0)=2
trigger3 = (var(1):=215)||1
trigger3 = var(2):=11-root,AILevel
trigger4 = floor(var(3)*var(0)/1000.0)=3
trigger4 = (var(1):=220+200*(random%2=0))||1
trigger4 = var(2):=11-root,AILevel
trigger5 = floor(var(3)*var(0)/1000.0)=4
trigger5 = (var(1):=225)||1
trigger5 = var(2):=11-root,AILevel

[State 20010, Medium]
type = null
triggerall = root,AILevel > 0 && var(2)=0
triggerall = root,statetype = A
triggerall = root,stateno = 210 || root,stateno = 410
triggerall = (var(3):=7)||1 ; Number of Options
trigger1 = floor(var(3)*var(0)/1000.0)=0
trigger1 = (var(1):=220)||1
trigger1 = var(2):=11-root,AILevel
trigger2 = floor(var(3)*var(0)/1000.0)=1
trigger2 = (var(1):=225)||1
trigger2 = var(2):=11-root,AILevel
trigger3 = floor(Var(3)*var(0)/1000.0)=2
trigger3 = (var(1):=420)||1
trigger3 = var(2):=11-root,AILevel
trigger4 = floor(var(3)*var(0)/1000.0)=3
trigger4 = (var(1):=1000+(random%3))||1
trigger4 = var(2):=11-root,AILevel
trigger5 = floor(var(3)*var(0)/1000.0)=4
trigger5 = (var(1):=1100+(random%3))||1
trigger5 = var(2):=11-root,AILevel
trigger6 = floor(var(3)*var(0)/1000.0)=5
trigger6 = (var(1):=1200+(random%3))||1
trigger6 = var(2):=11-root,AILevel
trigger7 = floor(var(3)*var(0)/1000.0)=6
trigger7 = (var(1):=1300+(random%3))||1
trigger7 = var(2):=11-root,AILevel

[State 20010, Medium]
type = null
triggerall = root,AILevel > 0 && var(2)=0
triggerall = root,statetype = A
triggerall = root,stateno = 215 || root,stateno = 220 || root,stateno = 225; || root,stateno = 410
triggerall = (var(3):=4)||1 ; Number of Options
trigger1 = floor(var(3)*var(0)/1000.0)=0
trigger1 = (var(1):=1000+(random%3))||1
trigger1 = var(2):=11-root,AILevel
trigger2 = floor(var(3)*var(0)/1000.0)=1
trigger2 = (var(1):=1100+(random%3))||1
trigger2 = var(2):=11-root,AILevel
trigger3 = floor(var(3)*var(0)/1000.0)=2
trigger3 = (var(1):=1200+(random%3))||1
trigger3 = var(2):=11-root,AILevel
trigger4 = floor(var(3)*var(0)/1000.0)=3
trigger4 = (var(1):=1300+(random%3))||1
trigger4 = var(2):=11-root,AILevel

[State 20010, Specials]
type = null
triggerall = root,AILevel > 0 && var(2)=0
triggerall = root,statetype = A
triggerall = root,stateno = [1000,1999]
triggerall = (var(3):=3)||1 ; Number of Options
trigger1 = floor(var(3)*var(0)/1000.0)=0
trigger1 = (var(1):=2000)||1
trigger1 = var(2):=11-root,AILevel
trigger2 = floor(var(3)*var(0)/1000.0)=1
trigger2 = (var(1):=2100)||1
trigger2 = var(2):=11-root,AILevel
trigger3 = floor(var(3)*var(0)/1000.0)=2
trigger3 = (var(1):=4000)||1
trigger3 = var(2):=11-root,AILevel

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