;---------------------------------------------------------------------------
; Standing Light Attack
[Statedef 200]
type = S
movetype = A
physics = S
ctrl = 0
anim = 200
sprpriority = 1
juggle = 0
facep2 = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
triggerall = !ishelper
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(0*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 200,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 0,0

[State 200, DamageSet]
type = null
trigger1 = var(53)<=1
trigger1 = (var(12):=20)||1
trigger2 = var(53)=2
trigger2 = (var(12):=20)||1
trigger3 = var(53)=3
trigger3 = (var(12):=22)||1
trigger4 = var(53)>=4
trigger4 = (var(12):=26)||1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(0*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(4)>=0 && animelemtime(5)<0
trigger1 = !movecontact && !movereversed
attr = S,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 8,8                 ;Time attacker pauses, time opponent shakes
sparkno = S8000+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-55
hitsound = s1,0                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+1*(var(42))             ;Time that the opponent slides back
ground.hittime = 13+1*(var(42))             ;Time opponent is in hit state
air.hittime = 13+1*(var(42))             ;Time opponent is in hit state
guard.slidetime = 10
guard.hittime = 10
ground.velocity = -4.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.0,-2.5           ;(X,Y)-velocity at which opponent is pushed
getpower = 40,40
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

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = animelemtime(5)=0
trigger1 = !movecontact
trigger1 = var(50)>0
var(50) = -30

[State -2, Spirit Gauge Increase]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
var(50) = 30
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.95*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
trigger1 = ishelper
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.95*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = animelemtime(5)=0
trigger2 = movecontact||movereversed
trigger3 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(5)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 240, 4]
type = ChangeState
triggerall = !ishelper
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
anim = 210+1*(var(53)=2)+2*(var(53)>=3)
sprpriority = 1
juggle = 0
facep2 = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
triggerall = !ishelper
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(1*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 210, PA];Compensation for sprite alignment
type = posadd
trigger1 = animelemtime(5)=0
x = 12

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 210,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(7)=0
value = 0,1

[State 200, DamageSet]
type = null
trigger1 = var(53)<=1
trigger1 = (var(12):=41)||1
trigger2 = var(53)=2
trigger2 = (var(12):=41)||1
trigger3 = var(53)=3
trigger3 = (var(12):=45)||1
trigger4 = var(53)>=4
trigger4 = (var(12):=50)||1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(1*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(7)>=0 && animelemtime(8)<0
trigger1 = !movecontact && !movereversed
attr = S,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8015+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-46
hitsound = s1,10                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 16+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 16+3*(var(42))             ;Time opponent is in hit state
air.hittime = 16+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 13
guard.hittime = 13
ground.velocity = -4.5             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.5,-4.0           ;(X,Y)-velocity at which opponent is pushed
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

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = animelemtime(8)=0
trigger1 = !movecontact
trigger1 = var(50)>0
var(50) = -45

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
var(50) = 45
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.9*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
trigger1 = ishelper
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.9*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = animelemtime(8)=0
trigger2 = movecontact||movereversed
trigger3 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(8)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 240, 4]
type = ChangeState
triggerall = !ishelper
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
anim = 215+1*(var(53)=2)+2*(var(53)>=3)
sprpriority = 1
juggle = 0
facep2 = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
triggerall = !ishelper
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(2*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 210, PA];Compensation for sprite alignment
type = posadd
trigger1 = animelemtime(2)=0
x = 8
[State 210, PA];Compensation for sprite alignment
type = posadd
trigger1 = animelemtime(3)=0
x = 8
[State 210, PA];Compensation for sprite alignment
type = posadd
trigger1 = animelemtime(4)=0
x = 12

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 210,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 0,1

[State 200, DamageSet]
type = null
trigger1 = var(53)<=1
trigger1 = (var(12):=55)||1
trigger2 = var(53)=2
trigger2 = (var(12):=55)||1
trigger3 = var(53)=3
trigger3 = (var(12):=60)||1
trigger4 = var(53)>=4
trigger4 = (var(12):=65)||1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(2*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(6)>=0 && animelemtime(7)<0
trigger1 = !movecontact && !movereversed
attr = S,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = H                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8015+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-46
hitsound = s1,3                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 16+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 16+3*(var(42))             ;Time opponent is in hit state
air.hittime = 16+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 13
guard.hittime = 13
ground.velocity = -7.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -7.0,-4.0           ;(X,Y)-velocity at which opponent is pushed
getpower = 80,80
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

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = animelemtime(7)=0
trigger1 = !movecontact
trigger1 = var(50)>0
var(50) = -45

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
var(50) = 45
ignorehitpause = 1
persistent = 0

[State -2, DMG]
type = varset
trigger1 = movehit=1
trigger1 = var(50)>0
var(49) = ceil(30.0*0.5*fvar(11))

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.8*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
trigger1 = ishelper
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.8*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = animelemtime(7)=0
trigger2 = movecontact||movereversed
trigger3 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(7)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 240, 4]
type = ChangeState
triggerall = !ishelper
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Heavy Attack
[Statedef 220]
type = S
movetype = A
physics = S
ctrl = 0
anim = 220+1*(var(53)=2)+2*(var(53)>=3)
sprpriority = 1
juggle = 0
facep2 = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
triggerall = !ishelper
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(3*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 220,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(8)=0
value = 0,1

[State 200, DamageSet]
type = null
trigger1 = var(53)<=1
trigger1 = (var(12):=57)||1
trigger2 = var(53)=2
trigger2 = (var(12):=57)||1
trigger3 = var(53)=3
trigger3 = (var(12):=62)||1
trigger4 = var(53)>=4
trigger4 = (var(12):=67)||1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(3*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(9)>=0 && animelemtime(10)<0
trigger1 = !movecontact && !movereversed
attr = S,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = L                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8025+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -20,-45
hitsound = s1,12                 ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = Low               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 18+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 18+3*(var(42))             ;Time opponent is in hit state
air.hittime = 18+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -4.0             ;Velocity at which opponent is pushed
air.type = Low                 ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4.0,-6.0           ;(X,Y)-velocity at which opponent is pushed
getpower = 90,90
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

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.8*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
trigger1 = ishelper
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.8*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = animelemtime(10)=0
trigger1 = !movecontact
trigger1 = var(50)>0
var(50) = -65

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
var(50) = 65
ignorehitpause = 1
persistent = 0

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = animelemtime(10)=0
trigger2 = movecontact||movereversed
trigger3 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(10)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 240, 4]
type = ChangeState
triggerall = !ishelper
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Forward Heavy Attack
[Statedef 225]
type = S
movetype = A
physics = S
ctrl = 0
anim = 225+1*(var(53)=2)+2*(var(53)>=3)
sprpriority = 1
juggle = 0
facep2 = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
triggerall = !ishelper
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(4*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 225, PS]
type = posadd
trigger1 = animelemtime(5)=0
x = 10

[State 225, PS]
type = posadd
trigger1 = animelemtime(6)=0
x = 22

[State 225, PS]
type = velset
trigger1 = animelemtime(6)=0
x = 7.0

[State 225, PSND]
type = playsnd
trigger1 = animelemtime(7)=0
value = 0,1

[State 200, DamageSet]
type = null
trigger1 = var(53)<=1
trigger1 = (var(12):=65)||1
trigger2 = var(53)=2
trigger2 = (var(12):=65)||1
trigger3 = var(53)=3
trigger3 = (var(12):=70)||1
trigger4 = var(53)>=4
trigger4 = (var(12):=75)||1
;damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),0

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(4*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(7)>=0 && animelemtime(8)<0
trigger1 = !movecontact && !movereversed
attr = S,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8025+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -20,-37
hitsound = s1,12                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 24+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 24+3*(var(42))             ;Time opponent is in hit state
air.hittime = 24+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 19
guard.hittime = 19
ground.velocity = -9.5             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -9.5,-4.0           ;(X,Y)-velocity at which opponent is pushed
getpower = 90,90
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

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = animelemtime(8)=0
trigger1 = !movecontact
trigger1 = var(50)>0
var(50) = -65

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
var(50) = 65
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.8*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
trigger1 = ishelper
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.8*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = animelemtime(8)=0
trigger2 = movecontact||movereversed
trigger3 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(8)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 226, CS]
type = changestate
triggerall = !ishelper
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
anim = 400
sprpriority = 1
juggle = 0
facep2 = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
triggerall = !ishelper
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(5*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 200,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 0,0

[State 200, DamageSet]
type = null
trigger1 = var(53)<=1
trigger1 = (var(12):=18)||1
trigger2 = var(53)=2
trigger2 = (var(12):=20)||1
trigger3 = var(53)=3
trigger3 = (var(12):=23)||1
trigger4 = var(53)>=4
trigger4 = (var(12):=25)||1
;damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),0

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(5*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(3)>=0 && animelemtime(4)<0
trigger1 = !movecontact && !movereversed
attr = C,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = L                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 8,8                 ;Time attacker pauses, time opponent shakes
sparkno = S8000+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-5
hitsound = s1,0                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = Low               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+1*(var(42))             ;Time that the opponent slides back
ground.hittime = 13+1*(var(42))             ;Time opponent is in hit state
air.hittime = 13+1*(var(42))             ;Time opponent is in hit state
guard.slidetime = 10
guard.hittime = 10
ground.velocity = -3.2             ;Velocity at which opponent is pushed
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -3.2,-5.0           ;(X,Y)-velocity at which opponent is pushed
getpower = 40,40
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

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = animelemtime(4)=0
trigger1 = !movecontact
trigger1 = var(50)>0
var(50) = -30

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
var(50) = 30
ignorehitpause = 1
persistent = 0

[State -2, DMG]
type = varset
trigger1 = movehit=1
trigger1 = var(50)>0
var(49) = ceil(25.0*0.5*fvar(11))
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.92*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
trigger1 = ishelper
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.92*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = animelemtime(4)=0
trigger2 = movecontact||movereversed
trigger3 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(4)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 240, 4]
type = ChangeState
triggerall = !ishelper
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
anim = 410
sprpriority = 1
juggle = 0
facep2 = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
triggerall = !ishelper
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(6*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 210,0
channel = 0

[State 410, PA]
type = posadd
trigger1 = animelemtime(3)=0
x = 8

[State 410, PA]
type = posadd
trigger1 = animelemtime(3)=0
trigger2 = animelemtime(3)=1
x = 2

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 0,1
channel = 1

[State 200, DamageSet]
type = null
trigger1 = var(53)<=1
trigger1 = (var(12):=35)||1
trigger2 = var(53)=2
trigger2 = (var(12):=35)||1
trigger3 = var(53)=3
trigger3 = (var(12):=40)||1
trigger4 = var(53)>=4
trigger4 = (var(12):=45)||1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(6*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(3)>=0 && animelemtime(4)<0
trigger1 = !movecontact && !movereversed
attr = C,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = L                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8015+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -15,-55
hitsound = s1,1                 ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = Low               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 13+3*(var(42))             ;Time opponent is in hit state
air.hittime = 13+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 9
guard.hittime = 9
ground.velocity = -3.2             ;Velocity at which opponent is pushed
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -3.2,-5.0           ;(X,Y)-velocity at which opponent is pushed
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

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = animelemtime(4)=0
trigger1 = !movecontact
trigger1 = var(50)>0
var(50) = -45

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
var(50) = 45
ignorehitpause = 1
persistent = 0

[State -2, DMG]
type = varset
trigger1 = movehit=1
trigger1 = var(50)>0
var(49) = ceil(50.0*0.5*fvar(11))
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
trigger1 = ishelper
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.85*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = animelemtime(4)=0
trigger2 = movecontact||movereversed
trigger3 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(4)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 240, 4]
type = ChangeState
triggerall = !ishelper
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
anim = 420
sprpriority = 1
juggle = 0
facep2 = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
triggerall = !ishelper
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(7*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 0,1

[State 420, PA]
type = posadd
trigger1 = animelemtime(1)=0
x = 12

[State 420, PA]
type = posadd
trigger1 = animelemtime(2)=0
x = 10

[State 200, DamageSet]
type = null
trigger1 = var(53)<=1
trigger1 = (var(12):=60)||1
trigger2 = var(53)=2
trigger2 = (var(12):=60)||1
trigger3 = var(53)=3
trigger3 = (var(12):=65)||1
trigger4 = var(53)>=4
trigger4 = (var(12):=70)||1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(7*ln(2)) + 0.5)),0,1)
trigger1 = ((p2stateno != [5020,5040]) && (p2stateno != [5085,5089]))
trigger1 = animelemtime(4)>=0 && animelemtime(5)<0
trigger1 = !movecontact && !movereversed
attr = C,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = L                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8025+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-10
hitsound = s1,3                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = Low               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 25+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 25+3*(var(42))             ;Time opponent is in hit state
air.hittime = 25+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 17
guard.hittime = 17
ground.velocity = -3.0,-6.5             ;Velocity at which opponent is pushed
guard.velocity = -7.5
air.type = Low                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -3.0,-6.5           ;(X,Y)-velocity at which opponent is pushed
getpower = 90,90
givepower = 45,45
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.75
fall = 1
fall.recover = 0
p2facing = 1
ID = 420

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = animelemtime(5)=0
trigger1 = !movecontact
trigger1 = var(50)>0
var(50) = -65

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
var(50) = 65
ignorehitpause = 1
persistent = 0

[State -2, DMG]
type = varset
trigger1 = movehit=1
trigger1 = var(50)>0
var(49) = ceil(70.0*0.5*fvar(11))
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.75*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
trigger1 = ishelper
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.75*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(5)=0
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

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = animelemtime(5)=0
trigger2 = movecontact||movereversed
trigger3 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State 240, 4]
type = ChangeState
triggerall = !ishelper
trigger1 = animtime = 0
value = 11
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

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, Helper Physics]
type = statetypeset
trigger1 = ishelper
physics = N
ignorehitpause = 1
[State 0, Helper Physics]
type = velset
trigger1 = ishelper
trigger1 = time = 0
x = root,vel x
y = root,vel y
[State 0, Helper Physics]
type = veladd
trigger1 = ishelper
trigger1 = time
y = 0.5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
triggerall = !ishelper
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(8*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(3)=0
value = 200,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 0,0

[State 200, DamageSet]
type = null
trigger1 = var(53)<=1
trigger1 = (var(12):=36)||1
trigger2 = var(53)=2
trigger2 = (var(12):=36)||1
trigger3 = var(53)=3
trigger3 = (var(12):=38)||1
trigger4 = var(53)>=4
trigger4 = (var(12):=42)||1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(8*ln(2)) + 0.5)),0,1)
trigger1 = p2stateno != 5040
trigger1 = animelemtime(4)>=0 && animelemtime(7)<0
trigger1 = !movecontact && !movereversed
attr = A,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 8,8                 ;Time attacker pauses, time opponent shakes
sparkno = S8000+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -10,-30
hitsound = s1,0                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+1*(var(42))             ;Time that the opponent slides back
ground.hittime = 13+1*(var(42))             ;Time opponent is in hit state
air.hittime = 13+1*(var(42))             ;Time opponent is in hit state
guard.slidetime = 10
guard.hittime = 10
ground.velocity = -3.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -3.0,-5.0           ;(X,Y)-velocity at which opponent is pushed
getpower = 40,40
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

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = animelemtime(7)=0
trigger1 = !movecontact
trigger1 = var(50)>0
var(50) = -30
persistent = 0

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
var(50) = 30
ignorehitpause = 1
persistent = 0

[State -2, DMG]
type = varset
trigger1 = movehit=1
trigger1 = var(50)>0
var(49) = ceil(40.0*0.5*fvar(11))
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.9*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
trigger1 = ishelper
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.9*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = animelemtime(7)=0
trigger2 = movecontact||movereversed
trigger3 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(7)=0
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

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, Helper Physics]
type = statetypeset
trigger1 = ishelper
physics = N
ignorehitpause = 1
[State 0, Helper Physics]
type = velset
trigger1 = ishelper
trigger1 = time = 0
x = root,vel x
y = root,vel y
[State 0, Helper Physics]
type = veladd
trigger1 = ishelper
trigger1 = time
y = 0.5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
triggerall = !ishelper
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(33) = var(33) | floor(exp(9*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 210,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 0,1

[State 200, DamageSet]
type = null
trigger1 = var(53)<=1
trigger1 = (var(12):=41)||1
trigger2 = var(53)=2
trigger2 = (var(12):=41)||1
trigger3 = var(53)=3
trigger3 = (var(12):=46)||1
trigger4 = var(53)>=4
trigger4 = (var(12):=51)||1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(33)&floor(exp(9*ln(2)) + 0.5)),0,1)
trigger1 = p2stateno != 5040
trigger1 = animelemtime(5)>=0 && animelemtime(6)<0
trigger1 = !movecontact && !movereversed
attr = A,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                 ;Time attacker pauses, time opponent shakes
sparkno = S8010+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -15,-33
hitsound = s1,2                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 13+3*(var(42))             ;Time opponent is in hit state
air.hittime = 13+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 14
guard.hittime = 14
ground.velocity = -5.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -5.0,-6.0           ;(X,Y)-velocity at which opponent is pushed
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

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = animelemtime(6)=0
trigger1 = !movecontact
trigger1 = var(50)>0
var(50) = -45
persistent = 0

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
var(50) = 45
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.85*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
trigger1 = ishelper
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.85*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = animelemtime(6)=0
trigger2 = movecontact||movereversed
trigger3 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(6)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
; Aerial Heavy Attack
[Statedef 620]
type = A
movetype = A
physics = A
ctrl = 0
anim = 620+1*(var(53)=2)+2*(var(53)>=3)
sprpriority = 1
juggle = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, Helper Physics]
type = statetypeset
trigger1 = ishelper
physics = N
ignorehitpause = 1
[State 0, Helper Physics]
type = velset
trigger1 = ishelper
trigger1 = time = 0
x = root,vel x
y = root,vel y
[State 0, Helper Physics]
type = veladd
trigger1 = ishelper
trigger1 = time
y = 0.5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
triggerall = !ishelper
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(0*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 220,0
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 0,1

[State 200, DamageSet]
type = null
trigger1 = var(53)<=1
trigger1 = (var(12):=50)||1
trigger2 = var(53)=2
trigger2 = (var(12):=55)||1
trigger3 = var(53)=3
trigger3 = (var(12):=60)||1
trigger4 = var(53)>=4
trigger4 = (var(12):=70)||1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(0*ln(2)) + 0.5)),0,1)
trigger1 = p2stateno != 5040
trigger1 = animelemtime(5)>=0 && animelemtime(7)<0
trigger1 = !movecontact && !movereversed
attr = A,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Heavy                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                ;Time attacker pauses, time opponent shakes
sparkno = S8025+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -15,ceil(p2dist y+enemynear,const(size.mid.pos.y))
hitsound = s1,6                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 13+3*(var(42))             ;Time opponent is in hit state
air.hittime = 13+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 18
guard.hittime = 18
ground.velocity = -2.0             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.0,-8.0           ;(X,Y)-velocity at which opponent is pushed
getpower = 90,90
givepower = 45,45
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
ID = 555

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = animelemtime(7)=0
trigger1 = !movecontact
trigger1 = var(50)>0
var(50) = -65
persistent = 0

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
var(50) = 65
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*0.8*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
trigger1 = ishelper
trigger1 = movehit
fvar(10) = (root,fvar(10))*0.8*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = animelemtime(7)=0
trigger2 = movecontact||movereversed
trigger3 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(7)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
; Aerial Down Heavy Attack
[Statedef 625]
type = A
movetype = A
physics = N
ctrl = 0
anim = 625+1*(var(53)=2)+2*(var(53)>=3)
sprpriority = 1
velset = 0,0
juggle = 0

[State 625, Myon Groundbounce flag]
type = varset
trigger1 = time = 0
trigger1 = ishelper
trigger1 = root,var(15)=1
var(15) = 1
persistent = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State 625, Version Store]
type = varset
trigger1 = time = 0
var(10) = cond(var(53)>=3,3,cond(var(53)=2,2,1))

[State Give 'em a lil' 40, taken from The_None]
type = VarSet
triggerall = !ishelper
trigger1 = var(31) = [1,2]
trigger1 = numtarget
trigger1 = (target,statetype = A) || (target,statetype = L)
var(34) = var(34) | floor(exp(1*ln(2)) + 0.5) ;Flag the move if the move has hit in a juggle way.
ignorehitpause = 1
persistent = 0

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = 220,0
channel = 0

[State 625, VS]
type = velset
trigger1 = animelemtime(1)=0
x = 2.5
y = -2.5

[State 625, VS]
type = velset
trigger1 = animelemtime(5)=0
x = 0
y = 15

[State 240, 1]
type = PlaySnd
trigger1 = animelemtime(5)=0
value = 1300,10

[State 0, Explod]
type = Explod
triggerall = !ishelper
trigger1 = animelemtime(5)=0
anim = 20625
ID = 20625
pos = 44,-70
postype = p1 ;p2,front,back,left,right
facing = 1
bindtime = -1
vel = 0,0
removetime = -1
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 200, DamageSet]
type = null
trigger1 = var(53)<=1
trigger1 = (var(12):=65)||1
trigger2 = var(53)=2
trigger2 = (var(12):=65)||1
trigger3 = var(53)=3
trigger3 = (var(12):=70)||1
trigger4 = var(53)>=4
trigger4 = (var(12):=75)||1

[State 200, 1]
type = HitDef
trigger1 = ifelse((var(34)&floor(exp(1*ln(2)) + 0.5)),0,1)
trigger1 = p2stateno != 5040
trigger1 = animelemtime(5)>=0
trigger1 = !movecontact && !movereversed
attr = A,NA                     ;Attribute: Standing, Normal Attack
damage = ceil(var(12)*fvar(11)*ifelse(var(42),1.25,1.0)),0
animtype = Heavy                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 4,Hit
pausetime = 10,10                ;Time attacker pauses, time opponent shakes
sparkno = S8025+(random%2)                      ;Spark anim no (Def: set above)
guard.sparkno = S8030
sparkxy = -20,-5
hitsound = s1,3                  ;Sound to play on hit
guardsound = s2,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 13+3*(var(42))             ;Time that the opponent slides back
ground.hittime = 13+3*(var(42))             ;Time opponent is in hit state
air.hittime = 13+3*(var(42))             ;Time opponent is in hit state
guard.slidetime = 18
guard.hittime = 18
ground.velocity = -2.0,-2.5+2.5*(((var(42)>0)&&(var(53)>=2))||(var(53)>=3))             ;Velocity at which opponent is pushed
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.0,-2.5+9.5*(((var(42)>0)&&(var(53)>=2))||(var(53)>=3))           ;(X,Y)-velocity at which opponent is pushed
getpower = 90,90
givepower = 45,45
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 1-1*(((var(42)>0)&&(var(53)>=2))||(var(53)>=3))
fall.recovertime = 120+99999*(((var(42)>0)&&(var(53)>=2))||(var(53)>=3))
p2facing = 1
ID = 625

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = movehit
trigger1 = var(50)<1000
var(50) = 65
ignorehitpause = 1
persistent = 0

[State 200, Damage Dampen]
type = varset
trigger1 = movehit
fvar(10) = fvar(10)*cond((((var(42)>0)&&(var(53)>=2))||(var(53)>=3)),0.72,0.8)*cond(fvar(10)>=1.0,(fvar(30)),1.0)
ignorehitpause = 1
persistent = 0
[State 200, Damage Dampen]
type = parentvarset
trigger1 = ishelper
trigger1 = movehit
fvar(10) = (root,fvar(10))*cond((((var(42)>0)&&(var(53)>=2))||(var(53)>=3)),0.72,0.8)*cond(root,fvar(10)>=1.0,(root,fvar(30)),1.0)
ignorehitpause = 1
persistent = 0

[State 220, TS]
type = targetstate
trigger1 = movehit
trigger1 = (((var(42)>0)&&(var(53)>=2))||(var(53)>=3))
trigger1 = var(15)=0
trigger1 = (var(15):=1)||1
ignorehitpause = 1
persistent = 0
value = 450

[State -2, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State 625, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 626

;---------------------------------------------------------------------------
; Aerial Down Heavy Attack Land
[Statedef 626]
type = S
movetype = I
physics = S
ctrl = 0
anim = 630+1*(var(10)=2)+2*(var(10)=3)
sprpriority = 1
velset = 0,0
movehitpersist = 1
facep2 = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = ishelper
attr = SCA,AA,AP,AT
slot = 0
stateno = 999
time = -1
forceair = 0
ignorehitpause = 1

[State 0, HelperPushBound]
type = playerpush
trigger1 = ishelper
value = 1
ignorehitpause = 1
[State 0, HelperPushBound]
type = ScreenBound
trigger1 = ishelper
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = ishelper
value = SCA,AA,AP,AT
time = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State -2, REX]
type = removeexplod
trigger1 = time = 0
id = 20625
ignorehitpause = 1

[State -2, Spirit Gauge Decrease]
type = varadd
trigger1 = animelemtime(1)=0
trigger1 = !movecontact
trigger1 = var(50)>0
var(50) = -65
persistent = 0

[State 626, PS]
type = posset
trigger1 = time = 0
y = 0

[State -2, Clone Destruct]
type = changestate
triggerall = ishelper
trigger1 = animelemtime(1)=0
trigger2 = movecontact||movereversed
trigger3 = root,var(54)<=0
ignorehitpause = 1
value = 999

[State 226, CS]
type = changestate
triggerall = !ishelper
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Throw
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
trigger1 = animelemtime(1)=0
var(10)=ifelse(command="holdback",1,0)

[State 200, PSND]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 210,0
channel = 0

[State 800, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 0,1

[State 800, IDDQD]
type = HitDef
trigger1 = var(30)=0
trigger1 = Time = 2   ;Abstract Reordered: grab startup 3 frames
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

[State 800, FLAG RECOVERY FRAMES]
type = statetypeset
trigger1 = animelemtime(3)=0
trigger2 = movecontact||movereversed
movetype = I
ignorehitpause = 1
persistent = 0

[State ASS]
type = AttackDist
trigger1 = 1
value = 0

[State IDCLIP]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Grab - Part 2
[Statedef 810]
type = S
movetype = A
physics = S
ctrl = 0
anim = 810
velset = 0,0
sprpriority = 1

[State 810, PSND]
type = playsnd
trigger1 = time = 0
value = 1,0

[State 810, T]
type = turn
trigger1 = animelemtime(2)=0
trigger1 = var(10)=1

[State 0, Width]
type = Width
trigger1 = 1
edge = 38,38
ignorehitpause = 1

[State 801, TS]
type = targetstate
trigger1 = time = 0
id = 800
value = 850

[State 801, TB]
type = targetbind
trigger1 = time = 0
id = 800
pos = 38,0

[State 801, TB]
type = targetbind
trigger1 = animelemtime(2)=0
id = 800
pos = 34,0

[State 801, TF]
type = targetfacing
trigger1 = time = 0
trigger2 = animelemtime(2)=0
value = -1
id = 800

[State 801, Tech Success]
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

[State 0, Explod]
type = Explod
trigger1 = animelemtime(6)=0
anim = 8020+(random%2)
ID = 8000
pos = 64,-35
postype = p1 ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 801, TS]
type = targetstate
trigger1 = animelemtime(6)=0
id = 800
value = 853

[State 810, PSND]
type = playsnd
trigger1 = animelemtime(6)=0
value = 0,1
channel = 2

[State 810, PSND]
type = playsnd
trigger1 = animelemtime(6)=0
value = 1,2
channel = 3

[State 810, PSND]
type = hitadd
trigger1 = animelemtime(6)=0
value = 1

[State 810, PSND]
type = targetlifeadd
trigger1 = animelemtime(6)=0
value = -70-0*(var(53)=2)-5*(var(53)=3)-10*(var(53)>=4)
id = 800
kill = 1

[State 810, PSND]
type = targetpoweradd
trigger1 = animelemtime(6)=0
value = 40
id = 800

[State 810, Additional Proration]
type = varset
trigger1 = animelemtime(6)=0
trigger1 = (var(4):=1)||1
fvar(10)=fvar(10)*0.9

[State 810, PSND]
type = poweradd
trigger1 = animelemtime(6)=0
value = 80

[State 801, IKEMEN Safeguard] ;I Really didn't want to implement this but the alternative would be much messier
type = ChangeState
trigger1 = !numtarget(800)
trigger1 = animelemtime(6)<=0
value = 891

[State 1205, CS]
type = changestate
trigger1 = animtime=0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Throw Tech Success
[StateDef 890]
type = S
physics = N
movetype = A;I
anim = 5945
ctrl = 0
velset = 0,0
sprPriority = 1

[State 890, PSND]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 890,0
channel = 0

[State 890, PSND]
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
x = -8;-6.14
y = 0

[State 890, VM]
type = veladd;mul
trigger1 = time>=0
trigger1 = vel x < 0
x = 0.5;85

[State 890, PA]
type = posadd
triggerall = numtarget
trigger1 = target,frontedgebodydist <= abs(target,vel x + target,const(size.ground.front))
trigger1 = target,vel x > 0.0
trigger2 = target,backedgebodydist <= abs(target,vel x - target,const(size.ground.back))
trigger2 = target,vel x < 0.0
x = cond((target,pos x - pos x) * facing > 0, -abs(target,vel x), abs(target,vel x))

[State 890, CS]
type = ChangeState
trigger1 = time >= 27
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Throw Escape Failsafe
[StateDef 891]
type = U;S
physics = N
movetype = A;I
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

[State 890, PSND]
type = PlaySnd
trigger1 = animelemtime(2)=0
value = 890,0
channel = 0

[State 890, PSND]
type = PlaySnd
trigger1 = time = 0
value = 890,10

[State 890, T]
type = null;turn
trigger1 = time = 0

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
;Target Throw Escape
[StateDef 895]
type = S
physics = N
moveType = H
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
value = ifElse(SelfAnimExist(5940),5940,130)

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
x = -8;-6.14
y = 0

[State 890, VM]
type = veladd;mul
trigger1 = time>=0
trigger1 = vel x < 0
x = 0.5;85

[State 895, CS]
type = SelfState
trigger1 = Time >= 27
value = 0
ctrl = 1