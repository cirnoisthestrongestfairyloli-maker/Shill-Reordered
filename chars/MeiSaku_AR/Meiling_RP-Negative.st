;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

;-----------------------------------
; FIERCE TIGER STRENGTH
;Abstract Reordered: Sakuya on point -> engine states go to her versions (+40000)
[State -2, AR Sakuya on point]
type = ChangeState
triggerall = var(47) = 1
triggerall = !InCustomState
trigger1 = stateno = 1
trigger2 = stateno = 2
trigger3 = stateno = 3
trigger4 = stateno = 10
trigger5 = stateno = 12
trigger6 = stateno = 40
trigger7 = stateno = 45
trigger8 = stateno = 50
trigger9 = stateno = 51
trigger10 = stateno = 52
trigger11 = stateno = 100
trigger12 = stateno = 101
trigger13 = stateno = 105
trigger14 = stateno = 106
trigger15 = stateno = 110
trigger16 = stateno = 115
trigger17 = stateno = 120
trigger18 = stateno = 130
trigger19 = stateno = 131
trigger20 = stateno = 132
trigger21 = stateno = 140
trigger22 = stateno = 150
trigger23 = stateno = 151
trigger24 = stateno = 152
trigger25 = stateno = 153
trigger26 = stateno = 154
trigger27 = stateno = 155
trigger28 = stateno = 170
trigger29 = stateno = 175
trigger30 = stateno = 180
trigger31 = stateno = 181
trigger32 = stateno = 182
trigger33 = stateno = 190
trigger34 = stateno = 191
trigger35 = stateno = 192
trigger36 = stateno = 193
trigger37 = stateno = 195
trigger38 = stateno = 5000
trigger39 = stateno = 5001
trigger40 = stateno = 5010
trigger41 = stateno = 5011
trigger42 = stateno = 5020
trigger43 = stateno = 5030
trigger44 = stateno = 5035
trigger45 = stateno = 5040
trigger46 = stateno = 5050
trigger47 = stateno = 5070
trigger48 = stateno = 5071
trigger49 = stateno = 5080
trigger50 = stateno = 5081
trigger51 = stateno = 5085
trigger52 = stateno = 5086
trigger53 = stateno = 5087
trigger54 = stateno = 5088
trigger55 = stateno = 5089
trigger56 = stateno = 5100
trigger57 = stateno = 5101
trigger58 = stateno = 5110
trigger59 = stateno = 5120
trigger60 = stateno = 5150
trigger61 = stateno = 5200
trigger62 = stateno = 5201
trigger63 = stateno = 5205
trigger64 = stateno = 5210
trigger65 = stateno = 5500
value = stateno + 40000
ignorehitpause = 1

[State -2, VS]
type = varset
triggerall = var(47) = 0
trigger1 = roundstate > 2
var(7) = 0

[State -2, VA]
type = varadd
triggerall = var(47) = 0
trigger1 = var(7)>0
trigger1 = stateno != 2000
var(7) = -1
ignorehitpause = 1

[State -2, PS]
type = powerset
triggerall = var(47) = 0
trigger1 = power > 0
trigger1 = var(7)>0
value = 0

[State 0, PalFX]
type = PalFX
triggerall = var(47) = 0
trigger1 = var(7)>1;0
add = 50+floor(50*sin((gametime*10.0)*pi/180.0)),40+floor(40*sin((gametime*10.0)*pi/180.0)),0
mul = 256,256,128+floor(128*cos((gametime*10.0)*pi/180.0))
time = 4
color = 256
ignorehitpause = 1
;persistent = 

[State 0, PalFX]
type = PalFX
triggerall = var(47) = 0
trigger1 = var(7)=1;0
;trigger1 = gametime%7=0
time = 0
ignorehitpause = 1

;-----------------------------------
; A.I. Helper
[State -2, AI Helper]
type = helper
triggerall = var(47) = 0
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
triggerall = var(47) = 0
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
triggerall = var(47) = 0
trigger1 = numtarget(555)
trigger1 = var(7)<=0
trigger1 = (target(555),stateno=5020) && (target(555),alive) && (target(555),hitfall) ;Hit out of the air while alive and already falling
ID = 555 ;200
value = 5085 ;5025
ignorehitpause = 1

;-----------------------------------
; Debugging Tools
[State 0, DisplayToClipboard]
type = DisplayToClipboard
triggerall = var(47) = 0
trigger1 = 1
text = "Multihit: %d\tDamage Dampener: %f \t Tiger Timer: %d\n\t Juggle: %d \tPrevstate: %d"
params = var(3),fvar(11),var(4),var(34),prevstateno
ignorehitpause = 1

;-----------------------------------
; Juggle Code Stuff
[State Movehitoner]
type = VarSet
triggerall = var(47) = 0
trigger1 = numenemy
var(31) = ifelse((movehit=1||projhit1000=1)&&(enemynear,movereversed!=[1,2]),var(31)+1,0)
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
triggerall = var(47) = 0
triggerall = var(34)
trigger1 = !numenemy
trigger2 = numenemy
trigger2 = enemynear,movetype!=H || ((enemynear,statetype!=A) && (enemynear,statetype!=L))
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
triggerall = var(47) = 0
triggerall = numenemy
trigger1 = enemy,movetype=I || var(43)>=1 ;Enemy is Idle | Counter was Succesful
trigger2 = var(43)>10 && enemy,movetype=H ;10 ticks passed & enemy is on gethit state
trigger3 = var(46)
trigger4 = (time<=1) && (stateno!=[5000,5199]) && (movetype!=H)
var(42) = 0+0*(var(46):=ifelse((var(46) && stateno=1400),1,0))
ignorehitpause = 1

[State -2, VarSet] ;Counter Hit Succesful
type = VarSet
triggerall = var(47) = 0
trigger1 = var(42)=1 && movehit ;Counter Check Ok, Move Hit Succesfully.
trigger1 = stateno != [190,199] ;Does not activate during intros.
trigger1 = stateno != [800,899] ;Does not activate during throws.
trigger1 = stateno != [950,951] ;Don't activate during throws.
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
triggerall = var(47) = 0
triggerall = numenemy
triggerall = stateno != [800,899] ;Does not activate during throws.
triggerall = stateno != [950,951] ;Don't activate during throws.
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
triggerall = var(47) = 0
trigger1 = (stateno=[200,629])
trigger1 = (fvar(9):=ifelse((var(7)>0),0.33,0.1))||1
trigger2 = (stateno=[1000,1999])
trigger2 = (fvar(9):=ifelse((var(7)>0),0.33,0.15))||1
trigger3 = (stateno=[2000,4999])
trigger3 = (fvar(9):=ifelse((var(7)>0),0.33,0.2))||1

[State -2, Min Scaling Test]
type = null
triggerall = var(47) = 0
trigger1 = var(7)>0
trigger1 = (fvar(9):=0.33)||1

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
triggerall = var(47) = 0
trigger1 = (stateno!=[2000,4999])
trigger1 = (fvar(11):=ifelse(fvar(9)>fvar(10),fvar(9),fvar(10))*ifelse(var(4)>0,0.5,1)) || 1
ignorehitpause = 1

[State -2, Final Dampen]
type = null
triggerall = var(47) = 0
trigger1 = (stateno=[2000,3999])
trigger1 = (fvar(11):=ifelse(fvar(9)>fvar(10),fvar(9),fvar(10))) || 1
ignorehitpause = 1

[State -2, Final Dampen]
type = null
triggerall = var(47) = 0
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

;---- Sakuya (mode 1)
[State 2000, Multi Var Add]
type = null
triggerall = var(47) = 1
trigger1 = var(28)>0
trigger1 = (var(26):=var(26)+12)||1
trigger1 = (var(27):=var(27)+2)||1

[State 2000, Knife]
type = helper
triggerall = var(47) = 1
trigger1 = var(28)>0
trigger1 = var(28)%2=0
trigger1 = (var(29):=var(29)+1)||1
helpertype = normal
name = "Kill Doll Knife"
ID = 2010
pos = 0,-60
postype = p1
stateno = 62000
ownpal = 1
facing = 1
ignorehitpause = 1

[State 2000, Killing Doll Timer]
type = varadd
triggerall = var(47) = 1
trigger1 = var(28)>0
var(28) = -1
ignorehitpause = 1

[State 210, Killing Doll StopSnd]
type = stopsnd
triggerall = var(47) = 1
triggerall = var(18)=0
trigger1 = movetype = H
trigger2 = stateno = [45000,45999]
channel = 6

[State -3, Killing Doll Reset]
type = varset
triggerall = var(47) = 1
trigger1 = var(29)>0
trigger1 = numhelper(2010)<=0
var(29) = 0
ignorehitpause = 1

;-----------------------------
; Time Stop related Bullshit
;-----------------------------
[State 2000, Spellcard Effect]
type = helper
triggerall = var(47) = 1
trigger1 = var(50)>0
trigger1 = numhelper(30000)=0
trigger1 = stateno != [44200,44299]
helpertype = normal
name = "World Timer"
id = 30000
stateno = 70000
pos = 0,-50
postype = p1
ownpal = 1
facing = 1
pausemovetime = 99999999
supermovetime = 99999999

[State -2, Timestop]
type = pause
triggerall = var(47) = 1
trigger1 = var(50)>0
time = 2
movetime = 2
ignorehitpause = 1

[State -2, Timestop Noguard]
type = assertspecial
triggerall = var(47) = 1
trigger1 = var(50)>0
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard
ignorehitpause = 1

[State -2, Timestop Immunity]
type = nothitby
triggerall = var(47) = 1
trigger1 = var(50)>0
time = 2
value2 = SCA,AA,AP,AT
ignorehitpause = 1

[State -2, Timestop Powerlock]
type = powerset
triggerall = var(47) = 1
trigger1 = var(50)>0
value = 0
ignorehitpause = 1

[State -2, ASS]
type = assertspecial
triggerall = var(47) = 1
trigger1 = var(50)>0
flag = timerfreeze
flag2 = unguardable
flag3 = nomusic
ignorehitpause = 1

[State -2, PP]
type = playerpush
triggerall = var(47) = 1
trigger1 = var(50)>0
value = 0
ignorehitpause = 1

[State -2, Timecounter Dec]
type = varadd
triggerall = var(47) = 1
trigger1 = var(50)>0
trigger1 = stateno != 44000
trigger1 = stateno != [44200,44299]
var(50) = -1
ignorehitpause = 1

[State -2, VS]
type = varset
triggerall = var(47) = 1
trigger1 = var(50)<0
trigger2 = alive = 0
trigger3 = win
trigger4 = lose
trigger5 = drawgame
trigger6 = roundstate != 2
;Surprise, surprise. Plasmoid's TimeStop flag needs a helping hand.
trigger7 = movetype = H
trigger8 = numenemy && var(50) && stateno = 44000 && time > 80
trigger8 = enemy,name = "Sakuya_RP" && enemy,var(50) && enemy,stateno = 4000 && enemy,time > 80
trigger8 = enemy,cond(1,(var(50):=0),0)
var(50) = 0
ignorehitpause = 1

;-----------------------------------
[State -2, Killing Doll Hitsound]
type = playsnd
triggerall = var(47) = 1
trigger1 = numprojid(2010)>=1
value = 40001,3
channel = 4

[State -2, Sense Knife Throw Sound]
type = playsnd
triggerall = var(47) = 1
trigger1 = numprojid(1020)>=1
value = 40810,2
channel = 3

[State -2, Sense Knife HitSound]
type = playsnd
triggerall = var(47) = 1
trigger1 = numprojid(1021)>=1
value = 40001,6
channel = 4

[State -2, Bounce Knife Throw Sound]
type = playsnd
triggerall = var(47) = 1
trigger1 = numprojid(1320)>=1
value = 41300,11
channel = 5

[State -2, Bounce Knife HitSound]
type = playsnd
triggerall = var(47) = 1
trigger1 = numprojid(1321)>=1
value = 40001,3
channel = 4

[State -2, Red Soul Hitsound]
type = playsnd
triggerall = var(47) = 1
trigger1 = numprojid(2110)>=1
value = 40001,5
channel = 4

[State -2, Guardsound]
type = playsnd
triggerall = var(47) = 1
trigger1 = numprojid(1710)>=1
value = 40002,0
channel = 4

;-----------------------------------
; Remove Excess Explods
[State -2, REX]
type = removeexplod
triggerall = var(47) = 1
trigger1 = numexplod(20217)
trigger1 = stateno != 40217
id = 20217
ignorehitpause = 1

[State -2, REX]
type = removeexplod
triggerall = var(47) = 1
trigger1 = numexplod(20620)
trigger1 = stateno != 40620
id = 20620
ignorehitpause = 1

;-----------------------------------
; Air Dash Limiter Reset
[State -2, P2 Safe Fall]
type = targetstate
triggerall = var(47) = 1
triggerall = numtarget=1 ;Just to prevent Simul mode shenanigans
triggerall = target,pos y>=-20 && target,vel y>0
triggerall = target,alive && target,hitfall && target,gethitvar(fall.recover)
triggerall = target,stateno=5030 || target,stateno=5035 || target,stateno=5050 || target,stateno=5071
trigger1 = target,AILevel <= 0
trigger1 = target,command="recovery"
trigger2 = target,AILevel > 0
trigger2 = random%100 <= 10*ceil((target,AILevel)*(target,AILevel)/64.0)
value = 45205
ignorehitpause = 1

;--------RESET--------
[State -2, P2 Recovery] ;Notice how ID 200 is being used. ID must match those Hitdefs
type = targetstate
triggerall = var(47) = 1
trigger1 = numtarget(555)
trigger1 = (target(555),stateno=5020) && (target(555),alive) && (target(555),hitfall) ;Hit out of the air while alive and already falling
ID = 555 ;200
value = 45085 ;5025
ignorehitpause = 1

;-----------------------------------
; Debugging Tools
[State 0, DisplayToClipboard]
type = DisplayToClipboard
triggerall = var(47) = 1
trigger1 = 1
text = "Juggle: %d \tDamage Dampener: %f \tTimefreeze Timer: %d\nCombo Cond: %d"
params = var(6),fvar(11),var(50),var(1)
ignorehitpause = 1

;-----------------------------------
; Juggle Code Stuff
[State Movehitoner]
type = VarSet
triggerall = var(47) = 1
trigger1 = numenemy
var(31) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(31)+1,0)
ignorehitpause = 1

[State reset all juggle vars]
type = VarSet
triggerall = var(47) = 1
triggerall = var(34)
trigger1 = !numenemy
trigger2 = numenemy
trigger2 = enemynear,movetype!=H || ((enemynear,statetype!=A) && (enemynear,statetype!=L) && !(enemynear,gethitvar(fall)))
var(34) = 0
ignorehitpause = 1

;===============================================================================
; COUNTER HIT (Taken from Vans, who based his on Sander's Method)
;===============================================================================
[State -2, VarSet] ;This resets the condition if counter not succesful and succesful
type = VarSet
triggerall = var(47) = 1
triggerall = numenemy
trigger1 = enemy,movetype=I || var(43)>=1 ;Enemy is Idle | Counter was Succesful
trigger2 = var(43)>10 && enemy,movetype=H ;10 ticks passed & enemy is on gethit state
trigger3 = var(46)
trigger4 = (time<=1) && (stateno != [45000,45199]) && (movetype!=H)
var(42) = 0+0*(var(46):=ifelse((var(46) && stateno = 41100),1,0))
ignorehitpause = 1

[State -2, VarSet] ;Counter Hit Succesful
type = VarSet
triggerall = var(47) = 1
trigger1 = var(42)=1 && movehit ;Counter Check Ok, Move Hit Succesfully.
trigger1 = stateno != [40190,40199] ;Does not activate during intros.
trigger1 = stateno != [40800,40899] ;Does not activate during throws.
trigger1 = stateno != [40950,40951] ;Don't activate during throws.
;trigger2 = var(42)=1 && projhit=1 ;Counter Check Ok, Projectile Hit Succesfully.
;trigger3 = var(42)=1 && var(46)=1 ;Counter Check Ok, Projectile Hit Succesfully.
var(43) = 1
ignorehitpause = 1

[State -2, Counterhit Explod]
type = Explod
triggerall = var(47) = 1
triggerall = numenemy
triggerall = stateno != [40800,40899] ;Does not activate during throws.
triggerall = stateno != [40950,40951] ;Don't activate during throws.
triggerall = !enemynear,movereversed
triggerall = var(42)=1
triggerall = enemy,movetype=H ;Enemy was indeed HIT, otherwise this'd be retarded.
triggerall = numexplod(980)+numexplod(981)=0
trigger1 = movehit ;Move hits
anim = 40980+1*(teamside!=1)
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
[State -2, Min Scaling Test]
type = null
triggerall = var(47) = 1
trigger1 = (stateno = [40200,40629])
trigger1 = (fvar(9):=0.1)||1
trigger2 = (stateno = [41000,41999])
trigger2 = (fvar(9):=0.1)||1
trigger3 = (stateno = [42000,44999])
trigger3 = (fvar(9):=0.1)||1

[State -2, Final Dampen]
type = null
triggerall = var(47) = 1
trigger1 = (fvar(11):=ifelse(fvar(9)>fvar(10),fvar(9),fvar(10))*ifelse(var(4)>0 && (stateno != [42000,44999]),0.5,1)) || 1
ignorehitpause = 1


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
triggerall = var(47) = 0
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5000
trigger2 = StateNo = 5020
value = 5000,0
channel = 0

[State -3, Hitsound 2]
type = PlaySnd
triggerall = var(47) = 0
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5010
trigger2 = StateNo = 5070
value = 5000,1
channel = 0

[State -3, Hitsound 3]
type = PlaySnd
triggerall = var(47) = 0
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5030
value = 5000,2
channel = 0

[State -3, Getup Sound]
type = PlaySnd
triggerall = var(47) = 0
triggerall = Time = 1
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5120
value = 5000,3
channel = 0

;---- Sakuya (mode 1)
[State -3, Hitsound 1]
type = PlaySnd
triggerall = var(47) = 1
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 45000
trigger2 = StateNo = 45020
value = 45000,0
channel = 0

[State -3, Hitsound 2]
type = PlaySnd
triggerall = var(47) = 1
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 45010
trigger2 = StateNo = 45070
value = 45000,1
channel = 0

[State -3, Hitsound 3]
type = PlaySnd
triggerall = var(47) = 1
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 45030
value = 45000,2
channel = 0
