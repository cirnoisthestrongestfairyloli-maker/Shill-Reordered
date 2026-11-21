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


[command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "undizzy"
command = ~B, F, B, F, B, F, B, F
time = 35

[Command]
name = "undizzy"
command = ~D, U, D, U, D, U, D, U
time = 35


[command]
name = "guardpush"
command = a+b
time = 10

[command]
name = "guardpush"
command = a+c
time = 10

[command]
name = "guardpush"
command = c+b
time = 10


[command]
name = "SuperJump"
command = ~$D, U
time = 12
buffer.time = 3

[command]
name = "SuperJump_Fwd"
command = ~$D, UF
time = 12
buffer.time = 3

[command]
name = "SuperJump_Back"
command = ~$D, UB
time = 12
buffer.time = 3

[command]
name = "abc"
command = ~U, D, U, D, U, D, U, D   ;Abstract Reordered: old A/B button gone
time = 8


[Command]
name = "a"
command = ~U, D, U, D, U, D, U, D   ;Abstract Reordered: old A/B button gone
time = 1

[Command]
name = "b"
command = ~U, D, U, D, U, D, U, D   ;Abstract Reordered: old A/B button gone
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
command = ~U, D, U, D, U, D, U, D   ;Abstract Reordered: old A/B button gone
time = 1

[Command]
name = "holdb"
command = ~U, D, U, D, U, D, U, D   ;Abstract Reordered: old A/B button gone
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
name = "holdstart"
command = /s
time = 1

[Command]
name = "fwd_x"
command = /F,a
time = 1

[Command]
name = "fwd_y"
command = /F,b
time = 1

[Command]
name = "fwd_z"
command = /F,c
time = 1

[Command]
name = "a2"
command = ~U, D, U, D, U, D, U, D   ;Abstract Reordered: old A/B button gone
time = 1

[Command]
name = "b2"
command = ~U, D, U, D, U, D, U, D   ;Abstract Reordered: old A/B button gone
time = 1

[Command]
name = "c2"
command = x
time = 1

[Command]
name = "x2"
command = a
time = 1

[Command]
name = "y2"
command = b
time = 1

[Command]
name = "z2"
command = c
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
command = ~U, D, U, D, U, D, U, D   ;Abstract Reordered: old A/B button gone
time = 1

[Command]
name = "holdb2"
command = ~U, D, U, D, U, D, U, D   ;Abstract Reordered: old A/B button gone
time = 1

[Command]
name = "holdc2"
command = /x
time = 1

[Command]
name = "holdx2"
command = /a
time = 1

[Command]
name = "holdy2"
command = /b
time = 1

[Command]
name = "holdz2"
command = /c
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = ~U, D, U, D, U, D, U, D   ;Abstract Reordered: old A/B button gone
time = 1




[Command]
name = "KTM"
command = ~D,DB,B,D,DB,$B,a
time = 24
buffer.time = 4

[Command]
name = "KTM"
command = ~D,DB,B,D,DB,$B,b
time = 24
buffer.time = 4

[Command]
name = "KTM"
command = ~D,DB,B,D,DB,$B,c
time = 24
buffer.time = 4

[Command]
name = "108PH"
command = ~B,F,B,F,a
time = 24
buffer.time = 4

[Command]
name = "108PH"
command = ~B,F,B,F,b
time = 24
buffer.time = 4

[Command]
name = "108PH"
command = ~B,F,B,F,c
time = 24
buffer.time = 4

[Command]
name = "PH"
command = ~D,DB,$B,D,DB,$B,x
time = 24
buffer.time = 4

[Command]
name = "PH"
command = ~D,DB,$B,D,DB,$B,a+b
time = 24
buffer.time = 4

[Command]
name = "PH"
command = ~D,DB,$B,D,DB,$B,c+b
time = 24
buffer.time = 4

[Command]
name = "PH"
command = ~D,DB,$B,D,DB,$B,a+c
time = 24
buffer.time = 4

[Command]
name = "PH2"
command = ~F,$D,$B,$F,$D,$B,a+c
time = 45
buffer.time = 3

[Command]
name = "PH2"
command = ~F,$D,$B,$F,$D,$B,a+b
time = 45
buffer.time = 3

[Command]
name = "PH2"
command = ~F,$D,$B,$F,$D,$B,b+c
time = 45
buffer.time = 3

[Command]
name = "PH2"
command = ~F,$D,$B,$F,$D,$B,x
time = 45
buffer.time = 3

[Command]
name = "01"
command = ~B,F,a
time = 10
buffer.time = 3

[Command]
name = "02"
command = ~B,F,b
time = 10
buffer.time = 3

[Command]
name = "03"
command = ~B,F,c
time = 10
buffer.time = 3

[Command]
name = "04"
command = ~D,DF,$F,a
time = 12
buffer.time = 3

[Command]
name = "05"
command = ~D,DF,$F,b
time = 12
buffer.time = 3

[Command]
name = "06"
command = ~D,DF,$F,c
time = 12
buffer.time = 3

[Command]
name = "07"
command = ~D, DB, B, a

[Command]
name = "07"
command = ~D, DB, B,b

[Command]
name = "07"
command = ~D, DB, B, c

[Command]
name = "08"
command = ~D,D,a
time = 12
buffer.time = 3

[Command]
name = "09"
command = ~D,D,b
time = 12
buffer.time = 3

[Command]
name = "10"
command = ~D,D,c
time = 12
buffer.time = 3

[Command]
name = "fwdy"
command = /F,b
time = 1

[Command]
name = "fwdz"
command = /F,c
time = 1

[Command]
name = "bwdc"
command = /B,c
time = 1

[Command]
name = "bwdz"
command = /B,c
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
name = "hold_z"
command = /c
time = 1

[Command]
name = "hold_a"
command = ~U, D, U, D, U, D, U, D   ;Abstract Reordered: old A/B button gone
time = 1

[Command]
name = "hold_b"
command = ~U, D, U, D, U, D, U, D   ;Abstract Reordered: old A/B button gone
time = 1

[Command]
name = "hold_c"
command = /x
time = 1

[Command]
name = "up"
command = $U
time = 1

[Command]
name = "down"
command = $D
time = 1




[Command]
name = "2k"
command = ~U, D, U, D, U, D, U, D   ;Abstract Reordered: old A/B button gone
time = 5
[Command]
name = "2k"
command = ~U, D, U, D, U, D, U, D   ;Abstract Reordered: old A/B button gone
time = 5
[Command]
name = "2k"
command = ~U, D, U, D, U, D, U, D   ;Abstract Reordered: old A/B button gone
time = 5


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
command = ~U, D, U, D, U, D, U, D   ;Abstract Reordered: old A/B button gone
time = 1


[Command]
name = "down_a"
command = ~U, D, U, D, U, D, U, D   ;Abstract Reordered: old A/B button gone
time = 1

[Command]
name = "down_b"
command = ~U, D, U, D, U, D, U, D   ;Abstract Reordered: old A/B button gone
time = 1







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

;Abstract Reordered: A/B/C = light/medium/heavy (C = EX on specials), X = gadget belt, Y = grab, Z = parry, A+B+C = burst
;(his old buttons x, y, z, c are now A, B, C, X; old a and b are gone)
[Command]
name = "ar_x"
command = x
time = 1

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

[Command]
name = "ar_evade"
command = a+b
time = 1


[Statedef -1]
;Abstract Reordered: burst gauge (var(26)) and gadget belt HUD
;Abstract Reordered: burst HUD - Touma's BURST gauge, recoloured, just under the lifebar.
;var(26) = cooldown ticks (4500 = just used, 0 = ready). Anims 9660-9668, explod IDs = anims.
[State -1, AR burst gauge 9668 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9668) = 0
trigger1 = var(26) = 0
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
trigger1 = var(26) = 0
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
trigger1 = var(26) > 3750
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
trigger1 = var(26) <= 3750 && var(26) > 3000
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
trigger1 = var(26) <= 3000 && var(26) > 2250
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
trigger1 = var(26) <= 2250 && var(26) > 1500
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
trigger1 = var(26) <= 1500 && var(26) > 750
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
trigger1 = var(26) <= 750 && var(26) > 0
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
trigger1 = var(26) > 3750
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
trigger1 = var(26) = 0
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
trigger1 = var(26) = 0
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
trigger1 = var(26) > 3750
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
trigger1 = var(26) <= 3750 && var(26) > 3000
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
trigger1 = var(26) <= 3000 && var(26) > 2250
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
trigger1 = var(26) <= 2250 && var(26) > 1500
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
trigger1 = var(26) <= 1500 && var(26) > 750
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
trigger1 = var(26) <= 750 && var(26) > 0
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
trigger1 = var(26) > 3750
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
trigger1 = !(var(26) = 0)
ID = 9668
ignorehitpause = 1

[State -1, AR burst gauge 9661 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9661)
trigger1 = !(var(26) = 0)
ID = 9661
ignorehitpause = 1

[State -1, AR burst gauge 9660 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9660)
trigger1 = !(var(26) > 3750)
ID = 9660
ignorehitpause = 1

[State -1, AR burst gauge 9662 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9662)
trigger1 = !(var(26) <= 3750 && var(26) > 3000)
ID = 9662
ignorehitpause = 1

[State -1, AR burst gauge 9663 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9663)
trigger1 = !(var(26) <= 3000 && var(26) > 2250)
ID = 9663
ignorehitpause = 1

[State -1, AR burst gauge 9664 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9664)
trigger1 = !(var(26) <= 2250 && var(26) > 1500)
ID = 9664
ignorehitpause = 1

[State -1, AR burst gauge 9665 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9665)
trigger1 = !(var(26) <= 1500 && var(26) > 750)
ID = 9665
ignorehitpause = 1

[State -1, AR burst gauge 9666 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9666)
trigger1 = !(var(26) <= 750 && var(26) > 0)
ID = 9666
ignorehitpause = 1

[State -1, AR burst gauge 9667 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9667)
trigger1 = !(var(26) > 3750)
ID = 9667
ignorehitpause = 1


; Abstract Reordered: GADGET BELT bar - 5 slots (Batarang, Bat Bomb, Grapple Hook, Smoke Bomb, Wayne Tech), bottom of the screen.
;var(29) = equipped slot, var(30)..var(34) = cooldown ticks. Slot fill: growing = cooling down, full = ready,
; flashing = ready and equipped. Icon bright = equipped.
[State -1, AR meter HUD belt frame P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7790) = 0
trigger1 = 1
anim = 7790
ID = 7790
pos = 32, GameHeight - (33)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt back P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7792) = 0
trigger1 = 1
anim = 7792
ID = 7792
pos = 40, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 11
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt tick 1 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7803) = 0
trigger1 = 1
anim = 7793
ID = 7803
pos = 58.4, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 13
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt tick 2 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7813) = 0
trigger1 = 1
anim = 7793
ID = 7813
pos = 76.8, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 13
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt tick 3 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7823) = 0
trigger1 = 1
anim = 7793
ID = 7823
pos = 95.2, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 13
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt tick 4 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7833) = 0
trigger1 = 1
anim = 7793
ID = 7833
pos = 113.6, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 13
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7900 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7900) = 0
trigger1 = var(30) > 0
anim = 7796
ID = 7900
pos = 40.0, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .00005,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7910 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7910) = 0
trigger1 = var(30) = 0 && var(29) != 0
anim = 7791
ID = 7910
pos = 40.0, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7920 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7920) = 0
trigger1 = var(30) = 0 && var(29) = 0
anim = 7795
ID = 7920
pos = 40.0, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon dim 0 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7930) = 0
trigger1 = var(29) != 0
anim = 7801
ID = 7930
pos = 40.0, GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon bright 0 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7940) = 0
trigger1 = var(29) = 0
anim = 7811
ID = 7940
pos = 40.0, GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7901 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7901) = 0
trigger1 = var(31) > 0
anim = 7796
ID = 7901
pos = 58.4, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .00005,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7911 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7911) = 0
trigger1 = var(31) = 0 && var(29) != 1
anim = 7791
ID = 7911
pos = 58.4, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7921 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7921) = 0
trigger1 = var(31) = 0 && var(29) = 1
anim = 7795
ID = 7921
pos = 58.4, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon dim 1 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7931) = 0
trigger1 = var(29) != 1
anim = 7802
ID = 7931
pos = 58.4, GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon bright 1 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7941) = 0
trigger1 = var(29) = 1
anim = 7812
ID = 7941
pos = 58.4, GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7902 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7902) = 0
trigger1 = var(32) > 0
anim = 7796
ID = 7902
pos = 76.8, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .00005,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7912 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7912) = 0
trigger1 = var(32) = 0 && var(29) != 2
anim = 7791
ID = 7912
pos = 76.8, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7922 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7922) = 0
trigger1 = var(32) = 0 && var(29) = 2
anim = 7795
ID = 7922
pos = 76.8, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon dim 2 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7932) = 0
trigger1 = var(29) != 2
anim = 7803
ID = 7932
pos = 76.8, GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon bright 2 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7942) = 0
trigger1 = var(29) = 2
anim = 7813
ID = 7942
pos = 76.8, GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7903 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7903) = 0
trigger1 = var(33) > 0
anim = 7796
ID = 7903
pos = 95.2, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .00005,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7913 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7913) = 0
trigger1 = var(33) = 0 && var(29) != 3
anim = 7791
ID = 7913
pos = 95.2, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7923 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7923) = 0
trigger1 = var(33) = 0 && var(29) = 3
anim = 7795
ID = 7923
pos = 95.2, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon dim 3 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7933) = 0
trigger1 = var(29) != 3
anim = 7804
ID = 7933
pos = 95.2, GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon bright 3 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7943) = 0
trigger1 = var(29) = 3
anim = 7814
ID = 7943
pos = 95.2, GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7904 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7904) = 0
trigger1 = var(34) > 0
anim = 7796
ID = 7904
pos = 113.6, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .00005,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7914 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7914) = 0
trigger1 = var(34) = 0 && var(29) != 4
anim = 7791
ID = 7914
pos = 113.6, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7924 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7924) = 0
trigger1 = var(34) = 0 && var(29) = 4
anim = 7795
ID = 7924
pos = 113.6, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon dim 4 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7934) = 0
trigger1 = var(29) != 4
anim = 7805
ID = 7934
pos = 113.6, GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon bright 4 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7944) = 0
trigger1 = var(29) = 4
anim = 7815
ID = 7944
pos = 113.6, GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt frame P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7790) = 0
trigger1 = 1
anim = 7790
ID = 7790
pos = GameWidth - (140), GameHeight - (33)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 10
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt back P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7792) = 0
trigger1 = 1
anim = 7792
ID = 7792
pos = GameWidth - (132), GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 11
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt tick 1 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7803) = 0
trigger1 = 1
anim = 7793
ID = 7803
pos = GameWidth - (58.4), GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 13
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt tick 2 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7813) = 0
trigger1 = 1
anim = 7793
ID = 7813
pos = GameWidth - (76.8), GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 13
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt tick 3 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7823) = 0
trigger1 = 1
anim = 7793
ID = 7823
pos = GameWidth - (95.2), GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 13
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt tick 4 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7833) = 0
trigger1 = 1
anim = 7793
ID = 7833
pos = GameWidth - (113.6), GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 13
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7900 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7900) = 0
trigger1 = var(30) > 0
anim = 7796
ID = 7900
pos = GameWidth - (40.0), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .00005,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7910 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7910) = 0
trigger1 = var(30) = 0 && var(29) != 0
anim = 7791
ID = 7910
pos = GameWidth - (40.0), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7920 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7920) = 0
trigger1 = var(30) = 0 && var(29) = 0
anim = 7795
ID = 7920
pos = GameWidth - (40.0), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon dim 0 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7930) = 0
trigger1 = var(29) != 0
anim = 7801
ID = 7930
pos = GameWidth - (58.0), GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon bright 0 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7940) = 0
trigger1 = var(29) = 0
anim = 7811
ID = 7940
pos = GameWidth - (58.0), GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7901 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7901) = 0
trigger1 = var(31) > 0
anim = 7796
ID = 7901
pos = GameWidth - (58.4), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .00005,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7911 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7911) = 0
trigger1 = var(31) = 0 && var(29) != 1
anim = 7791
ID = 7911
pos = GameWidth - (58.4), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7921 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7921) = 0
trigger1 = var(31) = 0 && var(29) = 1
anim = 7795
ID = 7921
pos = GameWidth - (58.4), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon dim 1 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7931) = 0
trigger1 = var(29) != 1
anim = 7802
ID = 7931
pos = GameWidth - (76.4), GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon bright 1 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7941) = 0
trigger1 = var(29) = 1
anim = 7812
ID = 7941
pos = GameWidth - (76.4), GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7902 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7902) = 0
trigger1 = var(32) > 0
anim = 7796
ID = 7902
pos = GameWidth - (76.8), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .00005,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7912 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7912) = 0
trigger1 = var(32) = 0 && var(29) != 2
anim = 7791
ID = 7912
pos = GameWidth - (76.8), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7922 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7922) = 0
trigger1 = var(32) = 0 && var(29) = 2
anim = 7795
ID = 7922
pos = GameWidth - (76.8), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon dim 2 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7932) = 0
trigger1 = var(29) != 2
anim = 7803
ID = 7932
pos = GameWidth - (94.8), GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon bright 2 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7942) = 0
trigger1 = var(29) = 2
anim = 7813
ID = 7942
pos = GameWidth - (94.8), GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7903 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7903) = 0
trigger1 = var(33) > 0
anim = 7796
ID = 7903
pos = GameWidth - (95.2), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .00005,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7913 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7913) = 0
trigger1 = var(33) = 0 && var(29) != 3
anim = 7791
ID = 7913
pos = GameWidth - (95.2), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7923 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7923) = 0
trigger1 = var(33) = 0 && var(29) = 3
anim = 7795
ID = 7923
pos = GameWidth - (95.2), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon dim 3 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7933) = 0
trigger1 = var(29) != 3
anim = 7804
ID = 7933
pos = GameWidth - (113.2), GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon bright 3 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7943) = 0
trigger1 = var(29) = 3
anim = 7814
ID = 7943
pos = GameWidth - (113.2), GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7904 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7904) = 0
trigger1 = var(34) > 0
anim = 7796
ID = 7904
pos = GameWidth - (113.6), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .00005,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7914 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7914) = 0
trigger1 = var(34) = 0 && var(29) != 4
anim = 7791
ID = 7914
pos = GameWidth - (113.6), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt fill 7924 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7924) = 0
trigger1 = var(34) = 0 && var(29) = 4
anim = 7795
ID = 7924
pos = GameWidth - (113.6), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .1,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon dim 4 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7934) = 0
trigger1 = var(29) != 4
anim = 7805
ID = 7934
pos = GameWidth - (131.6), GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt icon bright 4 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7944) = 0
trigger1 = var(29) = 4
anim = 7815
ID = 7944
pos = GameWidth - (131.6), GameHeight - (15)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 14
ontop = 1
ownpal = 1
scale = 1,1
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD belt off 7900]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7900)
trigger1 = !(var(30) > 0)
ID = 7900
ignorehitpause = 1

[State -1, AR meter HUD belt off 7910]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7910)
trigger1 = !(var(30) = 0 && var(29) != 0)
ID = 7910
ignorehitpause = 1

[State -1, AR meter HUD belt off 7920]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7920)
trigger1 = !(var(30) = 0 && var(29) = 0)
ID = 7920
ignorehitpause = 1

[State -1, AR meter HUD belt off 7930]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7930)
trigger1 = !(var(29) != 0)
ID = 7930
ignorehitpause = 1

[State -1, AR meter HUD belt off 7940]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7940)
trigger1 = !(var(29) = 0)
ID = 7940
ignorehitpause = 1

[State -1, AR meter HUD belt off 7901]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7901)
trigger1 = !(var(31) > 0)
ID = 7901
ignorehitpause = 1

[State -1, AR meter HUD belt off 7911]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7911)
trigger1 = !(var(31) = 0 && var(29) != 1)
ID = 7911
ignorehitpause = 1

[State -1, AR meter HUD belt off 7921]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7921)
trigger1 = !(var(31) = 0 && var(29) = 1)
ID = 7921
ignorehitpause = 1

[State -1, AR meter HUD belt off 7931]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7931)
trigger1 = !(var(29) != 1)
ID = 7931
ignorehitpause = 1

[State -1, AR meter HUD belt off 7941]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7941)
trigger1 = !(var(29) = 1)
ID = 7941
ignorehitpause = 1

[State -1, AR meter HUD belt off 7902]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7902)
trigger1 = !(var(32) > 0)
ID = 7902
ignorehitpause = 1

[State -1, AR meter HUD belt off 7912]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7912)
trigger1 = !(var(32) = 0 && var(29) != 2)
ID = 7912
ignorehitpause = 1

[State -1, AR meter HUD belt off 7922]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7922)
trigger1 = !(var(32) = 0 && var(29) = 2)
ID = 7922
ignorehitpause = 1

[State -1, AR meter HUD belt off 7932]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7932)
trigger1 = !(var(29) != 2)
ID = 7932
ignorehitpause = 1

[State -1, AR meter HUD belt off 7942]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7942)
trigger1 = !(var(29) = 2)
ID = 7942
ignorehitpause = 1

[State -1, AR meter HUD belt off 7903]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7903)
trigger1 = !(var(33) > 0)
ID = 7903
ignorehitpause = 1

[State -1, AR meter HUD belt off 7913]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7913)
trigger1 = !(var(33) = 0 && var(29) != 3)
ID = 7913
ignorehitpause = 1

[State -1, AR meter HUD belt off 7923]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7923)
trigger1 = !(var(33) = 0 && var(29) = 3)
ID = 7923
ignorehitpause = 1

[State -1, AR meter HUD belt off 7933]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7933)
trigger1 = !(var(29) != 3)
ID = 7933
ignorehitpause = 1

[State -1, AR meter HUD belt off 7943]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7943)
trigger1 = !(var(29) = 3)
ID = 7943
ignorehitpause = 1

[State -1, AR meter HUD belt off 7904]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7904)
trigger1 = !(var(34) > 0)
ID = 7904
ignorehitpause = 1

[State -1, AR meter HUD belt off 7914]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7914)
trigger1 = !(var(34) = 0 && var(29) != 4)
ID = 7914
ignorehitpause = 1

[State -1, AR meter HUD belt off 7924]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7924)
trigger1 = !(var(34) = 0 && var(29) = 4)
ID = 7924
ignorehitpause = 1

[State -1, AR meter HUD belt off 7934]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7934)
trigger1 = !(var(29) != 4)
ID = 7934
ignorehitpause = 1

[State -1, AR meter HUD belt off 7944]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7944)
trigger1 = !(var(29) = 4)
ID = 7944
ignorehitpause = 1

[State -1, AR meter HUD belt scale 7900]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(7900)
ID = 7900
scale = 0.1 * ifelse(var(30) > 45, 0, 1 - var(30) / 45.0) + 0.00005, .5
ignorehitpause = 1

[State -1, AR meter HUD belt scale 7901]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(7901)
ID = 7901
scale = 0.1 * ifelse(var(31) > 150, 0, 1 - var(31) / 150.0) + 0.00005, .5
ignorehitpause = 1

[State -1, AR meter HUD belt scale 7902]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(7902)
ID = 7902
scale = 0.1 * ifelse(var(32) > 100, 0, 1 - var(32) / 100.0) + 0.00005, .5
ignorehitpause = 1

[State -1, AR meter HUD belt scale 7903]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(7903)
ID = 7903
scale = 0.1 * ifelse(var(33) > 300, 0, 1 - var(33) / 300.0) + 0.00005, .5
ignorehitpause = 1

[State -1, AR meter HUD belt scale 7904]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(7904)
ID = 7904
scale = 0.1 * ifelse(var(34) > 600, 0, 1 - var(34) / 600.0) + 0.00005, .5
ignorehitpause = 1



;---------------------------------------------------------------------------
;Abstract Reordered: burst (A+B+C while being hit, 75 s), cooldown var(26); comeback shortens it.
;var(28) = life when the combo started, fvar(21) = life last tick
[State -1, AR burst round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(26) = 0

[State -1, AR burst recharge]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = var(26) > 0
var(26) = -1
ignorehitpause = 1

[State -1, AR burst comeback]
type = VarAdd
triggerall = !ishelper
triggerall = var(26) > 0
trigger1 = movetype = H
trigger1 = Life < fvar(21)
trigger1 = var(28) - Life > LifeMax * 0.15
var(26) = -30
ignorehitpause = 1

[State -1, AR burst comeback clamp]
type = VarSet
triggerall = !ishelper
trigger1 = var(26) < 0
var(26) = 0
ignorehitpause = 1

[State -1, AR burst combo start]
type = VarSet
triggerall = !ishelper
trigger1 = movetype != H
var(28) = Life
ignorehitpause = 1

[State -1, AR burst last life]
type = VarSet
triggerall = !ishelper
trigger1 = 1
fvar(21) = Life
ignorehitpause = 1

[State -1, AR burst]
type = ChangeState
value = ifelse(StateType = A, 7751, 7750)
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "ar_burst"
triggerall = var(26) = 0
triggerall = RoundState = 2
triggerall = Alive
trigger1 = (stateno = 5000 || stateno = 5010 || stateno = 5020 || stateno = 5070) && Time > 0
trigger2 = stateno = [5001, 5099]
trigger2 = stateno != 5000 && stateno != 5010 && stateno != 5020 && stateno != 5070

;Abstract Reordered: parry on Z
[State -1, AR Parry]
type = ChangeState
value = 7740
triggerall = !IsHelper
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "ar_parry"
trigger1 = ctrl

;---------------------------------------------------------------------------
;Abstract Reordered: GADGET BELT. X throws the equipped gadget; D+X = next gadget, U+X = previous.
;var(29) = equipped (0 Batarang, 1 Bat Bomb, 2 Grapple Hook, 3 Smoke Bomb, 4 Wayne Tech)
;var(30)..var(34) = cooldown ticks of each gadget (set by the move itself, so the motion specials share them)
[State -1, AR gadget round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(30) = 0
ignorehitpause = 1

[State -1, AR gadget round reset 1]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(31) = 0
ignorehitpause = 1

[State -1, AR gadget round reset 2]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(32) = 0
ignorehitpause = 1

[State -1, AR gadget round reset 3]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(33) = 0
ignorehitpause = 1

[State -1, AR gadget round reset 4]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(34) = 0
ignorehitpause = 1

[State -1, AR gadget cooldown 0]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = var(30) > 0
var(30) = -1
ignorehitpause = 1

[State -1, AR gadget cooldown 1]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = var(31) > 0
var(31) = -1
ignorehitpause = 1

[State -1, AR gadget cooldown 2]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = var(32) > 0
var(32) = -1
ignorehitpause = 1

[State -1, AR gadget cooldown 3]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = var(33) > 0
var(33) = -1
ignorehitpause = 1

[State -1, AR gadget cooldown 4]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = var(34) > 0
var(34) = -1
ignorehitpause = 1

[State -1, AR gadget next]
type = VarSet
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = command = "ar_x"
triggerall = command = "holddown"
triggerall = command != "holdup"
trigger1 = ctrl
var(29) = (var(29) + 1) % 5

[State -1, AR gadget prev]
type = VarSet
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = command = "ar_x"
triggerall = command = "holdup"
triggerall = command != "holddown"
trigger1 = ctrl
var(29) = (var(29) + 4) % 5

[State -1, AR gadget AI cycle]
type = VarSet
triggerall = !ishelper
triggerall = var(59) != 0 && roundstate = 2
trigger1 = ctrl
trigger1 = random < 14
var(29) = random % 5

[State -1, AR gadget 0 Batarang ground]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = var(29) = 0
triggerall = var(30) = 0
triggerall = statetype != A
triggerall = (command = "ar_x" && command != "holddown" && command != "holdup") || (var(59) != 0 && p2bodydist x > 130 && random < 9)
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact   ;cancel a normal into a gadget

[State -1, AR gadget 0 Batarang air]
type = ChangeState
value = 1030
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = var(29) = 0
triggerall = var(30) = 0
triggerall = statetype = A
triggerall = (command = "ar_x" && command != "holddown" && command != "holdup") || (var(59) != 0 && p2bodydist x > 130 && random < 9)
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact

[State -1, AR gadget 1 Bat Bomb ground]
type = ChangeState
value = 625
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = var(29) = 1
triggerall = var(31) = 0
triggerall = statetype != A
triggerall = (command = "ar_x" && command != "holddown" && command != "holdup") || (var(59) != 0 && p2bodydist x > 130 && random < 9)
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact   ;cancel a normal into a gadget

[State -1, AR gadget 1 Bat Bomb air]
type = ChangeState
value = 625
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = var(29) = 1
triggerall = var(31) = 0
triggerall = statetype = A
triggerall = (command = "ar_x" && command != "holddown" && command != "holdup") || (var(59) != 0 && p2bodydist x > 130 && random < 9)
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact

[State -1, AR gadget 2 Grapple Hook ground]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = var(29) = 2
triggerall = var(32) = 0
triggerall = statetype != A
triggerall = (command = "ar_x" && command != "holddown" && command != "holdup") || (var(59) != 0 && p2bodydist x > 130 && random < 9)
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact   ;cancel a normal into a gadget

[State -1, AR gadget 2 Grapple Hook air]
type = ChangeState
value = 1121
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = var(29) = 2
triggerall = var(32) = 0
triggerall = statetype = A
triggerall = (command = "ar_x" && command != "holddown" && command != "holdup") || (var(59) != 0 && p2bodydist x > 130 && random < 9)
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact

[State -1, AR gadget 3 Smoke Bomb ground]
type = ChangeState
value = 1230
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = var(29) = 3
triggerall = var(33) = 0
triggerall = statetype != A
triggerall = (command = "ar_x" && command != "holddown" && command != "holdup") || (var(59) != 0 && p2bodydist x > 130 && random < 9)
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact   ;cancel a normal into a gadget

[State -1, AR gadget 4 Wayne Tech ground]
type = ChangeState
value = 1500
triggerall = !ishelper
triggerall = roundstate = 2
triggerall = var(29) = 4
triggerall = var(34) = 0
triggerall = statetype != A
triggerall = numhelper(23000) = 0 && numhelper(23001) = 0 && numhelper(23002) = 0
triggerall = (command = "ar_x" && command != "holddown" && command != "holdup") || (var(59) != 0 && p2bodydist x > 130 && random < 9)
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact   ;cancel a normal into a gadget




[State -1, Partner Assist]
triggerall = 0   ;Abstract Reordered: tag system removed
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
triggerall = stateno != [1000,1230]
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
triggerall = 0   ;Abstract Reordered: tag system removed
type = ChangeState
value = 1251125
triggerall = numhelper(23000) = 0
triggerall = numhelper(23001) = 0
triggerall = numhelper(23002) = 0
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
trigger2 = AILevel <=  0
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
trigger5 = stateno = [1000,1300]
ignorehitpause = 1

[State -1, Change Attack]
triggerall = 0   ;Abstract Reordered: tag system removed
type = ChangeState
value = 1251126
triggerall = numhelper(23000) = 0
triggerall = numhelper(23001) = 0
triggerall = numhelper(23002) = 0
triggerall = command != "sheoun"
triggerall = NumPartner
triggerall = (sysvar(4) = 1 && power >= ifelse(((ID < Partner,ID && PowerMax <= 1000) || (ID > Partner,ID && Partner, PowerMax <= 1000)),250,500)) || (sysvar(4) = 15 && power >= ifelse(((ID < Partner,ID && PowerMax <= 1000) || (ID > Partner,ID && Partner, PowerMax <= 1000)),500,1000))
triggerall = Partner, life > 0
triggerall = !MoveReversed
triggerall = (Partner, StateNo = 1251112 || Partner, StateNo = 1251114)  && Time > 1
triggerall = StateNo = [200,2000]
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
triggerall = 0   ;Abstract Reordered: tag system removed
type = ChangeState
value = 1251110
triggerall = numhelper(23000) = 0
triggerall = numhelper(23001) = 0
triggerall = numhelper(23002) = 0
triggerall = sysvar(4) = 1 || sysvar(4) = 15
triggerall = NumPartner
triggerall = NumEnemy
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











[State -1, AI ON]
Type = VarSet
TriggerAll = Var(59) < 1
TriggerAll = RoundState=2
Trigger1 = AILevel>0
v = 59
value= 1
Ignorehitpause=1

[State -1, AI OFF]
Type=VarSet
Trigger1=var(59)>0
Trigger1=RoundState!=2
Trigger2=!IsHelper
Trigger2=AILevel=0
v=59
value=0
Ignorehitpause=1
 


[State -1, random taunt]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
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
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 40
triggerall = var(59) != 0 && roundstate =2
trigger1 = statetype != A
trigger1 = movehit >= 2
trigger1 = stateno = 225

[State -1, AI Super Jump]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 2600
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = command = "holdfwd"
trigger1= p2movetype=A && ctrl && p2bodydist x >80
trigger1 = ctrl


[State -1,AI run fwd]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
triggerall = var(59) != 0
triggerall = statetype != A
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = Random < 20
trigger1 = (P2bodydist X >= 110)


[State -1, AI Throw]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 800
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
triggerall = P2movetype != H
triggerall = P2statetype != A
triggerall = P2statetype != L
trigger1 = ctrl
trigger1 = Random <= 20
trigger1 = p2bodydist X < 3


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 5210
triggerall = var(59) != 0
triggerall = canrecover = 1 && roundstate =2
triggerall = random < 499
triggerall = alive
triggerall = time > 20
trigger1 = stateno = 5050

[State -1: Recovery Roll]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59) != 0
triggerall = Alive && Life > 0
triggerall = (StateNo = [5100, 5110]) && prevstateno !=3010
triggerall = Pos Y >= -5
triggerall = time > 10
trigger1 = random < 499
value = 895

[State -1]
Type=ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = !NumPartner || NumPartner && (StateNo != [1251109,1251114])
Triggerall=Inguarddist
Triggerall=var(59)>0
Triggerall=ctrl
Trigger1 = random< (2+(AiLevel>=3)*100)
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
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
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
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
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




[State -1, Guard Push (Stand)]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 171
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = stateno = 150
triggerall = (random < 500 * (AIlevel ** 2 / 64.0))
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
trigger1 = statetype = S
ignorehitpause = 1



[State -1, AI Guard (Air)]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 132
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = (random < 500 * (AIlevel ** 2 / 64.0))
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random < 499) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = enemy,NumProj = 1
triggerall = (random < 500 * (AIlevel ** 2 / 64.0))
triggerall = statetype = A
triggerall = ctrl
trigger1 = inguarddist
trigger1 =Enemynear,statetype = A && Enemynear,movetype = A




[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = !NumPartner || NumPartner && (StateNo != [1251109,1251114])
value = 0
triggerall = var(59) != 0
triggerall = roundstate = 3
trigger1 = statetype != A
trigger1 = ctrl










[State -1,1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 430
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -30 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,30]
trigger1 = random = [0,400]



[State -1,2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 440
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 430
trigger1 = movecontact


[State -1,2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1200
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 440
trigger1 = movecontact



[State -1,2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 225
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 440
trigger1 = movecontact




[State -1,1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 230
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -30 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,70]
trigger1 = random = [0,400]



[State -1,2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 220
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 230
trigger1 = movecontact


[State -1,2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1000
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 220
trigger1 = movecontact


[State -1,2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1010
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 220
trigger1 = movecontact


[State -1,2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1020
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 220
trigger1 = movecontact

[State -1, 32]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1100
triggerall = statetype = S && var(59) != 0
triggerall = movetype != H
trigger1 = p2bodydist x = [100,200]
trigger1 = Random < 50
trigger1 = enemynear, statetype != L && P2statetype != C
trigger1 = ctrl

[State -1, 32]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1110
triggerall = statetype = S && var(59) != 0
triggerall = movetype != H
trigger1 = p2bodydist x = [100,200]
trigger1 = Random < 50
trigger1 = enemynear, statetype != L && P2statetype != C
trigger1 = ctrl


[State -1, 32]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1120
triggerall = statetype = S && var(59) != 0
triggerall = movetype != H
trigger1 = p2bodydist x = [250,300]
trigger1 = Random = [401,700]
trigger1 = enemynear, statetype != L && P2statetype != C
trigger1 = ctrl

[State -1, 32]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1300
triggerall = statetype = S && var(59) != 0
triggerall = movetype != H
trigger1 = p2bodydist x = [100,200]
trigger1 = random < 20
trigger1 = enemynear, statetype != L && P2statetype != C
trigger1 = ctrl

[State -1, 32]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1320
triggerall = statetype = S && var(59) != 0
triggerall = movetype != H
trigger1 = p2bodydist x = [100,800]
trigger1 = random < 20
trigger1 = enemynear, statetype != L && P2statetype != C
trigger1 = ctrl

[State -1,3]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1030
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype = a
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = Random < 10
trigger1 = (P2bodydist X >= 110)

[State -1,3]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1040
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype = a
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = Random < 10
trigger1 = (P2bodydist X >= 110)

[State -1,3]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1050
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype = a
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = Random < 10
trigger1 = (P2bodydist X >= 110)


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 600
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype = A
triggerall = (random < (AILevel* 100))
trigger1 = p2bodydist x <= 65 && p2bodydist y = [-70,65]
trigger1 = vel y > 0 && p2statetype != A||p2statetype = A
trigger1 = ctrl

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 630
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 600
trigger1 = movecontact >= 2

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 610
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 630
trigger1 = movecontact >= 2


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 640
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 610
trigger1 = movecontact >= 2

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 625
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 640
trigger1 = movecontact >= 2

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 620
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 625
trigger1 = time = 25

[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 650
triggerall = var(59) != 0  && roundstate =2
trigger1 = stateno = 625
trigger1 = time = 25


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = cond(Random <= 249,3000,2100)
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
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
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
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3200
triggerall = statetype = S && var(59) != 0 && random <= 400
triggerall = movetype != H
triggerall = power >= 3000
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


[State -1, C4]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
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
triggerall = p2movetype != H
trigger1= ctrl
trigger2 = (p2stateno =[120,150]) &&ctrl
trigger3 = p2movetype=A && ctrl && (enemynear,hitdefattr!=SCA,AA,AP)&& AIlevel >5




[State -1, ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
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
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3200
triggerall = Command = "PH"
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
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 3100
triggerall = Command = "KTM"
triggerall = var(59) = 0
triggerall = statetype != a
triggerall = power >= 1000
trigger1 = statetype !=a
trigger1 = ctrl
trigger2 = statetype != a
trigger2=(stateno=[200,499]) && MoveContact
;trigger3 = stateno = [1000,1999]

[State -1, ]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 2100
triggerall = Command = "108PH"
triggerall = var(59) = 0
triggerall = statetype != a
triggerall = power >= 1000
triggerall = stateno != 3000
triggerall = stateno != 2100
trigger1 = statetype !=a
trigger1 = ctrl
trigger2 = statetype != a
trigger2=(stateno=[200,499]) && MoveContact
trigger3 = numhelper(1000)
trigger3 = helper(1000),movecontact
trigger4 = stateno = [1200,1230]
trigger4 = movecontact





[state -1, a2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1100
triggerall = var(32) = 0   ;Abstract Reordered
triggerall = statetype != A
triggerall = command = "04"
trigger1 = ctrl
trigger2 = stateno = [200,499]

[state -1, a2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1110
triggerall = var(32) = 0   ;Abstract Reordered
triggerall = statetype != A
triggerall = command = "05"
trigger1 = ctrl
trigger2 = stateno = [200,499]


[state -1, a2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1120
triggerall = var(32) = 0 && power >= 500   ;Abstract Reordered
triggerall = command = "06"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]

[state -1, a2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1121
triggerall = var(32) = 0   ;Abstract Reordered
triggerall = command = "06" || command = "05" || command = "04"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

[state -1, a2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1200
triggerall = statetype != A
triggerall = command = "07"
trigger1 = ctrl
trigger2 = stateno = [200,499]

[state -1, a2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 625
triggerall = var(31) = 0   ;Abstract Reordered
triggerall = statetype = A
triggerall = command = "07"
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

[state -1, a2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1400
triggerall = statetype != A
triggerall = command = "z" && command = "holdback"
trigger1 = ctrl

[state -1, a2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1000
triggerall = var(30) = 0   ;Abstract Reordered
triggerall = statetype != A
triggerall = command = "01"
triggerall = numhelper(1001) = 0
trigger1 = ctrl
trigger2 = stateno = [200,499]

[state -1, a2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1010
triggerall = var(30) = 0   ;Abstract Reordered
triggerall = statetype != A
triggerall = command = "02"
triggerall = numhelper(1001) = 0
trigger1 = ctrl
trigger2 = stateno = [200,499]


[state -1, a2]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1020
triggerall = var(30) = 0 && power >= 500   ;Abstract Reordered
triggerall = command = "03"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]


[State -1, Special1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1030
triggerall = var(30) = 0   ;Abstract Reordered
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall = command = "01"
trigger1 = (ctrl = 1)
trigger2 = stateno = [600,699]
trigger3 = stateno = [1200,1299]


[State -1, Special1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1040
triggerall = var(30) = 0   ;Abstract Reordered
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall = command = "02"
trigger1 = (ctrl = 1)
trigger2 = stateno = [600,699]
trigger3 = stateno = [1200,1299]



[State -1, Special1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1050
triggerall = var(30) = 0 && power >= 500   ;Abstract Reordered
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall = command = "03"
trigger1 = (ctrl = 1)
trigger2 = stateno = [600,699]
trigger3 = stateno = [1200,1299]


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1300
;triggerall = var(9) != 1
triggerall = command = "08"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]


[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1310
;triggerall = var(9) != 1
triggerall = command = "09"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]



[State -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1320
triggerall = power >= 500   ;Abstract Reordered
;triggerall = var(9) != 1
triggerall = command = "10"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]






[state -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 40
triggerall = var(59) = 0
triggerall = command = "abc"
trigger1 = statetype != a
trigger1 = ctrl
trigger3 = stateno = 420


[State -1, WallCling]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 60
triggerall = var(59) = 0
trigger1 = command = "holdfwd" && ctrl && var(59) = 0 && prevstateno != 1400 && vel y > 0 && (backedgebodydist = [-10,10]) && (pos y < -80) && prevstateno != [600,650]
trigger2 = var(59) = 1 && ctrl && random >= 900 && vel y > 0 && (backedgebodydist = [-10,10]) && (pos y < -80) && prevstateno != [600,650]



[State -1, Run attack]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 107
triggerall = stateno = 100
trigger1 = command = "z"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, Run Forward]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 100
triggerall = var(59) = 0
triggerall = roundstate = 2
trigger1 = command = "FF"
trigger1 = (stateno !=[100,106])
trigger1 = (StateType = S||StateType != A) && (ctrl)



[State -1, Back Dash]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
triggerall = var(59) = 0
triggerall = roundstate = 2
trigger1 = command = "BB"
trigger1 = (StateType = S||StateType != A) && (ctrl)
value = 105

 

[State -1, Throw]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1220
triggerall = var(59) = 0
triggerall = command = "ar_grab"   ;Abstract Reordered: Y = grab
triggerall = command = "holdback"
triggerall = statetype = s
trigger1 = ctrl

[State -1, Throw]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 800
triggerall = var(59) = 0
triggerall = command = "ar_grab"   ;Abstract Reordered: Y = grab
triggerall = statetype = s
trigger1 = ctrl

[state -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 210
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(43) = 1
trigger1 = statetype != A
trigger1 = ctrl || (stateno=100&&animelemtime(2)>=2)||(stateno=101) || stateno = 52
trigger2 = stateno = [200,450]
trigger2 = movecontact

[state -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 215
triggerall = var(59) = 0
triggerall = command = "fwdy"
triggerall = command != "holdback"
triggerall = prevstateno != 200
trigger1 = statetype != A
trigger1 = ctrl


[state -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 230
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(44) = 1
trigger1 = statetype != A
trigger1 = ctrl || (stateno=100&&animelemtime(2)>=2)||(stateno=101) || stateno = 52
trigger2 = stateno = [200,450]
trigger2 = movecontact

[state -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 250
triggerall = var(59) = 0
triggerall = command = "z" && command != "holdback"
triggerall = command != "holddown"
triggerall = var(45) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

[state -1, taunt]
triggerall = 0   ;Abstract Reordered: Wayne Tech is a gadget now (X)
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 1500
triggerall = numhelper(150000) = 0
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

[state -1, crouching light punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 400
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(46) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact


[state -1, crouching medium punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 225
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = var(52) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

[state -1, crouching strong punch]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 440
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(48) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact
 


[state -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = var(49) = 1
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

[state -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 610
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = var(50) = 1
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact




[state -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 650
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = var(51) = 1
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

[state -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 850
triggerall = var(59) = 0
triggerall = command = "ar_evade" && command = "holdfwd"
trigger1 = statetype != a
trigger1 = ctrl

[state -1]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 851
triggerall = var(59) = 0
triggerall = command = "ar_evade" && command = "holdback"
trigger1 = statetype != a
trigger1 = ctrl

[State -1]
triggerall = 0   ;Abstract Reordered: guard push removed
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 171
triggerall = var(59) = 0
trigger1 = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" &&  command = "z")
triggerall = stateno = [150,151] 

[State -1]
triggerall = 0   ;Abstract Reordered: guard push removed
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 172
triggerall = var(59) = 0
trigger1 = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" &&  command = "z")
triggerall = stateno = [152,153] 


[State -1]
triggerall = 0   ;Abstract Reordered: guard push removed
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 173
triggerall = var(59) = 0
trigger1 = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" &&  command = "z")
triggerall = stateno = [154,155] 

[State -1, Forward Recovery Roll]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 891
triggerall = !Var(59)
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, Backward Recovery Roll]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 895
triggerall = !Var(59)
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1


[State -1, Stand]
type = ChangeState
triggerall = !NumPartner || (NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])) 
value = 45
triggerall = command = "up"
triggerall = vel Y > -40
triggerall = var(25)=2
trigger1 = ctrl
trigger1 =  stateno = 460 || stateno = 257 || stateno = 5040 || stateno = 461 || stateno = 7000
trigger2 = stateno = [600,650]
trigger2 = movecontact

[State -1, Standing Parry]
triggerall = 0   ;Abstract Reordered: Z is the parry
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && (statetype = S || stateno = 5120)
trigger1 = command = "fwd" && command != "back" && command != "up" && command != "down"
trigger1 = ctrl || (stateno = [7000, 7010]) || stateno = 5120
trigger1 = var(22) := 1
attr = SA, AA, AP
stateno = 7000
slot = 0
time = 12

[State -1, Crouching Parry]
triggerall = 0   ;Abstract Reordered: Z is the parry
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && statetype != A
trigger1 = command = "down" && command != "fwd" && command != "back" && command != "up"
trigger1 = ctrl || (stateno = [7000, 7010]) || stateno = 5120
trigger1 = var(22) := 2
attr = C, AA, AP
stateno = 7010
slot = 0
time = 12

[State -1, Air Parry]
triggerall = 0   ;Abstract Reordered: Z is the parry
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && statetype = A
trigger1 = command = "fwd" && command != "back" && command != "up" && command != "down"
trigger1 = ctrl || stateno = 7020
trigger1 = var(22) := 3
attr = SA, AA, AP
stateno = 7020
forceair = 1
slot = 0
time = 12

[State -1, Reset Parry]
type = hitoverride
trigger1 = (!ctrl && (stateno != [7000, 7020]) && stateno != 5120)
trigger2 = movetype != I || (stateno = [100, 106]) || (stateno = [120, 132])
trigger3 = !AIlevel && (command = "holdback" || command = "holdup")
trigger4 = (statetype = S || statetype = C) && var(22) != 1 && var(22) != 2
trigger5 = statetype = A && var(22) != 3
slot = 0
time = 0

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