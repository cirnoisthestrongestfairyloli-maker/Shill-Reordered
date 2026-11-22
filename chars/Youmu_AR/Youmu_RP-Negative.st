;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

;---------------------------------------------------------------------------
; Abstract Reordered: her own proration is off (the shared AR combo scaling does it): fvar(10) stays 1 so fvar(11) = 1
[State -2, AR own proration off]
type = VarSet
triggerall = !IsHelper
trigger1 = 1
fvar(10) = 1.0
ignorehitpause = 1

;Abstract Reordered: EX specials (special + C, 500 meter). var(38) = EX flag (set by the command), var(36) = cost paid
[State -2, AR EX cost]
type = PowerAdd
triggerall = !IsHelper
trigger1 = var(38) = 1 && var(36) = 0 && StateNo = [1100, 1499]
value = -500
ignorehitpause = 1

[State -2, AR EX paid]
type = VarSet
triggerall = !IsHelper
trigger1 = var(38) = 1 && StateNo = [1100, 1499]
var(36) = 1
ignorehitpause = 1

[State -2, AR EX reset]
type = VarSet
triggerall = !IsHelper
trigger1 = !(StateNo = [1100, 1499])
var(38) = 0
ignorehitpause = 1

[State -2, AR EX reset paid]
type = VarSet
triggerall = !IsHelper
trigger1 = var(38) = 0
var(36) = 0
ignorehitpause = 1

[State -2, AR EX glow]
type = PalFX
triggerall = !IsHelper
trigger1 = var(38) = 1 && StateNo = [1100, 1499]
time = 1
add = 40, 90, 50

[State -2, AR EX damage]
type = AttackMulSet
triggerall = !IsHelper
trigger1 = 1
value = ifelse(var(38) = 1 && StateNo = [1100, 1499], 1.25, 1)


;-----------------------------------
; Reflected Projectile Dampen
[State -2, VS]
type = varset
trigger1 = numprojid(21020)>=1
fvar(10) = fvar(10)*(0.85**0.5)*cond(fvar(10)>=1.0,(fvar(30)),1.0)

;-----------------------------------
; REALLY NOT FEELIN UP TO IT RIGHT NOW. SORRY.
[State -2, Myon]
type = helper
;trigger1 = roundstate=2
trigger1 = numhelper(30050)=0
name = "Myon"
ID = 30050
pos = 0,-50
postype = p1
stateno = 30050
ownpal = 1
facing = 1
ignorehitpause = 1
pausemovetime = 999999999
supermovetime = 999999999

;-----------------------------------
; Myon Clone Stuff... Myonstablook?
[State -2, Clone Hitbox]
type = helper
triggerall = var(54)>0
triggerall = time<=1
trigger1 = stateno = 200 || stateno = 210 || stateno = 215 || stateno = 220 || stateno = 225
trigger2 = stateno = 400 || stateno = 410 || stateno = 420
trigger3 = stateno = 600 || stateno = 610 || stateno = 620 || stateno = 625
trigger4 = (stateno = 1001 && time <=0) || stateno = 1100 || stateno = 1105 || stateno = 1200 || stateno = 1201 || stateno = 1202 || stateno = 1300
name = "Clone Hitbox"
ID = 30100
pos = 0,0
postype = p1
stateno = 30053;stateno
ownpal = 1
facing = 1
keyctrl = 1
ignorehitpause = 1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = stateno != 4100
trigger1 = var(54)=1
time = 0
ignorehitpause = 1

[State -2, Timer]
type = varadd
trigger1 = stateno != 4100
trigger1 = var(54)>0
var(54) = -1
ignorehitpause = 1

[State -2, Timer]
type = varset
trigger1 = stateno != 4100
trigger1 = var(54)>0
trigger1 = roundstate != 2
var(54) = 0

[State -2, Lock Power]
type = null   ;AR: Half-Ghost no longer locks the meter
trigger1 = 0

;-----------------------------------
; Now I'm Startin To Get Motivated!
[State -2, AI Helper]
type = helper
triggerall = numhelper(30000)=0
trigger1 = (stateno = 0 && enemy,stateno = 0) || (roundno > 1 && stateno = 5900)
trigger1 = (cond(numhelper(20002),helper(20002),cond(1,stateno=20003,0),0) || numhelper(20002)=0) && (enemy,cond(numhelper(20002),helper(20002),cond(1,stateno=20003,0),0) || enemy,numhelper(20002)=0)
trigger2 = roundstate = 2 && roundno >= 0
name = "Charge Gauge"
ID = 30000
pos = 0,0
postype = p1
stateno = 30000
ownpal = 1
facing = 1
ignorehitpause = 1
pausemovetime = 999999
supermovetime = 999999

[State -2, Focus Gauge Charge]
type = varadd
triggerall = movetype != H
triggerall = alive
triggerall = roundstate = 2
triggerall = (stateno != [200,899]) && (stateno!=[1000,1999]) && (stateno!=[2000,4999]) && (stateno!=[5000,5999])
triggerall = (stateno != [100,119])
triggerall = var(50)<1000
trigger1 = p2bodydist x = [-10,50]
var(50) = cond(var(53)<=1,3,cond(var(53)=2,3,2))

[State -2, Focus Gauge Limiter]
type = varset
trigger1 = var(50)>1000
var(50)=1000
ignorehitpause = 1
[State -2, Focus Gauge Limiter]
type = varset
trigger1 = var(50)<0
var(50)=0
ignorehitpause = 1

;-----------------------------------
; Remove Excess Explods
[State -2, REX]
type = removeexplod
trigger1 = numexplod(20625)
trigger1 = stateno != 625
id = 20625
ignorehitpause = 1

;-----------------------------------
; Sound Effect Channel Stop When Hit
[State -2, StopSnd]
type = stopsnd
trigger1 = movetype = H
trigger1 = time <=2
channel = 7

;-----------------------------------
; A.I. Helper
[State -2, AI Helper]
type = helper
trigger1 = AILevel > 0
trigger1 = roundstate=2
trigger1 = numhelper(20010)=0
name = "AI Helper"
ID = 20010
pos = 0,0
postype = p1
stateno = 20010
ownpal = 0
facing = 1
ignorehitpause = 1

;-----------------------------------
; Air Dash Limiter Reset
[State -2, Varset]
type = Varset
trigger1 = statetype=S || statetype=C
trigger1 = var(8)>=1
var(8) = 0

;-------FORCE GROUND RECOVERY-------
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

;--------RESET--------
[State -2, P2 Recovery] ;Notice how ID 200 is being used. ID must match those Hitdefs
type = targetstate
trigger1 = numtarget(555)
trigger1 = (target(555),stateno=5020) && (target(555),alive) && (target(555),hitfall) ;Hit out of the air while alive and already falling
ID = 555 ;200
value = 5085 ;5025
ignorehitpause = 1

;-----------------------------------
; Debugging Tools
[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(10) = %d damage dampen = %f Juggle = %d"
params = var(10),fvar(11),var(34)
ignorehitpause = 1

;-----------------------------------
; Juggle Code Stuff
[State Movehitoner]
type = VarSet
trigger1 = numenemy
var(31) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(31)+1,0)
ignorehitpause = 1

[State reset all juggle vars]
type = VarSet
triggerall = var(33)
trigger1 = !numenemy
trigger2 = numenemy
trigger2 = enemynear,movetype!=H || ((enemynear,statetype!=A) && (enemynear,statetype!=L))
var(33) = 0
ignorehitpause = 1
[State reset all juggle vars]
type = VarSet
triggerall = var(34)
trigger1 = !numenemy
trigger2 = numenemy
trigger2 = enemynear,movetype!=H || ((enemynear,statetype!=A) && (enemynear,statetype!=L) && !(enemynear,gethitvar(fall)))
var(34) = 0
ignorehitpause = 1

;===============================================================================
; COUNTER HIT (Taken from Vans, who based his on Sander's Method)
;===============================================================================
[State -2, VarSet] ;Checks if opponent is in attack state
type = VarSet
triggerall = numenemy
trigger1 = enemy,movetype=A
var(42) = 1
ignorehitpause = 1

[State -2, VarSet] ;This resets the condition if counter not succesful and succesful
type = VarSet
triggerall = numenemy
trigger1 = enemy,movetype=I || var(43)>=1 ;Enemy is Idle | Counter was Succesful
trigger2 = var(43)>10 && enemy,movetype=H ;10 ticks passed & enemy is on gethit state
trigger3 = var(46)
trigger4 = stateno = [1000,1001]
trigger5 = (time<=1) && (stateno!=[5000,5199]) && (movetype!=H)
var(42) = 0+0*(var(46):=ifelse((var(46) && stateno=1100),1,0))
ignorehitpause = 1

[State -2, VarSet] ;Counter Hit Succesful
type = VarSet
trigger1 = var(42)=1 && movehit ;Counter Check Ok, Move Hit Succesfully.
trigger1 = stateno != [190,199] ;Does not activate during intros.
trigger1 = stateno != [800,899] ;Does not activate during throws.
trigger1 = stateno != [4000,4003]
;trigger2 = var(42)=1 && projhit=1 ;Counter Check Ok, Projectile Hit Succesfully.
;trigger3 = var(42)=1 && var(46)=1 ;Counter Check Ok, Projectile Hit Succesfully.
var(43) = 1
ignorehitpause = 1

[State -2, VarAdd] ;Counter Hit Timer
type = VarAdd
trigger1 = var(43)>=1 ;Counter was succesful
var(43) = 1
ignorehitpause = 1

[State -2, VarSet] ;Counter Hit Reset
type = VarSet
trigger1 = var(43)>=22 && movehit ;Reset if 22 ticks passed and move hit
trigger2 = p2movetype!=H ;Reset if P2 is no longer in gethit state
trigger3 = movetype=H ;Reset if P1 is getting hit
;trigger4 = var(43)>=22 && projhit=1 ;Reset if 22 ticks passed and projectile hit
;trigger5 = var(43)>=22 && var(46)=1
var(43) = 0
ignorehitpause = 1

[State -2, Counterhit Explod]
type = Explod
triggerall = numenemy
triggerall = stateno != [800,899] ;Does not activate during throws.
triggerall = stateno != [4000,4003]
triggerall = !enemynear,movereversed
triggerall = var(42)=1
triggerall = enemy,movetype=H ;Enemy was indeed HIT, otherwise this'd be retarded.
triggerall = numexplod(980)+numexplod(981)=0
trigger1 = movehit ;Move hits
anim = 980+1*(teamside!=1)
ID = 980
pos = ifelse(teamside=1,10,320-10),(12*numexplod(980))+120
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
;scale = .5,.5
sprpriority = 999
ontop = 1
ownpal = 1
ignorehitpause = 1

;-----------------------------------
; Level 3 Selection
[State -2, VS]
type = varset
trigger1 = numhelper(20002)
trigger1 = helper(20002),var(1)>0
trigger1 = helper(20002),var(1)<=helper(20002),var(5)
var(51) = helper(20002),var(1)

[State -2, RMP]
type = remappal
trigger1 = numhelper(20002)
source = 1,1
dest = 1,var(51)

[State -2, VS]
type = varset
trigger1 = numhelper(20002)
trigger1 = helper(20002),var(10)>0
trigger1 = helper(20002),var(10)<=2
var(52) = helper(20002),var(10)

;----------------------------------
; Custom Cornerpush System by PotS
;----------------------------------
[State -2, Superpause Check]
type = null ;VarAdd
trigger1 = Var(9)
var(9) = -1

[State -3, Corner Push Reset] ;Reset
type = varset
trigger1 = fvar(5)
trigger1 = numtarget
trigger1 = (target,hitover) || (target,gethitvar(hitshaketime) > 0 && target,time <= 0)
fvar(5) = 0

[State -3, Corner Push Initial Vel] ;Get initial velocity
type = varset
trigger1 = movecontact=1 && numtarget
fvar(5) = (target,gethitvar(xvel))
ignorehitpause = 1

[State -3, Corner Push Apply] ;Apply corner push
type = posadd
triggerall = fvar(5)
triggerall = (statetype=S || statetype=C) && numtarget
triggerall = !hitpausetime && (target,gethitvar(hitshaketime) <= 0)
triggerall = (target,statetype=S || target,statetype=C) && !(target,gethitvar(yvel)) && !(target,hitfall) ;See note below
trigger1 = target,frontedgebodydist <= abs(target,vel x)
trigger1 = (target,gethitvar(xvel) * target,facing) > 0
trigger2 = target,backedgebodydist <= abs(target,vel x)
trigger2 = (target,gethitvar(xvel) * target,facing) < 0
x = ifelse(target,frontedgebodydist <= 0,-1,1) * (target,facing) * fvar(5)

[State -2, Freeze Pos During Superpause]
type = null ;PosFreeze
trigger1 = Var(9)
value = 1

[State -3, Corner Push Friction] ;Apply friction to the velocity
type = varset
trigger1 = numtarget
trigger1 = target,gethitvar(hitshaketime) <= 0
fvar(5) = fvar(5)*0.85

;-----MODIFIED DAMAGE DAMPENER-----------------------------
[State -2, Min Scaling Test]
type = null
trigger1 = (stateno=[200,629])
trigger1 = (fvar(9):=0.1)||1
trigger2 = (stateno=[1000,1999])
trigger2 = (fvar(9):=0.15)||1
trigger3 = (stateno=[2000,4999])
trigger3 = (fvar(9):=0.2)||1

[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
fvar(10) = 1.0

[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
var(4) = 0

[State -2, Reset Groundbounce when the opponent recovers]
type = Varset
trigger1 = numenemy
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
var(15) = 0

[State -2, Final Dampen]
type = null
trigger1 = (stateno!=[2000,4999])
trigger1 = (fvar(11):=ifelse(fvar(9)>fvar(10),fvar(9),fvar(10))*ifelse(var(4)>0,0.5,1)*cond(var(54)>0,0.6,1.0)) || 1
ignorehitpause = 1

[State -2, Final Dampen]
type = null
trigger1 = (stateno=[2000,3999])
trigger1 = (fvar(11):=ifelse(fvar(9)>fvar(10),fvar(9),fvar(10))*cond(var(54)>0,0.6,1.0)) || 1
ignorehitpause = 1

[State -2, Final Dampen]
type = null
trigger1 = (stateno=[4000,4999])
trigger1 = (fvar(11):=1)||1
ignorehitpause = 1

[State reset Combo Rate Flag]
type = VarSet
triggerall = var(57)
trigger1 = numenemy
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
var(57) = 0
ignorehitpause = 1

;-----------------------------------
[State -3, Prevent Undergound Juggles by POTS]
type = targetbind
trigger1 = var(31)=1 ;movehit=1
trigger1 = numtarget=1 && numenemy
trigger1 = (target,time<=1) && (target,ID=enemynear,ID) ;This is just to prevent Simul issues as usual
trigger1 = !(target,hitshakeover) && (target,hitfall) && (target,pos y>0)
pos = ceil(p2dist x),ceil(-pos y) ;Keeps P2 at the same horizontal distance, but resets his Y position
ignorehitpause = 1

;-----------------------------------
; Throw Flag
[State -2, Throws Allowed]
type = varset
triggerall = numenemy
trigger1 = enemynear,movetype != H
trigger1 = enemynear,stateno != 140
trigger1 = (enemynear,ctrl && enemynear,time >= 1) || (enemynear,time >= 8)
trigger2 = enemynear,movetype = A
trigger3 = (enemynear,stateno != [0,52]) && (enemynear,stateno != [120,155]) && (enemynear,stateno != [5000,5120])
var(30) = 0
[State -2, Throws Disallowed]
type = varset
triggerall = numenemy
trigger1 = enemynear,stateno = [150,155]
trigger2 = (enemynear,stateno = 51 || enemynear,stateno = 140) && (enemynear,prevstateno = [150,155])
trigger3 = enemynear,movetype = H && enemynear,statetype != A && !var(20)
trigger4 = (enemynear,stateno = [5020,5040]) && enemynear,hitfall = 0
trigger5 = enemynear,stateno = 40 && enemynear,prevstateno != 52 && (enemynear,anim != [0,29])
var(30) = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]
[State -3, Prevent Crossup]
type = width
trigger1 = movetype != H
edge = 8,0
ignorehitpause = 1

;-----------------------------------
; Sounds
[State -3, Hitsound 1]
type = PlaySnd
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5000
trigger2 = StateNo = 5020
value = 5000,0
channel = 0

[State -3, Hitsound 2]
type = PlaySnd
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5010
trigger2 = StateNo = 5070
value = 5000,1
channel = 0

[State -3, Hitsound 3]
type = PlaySnd
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5030
value = 5000,2
channel = 0

[State -3, Getup Sound]
type = PlaySnd
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5120
value = 5120,0
channel = 0