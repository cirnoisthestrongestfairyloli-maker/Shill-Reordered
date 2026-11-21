; ________________________________________________
;| Terry Bogard by KarmaCharmeleon		|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;====================<BUTTON REMAPPING>====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;====================<DEFAULT VALUES>====================

[Defaults]
command.time = 15
command.buffer.time = 1



;====================<SINGLE BUTTON>====================

[Command]
name = "a"
command = x
time = 1

[Command]
name = "b"
command = x+y+z+a+b+c
time = 1

[Command]
name = "c"
command = x+y+z+a+b+c
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



;==================<HOLD DIRECTION>==================

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


;====================<HOLD BUTTON>====================

[Command]
name = "holda"
command = /x
time = 1

[Command]
name = "holdb"
command = x+y+z+a+b+c
time = 1

[Command]
name = "holdc"
command = x+y+z+a+b+c
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



;====================<DIRECTION>====================

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



;====================<RELEASE DIR>====================

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



;====================<RELEASE BUTTON>====================

[Command]
name = "rlsx"
command = ~a
time = 1

[Command]
name = "rlsy"
command = ~b
time = 1

[Command]
name = "rlsz"
command = ~c
time = 1

[Command]
name = "rlsa"
command = ~x
time = 1

[Command]
name = "rlsb"
command = x+y+z+a+b+c
time = 1

[Command]
name = "rlsc"
command = x+y+z+a+b+c
time = 1



;====================<2/3 BUTTON COMBINATION>====================

[Command]
name = "recovery"
command = a+b
time = 1
buffer.time = 6

[Command]
name = "recovery"
command = a+c
time = 1
buffer.time = 6

[Command]
name = "recovery"
command = b+c
time = 1
buffer.time = 6

[Command]
name = "recovery"
command = a+b
time = 1
buffer.time = 6


[Command]
name = "pp"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1


[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "kk"
command = b+c
time = 1


[Command]
name = "a+x"
command = a+x
time=1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1


[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "a+c"
command = a+c
time = 1

[Command]
name = "b+c"
command = b+c
time = 1



;==============================================================================================
;========================================<-1 STATES>===========================================
;==============================================================================================
;Abstract Reordered: A/B/C = his LP/MP/HP (C = EX on specials), X = his light kick (kick specials: motion + X, EX: motion + X + C;
;X alone with a full hunger gauge = Wild Wolf), Y = grab, Z = parry, A+B+C = burst. His own b/c kick buttons are unreachable.
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

[StateDef -1]
;Abstract Reordered: hunger gauge bar (var(55); Wild Wolf time left var(56)) and burst gauge (var(24)) HUD
;Abstract Reordered: burst HUD - Touma's BURST gauge, recoloured, just under the lifebar.
;var(24) = cooldown ticks (4500 = just used, 0 = ready). Anims 9660-9668, explod IDs = anims.
[State -1, AR burst gauge 9668 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9668) = 0
trigger1 = var(24) = 0
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
trigger1 = var(24) = 0
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
trigger1 = var(24) > 3750
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
trigger1 = var(24) <= 3750 && var(24) > 3000
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
trigger1 = var(24) <= 3000 && var(24) > 2250
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
trigger1 = var(24) <= 2250 && var(24) > 1500
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
trigger1 = var(24) <= 1500 && var(24) > 750
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
trigger1 = var(24) <= 750 && var(24) > 0
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
trigger1 = var(24) > 3750
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
trigger1 = var(24) = 0
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
trigger1 = var(24) = 0
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
trigger1 = var(24) > 3750
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
trigger1 = var(24) <= 3750 && var(24) > 3000
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
trigger1 = var(24) <= 3000 && var(24) > 2250
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
trigger1 = var(24) <= 2250 && var(24) > 1500
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
trigger1 = var(24) <= 1500 && var(24) > 750
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
trigger1 = var(24) <= 750 && var(24) > 0
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
trigger1 = var(24) > 3750
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
trigger1 = !(var(24) = 0)
ID = 9668
ignorehitpause = 1

[State -1, AR burst gauge 9661 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9661)
trigger1 = !(var(24) = 0)
ID = 9661
ignorehitpause = 1

[State -1, AR burst gauge 9660 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9660)
trigger1 = !(var(24) > 3750)
ID = 9660
ignorehitpause = 1

[State -1, AR burst gauge 9662 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9662)
trigger1 = !(var(24) <= 3750 && var(24) > 3000)
ID = 9662
ignorehitpause = 1

[State -1, AR burst gauge 9663 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9663)
trigger1 = !(var(24) <= 3000 && var(24) > 2250)
ID = 9663
ignorehitpause = 1

[State -1, AR burst gauge 9664 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9664)
trigger1 = !(var(24) <= 2250 && var(24) > 1500)
ID = 9664
ignorehitpause = 1

[State -1, AR burst gauge 9665 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9665)
trigger1 = !(var(24) <= 1500 && var(24) > 750)
ID = 9665
ignorehitpause = 1

[State -1, AR burst gauge 9666 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9666)
trigger1 = !(var(24) <= 750 && var(24) > 0)
ID = 9666
ignorehitpause = 1

[State -1, AR burst gauge 9667 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9667)
trigger1 = !(var(24) > 3750)
ID = 9667
ignorehitpause = 1


;Abstract Reordered: mechanic meter HUD - Kuroko's MAGIC CIRCUIT bar, fill in the parry colour,
;bottom of the screen (P1 left, P2 right). Only the look changed; the meter logic is untouched.
[State -1, AR meter HUD frame P1]
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

[State -1, AR meter HUD back P1]
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

[State -1, AR meter HUD fill 7791 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7791) = 0
trigger1 = var(56) = 0 && var(55) < 1000
anim = 7791
ID = 7791
pos = 40, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD fill 7795 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7795) = 0
trigger1 = var(56) = 0 && var(55) >= 1000
anim = 7795
ID = 7795
pos = 40, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD fill 7796 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7796) = 0
trigger1 = var(56) > 0
anim = 7796
ID = 7796
pos = 40, GameHeight - (22)
postype = left
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD frame P2]
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

[State -1, AR meter HUD back P2]
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

[State -1, AR meter HUD fill 7791 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7791) = 0
trigger1 = var(56) = 0 && var(55) < 1000
anim = 7791
ID = 7791
pos = GameWidth - (40), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD fill 7795 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7795) = 0
trigger1 = var(56) = 0 && var(55) >= 1000
anim = 7795
ID = 7795
pos = GameWidth - (40), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD fill 7796 P2]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7796) = 0
trigger1 = var(56) > 0
anim = 7796
ID = 7796
pos = GameWidth - (40), GameHeight - (22)
postype = left
facing = -1
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
sprpriority = 12
ontop = 1
ownpal = 1
scale = .5,.5
removeongethit = 0
ignorehitpause = 1

[State -1, AR meter HUD off 7791]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7791)
trigger1 = !(var(56) = 0 && var(55) < 1000)
ID = 7791
ignorehitpause = 1

[State -1, AR meter HUD off 7795]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7795)
trigger1 = !(var(56) = 0 && var(55) >= 1000)
ID = 7795
ignorehitpause = 1

[State -1, AR meter HUD off 7796]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(7796)
trigger1 = !(var(56) > 0)
ID = 7796
ignorehitpause = 1

[State -1, AR meter HUD scale 7791]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(7791)
ID = 7791
scale = 0.5 * (ifelse((var(55) / 1000.0) < 0, 0, ifelse((var(55) / 1000.0) > 1, 1, (var(55) / 1000.0)))) + 0.00005, .5
ignorehitpause = 1

[State -1, AR meter HUD scale 7795]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(7795)
ID = 7795
scale = 0.5 * (1) + 0.00005, .5
ignorehitpause = 1

[State -1, AR meter HUD scale 7796]
type = ModifyExplod
triggerall = !ishelper
trigger1 = NumExplod(7796)
ID = 7796
scale = 0.5 * (ifelse((var(56) / 480.0) < 0, 0, ifelse((var(56) / 480.0) > 1, 1, (var(56) / 480.0)))) + 0.00005, .5
ignorehitpause = 1

;---------------------------------------------------------------------------
;=== AR BURST LOGIC (gauge HUD blocks are added by hud_terry.py: Touma style, anims/sprites 9660-9668) ===
;Abstract Reordered: burst (Kamijo's) - A+B+C while being hit, recharges in 75 s (var(24) counts down from 4500)
[State -1, AR burst round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(24) = 0

[State -1, AR burst recharge]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = var(24) > 0
var(24) = -1
ignorehitpause = 1

;Abstract Reordered: comeback - once a combo has done more than 15% of max life, every further hit
;knocks half a second (30 ticks) off the burst cooldown. fvar(31) = life when the combo started, fvar(33) = life last tick
[State -1, AR burst comeback]
type = VarAdd
triggerall = !ishelper
triggerall = var(24) > 0
trigger1 = movetype = H
trigger1 = Life < fvar(33)
trigger1 = fvar(31) - Life > LifeMax * 0.15
var(24) = -30
ignorehitpause = 1

[State -1, AR burst comeback clamp]
type = VarSet
triggerall = !ishelper
trigger1 = var(24) < 0
var(24) = 0
ignorehitpause = 1

[State -1, AR burst combo start]
type = VarSet
triggerall = !ishelper
trigger1 = movetype != H
fvar(31) = Life
ignorehitpause = 1

[State -1, AR burst last life]
type = VarSet
triggerall = !ishelper
trigger1 = 1
fvar(33) = Life
ignorehitpause = 1

[State -1, AR burst]
type = ChangeState
value = ifelse(StateType = A, 7751, 7750)
triggerall = !ishelper
triggerall = command = "ar_burst"
triggerall = var(24) = 0
triggerall = RoundState = 2
triggerall = Alive
trigger1 = (stateno = 5000 || stateno = 5010 || stateno = 5020 || stateno = 5070) && Time > 0
trigger2 = stateno = [5001, 5099]
trigger2 = stateno != 5000 && stateno != 5010 && stateno != 5020 && stateno != 5070

;=== END AR BURST ===

;Abstract Reordered: parry on Z
[State -1, AR Parry]
type = ChangeState
value = 7740
triggerall = !ishelper
triggerall = command = "ar_parry"
triggerall = RoundState = 2
trigger1 = ctrl

;Abstract Reordered: Wild Wolf - X (no direction held) with a full hunger gauge
[State -1, AR Wild Wolf]
type = ChangeState
value = 7900
triggerall = !ishelper
triggerall = RoundState = 2
triggerall = var(55) >= 1000 && var(56) = 0
triggerall = StateType != A
trigger1 = !AILevel
trigger1 = command = "ar_x"
trigger1 = command != "holdfwd" && command != "holdback" && command != "holddown" && command != "holdup"
trigger1 = ctrl
trigger2 = AILevel && ctrl && Random < 25


;==============================================================================================
;==============================================================================================
;================================<EXPLODsive Buffering System>=================================
;====================================<by JustMorphPointman>====================================
;==============================================================================================
;==============================================================================================

;This is an explod-based buffering system, designed to overcome several different errors and bugs
;related to MUGEN's default method of processing commands, as well as offering creators more control
;over how the commands of their character should work. It is designed to be easy to use, understand,
;and install. For more information, including instructions on how to add this to a character, as
;well as how to customize it and add new commands, please visit http://mugenguild.com/forum/msg.2366951

;==============================================================================================
;========================<QUICK REFERENCE GUIDE TO THE EXPLOD ID #'s>==========================
;==============================================================================================

;BASIC DIRECTIONAL INPUTS (these are primarily used to detect directional releases, but also can
;be used outside of the Buffering system code block to detect when a specific direction is currently
;being input or held down)

;Down:										90000002
;Down-right:									90000003
;Right:										90000006
;Up-right:									90000009
;Up:										90000008
;Up-left:										90000007
;Left:										90000004
;Down-left:									90000001


;BUTTON PRESS
;x:										90000200
;y:										90000210
;z:										90000220
;a:										90000230
;b:										90000240
;c:										90000250
;start:										90000195


;BUTTON RELEASE
;x:										90000205
;y:										90000215
;z:										90000225
;a:										90000235
;b:										90000245
;c:										90000255
;start:										90000196


;SYSTEM MOTIONS
;Down (3 ticks):					(D with a 3 tick buffer)		90000012
;Down-right (3 ticks):				(DR with a 3 tick buffer)		90000013
;Right (3 ticks):					(R with a 3 tick buffer)		90000016
;Up-right (3 ticks):				(UR with a 3 tick buffer)		90000019
;Up (3 ticks):					(U with a 3 tick buffer)		90000018
;Up-left (3 ticks):					(UL with a 3 tick buffer)		90000017
;Left (3 ticks):					(L with a 3 tick buffer)		90000014
;Down-left (3 ticks):				(DL with a 3 tick buffer)		90000011

;Down (3 ticks + HitPause):				(D w/ 3 tick buffer + HitPause)	90000022
;Down-right (3 ticks + HitPause):			(DR w/ 3 tick buffer + HitPause)	90000023
;Right (3 ticks + HitPause):				(R w/ 3 tick buffer + HitPause)	90000026
;Up-right (3 ticks + HitPause):			(UR w/ 3 tick buffer + HitPause)	90000029
;Up (3 ticks + HitPause):				(U w/ 3 tick buffer + HitPause)	90000028
;Up-left (3 ticks + HitPause):			(UL w/ 3 tick buffer + HitPause)	90000027
;Left (3 ticks + HitPause):				(L w/ 3 tick buffer + HitPause)	90000024
;Down-left (3 ticks + HitPause):			(DL w/ 3 tick buffer + HitPause)	90000021

;R, R:						(F, F)				90001016
;L, L:						(B, B)				90001064
;D, U:						(D, U)				90000408
;U, U:						(U, U)				90000518
;D, D:						(D, D)				90000562
;R, DR, D						(F, DF, D)			90007502
;L, DL, D						(B, DB, D)			90007552


;SPECIAL MOTIONS
;D, DR, R:					(QCF)				90010006
;D, DL, L:					(QCB)				90010104
;R, D, DR:					(F, D, DF)			90010203
;L, D, DL:					(B, D, DB)			90010301
;L, DL, D, DR, R:					(HCF)				90010406
;R, DR, D, DL, L:					(HCB)				90010504
;(charge) L, R:					([charge] B, F)			90010606
;(charge) R, L:					([charge] F, B)			90010704
;(charge) D, U:					([charge] D, U)			90010808
;L, D, R, U:					(360)				90011008
;L, U, R, D:					(360)				90011102
;D, R, U, L:					(360)				90011204
;D, L, U, R:					(360)				90011306
;R, D, L, U:					(360)				90011408
;R, U, L, D:					(360)				90011502
;U, R, D, L:					(360)				90011604
;U, L, D, R:					(360)				90011706
;U, UR, R:					(UP-QCF)				90011806
;U, UL, L:					(UP-QCB)				90011904
;R, D, L, R:					(HCB, F)				90012016
;L, D, R, L:					(HCF, B)				90012114
;R, L, R:						(F, B, F)				90012216
;L, R, L:						(B, F, B)				90012314
;D, DR, R, UR:					(QCF, UF)				90012409
;D, DL, L, UL:					(QCB, UB)				90012507
;D, D:						([special] D, D)			90012602
;D, U:						([special] D, U)			90012708


;SUPER MOTIONS
;D, DR, R, D, DR, R:				(QCFx2)				90030016
;D, DL, L, D, DL, L:				(QCBx2)				90030114
;L, DL, D, DR, R, L, DL, D, DR, R:			(HCFx2)				90030416
;R, DR, D, DL, L, R, DR, D, DL, L:			(HCBx2)				90030514
;(charge) L, R, L, R:				([charge] B, F, B, F)		90030616
;(charge) R, L, R, L:				([charge] F, B, F, B)		90030714
;(charge) DL, DR, DL, UR:				([charge] DB, DF, DB, UF)		90030809
;(charge) DR, DL, DR, UL:				([charge] DF, DB, DF, UB)		90030907
;L, D, R, U, L, D, R, U:				(720)				90031018
;L, U, R, D, L, U, R, D:				(720)				90031112
;D, R, U, L, D, R, U, L:				(720)				90031214
;D, L, U, R, D, L, U, R:				(720)				90031316
;R, D, L, U, R, D, L, U:				(720)				90031418
;R, U, L, D, R, U, L, D:				(720)				90031512
;U, R, D, L, U, R, D, L:				(720)				90031614
;U, L, D, R, U, L, D, R:				(720)				90031716
;R, L, D, R:					(F, HCF)				90032016
;L, R, D, L:					(B, HCB)				90032114
;D, DR, R, D, L:					(QCF, HCB)			90032204
;D, DL, L, D, R:					(QCB, HCF)			90032306
;D, DR, R, DR, L:					(QCF, DF, B)			90032404
;D, DL, L, DL, R:					(QCB, DB, F)			90032506
;D, D, D:						(D, D, D)				90032602


;SUPER MOTIONS (button inputs)
;x, x, F, a, z:					(Shun Goku Satsu)			94000220
;x, y, F, b, b:					(Midnight Pleasure)			94010241
;y, z, B, b, c:					(Black Hayato)			94020250
;x, y, B, y, z:					(Eternal Slumber)			94030220
;c, x, D, a, z:					(Tour De Magie)			94040220
;z, a, B, x, x:					(Otoko Michi)			94050211



;==============================================================================================
;===================================<DIRECTIONAL COMMANDS>=====================================
;==============================================================================================

;==============================================================================================
;These are required for the system to function; they are active whenever the specified direction
;is currently being input, and disappear as soon as they are released (via a series of RemoveExplods
;at the bottom of the Buffering system code block). They are used by the system to detect directional
;releases, but can also be used outside of the Buffering system code block to detect when a specific
;direction is being input or held down.
;==============================================================================================

[State -1, Release Down Detector]
type = Explod
;make sure explod doesn't already exist
triggerAll = !NumExplod(90000002)
;check to make sure Helper exists, and that the entity running this code isn't the helper, and that
;the AI isn't active. Only a human player should be making explods!
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
;If either of these explods exist, then down/up inputs have been reversed (this is usually caused
;by an attack of some sort, such as Thanos's Mind Gem super). We can easily flip left/right commands,
;but for down/up inputs, we must have two sets of triggers. This is the first set, which only activate
;if the explods don't exist, so we can just check the inputs normally.
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
;explod will be created if down is input
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
;no other directions may be input, otherwise it wouldn't be a down input!
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
;These sets of triggers, however, only are used if one of the direction input reversal explods exist.
;We treat "down" inputs as "up", and vice-versa; "down-right" is treated as "up-right", and so on.
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
anim = 1
ID = 90000002
;these explods are only removed via a RemoveExplod, so their RemoveTime is set to -1 (aka infinite)
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Down-Right Detector]
type = Explod
triggerAll = !NumExplod(90000003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger1 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
anim = 1
ID = 90000003
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Right Detector]
type = Explod
triggerAll = !NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 90000006
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Up-Right Detector]
type = Explod
triggerAll = !NumExplod(90000009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger1 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 90000009
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Up Detector]
type = Explod
triggerAll = !NumExplod(90000008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 90000008
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Up-Left Detector]
type = Explod
triggerAll = !NumExplod(90000007)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger1 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 90000007
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Left Detector]
type = Explod
triggerAll = !NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 90000004
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release Down-Left Detector]
type = Explod
triggerAll = !NumExplod(90000001)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger1 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
anim = 1
ID = 90000001
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1



;==============================================================================================
;==========================================<BUTTONS>===========================================
;==============================================================================================

[State -1, Press x]
type = Explod
;if there already exists a "press x" explod, and the player is in HitPauseTime, then we don't need another!
trigger1 = !HitPauseTime || !NumExplod(90000200)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x"
anim = 1
ID = 90000200
;the removeTime, pauseMoveTime, and superMoveTime all must be the same value. This represents the
;amount of time (in ticks) that this individual input is "active"; in other words, it's the window
;of time the player has to input the next input in sequence (or if it's the final input of a command,
;the amount of time that command will last, if the character cannot currently perform the move in
;question). We use "10" as the default value for most directional inputs, because it's generally the
;standard amount of time for most games
;We use "3" for button inputs, which is what many modern games use, but there's a lot of variance
;there.

;We also include " + ifElse(HitPauseTime, HitPauseTime - 1, 0)" to the RemoveTime/PauseMoveTime/SuperMoveTime
;in order to keep the command alive during hit pause. This goes on all button press commands, as well as
;the final directional input of any system, special, or super command.
;For more information on what the removeTime (and pauseMoveTime, et. al.) represents, see the comments for
;the "Right, Right" command
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press y]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000210)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y"
anim = 1
ID = 90000210
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press z]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000220)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z"
anim = 1
ID = 90000220
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press a]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000230)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a"
anim = 1
ID = 90000230
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press b]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000240)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b"
anim = 1
ID = 90000240
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press c]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000250)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "c"
anim = 1
ID = 90000250
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Press start]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000195)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "start"
anim = 1
ID = 90000195
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;These explods are used to detect button releases, much in the same way that the directional
;detectors work. These are required for the system, but it's easier to use MUGEN's standard
;"holda" / "holdx" / etc. for situations where you need to detect a held button input, rather than
;making use of these like you would the release direction detectors.
;==============================================================================================
[State -1, Release x Detector]
type = Explod
triggerAll = !NumExplod(90000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "x" || Helper(90000005), command = "holdx"
anim = 1
ID = 90000201
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release y Detector]
type = Explod
triggerAll = !NumExplod(90000211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "y" || Helper(90000005), command = "holdy"
anim = 1
ID = 90000211
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release z Detector]
type = Explod
triggerAll = !NumExplod(90000221)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "z" || Helper(90000005), command = "holdz"
anim = 1
ID = 90000221
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release a Detector]
type = Explod
triggerAll = !NumExplod(90000231)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "a" || Helper(90000005), command = "holda"
anim = 1
ID = 90000231
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release b Detector]
type = Explod
triggerAll = !NumExplod(90000241)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "b" || Helper(90000005), command = "holdb"
anim = 1
ID = 90000241
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release c Detector]
type = Explod
triggerAll = !NumExplod(90000251)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "c" || Helper(90000005), command = "holdc"
anim = 1
ID = 90000251
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1

[State -1, Release start Detector]
type = Explod
triggerAll = !NumExplod(90000194)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "start"
anim = 1
ID = 90000194
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1



;==============================================================================================
;Take note of the RemoveTimes on these: release button inputs don't persist through hitpause!
;==============================================================================================

[State -1, Release x]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000205)
triggerAll = NumExplod(90000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "x" && Helper(90000005), command != "holdx"
anim = 1
ID = 90000205
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release y]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000215)
triggerAll = NumExplod(90000211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "y" && Helper(90000005), command != "holdy"
anim = 1
ID = 90000215
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release z]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000225)
triggerAll = NumExplod(90000221)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "z" && Helper(90000005), command != "holdz"
anim = 1
ID = 90000225
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release a]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000235)
triggerAll = NumExplod(90000231)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "a" && Helper(90000005), command != "holda"
anim = 1
ID = 90000235
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release b]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000245)
triggerAll = NumExplod(90000241)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "b" && Helper(90000005), command != "holdb"
anim = 1
ID = 90000245
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release c]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000255)
triggerAll = NumExplod(90000251)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "c" && Helper(90000005), command != "holdc"
anim = 1
ID = 90000255
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1

[State -1, Release start]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000196)
triggerAll = NumExplod(90000194)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "start" && Helper(90000005), command != "holdstart"
anim = 1
ID = 90000196
removeTime = 3
pauseMoveTime = 3
superMoveTime = 3
ignoreHitPause = 1



;==============================================================================================
;Reminder: because this system is based on absolute directions (left/right) instead of relative
;directions (forward/backward), all commands must have a mirrored command as well (unless they are
;performed solely with up and/or down!) In other words, two different versions of each individual
;command must be defined in this system: one assuming the character is facing the right, and one
;for the left.
;==============================================================================================

;==============================================================================================
;================================<FORWARD, FORWARD/BACK, BACK>=================================
;==============================================================================================

;==============================================================================================
;Dash/run commands in SNK typically have release directions as their first inputs. In other words,
;in most SNK games, you can dash/run by holding forward or back for however long you like, and then
;quickly releasing the stick and returning to neutral, then quickly inputting forward/back again.
;In most Capcom games, this will not work. We have the dash/run commands in this system set up to
;follow Capcom's example.

;Different games have different input windows for dash commands. KOF gives you a 7 tick window between
;each the first and second forward/back commands, and the final input has a buffer time of 3 ticks.
;CPS2 Capcom games (under the normal speed setting) have an input window of 7 ticks for the consecutive
;forward/back commands, and the final input has a buffer time of 2 ticks. In SFIII, both the input
;window and the buffer time is 7 ticks. The default values in this system are 10 for the input window
;and 3 for the buffer time, to match up with the other commands (but feel free to change those values
;to suit your personal preference!)
;==============================================================================================

;=======================================<RIGHT, RIGHT>=========================================
[State -1, R, R: 1st Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90001006
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, R: Neutral]
type = Explod
triggerAll = NumExplod(90000006) && NumExplod(90001006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
;make sure no directional input is being performed
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 90001005
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

;We remove the neutral explod if any non-right input is detected, or if the 1st right explod does not exist
;in most Capcom games, a dash command will be cancelled mid-input if any direction other than forward/back
;and neutral are input. But SNK games give you more leeway: as long as you have inputting forward/back, and
;have returned the stick to neutral, you can input any other directional command and still get a dash as long
;as you input another forward/back command. If you want to replicate this behavior, simply delete the first trigger
;of this RemoveExplod sctrl (you will still need the second trigger, though).
[State -1, Remove R, R: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000009) || NumExplod(90000008) || NumExplod(90000007) || NumExplod(90000004) || NumExplod(90000001)
trigger2 = !NumExplod(90001006)
ID = 90001005
ignoreHitPause = 1

[State -1, R, R: 2nd Right]
type = Explod
;we check to see if the user has input right recently, and has returned the stick to neutral
triggerAll = NumExplod(90001005) && NumExplod(90001006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90001016
;see the button explods above for an explanation of this ifElse statement. This statement only goes on the final
;input of any command, and should not go anywhere else in the command!
;We also are using a non-standard removeTime for this input, as dash commands in most games are only active
;for a short period of time (around 1-3 ticks).
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;Now for the reversed command:
;==============================================================================================

;=======================================<LEFT, LEFT>=========================================
[State -1, L, L: 1st Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90001054
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, L: Neutral]
type = Explod
triggerAll = NumExplod(90000004) && NumExplod(90001054)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 90001055
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove L, L: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000006) || NumExplod(90000009) || NumExplod(90000008) || NumExplod(90000007) || NumExplod(90000001)
trigger2 = !NumExplod(90001054)
ID = 90001055
ignoreHitPause = 1

[State -1, L, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90001055) && NumExplod(90001054)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90001064
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===================================<DOWN, UP (SUPER JUMP)>====================================
;==============================================================================================

;==============================================================================================
;Super jump commands can be done with any down directional input, followed by any up directional
;==============================================================================================

;=======================================<DOWN, UP>=========================================
[State -1, D, U: Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1
ID = 90000402
removeTime = 15
pauseMoveTime = 15
superMoveTime = 15
ignoreHitPause = 1

[State -1, D, U: Up]
type = Explod
triggerAll = NumExplod(90000402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger1 = Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger2 = Helper(90000005), command != "up"
anim = 1
ID = 90000408
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;=====================================<UP, UP/DOWN, DOWN>======================================
;==============================================================================================

;==============================================================================================
;Pretty similar to the Forward, Forward/Back, Back commands, only we don't need to worry about
;the player's facing or anything, since all the inputs are either down or up!

;Also of note is that any up/down direction may be used to activate this command (i.e., a UF, UF
;will still be considered a U, U command).
;==============================================================================================

;=======================================<UP, UP>=========================================
[State -1, U, U: 1st Up]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger1 = Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger2 = Helper(90000005), command != "up"
anim = 1
ID = 90000508
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, U, U: Neutral]
type = Explod
triggerAll = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009)) && NumExplod(90000508)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
anim = 1
ID = 90000505
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove U, U: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000004) || NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000006)
trigger2 = !NumExplod(90000508)
ID = 90000505
ignoreHitPause = 1

[State -1, U, U: 2nd Up]
type = Explod
triggerAll = NumExplod(90000505) && NumExplod(90000508)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger1 = Helper(90000005), command != "down"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger2 = Helper(90000005), command != "up"
anim = 1
ID = 90000518
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=========================================<DOWN,DOWN>==========================================
[State -1, D, D: 1st Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1
ID = 90000552
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, D: Neutral]
type = Explod
triggerAll = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003)) && NumExplod(90000552)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 90000555
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove D, D: Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000004) || NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009) || NumExplod(90000006)
trigger2 = !NumExplod(90000552)
ID = 90000555
ignoreHitPause = 1

[State -1, D, D: 2nd Down]
type = Explod
triggerAll = NumExplod(90000555) && NumExplod(90000552)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1
ID = 90000562
removeTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 3 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;==================================<(SPECIAL) DOWN, DOWN >=====================================
;==============================================================================================

;==============================================================================================
;This explod is for the special move variant of the D, D motion; the only difference between this
;and the one above is that this has a RemoveTime of 10, like every other special move, since it's
;designed to be used for special moves (as opposed to the earlier D, D command, which was for air
;dashing).
;==============================================================================================

[State -1, (special) D, D: 2nd Down]
type = Explod
triggerAll = NumExplod(90000555) && NumExplod(90000552)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1
ID = 90012602
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;+==================================<(SPECIAL) DOWN, UP >======================================
;==============================================================================================

[State -1, D, U: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90012702
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, U: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 1
ID = 90012752
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, D, U: Up]
type = Explod
triggerAll = NumExplod(90010002) || NumExplod(90010052)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
anim = 1
ID = 90012708
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;====================================<DOWN, DOWN, DOWN>========================================
;==============================================================================================

;==============================================================================================
;And this is just extending the principle futher, to a third down input! This is typically used
;as a super command.
;==============================================================================================

[State -1, D, D, D: 2nd Neutral]
type = Explod
triggerAll = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003)) && NumExplod(90012602)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 90032605
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove D, D, D: 2nd Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000004) || NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009) || NumExplod(90000006)
trigger2 = !NumExplod(90012602)
ID = 90032605
ignoreHitPause = 1

[State -1, D, D, D: 3rd Down]
type = Explod
triggerAll = NumExplod(90032605) && NumExplod(90012602)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "down" || Helper(90000005), command = "dfwd" || Helper(90000005), command = "dback"
trigger1 = Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "ufwd" || Helper(90000005), command = "uback"
trigger2 = Helper(90000005), command != "down"
anim = 1
ID = 90032602
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===================================<QUARTER CIRCLE DOWN>======================================
;==============================================================================================

;==============================================================================================
;This is the SFA2 style Zero Counter command. This is the first command in the system that uses
;a release directional input. However, this command works somewhat differently from the way pretty
;much every other command in this system works, so we're gonna avoid getting deep into discussion
;about anything here. Please see the following command (quarter-circle forward/back) for a basic
;look at how most release inputs work in this system.
;==============================================================================================


;================================<RIGHT, DOWN-RIGHT, DOWN>=====================================
[State -1, R, DR, D: Release Right]
type = Explod
;check to see if the Release Right Detector explod exists. If it exists and down is no longer being
;input, that means it was released!
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
;if right isn't currently being input by the user, then right was released!
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
;... but if right is currently being input by the user, AND there's another direction being input,
;then right is still considered to have been released.
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1
ID = 90007506
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, DR, D: Down-Right]
type = Explod
;the "Right" explod needs to exist before the next command in sequence is allowed
triggerAll = NumExplod(90007506)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90007503
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D: Down]
type = Explod
triggerAll = NumExplod(90007503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90007502
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<LEFT, DOWN-LEFT, DOWN>======================================
[State -1, L, DL, D: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1
ID = 90007554
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, DL, D: Down-Left]
type = Explod
triggerAll = NumExplod(90007554)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90007551
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D: Down]
type = Explod
triggerAll = NumExplod(90007551)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90007552
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===============================<QUARTER CIRCLE FORWARD/BACK>==================================
;==============================================================================================

;==============================================================================================
;The vast majority of all commands in fighting games allow the first input of any command to be
;a release input, so that you're allowed to hold the direction that the command starts with for
;however long you want, then input the rest of the command, and still get the move. This is why
;in MUGEN, people typically write all their character's commands as starting with a release input;
;however, things are a bit more complicated outside of MUGEN (and thus, more complicated in this
;buffer too). In most games, the window of time a player has to input the next command in sequence
;after performing a release input is shorter than the window of time they have to input the next
;command after a press input. For example, in Street Fighter III, if you want to perform a quarter-
;circle forward motion, and you press (or hold) the "down" direction, you will have 10 ticks to
;input "down-forward" and continue the command. But if instead you were to hold the "down" direction
;down for a few seconds before releasing it, you will have only 5 ticks to input "down-forward" to
;continue entering the command.

;The way this is translated to the EXPLODsive Buffering system is this: we have two separate explods
;for the first input of every command that uses a release directional input. One explod is created
;whenever the first input is entered, and has a RemoveTime of 10 (which is the same amount of time
;that most other directional explods use in this system); one other explod is also created whenever
;the direction of the first input is released: this has a RemoveTime of 5, which is generally what
;commercial fighting games use.

;Do note that not every game gives players the same input windows for every single command: for
;example, in Street Fighter Alpha 3 (on normal speed), press directional inputs all have a 10 tick
;input window, but the input window for the release directional input in a quarter-circle motion is
;6, while the input window for the release directional input in a forward, down, down-forward motion
;is only 4! There's a whole bunch of variance here, sometimes in the same game, and so it's best to check
;the source game of the character you're making (if applicable) to try and get an idea of what RemoveTime
;will be best for each of your commands.
;==============================================================================================

;================================<DOWN, DOWN-RIGHT, RIGHT>=====================================

;Since this is the press directional input for the first input, it has a RemoveTime of 10
[State -1, D, DR, R: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90010002
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

;And since this is the release directional input for the first input, it has a RemoveTime of only 5!
[State -1, D, DR, R: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 1
ID = 90010052
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, D, DR, R: Down-Right]
type = Explod
;Remember, we have to check to see if either the "press down" or "release down" explods exist!
triggerAll = NumExplod(90010002) || NumExplod(90010052)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90010003
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90010006
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<DOWN, DOWN-LEFT, LEFT>======================================
[State -1, D, DL, L: Press Down]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90010102
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L: Release Down]
type = Explod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
anim = 1
ID = 90010152
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90010102) || NumExplod(90010152)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90010101
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90010104
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===========================<DOUBLE QUARTER CIRCLE FORWARD/BACK>===============================
;==============================================================================================

;==============================================================================================
;This command is mostly identical to the QCF/QCB commands, but with different ID's; there are some
;important differences, however. Instead of repeating the entire first QCF/QCB command, we just
;(mostly) use the ones we already defined above!

;We do repeat the forward/backward input from the first QCF/QCB, though. This is because the final
;explod of the QCF/QCB command will persist through hitpause, which is not true for the QCFx2
;command: otherwise, you'd be able to input a QCF during a long hitpause, wait for the hitpause to
;end, and then input another QCF and still get a QCFx2 motion, and that's not how things are supposed
;to work!

;Also, do note that Capcom games use a command shortcut for QCFx2/QCBx2 motions; a D, DF, F, D, DF
;will work just as well as a D, DF, F, D, DF, F motion; if you want to replicate this behavior, all
;you have to do is check to see if either the repsective "DF/DB" or the "F/B" explods exist in the
;triggers for that move's ChangeState.
;==============================================================================================

;===========================<DOUBLE DOWN, DOWN-RIGHT, RIGHT>===============================
;this is almost identical to the D, DR, R: Right explod; the only difference is that it has a
;RemoveTime of 10 (with no additional ifElse statements), because it shouldn't persist through hitpause!
[State -1, D, DR, R, D, DR, R: 1st Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90030006
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, D, DR, R: 2nd Down]
type = Explod
triggerAll = NumExplod(90030006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90030002
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, D, DR, R: 2nd Down-Right]
type = Explod
triggerAll = NumExplod(90030002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90030003
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, D, DR, R: 2nd Right]
type = Explod
triggerAll = NumExplod(90030003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90030016
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;===========================<DOUBLE DOWN, DOWN-LEFT, LEFT>===============================
[State -1, D, DL, L, D, DL, L: 1st Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90030104
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, D, DL, L: 2nd Down]
type = Explod
triggerAll = NumExplod(90030104)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90030102
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, D, DL, L: 2nd Down-Left]
type = Explod
triggerAll = NumExplod(90030102)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90030101
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, D, DL, L: 2nd Left]
type = Explod
triggerAll = NumExplod(90030101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90030114
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;=====<QUARTER CIRCLE FORWARD, HALF CIRCLE BACK/QUARTER CIRCLE BACK, HALF CIRCLE FORWARD>======
;==============================================================================================

;==============================================================================================
;This is a command used mostly by SNK, and it has a few quirks compared to how Capcom approaches
;commands. For half-circle motions, SNK only checks for the cardinal inputs (i.e., the non-diagonal
;directions) to see if the user has successfully complated the move, and gives those cardinal inputs
;an extra-long input window (in KOF '98, for example, it's 16, compared to the 10 tick input window for
;normal commands) to compensate for the loss of the diagonal inputs.

;For the default EXPLODsive Buffering system, however, we have opted to allow diagonal inputs in
;these SNK-style half-circle commands, but to make them optional (because, to be quite honest, ignoring
;diagonal inputs entirely is pretty dumb!). What this ends up looking like is that the command can be
;completed only using cardinal inputs, but any diagonal inputs will still be cheked: any diagonal
;input will keep the command "alive" even if the cardinal input preceeding it has exhausted its input
;window.

;The way that translates to this explod system is that (for half-circle motions) we allow the user
;to skip the diagonal inputs: the "down" explod in a HCF command could be created if the "back"
;explod exists, e.g., instead of requiring the "down-back" explod to exist. However, we must also
;allow the "back" explod to be created if the "down-back" explod exists: this makes it so the diagonal
;inputs aren't just a waste of time; they will keep the command alive even if the previous cardinal
;direction explod has expired, which is exactly the same behavior that KOF has.

;To replicate the same behavior that SNK games use, simply delete the diagonal input explods, and increase
;the RemoveTime on each of the cardinal input explods.

;A final note: as with the QCFx2/QCBx2 commands, we use the parts of the earlier QCF/QCB command block
;instead of just repeating that code.
;==============================================================================================

;===============<DOWN, DOWN-RIGHT, RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>===================
[State -1, D, DR, R, DR, D, DL, L: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90032206
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Down-Right]
type = Explod
triggerAll = NumExplod(90032206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90032203
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Down]
type = Explod
triggerAll = NumExplod(90032203) || NumExplod(90032206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90032202
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90032202) || NumExplod(90032203)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90032201
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90032201) || NumExplod(90032202)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90032204
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;================<DOWN, DOWN-LEFT, LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>===================
[State -1, D, DL, L, DL, D, DR, R: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90032304
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Down-Left]
type = Explod
triggerAll = NumExplod(90032304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90032301
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Down]
type = Explod
triggerAll = NumExplod(90032301) || NumExplod(90032304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90032302
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Down-Right]
type = Explod
triggerAll = NumExplod(90032302) || NumExplod(90032301)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90032303
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, D, DR, R: Right]
type = Explod
triggerAll = NumExplod(90032303) || NumExplod(90032302)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90032306
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;=====<QUARTER CIRCLE FORWARD, DOWN-FORWARD, BACK/QUARTER CIRCLE BACK, DOWN-BACK, FORWARD>=====
;==============================================================================================

;==============================================================================================
;This is very, very similar to the preceding command, but it is a distinct command with its own
;quirks! This is typically used for Terry's Power Geyser super, among a few other moves. What
;makes this different from the QCF, HCB/QCB, HCF command is that although this command is officially
;referred to in move lists as "QCF, DF, B/QCB, DB, F", in KOF games, this command can (usually) skip
;straight from the starting QCF/QCB and proceed directly to the final input of the command (the
;command would here be rendered as "QCF, B"/"QCB, F"). But this can sometimes be weird: in KOF 2002
;this can only be done if  that final input in the QCF/QCB part of the command is held for at least
;two ticks (KOF 2002 is the first game in the series where the player only needs to enter an individual
;input for only one frame and still complete a command; previous games required the inputs to be held
;for at least two). In the Fatal Fury series, however, generally this either uses a motion that is
;actually "QCF, DF, B / QCB, DB, F" motion, or sometimes even a QCF, HCB/QCB, HCF motion. Point is,
;there's a ton of variance here!

;As with the previous command, we have opted to modify this for the default EXPLODsive Buffering system,
;in order to keep it relatively simple and tried to change the manner in which the command worked into
;something that made more sense (to us, at least). We have it set up so that this command can skip straight
;from the starting QCF/QCB and proceed directly to the final input of the command (the command would here
;be rendered as "QCF, B"/"QCB, F"). It also can be performed using a QCF, HCB/QCB, HCF motion, with
;the additional quirk that the user can proceed immediately to the final input of the command no matter
;where they are in the half circle motion. So, for example, the user could perform QCB, DB, D, F, and
;still get the move. What this ends up looking like translated to MUGEN code is that, for instance, the
;explod representing QCF, DF, B: DB is allowed to be created if an explod exists representing "D", or "DF",
;or even "F".

;As with the the QCF, HCB / QCB, HCF command, this can be made to accurate to the source game(s)
;by removing some or all of the non-diagonal (and also the "down") explods.
;==============================================================================================

;========================<DOWN, DOWN-RIGHT, RIGHT, DOWN-RIGHT, LEFT>===========================
[State -1, D, DR, R, DR, L: Right]
type = Explod
triggerAll = NumExplod(90010003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90032406
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Down-Right]
type = Explod
triggerAll = NumExplod(90032406)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90032403
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Down]
type = Explod
;the Down explod will be created if either (or both) the Right or Down-Right explods exist
triggerAll = NumExplod(90032406) || NumExplod(90032403)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90032402
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Down-Left]
type = Explod
;the Down-Left explod will be created if the Right, Down-Right, or Down explods exist
triggerAll = NumExplod(90032406) || NumExplod(90032403) || NumExplod(90032402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90032401
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DR, R, DR, L: Left]
type = Explod
;the Left explod will be created if the Right, Down-Right, Down, or Down-Left explods exist
triggerAll = NumExplod(90032406) || NumExplod(90032403) || NumExplod(90032402) || NumExplod(90032401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90032404
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=========================<DOWN, DOWN-LEFT, LEFT, DOWN-LEFT, RIGHT>============================
[State -1, D, DL, L, DL, R: Left]
type = Explod
triggerAll = NumExplod(90010101)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90032504
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Down-Left]
type = Explod
triggerAll = NumExplod(90032504)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90032501
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Down]
type = Explod
triggerAll = NumExplod(90032504) || NumExplod(90032501)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90032502
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Down-Right]
type = Explod
triggerAll = NumExplod(90032504) || NumExplod(90032501) || NumExplod(90032502)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90032503
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, D, DL, L, DL, R: Right]
type = Explod
triggerAll = NumExplod(90032504) || NumExplod(90032501) || NumExplod(90032502) || NumExplod(90032503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90032506
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;====================<FORWARD, DOWN, DOWN-FORWARD/BACK, DOWN, DOWN-BACK>=======================
;==============================================================================================

;==============================================================================================
;Nothing special here, just the standard dragon punch motion!
;==============================================================================================

;================================<RIGHT, DOWN, DOWN-RIGHT>=====================================
[State -1, R, D, DR: Press Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90010206
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, D, DR: Release Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1
ID = 90010256
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, (Press) R, D, DR: Down]
type = Explod
triggerAll = NumExplod(90010206)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90010202
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, (Press) R, D, DR: Down-Right]
type = Explod
triggerAll = NumExplod(90010202)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90010203
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, (Release) R, D, DR: Down]
type = Explod
triggerAll = NumExplod(90010256)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90010252
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, (Release) R, D, DR: Down-Right]
type = Explod
triggerAll = NumExplod(90010252)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90010253
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(90010006) && NumExplod(90010253)
ID = 90010253
ignoreHitPause = 1

[State -1, R, D, DR (shortcut): 1st Down-Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 99010203
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, D, DR (shortcut): Neutral]
type = Explod
triggerAll = NumExplod(90000003) && NumExplod(99010203)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 99010205
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove R, D, DR (shortcut): Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000004) || NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009) || NumExplod(90000006)
trigger2 = !NumExplod(99010203)
ID = 99010205
ignoreHitPause = 1

[State -1, R, D, DR (shortcut): 2nd Down-Right]
type = Explod
triggerAll = NumExplod(99010203) && NumExplod(99010205)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90010203
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;=================================<LEFT, DOWN, DOWN-LEFT>======================================
[State -1, L, D, DL: Press Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90010304
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, D, DL: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1
ID = 90010354
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, (Press) L, D, DL: Down]
type = Explod
triggerAll = NumExplod(90010304)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90010302
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, (Press) L, D, DL: Down-Left]
type = Explod
triggerAll = NumExplod(90010302)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90010301
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, (Release) L, D, DL: Down]
type = Explod
triggerAll = NumExplod(90010354)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90010352
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, (Release) L, D, DL: Down-Left]
type = Explod
triggerAll = NumExplod(90010352)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90010351
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(90010104) && NumExplod(90010351)
ID = 90010351
ignoreHitPause = 1

[State -1, L, D, DL (shortcut): 1st Down-Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 99010301
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, D, DL (shortcut): Neutral]
type = Explod
triggerAll = NumExplod(90000001) && NumExplod(99010301)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown" && Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback" && Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 99010305
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Remove L, D, DL (shortcut): Neutral]
type = RemoveExplod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000004) || NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009) || NumExplod(90000006)
trigger2 = !NumExplod(99010301)
ID = 99010305
ignoreHitPause = 1

[State -1, L, D, DL (shortcut): 2nd Down-Left]
type = Explod
triggerAll = NumExplod(99010301) && NumExplod(99010305)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90010301
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;=================================<HALF CIRCLE FORWARD/BACK>===================================
;==============================================================================================

;==============================================================================================
;As mentioned earlier, SNK games have command shortcuts for half-circle moves, allowing the user
;to only input cardinal directions and still complete the command. We have opted to use Capcom's
;method for the standard half circle comands here, but these can very easily be modified to use
;the SNK method!
;==============================================================================================

;========================<LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>============================
[State -1, L, DL, D, DR, R: Press Left]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90010404
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Release Left]
type = Explod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1
ID = 90010454
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Down-Left]
type = Explod
triggerAll = NumExplod(90010404) || NumExplod(90010454)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90010401
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Down]
type = Explod
triggerAll = NumExplod(90010401) || NumExplod(90010404) || NumExplod(90010454)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90010402
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Down-Right]
type = Explod
triggerAll = NumExplod(90010402) || NumExplod(90010401)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90010403
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, L, DL, D, DR, R: Right]
type = Explod
triggerAll = NumExplod(90010403) || NumExplod(90010402)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90010406
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;========================<RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>============================
[State -1, R, DR, D, DL, L: Press Right]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "fwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90010506
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Release Right]
type = Explod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
anim = 1
ID = 90010556
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Down-Right]
type = Explod
triggerAll = NumExplod(90010506) || NumExplod(90010556)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dfwd" && Helper(90000005), command != "back" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "ufwd" && Helper(90000005), command != "back" && Helper(90000005), command != "down"
anim = 1
ID = 90010503
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Down]
type = Explod
triggerAll = NumExplod(90010503) || NumExplod(90010506) || NumExplod(90010556)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "back" && Helper(90000005), command != "up" && Helper(90000005), command != "fwd"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "back" && Helper(90000005), command != "down" && Helper(90000005), command != "fwd"
anim = 1
ID = 90010502
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Down-Left]
type = Explod
triggerAll = NumExplod(90010502) || NumExplod(90010503)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "dback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "uback" && Helper(90000005), command != "fwd" && Helper(90000005), command != "down"
anim = 1
ID = 90010501
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, R, DR, D, DL, L: Left]
type = Explod
triggerAll = NumExplod(90010501) || NumExplod(90010502)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command = "back" && Helper(90000005), command != "fwd" && Helper(90000005), command != "up" && Helper(90000005), command != "down"
anim = 1
ID = 90010504
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;======================================<CHARGE DOWN, UP>=======================================
;==============================================================================================

;==============================================================================================
;This uses the exact same concept as the Back, Forward charge move, only things are much easier
;since we don't have to deal with switching sides and having to have mirrored commands!

;Do note that we use different variables [var(49) and var(50)] here.
;==============================================================================================

[State -1, Down Charge Increment]
type = VarAdd
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !AIlevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "holddown"
trigger2 = !AIlevel
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "holdup"
trigger3 = AIlevel
var(49) = 1
ignoreHitPause = 1

[State -1, Down Charge Reset]
type = VarSet
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "holddown" || Helper(90000005), command = "holdup"
trigger2 = !AILevel
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command != "holdup" || Helper(90000005), command = "holddown"
trigger3 = AILevel
trigger3 = StateNo = 0 || StateNo = 20 || (StateNo = 40 && Time = 1) || StateNo = 760
trigger4 = AILevel
trigger4 = (StateNo = [1000,4999]) && Time = 1
trigger5 = AILevel
trigger5 = (StateNo = [120,155]) && StateType != C
var(49) = 0
ignoreHitPause = 1

[State -1, Down Charge Buffer Activation]
type = VarSet
trigger1 = var(49) >= 45
var(50) = 16
ignoreHitPause = 1

[State -1, Down Charge Buffer Decrement]
type = VarAdd
trigger1 = var(49) < 45 && var(50) > 0
var(50) = -1

[State -1, Charge Down, Up: Up]
type = Explod
triggerAll = var(50) > 0
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "up" && Helper(90000005), command != "down")
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "down" && Helper(90000005), command != "up")
anim = 1
ID = 90010808
removeTime = var(50) + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = var(50) + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = var(50) + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1

[State -1, Charge Down, Up: Down (Custom Combo/Cancels)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command = "down" && Helper(90000005), command != "up"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" && Helper(90000005), command != "down"
anim = 1
ID = 90010812
removeTime = 10
pauseMoveTime = 10
superMoveTime = 10
ignoreHitPause = 1

[State -1, Charge Down, Up: Release Down (Custom Combo/Cancels)]
type = Explod
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
triggerAll = NumExplod(90000002)
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
anim = 1
ID = 90010812
removeTime = 5
pauseMoveTime = 5
superMoveTime = 5
ignoreHitPause = 1

[State -1, Charge Down, Up: Up (Custom Combo/Cancels)]
type = Explod
triggerAll = NumExplod(90010812)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command = "up" && Helper(90000005), command != "down")
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = (Helper(90000005), command = "down" && Helper(90000005), command != "up")
anim = 1
ID = 90010818
removeTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
pauseMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
superMoveTime = 10 + ifElse(HitPauseTime, HitPauseTime - 1, 0)
ignoreHitPause = 1



;==============================================================================================
;===============================<REMOVE DIRECTIONAL DETECTORS>=================================
;==============================================================================================

;==============================================================================================
;This block of RemoveExplods gets rid of any active release detector explods; if the direction in
;question isn't currently being input, or if the direction is being input but other directions are
;also being input, then the detector explod is removed, having served its purpose as a detector.
;This must go at the very bottom of the entire EXPLODsive Buffering system code!
;==============================================================================================

[State -1, Remove Down Detector]
type = RemoveExplod
triggerAll = NumExplod(90000002)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
id = 90000002
ignoreHitPause = 1

[State -1, Remove Down-Right Detector]
type = RemoveExplod
triggerAll = NumExplod(90000003)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
id = 90000003
ignoreHitPause = 1

[State -1, Remove Right Detector]
type = RemoveExplod
triggerAll = NumExplod(90000006)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000006
ignoreHitPause = 1

[State -1, Remove Up-Right Detector]
type = RemoveExplod
triggerAll = NumExplod(90000009)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "fwd" && Helper(90000005), command != "holdfwd")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000009
ignoreHitPause = 1

[State -1, Remove Up Detector]
type = RemoveExplod
triggerAll = NumExplod(90000008)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = Helper(90000005), command != "up" && Helper(90000005), command != "holdup"
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = Helper(90000005), command != "down" && Helper(90000005), command != "holddown"
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "back" || Helper(90000005), command = "holdback" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000008
ignoreHitPause = 1

[State -1, Remove Up-Left Detector]
type = RemoveExplod
triggerAll = NumExplod(90000007)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000007
ignoreHitPause = 1

[State -1, Remove Left Detector]
type = RemoveExplod
triggerAll = NumExplod(90000004)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "back" && Helper(90000005), command != "holdback"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown" || Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
id = 90000004
ignoreHitPause = 1

[State -1, Remove Down-Left Detector]
type = RemoveExplod
triggerAll = NumExplod(90000001)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = (Helper(90000005), command != "down" && Helper(90000005), command != "holddown") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger2 = !NumExplod(92828282) && !NumExplod(92468246)
trigger2 = Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
trigger2 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger2 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger3 = NumExplod(92828282) || NumExplod(92468246)
trigger3 = (Helper(90000005), command != "up" && Helper(90000005), command != "holdup") || (Helper(90000005), command != "back" && Helper(90000005), command != "holdback")
trigger4 = NumExplod(92828282) || NumExplod(92468246)
trigger4 = Helper(90000005), command = "up" || Helper(90000005), command = "holdup"
trigger4 = Helper(90000005), command = "back" || Helper(90000005), command = "holdback"
trigger4 = Helper(90000005), command = "fwd" || Helper(90000005), command = "holdfwd" || Helper(90000005), command = "down" || Helper(90000005), command = "holddown"
id = 90000001
ignoreHitPause = 1



;==============================================================================================
;==============================<REMOVE RELEASE BUTTON DETECTORS>===============================
;==============================================================================================

;==============================================================================================
;Same principle here as with the directional release detector explods.
;==============================================================================================

[State -1, Remove x Detector]
type = RemoveExplod
triggerAll = NumExplod(90000201)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "x" && Helper(90000005), command != "holdx"
ID = 90000201
ignoreHitPause = 1

[State -1, Remove y Detector]
type = RemoveExplod
triggerAll = NumExplod(90000211)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "y" && Helper(90000005), command != "holdy"
ID = 90000211
ignoreHitPause = 1

[State -1, Remove z Detector]
type = RemoveExplod
triggerAll = NumExplod(90000221)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "z" && Helper(90000005), command != "holdz"
ID = 90000221
ignoreHitPause = 1

[State -1, Remove a Detector]
type = RemoveExplod
triggerAll = NumExplod(90000231)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "a" && Helper(90000005), command != "holda"
ID = 90000231
ignoreHitPause = 1

[State -1, Remove b Detector]
type = RemoveExplod
triggerAll = NumExplod(90000241)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "b" && Helper(90000005), command != "holdb"
ID = 90000241
ignoreHitPause = 1

[State -1, Remove c Detector]
type = RemoveExplod
triggerAll = NumExplod(90000251)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "c" && Helper(90000005), command != "holdc"
ID = 90000251
ignoreHitPause = 1

[State -1, Remove start Detector]
type = RemoveExplod
triggerAll = NumExplod(90000194)
triggerAll = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005), command != "start" && Helper(90000005), command != "holdstart"
ID = 90000194
ignoreHitPause = 1


;==============================================================================================
;==========================================<GUARDING>==========================================
;==============================================================================================

;==============================================================================================
;Here, we override the MUGEN's default guard system when the character is airborne, and add our
;own triggers. This will ensure that the player can always block as long as they are holding a
;direction away from the opponent. This block of code also adds "chicken guarding", which is allowing
;the player to air guard by holding not only back, but down-back and up-back.

;It is also recommended that you also override the guard states (120, 130, 131, 132, 140, 150, 151,
;152, 154, 155) with an updated version that uses the EXPLODsive buffering system. A copy of those
;fixed states can be found here: http://network.mugenguild.com/jmorphman/resources/EXPLODsiveBuffering_GuardStates.txt
;==============================================================================================

[State -1, AssertSpecial: NoAirGuard]
type = AssertSpecial
trigger1 = P2Dist x < 0 && StateType = A
trigger1 = !AILevel
flag = NoAirGuard
ignoreHitPause = 0

[State -1, Air Blocking]
type = ChangeState
triggerAll = !AILevel
triggerAll = InGuardDist
triggerAll = StateType = A
triggerAll = ctrl
triggerAll = !(StateNo = [120,155])
triggerAll = !NumExplod(90000004) && !NumExplod(90000006) && !NumExplod(90000001) && !NumExplod(90000003) && !NumExplod(90000007) && !NumExplod(90000009)
trigger1 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
trigger2 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000001)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000003))
trigger3 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000007)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000009))
value = 120

;These three state controllers are only used in three siuations: when the character has landed from a jump
;after switching sides (to get around a MUGEN bug where a character's directions don't switch until a
;tick has passed, after they've landed from a jump and switched sides); if one of the control reversing
;explods is active, or if (on a keyboard) two opposite directions are held simultaneously. For the first
;two cases, guarding should still be possible, but in the third, guarding should be disabled. In all other
;situations, MUGEN's default guard behavior works well enough!

;The first state controller disables MUGEN's normal guard system if any of of these scenarios occur.
[State -1, AssertSpecial: No StandGuard and NoCrouchGuard]
type = AssertSpecial
triggerAll = !AILevel
trigger1 = P2Dist x < 0 && StateType != A
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger3 = command = "holdback" && command = "holdfwd" || command = "holdup" && command = "holddown"
flag = NoStandGuard
flag2 = NoCrouchGuard
ignoreHitPause = 0

;The next two state controllers serve to manually direct the character into a guard state, but only
;if the one of the first two situations occurs; the third scenario should not trigger guarding because
;of the conflicting directional inputs.
[State -1, Stand Blocking]
type = ChangeState
triggerAll = !AILevel
triggerAll = InGuardDist
triggerAll = (P2Dist x < 0 && StateType != A) || NumExplod(94646464) || NumExplod(92468246)
triggerAll = StateType = S
triggerAll = ctrl
trigger1 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
value = 120

[State -1, Crouch Blocking]
type = ChangeState
triggerAll = !AILevel
triggerAll = InGuardDist
triggerAll = (P2Dist x < 0 && StateType != A) || NumExplod(94646464) || NumExplod(92468246)
triggerAll = StateType = C
triggerAll = ctrl
trigger1 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000001)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000003))
value = 120



;==============================================================================================
;==============================================================================================
;=============================<End of EXPLODsive Buffering System>=============================
;==============================================================================================
;==============================================================================================

;[State -1, Tick Fix]
;type = CtrlSet
;triggerAll = !ctrl
;trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
;trigger2 = (StateNo = [200,499]) && !AnimTime
;trigger3 = ((StateNo = [760,762]) || (StateNo = [700,715]) || (StateNo = [900,905])) && !AnimTime
;trigger4 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
;value = 1

[State -1, Roll Forward]
type = ChangeState
triggerAll = 0
value = 710
triggerAll = !AILevel
;command = "a+x"
triggerAll = NumExplod(90000230) && NumExplod(90000200)
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))
;command = "holdfwd"
trigger1 = ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2Dist x < 0, command = "holdback", command = "holdfwd"), ifElse(P2Dist x < 0, command = "holdfwd", command = "holdback"))
trigger2 = var(20) && var(4)

[State -1, Roll Backward]
type = ChangeState
triggerAll = 0
value = 715
triggerAll = !AILevel
;command = "a+x"
triggerAll = NumExplod(90000230) && NumExplod(90000200)
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))
;command = "holdback"
trigger1 = ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2Dist x < 0, command = "holdfwd", command = "holdback"), ifElse(P2Dist x < 0, command = "holdback", command = "holdfwd"))

[State -1, Dodge]
type = ChangeState
triggerAll = 0
value = 700
triggerAll = !AILevel
;command = "a+x"
triggerAll = NumExplod(90000230) && NumExplod(90000200)
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Trinity Geyser / Rising Force]
type = ChangeState
value = ifElse(var(40), 3400, 3300)
triggerAll = !AILevel
;command = "QCF, QCF"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90030016)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90030114))
;x + y / x + z / y + z
triggerAll = (NumExplod(90000220) || NumExplod(90000225))
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 5000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, MAX Buster Wolf / High Angle Geyser]
type = ChangeState
triggerAll = 0
value = ifElse(var(40), 3250, 3150)
triggerAll = !AILevel
;command = "QCF, QCF"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90030016)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90030114))
;a + b / a + c / b + c
triggerAll = ((NumExplod(90000230) || NumExplod(90000235)) && (NumExplod(90000220) || NumExplod(90000225)))
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(7) || var(8)

[State -1, MAX Power Geyser]
type = ChangeState
triggerAll = 0
value = 3060
triggerAll = !AILevel
;command = "QCB, DB, F"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90032506)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90032404))
;x + y / x + z / y + z
triggerAll = (NumExplod(90000220) || NumExplod(90000225))
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(7) || var(8)

[State -1, Buster Wolf / High Angle Geyser]
type = ChangeState
value = ifElse(var(40), 3200, 3100)
triggerAll = !AILevel
;command = "QCF, QCF"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90030016)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90030114))
;a / b / c
triggerAll = ((NumExplod(90000200) || NumExplod(90000205)) || (NumExplod(90000210) || NumExplod(90000215)))
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(7)

[State -1, Power Geyser]
type = ChangeState
value = 3000
triggerAll = !AILevel
;command = "QCB, DB, F"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90030114)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90030016))
;x / y / z
triggerAll = ((NumExplod(90000200) || NumExplod(90000205)) || (NumExplod(90000210) || NumExplod(90000215)))
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(7)

[State -1, EX Power Dunk]
type = ChangeState
value = 1430
triggerAll = !AILevel
;command = "F, D, DF"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && (NumExplod(90010203) || NumExplod(90010253))) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && (NumExplod(90010301) || NumExplod(90010351)))
;a + b / a + c / b + c
triggerAll = ((NumExplod(90000230) || NumExplod(90000235)) && (NumExplod(90000220) || NumExplod(90000225)))
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(6)

[State -1, EX Rising Tackle (EX)]
type = ChangeState
value = 1230
triggerAll = !AILevel
;command = "F, D, DF"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && (NumExplod(90010203) || NumExplod(90010253))) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && (NumExplod(90010301) || NumExplod(90010351)))
;x + y / x + z / y + z
triggerAll = (NumExplod(90000220) || NumExplod(90000225))
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(6)

[State -1, EX Rising Tackle (Normal)]
type = ChangeState
value = 1230
triggerAll = !AILevel
;command = "[charge] D, U"
triggerAll = NumExplod(90010808) || ((var(20) > 0 || (StateNo = [1000,4999])) && NumExplod(90010818))
;x + y / x + z / y + z
triggerAll = (NumExplod(90000220) || NumExplod(90000225))
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && !var(40)
triggerAll = Power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(6)

[State -1, EX Fire Kick / Power Charge]
type = ChangeState
value = ifElse(var(40), 1630, 1530)
triggerAll = !AILevel
;command = "HCF"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010406)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010504))
;a + b / a + c / b + c
triggerAll = ((NumExplod(90000230) || NumExplod(90000235)) && (NumExplod(90000220) || NumExplod(90000225)))
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(6)

[State -1, EX Crack Shoot]
type = ChangeState
value = ifElse(var(40), 1340, 1330)
triggerAll = !AILevel
;command = "QCB"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010104)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010006))
;a + b / a + c / b + c
triggerAll = ((NumExplod(90000230) || NumExplod(90000235)) && (NumExplod(90000220) || NumExplod(90000225)))
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(6)

[State -1, EX Burn Knuckle]
type = ChangeState
value = 1130
triggerAll = !AILevel
;command = "QCB"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010104)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010006))
;x + y / x + z / y + z
triggerAll = (NumExplod(90000220) || NumExplod(90000225))
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(6)

[State -1, EX Power Wave]
type = ChangeState
value = 1030
triggerAll = !AILevel
;command = "QCF"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;x + y / x + z / y + z
triggerAll = (NumExplod(90000220) || NumExplod(90000225))
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 500 && var(20) <= 60
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(6)

[State -1, Power Dunk]
type = ChangeState
value = 1400
triggerAll = !AILevel
;command = "F, D, DF"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && (NumExplod(90010203) || NumExplod(90010253))) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && (NumExplod(90010301) || NumExplod(90010351)))
;a / b / c
triggerAll = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(6)

[State -1, Rising Tackle (EX)]
type = ChangeState
value = 1200
triggerAll = !AILevel
;command = "F, D, DF"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && (NumExplod(90010203) || NumExplod(90010253))) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && (NumExplod(90010301) || NumExplod(90010351)))
;x / y / z
triggerAll = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(6)

[State -1, Rising Tackle (Normal)]
type = ChangeState
value = 1200
triggerAll = !AILevel
;command = "[charge] D, U"
triggerAll = NumExplod(90010808) || ((var(20) > 0 || (StateNo = [1000,4999])) && NumExplod(90010818))
;x / y / z
triggerAll = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && !var(40)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(6)

[State -1, Fire Kick / Power Charge]
type = ChangeState
value = ifElse(var(40), 1600, 1500)
triggerAll = !AILevel
;command = "HCF"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010406)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010504))
;a / b / c
triggerAll = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(6)

[State -1, Crack Shoot]
type = ChangeState
value = 1300
triggerAll = !AILevel
;command = "QCB"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010104)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010006))
;a / b / c
triggerAll = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(6)

[State -1, Quick Burn]
type = ChangeState
value = 1120
triggerAll = !AILevel
;command = "QCB"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010104)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010006))
;x
triggerAll = NumExplod(90000200) || NumExplod(90000205)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && var(40)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(6)

[State -1, Burn Knuckle]
type = ChangeState
value = 1100
triggerAll = !AILevel
;command = "QCB"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010104)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010006))
;x / y / z
triggerAll = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(6)

[State -1, Round Wave]
type = ChangeState
value = 1020
triggerAll = !AILevel
;command = "QCF"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;z
triggerAll = NumExplod(90000220) || NumExplod(90000225)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && !var(40)
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(6)

[State -1, Power Wave]
type = ChangeState
value = 1000
triggerAll = !AILevel
;command = "QCF"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;x / y / z
triggerAll = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])
trigger2 = var(6)

[State -1, Zero Counter]
type = ChangeState
value = 750
triggerAll = !AILevel
triggerAll = StateNo = 150 || StateNo = 152
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && !var(20)
;command = "412p" || command = "412k"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90007552)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90007502))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
;a / b / c
trigger2 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerAll = !AILevel
;command = "c+z"
triggerAll = NumExplod(90000250) && NumExplod(90000220)
trigger1 = RoundState = 2
trigger1 = Power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = !AILevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power < const(data.Power) && Power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Dash Forward/Run]
type = ChangeState
value = 110
triggerAll = !AILevel
;command = "FF"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001016)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001064))
trigger1 = roundstate = 2 && StateType = S
trigger1 = ctrl

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = !AILevel
;command = "BB"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001064)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001016))
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = !AILevel
trigger1 = command = "ar_grab"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Rising Upper]
type = ChangeState
value = 428
triggerAll = !AILevel
;command = "holdfwd" && command = "z"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000003)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000001))
triggerAll = NumExplod(90000220) || command = "z"
triggerAll = StateType != A && !NumProjID(131035)
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
;AR chain: lighter normal that connected (A > B > C)
trigger3 = var(42) > 0 && var(42) < 3

[State -1, Standing Far/Close Heavy Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist X) < 35) * 5
triggerAll = !AILevel
;command != "holddown" && command = "z"
triggerAll = (!NumExplod(90000002) && !NumExplod(90000003) && !NumExplod(90000001)) && (NumExplod(90000220) || command = "z")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
;AR chain: lighter normal that connected (A > B > C)
trigger3 = var(42) > 0 && var(42) < 3

[State -1, Standing Far/Close Heavy Kick]
type = ChangeState
value = 250 + (Abs(P2BodyDist X) < 30) * 5
triggerAll = !AILevel
;command != "holddown" && command = "c"
triggerAll = (!NumExplod(90000002) && !NumExplod(90000003) && !NumExplod(90000001)) && (NumExplod(90000250) || command = "c")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Hammer Punch]
type = ChangeState
value = 218
triggerAll = !AILevel
;command = "holdfwd" && command = "y"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
triggerAll = NumExplod(90000210) || command = "y"
triggerAll = StateType != A && !NumProjID(131035) && var(40)
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
;AR chain: lighter normal that connected (A > B > C)
trigger3 = var(42) > 0 && var(42) < 2

[State -1, Standing Far/Close Medium Punch]
type = ChangeState
value = 210 + (Abs(P2BodyDist X) < 25) * 5
triggerAll = !AILevel
;command != "holddown" && command = "y"
triggerAll = (!NumExplod(90000002) && !NumExplod(90000003) && !NumExplod(90000001)) && (NumExplod(90000210) || command = "y")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
;AR chain: lighter normal that connected (A > B > C)
trigger3 = var(42) > 0 && var(42) < 2

[State -1, Charge Kick]
type = ChangeState
value = 248
triggerAll = !AILevel
;command = "holdfwd" && command = "b"
triggerAll = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
triggerAll = NumExplod(90000240) || command = "b"
triggerAll = StateType != A && !NumProjID(131035) && !var(40)
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far/Close Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist X) < 25) * 5
triggerAll = !AILevel
;command != "holddown" && command = "b"
triggerAll = (!NumExplod(90000002) && !NumExplod(90000003) && !NumExplod(90000001)) && (NumExplod(90000240) || command = "b")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far/Close Light Punch]
type = ChangeState
value = 200 + (Abs(P2BodyDist X) < 10) * 5
triggerAll = !AILevel
;command != "holddown" && command = "x"
triggerAll = (!NumExplod(90000002) && !NumExplod(90000003) && !NumExplod(90000001)) && (NumExplod(90000200) || command = "x")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 400 || StateNo = 430) && Time >= 5
trigger3 = var(4)

[State -1, Standing Far/Close Light Kick]
type = ChangeState
value = 230 + (Abs(P2BodyDist X) < 25) * 5
triggerAll = !AILevel
;command != "holddown" && command = "a"
triggerAll = (!NumExplod(90000002) && !NumExplod(90000003) && !NumExplod(90000001)) && (NumExplod(90000230) || command = "a")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 400 || StateNo = 430) && Time >= 5
trigger3 = var(4)

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = !AILevel
;command = "holddown" && command = "z"
triggerAll = (NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000001)) && (NumExplod(90000220) || command = "z")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
;AR chain: lighter normal that connected (A > B > C)
trigger3 = var(42) > 0 && var(42) < 3

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = !AILevel
;command = "holddown" && command = "c"
triggerAll = (NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000001)) && (NumExplod(90000250) || command = "c")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = !AILevel
;command  ="holddown" && command = "y"
triggerAll = (NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000001)) && (NumExplod(90000210) || command = "y")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
;AR chain: lighter normal that connected (A > B > C)
trigger3 = var(42) > 0 && var(42) < 2

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = !AILevel
;command = "holddown" && command = "b"
triggerAll = (NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000001)) && (NumExplod(90000240) || command = "b")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = !AILevel
;command = "holddown" && command = "x"
triggerAll = (NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000001)) && (NumExplod(90000200) || command = "x")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 400 || StateNo = 430) && Time >= 5
trigger3 = var(4)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = !AILevel
;command = "holddown" && command = "a"
triggerAll = (NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000001)) && (NumExplod(90000230) || command = "a")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 400 || StateNo = 430) && Time >= 5
trigger3 = var(4)

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = !AILevel
;command = "z"
triggerAll = NumExplod(90000220) || command = "z"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)
;AR chain: lighter normal that connected (A > B > C)
trigger3 = var(42) > 0 && var(42) < 3

[State -1, Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = !AILevel
;command = "c"
triggerAll = NumExplod(90000250) || command = "c"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = !AILevel
;command = "y"
triggerAll = NumExplod(90000210) || command = "y"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)
;AR chain: lighter normal that connected (A > B > C)
trigger3 = var(42) > 0 && var(42) < 2

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = !AILevel
;command = "b"
triggerAll = NumExplod(90000240) || command = "b"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = !AILevel
;command = "x"
triggerAll = NumExplod(90000200) || command = "x"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = !AILevel
;command = "a"
triggerAll = NumExplod(90000230) || command = "y"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = !AILevel
;command = "start"
triggerAll = NumExplod(90000195) || command = "start"
triggerAll = StateType != A
triggerAll = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(6)



;==============================================================================================
;===========================================< A.I >============================================
;==============================================================================================

[State -1, Stance]
type = ChangeState
value = 0
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = StateNo = 40 && !Time && Random < (1000 * (AILevel ** 2 / 64.0))
trigger1 = !(EnemyNear, MoveType = A && P2BodyDist x < 150 && EnemyNear, HitDefAttr = SC, AT)
trigger1 = !(StateNo = 0 && Time >= 1 && PrevStateNo = 1405 && EnemyNear, BackEdgeBodyDist <= 10)
trigger1 = !(EnemyNear, StateNo = 800)
ctrl = 1

;Combo Section
[State -1, Waiting State]
type = ChangeState
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !AnimTime
trigger1 = ((StateNo = 200 || StateNo = 205 || StateNo = 400 || StateNo = 430) && MoveGuarded) || ((StateNo = 205 || StateNo = 410 || StateNo = 1120) && MoveHit)
trigger2 = StateNo = 900
trigger3 = StateNo = 1105 || StateNo = 1205 || StateNo = 1405
trigger4 = StateNo = 1305 && var(51) = 1 && P2MoveType = H
trigger5 = StateNo = 1540 && var(52) = 1 && P2MoveType = H
trigger6 = StateNo = 1630 && var(53) = 1 && P2MoveType = H
trigger7 = StateNo = 3110 && var(54) = 1 && P2MoveType = H
value = 0
ctrl = 0

[State -1, Waiting Reset]
type = ChangeState
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = StateNo = 0 && !(ctrl)
trigger1 = (PrevStateNo = 200 || PrevStateNo = 205 || PrevStateNo = 400 || PrevStateNo = 430) && Time > 2
trigger2 = PrevStateNo = 900 && Time > 8
trigger3 = (PrevStateNo = 1105 || PrevStateNo = 1120 || PrevStateNo = 1205 || PrevStateNo = 1405) && Time > 1
trigger4 = PrevStateNo = 1305 && Time > 15
trigger5 = PrevStateNo = 1540 && Time > 15
trigger6 = PrevStateNo = 1630 && Time > 40
trigger7 = PrevStateNo = 3110 && Time > 15
value = 0
ctrl = 1

[State -1, Jump]
type = ChangeState
value = 40
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl && EnemyNear, MoveType = A && P2BodyDist x < 125 && EnemyNear, HitDefAttr = SC, AT
trigger2 = StateNo = 0 && Time >= 1 && PrevStateNo = 1405 && EnemyNear, BackEdgeBodyDist <= 10
trigger3 = ctrl && EnemyNear, StateNo = 800

[State -1, Guard]
type = ChangeState
value = 120
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && InGuardDist
trigger1 = ctrl && (StateNo != [120, 155]) && !var(20)
trigger1 = !var(26) || P2BodyDist x >= 40
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger1 = StateType != A || P2StateType = A
trigger1 = ifElse(StateType = A, ((var(3) != [1, 2]) || StateNo = 5210), 1)
trigger1 = Random < (ifElse((P2StateNo = [200, 699]), 100, ifElse((P2StateNo = [1000, 2999]), 333, 1000)) * (AILevel ** 2 / 64.0))

[State -1, Fall Recovery (Ground)]
type = ChangeState
value = 5200
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && GetHitVar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Fall Recovery (Air)]
type = ChangeState
value = 5210
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && CanRecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))

;Custom Combo Section

[State -1, Standing Far/Close Light Punch (Custom Combo)]
type = ChangeState
value = 200 + (Abs(P2BodyDist X) < 10) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && var(20)
triggerAll = (P2BodyDist x = [0, 54]) && P2StateType = S
trigger1 = StateNo = 0 && Time >= 1 && PrevStateNo = 900

[State -1, Crouching Light Punch (Custom Combo)]
type = ChangeState
value = 400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && var(20)
triggerAll = (P2BodyDist x = [0, 60]) && P2StateType != A && P2StateType != L
trigger1 = StateNo = 0 && Time >= 1 && PrevStateNo = 900

[State -1, Crouching Medium Punch (Custom Combo)]
type = ChangeState
value = 410
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && var(20)
triggerAll = (P2BodyDist x = [0, 63]) && P2StateType != A && P2StateType != L
trigger1 = StateNo = 0 && Time >= 1 && PrevStateNo = 900

[State -1, Crouching Medium Kick (Custom Combo)]
type = ChangeState
value = 440
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && var(20)
triggerAll = (P2BodyDist x = [0, 70]) && P2StateType != A && P2StateType != L
trigger1 = StateNo = 0 && Time >= 1 && PrevStateNo = 900

[State -1, Standing Far/Close Heavy Kick (Custom Combo)]
type = ChangeState
value = 250 + (Abs(P2BodyDist X) < 30) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && var(20)
triggerAll = (P2BodyDist x = [0, 100]) && P2StateType != A && P2StateType != L
trigger1 = (StateNo = 200 || StateNo = 205 || (StateNo = 250 && AnimElemTime(7) > 0) || StateNo = 255 || StateNo = 400 || StateNo = 410 || StateNo = 440) && var(4) && MoveHit

[State -1, Fire Kick (Custom Combo)]
type = ChangeState
value = 1500
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && !var(40)
triggerAll = !var(16) && (var(20) = [1, 24])
triggerAll = P2BodyDist x >= 28 && P2StateType != A && P2StateType != L
trigger1 = (StateNo = 250 || StateNo = 255) && var(4) && MoveHit

[State -1, Power Charge (Custom Combo)]
type = ChangeState
value = 1600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && var(40)
triggerAll = !var(16) && (var(20) = [1, 24])
triggerAll = P2BodyDist x >= 28 && P2StateType != A && P2StateType != L
trigger1 = (StateNo = 250 || StateNo = 255) && var(4) && MoveHit

;End of Custom Combo Section

[State -1, Rising Force]
type = ChangeState
value = 3400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && var(40)
triggerAll = Power >= 5000 && !var(20)
triggerAll = !var(16) && (var(15) < 1 || var(20)) || (StateNo = [1000, 2999])
triggerAll = P2BodyDist x >= 50 && (P2StateType = S || P2StateType = C)
triggerAll = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, NA, SA, HA)
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120, 155])
triggerAll = (EnemyNear, Time >= 8) && (EnemyNear, AnimTime <= -22) && !(EnemyNear, vel x)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (500 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [130, 131]) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, MAX High Angle Geyser (Combo)]
type = ChangeState
triggerAll = 0
value = 3250
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && var(40)
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = (!var(16) && (var(15) < 1 || var(20))) || (StateNo = [1000, 2999])
trigger1 = (P2BodyDist x = [0, 100]) && P2StateType = A && P2MoveType = H
trigger1 = var(7) && MoveHit && StateNo = 1600
trigger2 = (P2BodyDist x = [0, 100]) && P2StateType != A && P2StateType != L
trigger2 = var(6) && MoveHit && (StateNo = 200 || StateNo = 400 || StateNo = 430) && P2BodyDist x >= 55
trigger3 = (P2BodyDist x = [0, 100]) && P2StateType != A && P2StateType != L
trigger3 = var(6) && MoveHit && (StateNo = 210 || StateNo = 218 || StateNo = 220 || StateNo = 235 || StateNo = 420)
trigger4 = (P2BodyDist x = [0, 100]) && P2StateType != A && P2StateType != L
trigger4 = var(6) && MoveHit && StateNo = 410 && P2BodyDist x >= 16
trigger5 = (P2BodyDist x = [0, 100]) && P2StateType != A && P2StateType != L
trigger5 = var(6) && MoveHit && (StateNo = 215 || StateNo = 245 || StateNo = 440) && P2BodyDist x >= 36
trigger6 = (P2BodyDist x = [0, 100]) && P2StateType != A && P2StateType != L
trigger6 = var(6) && MoveHit && ((StateNo = 225 && AnimElemTime(4) > 0) || StateNo = 255 || StateNo = 428) && P2BodyDist x >= 40

[State -1, High Angle Geyser (Combo)]
type = ChangeState
value = 3200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && var(40)
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = (!var(16) && (var(15) < 1 || var(20))) || (StateNo = [1000, 2999])
trigger1 = (P2BodyDist x = [0, 100]) && P2StateType = A && P2MoveType = H
trigger1 = var(7) && MoveHit && StateNo = 1600
trigger2 = (P2BodyDist x = [0, 100]) && P2StateType != A && P2StateType != L
trigger2 = var(6) && MoveHit && (StateNo = 200 || StateNo = 400 || StateNo = 430) && P2BodyDist x >= 55
trigger3 = (P2BodyDist x = [0, 100]) && P2StateType != A && P2StateType != L
trigger3 = var(6) && MoveHit && (StateNo = 210 || StateNo = 218 || StateNo = 220 || StateNo = 235 || StateNo = 420)
trigger4 = (P2BodyDist x = [0, 100]) && P2StateType != A && P2StateType != L
trigger4 = var(6) && MoveHit && StateNo = 410 && P2BodyDist x >= 16
trigger5 = (P2BodyDist x = [0, 100]) && P2StateType != A && P2StateType != L
trigger5 = var(6) && MoveHit && (StateNo = 215 || StateNo = 245 || StateNo = 440) && P2BodyDist x >= 36
trigger6 = (P2BodyDist x = [0, 100]) && P2StateType != A && P2StateType != L
trigger6 = var(6) && MoveHit && ((StateNo = 225 && AnimElemTime(4) > 0) || StateNo = 255 || StateNo = 428) && P2BodyDist x >= 40

[State -1, Buster Wolf (Combo)]
type = ChangeState
value = 3100
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && !var(40)
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 100]) && P2StateType != A && P2StateType != L
trigger1 = var(7) && MoveHit && (StateNo = 200 || StateNo = 400 || StateNo = 430) && ((P2BodyDist x = [38, 42]) || (P2BodyDist x >= 38 && ((EnemyNear, BackEdgeBodyDist < 10) || Power >= 1500)))
trigger2 = var(7) && MoveHit && StateNo = 230 && (P2BodyDist x < 43 || (EnemyNear, BackEdgeBodyDist < 10) || Power >= 1500)
trigger3 = var(7) && MoveHit && StateNo = 210 && (P2BodyDist x < 23 || (EnemyNear, BackEdgeBodyDist < 10) || Power >= 1500)
trigger4 = var(7) && MoveHit && (StateNo = 220 || StateNo = 420) && (P2BodyDist x < 5 || (EnemyNear, BackEdgeBodyDist < 10) || Power >= 1500)
trigger5 = var(7) && MoveHit && StateNo = 1500 && (P2BodyDist x < 45 || (EnemyNear, BackEdgeBodyDist < 10) || Power >= 1500)

[State -1, Power Geyser (Juggle)]
type = ChangeState
value = 3000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 100]) && P2StateType = A && P2MoveType = H
trigger1 = StateNo = 0 && PrevStateNo = 1540 && P2BodyDist x < 100

[State -1, Power Geyser (Combo)]
type = ChangeState
value = 3000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 90]) && P2StateType != A && P2StateType != L
trigger1 = var(7) && MoveHit && StateNo = 210 && (P2BodyDist x = [23, 70]) && (EnemyNear, Life < 176)
trigger2 = var(7) && MoveHit && (StateNo = 220 || StateNo = 420) && (P2BodyDist x = [5, 55]) && (EnemyNear, Life < 176)
trigger3 = var(7) && MoveHit && StateNo = 1500 && (P2BodyDist x = [45, 90]) && (EnemyNear, Life < 176)

[State -1, Power Geyser (Neutral)]
type = ChangeState
value = 3000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [13 + (10 * EnemyNear, vel x), 113 + (10 * EnemyNear, vel x)]) && (P2Dist y = [-100 - (10 * EnemyNear, vel y), (10 * EnemyNear, vel y)]) && EnemyNear, vel y && P2StateType = A
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (125 * (AILevel ** 2 / 64.0))

[State -1, EX Power Charge (Combo)]
type = ChangeState
value = 1630
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && var(40)
triggerAll = Power >= 500 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 100]) && P2StateType != A && P2StateType != L
trigger1 = var(6) && MoveHit && StateNo = 410 && (P2BodyDist x = [16, 35])
trigger2 = var(6) && MoveHit && (StateNo = 215 || StateNo = 245 || StateNo = 440) && P2BodyDist x < 36
trigger3 = var(6) && MoveHit && ((StateNo = 225 && AnimElemTime(4) > 0) || StateNo = 255 || StateNo = 428) && (P2BodyDist x < 40 || (EnemyNear, BackEdgeBodyDist <= 10))

[State -1, EX Fire Kick (Juggle)]
type = ChangeState
value = 1530
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && !var(40)
triggerAll = Power >= 500 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 92]) && P2StateType = A && P2MoveType = H
trigger1 = StateNo = 0 && PrevStateNo = 3110

[State -1, EX Fire Kick (Combo)]
type = ChangeState
value = 1530
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && !var(40)
triggerAll = Power >= 500 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 68]) && P2StateType != A && P2StateType != L && (Power < 1000 || var(54))
trigger1 = var(6) && MoveHit && (StateNo = 215 || StateNo = 245 || StateNo = 410 || StateNo = 440)
trigger2 = var(6) && MoveHit && ((StateNo = 225 && AnimElemTime(4) > 0) || StateNo = 255 || StateNo = 428)

[State -1, EX Crack Shoot (Juggle)]
type = ChangeState
value = 1340
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && var(40)
triggerAll = Power >= 500 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (EnemyNear, StateNo = 1648) && P2Dist Y > -85 && EnemyNear, vel y > 0 && P2StateType = A && P2MoveType = H
trigger1 = StateNo = 0 && PrevStateNo = 1630

[State -1, EX Crack Shoot (Mix)]
type = ChangeState
value = 1330
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && !var(40)
triggerAll = Power >= 500 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 75]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && NumHelper(1035) && Random < (ifElse(P2StateType = C, 750, 25) * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && (StateNo = 215 || StateNo = 245 || StateNo = 440) && P2BodyDist x < 50 && Random < (ifElse(P2StateType = C, 750, 25) * (AILevel ** 2 / 64.0))
trigger3 = var(6) && MoveGuarded && (StateNo = 225 || StateNo = 255 || StateNo = 428) && P2BodyDist x < 30 && Random < (ifElse(P2StateType = C, 750, 25) * (AILevel ** 2 / 64.0))

[State -1, EX Rising Tackle]
type = ChangeState
value = 1230
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 500 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 30]) && (P2Dist y = [-100, 0]) && P2MoveType = A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && (StateNo = [200, 699]) && Time <= 2 && Random < (750 * (AILevel ** 2 / 64.0))

[State -1, EX Power Wave (Set-Play)]
type = ChangeState
value = 1030
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 500 && var(20) <= 60
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType = L || P2MoveType = H
trigger1 = StateNo = 0 && (PrevStateNo = 1105 || PrevStateNo = 1205) && Random < (ifElse((Power >= 2000), 1000, ifElse((Power >= 1500), 500, 250)) * (AILevel ** 2 / 64.0))

[State -1, EX Power Wave (Mix)]
type = ChangeState
value = 1030
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 500 && var(20) <= 60
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 100]) && P2StateType != A && P2StateType != L
trigger1 = var(6) && MoveGuarded && StateNo = 410 && (P2BodyDist x = [16, 38])
trigger2 = var(6) && MoveGuarded && (StateNo = 215 || StateNo = 245 || StateNo = 440)
trigger3 = var(6) && MoveGuarded && ((StateNo = 225 && AnimElemTime(4) > 0) || StateNo = 255 || StateNo = 428)

[State -1, EX Power Wave (Neutral)]
type = ChangeState
value = 1030
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 500 && var(20) <= 60
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 200 && P2Dist y >= -75 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (125 * (AILevel ** 2 / 64.0))

[State -1, Power Charge (Juggle)]
type = ChangeState
value = 1600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && var(40)
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = (EnemyNear, StateNo = 1648) && P2Dist Y > -85 && EnemyNear, vel y > 0 && P2StateType = A && P2MoveType = H
trigger1 = StateNo = 0 && Time >= 36 && PrevStateNo = 1630 && Power >= 1000
trigger2 = StateNo = 0 && PrevStateNo = 1305

[State -1, Power Charge (Combo)]
type = ChangeState
value = 1600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && var(40)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 56]) && P2StateType != A && P2StateType != L
trigger1 = var(6) && MoveHit && (StateNo = 200 || StateNo = 400 || StateNo = 430) && ((P2BodyDist x = [38, 55]) || (P2BodyDist x >= 38 && (EnemyNear, BackEdgeBodyDist <= 10)))
trigger2 = var(6) && MoveHit && StateNo = 235 && (P2BodyDist x < 56 || (EnemyNear, BackEdgeBodyDist <= 10))
trigger3 = var(6) && MoveHit && StateNo = 410 && ((P2BodyDist x = [16, 34]) || (P2BodyDist x >= 16 && (EnemyNear, BackEdgeBodyDist <= 10)))
trigger4 = var(6) && MoveHit && (StateNo = 215 || StateNo = 245 || StateNo = 440) && (P2BodyDist x < 35 || (EnemyNear, BackEdgeBodyDist <= 10))
trigger5 = var(6) && MoveHit && ((StateNo = 225 && AnimElemTime(4) > 0) || StateNo = 255 || StateNo = 428) && (P2BodyDist x < 39 || (EnemyNear, BackEdgeBodyDist <= 10))

[State -1, Fire Kick (Mix)]
type = ChangeState
value = 1500
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && !var(40)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 75]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && NumHelper(1035) && Random < (ifElse(P2StateType = S, 750, 25) * (AILevel ** 2 / 64.0))

[State -1, Fire Kick (Combo)]
type = ChangeState
value = 1500
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && !var(40)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 68]) && P2StateType != A && P2StateType != L
trigger1 = var(6) && MoveHit && (StateNo = 200 || StateNo = 400 || StateNo = 430) && P2BodyDist x >= 38
trigger2 = var(6) && MoveHit && StateNo = 235
trigger3 = var(6) && MoveHit && StateNo = 410 && ((P2BodyDist x = [16, 38]) || (P2BodyDist x >= 16 && Power >= 1000))
trigger4 = var(6) && MoveHit && (StateNo = 215 || StateNo = 245 || StateNo = 440) && (P2BodyDist x < 38 || P2BodyDist x >= 54 || Power >= 1000)
trigger5 = var(6) && MoveHit && ((StateNo = 225 && AnimElemTime(4) > 0) || StateNo = 255 || StateNo = 428) && (P2BodyDist x < 20 || Power >= 1000)

[State -1, Power Dunk (Juggle)]
type = ChangeState
value = 1400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = (P2BodyDist x = [-10, 30]) && P2StateType = A && P2MoveType = H
trigger1 = (EnemyNear, BackEdgeBodyDist < 25)
trigger1 = StateNo = 0 && Time >= 12 && (PrevStateNo = 1540 || PrevStateNo = 3110)
trigger2 = (P2BodyDist x = [-10, 65]) && P2Dist Y > -55 && EnemyNear, vel y > 0 && P2StateType = A && P2MoveType = H
trigger2 = StateNo = 0 && PrevStateNo = 1630 && Power < 500
trigger3 = StateNo = 0 && Time >= 12 && PrevStateNo = 1305

[State -1, Crack Shoot (Neutral)]
type = ChangeState
value = 1300
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [155, 165]) && P2StateType != A && P2StateType != L
trigger1 = ctrl && Random < (ifElse((NumHelper(1005) || NumHelper(1035)), 250, 125) * (AILevel ** 2 / 64.0))

[State -1, Quick Burn (Set-Play / Combo / Guard-String)]
type = ChangeState
value = 1120
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && var(40)
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = (P2BodyDist x = [0, 32]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100, 101])) && ((EnemyNear, StateNo = [5120, 5121]) || (EnemyNear, StateNo = [5200, 5201])) && EnemyNear, AnimTime >= -18
trigger2 = (P2BodyDist x = [ifElse(Power >= 500, 10, 0), 18]) && P2StateType != A && P2StateType != L
trigger2 = var(6) && MoveHit && (StateNo = 200 || StateNo = 205 || StateNo = 235 || StateNo = 400 || StateNo = 430)
trigger3 = (P2BodyDist x = [0, 32]) && P2StateType != A && P2StateType != L
trigger3 = var(6) && MoveGuarded && ((StateNo = 225 && AnimElemTime(4) > 0) || StateNo = 255 || StateNo = 428) && Random < (125 * (AILevel ** 2 / 64.0))

[State -1, Burn Knuckle (Juggle)]
type = ChangeState
value = ifElse(Power >= 500 && var(20) <= 60, 1130, 1100)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 117]) && P2StateType = A && P2MoveType = H
triggerAll = !(EnemyNear, BackEdgeBodyDist < 25) || P2BodyDist x > 30
trigger1 = StateNo = 0 && (PrevStateNo = 1540 || PrevStateNo = 3110)

[State -1, Burn Knuckle (Combo)]
type = ChangeState
value = 1100
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 100]) && P2StateType != A && P2StateType != L
trigger1 = var(6) && MoveHit && (StateNo = 215 || StateNo = 245 || StateNo = 410 || StateNo = 440) && P2BodyDist x >= 38
trigger2 = var(6) && MoveHit && ((StateNo = 225 && AnimElemTime(4) > 0) || StateNo = 255 || StateNo = 428) && P2BodyDist x >= 20

[State -1, Burn Knuckle (Neutral)]
type = ChangeState
value = ifElse(Power >= 500 && var(20) <= 60, 1130, 1100)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 125 && P2StateType = A
trigger1 = ctrl && (NumHelper(1005) || NumHelper(1035)) && Random < (ifElse(NumHelper(1035), 750, 25) * (AILevel ** 2 / 64.0))

[State -1, Round Wave (Mix)]
type = ChangeState
value = 1020
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && !var(40)
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 50]) && P2StateType != A && P2StateType != L
trigger1 = var(6) && MoveGuarded && (StateNo = 225 || StateNo = 255 || StateNo = 428) && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Power Wave (Neutral)]
type = ChangeState
value = 1000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 150 && P2Dist y >= -75 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [130, 131]) && Random < (500 * (AILevel ** 2 / 64.0))

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && (StateType != A || (vel x > 0 && vel y >= 0))
triggerAll = Power >= 1000 && !var(20)
triggerAll = (P2BodyDist x = [0, 50]) && (P2Dist y = [-50, 50]) && (EnemyNear, vel y >= 0)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && (EnemyNear, StateNo = [200, 699]) && Random < (750 * (AIlevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && (PrevStateNo = 700 || PrevStateNo = 710 || PrevStateNo = 715 || PrevStateNo = 760) && Random < (750 * (AIlevel ** 2 / 64.0))

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = P2StateType != A && P2StateType != L && (EnemyNear, StateNo != [5200, 5201])
triggerAll = P2Dist x >= 0 && P2BodyDist x < 35 && P2Dist y = 0
triggerAll = !(EnemyNear, StateNo = 40 && (EnemyNear, Anim != [0, 29]) && (EnemyNear, StateNo = [5020, 5040]) && EnemyNear, HitFall = 0)
triggerAll = EnemyNear, GetHitVar(HitTime) <= 1
trigger1 = ctrl && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateNo = 0 && (PrevStateNo = 200 || PrevStateNo = 205 || PrevStateNo = 400 || PrevStateNo = 430)

[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = AILevel && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 2500 && var(20) <= 60
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0, 50]) && (Life < 0.5 * LifeMax)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power < const(data.power) && !var(20)
trigger1 = ctrl && Power < const(data.power) && Power < PowerMax && !var(20) && PrevStateNo != 5120
trigger1 = !InGuardDist && P2BodyDist x >= 180 && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Roll Forward]
type = ChangeState
value = 710
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [90, 100])

[State -1, Dodge]
type = ChangeState
value = 700
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [0, 50])
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26) && Random < (ifElse((StateNo = [100,101]), 750, 25) * (AIlevel ** 2 / 64.0))

[State -1, Dash Forward]
type = ChangeState
value = 110
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
trigger1 = P2BodyDist x > 25 && ((P2StateType = A && P2MoveType = H) || P2StateType = L || (EnemyNear, StateNo = [5200, 5201]))
trigger1 = ctrl && Random < (1000 * (AILevel ** 2 / 64.0))
trigger2 = P2BodyDist x > 100 && P2StateType != A && P2StateType != L && !(EnemyNear, vel x > 0) && !InGuardDist
trigger2 = (ctrl || (StateNo = [130, 131])) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = AILevel && NumEnemy && !var(59)
triggerAll = RoundState = 2 && StateType = S
triggerAll = ctrl && (StateNo != [100, 106]) && var(20) <= 150 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && BackEdgeDist >= 80 && (P2BodyDist x = [80, 120]) && (EnemyNear, vel x)
trigger1 = Random < (ifElse((EnemyNear, HitDefAttr = SC, AT), 250, 25) * (AILevel ** 2 / 64.0))

[State -1, Standing Close Heavy Kick]
type = ChangeState
value = 250 + (Abs(P2BodyDist X) < 30) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 30]) && P2StateType != A && P2StateType != L && (EnemyNear, StateNo != [5200, 5201])
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || (StateNo = [100,101])) && (EnemyNear, StateNo = [200, 599]) && P2MoveType = I && (EnemyNear, ctrl = 0) && (EnemyNear, AnimTime < -2)

[State -1, Standing Far Heavy Kick]
type = ChangeState
value = 250 + (Abs(P2BodyDist X) < 30) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [85, 95]) && P2StateType = S && (EnemyNear, StateNo != [5200, 5201])
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Standing Close Heavy Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist X) < 35) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 35]) && P2StateType != A && P2StateType != L && (EnemyNear, StateNo != [5200, 5201])
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || (StateNo = [100,101])) && (EnemyNear, StateNo = [200, 599]) && P2MoveType = I && (EnemyNear, ctrl = 0) && (EnemyNear, AnimTime < -3)

[State -1, Standing Far Heavy Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist X) < 35) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [35, 75]) && P2StateType = S && (EnemyNear, StateNo != [5200, 5201])
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Rising Upper]
type = ChangeState
value = 428
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 28 + (6 * EnemyNear, vel x)]) && (P2Dist y = [-115 - (6 * EnemyNear, vel y), (6 * EnemyNear, vel y)]) && P2StateType = A
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Rising Upper]
type = ChangeState
value = 428
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 44 + (4 * EnemyNear, vel x)]) && (P2Dist y = [-80 - (4 * EnemyNear, vel y), (4 * EnemyNear, vel y)]) && P2StateType = A
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 70]) && P2StateType != A && P2StateType != L && (EnemyNear, StateNo != [5200, 5201])
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [75, 85]) && P2StateType != A && P2StateType != L && (EnemyNear, StateNo != [5200, 5201])
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Standing Close Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist X) < 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 25]) && P2StateType != A && P2StateType != L && (EnemyNear, StateNo != [5200, 5201])
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || (StateNo = [100,101])) && (EnemyNear, StateNo = [200, 599]) && P2MoveType = I && (EnemyNear, ctrl = 0) && (EnemyNear, AnimTime < -2)

[State -1, Standing Far Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist X) < 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [70, 90]) && P2StateType = S && (EnemyNear, StateNo != [5200, 5201])
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Hammer Punch]
type = ChangeState
value = 218
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035) && var(40)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [100, 110]) && P2StateType != A && P2StateType != L && (EnemyNear, StateNo != [5200, 5201])
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (ifElse(P2StateType = C, 250, 25) * (AILevel ** 2 / 64.0))

[State -1, Standing Close Medium Punch]
type = ChangeState
value = 210 + (Abs(P2BodyDist X) < 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 25]) && P2StateType != A && P2StateType != L && (EnemyNear, StateNo != [5200, 5201])
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || (StateNo = [100,101])) && (EnemyNear, StateNo = [200, 599]) && P2MoveType = I && (EnemyNear, ctrl = 0) && (EnemyNear, AnimTime < -2)

[State -1, Standing Far Medium Punch]
type = ChangeState
value = 210 + (Abs(P2BodyDist X) < 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [25, 64]) && P2StateType = S && (EnemyNear, StateNo != [5200, 5201])
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 63]) && P2StateType != A && (P2StateType != L || (EnemyNear, StateNo = [5120, 5121]))
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (125 * (AILevel ** 2 / 64.0)) && (EnemyNear, StateNo != [5120, 5121]) && (EnemyNear, StateNo != [5200, 5201])
trigger2 = StateNo = 0 && EnemyNear, GetHitVar(HitTime) >= 2 && (EnemyNear, StateNo != [5120, 5121]) && (EnemyNear, StateNo != [5200, 5201])
trigger3 = StateNo = 0 && EnemyNear, GetHitVar(HitTime) >= 1 && (EnemyNear, StateNo = [130, 131])
trigger4 = (ctrl || (StateNo = [100,101])) && (EnemyNear, StateNo = [200, 599]) && P2MoveType = I && (EnemyNear, ctrl = 0) && (EnemyNear, AnimTime < -2)
trigger5 = (ctrl || (StateNo = [100,101])) && ((EnemyNear, StateNo = [5120, 5121]) || (EnemyNear, StateNo = [5200, 5201])) && EnemyNear, AnimTime = -2 && Random < (125 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 70]) && P2StateType != A && P2StateType != L && (EnemyNear, StateNo != [5200, 5201])
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || (StateNo = [100,101])) && (EnemyNear, StateNo = [200, 599]) && P2MoveType = I && (EnemyNear, ctrl = 0) && (EnemyNear, AnimTime < -3)

[State -1, Standing Close Light Punch]
type = ChangeState
value = 200 + (Abs(P2BodyDist X) < 10) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 10]) && P2StateType = S && (EnemyNear, StateNo != [5200, 5201])
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time = 5 && MoveHit
trigger3 = (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time = 5 && MoveGuarded
trigger4 = (ctrl || (StateNo = [100,101])) && (EnemyNear, StateNo = [200, 599]) && P2MoveType = I && (EnemyNear, ctrl = 0) && (EnemyNear, AnimTime < -1)

[State -1, Standing Far Light Punch]
type = ChangeState
value = 200 + (Abs(P2BodyDist X) < 10) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [11, 54]) && P2StateType = S && (EnemyNear, StateNo != [5200, 5201])
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time = 5 && MoveHit
trigger3 = (ctrl || (StateNo = [100,101])) && (EnemyNear, StateNo = [200, 599]) && P2MoveType = I && (EnemyNear, ctrl = 0) && (EnemyNear, AnimTime < -2)

[State -1, Standing Close Light Kick]
type = ChangeState
value = 230 + (Abs(P2BodyDist X) < 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 25]) && P2StateType != A && P2StateType != L && (EnemyNear, StateNo != [5200, 5201])
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || (StateNo = [100,101])) && (EnemyNear, StateNo = [200, 599]) && P2MoveType = I && (EnemyNear, ctrl = 0) && (EnemyNear, AnimTime < -2)

[State -1, Standing Far Light Kick]
type = ChangeState
value = 230 + (Abs(P2BodyDist X) < 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [25, 87]) && P2StateType = S && (EnemyNear, StateNo != [5200, 5201])
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 60]) && P2StateType != A && P2StateType != L && (EnemyNear, StateNo != [5200, 5201])
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time = 5 && MoveHit
trigger3 = (ctrl || (StateNo = [100,101])) && (EnemyNear, StateNo = [200, 599]) && P2MoveType = I && (EnemyNear, ctrl = 0) && (EnemyNear, AnimTime < -2)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0, 55]) && P2StateType != A && (P2StateType != L || (EnemyNear, StateNo = [5120, 5121]))
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (ifElse(P2StateType = S, 500, 125) * (AILevel ** 2 / 64.0)) && (EnemyNear, StateNo != [5120, 5121]) && (EnemyNear, StateNo != [5200, 5201])
trigger2 = (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time = 5 && MoveHit
trigger3 = (ctrl || (StateNo = [100,101])) && ((EnemyNear, StateNo = [5120, 5121]) || (EnemyNear, StateNo = [5200, 5201])) && EnemyNear, AnimTime = -2

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [-30, 60])
trigger1 = ctrl && (var(3) = 0 || var(3) = 3) && var(2) = 30 && Random < (750 * (AILevel ** 2 / 64.0))
trigger2 = ctrl && (var(3) = 0 || var(3) = 3) && var(2) = 32
trigger3 = ctrl && (var(3) = 1 || var(3) = 2) && var(2) = 20 && Random < (750 * (AILevel ** 2 / 64.0))
trigger4 = ctrl && (var(3) = 1 || var(3) = 2) && var(2) = 22