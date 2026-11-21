
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s





[Defaults]

command.time = 15


command.buffer.time = 3
 

[command]
name = "qcf"
command = ~D, DF, F
time = 20

[command]
name = "qcb"
command = ~D, DB, B
time = 20

[command]
name = "GC"
command = ~B, DB, D
time = 20

[command]
name = "reGC"
command = ~F, DF, D
time = 20

[command]
name = "qcfx2"
command = ~D, DF, F,~D, DF, F
time = 20

[command]
name = "qcbx2"
command = ~D, DB, B,~D, DB, B
time = 20

[command]
name = "dx2"
command = ~D, D 
time = 20

[command]
name = "dx3"
command = ~D, D, D
time = 20

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1
buffer.time = 2
[Command]
name = "x2"
command = x
time = 1
buffer.time = 1

[Command]
name = "y"
command = y
time = 1
buffer.time = 2
[Command]
name = "y2"
command = y
time = 1
buffer.time = 1

[Command]
name = "z"
command = z
time = 1
buffer.time = 2
[Command]
name = "z2"
command = z
time = 1
buffer.time = 1

[Command]
name = "start"
command = s
time = 1



[Command]
name = "holdfwd"
command=/$F
time=1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time=1

[Command]
name = "holddown"
command = /$D
time = 1



[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1





[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "dfwd"
command = DF
time = 1

[Command]
name = "dback"
command = DB
time = 1

[Command]
name = "ufwd"
command = UF
time = 1

[Command]
name = "uback"
command = UB
time = 1





[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1





[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
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
name = "highjump"
command = $D, $U
time = 15
buffer.time = 3



[Command]
name = "recovery"
command = x+y
time = 1
name = "recovery"
command = x+z
time = 1
name = "recovery"
command = y+z
time = 1









;   --- Uno Tag System [Type-R] Command definition ---

[Command]
name = "aHsoNn"
command = ~D, D, D, s
Time = 25

[Command]
name = "sheoun"
command = ~D, DF, F, z+c
Time = 25

[Command]
name = "palit"
command = z+c
Time = 2

[Command]
name = "turtleuno"
command = s
Time = 2


[Statedef -1]


[State -1, Partner Assist]
type = VarSet
sysvar(4) = 10
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time >= 60 && Time > 0
triggerall = teammode = Simul
triggerall = StateNo != [3000,1251199]
triggerall = hitdefattr != SCA, HA, HP, HT
triggerAll = StateNo != [130,152]
triggerall = !(StateNo = [5000,5500]) 
triggerall = stateno != [1000,1401]
trigger1 = command = "turtleuno"
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = !ctrl && Movetype = A
trigger2 = Random < (((2 * ifelse(MoveContact, ifelse(MoveHit, 2, 3),1)) + (UniqHitCount * 2)) *(AILevel**2/64.0))
trigger3 = AILevel >  0
trigger3 = StateNo = [190,199]
trigger3 = AnimElemNo(0) = 2
ignorehitpause = 1

[State -1, Team Hyper Attack]
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
trigger1 = AILevel <=  0
trigger2 = command = "sheoun"
trigger2 = Anim = [200,1000] 
trigger3 = AILevel > 0 && ctrl
trigger3 = Random < (10 + ((Life < Lifemax/6)*3))
trigger3 = NumEnemy && enemy, pos x = [0,200]
trigger4 = AILevel >  0
trigger4 = Anim = [200,1000]
trigger4 = movetype = A
trigger4 = hitdefattr = SC, NA
trigger4 = MoveContact
trigger4 = Random < (11 + ((MoveHit)*5) + ((Life < Lifemax/6)*5))
trigger5 = command = "sheoun"
trigger5 = stateno = [1000,1401]
ignorehitpause = 1

[State -1, Delayed Hyper]
type = ChangeState
value = 1251127
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Partner, life > 0
triggerall = power >= 1000
triggerall = Partner, StateNo = [1251112,1251114]
triggerall = Partner, Time > 1 && Time > 45 
triggerall = StateNo = [2000,1251100]
triggerall = hitdefattr = SCA, HA, HP, HT || (StateNo >= 2000 && StateNo < 4000 && (hitcount < 8 || NumTarget && Target, GetHitVar(hitTime) >= 0))
trigger1 = command = "sheoun"
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = NumTarget && MoveContact
trigger2 = Random < (10*(AILevel**2/64.0) + (Uniqhitcount*((Life < Partner,Life)*2)))
trigger2 = Partner, Time > 35
trigger3 = AILevel >  0
trigger3 = Partner, Time > 30 && Time > 25
trigger3 = HitCount >= 6
trigger3 = Random < (2 * Uniqhitcount * ifelse(hitcount > 9, 2, 1))
ignorehitpause = 1
 
[State -1, Change Attack]
type = ChangeState
value = 1251126
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
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = UniqHitCount >= 2
trigger2 = Random < (((ifelse(sysvar(4)=15,25,50)*(AILevel**2/64.0)) + ((hitdefattr = SCA, SA, HA)*15) + ifelse(lifemax/life > 15, 15, lifemax/life)))
trigger2 = Partner, Life > Lifemax/10 || Life <= Partner, Life
trigger2 = Partner, Time > 25
trigger3 = AILevel >  0
trigger3 = Partner, Time > 27
trigger3 = Random < (25*(2*(Life = (Lifemax/4) && Life < Partner, Life)) *(AILevel**2/64.0))
trigger3 = MoveContact
ignorehitpause = 1

[State -1, TagIn]
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
trigger1 = AILevel <=  0
trigger2 = AILevel >  0
trigger2 = Random < (ifelse((LifeMax/Life > 120), 120, LifeMax/Life)+((EnemyNear,statetype=L)*25))
trigger2 = Life < Partner, Life && Partner, Time > 1 * TicksPerSecond
trigger2 = EnemyNear, movetype != A
trigger3 = AILevel >  0
trigger3 = Life < Partner, Life && Partner, Time > 1 * TicksPerSecond && Life < LifeMax * (LifeMax*0.55)
trigger3 = Random < ((ifelse(LifeMax/Life > 10, 10, LifeMax/Life) + (10+ifelse((EnemyNear, StateNo > 5000),25,1))) * ifelse((Life < Partner, Life), 1.45, 0.5))
trigger3 = Partner, Time > 1 * TicksPerSecond
trigger3= EnemyNear, statetype = L || p2bodydist x > 250 && EnemyNear, movetype != A
trigger4 = AILevel >  0
trigger4 = Life < 150 && Life < Partner, Life
trigger4 = EnemyNear, statetype = L || p2bodydist x > 200 && EnemyNear, movetype != A
trigger4 = Random < (125*(AILevel**2/64.0))

[State -1, C_6]
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





[State -1, Yellow Dragon]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3900 
triggerall = !AIlevel 
triggerall = numhelper(10371)
triggerall = helper(10371),var(20)
triggerall = (helper(10371),var(14) = [1,3]) || (helper(10371),var(15) = [1,3]) || (helper(10371),var(16) = [1,3])
triggerall = power >= 5000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = stateno != 1100
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = 420) && movecontact
trigger6 = (stateno = 830) && animelemtime(6) >= 0
trigger7 = (stateno = [1000,1401]) && movecontact
trigger8 = stateno = [1300,1301]
trigger8 = animelemtime(6) >= 0
trigger9 = stateno = 621
trigger9 = var(7)

[State -1, Burning Gold]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3000
triggerall = !ishelper
triggerall = !AIlevel 
triggerall = numhelper(10371)
triggerall = helper(10371),var(23)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = stateno != 1100
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = 420) && movecontact
trigger6 = (stateno = 830) && animelemtime(6) >= 0
trigger7 = (stateno = [1000,1401]) && movecontact
trigger8 = stateno = [1300,1301]
trigger8 = animelemtime(6) >= 0
trigger9 = stateno = 621
trigger9 = var(7)

[State -1, Unrelenting Fire]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(24)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = stateno != 1100
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [200,202]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = 420) && movecontact
trigger6 = (stateno = 830) && animelemtime(6) >= 0
trigger7 = (stateno = [1000,1401]) && movecontact
trigger8 = stateno = [1300,1301]
trigger8 = animelemtime(6) >= 0
trigger9 = stateno = 621
trigger9 = var(7)

[State -1, Strawberry Sunrise]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1200
triggerall = !ishelper
triggerall = command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = !var(13)
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = 400) && Movecontact
trigger4 = var(13)
trigger4 = Movecontact
trigger4 = stateno = 200
trigger4 = animelemtime(4) >= 0
trigger5 = var(13)
trigger5 = animelemtime(5) >= 0
trigger5 = stateno = 201
trigger5 = Movecontact
trigger6 = stateno = 202 && movecontact
trigger7 = !var(13)
trigger7 = (stateno = [210,211]) && movecontact
trigger8 = var(13)
trigger8 = (stateno = 210) && movecontact
trigger8 = animelemtime(5) >= 0
trigger9 = var(13)
trigger9 = (stateno = 211) && movecontact
trigger9 = animelemtime(6) >= 0
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 621
trigger11 = var(7)


[State -1, Air Sunrise]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1202
triggerall = !ishelper
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact && animelemtime(5) >= 0
trigger3 = (stateno = [600,621]) && movecontact


[State -1, Burst of Embers]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1000
triggerall = !ishelper 
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(0) = [1,3])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = !var(13)
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = 400) && Movecontact
trigger4 = var(13)
trigger4 = Movecontact
trigger4 = stateno = 200
trigger4 = animelemtime(4) >= 0
trigger5 = var(13)
trigger5 = animelemtime(5) >= 0
trigger5 = stateno = 201
trigger5 = Movecontact
trigger6 = stateno = 202 && movecontact
trigger7 = !var(13)
trigger7 = (stateno = [210,211]) && movecontact
trigger8 = var(13)
trigger8 = (stateno = 210) && movecontact
trigger8 = animelemtime(5) >= 0
trigger9 = var(13)
trigger9 = (stateno = 211) && movecontact
trigger9 = animelemtime(6) >= 0
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 621
trigger11 = var(7)


[State -1, Rising Fire]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1010
triggerall = !ishelper
triggerall = command = "x"
trigger1 = stateno = 1001
trigger1 = movecontact


[State -1, Too Hot to Handle]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1015
triggerall = !ishelper
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = stateno = 1001
trigger1 = movecontact


[State -1, Fire Sweep]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1016
triggerall = !ishelper
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = stateno = 1001
trigger1 = movecontact


[State -1, Raging Inferno]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1017
triggerall = !ishelper
triggerall = command = "z"
triggerall = power >= 500
trigger1 = stateno = 1001
trigger1 = movecontact


[State -1, Cold Shoulder]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1100
triggerall = !ishelper
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(1) = [1,3])
triggerall = !ishelper
triggerall = statetype != A
trigger1 = ctrl
trigger2 = !var(13)
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = 400) && Movecontact
trigger4 = var(13)
trigger4 = Movecontact
trigger4 = stateno = 200
trigger4 = animelemtime(4) >= 0
trigger5 = var(13)
trigger5 = animelemtime(5) >= 0
trigger5 = stateno = 201
trigger5 = Movecontact
trigger6 = stateno = 202 && movecontact
trigger7 = !var(13)
trigger7 = (stateno = [210,211]) && movecontact
trigger8 = var(13)
trigger8 = (stateno = 210) && movecontact
trigger8 = animelemtime(5) >= 0
trigger9 = var(13)
trigger9 = (stateno = 211) && movecontact
trigger9 = animelemtime(6) >= 0
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 621
trigger11 = var(7)


[State -1, Fire Cracker]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1300
triggerall = numhelper(10371)
triggerall = helper(10371),var(21)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3])
triggerall = !ishelper
triggerall = statetype != A
triggerall = !numhelper(1350)
trigger1 = ctrl
trigger2 = !var(13)
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = 400) && Movecontact
trigger4 = var(13)
trigger4 = Movecontact
trigger4 = stateno = 200
trigger4 = animelemtime(4) >= 0
trigger5 = var(13)
trigger5 = animelemtime(5) >= 0
trigger5 = stateno = 201
trigger5 = Movecontact
trigger6 = stateno = 202 && movecontact
trigger7 = !var(13)
trigger7 = (stateno = [210,211]) && movecontact
trigger8 = var(13)
trigger8 = (stateno = 210) && movecontact
trigger8 = animelemtime(5) >= 0
trigger9 = var(13)
trigger9 = (stateno = 211) && movecontact
trigger9 = animelemtime(6) >= 0
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 621
trigger11 = var(7)



[State -1, Bottle Rocket]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1301
triggerall = numhelper(10371)
triggerall = helper(10371),var(21)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3])
triggerall = !ishelper
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact && animelemtime(5) >= 0
trigger3 = (stateno = [600,621]) && movecontact



[State -1, EX Fire Cracker]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1370
triggerall = !ishelper
triggerall = numhelper(10371)
triggerall = helper(10371),var(21)
triggerall = (helper(10371),var(2) = [1,3]) 
triggerall = power >= 500
triggerall = statetype != A
triggerall = !numhelper(1350)
trigger1 = ctrl
trigger2 = !var(13)
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = 400) && Movecontact
trigger4 = var(13)
trigger4 = Movecontact
trigger4 = stateno = 200
trigger4 = animelemtime(4) >= 0
trigger5 = var(13)
trigger5 = animelemtime(5) >= 0
trigger5 = stateno = 201
trigger5 = Movecontact
trigger6 = stateno = 202 && movecontact
trigger7 = !var(13)
trigger7 = (stateno = [210,211]) && movecontact
trigger8 = var(13)
trigger8 = (stateno = 210) && movecontact
trigger8 = animelemtime(5) >= 0
trigger9 = var(13)
trigger9 = (stateno = 211) && movecontact
trigger9 = animelemtime(6) >= 0
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 621
trigger11 = var(7)



[State -1, EX Bottle Rocket]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1371
triggerall = !ishelper
triggerall = numhelper(10371)
triggerall = helper(10371),var(21)
triggerall = (helper(10371),var(2) = [1,3]) 
triggerall = power >= 500
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact && animelemtime(5) >= 0
trigger3 = (stateno = [600,621]) && movecontact



[State -1, Perfect Bombshell]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1400
triggerall = numhelper(10371)
triggerall = helper(10371),var(22)
triggerall = (helper(10371),var(2) = [1,3])
triggerall = !ishelper
triggerall = power >= 500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = !var(13)
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = 400) && Movecontact
trigger4 = var(13)
trigger4 = Movecontact
trigger4 = stateno = 200
trigger4 = animelemtime(4) >= 0
trigger5 = var(13)
trigger5 = animelemtime(5) >= 0
trigger5 = stateno = 201
trigger5 = Movecontact
trigger6 = stateno = 202 && movecontact
trigger7 = !var(13)
trigger7 = (stateno = [210,211]) && movecontact
trigger8 = var(13)
trigger8 = (stateno = 210) && movecontact
trigger8 = animelemtime(5) >= 0
trigger9 = var(13)
trigger9 = (stateno = 211) && movecontact
trigger9 = animelemtime(6) >= 0
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 621
trigger11 = var(7)





[State -1, Run Fwd]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
triggerall = !ishelper
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl



[State -1, Back Dash]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 105
triggerall = !ishelper
trigger1 = command = "BB"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, Grab]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 800
triggerall = !ishelper
triggerall = command = "b"
triggerall = statetype != A
triggerall = ctrl
trigger1 = stateno != 100

[State -1, Running Grab]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 820
triggerall = !ishelper
triggerall = command = "b"
triggerall = statetype != A
trigger1 = stateno = 100

[State -1, Air Grab]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 840
triggerall = !ishelper
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl


[State -1, 2A]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A 
triggerall = numhelper(10371)
triggerall = (helper(10371),var(0) = [1,3]) && (helper(10371),sysvar(1)&8) 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = !var(13)
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = var(13)
trigger3 = Movecontact
trigger3 = stateno = 200
trigger3 = animelemtime(4) >= 0
trigger4 = var(13)
trigger4 = animelemtime(5) >= 0
trigger4 = stateno = 201
trigger4 = Movecontact



[State -1, 2B]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 410
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A 
triggerall = numhelper(10371)
triggerall = (helper(10371),var(1) = [1,3]) && (helper(10371),sysvar(1)&8) 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact
trigger3 = !var(13)
trigger3 = (stateno = [200,201]) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = var(13)
trigger5 = Movecontact
trigger5 = stateno = 200
trigger5 = animelemtime(4) >= 0
trigger6 = var(13)
trigger6 = animelemtime(5) >= 0
trigger6 = stateno = 201
trigger6 = Movecontact
trigger7 = stateno = 202 && movecontact


[State -1, 2C]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 420
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A 
triggerall = numhelper(10371)
triggerall = (helper(10371),var(2) = [1,3]) && (helper(10371),sysvar(1)&8)  
trigger1 = ctrl
trigger2 = !var(13)
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = 400) && Movecontact
trigger4 = var(13)
trigger4 = Movecontact
trigger4 = stateno = 200
trigger4 = animelemtime(4) >= 0
trigger5 = var(13)
trigger5 = animelemtime(5) >= 0
trigger5 = stateno = 201
trigger5 = Movecontact
trigger6 = stateno = 202 && movecontact
trigger7 = !var(13)
trigger7 = (stateno = [210,211]) && movecontact
trigger8 = var(13)
trigger8 = (stateno = 210) && movecontact
trigger8 = animelemtime(5) >= 0
trigger9 = var(13)
trigger9 = (stateno = 211) && movecontact
trigger9 = animelemtime(6) >= 0



[State -1, 5A]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = 400) && Movecontact




[State -1, 5AAAA]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 203
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
trigger1 = stateno = 202
trigger1 = Movecontact


[State -1, 5B]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 210
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(1) = [1,3]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = !var(13)
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = 400) && Movecontact
trigger4 = var(13)
trigger4 = Movecontact
trigger4 = stateno = 200
trigger4 = animelemtime(4) >= 0
trigger5 = var(13)
trigger5 = animelemtime(5) >= 0
trigger5 = stateno = 201
trigger5 = Movecontact
trigger6 = stateno = 202 && movecontact



[State -1, 5C]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 220
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(2) = [1,3]
trigger1 = ctrl
trigger2 = !var(13)
trigger2 = (Stateno = [200,201]) && Movecontact
trigger3 = (Stateno = 400) && Movecontact
trigger4 = var(13)
trigger4 = Movecontact
trigger4 = stateno = 200
trigger4 = animelemtime(4) >= 0
trigger5 = var(13)
trigger5 = animelemtime(5) >= 0
trigger5 = stateno = 201
trigger5 = Movecontact
trigger6 = stateno = 202 && movecontact
trigger7 = !var(13)
trigger7 = (stateno = [210,211]) && movecontact
trigger8 = var(13)
trigger8 = (stateno = 210) && movecontact
trigger8 = animelemtime(5) >= 0
trigger9 = var(13)
trigger9 = (stateno = 211) && movecontact
trigger9 = animelemtime(6) >= 0




[State -1, Taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 195
triggerall = teammode != Simul  
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
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
  

[State -1, jA]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 600
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
trigger1 = statetype = A
trigger1 = ctrl


[State -1, jAA]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 601
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(0) = [1,3]
trigger1 = stateno = 600
trigger1 = movecontact


[State -1, jB]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 610
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(1) = [1,3]  
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,601]
trigger2 = movecontact


[State -1, jC]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 620
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(2) = [1,3]
triggerall = statetype = A
triggerall = !var(13)
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [600,611]) && movecontact

[State -1, jC]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 620
triggerall = !ishelper
triggerall = !AIlevel
triggerall = numhelper(10371)
triggerall = helper(10371),var(2) = [1,3]
triggerall = statetype = A
triggerall = var(13)
trigger1 = ctrl
trigger2 = (stateno = 410)
trigger2 = animelemtime(6) >= 0
trigger2 = movecontact
trigger3 = (stateno = [601,611]) && movecontact
trigger3 = animelemtime(5) >= 0
trigger4 = stateno = 600 && movecontact


[State -1, Jump Cancel]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 40
triggerall = !ishelper
triggerall = command = "holdup"
triggerall = !var(13)
trigger1 = Stateno = 100
trigger2 = (Stateno = [200,202]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact

[State -1, Jump Cancel]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 40
triggerall = !ishelper
triggerall = command = "holdup"
triggerall = var(13)
trigger1 = Stateno = 100
trigger2 = (Stateno = 202) && Movecontact
trigger3 = stateno = 200
trigger3 = animelemtime(5) >= 0
trigger3 = Movecontact
trigger4 = stateno = 201
trigger4 = animelemtime(6) >= 0
trigger3 = Movecontact
trigger5 = stateno = 210
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = stateno = 211
trigger6 = animelemtime(7) >= 0
trigger6 = movecontact
trigger7 = stateno = 600 && movecontact



[State -1, Air Jump]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 45
triggerall = !ishelper
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(11) = 1
triggerall = !var(13)
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [600,611]) && movecontact

[State -1, Air Jump]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 45
triggerall = !ishelper
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(11) = 1
triggerall = var(13)
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = 410)
trigger2 = animelemtime(6) >= 0
trigger2 = movecontact
trigger3 = (stateno = [600,611]) && movecontact
trigger3 = animelemtime(6) >= 0


[State -1, Air Dash]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 102
triggerall = !ishelper
triggerall = command = "FF"
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [600,611]) && movecontact


[State -1, Air Dash Back]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 103
triggerall = !ishelper
triggerall = command = "BB"
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = [600,611]) && movecontact


[State -1, backdash alternate command]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 105
triggerall = !ishelper
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 5120 && time >= 3


[State -1, Dodge]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 160
triggerall = !ishelper
triggerall = command = "a"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl


[State -1, Forward Dodge]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 161
triggerall = !ishelper
triggerall = command = "a"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3


[State -1, Air Dodge]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 162
triggerall = !ishelper
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl


[State -1, Guard Cancel]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 203
triggerall = numhelper(10371)
triggerall = helper(10371),var(40)
triggerall = (helper(10371),var(0) = [1,3]) || (helper(10371),var(1) = [1,3]) || (helper(10371),var(2) = [1,3])
triggerall = !ishelper
trigger1 = power >= 1000
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153


[State -1, Burst]
type = ChangeState
value = 8000
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = Var(50) != 1
triggerall = !ishelper
triggerall = !AIlevel 
triggerall = numhelper(8000)
triggerall = helper(8000),var(3) <= 0
triggerall = command = "c"
triggerall = command = "x" || command = "y" || command = "z"
triggerall = alive && roundstate = 2
triggerall = stateno != [120,155]
triggerall = stateno != [800,899]
triggerall = stateno != [3000,4999]
triggerall = statetype != L 
trigger1 = movetype = H
 