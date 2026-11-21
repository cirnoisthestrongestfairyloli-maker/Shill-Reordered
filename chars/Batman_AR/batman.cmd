[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 30
command.buffer.time = 1

;-| 2/3 Button Combination |-----------------------------------------------

[command]
name = "recovery";required (do not remove)
command = x+y
time = 1

[Command]
name = "undizzy"
command = ~B, F, B, F, B, F, B, F
time = 35

[Command]
name = "undizzy"
command = ~D, U, D, U, D, U, D, U
time = 35

;-| push back |-----------------------------------------------------------
[command]
name = "guardpush"
command = x+y
time = 10

[command]
name = "guardpush"
command = x+z
time = 10

[command]
name = "guardpush"
command = z+y
time = 10

;-| super jump |-----------------------------------------------------------
[command]
name = "du"
command = ~D, $U
time = 8

[command]
name = "abc"
command = a+b+c
time = 8

;-| Single Button |---------------------------------------------------------
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

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

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


;-| Hold Button |--------------------------------------------------------
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
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1
;-| CPU |----------------------------------------------------------------
[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+a
time = 1

;-| Super Motions |--------------------------------------------------------


[Command]
name = "KTM"
command = ~D, DB, B, x+y
time = 32

[Command]
name = "KTM"
command = ~D, DB, B, y+z
time = 32

[Command]
name = "KTM"
command = ~D, DB, B, x+z
time = 32

[Command]
name = "108PH"
command = ~D, DF, F, x+y
time = 10

[Command]
name = "108PH"
command = ~D, DF, F, y+z
time = 10

[Command]
name = "108PH"
command = ~D, DF, F, x+z
time = 10

[Command]
name = "PH"
command = ~D, DF, F, a+b
time = 10

[Command]
name = "PH"
command = ~D, DF, F, b+c
time = 10

[Command]
name = "PH"
command = ~D, DF, F, a+c
time = 10

[Command]
name = "PH2"
command = ~D, DB, B, a+b
time = 10

[Command]
name = "PH2"
command = ~D, DB, B, b+c
time = 10

[Command]
name = "PH2"
command = ~D, DB, B, a+c
time = 10

;-| Special Motions |------------------------------------------------------


[Command]
name = "01"
command = ~D, DF, F, x

[Command]
name = "02"
command = ~D, DF, F, y

[Command]
name = "03"
command = ~D, DF, F, z

[Command]
name = "04"
command = ~D, DF, F, a

[Command]
name = "05"
command = ~D, DF, F, b

[Command]
name = "06"
command = ~D, DF, F, c

[Command]
name = "07"
command = ~D, DB, B, x

[Command]
name = "07"
command = ~D, DB, B,y

[Command]
name = "07"
command =~D, DB, B, z

[Command]
name = "08"
command = ~D, DB, B, a

[Command]
name = "09"
command = ~D, DB, B, b

[Command]
name = "10"
command = ~D, DB, B, c


[Command]
name = "fwdy"
command = /F,y
time = 1

[Command]
name = "fwdz"
command = /F,z
time = 1

[Command]
name = "bwdc"
command = /B,c
time = 1

[Command]
name = "bwdz"
command = /B,z
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "down";Required (do not remove)
command = $D
time = 1


;throw shouldersuplex

[Command]
name = "2k"
command = a+b
time = 5
[Command]
name = "2k"
command = b+c
time = 5
[Command]
name = "2k"
command = c+a
time = 5

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1


;---------------------------------------------------------------------------
; 2. State entry
; --------------------------------------------------------------------------
[Statedef -1]

;===========================================================================
; Skill Section
;===========================================================================

;===========================================================================
;Artificial Intelligence
;===========================================================================
;var(59) = AI variable
;var(50) = Difficulty variable

[State -1, AI ON] ; Turn the AI on when
Type = VarSet
TriggerAll = Var(59) < 1; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 59
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(59)>0 ; it is on and
Trigger1=RoundState!=2 ; the round is not started yet or is already over
Trigger2=!IsHelper ; OR if we are a player, but
Trigger2=AILevel=0 ; the computer is not in control
v=59
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

[State -1]
Type=VarSet
Trigger1=1
var(50)=(AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*16+(AILevel=4)*30+(AILevel=5)*58+(AILevel=6)*90+ (AILevel=7)*150+(AILevel=8)*300

;--------------------------------------------------------------------------------------------------------------------------------
;--------------------------------------------------------------------------------------------------------------------------------

;You're boring him.....===========================================================================
[State -1, random taunt]
type = changestate
value = 195
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
triggerall = ctrl
triggerall = P2BodyDist X >= 50
triggerall = random <= 50
triggerall = life >= p2life+350
trigger1 = p2stateno = 5050
trigger2 = p2stateno = [5100,5101]
trigger3 = p2stateno = 5120   || p2stateno = 5020 || p2stateno = 5030

[State -1, Super Jump]
type = ChangeState
value = 40
triggerall = var(59) != 0 && roundstate =2; Applied if AI is activated
trigger1 = statetype != A ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
trigger1 = movehit >= 2
trigger1 = stateno = 225 

[State -1, AI Super Jump]
type = ChangeState
value = 2600
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = command = "holdfwd"
trigger1= p2movetype=A && ctrl && p2bodydist x >80
trigger1 = ctrl


[State -1,AI run fwd]
type = ChangeState
value = 100
triggerall = var(59) != 0
triggerall = statetype != A
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = Random < 20
trigger1 = (P2bodydist X >= 110)


[State -1, AI Throw]
type = ChangeState
value = 800
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
triggerall = P2movetype != H
triggerall = P2statetype != A
triggerall = P2statetype != L
trigger1 = ctrl
trigger1 = Random <= 20
trigger1 = p2bodydist X < 3

;Recover
[State -1]
type = ChangeState
value = 5210
triggerall = var(59) != 0
triggerall = canrecover = 1 && roundstate =2
triggerall = random < 499
triggerall = alive
triggerall = time > 20
trigger1 = stateno = 5050

[State -1: Recovery Roll]
type = ChangeState
triggerall = var(59) != 0
triggerall = Alive && Life > 0
triggerall = (StateNo = [5100, 5110]) && prevstateno !=3010
triggerall = Pos Y >= -5
triggerall = time > 10
trigger1 = random < 499
value = 895

[State -1]
Type=ChangeState
triggerall = !NumPartner || NumPartner && (StateNo != [1251109,1251114])
Triggerall=Inguarddist
Triggerall=var(59)>0
Triggerall=ctrl
Trigger1 = random< (var(50)*2+(AiLevel>=3)*100)
value=120

[State -1]
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=var(59)>0
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard



[State -1, AI Guard (Standing)]
type = ChangeState
triggerall = !NumPartner || NumPartner && (StateNo != [1251109,1251114])
value = 130
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = (random < 500 * (AIlevel ** 2 / 64.0))
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random < 499) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = enemy,NumProj = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = p2statetype != C
trigger1 =Enemynear,statetype = A && Enemynear,movetype = A
trigger1 = inguarddist



[State -1, AI Guard (Crouching)]
type = ChangeState
triggerall = !NumPartner || NumPartner && (StateNo != [1251109,1251114])
value = 131
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = (random < 500 * (AIlevel ** 2 / 64.0))
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random < 499) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = enemy,numproj = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = p2statetype = C
trigger1 =Enemynear,statetype = A && Enemynear,movetype = A
trigger1 = inguarddist



;AI Guard Push (Stand)
[State -1, Guard Push (Stand)]
type = ChangeState
value = 171
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = stateno = 150
triggerall = (random < 500 * (AIlevel ** 2 / 64.0))
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1) ; Difficulty level
trigger1 = statetype = S
ignorehitpause = 1

;---------------------------------------------------------------------------
;AI Guard (Air)
[State -1, AI Guard (Air)]
type = ChangeState
value = 132
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = (random < 500 * (AIlevel ** 2 / 64.0))
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random < 499) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = enemy,NumProj = 1
triggerall = (random < 500 * (AIlevel ** 2 / 64.0))
triggerall = statetype = A
triggerall = ctrl
trigger1 = inguarddist
trigger1 =Enemynear,statetype = A && Enemynear,movetype = A




[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (StateNo != [1251109,1251114])
value = 0
triggerall = var(59) != 0
triggerall = roundstate = 3
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ai misc
;---------------------------------------------------------------------------

;==============================Ground Combo=============================================

;COMBO 1

;
[State -1,1]
type = ChangeState
value = 430
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -30 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,30]
trigger1 = random = [0,400]


;
[State -1,2]
type = ChangeState
value = 440
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 430
trigger1 = movecontact 

;
[State -1,2]
type = ChangeState
value = 1200
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 440 
trigger1 = movecontact 


;
[State -1,2]
type = ChangeState
value = 225
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 440 
trigger1 = movecontact 

;COMBO 2

;
[State -1,1]
type = ChangeState
value = 240
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -30 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,70]
trigger1 = random = [0,400]


;
[State -1,2]
type = ChangeState
value = 220
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 240
trigger1 = movecontact 

;
[State -1,2]
type = ChangeState
value = 1000
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 220 
trigger1 = movecontact 

;
[State -1,2]
type = ChangeState
value = 1010
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 220 
trigger1 = movecontact 

;
[State -1,2]
type = ChangeState
value = 1020
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 220 
trigger1 = movecontact 

[State -1, 32]
type = ChangeState
value = 1100
triggerall = statetype = S && var(59) != 0 
triggerall = movetype != H
trigger1 = p2bodydist x = [100,200] 
trigger1 = Random < 50
trigger1 = enemynear, statetype != L && P2statetype != C
trigger1 = ctrl

[State -1, 32]
type = ChangeState
value = 1110
triggerall = statetype = S && var(59) != 0 
triggerall = movetype != H
trigger1 = p2bodydist x = [100,200] 
trigger1 = Random < 50
trigger1 = enemynear, statetype != L && P2statetype != C
trigger1 = ctrl


[State -1, 32]
type = ChangeState
value = 1120
triggerall = statetype = S && var(59) != 0 
triggerall = movetype != H
trigger1 = p2bodydist x = [250,300] 
trigger1 = Random = [401,700]
trigger1 = enemynear, statetype != L && P2statetype != C
trigger1 = ctrl

[State -1, 32]
type = ChangeState
value = 1300
triggerall = statetype = S && var(59) != 0 
triggerall = movetype != H
trigger1 = p2bodydist x = [100,200] 
trigger1 = random < 20
trigger1 = enemynear, statetype != L && P2statetype != C
trigger1 = ctrl

[State -1, 32]
type = ChangeState
value = 1320
triggerall = statetype = S && var(59) != 0 
triggerall = movetype != H
trigger1 = p2bodydist x = [100,800] 
trigger1 = random < 20
trigger1 = enemynear, statetype != L && P2statetype != C
trigger1 = ctrl

[State -1,3]
type = ChangeState
value = 1030
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype = a
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = Random < 10
trigger1 = (P2bodydist X >= 110)

[State -1,3]
type = ChangeState
value = 1040
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype = a
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = Random < 10
trigger1 = (P2bodydist X >= 110)

[State -1,3]
type = ChangeState
value = 1050
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype = a
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = Random < 10
trigger1 = (P2bodydist X >= 110)
;================================AI AIR COMBO=============================================

[State -1]
type = ChangeState
value = 600
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype = A
triggerall = (random < (AILevel* 100))
trigger1 = p2bodydist x <= 65 && p2bodydist y = [-70,65]
trigger1 = vel y > 0 && p2statetype != A||p2statetype = A
trigger1 = ctrl 

[State -1]
type = ChangeState
value = 630
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 600
trigger1 = movecontact >= 2

[State -1]
type = ChangeState
value = 610
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 630
trigger1 = movecontact >= 2


[State -1]
type = ChangeState
value = 640
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 610 
trigger1 = movecontact >= 2

[State -1]
type = ChangeState
value = 625
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 640 
trigger1 = movecontact >= 2

[State -1]
type = ChangeState
value = 620
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 625
trigger1 = time = 25

[State -1]
type = ChangeState
value = 650
triggerall = var(59) != 0  && roundstate =2
trigger1 = stateno = 625
trigger1 = time = 25

;===========================================================================
[State -1]
type = ChangeState
value = 3000
triggerall = statetype = S && var(59) != 0 && random <= 400
triggerall = movetype != H
triggerall = power >= 1000
triggerall = stateno < 3000
triggerall = stateno != [800,899]
trigger1 = anim = 1000
trigger1 = animtime = -6
trigger2 = anim = 1020
trigger2 = animtime = -6
trigger3 = anim = 1030
trigger3 = movehit = 1
trigger4 = anim = 1100
trigger4 = animtime = -6
trigger5 = stateno = 220
trigger5 = movehit = 1
trigger6 = p2bodydist x > 100
trigger6 = p2bodydist y = [-20,0]
trigger6 = p2movetype = I
trigger6 = p2stateno != [120,159]
trigger6 = (enemy, ctrl = 0) || (time = 100 && random < 200)
trigger6 = ctrl

[State -1,]
type = ChangeState
value = 3100
triggerall = power >= 1000
triggerall = stateno < 3100
triggerall = statetype = S && var(59) != 0
triggerall = roundstate = 2
triggerall = p2movetype = A
triggerall = statetype != A
triggerall = ctrl || stateno = [100,101]
triggerall = p2movetype != H
triggerall = p2bodydist x = [0,40]
trigger1 = inguarddist

[State -1]
type = ChangeState
value = 3200
triggerall = statetype = S && var(59) != 0 && random <= 400
triggerall = movetype != H
triggerall = power >= 1000
triggerall = stateno < 3200
triggerall = stateno != [800,899]
trigger1 = anim = 440
trigger1 = animtime = -6
trigger2 = anim = 1200
trigger2 = animtime = -6
trigger3 = anim = 1210
trigger3 = movehit = 1
trigger4 = anim = 1100
trigger4 = animtime = -6
trigger5 = stateno = 220
trigger5 = movehit = 1
trigger6 = p2bodydist x > 60
trigger6 = p2bodydist y = [-20,0]
trigger6 = p2movetype = I
trigger6 = p2stateno != [120,159]
trigger6 = (enemy, ctrl = 0) || (time = 100 && random < 200)
trigger6 = ctrl

;
[State -1, C4]
type = ChangeState
value = 3300
triggerall = (Var(0) = 0)
triggerall = power >= 3000
triggerall = random <= 31*AILevel
triggerall = AILevel >0
triggerall = statetype != A
triggerall = p2statetype !=A
triggerall = p2statetype !=L
triggerall = ctrl || stateno=20
triggerall = stateno != [200,9999]
Triggerall = (RoundState = 2)
triggerall = (p2MoveType != H)|| (p2stateno=120||p2stateno=140)
triggerall = p2bodydist X < 80
triggerall = p2bodydist y = 0
trigger1= ctrl
trigger2 = (p2stateno =[120,150]) &&ctrl
trigger3 = p2movetype=A && ctrl && (enemynear,hitdefattr!=SCA,AA,AP)&& AIlevel >5


;=======================================================================================
;HYPER COMBOS
[State -1, ]
type = ChangeState
value = 3300
triggerall = Command = "PH2"
triggerall = var(59) = 0
triggerall = statetype != a
triggerall = power >= 3000
trigger1 = statetype !=a 
trigger1 = ctrl
trigger2 = statetype != a
trigger2=(stateno=[200,499]) && MoveContact
trigger3 = stateno = [1000,1999]

[State -1, ]
type = ChangeState
value = 3200
triggerall = Command = "PH"
triggerall = var(59) = 0
triggerall = statetype != a
triggerall = power >= 1000
trigger1 = statetype !=a 
trigger1 = ctrl
trigger2 = statetype != a
trigger2=(stateno=[200,499]) && MoveContact
trigger3 = stateno = [1000,1999]

[State -1, ]
type = ChangeState
value = 3100
triggerall = Command = "KTM"
triggerall = var(59) = 0
triggerall = statetype != a
triggerall = power >= 1000
trigger1 = statetype !=a 
trigger1 = ctrl
trigger2 = statetype != a
trigger2=(stateno=[200,499]) && MoveContact
trigger3 = stateno = [1000,1999]

[State -1, ]
type = ChangeState
value = 3000
triggerall = Command = "108PH"
triggerall = var(59) = 0
triggerall = statetype != a
triggerall = power >= 1000
trigger1 = statetype !=a 
trigger1 = ctrl
trigger2 = statetype != a
trigger2=(stateno=[200,499]) && MoveContact
trigger3 = stateno = [1000,1999]


;---------------------------------------------------------------------------;

;SUPERS

;01
[state -1, a2]
type = ChangeState
value = 1100
triggerall = statetype != A
triggerall = command = "04"
trigger1 = ctrl
trigger2 = stateno = [200,499]

[state -1, a2]
type = ChangeState
value = 1110
triggerall = statetype != A
triggerall = command = "05"
trigger1 = ctrl
trigger2 = stateno = [200,499]


[state -1, a2]
type = ChangeState
value = 1120
triggerall = command = "06"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]


;01
[state -1, a2]
type = ChangeState
value = 1200
triggerall = statetype != A
triggerall = command = "07"
trigger1 = ctrl
trigger2 = stateno = [200,499]


;01
[state -1, a2]
type = ChangeState
value = 1000
triggerall = statetype != A
triggerall = command = "01"
triggerall = numhelper(1001) = 0
trigger1 = ctrl
trigger2 = stateno = [200,499]

[state -1, a2]
type = ChangeState
value = 1010
triggerall = statetype != A
triggerall = command = "02"
triggerall = numhelper(1001) = 0
trigger1 = ctrl
trigger2 = stateno = [200,499]


[state -1, a2]
type = ChangeState
value = 1020
triggerall = command = "03"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]


[State -1, Special1]
type = ChangeState
value = 1030
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall = command = "01"
trigger1 = (ctrl = 1)
trigger2 = stateno = [600,699]
trigger3 = stateno = [1200,1299]


[State -1, Special1]
type = ChangeState
value = 1040
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall = command = "02"
trigger1 = (ctrl = 1)
trigger2 = stateno = [600,699]
trigger3 = stateno = [1200,1299]



[State -1, Special1]
type = ChangeState
value = 1050
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall = command = "03"
trigger1 = (ctrl = 1)
trigger2 = stateno = [600,699]
trigger3 = stateno = [1200,1299]

; 
[State -1]
type = ChangeState
value = 1300
triggerall = var(9) != 1
triggerall = command = "08" 
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]

; 
[State -1]
type = ChangeState
value = 1310
triggerall = var(9) != 1
triggerall = command = "09" 
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]


; 
[State -1]
type = ChangeState
value = 1320
triggerall = var(9) != 1
triggerall = command = "10" 
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]


;------------------------------------------


;Super Jump
[state -1]
type = changestate
value = 40
triggerall = var(59) = 0
triggerall = command = "abc"
trigger1 = statetype != a
trigger1 = ctrl
trigger3 = stateno = 420
;---------------------------------------------------------------------------;

[State -1, WallCling]
type = ChangeState
value = 60
triggerall = var(59) = 0
trigger1 = command = "holdfwd" && ctrl && var(59) = 0 && prevstateno != 1400 && vel y > 0 && (backedgebodydist = [-10,10]) && (pos y < -80) && prevstateno != [600,650]
trigger2 = var(59) = 1 && ctrl && random >= 900 && vel y > 0 && (backedgebodydist = [-10,10]) && (pos y < -80) && prevstateno != [600,650]


;---------------------------------------------------------------------------;
[State -1, Run attack]
type = ChangeState
value = 107
triggerall = stateno = 100
trigger1 = command = "c"
trigger1 = statetype = S
trigger1 = ctrl

; Run Forward
[State -1, Run Forward]
type = changestate
value = 100
triggerall = var(59) = 0
triggerall = roundstate = 2
trigger1 = (command = "FF") && (stateno !=[100,106])
trigger1 = (StateType = S||StateType != A) && (ctrl)
;---------------------------------------------------------------------------;
; Dash Forwar---------------------------------------------------------;
; Back Dash
[State -1, Back Dash]
type = ChangeState
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "BB"
trigger1 = (StateType = S||StateType != A) && (ctrl)
value = 105

;---------------------------------------------------------------------------;
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Throw]
type = changestate
value = 800
triggerall = var(59) = 0
trigger1 = command = "z"
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = statetype = s
trigger1 = ctrl
trigger1 = p2bodydist x < 10
trigger1 = p2statetype = s || p2statetype = c
trigger1 = p2movetype != h

;stand light punch
[state -1]
type = changestate
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
;stand medium punch
[state -1]
type = changestate
value = 215
triggerall = var(59) = 0
triggerall = command = "fwdy"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4= (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movecontact
trigger6 = (stateno = 210) && movecontact

;stand medium punch
[state -1]
type = changestate
value = 210
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4= (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------


[state -1]
type = changestate
value = 225
triggerall = var(59) = 0
triggerall = command = "fwdz"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 430) && movecontact
trigger9 = (stateno = 440) && movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 215) && movecontact
trigger12 = (stateno = 420) && movecontact
trigger13 = (stateno = 450) && movecontact
trigger14 = (stateno = 250) && movecontact

;stand strong punch
[state -1]
type = changestate
value = 220
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 430) && movecontact
trigger9 = (stateno = 440) && movecontact
trigger10 = (stateno = 215) && movecontact
;---------------------------------------------------------------------------
;stand light kick
[state -1]
type = changestate
value = 230
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl

;---------------------------------------------------------------------------
;standing medium kick
[state -1]
type = changestate
value = 240
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = (stateno = 215) && movecontact
;---------------------------------------------------------------------------
;standing strong kick
[state -1]
type = changestate
value = 255
triggerall = var(59) = 0
triggerall = command = "bwdc"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4= stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 215) && movecontact


;standing strong kick
[state -1]
type = changestate
value = 250
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4= stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 215) && movecontact
;---------------------------------------------------------------------------
;taunt
;’§”­
[state -1, taunt]
type = changestate
value = 195
triggerall = var(59) = 0
triggerall = command = "start"
trigger1 = statetype != a
trigger1 = ctrl

;---------------------------------------------------------------------------
;crouching light punch
[state -1, crouching light punch]
type = changestate
value = 400
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl

;---------------------------------------------------------------------------
;crouching medium punch
[state -1, crouching medium punch]
type = changestate
value = 410
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;crouching strong punch
[state -1, crouching strong punch]
type = changestate
value = 420
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = stateno = 440 && movecontact
trigger9 = stateno = 210 && movecontact
trigger10 = stateno = 250 && movecontact
trigger11 = stateno = 260 && movecontact
trigger12 = stateno = 240 && movecontact
;---------------------------------------------------------------------------
;crouching light kick
[state -1, crouching light kick]
type = changestate
value = 430
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
;crouching medium kick
[state -1, crouching medium kick]
type = changestate
value = 440
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;crouching strong kick
[state -1, crouching strong kick]
type = changestate
value = 450
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = stateno = 440 && movecontact
trigger9 = stateno = 210 && movecontact
trigger10 = stateno = 250 && movecontact
trigger11 = stateno = 260 && movecontact
;---------------------------------------------------------------------------

;jump light punch
[state -1]
type = changestate
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = a
trigger1 = ctrl

;---------------------------------------------------------------------------
;jump medium punch
[state -1]
type = changestate
value = 610
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600&& MoveContact
trigger3 = StateNo = 630&& MoveContact
;---------------------------------------------------------------------------
;jump strong punch
[state -1]
type = changestate
value = 625
triggerall = var(59) = 0
triggerall = command = "bwdz"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact

;jump strong punch
[state -1]
type = changestate
value = 620
triggerall = var(59) = 0
triggerall = command = "z"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
;---------------------------------------------------------------------------
;jump light kick
[state -1]
type = changestate
value = 630
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
;---------------------------------------------------------------------------
;jump medium kick
[state -1]
type = changestate
value = 640
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 630) && movecontact
trigger4 = (stateno = 610) && movecontact
;---------------------------------------------------------------------------

;jump strong kick
[state -1]
type = changestate
value = 650
triggerall = var(59) = 0
triggerall = command = "c"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact

; Push Block (Stand)
[State -1]
type = ChangeState
value = 171
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" &&  command = "z")
trigger1 = stateno = [150,151]

;Push Block (crouching)
[State -1]
type = ChangeState
value = 172
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" &&  command = "z")
trigger1 = stateno = [152,153]

;Push Block (aerial)
[State -1]
type = ChangeState
value = 173
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" &&  command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

[State -1, Forward Recovery Roll]
type = ChangeState
value = 891
triggerall = !Var(59)
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, Backward Recovery Roll]
type = ChangeState
value = 895
triggerall = !Var(59)
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1


[State -1, Stand]
type = ChangeState
value = 45
triggerall = command = "up"
triggerall = vel Y > -40
triggerall = var(25)=2
trigger1 = ctrl
trigger1 =  stateno = 460 || stateno = 257 || stateno = 5040 || stateno = 461 || stateno = 7000
trigger2 = stateno = [600,650]
trigger2 = movecontact
