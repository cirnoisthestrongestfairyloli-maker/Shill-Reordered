;---------------------------------------------------------------------------
; Standing Light Attack
[Statedef 200]
type = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype = A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 200+30*(var(7)>0)
sprpriority = 1
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(0*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 200,0
channel = 0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 0,0

[State 200, HitDef]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(0*ln(2)) + 0.5))&&(var(7)<=0),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(2)>=0 && animelemtime(3)<0
trigger1 = !movecontact && !movereversed
attr = S,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(20*fvar(11)*ifelse(var(42),1.25,1.0)),0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 8,8                 ;Time attacker pauses, time opponent shakes
sparkno = S8000+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-60
hitsound = s1,0                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 14+1*(var(42))-1*(var(7)>0)             ;Time that the opponent slides back
ground.hittime = 14+1*(var(42))-1*(var(7)>0)          ;Time opponent is in hit state
air.hittime = 14+1*(var(42))-1*(var(7)>0)          ;Time before opponent regains control in air
guard.slidetime = 11+2*(var(7)>0)
guard.hittime = 11+2*(var(7)>0)
ground.velocity = -4.4             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.4,-5           ;(X,Y)-velocity at which opponent is pushed
getpower = 40*(var(7)<=0),40*(var(7)<=0)
givepower = 20,20
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.93*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 200, TIGER JUMP CANCEL]
type = changestate
triggerall = var(7)>0 && movecontact=[1,5]
trigger1 = AILevel<=0
trigger1 = command = "holdup" || command = "U"
value = 40
ctrl = 0

[State 200, Flag Recovery Frames]
type = statetypeset
trigger1 = animelemtime(3)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 200, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Attack
[Statedef 210]
type = S
movetype = A
physics = S
ctrl = 0
anim = 210+30*(var(7)>0)
sprpriority = 1
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(1*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 210, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 210,0
channel = 0

[State 210, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 0,1

[State 210, HitDef]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(1*ln(2)) + 0.5))&&(var(7)<=0),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = (p2stateno != 5210)
trigger1 = animelemtime(3)>=0 && animelemtime(4)<0
trigger1 = !movecontact && !movereversed
attr = S,NA
damage = ceil(50*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = DiagUp
air.animtype = DiagUp
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8010+(random%2)
guard.sparkno = S8030
sparkxy = -10,-60
hitsound = s1,1
guardsound = s2,0
ground.type = High
ground.slidetime = 17+3*(var(42))
ground.hittime = 17+3*(var(42))
air.hittime = 17+3*(var(42))
guard.slidetime = 13
guard.hittime = 13
ground.velocity = -1.5,-8.0
air.type = High
air.velocity = -1.5,-8.0
guard.velocity = -7
getpower = 60*(var(7)<=0),60*(var(7)<=0)
givepower = 30,30
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.35
fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 215

[State 210, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 210, JC]
type = changestate
triggerall = cond(var(7)>0,(movecontact=[1,5]),(movehit=[1,5]))
trigger1 = AILevel<=0
trigger1 = command = "holdup" || command = "U"
value = 40
ctrl = 0

[State 210, Flag Recovery Frames]
type = statetypeset
trigger1 = animelemtime(4)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 210, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Forward Medium Attack
[Statedef 215]
type = S
movetype = A
physics = S
ctrl = 0
anim = 215+30*(var(7)>0)
sprpriority = 1
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(2*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 215, STS]
type = statetypeset
trigger1 = animelemtime(3)=0
statetype = A
physics = N

[State 215, VelS]
type = velset
trigger1 = animelemtime(3)=0
x = 4
y = -4

[State 215, VM]
type = velmul
trigger1 = animelemtime(3)>0
trigger1 = statetype = A
x = 0.95

[State 215, VA]
type = veladd
trigger1 = animelemtime(3)>0 && animelemtime(6)<0
y = 0.5

[State 215, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 210,0
channel = 0

[State 215, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 0,1

[State 215, STS]
type = statetypeset
trigger1 = animelemtime(6)=0
statetype = S
movetype = I
physics = S

[State 215, VelS]
type = velset
trigger1 = animelemtime(6)=0
y = 0

[State 215, PS]
type = posset
trigger1 = animelemtime(6)=0
y = 0

[State 215, HitDef]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(2*ln(2)) + 0.5))&&(var(7)<=0),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(5)>=0 && animelemtime(6)<0
trigger1 = !movecontact && !movereversed
attr = A,NA
damage = ceil(70*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Medium
guardflag = H
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8010+(random%2)
guard.sparkno = S8030
sparkxy = -10,-35
hitsound = s1,1
guardsound = s2,0
ground.type = High
ground.slidetime = 18-2*(var(7)>0)+3*(var(42))
ground.hittime = 18-2*(var(7)>0)+3*(var(42))
air.hittime = 18-2*(var(7)>0)+3*(var(42))
guard.slidetime = 15
guard.hittime = 15
ground.velocity = -5
air.type = High
air.velocity = -5,-4
getpower = 80*(var(7)<=0),80*(var(7)<=0)
givepower = 40,40
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 215, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 215, TIGER JUMP CANCEL]
type = changestate
triggerall = movecontact
triggerall = var(7)>0 && animelemtime(6)=[0,4]
trigger1 = AILevel<=0
trigger1 = command = "holdup" || command = "U"
value = 40
ctrl = 0

[State 215, Flag Recovery Frames]
type = statetypeset
trigger1 = animelemtime(6)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 215, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Back Medium Attack
[Statedef 217]
type = S
movetype = A
physics = S
ctrl = 0
anim = 217+30*(var(7)>0)
sprpriority = 1
facep2 = 1

[State 217, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 210,0
channel = 0

[State 217, 1]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 217,10

[State 217, Projectile]
type = Helper
trigger1 = animelemtime(3)=0
helpertype = normal ;player
name = "CompletelyNotKrizalid"
ID = 20217
stateno = 20217
pos = 31,-43
postype = p1 ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.5
size.yscale = 0.5

[State 217, TIGER JUMP CANCEL]
type = changestate
triggerall = var(7)>0 && animelemtime(3)=[3,7]
trigger1 = AILevel<=0
trigger1 = command = "holdup" || command = "U"
value = 40
ctrl = 0

[State 217, Flag Recovery Frames]
type = statetypeset
trigger1 = animelemtime(3)=3
movetype = I
ignorehitpause = 1
persistent = 0

[State 217, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
; 4y Projectile
[Statedef 20217]
type = A
movetype = A
physics = N
juggle = 0
anim = 20217+400*ishelper(20617)
sprpriority = 5

[State 20217, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 20217, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 20217, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
slot = 0
stateno = 20219
time = -1
ignorehitpause = 1

[State 20217, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 20217, VS]
type = velset
trigger1 = time = 0
x = 10.0

[State 20217, CS]
type = changestate
trigger1 = 1
value = 20218

;--------------------------
; 4y Projectile
[Statedef 20218]
type = A
movetype = A
physics = N
juggle = 0
sprpriority = 5

[State 20218, Friction]
type = velmul
trigger1 = time
trigger1 = animelemtime(10)<0
x = 0.85

[State 20218, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 20218, NHB]
type = nothitby
trigger1 = 1
value = ,AA,AT
ignorehitpause = 1

[State 20218, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP
slot = 0
stateno = 20219
time = -1
ignorehitpause = 1

[State 20218, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State Movehitoner (From None's Beavis)]
type = VarSet
trigger1 = numenemy
var(31) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(31)+1,0)
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = parentVarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = (root,var(34)) | floor(exp(8*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 20218, HitDef]
type = HitDef
trigger1 = (root,var(34)&floor(exp(8*ln(2)) + 0.5))&&(root,var(26)=0)
trigger2 = !((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger3 = !(!movecontact && !movereversed)
attr = S,NP
hitflag = 

[State 20218, HitDef]
type = HitDef
trigger1 = !((root,var(34))&floor(exp(8*ln(2)) + 0.5))||(var(7)>0)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = !movecontact && !movereversed
attr = A,NP                     ;Attribute: Standing, Normal Attack
damage = ceil(70*(root,fvar(11))),14                   ;Damage that move inflicts, guard damage
kill = 1
guard.kill = 0
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAFP                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 0,6                 ;Time attacker pauses, time opponent shakes
sparkno = S8010+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,0
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 20             ;Time that the opponent slides back
ground.hittime = 20            ;Time opponent is in hit state
air.hittime = 20             ;Time opponent is in hit state
guard.slidetime = 17
guard.hittime = 17
ground.velocity = -10.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -10.0,-6.5           ;(X,Y)-velocity at which opponent is pushed
getpower = 60,60
givepower = 30,30
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 20218, Flag Recovery Frames]
type = statetypeset
trigger1 = animelemtime(23)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 20218, Damage Dampen]
type = parentvarset
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.8*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

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

[State 20218, CS]
type = changestate
trigger1 = movecontact||movereversed
trigger2 = root,movetype = H
trigger2 = root,stateno!=[120,155]
trigger3 = root,alive = 0
value = 20219

[State 20218, CS]
type = changestate
trigger1 = animtime = 0
value = 999

;--------------------------
; 4y Projectile
[Statedef 20219]
type = A
movetype = I
physics = N
juggle = 0
sprpriority = 5
movehitpersist=1

[State Movehitoner (From None's Beavis)]
type = VarSet
trigger1 = numenemy
var(31) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(31)+1,0)
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = parentVarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = (root,var(34)) | floor(exp(8*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 20219, Friction]
type = velmul
trigger1 = time
trigger1 = animelemtime(10)<0
x = 0.85

[State 20219, ASS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 20219, NHB]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
ignorehitpause = 1

[State 20219, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

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

[State 20219, CS]
type = changestate
trigger1 = animtime = 0
value = 999

;---------------------------------------------------------------------------
; Standing Heavy Attack
[Statedef 220]
type = S
movetype = A
physics = S
ctrl = 0
anim = 220+40*(var(7)>0)
sprpriority = 1
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(3*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 220, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 420,0
channel = 0

[State 220, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 0,2

[State 220, Move]
type = posadd
trigger1 = animelemtime(2)=0||animelemtime(3)=0||animelemtime(4)=0
x = 7

[State 220, HitDef]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(3*ln(2)) + 0.5))&&(var(7)<=0),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(4)>=0 && animelemtime(5)<0
trigger1 = !movecontact && !movereversed
attr = S,NA
damage = ceil(60*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Heavy
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,-50
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 22+3*(var(42))
ground.hittime = 22+3*(var(42))
air.hittime = 22+3*(var(42))
guard.slidetime = 17
guard.hittime = 17
ground.velocity = -6.0,0.0;-4.5
air.type = High
air.velocity = -6.0,-4.5
getpower = 90*(var(7)<=0),90*(var(7)<=0)
givepower = 45,45
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 220, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 220, TIGER JUMP CANCEL]
type = changestate
triggerall = var(7)>0 && movecontact=[1,5]
trigger1 = AILevel<=0
trigger1 = command = "holdup" || command = "U"
value = 40
ctrl = 0

[State 220, Flag Recovery Frames]
type = statetypeset
trigger1 = animelemtime(5)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 220, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Forward Heavy Attack
; Step Palm
[Statedef 225]
type = S
movetype = A
physics = S
ctrl = 0
anim = 225+40*(var(7)>0)
sprpriority = 1
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(4*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 225, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 420,0
channel = 0

[State 225, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 220,0
channel = 0

[State 225, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 0,2

[State 225, PA]
type = posadd
trigger1 = animelemtime(1)=0
trigger2 = animelemtime(5)=0
x = 20

[State 225, HitDef]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(4*ln(2)) + 0.5))&&(var(7)<=0),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(5)>=0 && animelemtime(6)<0
trigger1 = !movecontact && !movereversed
attr = S,NA
damage = ceil(70*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Back
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = 0,-40
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 22+3*(var(42))
ground.hittime = 22+3*(var(42))
air.hittime = 22+3*(var(42))
guard.slidetime = 17
guard.hittime = 17
ground.velocity = -(8.0+4.0*(var(42)!=0))*ifelse((p2dist x < 0),-1,1),-(4.5+2.0*(var(42)!=0))
air.type = High
air.velocity = -(8.0+4.0*(var(42)!=0))*ifelse((p2dist x < 0),-1,1),-(4.5+2.0*(var(42)!=0))
getpower = 90*(var(7)<=0),90*(var(7)<=0)
givepower = 45,45
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 0
p2facing = 1
ID = 225

[State 225, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 220, TS]
type = targetstate
trigger1 = movehit
trigger1 = var(42)
trigger1 = numtarget(225)
persistent = 0
ignorehitpause = 1
id = 225
value = 260

[State 225, TIGER JUMP CANCEL]
type = changestate
triggerall = var(7)>0 && movecontact=[1,5]
trigger1 = AILevel<=0
trigger1 = command = "holdup" || command = "U"
value = 40
ctrl = 0

[State 225, Flag Recovery Frames]
type = statetypeset
trigger1 = animelemtime(6)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 225, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Attack
[Statedef 400]
type = C
movetype = A
physics = C
ctrl = 0
anim = 400+30*(var(7)>0)
sprpriority = 1
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(5*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 400, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 200,0
channel = 0

[State 400, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 0,0

[State 400, HitDef]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(5*ln(2)) + 0.5))&&(var(7)<=0),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(2)>=0 && animelemtime(3)<0
trigger1 = !movecontact && !movereversed
attr = C,NA
damage = ceil(20*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Light
guardflag = L
hitflag = MAF
priority = 4,Hit
pausetime = 8,8
sparkno = S8000+(random%2)
guard.sparkno = S8030
sparkxy = -10,-44
hitsound = s1,0
guardsound = s2,0
ground.type = Low
ground.slidetime = 13+1*(var(42))
ground.hittime = 13+1*(var(42))
air.hittime = 13+1*(var(42))
guard.slidetime = 11+2*(var(7)>0)
guard.hittime = 11+2*(var(7)>0)
ground.velocity = -4
air.type = Low
air.velocity = -4,-4.8
getpower = 40*(var(7)<=0),40*(var(7)<=0)
givepower = 20,20
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 400, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 400, TIGER JUMP CANCEL]
type = changestate
triggerall = var(7)>0 && movecontact=[1,5]
trigger1 = AILevel<=0
trigger1 = command = "holdup" || command = "U"
value = 40
ctrl = 0

[State 400, Flag Recovery Frames]
type = statetypeset
trigger1 = animelemtime(3)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 400, CS]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Attack
[Statedef 410]
type = C
movetype = A
physics = C
ctrl = 0
anim = 410+30*(var(7)>0)
sprpriority = 1
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(6*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 410, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 210,0
channel = 0

[State 410, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 0,1

[State 410, HitDef]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(6*ln(2)) + 0.5))&&(var(7)<=0),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(4)>=0 && animelemtime(5)<0
trigger1 = !movecontact && !movereversed
attr = C,NA
damage = ceil(50*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Medium
guardflag = L
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8010+(random%2)
guard.sparkno = S8030
sparkxy = -10,-20
hitsound = s1,1
guardsound = s2,0
ground.type = Low
ground.slidetime = 16+3*(var(42))
ground.hittime = 16+3*(var(42))
air.hittime = 16+3*(var(42))
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -4.4
air.type = Low
air.velocity = -4.4,-4.8
getpower = 60*(var(7)<=0),60*(var(7)<=0)
givepower = 30,30
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 410, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 410, TIGER JUMP CANCEL]
type = changestate
triggerall = var(7)>0 && movecontact=[1,5]
trigger1 = AILevel<=0
trigger1 = command = "holdup" || command = "U"
value = 40
ctrl = 0

[State 410, Flag Recovery Frames]
type = statetypeset
trigger1 = animelemtime(5)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 410, CS]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Heavy Attack
[Statedef 420]
type = C
movetype = A
physics = C
ctrl = 0
anim = 420+40*(var(7)>0)
sprpriority = 1
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(7*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 420, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 420,0
channel = 0

[State 420, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 0,2

[State 420, HitDef]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(7*ln(2)) + 0.5))&&(var(7)<=0),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(6)>=0 && animelemtime(7)<0
trigger1 = !movecontact && !movereversed
attr = C,NA
damage = ceil(60*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Heavy
guardflag = L
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,-6
hitsound = s1,2
guardsound = s2,0
ground.type = Low
ground.slidetime = 26+3*(var(42))
ground.hittime = 26+3*(var(42))
air.hittime = 26+3*(var(42))
guard.slidetime = 14+3*(var(7)>0)
guard.hittime = 14+3*(var(7)>0)
ground.velocity = -1.5,-5.2
guard.velocity = -6.8
air.type = Low
air.velocity = -1.5,-5
getpower = 90*(var(7)<=0),90*(var(7)<=0)
givepower = 45,45
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.75
fall = 1
fall.recover = 0
p2facing = 1
ID = 420

[State 420, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.75*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 420, TIGER JUMP CANCEL]
type = changestate
triggerall = var(7)>0 && movecontact=[1,5]
trigger1 = AILevel<=0
trigger1 = command = "holdup" || command = "U"
value = 40
ctrl = 0

[State 420, Flag Recovery Frames]
type = statetypeset
trigger1 = animelemtime(7)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 420, Custom Trip]
type = TargetState
triggerall = numtarget(420)
trigger1 = target,stateno!=[120,155]
trigger1 = movehit=1 && !movereversed
trigger1 = !target(420),ishelper
trigger1 = target(420),time=0 && target(420),movetype=H
value = 470
ID = 420
ignorehitpause = 1
persistent = 0

[State 420, CS]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Forward Heavy Attack
[Statedef 425]
type = C
movetype = A
physics = C
ctrl = 0
anim = 425+40*(var(7)>0)+0*floor(var(57):=0)
sprpriority = 1
juggle = 0
facep2 = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(8*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 425, VS]
type = velset
trigger1 = animelemtime(3)=0
x = 20

[State 425, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 425,0
channel = 0

[State 425, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(6)=0
value = 0,1

[State 425, Damage Set]
type = null
triggerall = time = 0
trigger1 = anim!=465
trigger1 = (var(11):=70)||1
trigger2 = anim=465
trigger2 = (var(11):=45)||1

[State 425, MHR]
type = movehitreset
trigger1 = anim = 465
trigger1 = animelemtime(6)=0

[State 425, HitDef]
type = HitDef
triggerall = ifelse((var(33)&floor(exp(8*ln(2)) + 0.5))&&(anim != 465),0,1)
triggerall = !movecontact && !movereversed
triggerall = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089])) || anim = 465
trigger1 = animelemtime(6)>=0 && animelemtime(7)<0
trigger2 = animelemtime(5)>=0 && animelemtime(6)<0
trigger2 = anim = 465
attr = C,NA
damage = ceil(var(11)*(fvar(11)/cond(var(57)=1,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),0 ;86
animtype = Heavy
guardflag = M
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = -10,-55
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 26+3*(var(42))
ground.hittime = 26+3*(var(42))
air.hittime = 26+3*(var(42))
guard.slidetime = 21
guard.hittime = 21
ground.velocity = -1.6,-10+6*(animelemtime(5)>=0 && animelemtime(6)<0)
guard.velocity = -8.0
air.type = High
air.velocity = -1.6,-10+6*(animelemtime(5)>=0 && animelemtime(6)<0)
getpower = 90-90*(anim = 465),90-90*(anim = 465)
givepower = 45-23*(anim = 465),45-23*(anim = 465)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 425

[State 220, First Combo Hit]
type = varset
triggerall = numtarget(425)
trigger1 = target(425),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 1;Change index
ignorehitpause = 1
persistent = 0

[State 425, Damage Dampen]
type = varset
trigger1 = anim != 465
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 425, Damage Dampen]
type = varset
trigger1 = anim = 465
trigger1 = movehit
trigger1 = animelemtime(5)>=0 && animelemtime(6)<1
fvar(10) = fvar(10)*0.895*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 425, Damage Dampen]
type = varset
trigger1 = anim = 465
trigger1 = movehit
trigger1 = animelemtime(6)>=1 && animelemtime(7)<1
fvar(10) = fvar(10)*0.895*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 425, TIGER JUMP CANCEL]
type = changestate
triggerall = var(7)>0 && movecontact=[1,5]
trigger1 = AILevel<=0
trigger1 = command = "holdup" || command = "U"
value = 40
ctrl = 0

[State 425, Flag Recovery Frames]
type = statetypeset
trigger1 = animelemtime(7)>=0
trigger2 = animelemtime(6)>=1 && animelemtime(7)<0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 425, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Light Attack
[Statedef 600]
type = A
movetype = A
physics = A
ctrl = 0
anim = 600
sprpriority = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(9*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 600, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 200,0
channel = 0

[State 600, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 0,0

[State 600, HitDef]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(9*ln(2)) + 0.5))&&(var(7)<=0),0,1)
trigger1 = p2stateno != 5040
trigger1 = animelemtime(2)>=0 && animelemtime(3)<0
trigger1 = !movecontact && !movereversed
attr = A,NA
damage = ceil(40*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Light
guardflag = HA
hitflag = MAF
priority = 4,Hit
pausetime = 8,8
sparkno = S8000+(random%2)
guard.sparkno = S8030
sparkxy = -10,-52
hitsound = s1,0
guardsound = s2,0
ground.type = High
ground.slidetime = 14+1*(var(42))
ground.hittime = 14+1*(var(42))
air.hittime = 14+1*(var(42))
guard.slidetime = 11
guard.hittime = 11
ground.velocity = -4
air.type = High
air.velocity = -4,-3
getpower = 40*(var(7)<=0),40*(var(7)<=0)
givepower = 20,20
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 600, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 600, Flag Recovery Frames]
type = statetypeset
trigger1 = animelemtime(3)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
; Aerial Medium Attack
[Statedef 610]
type = A
movetype = A
physics = A
ctrl = 0
anim = 610
sprpriority = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(0*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 610, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 210,0
channel = 0

[State 610, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 0,1

[State 610, HitDef]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(0*ln(2)) + 0.5))&&(var(7)<=0),0,1)
trigger1 = p2stateno != 5040
trigger1 = animelemtime(4)>=0 && animelemtime(5)<0
trigger1 = !movecontact && !movereversed
attr = A,NA
damage = ceil(60*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Medium
guardflag = HA
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8010+(random%2)
guard.sparkno = S8030
sparkxy = -20,-50
hitsound = s1,1
guardsound = s2,0
ground.type = High
ground.slidetime = 14+3*(var(42))
ground.hittime = 14+3*(var(42))
air.hittime = 14+3*(var(42))
guard.slidetime = 13
guard.hittime = 13
ground.velocity = -4.4
air.type = High
air.velocity = -4.4,-4.5
getpower = 60*(var(7)<=0),60*(var(7)<=0)
givepower = 30,30
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 610, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 610, Flag Recovery Frames]
type = statetypeset
trigger1 = animelemtime(5)>=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
; Divekick Attack
[Statedef 615]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 615+1*(var(10)=2)+2*(var(10)=3)
sprpriority = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(1*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 615, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 210,0
channel = 0

[State 615, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 0,1

[State 615, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 1500,1

[State 615, VS]
type = velset
trigger1 = animelemtime(7)=0
x = 1+4*(var(10)=2)+8*(var(10)=3)
y = 9.0

[State 615, FX]
type = Helper
trigger1 = animelemtime(8)=0
helpertype = normal
name = "Skittle"
stateno = 21300
id = 20615+1*(var(10)>=3)
ownpal = 1
pos = 23,-2
size.xscale = 0.1125
size.yscale = 0.1125
persistent = 0

[State 615, HitDef]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(1*ln(2)) + 0.5))&&(var(7)<=0),0,1)
trigger1 = p2stateno != 5040
trigger1 = animelemtime(8)>=0
trigger1 = !movecontact && !movereversed
attr = A,NA
damage = ceil(60*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Med
guardflag = HA
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = S8010+(random%2)
guard.sparkno = S8030
sparkxy = -10,-5
hitsound = s1,1
guardsound = s2,0
ground.type = High
ground.slidetime = 15+3*(var(42))
ground.hittime = 15+3*(var(42))
air.hittime = 20+3*(var(42))
guard.slidetime = 13
guard.hittime = 13
ground.velocity = -4.5
air.type = High
air.velocity = -4.5,-4.5
getpower = 80*(var(7)<=0),80*(var(7)<=0)
givepower = 40,40
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 615, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.8*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 615, Flag Recovery Frames]
type = statetypeset
trigger1 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 615, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -(vel y)
value = 616

;---------------------------------------------------------------------------
; Divekick Attack Land
[Statedef 616]
type = S
movetype = I
physics = S
ctrl = 0
anim = 618+30*(var(7)>0)
velset = 0,0
sprpriority = 1
movehitpersist=1

[State 616, PS]
type = posset
trigger1 = time = 0
y = 0

[State 616, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 40,0

[State 616, CS]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Back Medium Attack
[Statedef 617]
type = A
movetype = A
physics = N
ctrl = 0
anim = 630
sprpriority = 1
velset = (vel x)*0.2,(vel y)*0.2

[State 627, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 210,0
channel = 0

[State 617, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 217,10

[State 617, Projectile]
type = Helper
trigger1 = animelemtime(3)=0
helpertype = normal ;player
name = "CompletelyNotKrizalid"
ID = 20617
stateno = 20217
pos = 31,-43
postype = p1 ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.5
size.yscale = 0.5

[State 617, STS]
type = statetypeset
trigger1 = animelemtime(3)=3
movetype = I
ignorehitpause = 1
persistent = 0

[State 617, VS]
type = changeanim
trigger1 = animelemtime(9)<0
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 217
elem = animelemno(0)

[State 617, PS]
type = posset
trigger1 = anim = 217
y = 0
persistent = 0

[State 617, VS]
type = velset
trigger1 = anim = 217
x = 0.0
y = 0.0
persistent = 0

[State 617, STS]
type = statetypeset
trigger1 = anim != 217
trigger1 = animelemtime(9)=0
physics = A

[State 617, CS]
type = ChangeState
trigger1 = anim = 217
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Heavy Attack
[Statedef 620]
type = A
movetype = A
physics = A
ctrl = 0
anim = 620+0*floor(var(24):=0)+0*floor(var(57):=0)
sprpriority = 1
juggle = 0

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(2*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 620, Spike Ball]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "ball"
ID = 20620
stateno = 20620
pos = 0,0
postype = p1
facing = 1
ownpal = 1

[State 620, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 200,0
channel = 0

[State 620, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(8)=0
value = 210,0
channel = 0

[State 620, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4)=0
trigger2 = animelemtime(8)=0
value = 620,0

[State 620, HitDef]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(2*ln(2)) + 0.5))&&(var(7)<=0),0,1) || var(24)
trigger1 = p2stateno != 5040
trigger1 = animelemtime(5)>=0 && animelemtime(6)<0
trigger1 = !movecontact && !movereversed
attr = A,NA
damage = ceil(40*(fvar(11)/cond(var(57)=2,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),0
animtype = Heavy
air.animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 4,Hit
pausetime = 8,10
sparkno = S8020+(random%2)
guard.sparkno = S8030
sparkxy = 25,-50
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 14+3*(var(42))
ground.hittime = 14+3*(var(42))
air.hittime = 20+3*(var(42))
guard.slidetime = 17
guard.hittime = 17
ground.velocity = -6
guard.velocity = -6.0
air.type = High
air.velocity = -6,-7.5
airguard.velocity = -3,-3
getpower = 45*(var(7)<=0),45*(var(7)<=0)
givepower = 22,22
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 620, 2nd Hit]
type = movehitreset
trigger1 = animelemtime(8)=0

[State 620, HitDef]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(2*ln(2)) + 0.5))&&(var(7)<=0),0,1) || var(24)
trigger1 = p2stateno != 5040
trigger1 = animelemtime(8)>=0 && animelemtime(10)<0
trigger1 = !movecontact && !movereversed
attr = A,NA
damage = ceil(40*(fvar(11)/cond(var(57)=2,(fvar(30)),1))*ifelse(var(42),1.25,1.0)),0
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 4,Hit
pausetime = 10,10
sparkno = s8020+(random%2)
guard.sparkno = s8030
sparkxy = -10,-55
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 14+3*(var(42))
ground.hittime = 14+3*(var(42))
air.hittime = 20+3*(var(42))
guard.slidetime = 17
guard.hittime = 17
ground.velocity = -6.0
guard.velocity = -6.0
air.type = High
air.velocity = -6.0,-6.5
getpower = 45*(var(7)<=0),45*(var(7)<=0)
givepower = 22,22
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State 220, First Combo Hit]
type = varset
triggerall = movehit
triggerall = numtarget(555)
trigger1 = target(555),gethitvar(hitcount)=1
trigger1 = var(57)=0
var(57) = 2;Change index
ignorehitpause = 1
persistent = 0

[State 620, Multihit]
type = varset
trigger1 = movecontact
var(24) = 1
ignorehitpause = 1
persistent = 0

[State 620, Damage Dampen]
type = varset
trigger1 = animelemtime(5)>=0 && animelemtime(6)<1
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 620, Damage Dampen]
type = varset
trigger1 = animelemtime(8)>=0 && animelemtime(10)<1
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 620, Flag Recovery Frames]
type = statetypeset
trigger1 = animelemtime(10)>=0
trigger2 = animelemtime(8)>=0 && animelemtime(10)<0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
; Aerial Heavy FX
[Statedef 20620]
type = A
movetype = A
physics = N
juggle = 0
anim = 20620
velset = 0,0
sprpriority = 5

[State 20620, CA]
type = changeanim
trigger1 = root,hitpausetime
value = 20620
elem = animelemno(-1)

[State 20620, Noshadow]
type = assertspecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 20620, Bind]
type = bindtoparent
trigger1 = 1
facing = 1
pos = 10,-60

[State 20620, NHB]
type = nothitby
trigger1 = 1
value = SCA

[State 20620, Trans]
type = trans
trigger1 = 1
trans = add

[State 20620, AD]
type = angledraw
trigger1 = 1
scale = 0.7,0.7

[State 20620, Zeeky]
type = destroyself
trigger1 = parent,stateno != 620
trigger2 = animtime = 0

;---------------------------------------------------------------------------
; Throw
[Statedef 800]
type = S
movetype = A
physics = S
ctrl = 0
anim = 800
sprpriority = 1

[State 800, CS]
type = changestate
trigger1 = numtarget(800)
trigger1 = movehit
value = 810
ignorehitpause = 1
persistent = 0

[State 800, Tech Reset]
type = varset
trigger1 = 1
var(14) = 0

[State 800, Tech Set]
type = varset
trigger1 = numenemy
trigger1 = enemynear(0),statetype != A
trigger1 = enemynear(0),stateno = [0,999]
trigger1 = enemynear(0),stateno != [200,799]
trigger1 = enemynear(0),stateno != [100,119]
var(14) = 15

[State 800, VS]
type = varset
trigger1 = AILevel <= 0
trigger1 = animelemtime(2)=0
var(10)=ifelse(command="holdback",1,0)

[State 800, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 210,0
channel = 0

[State 800, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 0,1

[State 800, IDDQD]
type = HitDef
trigger1 = animelemtime(2)>=0 && animelemtime(3)<0
trigger1 = var(30)=0 ;Throw Limited
attr = S,NT
hitflag = M-
guardflag = 
fall.animtype = Diagup
priority = 7,Miss
damage = 0,0
pausetime = 0,0
sparkno = -1
hitsound = -1
yaccel = 0.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p1facing = 1
p2facing = 1
id = 800
numhits = 0

[State 800, Flag Recovery Frames]
type = statetypeset
trigger1 = animelemtime(3)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 800, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 800, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Throw - Part 2
[Statedef 810]
type = S
movetype = A
physics = S
ctrl = 0
anim = 810+1*(var(10)=1)
velset = 0,0
sprpriority = 1

[State 810, PlaySnd]
type = playsnd
trigger1 = time = 0
value = 1,0

[State 810, Tech Success]
type = ChangeState
triggerall = numtarget
triggerall = var(14)>0
trigger1 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger1 = (target,AILevel=0)&&(target,command = "x" || target,command = "y" || target,command = "z")
trigger2 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger2 = (target,AILevel=0)&&(target,command = "a" || target,command = "b" || target,command = "c")
trigger3 = (target,AILevel>0)&&(random<=floor(100*AIlevel*AIlevel/64.0))
trigger4 = (target,name="Training")&&(target,var(16)=1)
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(14)>0
var(14) = -1

[State 810, TS]
type = targetstate
trigger1 = time = 0
value = 850

[State 810, T]
type = turn
trigger1 = animelemtime(5)=0
trigger1 = var(10)=1

[State 810, TF]
type = targetfacing
trigger1 = time = 0
trigger2 = animelemtime(3)=0
trigger2 = var(10)=1
value = -1+2*(animelemtime(3)=0)
id = 800

[State 810, PP]
type = playerpush
trigger1 = 1
value = 0

[State 810, Bind]
type = TargetBind
trigger1 = time = 0
pos = 36,0

[State 810, Bind]
type = TargetBind
trigger1 = animelemtime(2)=0
trigger1 = var(10)=1
pos = 10,0

[State 810, Bind]
type = TargetBind
trigger1 = animelemtime(3)=0
trigger1 = var(10)=1
pos = -10,0

[State 810, Bind]
type = TargetBind
trigger1 = animelemtime(4)=0
trigger1 = var(10)=1
pos = -36,0

[State 810, PlaySnd]
type = playsnd
trigger1 = animelemtime(2)=0
value = 1000,0
channel = 0

[State 810, Explod]
type = Explod
trigger1 = animelemtime(7)=0
anim = 20800
ID = 20800
pos = 47,-42
postype = p1 ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
scale = 0.7,0.7
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 810, PlaySnd]
type = playsnd
trigger1 = animelemtime(7)=0
value = 800,10

[State 810, PlaySnd]
type = playsnd
trigger1 = animelemtime(7)=0
value = 1,2
channel = 2

[State 810, TLA]
type = targetlifeadd
trigger1 = animelemtime(7)=0
id = 800
value = -ceil(80*fvar(10))

[State 810, TPA]
type = targetpoweradd
trigger1 = animelemtime(7)=0
id = 800
value = 40

[State 810, PA]
type = poweradd
trigger1 = var(7)<=0
trigger1 = animelemtime(7)=0
value = 80

[State 810, Hitspark]
type = explod
trigger1 = animelemtime(7)=0
id = 8000
removetime = 15
scale = 1.0,1.0
anim = 8010+(random%2)
pos = 48,-42
postype = p1
ownpal = 1
sprpriority = 5

[State 810, TS]
type = targetstate
trigger1 = animelemtime(7)=0
value = 851

[State 810, IKEMEN Safeguard] ;I Really didn't want to implement this but the alternative would be much messier
type = ChangeState
trigger1 = !numtarget(800)
trigger1 = animelemtime(7)<=0
value = 891

[State 810, Prorate]
type = varset
trigger1 = animelemtime(7)=0
trigger1 = (var(4):=1)||1;Set proration flag
fvar(10) = fvar(10)*0.9

[State 810, CS]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Throw Tech Success
[StateDef 890]
type = S
physics = N
movetype = A
anim = 5945
ctrl = 0
velset = 0,0
sprPriority = 1

[State 890, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 890,0
channel = 0

[State 890, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1,9

[State 890, PA]
type = PosAdd
trigger1 = time = 0
x = 24

[State 890, PS]
type = PosSet
trigger1 = time = 0
y = 0

[State 890, TB]
type = TargetBind
trigger1 = time = 0
trigger1 = numtarget
pos = 0,0

[State 890, TS]
type = TargetState
trigger1 = time = 0
trigger1 = numtarget
value = 895

[State 890, TF]
type = TargetFacing
trigger1 = time = 0
trigger1 = numtarget
value = -1

[State 890, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890, PP]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
persistent = 4
anim = 8020
ID = 8000
pos = 0,-70
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0
pausemovetime = 999999
supermovetime = 999999

[State 890, VS]
type = VelSet
trigger1 = time = 0
x = -8
y = 0

[State 890, VA]
type = veladd
trigger1 = time >= 0
trigger1 = vel x < 0
x = 0.5

[State 890, PA]
type = posadd
triggerall = numtarget
trigger1 = target,frontedgebodydist <= abs(target,vel x + target,const(size.ground.front))
trigger1 = target,vel x > 0.0
trigger2 = target,backedgebodydist <= abs(target,vel x - target,const(size.ground.back))
trigger2 = target,vel x < 0.0
x = cond((target,pos x - pos x)*facing > 0,-abs(target,vel x),abs(target,vel x))

[State 890, CS]
type = ChangeState
trigger1 = time >= 27
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Throw Escape Failsafe
[StateDef 891]
type = U
physics = N
movetype = A
anim = 5945
ctrl = 0
velset = 0,0
sprPriority = 1

[State 891, STS]
type = statetypeset
trigger1 = time = 0
trigger1 = statetype != A
statetype = S
ignorehitpause = 1

[State 890, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 890,0
channel = 0

[State 890, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 890,10

[State 890, PA]
type = PosAdd
trigger1 = time = 0
x = 24

[State 890, PS]
type = PosSet
trigger1 = time = 0
y = 0

[State 890, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890, PP]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
persistent = 4
anim = 8020
ID = 8000
pos = 0,-70
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0
pausemovetime = 999999
supermovetime = 999999

[State 890, CS]
type = ChangeState
trigger1 = time >= 27
value = cond(statetype!=A,0,50)
ctrl = cond(statetype!=A,1,0)

;---------------------------------------------------------------------------
; Target Throw Escape
[StateDef 895]
type = S
physics = N
movetype = H
ctrl = 0
velSet = 0,0
sprPriority = 0

[State 895, PS]
type = PosSet
trigger1 = time = 0
y = 0

[State 895, CA]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(selfanimexist(5940),5940,130)

[State 895, CA]
type = ChangeAnim
trigger1 = time = 0
trigger1 = !selfanimexist(5945)
trigger1 = selfanimexist(5940)
value = 5940

[State 895, CA]
type = ChangeAnim
trigger1 = time = 0
trigger1 = !selfanimexist(5945)
trigger1 = !selfanimexist(5940)
trigger1 = selfanimexist(5910)
value = 5910

[State 895, CA]
type = ChangeAnim
trigger1 = time >= 20
trigger1 = anim = 130
value = 140

[State 895, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 895, PP]
type = PlayerPush
trigger1 = 1
value = 0

[State 890, VS]
type = VelSet
trigger1 = time = 0
x = -8
y = 0

[State 890, VA]
type = VelAdd
trigger1 = time >= 0
trigger1 = vel x < 0
x = 0.5

[State 895, CS]
type = SelfState
trigger1 = time >= 27
value = 0
ctrl = 1