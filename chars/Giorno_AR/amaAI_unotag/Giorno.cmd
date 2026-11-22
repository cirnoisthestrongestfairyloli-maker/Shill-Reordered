;-| Button Remapping |-----------------------------------------------------

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| default values |-------------------------------------------------------

[defaults]
command.time = 15
command.buffer.time = 1

;---------------------------------------------------------------------------

[command]
name = "qcfx2"
command = ~D, DF, F,~D, DF, F
time = 20

[command]
name = "qcbx2"
command = ~D, DB, B,~D, DB, B
time = 20

[Command]
name = "dx3"
command = ~F, B, DB, D, DF, F
time = 30

[command]
name = "dp"
command = ~F, D, DF
time = 12

[command]
name = "dp"
command = ~F, D, F
time = 12

[command]
name = "rdp"
command = ~B, D, DB
time = 12

[command]
name = "rdp"
command = ~B, D, B
time = 12

[command]
name = "qcf"
command = ~D, DF, F
time = 20

[command]
name = "qcb"
command = ~D, DB, B
time = 20

[command]
name = "dd"
command = ~D, >D
time = 12

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"     ;Required (do not remove)
command = ~F, >F
time = 5
buffer.time = 3

[Command]
name = "BB"     ;Required (do not remove)
command = ~B, >B
time = 5
buffer.time = 3

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = b+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "down_b"
command = U, D, U, D, U, D, U, D
time = 1

;-| Single Button |---------------------------------------------------------

[Command]
name = "a"
command = U, D, U, D, U, D, U, D
time = 1
buffer.time = 1

[Command]
name = "b"
command = U, D, U, D, U, D, U, D
time = 1
buffer.time = 1

[Command]
name = "c"
command = x
time = 1
buffer.time = 1

[Command]
name = "x"
command = a
time = 1
buffer.time = 1

[Command]
name = "y"
command = b
time = 1
buffer.time = 1

[Command]
name = "z"
command = c
time = 1
buffer.time = 1

[Command]
name = "start"
command = s
time = 1
buffer.time = 1

;-| Hold Dir |--------------------------------------------------------------


[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;-| Release Dir |-----------------------------------------------------------

[Command]
name = "release_fwd"
command = ~F
time = 1

[Command]
name = "release_down"
command = ~D
time = 1

[Command]
name = "release_back"
command = ~B
time = 1

[Command]
name = "release_up"
command = ~U
time = 1

;-| Tap Direction |---------------------------------------------------------

[Command]
name = "fwd"
command = >F
time = 1

[Command]
name = "back"
command = >B
time = 1

[Command]
name = "up"
command = $U
time = 1

[Command]
name = "down"
command = $D
time = 1

;-| Release Button |---------------------------------------------------------

[Command]
name = "holda"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "holdb"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "holdc"
command = /x
time = 1

[Command]
name = "holdx"
command = /a
time = 1

[Command]
name = "holdy"
command = /b
time = 1

[Command]
name = "holdz"
command = /c
time = 1

[Command]
name = "release_a"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "release_b"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "release_c"
command = ~x
time = 1

[Command]
name = "release_x"
command = ~a
time = 1

[Command]
name = "release_y"
command = ~b
time = 1

[Command]
name = "release_z"
command = ~c
time = 1

;-| Jump |---------------------------------------------------------

[Command]
name = "DU"
command = $D, $U 
time = 10

[command]
name = "up"
command = $U
time = 1


[Command]
name = "63214aa"
command = ~D,D,D,a+b
time = 35
buffer.time = 3

[Command]
name = "63214aa"
command = ~D,D,D,b+c
time = 35
buffer.time = 3

[Command]
name = "63214aa"
command = ~D,D,D,c+a
time = 35
buffer.time = 3

[Command]
name = "mudamudamudamuda"
command = ~D,DF,$F,D,DF,$F,a+b
time = 32
buffer.time = 3

[Command]
name = "mudamudamudamuda"
command = ~D,DF,$F,D,DF,$F,a+c
time = 32
buffer.time = 3

[Command]
name = "mudamudamudamuda"
command = ~D,DF,$F,D,DF,$F,b+c
time = 32
buffer.time = 3

[Command]
name = "ryaku3"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "TripleKFPalm"
command = ~D,DF,$F,D,DF,$F,a
time = 24
buffer.time = 3

[Command]
name = "TripleKFPalm"
command = ~D,DF,$F,D,DF,$F,b
time = 24
buffer.time = 3

[Command]
name = "nesp"
command = ~D,DB,$B,D,DB,$B,a
time = 24
buffer.time = 3

[Command]
name = "nesp"
command = ~D,DB,$B,D,DB,$B,b
time = 24
buffer.time = 3

[Command]
name = "デム"
command = ~D, B, x
time = 20


[Command]
name = "syutugen"
command = ~D, DF, F, x

[Command]
name = "henrin_x"
command = ~B, D, DB, a

[Command]
name = "henrin_y"
command = ~B, D, DB, b

[Command]
name = "henrin_z"
command = ~B, D, DB, c

[Command]
name = "upper_x"
command = ~B,DB,$D,a
time = 10
buffer.time = 3

[Command]
name = "upper_y"
command = ~B,DB,$D,b
time = 10
buffer.time = 3

[Command]
name = "upper_z"
command = ~B,DB,$D,c
time = 10
buffer.time = 3

[Command]
name = "ryaku1"
command = ~D,DF,$F,D,DF,$F,c
time = 24
buffer.time = 3

[Command]
name = "ryaku2"
command = ~D,DB,$B,D,DB,$B,c
time = 24
buffer.time = 3
 
 
[Command]
name = "QCF_x"
command = ~D, DF, F, a

[Command]
name = "QCF_y"
command = ~D, DF, F, b
 

[Command]
name = "nekko_x"
command = ~D,D, a

[Command]
name = "nekko_y"
command = ~D,D, b

[Command]
name = "nekko_b"
command = ~D,D, c

[Command]
name = "fish_x"
command = ~D, DB, B, a

[Command]
name = "fish_y"
command = ~D, DB, B, b

[Command]
name = "fish_b"
command = ~D, DB, B, c

[Command]
name = "QCB_a"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "QCB_b"
command = ~D, DF, F, c

[Command]
name = "FF_ab"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "FF_a"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "FF_b"
command = U, D, U, D, U, D, U, D
time = 1



[Command]
name = "jump"
command = ~D,$U
time = 10



[Command]
name = "away-f"
command = U, D, U, D, U, D, U, D
time = 1



[Command]
name = "away-b"
command = U, D, U, D, U, D, U, D
time = 1


[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10


[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "b+a"
command = U, D, U, D, U, D, U, D
time = 1


[Command]
name = "down_a"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "down_b"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "holdc"
command = /$x
time = 1

[Command]
name = "hold_z"
command = /c
time = 1

[Command]
name = "hold_x"
command = /a
time = 1

[Command]
name = "hold_y"
command = /b
time = 1



[Command]
name = "up"
command = $U
time = 1

[Command]
name = "upc"
command = ~$U
time = 1


[Command]
name = "a"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "b"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "c"
command = x
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
command = c
time = 1

[Command]
name = "start"
command = s
time = 1


[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holda"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "holdb"
command = /$c
time = 1

[Command]
name = "holdx"
command = /$a
time = 1

[Command]
name = "holdy"
command = /$b
time = 1

[Command]
name = "holdz"
command = U, D, U, D, U, D, U, D
time = 1

[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1


[Statedef 30005]
type = A
ctrl = 0
anim = 0
velset = -10*facing,0
movetype = I
physics = N
sprpriority = 1

[state 30005]
type = turn
Trigger1 = facing != root,facing

[State 30005,間違いで本体が来たら立ちへ移行]
type=selfstate
trigger1=!ishelper
value=0

[State 30005]
type=parentvarset
TriggerAll=var(59)!=-1
Trigger1=command="a"&&root,command="a"
Trigger2=command="b"&&root,command="b"
Trigger3=command="c"&&root,command="c"
Trigger4=command="x"&&root,command="x"
Trigger5=command="y"&&root,command="y"
Trigger6=command="z"&&root,command="z"
Trigger7=command="fwd"&&root,command="fwd"
Trigger8=command="back"&&root,command="back"
Trigger9=command="up"&&root,command="up"
Trigger10=command="down"&&root,command="down"

var(59)=0

[State 30005]
Type = varset
triggerAll=isHelper
Trigger1=root,var(59)!=0
trigger2=command="up"&&root,command="up"
trigger3=command="down"&&root,command="down"
trigger4=command="back"&&root,command="back"
trigger5=command="fwd"&&root,command="fwd"
trigger6=command="a"&&root,command="a"
trigger7=command="b"&&root,command="b"
trigger8=command="c"&&root,command="c"
trigger9=command="x"&&root,command="x"
trigger10=command="y"&&root,command="y"
trigger11=command="z"&&root,command="z"

var(59)=-1

[State 30005]
type=varset
TriggerAll=time>4
triggerall=var(59)!=-1
trigger1=root,command="up"&&(roundstate=2&&root,ctrl)
trigger2=root,command="down"&&(roundstate=2&&root,ctrl)
trigger3=root,command="back"&&(roundstate=2&&root,ctrl)
trigger4=root,command="fwd"&&(roundstate=2&&root,ctrl)
trigger5=root,command="a"
trigger6=root,command="b"
trigger7=root,command="c"
trigger8=root,command="x"
trigger9=root,command="y"
trigger10=root,command="z"

var(59)=1


[State  30005,画面端前]
type = helper
trigger1 = time = 0
trigger1 = !var(36)
helpertype=normal
name="mae"
stateno=30006
ID=30006+root,id
keyctrl=0


persistent = 0

[state 30005]
type = varset
Trigger1 = time=0
var(0)=0
[State 30005]
type = SelfState
trigger1 = !IsHelper
Value = 0
[State 30005]
type = assertspecial
trigger1 = 1
flag = invisible
[State 30005]
type = NotHitBy
value = SCA
trigger1 = 1
[state 30005]
type=Projectile
trigger1 = time = 0
trigger1 = numprojID(30005) < 1
velocity = -10*facing,0
projID = 30005
projanim = 0
projhits = 9999
projpriority = 9999
offset = 0,9999
projstagebound = 0
projedgebound = 100000
projremovetime = -1


[state 30005]
type = velset
trigger1 = vel X != 0
Trigger1 = root,numprojID(30005) = 0
x = 0
[state 30005]
type = varset
trigger1 = vel X= 0
var(36) = ceil(rootdist X)
[state 30005]
type = varset
trigger1 = vel X= 0
var(38) = ceil(p2bodydist X)

[state 重力加速度]
type=null
triggerall=numenemy
trigger1=fvar(0):=enemy(0),const(movement.yaccel)
trigger2=enemy(0),movetype=h&&enemy(0),stateno!=[120,155]
trigger2=fvar(0):=enemy(0),gethitvar(yaccel)

[state 重力計算]
type=null
trigger1=numenemy
trigger1=1||fvar(1):=enemy(0),vel y+fvar(0)/2
trigger1=1||fvar(2):=enemy(0),vel y*2+fvar(0)*2*2/2
trigger1=1||fvar(3):=enemy(0),vel y*3+fvar(0)*3*3/2
trigger1=1||fvar(4):=enemy(0),vel y*4+fvar(0)*4*4/2
trigger1=1||fvar(5):=enemy(0),vel y*5+fvar(0)*5*5/2
trigger1=1||fvar(6):=enemy(0),vel y*6+fvar(0)*6*6/2
trigger1=1||fvar(7):=enemy(0),vel y*7+fvar(0)*7*7/2
trigger1=1||fvar(8):=enemy(0),vel y*8+fvar(0)*8*8/2
trigger1=1||fvar(9):=enemy(0),vel y*9+fvar(0)*9*9/2
trigger1=1||fvar(10):=enemy(0),vel y*10+fvar(0)*10*10/2
trigger1=1||fvar(11):=enemy(0),vel y*11+fvar(0)*11*11/2
trigger1=1||fvar(12):=enemy(0),vel y*12+fvar(0)*12*12/2
trigger1=1||fvar(13):=enemy(0),vel y*13+fvar(0)*13*13/2
trigger1=1||fvar(14):=enemy(0),vel y*14+fvar(0)*14*14/2
trigger1=1||fvar(15):=enemy(0),vel y*15+fvar(0)*15*15/2
trigger1=1||fvar(16):=enemy(0),vel y*16+fvar(0)*16*16/2
trigger1=1||fvar(17):=enemy(0),vel y*17+fvar(0)*17*17/2
trigger1=1||fvar(18):=enemy(0),vel y*18+fvar(0)*18*18/2
trigger1=1||fvar(19):=enemy(0),vel y*19+fvar(0)*19*19/2
trigger1=1||fvar(20):=enemy(0),vel y*20+fvar(0)*20*20/2
trigger1=1||fvar(21):=enemy(0),vel y*21+fvar(0)*21*21/2
trigger1=1||fvar(22):=enemy(0),vel y*22+fvar(0)*22*22/2
trigger1=1||fvar(23):=enemy(0),vel y*23+fvar(0)*23*23/2
trigger1=1||fvar(24):=enemy(0),vel y*24+fvar(0)*24*24/2
trigger1=1||fvar(25):=enemy(0),vel y*25+fvar(0)*25*25/2
trigger1=1||fvar(26):=enemy(0),vel y*26+fvar(0)*26*26/2
trigger1=1||fvar(27):=enemy(0),vel y*27+fvar(0)*27*27/2
trigger1=1||fvar(28):=enemy(0),vel y*28+fvar(0)*28*28/2
trigger1=1||fvar(29):=enemy(0),vel y*29+fvar(0)*29*29/2
trigger1=1||fvar(30):=enemy(0),vel y*30+fvar(0)*30*30/2
trigger1=1||fvar(31):=enemy(0),vel y*31+fvar(0)*31*31/2
trigger1=1||fvar(32):=enemy(0),vel y*32+fvar(0)*32*32/2
trigger1=1||fvar(33):=enemy(0),vel y*33+fvar(0)*33*33/2
trigger1=1||fvar(34):=enemy(0),vel y*34+fvar(0)*34*34/2
trigger1=1||fvar(35):=enemy(0),vel y*35+fvar(0)*35*35/2
trigger1=1||fvar(36):=enemy(0),vel y*36+fvar(0)*36*36/2
trigger1=1||fvar(37):=enemy(0),vel y*37+fvar(0)*37*37/2
trigger1=1||fvar(38):=enemy(0),vel y*38+fvar(0)*38*38/2
trigger1=1||fvar(39):=enemy(0),vel y*39+fvar(0)*39*39/2



[State -1, 学習]
type = null
triggerall = var(36)
triggerall = NumEnemy
triggerall = enemy(0),stateno != [0,105]
triggerall = enemy(0),movetype = A
triggerall = numhelper(40005+root,id)
triggerall = helper(40005+root,id),var(1)=1 || enemy(0),numproj
triggerall = helper(40005+root,id),var(3)=1
trigger1 = var(10) = 0
trigger1 = var(10) := Enemy(0),stateno
trigger2 = var(11) = 0 && var(10) != Enemy(0),stateno
trigger2 = var(11) := Enemy(0),stateno
trigger3 = var(12) = 0 && var(10) != Enemy(0),stateno && var(11) != Enemy(0),stateno
trigger3 = var(12) := Enemy(0),stateno
trigger4 = var(13) = 0 && var(10) != Enemy(0),stateno && var(11) != Enemy(0),stateno && var(12) != Enemy(0),stateno
trigger4 = var(13) := Enemy(0),stateno
trigger5 = var(14) = 0 && var(10) != Enemy(0),stateno && var(11) != Enemy(0),stateno && var(12) != Enemy(0),stateno && var(13) != Enemy(0),stateno
trigger5 = var(14) := Enemy(0),stateno
trigger6 = var(15) = 0 && var(10) != Enemy(0),stateno && var(11) != Enemy(0),stateno && var(12) != Enemy(0),stateno && var(13) != Enemy(0),stateno && var(14) != Enemy(0),stateno
trigger6 = var(15) := Enemy(0),stateno
trigger7 = var(16) = 0 && var(10) != Enemy(0),stateno && var(11) != Enemy(0),stateno && var(12) != Enemy(0),stateno && var(13) != Enemy(0),stateno && var(14) != Enemy(0),stateno
trigger7 = var(15) != Enemy(0),stateno
trigger7 = var(16) := Enemy(0),stateno
trigger8 = var(17) = 0 && var(10) != Enemy(0),stateno && var(11) != Enemy(0),stateno && var(12) != Enemy(0),stateno && var(13) != Enemy(0),stateno && var(14) != Enemy(0),stateno
trigger8 = var(15) != Enemy(0),stateno && var(16) != Enemy(0),stateno
trigger8 = var(17) := Enemy(0),stateno
trigger9 = var(18) = 0 && var(10) != Enemy(0),stateno && var(11) != Enemy(0),stateno && var(12) != Enemy(0),stateno && var(13) != Enemy(0),stateno && var(14) != Enemy(0),stateno
trigger9 = var(15) != Enemy(0),stateno && var(16) != Enemy(0),stateno && var(17) != Enemy(0),stateno
trigger9 = var(18) := Enemy(0),stateno
trigger10= var(19) = 0 && var(10) != Enemy(0),stateno && var(11) != Enemy(0),stateno && var(12) != Enemy(0),stateno && var(13) != Enemy(0),stateno && var(14) != Enemy(0),stateno
trigger10= var(15) != Enemy(0),stateno && var(16) != Enemy(0),stateno && var(17) != Enemy(0),stateno && var(18) != Enemy(0),stateno
trigger10= var(19) := Enemy(0),stateno

[State -1, 学習タッグ二人目用]
type = null
triggerall = var(36)
triggerall = NumEnemy=2
triggerall = enemy(1),stateno != [0,105]
triggerall = enemy(1),movetype = A
triggerall = numhelper(40005+root,id)
triggerall = helper(40005+root,id),var(1)=1 || enemy(1),numproj
triggerall = helper(40005+root,id),var(3)=1
trigger1 = var(20) = 0
trigger1 = var(20) := Enemy(1),stateno
trigger2 = var(21) = 0 && var(20) != Enemy(1),stateno
trigger2 = var(21) := Enemy(1),stateno
trigger3 = var(22) = 0 && var(20) != Enemy(1),stateno && var(21) != Enemy(1),stateno
trigger3 = var(22) := Enemy(1),stateno
trigger4 = var(23) = 0 && var(20) != Enemy(1),stateno && var(21) != Enemy(1),stateno && var(22) != Enemy(1),stateno
trigger4 = var(23) := Enemy(1),stateno
trigger5 = var(24) = 0 && var(20) != Enemy(1),stateno && var(21) != Enemy(1),stateno && var(22) != Enemy(1),stateno && var(23) != Enemy(1),stateno
trigger5 = var(24) := Enemy(1),stateno
trigger6 = var(25) = 0 && var(20) != Enemy(1),stateno && var(21) != Enemy(1),stateno && var(22) != Enemy(1),stateno && var(23) != Enemy(1),stateno && var(24) != Enemy(1),stateno
trigger6 = var(25) := Enemy(1),stateno
trigger7 = var(26) = 0 && var(20) != Enemy(1),stateno && var(21) != Enemy(1),stateno && var(22) != Enemy(1),stateno && var(23) != Enemy(1),stateno && var(24) != Enemy(1),stateno
trigger7 = var(25) != Enemy(1),stateno
trigger7 = var(26) := Enemy(1),stateno
trigger8 = var(27) = 0 && var(20) != Enemy(1),stateno && var(21) != Enemy(1),stateno && var(22) != Enemy(1),stateno && var(23) != Enemy(1),stateno && var(24) != Enemy(1),stateno
trigger8 = var(25) != Enemy(1),stateno && var(26) != Enemy(1),stateno
trigger8 = var(27) := Enemy(1),stateno
trigger9 = var(28) = 0 && var(20) != Enemy(1),stateno && var(21) != Enemy(1),stateno && var(22) != Enemy(1),stateno && var(23) != Enemy(1),stateno && var(24) != Enemy(1),stateno
trigger9 = var(25) != Enemy(1),stateno && var(26) != Enemy(1),stateno && var(27) != Enemy(1),stateno
trigger9 = var(28) := Enemy(1),stateno
trigger10= var(29) = 0 && var(20) != Enemy(1),stateno && var(21) != Enemy(1),stateno && var(22) != Enemy(1),stateno && var(23) != Enemy(1),stateno && var(24) != Enemy(1),stateno
trigger10= var(25) != Enemy(1),stateno && var(26) != Enemy(1),stateno && var(27) != Enemy(1),stateno && var(28) != Enemy(1),stateno
trigger10= var(29) := Enemy(1),stateno

[State -1, 学習：本体スイッチON]
type = parentvarset
triggerall = numenemy
triggerall = enemy(0),stateno != 0
trigger1 = enemy(0),stateno = var(10) || enemy(0),stateno = var(11) || enemy(0),stateno = var(12)
trigger2 = enemy(0),stateno = var(13) || enemy(0),stateno = var(14)
trigger3 = enemy(0),stateno = var(15) || enemy(0),stateno = var(16) || enemy(0),stateno = var(17)
trigger4 = enemy(0),stateno = var(18) || enemy(0),stateno = var(19)
var(47) = 1

[State -1, 学習：本体スイッチON]
type = parentvarset
triggerall = numenemy=2
triggerall = Enemy(1),stateno != 0 && Enemy(1),numpartner
trigger1 = Enemy(1),stateno = var(20) || Enemy(1),stateno = var(21) || Enemy(1),stateno = var(22)
trigger2 = Enemy(1),stateno = var(23) || Enemy(1),stateno = var(24)
trigger3 = Enemy(1),stateno = var(25) || Enemy(1),stateno = var(26) || Enemy(1),stateno = var(27)
trigger4 = Enemy(1),stateno = var(28) || Enemy(1),stateno = var(29)
var(47) = 1

[State -1, 学習：本体スイッチOFF]
type = parentvarset
triggerall = numenemy
triggerall = enemy(0),numproj=0&&enemy(numenemy=2),numproj=0
triggerall = numhelper(40005+root,id)=0
trigger1 = enemy(0),stateno != var(10) && enemy(0),stateno != var(11) && enemy(0),stateno != var(12)
trigger1 = enemy(0),stateno != var(13) && enemy(0),stateno != var(14)
trigger1 = enemy(0),stateno != var(15) && enemy(0),stateno != var(16) && enemy(0),stateno != var(17)
trigger1 = enemy(0),stateno != var(18) && enemy(0),stateno != var(19)
trigger2 = enemy(0),stateno=0
var(47) = 0

[State -1, 学習：本体スイッチOFF]
type = parentvarset
triggerall = numenemy=2
triggerall = enemy(0),numproj=0&&enemy(numenemy=2),numproj=0
triggerall = numhelper(40005+root,id)=0
trigger1 = Enemy(1),stateno != var(20) && Enemy(1),stateno != var(21) && Enemy(1),stateno = var(22)
trigger1 = Enemy(1),stateno != var(23) && Enemy(1),stateno != var(24)
trigger1 = Enemy(1),stateno != var(25) && Enemy(1),stateno != var(26) && Enemy(1),stateno = var(27)
trigger1 = Enemy(1),stateno != var(28) && Enemy(1),stateno != var(29)
trigger2 = enemy(0),stateno=0
var(47) = 0



[Statedef 30006]
type = A
ctrl = 0
anim = 0
velset = 10*facing,0
movetype = I
physics = N
sprpriority = 1
[state 30006]
type = varset
Trigger1 = time=0
var(0)=0
[State 30006]
type = SelfState
trigger1 = !IsHelper
Value = 0
[State 30006]
type = assertspecial
trigger1 = 1
flag = invisible
[State 30006]
type = NotHitBy
value = SCA
trigger1 = 1
[state 30006]
type=Projectile
trigger1 = time = 0
trigger1 = numprojID(30006) < 1
velocity = 10*facing,0
projID = 30006
projanim = 0
projhits = 9999
projpriority = 9999
offset = 0,9999
projstagebound = 0
projedgebound = 100000
projremovetime = -1


[state 30006]
type = velset
trigger1 = vel X != 0
Trigger1 = root,numprojID(30006)= 0
x = 0
[state 30006]
type = varset

trigger1 = vel X= 0
var(37) = ceil(rootdist X)
[state 30006]
type = varset

trigger1 = vel X= 0
var(38) = ceil(p2bodydist X)
[state 30006]
type = turn
trigger1 = vel X = 0
Trigger1 = root,numprojID(30006)= 0
trigger1 = var(37) < 0


[State 30006, 飛び道具監視]
type = null
triggerall = NumEnemy
trigger1 = var(3) := Enemy(0),numproj
trigger2 = var(4) := Enemy(0),numhelper

[State 30006, 飛び道具監視タッグ二人目用]
type = null
triggerall = NumEnemy
trigger1 = var(5) := Enemy(numenemy=2),numproj
trigger2 = var(6) := Enemy(numenemy=2),numhelper


[state 重力加速度]
type=null
triggerall=numenemy
trigger1=enemy(numenemy=2),movetype=h&&enemy(numenemy=2),stateno!=[120,155]
trigger1=fvar(0):=enemy(numenemy=2),gethitvar(yaccel)
trigger2=fvar(0):=enemy(numenemy=2),const(movement.yaccel)

[state 重力計算]
type=null
trigger1=numenemy
trigger1=1||fvar(1):=enemy(numenemy=2),vel y+fvar(0)/2
trigger1=1||fvar(2):=enemy(numenemy=2),vel y*2+fvar(0)*2*2/2
trigger1=1||fvar(3):=enemy(numenemy=2),vel y*3+fvar(0)*3*3/2
trigger1=1||fvar(4):=enemy(numenemy=2),vel y*4+fvar(0)*4*4/2
trigger1=1||fvar(5):=enemy(numenemy=2),vel y*5+fvar(0)*5*5/2
trigger1=1||fvar(6):=enemy(numenemy=2),vel y*6+fvar(0)*6*6/2
trigger1=1||fvar(7):=enemy(numenemy=2),vel y*7+fvar(0)*7*7/2
trigger1=1||fvar(8):=enemy(numenemy=2),vel y*8+fvar(0)*8*8/2
trigger1=1||fvar(9):=enemy(numenemy=2),vel y*9+fvar(0)*9*9/2
trigger1=1||fvar(10):=enemy(numenemy=2),vel y*10+fvar(0)*10*10/2
trigger1=1||fvar(11):=enemy(numenemy=2),vel y*11+fvar(0)*11*11/2
trigger1=1||fvar(12):=enemy(numenemy=2),vel y*12+fvar(0)*12*12/2
trigger1=1||fvar(13):=enemy(numenemy=2),vel y*13+fvar(0)*13*13/2
trigger1=1||fvar(14):=enemy(numenemy=2),vel y*14+fvar(0)*14*14/2
trigger1=1||fvar(15):=enemy(numenemy=2),vel y*15+fvar(0)*15*15/2
trigger1=1||fvar(16):=enemy(numenemy=2),vel y*16+fvar(0)*16*16/2
trigger1=1||fvar(17):=enemy(numenemy=2),vel y*17+fvar(0)*17*17/2
trigger1=1||fvar(18):=enemy(numenemy=2),vel y*18+fvar(0)*18*18/2
trigger1=1||fvar(19):=enemy(numenemy=2),vel y*19+fvar(0)*19*19/2
trigger1=1||fvar(20):=enemy(numenemy=2),vel y*20+fvar(0)*20*20/2
trigger1=1||fvar(21):=enemy(numenemy=2),vel y*21+fvar(0)*21*21/2
trigger1=1||fvar(22):=enemy(numenemy=2),vel y*22+fvar(0)*22*22/2
trigger1=1||fvar(23):=enemy(numenemy=2),vel y*23+fvar(0)*23*23/2
trigger1=1||fvar(24):=enemy(numenemy=2),vel y*24+fvar(0)*24*24/2
trigger1=1||fvar(25):=enemy(numenemy=2),vel y*25+fvar(0)*25*25/2
trigger1=1||fvar(26):=enemy(numenemy=2),vel y*26+fvar(0)*26*26/2
trigger1=1||fvar(27):=enemy(numenemy=2),vel y*27+fvar(0)*27*27/2
trigger1=1||fvar(28):=enemy(numenemy=2),vel y*28+fvar(0)*28*28/2
trigger1=1||fvar(29):=enemy(numenemy=2),vel y*29+fvar(0)*29*29/2
trigger1=1||fvar(30):=enemy(numenemy=2),vel y*30+fvar(0)*30*30/2
trigger1=1||fvar(31):=enemy(numenemy=2),vel y*31+fvar(0)*31*31/2
trigger1=1||fvar(32):=enemy(numenemy=2),vel y*32+fvar(0)*32*32/2
trigger1=1||fvar(33):=enemy(numenemy=2),vel y*33+fvar(0)*33*33/2
trigger1=1||fvar(34):=enemy(numenemy=2),vel y*34+fvar(0)*34*34/2
trigger1=1||fvar(35):=enemy(numenemy=2),vel y*35+fvar(0)*35*35/2
trigger1=1||fvar(36):=enemy(numenemy=2),vel y*36+fvar(0)*36*36/2
trigger1=1||fvar(37):=enemy(numenemy=2),vel y*37+fvar(0)*37*37/2
trigger1=1||fvar(38):=enemy(numenemy=2),vel y*38+fvar(0)*38*38/2
trigger1=1||fvar(39):=enemy(numenemy=2),vel y*39+fvar(0)*39*39/2


[Statedef 40005]
type = A
ctrl = 0
anim = 0
movetype = I
physics = N
sprpriority = 1

[state 30005]
type = posset
trigger1 = 1
x = root,pos x + 60 * facing

[State 40005]
type = SelfState
trigger1 = !IsHelper
Value = 0
[State 40005]
type = assertspecial
trigger1 = 1
flag = invisible
[State 40005]
type = NotHitBy
value = SCA
trigger1 = 1

[State 40005]
type = varadd
trigger1 = var(0)=100+(ID-20)
var(3) = 1

[State 40005]
type = varset
trigger1 = var(3) >= 100000
var(3) = 0

[State 40005]
type = varset
trigger1 = var(0)=0
trigger2 = var(0)>=250+(ID-20)
var(0) = ID-20

[State 40005]
type = parentvarset
trigger1 = var(0)=ID-20
trigger1 = var(1):=0||1
trigger1 = var(2):=0||1
trigger1 = var(6):=0||1
trigger1 = var(7):=0||1
trigger2 = var(0)>=250+(ID-20)
trigger2 = var(1)=0
var(47)=0

[State 40005, 学習P]
type = parentvarset
triggerall = NumEnemy
trigger1 = Enemy(0),numproj > 0
trigger2 = Enemy(numenemy=2),numproj > 0
var(47)=1

[State 40005]
type = varadd
trigger1 = 1
var(0) = 1

[State 40005]
type = parentvarset
triggerall = var(0)<250+(ID-20)
triggerall = playerIDexist(var(0))=1
trigger1 = playerID(var(0)),hitdefattr = SCA,AA,AT,AP
trigger1 = playerID(var(0)),teamside != root,teamside && playerID(var(0)),ishelper
trigger1 = var(1):=1||1
trigger1 = var(2):=(root,statetype=S&&(ceil(abs(playerID(var(0)),pos x-root,pos x)-playerID(var(0)),vel x)=[0,65])&&(ceil(-(playerID(var(0)),pos y-root,pos y)-playerID(var(0)),vel y)=[0,105])&&(playerID(var(0)),vel x>0))||1
trigger1 = var(6):=(root,statetype=C&&(ceil(abs(playerID(var(0)),pos x-root,pos x)-playerID(var(0)),vel x)=[0,65])&&(ceil(-(playerID(var(0)),pos y-root,pos y)-playerID(var(0)),vel y)=[0,70])&&(playerID(var(0)),vel x>0))||1
trigger1 = var(7):=(root,statetype=A&&(ceil(abs(playerID(var(0)),pos x-root,pos x)-playerID(var(0)),vel x-root,vel x)=[0,55])&&(ceil(-(playerID(var(0)),pos y-root,pos y)-playerID(var(0)),vel y)=[-65+(root,vel y<0)*60,45])&&(playerID(var(0)),vel x>0))||1





var(47) = 1

[State 40005]
type = destroyself
trigger1 = var(0)>=250+(ID-20)
trigger1 = root,var(47)=0

[State -1, ヘルパー式飛び道具接近フラグ]
type = ParentVarSet
trigger1 = root,statetype != A && (root,var(48) = 0 || time = 1)
var(48) = var(2)+var(6)
ignorehitpause = 1

[State -1, ヘルパー式飛び道具接近フラグ]
type = ParentVarSet
trigger1 = root,statetype = A && (root,var(48) = 0 || time = 1)
var(48) = var(7)+var(8)
ignorehitpause = 1

[State 40005]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
trigger1 = var(0)<250+(ID-20)
trigger2 = time=1 && var(0)>=250+(ID-20)
value = 40006


[Statedef 40006]
type = A
ctrl = 0
anim = 0
movetype = I
physics = N
sprpriority = 1

[state 30005]
type = posset
trigger1 = 1
x = root,pos x + 60 * facing

[State 40006]
type = SelfState
trigger1 = !IsHelper
Value = 0
[State 40006]
type = assertspecial
trigger1 = 1
flag = invisible
[State 40006]
type = NotHitBy
value = SCA
trigger1 = 1

[State 40005]
type = parentvarset
trigger1 = var(0)=ID-20
trigger1 = var(1):=0||1
trigger1 = var(2):=0||1
trigger1 = var(6):=0||1
trigger1 = var(7):=0||1
trigger2 = var(0)>=250+(ID-20)
trigger2 = var(1)=0
var(47)=0

[State 40005, 学習P]
type = parentvarset
triggerall = NumEnemy
trigger1 = Enemy(0),numproj > 0
trigger2 = Enemy(numenemy=2),numproj > 0
var(47)=1

[State 40006]
type = varadd
trigger1 = 1
var(0) = 1

[State 40006]
type = parentvarset
triggerall = var(0)<250+(ID-20)
triggerall = playerIDexist(var(0))=1
trigger1 = playerID(var(0)),hitdefattr = SCA,AA,AT,AP
trigger1 = playerID(var(0)),teamside != root,teamside && playerID(var(0)),ishelper
trigger1 = var(1):=1||1
trigger1 = var(2):=(root,statetype=S&&(ceil(abs(playerID(var(0)),pos x-root,pos x)-playerID(var(0)),vel x)=[0,65])&&(ceil(-(playerID(var(0)),pos y-root,pos y)-playerID(var(0)),vel y)=[0,105])&&(playerID(var(0)),vel x>0))||1
trigger1 = var(6):=(root,statetype=C&&(ceil(abs(playerID(var(0)),pos x-root,pos x)-playerID(var(0)),vel x)=[0,65])&&(ceil(-(playerID(var(0)),pos y-root,pos y)-playerID(var(0)),vel y)=[0,70])&&(playerID(var(0)),vel x>0))||1
trigger1 = var(7):=(root,statetype=A&&(ceil(abs(playerID(var(0)),pos x-root,pos x)-playerID(var(0)),vel x-root,vel x)=[0,55])&&(ceil(-(playerID(var(0)),pos y-root,pos y)-playerID(var(0)),vel y)=[-65+(root,vel y<0)*60,45])&&(playerID(var(0)),vel x>0))||1
var(47)=1

[State 40006]
type = destroyself
trigger1 = var(0)>=250+(ID-20)
trigger1 = root,var(47)=0

[State -1, ヘルパー式飛び道具接近フラグ]
type = ParentVarSet
trigger1 = root,statetype != A && (root,var(48) = 0 || time = 1)
var(48) = var(2)+var(6)
ignorehitpause = 1

[State -1, ヘルパー式飛び道具接近フラグ]
type = ParentVarSet
trigger1 = root,statetype = A && (root,var(48) = 0 || time = 1)
var(48) = var(7)
ignorehitpause = 1

[State 40006]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
trigger1 = var(0)<250+(ID-20)
trigger2 = time=1 && var(0)>=250+(ID-20)
value = 40005




;   --- Uno Tag System [Type-R] Command definition ---

[Command]
name = "aHsoNn"
command = ~D, D, D, s
Time = 25

[Command]
name = "sheoun"
command = ~D, DF, F, c+x
Time = 25

[Command]
name = "palit"
command = c+x
Time = 2

[Command]
name = "turtleuno"
command = s
Time = 2

;Abstract Reordered: A/B/C = light/medium/heavy, X = Gold Experience on/off, Y = grab, Z = parry, A+B+C = burst
[Command]
name = "ar_grab"
command = y
time = 1

[Command]
name = "ar_parry"
command = z
time = 1

[Command]
name = "ar_burst"
command = a+b+c
time = 1

[Statedef -1]

;---------------------------------------------------------------------------
;Abstract Reordered: burst (Kamijo's) - A+B+C while being hit, recharges in 75 s (var(52))
[State -1, AR burst round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(52) = 0

[State -1, AR burst recharge]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = var(52) > 0
var(52) = -1
ignorehitpause = 1

;Abstract Reordered: comeback - once a combo has done more than 15% of max life, every further hit
;knocks half a second (30 ticks) off the burst cooldown. var(53) = life when the combo started, var(54) = life last tick
[State -1, AR burst comeback]
type = VarAdd
triggerall = !ishelper
triggerall = var(52) > 0
trigger1 = movetype = H
trigger1 = Life < var(54)
trigger1 = var(53) - Life > LifeMax * 0.15
var(52) = -30
ignorehitpause = 1

[State -1, AR burst comeback clamp]
type = VarSet
triggerall = !ishelper
trigger1 = var(52) < 0
var(52) = 0
ignorehitpause = 1

[State -1, AR burst combo start]
type = VarSet
triggerall = !ishelper
trigger1 = movetype != H
var(53) = Life
ignorehitpause = 1

[State -1, AR burst last life]
type = VarSet
triggerall = !ishelper
trigger1 = 1
var(54) = Life
ignorehitpause = 1

;Abstract Reordered: burst HUD - Touma's BURST gauge, recoloured, just under the lifebar.
;var(52) = cooldown ticks (4500 = just used, 0 = ready). Anims 9660-9668, explod IDs = anims.
[State -1, AR burst gauge 9668 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9668) = 0
trigger1 = var(52) = 0
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
trigger1 = var(52) = 0
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
trigger1 = var(52) > 3750
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
trigger1 = var(52) <= 3750 && var(52) > 3000
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
trigger1 = var(52) <= 3000 && var(52) > 2250
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
trigger1 = var(52) <= 2250 && var(52) > 1500
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
trigger1 = var(52) <= 1500 && var(52) > 750
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
trigger1 = var(52) <= 750 && var(52) > 0
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
trigger1 = var(52) > 3750
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
trigger1 = var(52) = 0
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
trigger1 = var(52) = 0
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
trigger1 = var(52) > 3750
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
trigger1 = var(52) <= 3750 && var(52) > 3000
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
trigger1 = var(52) <= 3000 && var(52) > 2250
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
trigger1 = var(52) <= 2250 && var(52) > 1500
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
trigger1 = var(52) <= 1500 && var(52) > 750
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
trigger1 = var(52) <= 750 && var(52) > 0
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
trigger1 = var(52) > 3750
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
trigger1 = !(var(52) = 0)
ID = 9668
ignorehitpause = 1

[State -1, AR burst gauge 9661 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9661)
trigger1 = !(var(52) = 0)
ID = 9661
ignorehitpause = 1

[State -1, AR burst gauge 9660 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9660)
trigger1 = !(var(52) > 3750)
ID = 9660
ignorehitpause = 1

[State -1, AR burst gauge 9662 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9662)
trigger1 = !(var(52) <= 3750 && var(52) > 3000)
ID = 9662
ignorehitpause = 1

[State -1, AR burst gauge 9663 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9663)
trigger1 = !(var(52) <= 3000 && var(52) > 2250)
ID = 9663
ignorehitpause = 1

[State -1, AR burst gauge 9664 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9664)
trigger1 = !(var(52) <= 2250 && var(52) > 1500)
ID = 9664
ignorehitpause = 1

[State -1, AR burst gauge 9665 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9665)
trigger1 = !(var(52) <= 1500 && var(52) > 750)
ID = 9665
ignorehitpause = 1

[State -1, AR burst gauge 9666 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9666)
trigger1 = !(var(52) <= 750 && var(52) > 0)
ID = 9666
ignorehitpause = 1

[State -1, AR burst gauge 9667 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9667)
trigger1 = !(var(52) > 3750)
ID = 9667
ignorehitpause = 1


[State -1, AR burst]
type = ChangeState
value = ifelse(StateType = A, 7751, 7750)
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = command = "ar_burst"
triggerall = var(52) = 0
triggerall = RoundState = 2
triggerall = Alive
trigger1 = (stateno = 5000 || stateno = 5010 || stateno = 5020 || stateno = 5070) && Time > 0
trigger2 = stateno = [5001, 5099]
trigger2 = stateno != 5000 && stateno != 5010 && stateno != 5020 && stateno != 5070

;Abstract Reordered: Requiem (var(51), persistent from IntPersistIndex 51) lasts one round, not the whole match
[State -1, AR Requiem round reset]
type = VarSet
trigger1 = !IsHelper
trigger1 = RoundState < 2
trigger1 = var(51)
var(51) = 0

;Abstract Reordered: parry on Z
[State -1, AR Parry]
type = ChangeState
value = 7740
triggerall = !IsHelper
triggerall = var(59) <= 0
triggerall = roundstate = 2
triggerall = command = "ar_parry"
trigger1 = ctrl

;Abstract Reordered: 236C with half a bar = EX MUDAx3 (the MUDAx3 states spend it)
[State -1, AR EX clear]
type = VarSet
trigger1 = !IsHelper
trigger1 = var(55)
trigger1 = stateno != 1005 && stateno != 11040 && stateno != 1920
var(55) = 0

[State -1, AR EX flag]
type = VarSet
triggerall = !IsHelper
triggerall = var(59) <= 0
triggerall = power >= 500
triggerall = numhelper(10371)
triggerall = helper(10371),var(22) && (helper(10371),var(2) = [1,3])
trigger1 = stateno != 1005 && stateno != 11040 && stateno != 1920
var(55) = 1



[State -1, Partner Assist]
triggerall = 0   ;Abstract Reordered: tag system removed
type = VarSet
sysvar(4) = 10
triggerall = stateno != [13000,17002]
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Partner, Time >= 60 && Time > 0
triggerall = teammode = Simul
triggerall = StateNo != [3000,3500]
triggerall = hitdefattr != SCA, HA, HP, HT
triggerAll = StateNo != [130,152]
triggerall = !(StateNo = [5000,5500])
triggerall = stateno != [1000,3150]
trigger1 = command = "turtleuno"
trigger1 = var(59) <=  0
trigger2 = var(59) >  0
trigger2 = !ctrl && Movetype = A
trigger2 = Random < (((2 * ifelse(MoveContact, ifelse(MoveHit, 2, 3),1)) + (UniqHitCount * 2)) *(var(59)**2/64.0))
trigger3 = var(59) >  0
trigger3 = StateNo = [190,199]
trigger3 = AnimElemNo(0) = 2
ignorehitpause = 1

[State -1, Delayed Hyper]
triggerall = 0   ;Abstract Reordered: tag system removed
type = ChangeState
value = 1251127
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Partner, life > 0
triggerall = power >= 1000
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = numhelper(10000) = 1
triggerall = command = "sheoun"
trigger1 = helper(10000), stateno = 3151
trigger2 = helper(10000), stateno = 3301
ignorehitpause = 1

[State -1, Delayed Hyper]
triggerall = 0   ;Abstract Reordered: tag system removed
type = ChangeState
value = 1251127
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Partner, life > 0
triggerall = power >= 1000
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = numhelper(10000) = 0
triggerall = stateno = 13150 || stateno = 13000 || stateno = 13500
trigger1 = command = "sheoun"
trigger1 = var(59) <=  0
ignorehitpause = 1

[State -1, Team Hyper Attack]
triggerall = 0   ;Abstract Reordered: tag system removed
type = ChangeState
value = 1251125
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = Partner, life > 0
triggerall = power >= 3000
triggerall = RoundState = 2
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time >= 9		
triggerall= (StateType != A)
trigger1 = command = "sheoun"
trigger1 = (Ctrl = 1)
trigger1 = var(59) <=  0
trigger2 = command = "sheoun"
trigger2 = Anim = [200,1000]
trigger2 = var(59) <=  0
trigger3 = var(59) > 0 && ctrl
trigger3 = Random < (10 + ((Life < Lifemax/6)*3))
trigger3 = NumEnemy && enemy, pos x = [0,200]
trigger4 = var(59) >  0
trigger4 = Anim = [200,1000]
trigger4 = movetype = A
trigger4 = hitdefattr = SC, NA
trigger4 = MoveContact
trigger4 = Random < (11 + ((MoveHit)*5) + ((Life < Lifemax/6)*5))
ignorehitpause = 1

[State -1, Change Attack]
triggerall = 0   ;Abstract Reordered: tag system removed
type = ChangeState
value = 1251126
triggerall = command != "sheoun"
triggerall = NumPartner
triggerall = (sysvar(4) = 1 && power >= ifelse(((ID < Partner,ID && PowerMax <= 1000) || (ID > Partner,ID && Partner, PowerMax <= 1000)),250,500)) || (sysvar(4) = 15 && power >= ifelse(((ID < Partner,ID && PowerMax <= 1000) || (ID > Partner,ID && Partner, PowerMax <= 1000)),500,1000))
triggerall = Partner, life > 0
triggerall = !MoveReversed
triggerall = (Partner, StateNo = 1251112 || Partner, StateNo = 1251114)  && Time > 1
triggerall = StateNo = [200,4850]
triggerall = StateNo != [1251102,1251105]
triggerall = NumTarget > 0
triggerall = Target, pos Y > -160
triggerall = (Target, StateNo != [5110,5955])
triggerall = Hitdefattr != SCA, NT && ((Target, Statetype = A || (Hitdefattr != A, NA && Target, Statetype != A)) && ((!Target, HitOver || EnemyNear, StateNo = [5000,5900]) && (MoveContact || ProjContactTime(0) < 8)))
trigger1 = command = "palit"
trigger1 = var(59) <=  0
trigger2 = var(59) >  0
trigger2 = UniqHitCount >= 2
trigger2 = Random < (((ifelse(sysvar(4)=15,25,50)*(var(59)**2/64.0)) + ((hitdefattr = SCA, SA, HA)*15) + ifelse(lifemax/life > 15, 15, lifemax/life)))
trigger2 = Partner, Life > Lifemax/10 || Life <= Partner, Life
trigger2 = Partner, Time > 25
trigger3 = var(59) >  0
trigger3 = Partner, Time > 27
trigger3 = Random < (25*(2*(Life = (Lifemax/4) && Life < Partner, Life)) *(var(59)**2/64.0))
trigger3 = MoveContact
ignorehitpause = 1

[State -1, TagIn]
triggerall = 0   ;Abstract Reordered: tag system removed
type = ChangeState
value = 1251110
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner && NumEnemy
triggerall = RoundState = 2 
triggerall = Partner, life > 0
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time >= 40	
triggerall = (MoveType != A && StateType != A) && (Ctrl = 1) || StateNo = 0
trigger1 = command = "palit"
trigger1 = var(59) <=  0
trigger2 = var(59) >  0
trigger2 = Random < (ifelse((LifeMax/Life > 120), 120, LifeMax/Life)+((EnemyNear,statetype=L)*25))
trigger2 = Life < Partner, Life && Partner, Time > 1 * TicksPerSecond
trigger2 = EnemyNear, movetype != A
trigger3 = var(59) >  0
trigger3 = Life < Partner, Life && Partner, Time > 1 * TicksPerSecond && Life < LifeMax * (LifeMax*0.55)
trigger3 = Random < ((ifelse(LifeMax/Life > 10, 10, LifeMax/Life) + (10+ifelse((EnemyNear, StateNo > 5000),25,1))) * ifelse((Life < Partner, Life), 1.45, 0.5))
trigger3 = Partner, Time > 1 * TicksPerSecond
trigger3= EnemyNear, statetype = L || p2bodydist x > 250 && EnemyNear, movetype != A
trigger4 = var(59) >  0
trigger4 = Life < 150 && Life < Partner, Life
trigger4 = EnemyNear, statetype = L || p2bodydist x > 200 && EnemyNear, movetype != A
trigger4 = Random < (125*(var(59)**2/64.0))

[State -1, C_6]
triggerall = 0   ;Abstract Reordered: tag system removed
type = CtrlSet
value = 1
triggerall = RoundState = 2 && NumPartner
triggerall = NumTarget
triggerall = Target, StateNo != [200,4999]
triggerall = StateNo != 1251106 && !Ctrl
triggerall = (Partner, StateNo != [1251128,1251129]) && (Partner, PrevStateNo != [1251128,1251129])
trigger1 = command="x"||command="y"||command="z"||command="a"||command="b"||command="c"
trigger1 = sysvar(4) = 7
trigger1 = Movetype = A
trigger1 = MoveContact
trigger1 = hitdefattr = SCA, NA, SA
trigger1 = StateNo != PrevStateNo
trigger1 = Time > 3
trigger2 = PrevStateNo = 1251106
ignorehitpause = 0

; ------ Uno Tag System [Type-R] END LINE -------

;  ;]

[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 19000
triggerall = power >= 3000
triggerall = !var(51)
triggerall = numhelper(10371)
triggerall = helper(10371),var(42)
triggerall = (helper(10371),var(14) = [1,3]) || (helper(10371),var(15) = [1,3]) || (helper(10371),var(16) = [1,3])
triggerall = !Ishelper
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger3 = stateno = [1000,1800]
trigger4 = stateno = [10200,10410]
trigger5 = stateno = [11000,11800]

[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 17000
triggerall = NumHelper(8014) = 0
triggerall = NumHelper(8010) = 0
triggerall = power >= 3000
triggerall = var(49)
triggerall = var(51)
triggerall = numhelper(10371)
triggerall = helper(10371),var(40)
triggerall = (helper(10371),var(14) = [1,3]) || (helper(10371),var(15) = [1,3]) || (helper(10371),var(16) = [1,3])

triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [10200,10410]
trigger3 = stateno = [11000,11800]



[State -1, Triple Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3000
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(40)
triggerall = (helper(10371),var(14) = [1,3]) || (helper(10371),var(15) = [1,3]) || (helper(10371),var(16) = [1,3])

triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger3 = stateno = [1000,1800]


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 13000
triggerall = var(59)<=0&& RoundState = 2
triggerall = power >= 1000
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(40)
triggerall = (helper(10371),var(14) = [1,3]) || (helper(10371),var(15) = [1,3]) || (helper(10371),var(16) = [1,3])

triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200)
trigger3 = (stateno = 10210)
trigger4 = (stateno = 10205)
trigger5 = (stateno = 10215)
trigger6 = (stateno = 10240)
trigger7 = (stateno = 10280)
trigger8 = (stateno = 10400)
trigger9 = (stateno = 10410)
trigger10 = (stateno = 10420)
trigger11 = (stateno = 10440)
trigger12 = stateno = [11000,11800]


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 13500
triggerall = var(51)
triggerall = var(59)<=0&& RoundState = 2
triggerall = power >= 1000
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(40)
triggerall = (helper(10371),var(14) = [1,3]) || (helper(10371),var(15) = [1,3]) || (helper(10371),var(16) = [1,3])

triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 10600)
trigger3 = (stateno = 10610)
trigger4 = (stateno = 10640)
trigger5 = (stateno = 10215)
trigger6 = (stateno = 11900)
trigger7 = (stateno = 11901)
trigger8 = (stateno = 11500)



[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3150
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(41)
triggerall = (helper(10371),var(14) = [1,3]) || (helper(10371),var(15) = [1,3]) || (helper(10371),var(16) = [1,3])

triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger3 = stateno = [1000,1800]


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 13150
triggerall = var(59)<=0&& RoundState = 2
triggerall = NumHelper(10000) = 0
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(41)
triggerall = (helper(10371),var(14) = [1,3]) || (helper(10371),var(15) = [1,3]) || (helper(10371),var(16) = [1,3])

triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10210) && time > 5
trigger4 = (stateno = 10205) && time > 5
trigger5 = (stateno = 10215) && time > 5
trigger6 = (stateno = 10240) && time > 5
trigger7 = (stateno = 10280) && time > 18
trigger8 = (stateno = 10400) && time >= 5
trigger9 = (stateno = 10410) && time >= 5
trigger10 = (stateno = 10420) && time >= 5
trigger11 = (stateno = 10440) && time >= 5
trigger12 = stateno = [11000,11800]

[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 13150
triggerall = var(59)<=0&& RoundState = 2
triggerall = NumHelper(10000) = 1
triggerall = helper(10000), stateno = 999
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(41)
triggerall = (helper(10371),var(14) = [1,3]) || (helper(10371),var(15) = [1,3]) || (helper(10371),var(16) = [1,3])

triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10210) && time > 5
trigger4 = (stateno = 10205) && time > 5
trigger5 = (stateno = 10215) && time > 5
trigger6 = (stateno = 10240) && time > 5
trigger7 = (stateno = 10280) && time > 18
trigger8 = (stateno = 10400) && time >= 5
trigger9 = (stateno = 10410) && time >= 5
trigger10 = (stateno = 10420) && time >= 5
trigger11 = (stateno = 10440) && time >= 5
trigger12 = stateno = [11000,11200]


[State -1, デム]
triggerall = 0   ;Abstract Reordered: removed (tandem / guard cancel / evade)
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3900
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(4657) = 0
triggerall = var(46) = 0
triggerall = command = "デム"
triggerall = power >= 1000
triggerall = !var(49)
triggerall = NumHelper(10000) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])

[State -1, デム]
triggerall = 0   ;Abstract Reordered: removed (tandem / guard cancel / evade)
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3900
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(4657) = 0
triggerall = var(46) = 0
triggerall = command = "デム"
triggerall = power >= 1000
triggerall = !var(49)
triggerall = NumHelper(10000) = 1
triggerall = helper(10000), stateno = 999
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])

[State -1, デム]
triggerall = 0   ;Abstract Reordered: removed (tandem / guard cancel / evade)
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3900
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(46) = 0
triggerall = numhelper(4657) = 0
triggerall = command = "デム"
triggerall = power >= 1000
triggerall = var(49)
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(1001) = 0
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])

[State -1, デム]
triggerall = 0   ;Abstract Reordered: removed (tandem / guard cancel / evade)
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3900
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(46) = 0
triggerall = numhelper(4657) = 0
triggerall = command = "デム"
triggerall = power >= 1000
triggerall = var(49)
triggerall = NumHelper(10000) = 1
triggerall = helper(10000), stateno = 999
triggerall = NumHelper(1001) = 0
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])



[State -1, magic]
type = Helper
stateno = 2000
id = 2000
pos = 20,-floor(screenpos y)+60-floor(8*const(size.yscale))*9
postype = p1
triggerall = NumHelper(2000) = 0
trigger1 = var(59)<=0&& RoundState = 2
trigger1 = command = "x"
ignorehitpause = 0


[State -1, magic]
type = Helper
stateno = 2010
id = 2010
pos = ifelse(frontedgebodydist<=130,frontedgebodydist,130),-floor(screenpos y)+60-floor(8*const(size.yscale))*9
postype = p1
triggerall = NumHelper(2010) = 0
trigger1 = var(59)<=0&& RoundState = 2
trigger1 = command = "y"
ignorehitpause = 0


[State -1, magic]
type = Helper
stateno = 2020
id = 2020
pos = ifelse(frontedgebodydist<=240,frontedgebodydist,240),-floor(screenpos y)+60-floor(8*const(size.yscale))*9
postype = p1
triggerall = NumHelper(2020) = 0
trigger1 = var(59)<=0&& RoundState = 2
trigger1 = command = "z"
ignorehitpause = 0



[State -1, Light Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = !var(51)
value = 2100
triggerall = numhelper(2110) = 0
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = (ctrl) || (stateno = [200,299]) || (stateno = [400,499])
triggerall = statetype != A
triggerall = numhelper(10371)
triggerall = helper(10371),var(21)
trigger1 = (helper(10371),var(0) = [1,3])
trigger2 = (helper(10371),var(1) = [1,3])
trigger3 = (helper(10371),var(2) = [1,3])

[State -1, Light Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(51)
value = 6666
triggerall = NumHelper(10000) = 0
triggerall = numhelper(2110) = 0
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = (ctrl) || (stateno = [200,299]) || (stateno = [400,499])
triggerall = statetype != A
triggerall = numhelper(10371)
triggerall = helper(10371),var(21)
trigger1 = (helper(10371),var(0) = [1,3])
trigger2 = (helper(10371),var(1) = [1,3])
trigger3 = (helper(10371),var(2) = [1,3])

[State -1, Light Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(51)
value = 6666
triggerall = NumHelper(10000) = 1
triggerall = helper(10000), stateno = 999
triggerall = numhelper(2110) = 0
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = (ctrl) || (stateno = [200,299]) || (stateno = [400,499])
triggerall = statetype != A
triggerall = numhelper(10371)
triggerall = helper(10371),var(21)
trigger1 = (helper(10371),var(0) = [1,3])
trigger2 = (helper(10371),var(1) = [1,3])
trigger3 = (helper(10371),var(2) = [1,3])

[State -1, Light Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(51)
value = 16666
triggerall = var(49)
triggerall = (ctrl) || (stateno = [10200,10440]) 
triggerall = statetype != A
triggerall = numhelper(10371)
triggerall = helper(10371),var(21)
trigger1 = (helper(10371),var(0) = [1,3])
trigger2 = (helper(10371),var(1) = [1,3])
trigger3 = (helper(10371),var(2) = [1,3])

[State -1, Light Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(51)
value = 17777
triggerall = var(49)
triggerall = (ctrl) || (stateno = [10200,10440]) 
triggerall = statetype = A

triggerall = numhelper(10371)
triggerall = helper(10371),var(21)
trigger1 = (helper(10371),var(0) = [1,3])
trigger2 = (helper(10371),var(1) = [1,3])
trigger3 = (helper(10371),var(2) = [1,3])


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1100
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(11101) = 0
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(24)
triggerall = (helper(10371),var(0) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11100
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(11101) = 0
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(24)
triggerall = (helper(10371),var(0) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10210) && time > 5
trigger4 = (stateno = 10205) && time > 5
trigger5 = (stateno = 10215) && time > 5
trigger6 = (stateno = 10240) && time > 5
trigger7 = (stateno = 10280) && time > 18
trigger8 = (stateno = 10400) && time >= 5
trigger9 = (stateno = 10410) && time >= 5
trigger10 = (stateno = 10420) && time >= 5
trigger11 = (stateno = 10440) && time >= 5



[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1105
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(11101) = 0
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(24)
triggerall = (helper(10371),var(1) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11110
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(11101) = 0
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(24)
triggerall = (helper(10371),var(1) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10210) && time > 5
trigger4 = (stateno = 10205) && time > 5
trigger5 = (stateno = 10215) && time > 5
trigger6 = (stateno = 10240) && time > 5
trigger7 = (stateno = 10280) && time > 18
trigger8 = (stateno = 10400) && time >= 5
trigger9 = (stateno = 10410) && time >= 5
trigger10 = (stateno = 10420) && time >= 5
trigger11 = (stateno = 10440) && time >= 5



[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1400
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(11101) = 0
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(24)
triggerall = (helper(10371),var(2) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11140
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(11101) = 0
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(24)
triggerall = (helper(10371),var(2) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10210) && time > 5
trigger4 = (stateno = 10205) && time > 5
trigger5 = (stateno = 10215) && time > 5
trigger6 = (stateno = 10240) && time > 5
trigger7 = (stateno = 10280) && time > 18
trigger8 = (stateno = 10400) && time >= 5
trigger9 = (stateno = 10410) && time >= 5
trigger10 = (stateno = 10420) && time >= 5
trigger11 = (stateno = 10440) && time >= 5



[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11200
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(11200) = 0
triggerall = numhelper(10371)
triggerall = helper(10371),var(23)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10210) && time > 5
trigger4 = (stateno = 10205) && time > 5
trigger5 = (stateno = 10215) && time > 5
trigger6 = (stateno = 10240) && time > 5
trigger7 = (stateno = 10280) && time > 18
trigger8 = (stateno = 10400) && time >= 5
trigger9 = (stateno = 10410) && time >= 5
trigger10 = (stateno = 10420) && time >= 5
trigger11 = (stateno = 10440) && time >= 5


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1600
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(23)
triggerall = (helper(10371),var(0) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = cond(var(51),1600,1610)
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(1610) < 3
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(23)
triggerall = (helper(10371),var(1) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = cond(var(51),1600,1620)
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(1620) < 5
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(23)
triggerall = (helper(10371),var(2) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])



 

[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11250
triggerall = var(51)
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(11201) = 0
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(23)
triggerall = (helper(10371),var(1) = [1,3])
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [10600,10650]


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11260
triggerall = var(51)
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(11201) = 0
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(23)
triggerall = (helper(10371),var(1) = [1,3])
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [10600,10650]


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11270
triggerall = var(51)
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(11201) = 0
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(23)
triggerall = (helper(10371),var(2) = [1,3])
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [10600,10650]



[State -1, Light Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1000
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(0) = [1,3])
triggerall = !var(49)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11000
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(0) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10210) && time > 5
trigger4 = (stateno = 10205) && time > 5
trigger5 = (stateno = 10215) && time > 5
trigger6 = (stateno = 10240) && time > 5
trigger7 = (stateno = 10280) && time > 18
trigger8 = (stateno = 10400) && time >= 5
trigger9 = (stateno = 10410) && time >= 5
trigger10 = (stateno = 10420) && time >= 5
trigger11 = (stateno = 10440) && time >= 5



[State -1, Light Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1003
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(1) = [1,3])
triggerall = !var(49)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11010
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(1) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10210) && time > 5
trigger4 = (stateno = 10205) && time > 5
trigger5 = (stateno = 10215) && time > 5
trigger6 = (stateno = 10240) && time > 5
trigger7 = (stateno = 10280) && time > 18
trigger8 = (stateno = 10400) && time >= 5
trigger9 = (stateno = 10410) && time >= 5
trigger10 = (stateno = 10420) && time >= 5
trigger11 = (stateno = 10440) && time >= 5



[State -1, Light Kung Fu Palm]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1005
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(2) = [1,3])
triggerall = !var(49)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11040
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(2) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && time > 5
trigger3 = (stateno = 10210) && time > 5
trigger4 = (stateno = 10205) && time > 5
trigger5 = (stateno = 10215) && time > 5
trigger6 = (stateno = 10240) && time > 5
trigger7 = (stateno = 10280) && time > 18
trigger8 = (stateno = 10400) && time >= 5
trigger9 = (stateno = 10410) && time >= 5
trigger10 = (stateno = 10420) && time >= 5
trigger11 = (stateno = 10440) && time >= 5



[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11500
triggerall = var(51)
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])
triggerall = var(32) = 0
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 10600)
trigger3 = (stateno = 10610)
trigger4 = (stateno = 10640)



[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1900
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10000) = 0
triggerall = !var(49)
triggerall = statetype = A
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(0) = [1,3]) 
trigger1 = ctrl
trigger2 = (stateno = 600)
trigger3 = (stateno = 610)
trigger4 = (stateno = 640)

[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1900
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10000) = 1
triggerall = helper(10000), stateno = 999
triggerall = !var(49)
triggerall = statetype = A
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(0) = [1,3]) 
trigger1 = ctrl
trigger2 = (stateno = 600)
trigger3 = (stateno = 610)
trigger4 = (stateno = 640)


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1910
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10000) = 0
triggerall = !var(49)
triggerall = statetype = A
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(1) = [1,3]) 
trigger1 = ctrl
trigger2 = (stateno = 600)
trigger3 = (stateno = 610)
trigger4 = (stateno = 640)


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1910
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10000) = 1
triggerall = helper(10000), stateno = 999
triggerall = !var(49)
triggerall = statetype = A
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(1) = [1,3]) 
trigger1 = ctrl
trigger2 = (stateno = 600)
trigger3 = (stateno = 610)
trigger4 = (stateno = 640)


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1920
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10000) = 0
triggerall = !var(49)
triggerall = statetype = A
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(2) = [1,3])
trigger1 = ctrl
trigger2 = (stateno = 600)
trigger3 = (stateno = 610)
trigger4 = (stateno = 640)


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1920
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10000) = 1
triggerall = helper(10000), stateno = 999
triggerall = !var(49)
triggerall = statetype = A
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(2) = [1,3])
trigger1 = ctrl
trigger2 = (stateno = 600)
trigger3 = (stateno = 610)
trigger4 = (stateno = 640)


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11900
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = statetype = A
triggerall = numhelper(10371)
triggerall = helper(10371),sysvar(1)&8
triggerall = helper(10371),var(2) = [1,3]
trigger1 = ctrl
trigger2 = (stateno = 10600) && movecontact
trigger3 = (stateno = 10610) && movecontact
trigger4 = (stateno = 10640) && movecontact
trigger5 = stateno = 11901 && time >= 5


[State -1, Strong Kung Fu Palm]
triggerall = 0   ;Abstract Reordered: removed (tandem / guard cancel / evade)
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1800
triggerall = power >= 1000
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(10000) = 0
triggerall = statetype != A
trigger1 = command = "upper_x" || command = "upper_y" || command = "upper_z"
trigger1 = stateno = [150,155]
ignorehitpause = 1


[State -1, Strong Kung Fu Palm]
triggerall = 0   ;Abstract Reordered: removed (tandem / guard cancel / evade)
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11800
triggerall = power >= 1000
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = statetype != A
trigger1 = command = "upper_x" || command = "upper_y" || command = "upper_z"
trigger1 = stateno = [150,155]
ignorehitpause = 1

[State -1, 擬似プッツンキャンセル]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0&& RoundState = 2
triggerall = statetype != A
triggerall = power >= 500*var(50)
triggerall = command = "c"   ;Abstract Reordered: Stand Cancel on the Stand button (X)
trigger1 = stateno = 195
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger3 = stateno = [1000,1620]
trigger4 = (stateno = 10200)
trigger5 = (stateno = 10210)
trigger6 = (stateno = 10205)
trigger7 = (stateno = 10215)
trigger8 = (stateno = 10240)
trigger9 = (stateno = 10280)
trigger10 = (stateno = 10400)
trigger11 = (stateno = 10410)
trigger12 = (stateno = 10420)
trigger13 = (stateno = 10440)
trigger14 = stateno = [11000,11200]
value = 700
ignorehitpause = 1




[State -1, Run Fwd]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
triggerall = var(59)<=0&& RoundState = 2
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl



[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 105
triggerall = var(59)<=0&& RoundState = 2
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, Kung Fu Throw]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 800
triggerall = var(49)
trigger1 = command = "ar_grab"   ;Abstract Reordered: grab on Y
triggerall = ctrl
triggerall = stateno != 100
triggerall = statetype != A



[State -1, Kung Fu Throw]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 900
triggerall = !var(49)
triggerall = ctrl
triggerall = stateno != 100
triggerall = statetype != A
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(2) = 0
trigger1 = command = "ar_grab"   ;Abstract Reordered: grab on Y


[State -1, 回り込み]
triggerall = 0   ;Abstract Reordered: removed (tandem / guard cancel / evade)
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(10) = 0
triggerall = (RoundState = 2) && (Alive)
triggerall = !var(49) 
triggerall = NumHelper(29) = 0
triggerall = command = "a"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,105]
value = 30


[State -1, 回り込み]
triggerall = 0   ;Abstract Reordered: removed (tandem / guard cancel / evade)
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(10) = 0
triggerall = (RoundState = 2) && (Alive)
triggerall = var(49) 
triggerall = NumHelper(29) = 0
triggerall = command = "a"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,105]
value = 10030


[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0
triggerall = statetype = S
triggerall = stateno = [150,155]
triggerall = prevstateno != 4000 && prevstateno != 4005
trigger1 = command = "x" && command = "y"
trigger2 = command = "z" && command = "y"
trigger3 = command = "z" && command = "x"
ignorehitpause = 1
value = 4100



[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0
triggerall = statetype = C
triggerall = stateno = [150,155]
triggerall = prevstateno != 4000 && prevstateno != 4005
trigger1 = command = "x" && command = "y"
trigger2 = command = "z" && command = "y"
trigger3 = command = "z" && command = "x"
ignorehitpause = 1
value = 4105


[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(4010) = 0
triggerall = statetype = S
triggerall = stateno = [150,155]
triggerall = prevstateno != 4000 && prevstateno != 4005
trigger1 = command = "x" && command = "y"
trigger2 = command = "z" && command = "y"
trigger3 = command = "z" && command = "x"
ignorehitpause = 1
value = 14000



[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(4010) = 0
triggerall = statetype = C
triggerall = stateno = [150,155]
triggerall = prevstateno != 4000 && prevstateno != 4005
trigger1 = command = "x" && command = "y"
trigger2 = command = "z" && command = "y"
trigger3 = command = "z" && command = "x"
ignorehitpause = 1
value = 14005

[State -1, 空中ダッシュ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49) = 40000
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = !var(18)
triggerall = stateno != 116
triggerall = command = "FF"
trigger1 = ctrl

value = 116

[State -1, 空中バックダッシュ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49) = 40000
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = !var(18)
triggerall = stateno != 117
triggerall = command = "BB"
trigger1 = ctrl
trigger2 = stateno = 132

value = 117

[State -1,2段ジャンプ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 41
triggerall = var(59)<=0&& RoundState = 2

triggerall = var(49)
triggerall = var(4) = 1
triggerall = command = "up"
triggerall = stateno = 50 || stateno = 10822
trigger1 = ctrl
triggerall = command != "upc"


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10280
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10000) = 0
triggerall = !var(49)
triggerall = command = "syutugen"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 105
trigger4 = stateno = 200
trigger5 = stateno = 205
trigger6 = stateno = 210
trigger7 = stateno = 400
trigger8 = stateno = 410

[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10280
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10000) = 1
triggerall = helper(10000), stateno = 999
triggerall = !var(49)
triggerall = command = "syutugen"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 105
trigger4 = stateno = 200
trigger5 = stateno = 205
trigger6 = stateno = 210
trigger7 = stateno = 400
trigger8 = stateno = 410


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10280
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10000) = 0
triggerall = !var(49)
triggerall = command = "syutugen"
triggerall = statetype != A
trigger1 = stateno = 200 && time > 4
trigger2 = stateno = 210 && time > 5
trigger3 = stateno = 400 && time > 4
trigger4 = stateno = 410 && time > 5
trigger5 = stateno = 440 && time > 7

[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10280
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10000) = 1
triggerall = helper(10000), stateno = 999
triggerall = !var(49)
triggerall = command = "syutugen"
triggerall = statetype != A
trigger1 = stateno = 200 && time > 4
trigger2 = stateno = 210 && time > 5
trigger3 = stateno = 400 && time > 4
trigger4 = stateno = 410 && time > 5
trigger5 = stateno = 440 && time > 7

[State -1, Stand Light Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 205
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10371)
triggerall = helper(10371),sysvar(1)&2
triggerall = helper(10371),var(0) = [1,3]
triggerall = !var(49)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && time >= 7
trigger3 = stateno = [100,105]
trigger4 = (stateno = 200) && time >= 7


[State -1, Crouching Light Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 400
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(0) = [1,3]) && (helper(10371),sysvar(1)&8)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && time >= 7
trigger3 = stateno = [100,105]


[State -1, Crouching Light Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10400
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(0) = [1,3]) && (helper(10371),sysvar(1)&8)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10400) && time >= 5
trigger3 = (stateno = 10420) && movecontact
trigger4 = stateno = [100,105]



[State -1, Crouching Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 410
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(1) = [1,3]) && (helper(10371),sysvar(1)&8)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && time >= 4
trigger3 = stateno = [100,105]
trigger4 = (stateno = 200) && time >= 4
trigger5 = (stateno = 205) && time >= 4


[State -1, Crouching Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10410
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(1) = [1,3]) && (helper(10371),sysvar(1)&8)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10400) && movecontact
trigger3 = (stateno = 10200) && movecontact
trigger4 = stateno = [100,105]
trigger5 = (stateno = 10205) && movecontact


[State -1, Crouching Strong Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 440
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10000) = 0
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(2) = [1,3]) && (helper(10371),sysvar(1)&8)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact
trigger4 = stateno = [100,105]
trigger5 = (stateno = 205) && movecontact

[State -1, Crouching Strong Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 440
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10000) = 1
triggerall = helper(10000), stateno = 999
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(2) = [1,3]) && (helper(10371),sysvar(1)&8)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 400) && time >= 4
trigger4 = stateno = [100,105]
trigger5 = (stateno = 205) && time >= 5


[State -1, Crouching Strong Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10440
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10441) = 0
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(2) = [1,3]) && (helper(10371),sysvar(1)&8)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && movecontact
trigger3 = (stateno = 10210) && movecontact
trigger4 = (stateno = 10205) && movecontact
trigger5 = (stateno = 10215) && movecontact
trigger6 = (stateno = 10400) && movecontact
trigger7 = (stateno = 10410) && movecontact
trigger8 = stateno = [100,105]



[State -1, Stand Light Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 200
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10371)
triggerall = (helper(10371),var(0) = [1,3])
triggerall = !var(49)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger3 = (stateno = 400) && time >= 7 



[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10205
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(0) = [1,3])
triggerall = statetype != A
trigger1 = (stateno = 10200) && time >= 7 
trigger2 = (stateno = 10400) && movecontact


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10200
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(0) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,105]
trigger3 = stateno = 10400 && time > 5


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 210
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10371)
triggerall = (helper(10371),var(1) = [1,3])
triggerall = !var(49)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 7
trigger3 = (stateno = 400) && time >= 7
trigger4 = stateno = [100,105]
trigger5 = (stateno = 205) && time >= 7


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10215
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(1) = [1,3])
triggerall = statetype != A
trigger1 = (stateno = 10210) && movecontact
trigger2 = stateno = [100,105]
trigger3 = (stateno = 10400) && movecontact


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10210
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(1) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && movecontact
trigger3 = (stateno = 10205) && movecontact
trigger4 = (stateno = 10220) && movecontact
trigger5 = (stateno = 10225) && movecontact
trigger6 = (stateno = 10420) && movecontact
trigger7 = stateno = [100,105]



[State -1, Standing Strong Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 240
triggerall = var(59)<=0&& RoundState = 2
triggerall = !numhelper(10000)
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(2) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 7
trigger3 = (stateno = 400) && time >= 7
trigger4 = stateno = [100,105]
trigger5 = (stateno = 205) && time >= 7


[State -1, Standing Strong Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 240
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(10000)
triggerall = helper(10000), stateno = 999
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(2) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 5
trigger3 = (stateno = 400) && time >= 4
trigger4 = stateno = [100,105]
trigger5 = (stateno = 205) && time >= 5



[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10240
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(2) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 10200) && movecontact
trigger3 = (stateno = 10210) && movecontact
trigger4 = (stateno = 10205) && movecontact
trigger5 = (stateno = 10215)&& movecontact
trigger6 = (stateno = 10400) && movecontact
trigger7 = (stateno = 10410) && movecontact
trigger8 = stateno = [100,105]


[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 195
triggerall = teammode != Simul  
triggerall = var(59)<=0&& RoundState = 2
triggerall = NumHelper(1001) = 0
triggerall = numhelper(11101) = 0
triggerall = NumHelper(10000) = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 195
triggerall = teammode = Simul 
triggerall = numpartner
triggerall = partner,life = 0 
triggerall = var(59)<=0&& RoundState = 2
triggerall = NumHelper(1001) = 0
triggerall = numhelper(11101) = 0
triggerall = NumHelper(10000) = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
 
[State -1, Jump Light Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 600
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(0) = [1,3])
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Jump Light Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10600
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(0) = [1,3])
trigger1 = statetype = A
trigger1 = ctrl



[State -1, Jump Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 610
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(1) = [1,3])
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact


[State -1, Jump Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10610
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(1) = [1,3])
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 10600 && movecontact


[State -1, Jump Strong Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 640
triggerall = var(59)<=0&& RoundState = 2
triggerall = !var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(2) = [1,3])
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact


[State -1, Jump Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10640
triggerall = var(59)<=0&& RoundState = 2
triggerall = var(49)
triggerall = numhelper(10371)
triggerall = (helper(10371),var(2) = [1,3])
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 10600 || stateno = 10610
trigger2 = movecontact


[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10820
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0
triggerall = !var(49)
triggerall = var(7) = 0
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype = S
triggerall = PalNo != 9999 || fvar(1) = 80
trigger1 = NumHelper(2) = 0
trigger1 = ctrl
ignorehitpause = 0

[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10820
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(10000) = 1
triggerall = helper(10000), stateno = 999
triggerall = !var(49)
triggerall = var(7) = 0
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype = S
triggerall = PalNo != 9999 || fvar(1) = 80
trigger1 = NumHelper(2) = 0
trigger1 = ctrl
ignorehitpause = 0


[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 16001
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype = C
triggerall = PalNo != 9999 || fvar(1) = 80
trigger1 = ctrl
ignorehitpause = 0


[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 16001
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(10000) = 1
triggerall = helper(10000), stateno = 999
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype = C
triggerall = PalNo != 9999 || fvar(1) = 80
trigger1 = ctrl
ignorehitpause = 0


[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 16002
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype = A
triggerall = PalNo != 9999 || fvar(1) = 80
trigger1 = ctrl
ignorehitpause = 0


[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 16002
triggerall = var(59)<=0&& RoundState = 2
triggerall = numhelper(1001) = 0
triggerall = numhelper(10000) = 1
triggerall = helper(10000), stateno = 999
triggerall = !var(49)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype = A
triggerall = PalNo != 9999 || fvar(1) = 80
trigger1 = ctrl
ignorehitpause = 0



[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 830
triggerall = var(59)<=0&& RoundState = 2
triggerall = NumHelper(5656) = 0
triggerall = var(47) = 0
triggerall = var(49)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype = S
triggerall = PalNo != 9999
trigger1 = ctrl
ignorehitpause = 0


[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 16004
triggerall = var(59)<=0&& RoundState = 2
triggerall = NumHelper(5656) = 0
triggerall = var(47) = 0
triggerall = var(49)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype = C
triggerall = PalNo != 9999
trigger1 = ctrl
ignorehitpause = 0


[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 16005
triggerall = var(59)<=0&& RoundState = 2
triggerall = NumHelper(5656) = 0
triggerall = var(47) = 0
triggerall = var(49)
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype = A
triggerall = PalNo != 9999
trigger1 = ctrl
ignorehitpause = 0


[State -1, AI起動用ヘルパー]
type=helper
triggerall = AILevel
trigger1 = !ishelper
trigger1 = !Numhelper(30005+id)
trigger1 = !NumProjID(30005) && !NumProjID(30006)
trigger1 = roundstate=2
trigger1 = alive
trigger1 = ctrl||movetype!=I||stateno = 40
helpertype=normal
name = "ushiro"
stateno = 30005
ID = 30005+id
pos = 0,9999
keyctrl = 1


persistent = 0


[State -1, ]
type=helper
triggerall = !ishelper
triggerall = numhelper(30006+id)
triggerall = helper(30006+id),var(37)
triggerall = !Numhelper(40005+id)
triggerall = NumEnemy
trigger1 = helper(30006+id),var(3) <= 0
trigger1 = Enemy(0),numproj > 0
trigger2 = helper(30006+id),var(4) < Enemy(0),numhelper
trigger3 = helper(30006+id),var(5) <= 0
trigger3 = Enemy(numenemy=2),numproj > 0
trigger4 = helper(30006+id),var(6) < Enemy(numenemy=2),numhelper
helpertype=normal
name = "P & H"
stateno = 40005
ID = 40005+id
postype = p1
pos = 0,9999
pausemovetime = 2147483647
supermovetime = 2147483647
persistent = 0


[State -1, 関係無いステートに行かないように]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
trigger1 = ishelper(30005+id)
trigger1 = stateno != 30005
value = 30005


[State -1, AI Command]
Type = VarSet
trigger1 = AILevel
TriggerAll = Var(59)=0 && !isHelper 

V = 59
Value = 1
IgnoreHitPause = 1


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 13000
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = var(59)=1&& RoundState = 2
triggerall = power >= 1000
triggerall = var(49) = 10000
triggerall = P2BodyDist X = [-20,90]
triggerall = P2BodyDist Y >= -80
triggerall = stateno = [50000,50105]
triggerall = statetype != A
triggerall = random<=var(58)*20
trigger1 = enemynear,stateno = [1000,4999]
trigger2 = enemynear,stateno = [11000,14999]


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 13500
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = var(59)=1&& RoundState = 2
triggerall = power >= 1000
triggerall = var(49) = 10000
triggerall = P2BodyDist X = [-20,90]
triggerall = P2BodyDist Y = [-80,10]
triggerall = stateno = [50000,50105]
triggerall = statetype = A
triggerall = random<=var(58)*20
trigger1 = enemynear,stateno = [1000,4999]
trigger2 = enemynear,stateno = [11000,14999]


[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10820
triggerall = var(59)=1&& RoundState = 2
triggerall = PalNo = 9999
triggerall = PalNo != 9999 || fvar(1) = 80
triggerall = numhelper(1001) = 0
triggerall = NumHelper(10000) = 0
triggerall = !var(49)
triggerall = var(7) = 0
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
ignorehitpause = 0


[State -1, Kung Fu Throw]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 900
TriggerAll= EnemyNear,StateType != L
TriggerAll= EnemyNear,MoveType != H
triggerall = var(59) = 1 && RoundState = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
triggerall = numhelper(10000) = 0
triggerall = p2bodydist X < 10
triggerall = var(49) != 10000
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = random<=var(58)*20
Trigger2 = (EnemyNear,StateNo=[120,159])
trigger2 = random<=var(58)*10


[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(49) != 10000
triggerall = var(59)=1&& RoundState = 2
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = P2BodyDist X = [-20,100]
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 4100 && prevstateno != 4105
trigger1 = random<=var(58)*8
trigger1 = inguarddist
ignorehitpause = 1
value = 4100


[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(49) != 10000
triggerall = var(59)=1&& RoundState = 2
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = P2BodyDist X = [-20,100]
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 4100 && prevstateno != 4105
trigger1 = random<=var(58)*8
trigger1 = inguarddist
value = 4105


[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(49) = 10000
triggerall = var(59)=1&& RoundState = 2
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = P2BodyDist X = [-20,100]
trigger1 = statetype = S
trigger1 = stateno = 150 || stateno = 151
trigger1 = prevstateno != 14000 && prevstateno != 14005
trigger1 = random<=var(58)*8
trigger1 = inguarddist
ignorehitpause = 1
value = 14000


[State -1, Run Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(49) = 10000
triggerall = var(59)=1&& RoundState = 2
triggerall = numhelper(4010) = 0
triggerall = numhelper(1001) = 0
triggerall = P2BodyDist X = [-20,100]
trigger1 = statetype = C
trigger1 = stateno = 152 || stateno = 153
trigger1 = prevstateno != 14000 && prevstateno != 14005
trigger1 = random<=var(58)*8
trigger1 = inguarddist
value = 14005


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3150
triggerall = power >= 1000
TriggerAll= EnemyNear,StateType != L
triggerall = var(59)=1&& RoundState = 2
triggerall = NumHelper(10000) = 0
triggerall = var(49) != 10000
triggerall = P2BodyDist X = [80,150]
triggerall = Random <= var(58)*1
trigger1 = (stateno = [50000,50020])
trigger1 = statetype != A


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 13150
triggerall = power >= 1000
TriggerAll= EnemyNear,StateType != L
triggerall = var(59)=1&& RoundState = 2
triggerall = var(49) = 10000
triggerall = P2BodyDist X >= 180
triggerall = Random <= var(58)*2
trigger1 = (stateno = [50000,50020])
trigger1 = statetype != A


[State -1, Stand Strong Punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11200
TriggerAll= EnemyNear,StateType != L
triggerall = var(59) = 1 && RoundState = 2
trigger1 = (stateno = [50000,50020])
trigger1 = numhelper(11201) = 0
triggerall = numhelper(10000) = 0
triggerall = var(49) = 10000
triggerall = P2BodyDist X = [160,280]
triggerall = Random <= var(58)*7
trigger1 = statetype = S


[State -1, Crouching Strong Kick]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 10440
triggerall = var(59)=1&& RoundState = 2
triggerall = numhelper(10441) = 0
triggerall = var(49) = 10000
trigger1 = p2statetype != A
trigger1 = p2statetype != L
trigger1 = P2BodyDist X = [70,110]
trigger1 = random<=var(58)*5
trigger1 = (stateno = [50000,50020])
trigger1 = statetype != A



[State -1, Strong Kung Fu Palm]
triggerall = 0   ;Abstract Reordered: removed (tandem / guard cancel / evade)
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1800
triggerall = var(59)=1&& RoundState = 2
trigger1 = p2statetype != L && P2BodyDist X = [0,80]
triggerall = var(49) != 10000
triggerall = numhelper(10000) = 0
triggerall = statetype != A
trigger1 = p2movetype = A
trigger1 = enemynear,animtime < -10 || enemynear,pos y < 0-enemynear,vel y*10
trigger1 = random<=var(58)*3
trigger1 = (stateno = [150,153])


[State -1, Strong Kung Fu Palm]
triggerall = 0   ;Abstract Reordered: removed (tandem / guard cancel / evade)
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 11800
triggerall = var(59)=1&& RoundState = 2
trigger1 = p2statetype != L && P2BodyDist X = [0,80]
triggerall = var(49) = 10000
triggerall = statetype != A
trigger1 = p2movetype = A
trigger1 = enemynear,animtime < -10 || enemynear,pos y < 0-enemynear,vel y*10
trigger1 = random<=var(58)*10
trigger1 = (stateno = [150,153])
