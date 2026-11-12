;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s
;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, a
time = 16

[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, b
time = 16

[Command]
name=  "412k" ;Zero Counter
command = ~B, DB, D, c
time = 16

[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, ~a
time = 16

[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, ~b
time = 16

[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, ~c
time = 16

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
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+x
time = 1

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

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

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
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
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
name = "hold_s"
command = /s
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

[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;---------------------------------------------------------------------------
;Release Direction
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

;--------------------------------------------------------------------------
;Release Button
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
;---------------------------------------------------------------------------
;Other
[Command]
name = "highjump"
command = $D, $U
time = 15
;---------------------------------------------------------------------------
;Abstract Reordered: A/B/C = light/medium/heavy (C = EX), X = Kamui Junketsu, Y = grab, Z = parry, A+B+C = burst
[Command]
name = "Gut Sniper"
command = ~F, B, F, B, a+b
time = 32

[Command]
name = "Gut Sniper"
command = ~F, B, F, B, b+c
time = 32

[Command]
name = "Gut Sniper"
command = ~F, B, F, B, a+c
time = 32

[Command]
name = "Hyper Life Fiber Blast"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "Hyper Life Fiber Blast Max"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "Hyper Life Fiber Blast Air"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "Hyper Life Fiber Blast Air Max"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "Hyper Uppercut"
command = ~D, DF, F, D, DF, F, b+c
time = 30

[Command]
name = "Hyper Uppercut Max"
command = ~D, DF, F, D, DF, F, b+c
time = 30

[Command]
name = "Hyper Blade Dash"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[Command]
name = "Hyper Blade Dash Max"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[Command]
name = "Hyper Bakuzan Barrage"
command = ~D, DB, B, D, DB, B, b+c
time = 30

[Command]
name = "Hyper Bakuzan Barrage Max"
command = ~D, DB, B, D, DB, B, b+c
time = 30

[Command]
name = "Hyper Life Fiber Slash"
command = ~F, DF, D, DB, B, F, a+b
time = 30

[Command]
name = "Hyper Life Fiber Slash Max"
command = ~F, DF, D, DB, B, F, a+b
time = 30

[Command]
name = "Life Fiber Burst"
command = ~F, DF, D, DB, B, F, b+c
time = 30

[Command]
name = "Life Fiber Burst Max"
command = ~F, DF, D, DB, B, F, b+c
time = 30

[Command]
name = "Hyper Bakuzan Strike"
command = ~D, D, b+c
time = 30

[Command]
name = "Hyper Bakuzan Strike Max"
command = ~D, D, b+c
time = 30

[Command]
name = "Life Fiber Blast"
command = ~D, DF, F, a
time = 20

[Command]
name = "Life Fiber Blast"
command = ~D, DF, F, b
time = 20

[Command]
name = "Life Fiber Blast EX"
command = ~D, DF, F, c
time = 20

[Command]
name = "Life Fiber Blast Air"
command = ~D, DF, F, a
time = 20

[Command]
name = "Life Fiber Blast Air"
command = ~D, DF, F, b
time = 20

[Command]
name = "Life Fiber Blast Air EX"
command = ~D, DF, F, c
time = 20

[Command]
name = "Blade Dash"
command = ~D, DB, B, a
time = 20

[Command]
name = "Blade Dash"
command = ~D, DB, B, b
time = 20

[Command]
name = "Blade Dash EX"
command = ~D, DB, B, c
time = 20

[Command]
name = "Blade Dash Air"
command = ~D, DB, B, a
time = 20

[Command]
name = "Blade Dash Air"
command = ~D, DB, B, b
time = 20

[Command]
name = "Blade Dash Air EX"
command = ~D, DB, B, c
time = 20

[Command]
name = "Uppercut"
command = ~F, D, DF, a
time = 20

[Command]
name = "Uppercut"
command = ~F, D, DF, b
time = 20

[Command]
name = "Uppercut EX"
command = ~F, D, DF, c
time = 20

[Command]
name = "Bakuzan Barrage"
command = ~B, D, DB, a
time = 20

[Command]
name = "Bakuzan Barrage"
command = ~B, D, DB, b
time = 20

[Command]
name = "Bakuzan Barrage EX"
command = ~B, D, DB, c
time = 20

[Command]
name = "Bakuzan Barrage Air"
command = ~B, D, DB, a
time = 20

[Command]
name = "Bakuzan Barrage Air"
command = ~B, D, DB, b
time = 20

[Command]
name = "Bakuzan Barrage Air EX"
command = ~B, D, DB, c
time = 20

[Command]
name = "Life Fiber Slash"
command = ~B, DB, D, DF, F, a
time = 20

[Command]
name = "Life Fiber Slash"
command = ~B, DB, D, DF, F, b
time = 20

[Command]
name = "Life Fiber Slash EX"
command = ~B, DB, D, DF, F, c
time = 20

[Command]
name = "Bakuzan Strike"
command = ~D, D, a
time = 20

[Command]
name = "Bakuzan Strike"
command = ~D, D, b
time = 20

[Command]
name = "Bakuzan Strike EX"
command = ~D, D, c
time = 20

[Command]
name = "412p"
command = ~B, DB, D, a
time = 15

[Command]
name = "412p"
command = ~B, DB, D, b
time = 15

[Command]
name = "412p"
command = ~B, DB, D, c
time = 15

[Command]
name = "ar_kamui"
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


[Statedef -1]

;---------------------------------------------------------------------------
;Abstract Reordered: Blood gauge (fvar(34), 0-1000). Fills from damage she deals and takes (not during Kamui).
;Full gauge + X = Kamui Junketsu (her MAX mode, state 770): 12 s of more damage, less damage taken, free EX moves,
;and the Max version of every super. fvar(35) = opponent's life last tick, fvar(36) = her life last tick.
[State -1, AR blood round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
fvar(34) = 0

[State -1, AR blood from damage dealt]
type = VarAdd
triggerall = !ishelper && RoundState = 2 && var(20) <= 0 && NumEnemy
trigger1 = (EnemyNear, Life) < fvar(35)
fvar(34) = (fvar(35) - (EnemyNear, Life)) * 1.2
ignorehitpause = 1

[State -1, AR blood from damage taken]
type = VarAdd
triggerall = !ishelper && RoundState = 2 && var(20) <= 0
trigger1 = Life < fvar(36)
fvar(34) = (fvar(36) - Life) * 1.5
ignorehitpause = 1

[State -1, AR blood clamp]
type = VarSet
triggerall = !ishelper
trigger1 = fvar(34) > 1000
fvar(34) = 1000
ignorehitpause = 1

[State -1, AR blood last life]
type = VarSet
triggerall = !ishelper
trigger1 = NumEnemy
fvar(35) = EnemyNear, Life
ignorehitpause = 1

[State -1, AR blood own life]
type = VarSet
triggerall = !ishelper
trigger1 = 1
fvar(36) = Life
ignorehitpause = 1

;Abstract Reordered: mechanic meter HUD - Kuroko's MAGIC CIRCUIT bar, fill in the parry colour,
;bottom of the screen (P1 left, P2 right). Only the look changed; the meter logic is untouched.
[State -1, AR meter HUD frame P1]
type = Explod
triggerall = !IsHelper
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
triggerall = !IsHelper
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
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7791) = 0
trigger1 = var(20) <= 0 && fvar(34) < 1000
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
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7795) = 0
trigger1 = var(20) <= 0 && fvar(34) >= 1000
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
triggerall = !IsHelper
triggerall = TeamSide = 1
trigger1 = NumExplod(7796) = 0
trigger1 = var(20) > 0
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
triggerall = !IsHelper
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
triggerall = !IsHelper
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
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7791) = 0
trigger1 = var(20) <= 0 && fvar(34) < 1000
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
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7795) = 0
trigger1 = var(20) <= 0 && fvar(34) >= 1000
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
triggerall = !IsHelper
triggerall = TeamSide = 2
trigger1 = NumExplod(7796) = 0
trigger1 = var(20) > 0
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
triggerall = !IsHelper
trigger1 = NumExplod(7791)
trigger1 = !(var(20) <= 0 && fvar(34) < 1000)
ID = 7791
ignorehitpause = 1

[State -1, AR meter HUD off 7795]
type = RemoveExplod
triggerall = !IsHelper
trigger1 = NumExplod(7795)
trigger1 = !(var(20) <= 0 && fvar(34) >= 1000)
ID = 7795
ignorehitpause = 1

[State -1, AR meter HUD off 7796]
type = RemoveExplod
triggerall = !IsHelper
trigger1 = NumExplod(7796)
trigger1 = !(var(20) > 0)
ID = 7796
ignorehitpause = 1

[State -1, AR meter HUD scale 7791]
type = ModifyExplod
triggerall = !IsHelper
trigger1 = NumExplod(7791)
ID = 7791
scale = 0.5 * (ifelse((fvar(34) / 1000.0) < 0, 0, ifelse((fvar(34) / 1000.0) > 1, 1, (fvar(34) / 1000.0)))) + 0.00005, .5
ignorehitpause = 1

[State -1, AR meter HUD scale 7795]
type = ModifyExplod
triggerall = !IsHelper
trigger1 = NumExplod(7795)
ID = 7795
scale = 0.5 * (1) + 0.00005, .5
ignorehitpause = 1

[State -1, AR meter HUD scale 7796]
type = ModifyExplod
triggerall = !IsHelper
trigger1 = NumExplod(7796)
ID = 7796
scale = 0.5 * (ifelse((var(20) / 720.0) < 0, 0, ifelse((var(20) / 720.0) > 1, 1, (var(20) / 720.0)))) + 0.00005, .5
ignorehitpause = 1

[State -1, AR Kamui]
type = ChangeState
value = 770
triggerall = !ishelper
triggerall = command = "ar_kamui"
triggerall = RoundState = 2 && StateType != A
triggerall = fvar(34) >= 1000 && var(20) <= 0
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = [200,499]) && MoveContact

[State -1, AR Kamui (CPU)]
type = ChangeState
value = 770
triggerall = !ishelper && AIlevel
triggerall = RoundState = 2 && StateType != A
triggerall = fvar(34) >= 1000 && var(20) <= 0
trigger1 = ctrl && Random < 40
trigger2 = (StateNo = [200,499]) && MoveHit && Random < 300

;---------------------------------------------------------------------------
;Abstract Reordered: burst (Kamijo's) - A+B+C while being hit, recharges in 75 s (fvar(30))
[State -1, AR burst round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
fvar(30) = 0

[State -1, AR burst recharge]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = fvar(30) > 0
fvar(30) = -1
ignorehitpause = 1

;Abstract Reordered: comeback - once a combo has done more than 15% of max life, every further hit
;knocks half a second (30 ticks) off the burst cooldown. fvar(31) = life when the combo started, fvar(33) = life last tick
[State -1, AR burst comeback]
type = VarAdd
triggerall = !ishelper
triggerall = fvar(30) > 0
trigger1 = movetype = H
trigger1 = Life < fvar(33)
trigger1 = fvar(31) - Life > LifeMax * 0.15
fvar(30) = -30
ignorehitpause = 1

[State -1, AR burst comeback clamp]
type = VarSet
triggerall = !ishelper
trigger1 = fvar(30) < 0
fvar(30) = 0
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

;Abstract Reordered: burst HUD - Touma's BURST gauge, recoloured, just under the lifebar.
;fvar(30) = cooldown ticks (4500 = just used, 0 = ready). Anims 9660-9668, explod IDs = anims.
[State -1, AR burst gauge 9668 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9668) = 0
trigger1 = fvar(30) = 0
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
trigger1 = fvar(30) = 0
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
trigger1 = fvar(30) > 3750
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
trigger1 = fvar(30) <= 3750 && fvar(30) > 3000
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
trigger1 = fvar(30) <= 3000 && fvar(30) > 2250
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
trigger1 = fvar(30) <= 2250 && fvar(30) > 1500
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
trigger1 = fvar(30) <= 1500 && fvar(30) > 750
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
trigger1 = fvar(30) <= 750 && fvar(30) > 0
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
trigger1 = fvar(30) > 3750
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
trigger1 = fvar(30) = 0
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
trigger1 = fvar(30) = 0
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
trigger1 = fvar(30) > 3750
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
trigger1 = fvar(30) <= 3750 && fvar(30) > 3000
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
trigger1 = fvar(30) <= 3000 && fvar(30) > 2250
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
trigger1 = fvar(30) <= 2250 && fvar(30) > 1500
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
trigger1 = fvar(30) <= 1500 && fvar(30) > 750
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
trigger1 = fvar(30) <= 750 && fvar(30) > 0
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
trigger1 = fvar(30) > 3750
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
trigger1 = !(fvar(30) = 0)
ID = 9668
ignorehitpause = 1

[State -1, AR burst gauge 9661 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9661)
trigger1 = !(fvar(30) = 0)
ID = 9661
ignorehitpause = 1

[State -1, AR burst gauge 9660 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9660)
trigger1 = !(fvar(30) > 3750)
ID = 9660
ignorehitpause = 1

[State -1, AR burst gauge 9662 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9662)
trigger1 = !(fvar(30) <= 3750 && fvar(30) > 3000)
ID = 9662
ignorehitpause = 1

[State -1, AR burst gauge 9663 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9663)
trigger1 = !(fvar(30) <= 3000 && fvar(30) > 2250)
ID = 9663
ignorehitpause = 1

[State -1, AR burst gauge 9664 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9664)
trigger1 = !(fvar(30) <= 2250 && fvar(30) > 1500)
ID = 9664
ignorehitpause = 1

[State -1, AR burst gauge 9665 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9665)
trigger1 = !(fvar(30) <= 1500 && fvar(30) > 750)
ID = 9665
ignorehitpause = 1

[State -1, AR burst gauge 9666 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9666)
trigger1 = !(fvar(30) <= 750 && fvar(30) > 0)
ID = 9666
ignorehitpause = 1

[State -1, AR burst gauge 9667 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9667)
trigger1 = !(fvar(30) > 3750)
ID = 9667
ignorehitpause = 1


[State -1, AR burst]
type = ChangeState
value = ifelse(StateType = A, 7751, 7750)
triggerall = !ishelper
triggerall = command = "ar_burst"
triggerall = fvar(30) = 0
triggerall = RoundState = 2
triggerall = Alive
trigger1 = (stateno = 5000 || stateno = 5010 || stateno = 5020 || stateno = 5070) && Time > 0
trigger2 = stateno = [5001, 5099]
trigger2 = stateno != 5000 && stateno != 5010 && stateno != 5020 && stateno != 5070

;Abstract Reordered: parry on Z
[State -1, AR parry]
type = ChangeState
value = 7740
triggerall = !ishelper
triggerall = command = "ar_parry"
triggerall = RoundState = 2
trigger1 = ctrl


[State -1, Tick Fix]
type = CtrlSet
triggerall = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = (StateNo = [760,762]) && !AnimTime
trigger4 = StateNo = 810 && !AnimTime
trigger5 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
trigger6 = (StateNo = [700,715]) && !AnimTime
value = 1

[State -1, CtrlSet For Helpers];special thanks to 20S
type = CtrlSet
trigger1 = IsHelper
value = 0

[State -1, Hit Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -1, Juggle Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State -1, ProjContact];special thanks to 20S
type = VarSet
trigger1 = IsHelper
trigger1 = MoveContact = 1 && NumTarget
var(18) = 1

[State -1, Root ProjContact];special thanks to 20S
type = ParentVarSet
trigger1 = IsHelper
trigger1 = MoveContact = 1 && NumTarget
var(18) = 1

[State -1, Gut Sniper]
type = ChangeState
value = 3100
triggerall = !AIlevel
triggerall = command = "Gut Sniper"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 3000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1100 && movecontact
trigger17 = stateno = 1200 && movecontact
trigger18 = stateno = 1300 && movecontact
trigger19 = stateno = 1400 && movecontact

[State -1, Life Fiber Burst Max]
type = ChangeState
value = 3075
triggerall = !AIlevel
triggerall = command = "Life Fiber Burst Max"
triggerall = var(20) > 0   ;AR: Max version while in Kamui
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1100 && movecontact
trigger17 = stateno = 1200 && movecontact
trigger18 = stateno = 1300 && movecontact
trigger19 = stateno = 1400 && movecontact

[State -1, Life Fiber Burst]
type = ChangeState
value = 3070
triggerall = !AIlevel
triggerall = command = "Life Fiber Burst"
triggerall = var(20) <= 0   ;AR: Max version replaces it in Kamui
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1100 && movecontact
trigger17 = stateno = 1200 && movecontact
trigger18 = stateno = 1300 && movecontact
trigger19 = stateno = 1400 && movecontact
trigger20 = stateno = 3020 && movecontact
trigger21 = stateno = 3030 && movecontact
trigger22 = stateno = 3040 && movecontact
trigger23 = stateno = 3050 && movecontact
trigger24 = stateno = 3000 && movecontact

[State -1, Hyper Bakuzan Strike Max]
type = ChangeState
value = 3065
triggerall = !AIlevel
triggerall = command = "Hyper Bakuzan Strike Max"
triggerall = var(20) > 0   ;AR: Max version while in Kamui
triggerall = RoundState = 2 && StateType = A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
triggerall = ctrl && pos y <= -30 || var(6)
trigger1 = NumHelper(3010) <= 0
trigger2 = NumHelper(3010) <= 1
trigger3 = Helper(3010),StateNo = [1014,1016]
trigger4 = stateno = 3010 && movecontact
trigger5 = stateno = 3060 && movecontact

[State -1, Hyper Bakuzan Strike]
type = ChangeState
value = 3060
triggerall = !AIlevel
triggerall = command = "Hyper Bakuzan Strike"
triggerall = var(20) <= 0   ;AR: Max version replaces it in Kamui
triggerall = RoundState = 2 && StateType = A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
triggerall = ctrl && pos y <= -30 || var(6)
trigger1 = NumHelper(3010) <= 0
trigger2 = NumHelper(3010) <= 1
trigger3 = Helper(3010),StateNo = [1014,1016]
trigger4 = stateno = 3010 && movecontact

[State -1, Hyper Life Fiber Slash Max]
type = ChangeState
value = 3055
triggerall = !AIlevel
triggerall = command = "Hyper Life Fiber Slash Max"
triggerall = var(20) > 0   ;AR: Max version while in Kamui
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1100 && movecontact
trigger17 = stateno = 1200 && movecontact
trigger18 = stateno = 1300 && movecontact
trigger19 = stateno = 1400 && movecontact
trigger20 = stateno = 3000 && movecontact
trigger21 = stateno = 3020 && movecontact
trigger22 = stateno = 3030 && movecontact
trigger23 = stateno = 3040 && movecontact
trigger24 = stateno = 3050 && movecontact
trigger25 = stateno = 3070 && movecontact

[State -1, Hyper Life Fiber Slash]
type = ChangeState
value = 3050
triggerall = !AIlevel
triggerall = command = "Hyper Life Fiber Slash"
triggerall = var(20) <= 0   ;AR: Max version replaces it in Kamui
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1100 && movecontact
trigger17 = stateno = 1200 && movecontact
trigger18 = stateno = 1300 && movecontact
trigger19 = stateno = 1400 && movecontact
trigger20 = stateno = 3020 && movecontact
trigger21 = stateno = 3030 && movecontact
trigger22 = stateno = 3040 && movecontact
trigger23 = stateno = 3000 && movecontact
trigger24 = stateno = 3070 && movecontact

[State -1, Hyper Blade Dash Max]
type = ChangeState
value = 3045
triggerall = !AIlevel
triggerall = command = "Hyper Blade Dash Max"
triggerall = var(20) > 0   ;AR: Max version while in Kamui
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1100 && movecontact
trigger17 = stateno = 1200 && movecontact
trigger18 = stateno = 1300 && movecontact
trigger19 = stateno = 1400 && movecontact
trigger20 = stateno = 3000 && movecontact
trigger21 = stateno = 3020 && movecontact
trigger22 = stateno = 3030 && movecontact
trigger23 = stateno = 3040 && movecontact
trigger24 = stateno = 3050 && movecontact
trigger25 = stateno = 3070 && movecontact

[State -1, Hyper Blade Dash]
type = ChangeState
value = 3040
triggerall = !AIlevel
triggerall = command = "Hyper Blade Dash"
triggerall = var(20) <= 0   ;AR: Max version replaces it in Kamui
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1100 && movecontact
trigger17 = stateno = 1200 && movecontact
trigger18 = stateno = 1300 && movecontact
trigger19 = stateno = 1400 && movecontact
trigger20 = stateno = 3020 && movecontact
trigger21 = stateno = 3030 && movecontact
trigger22 = stateno = 3000 && movecontact
trigger23 = stateno = 3050 && movecontact
trigger24 = stateno = 3070 && movecontact

[State -1, Hyper Bakuzan Barrage Max]
type = ChangeState
value = 3035
triggerall = !AIlevel
triggerall = command = "Hyper Bakuzan Barrage Max"
triggerall = var(20) > 0   ;AR: Max version while in Kamui
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1100 && movecontact
trigger17 = stateno = 1200 && movecontact
trigger18 = stateno = 1300 && movecontact
trigger19 = stateno = 1400 && movecontact
trigger20 = stateno = 3000 && movecontact
trigger21 = stateno = 3020 && movecontact
trigger22 = stateno = 3030 && movecontact
trigger23 = stateno = 3040 && movecontact
trigger24 = stateno = 3050 && movecontact
trigger25 = stateno = 3070 && movecontact

[State -1, Hyper Bakuzan Barrage]
type = ChangeState
value = 3030
triggerall = !AIlevel
triggerall = command = "Hyper Bakuzan Barrage"
triggerall = var(20) <= 0   ;AR: Max version replaces it in Kamui
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1100 && movecontact
trigger17 = stateno = 1200 && movecontact
trigger18 = stateno = 1300 && movecontact
trigger19 = stateno = 1400 && movecontact
trigger20 = stateno = 3020 && movecontact
trigger21 = stateno = 3000 && movecontact
trigger22 = stateno = 3040 && movecontact
trigger23 = stateno = 3050 && movecontact
trigger24 = stateno = 3070 && movecontact

[State -1, Hyper Uppercut Max]
type = ChangeState
value = 3025
triggerall = !AIlevel
triggerall = command = "Hyper Uppercut Max"
triggerall = var(20) > 0   ;AR: Max version while in Kamui
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1100 && movecontact
trigger17 = stateno = 1200 && movecontact
trigger18 = stateno = 1300 && movecontact
trigger19 = stateno = 1400 && movecontact
trigger20 = stateno = 3000 && movecontact
trigger21 = stateno = 3020 && movecontact
trigger22 = stateno = 3030 && movecontact
trigger23 = stateno = 3040 && movecontact
trigger24 = stateno = 3050 && movecontact
trigger25 = stateno = 3070 && movecontact

[State -1, Hyper Uppercut]
type = ChangeState
value = 3020
triggerall = !AIlevel
triggerall = command = "Hyper Uppercut"
triggerall = var(20) <= 0   ;AR: Max version replaces it in Kamui
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1100 && movecontact
trigger17 = stateno = 1200 && movecontact
trigger18 = stateno = 1300 && movecontact
trigger19 = stateno = 1400 && movecontact
trigger20 = stateno = 3000 && movecontact
trigger21 = stateno = 3030 && movecontact
trigger22 = stateno = 3040 && movecontact
trigger23 = stateno = 3050 && movecontact
trigger24 = stateno = 3070 && movecontact

[State -1, Hyper Life Fiber Blast Air Max]
type = ChangeState
value = 3015
triggerall = !AIlevel
triggerall = command = "Hyper Life Fiber Blast Air Max"
triggerall = var(20) > 0   ;AR: Max version while in Kamui
triggerall = RoundState = 2 && StateType = A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
triggerall = ctrl && pos y <= -30 || var(6)
trigger1 = NumHelper(3010) <= 0
trigger2 = NumHelper(3010) <= 1
trigger3 = Helper(3010),StateNo = [1014,1016]
trigger4 = stateno = 3010 && movecontact
trigger5 = stateno = 3060 && movecontact

[State -1, Hyper Life Fiber Blast Air]
type = ChangeState
value = 3010
triggerall = !AIlevel
triggerall = command = "Hyper Life Fiber Blast Air"
triggerall = var(20) <= 0   ;AR: Max version replaces it in Kamui
triggerall = RoundState = 2 && StateType = A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
triggerall = ctrl && pos y <= -30 || var(6)
trigger1 = NumHelper(3010) <= 0
trigger2 = NumHelper(3010) <= 1
trigger3 = Helper(3010),StateNo = [1014,1016]
trigger4 = stateno = 3060 && movecontact

[State -1, Hyper Life Fiber Blast Max]
type = ChangeState
value = 3005
triggerall = !AIlevel
triggerall = command = "Hyper Life Fiber Blast Max"
triggerall = var(20) > 0   ;AR: Max version while in Kamui
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1100 && movecontact
trigger17 = stateno = 1200 && movecontact
trigger18 = stateno = 1300 && movecontact
trigger19 = stateno = 1400 && movecontact
trigger20 = stateno = 3000 && movecontact
trigger21 = stateno = 3020 && movecontact
trigger22 = stateno = 3030 && movecontact
trigger23 = stateno = 3040 && movecontact
trigger24 = stateno = 3050 && movecontact
trigger25 = stateno = 3070 && movecontact

[State -1, Hyper Life Fiber Blast]
type = ChangeState
value = 3000
triggerall = !AIlevel
triggerall = command = "Hyper Life Fiber Blast"
triggerall = var(20) <= 0   ;AR: Max version replaces it in Kamui
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1100 && movecontact
trigger17 = stateno = 1200 && movecontact
trigger18 = stateno = 1300 && movecontact
trigger19 = stateno = 1400 && movecontact
trigger20 = stateno = 3020 && movecontact
trigger21 = stateno = 3030 && movecontact
trigger22 = stateno = 3040 && movecontact
trigger23 = stateno = 3050 && movecontact
trigger24 = stateno = 3070 && movecontact

;----------------------------------------------------------------------------------------------------

[State -1, Bakuzan Strike EX]
type = ChangeState
value = 1530
triggerall = !AIlevel
triggerall = command = "Bakuzan Strike EX"
triggerall=RoundState=2&& statetype=A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])|| (StateNo = [110,111])
trigger2= var(5)

[State -1, Bakuzan Strike]
type = ChangeState
value = 1500
triggerall = !AIlevel
triggerall = command = "Bakuzan Strike"
triggerall=RoundState=2&& statetype=A
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])|| (StateNo = [110,111])
trigger2= var(5)

;----------------------------------------------------------------------------------------------------

[State -1, Life Fiber Slash EX]
type = ChangeState
value = 1430
triggerall = !AIlevel
triggerall = command = "Life Fiber Slash EX"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact

[State -1, Life Fiber Slash]
type = ChangeState
value = 1400
triggerall = !AIlevel
triggerall = command = "Life Fiber Slash"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact

;----------------------------------------------------------------------------------------------------

[State -1, Blade Dash Air EX]
type = ChangeState
value = 1335
triggerall = !AIlevel
triggerall = command = "Blade Dash Air EX"
triggerall=RoundState=2&& statetype=A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])|| (StateNo = [110,111])
trigger2= var(5)

[State -1, Blade Dash Air]
type = ChangeState
value = 1305
triggerall = !AIlevel
triggerall = command = "Blade Dash Air"
triggerall=RoundState=2&& statetype=A
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])|| (StateNo = [110,111])
trigger2= var(5)

[State -1, Blade Dash EX]
type = ChangeState
value = 1330
triggerall = !AIlevel
triggerall = command = "Blade Dash EX"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact

[State -1, Blade Dash]
type = ChangeState
value = 1300
triggerall = !AIlevel
triggerall = command = "Blade Dash"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact

;----------------------------------------------------------------------------------------------------

[State -1, Bakuzan Barrage Air EX]
type = ChangeState
value = 1235
triggerall = !AIlevel
triggerall = command = "Bakuzan Barrage Air EX"
triggerall=RoundState=2&& statetype=A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])|| (StateNo = [110,111])
trigger2= var(5)

[State -1, Bakuzan Barrage Air]
type = ChangeState
value = 1205
triggerall = !AIlevel
triggerall = command = "Bakuzan Barrage Air"
triggerall=RoundState=2&& statetype=A
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])|| (StateNo = [110,111])
trigger2= var(5)

[State -1, Bakuzan Barrage EX]
type = ChangeState
value = 1230
triggerall = !AIlevel
triggerall = command = "Bakuzan Barrage EX"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact

[State -1, Bakuzan Barrage]
type = ChangeState
value = 1200
triggerall = !AIlevel
triggerall = command = "Bakuzan Barrage"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact

;----------------------------------------------------------------------------------------------------

[State -1, Uppercut EX]
type = ChangeState
value = 1130
triggerall = !AIlevel
triggerall = command = "Uppercut EX"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact

[State -1, Uppercut]
type = ChangeState
value = 1100
triggerall = !AIlevel
triggerall = command = "Uppercut"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact

;----------------------------------------------------------------------------------------------------

[State -1, Life Fiber Blast Air EX]
type = ChangeState
value = 1035
triggerall = !AIlevel
triggerall = command = "Life Fiber Blast Air EX"
triggerall=RoundState=2&& statetype=A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])|| (StateNo = [110,111])
trigger2= var(5)

[State -1, Life Fiber Blast Air]
type = ChangeState
value = 1005
triggerall = !AIlevel
triggerall = command = "Life Fiber Blast Air"
triggerall=RoundState=2&& statetype=A
trigger1= ctrl || stateno=40 || stateno=52 || (stateno=[100,101])|| (StateNo = [110,111])
trigger2= var(5)

[State -1, Life Fiber Blast EX]
type = ChangeState
value = 1030
triggerall = !AIlevel
triggerall = command = "Life Fiber Blast EX"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact

[State -1, Life Fiber Blast]
type = ChangeState
value = 1000
triggerall = !AIlevel
triggerall = command = "Life Fiber Blast"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact
trigger14 = stateno = 450 && movecontact

;----------------------------------------------------------------------------------------------------

[State -1, Zero Counter]
type = ChangeState
value = 750
triggerall = !AIlevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Throw Forward]
type = ChangeState
value = 800
triggerall = !AIlevel
trigger1 = command = "ar_grab"   ;AR: grab on Y
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Run Fwd]
type = ChangeState
value = 110
triggerall = !AIlevel
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !AIlevel
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;--------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !AIlevel
triggerall = command = "s"
triggerall = StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)

;---------------------------------------------------------------------------
;Abstract Reordered normals: A/B/C, crouching with down held; chain light -> medium -> heavy on contact
[State -1, AR 5A]
type = ChangeState
value = 200
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, AR 5B]
type = ChangeState
value = 210
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact

[State -1, AR 5C]
type = ChangeState
value = 220
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = StateNo = 400 && MoveContact
trigger5 = StateNo = 440 && MoveContact

[State -1, AR 2A]
type = ChangeState
value = 400
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact

[State -1, AR 2B]
type = ChangeState
value = 440
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 400 && MoveContact

[State -1, AR 2C]
type = ChangeState
value = 450
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = StateNo = 400 && MoveContact
trigger5 = StateNo = 440 && MoveContact

[State -1, AR j.A]
type = ChangeState
value = 600
triggerall = !AIlevel
triggerall = command = "a"
triggerall = StateType = A
trigger1 = ctrl

[State -1, AR j.B]
type = ChangeState
value = 610
triggerall = !AIlevel
triggerall = command = "b"
triggerall = StateType = A
trigger1 = ctrl
trigger2 = StateNo = 600 && MoveContact

[State -1, AR j.C]
type = ChangeState
value = 620
triggerall = !AIlevel
triggerall = command = "c"
triggerall = StateType = A
trigger1 = ctrl
trigger2 = StateNo = 600 && MoveContact
trigger3 = StateNo = 610 && MoveContact

;=====================================
;=================AI==================
;=====================================

[State -1, Gut Sniper]
type = ChangeState
value = 3100
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 3000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 3 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-46,46]) && (P2Dist y = [-69,0])
triggerAll = (EnemyNear, vel x = [-5,5]) && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && (EnemyNear, HitFall)
trigger2 = Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger3 = var(8) && Random < (100 * (AILevel ** 2 / 64.0))
trigger3 = StateNo = 3001 && AnimElemTime(9) < 0
trigger3 = EnemyNear, GetHitVar(HitTime) >= 3

[State -1, Life Fiber Burst Max]
type = ChangeState
value = 3075
triggerall = AIlevel && numenemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-140,140]) && (P2Dist y = [-32,32])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Life Fiber Burst]
type = ChangeState
value = 3070
triggerall = AIlevel && numenemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-100,100]) && (P2Dist y = [-32,32])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Hyper Life Fiber Slash Max]
type = ChangeState
value = 3055
triggerall = AIlevel && numenemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-140,140]) && (P2Dist y = [-32,32])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Hyper Life Fiber Slash]
type = ChangeState
value = 3050
triggerall = AIlevel && numenemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-100,100]) && (P2Dist y = [-32,32])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Hyper Blade Dash Max]
type = ChangeState
value = 3045
triggerall = AIlevel && numenemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-140,140]) && (P2Dist y = [-32,32])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Hyper Blade Dash]
type = ChangeState
value = 3040
triggerall = AIlevel && numenemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-100,100]) && (P2Dist y = [-32,32])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Hyper Bakuzan Barrage Max]
type = ChangeState
value = 3035
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 3 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-46,46]) && (P2Dist y = [-69,0])
triggerAll = (EnemyNear, vel x = [-5,5]) && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && (EnemyNear, HitFall)
trigger2 = Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger3 = var(8) && Random < (100 * (AILevel ** 2 / 64.0))
trigger3 = StateNo = 3001 && AnimElemTime(9) < 0
trigger3 = EnemyNear, GetHitVar(HitTime) >= 3

[State -1, Hyper Bakuzan Barrage]
type = ChangeState
value = 3030
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 3 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-46,46]) && (P2Dist y = [-69,0])
triggerAll = (EnemyNear, vel x = [-5,5]) && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && (EnemyNear, HitFall)
trigger2 = Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3

[State -1, Hyper Uppercut Max]
type = ChangeState
value = 3025
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 3 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-46,46]) && (P2Dist y = [-69,0])
triggerAll = (EnemyNear, vel x = [-5,5]) && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && (EnemyNear, HitFall)
trigger2 = Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger3 = var(8) && Random < (100 * (AILevel ** 2 / 64.0))
trigger3 = StateNo = 3001 && AnimElemTime(9) < 0
trigger3 = EnemyNear, GetHitVar(HitTime) >= 3

[State -1, Hyper Uppercut]
type = ChangeState
value = 3020
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 3 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-46,46]) && (P2Dist y = [-69,0])
triggerAll = (EnemyNear, vel x = [-5,5]) && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && (EnemyNear, HitFall)
trigger2 = Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3

[State -1, Hyper Life Fiber Blast Max]
type = ChangeState
value = 3005
triggerall = AIlevel && numenemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-140,140]) && (P2Dist y = [-32,32])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Hyper Life Fiber Blast]
type = ChangeState
value = 3000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-100,100]) && (P2Dist y = [-32,32])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Bakuzan Strike]
type = ChangeState
value = ifElse((var(40) = 0 || var(40) = 3) && Power >= 500 && Random < 100, 1530 + 5 * (var(40) = 3), 1500 + 5 * (var(40) = 3))
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = var(3) != [1,2]
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType = A
triggerAll = (P2BodyDist x = [0,160]) && P2Dist y >= 20
trigger1 = ctrl && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && P2StateType = A

[State -1, Life Fiber Slash]
type = ChangeState
value = ifElse((var(40) = 0 || var(40) = 3) && Power >= 500 && Random < 100, 1430 + 5 * (var(40) = 3), 1400 + 5 * (var(40) = 3))
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateNo = [200, 499])
triggerAll = (P2BodyDist x = [-8,165]) && P2StateType != A && (P2StateType != L || P2StateNo = 5120)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger1 = P2BodyDist x >= 15 && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = (EnemyNear, StateNo = 5120 || EnemyNear, StateNo = 5201) && (EnemyNear, AnimTime = -18) && Random < (125 * (AILevel ** 2 / 64.0))
trigger3 = var(6) && MoveHit && Random < (50 * (AILevel ** 2 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 6

[State -1, Blade Dash Air]
type = ChangeState
value = ifElse((var(40) = 0 || var(40) = 3) && Power >= 500 && Random < 100, 1335 + 5 * (var(40) = 3), 1305 + 5 * (var(40) = 3))
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = var(3) != [1,2]
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType = A
triggerAll = (P2BodyDist x = [-48,48]) && P2Dist y >= -120
trigger1 = ctrl && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && P2StateType = A

[State -1, Blade Dash]
type = ChangeState
value = ifElse((var(40) = 0 || var(40) = 3) && Power >= 500 && Random < 100, 1330 + 5 * (var(40) = 3), 1300 + 5 * (var(40) = 3))
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateNo = [200, 499])
triggerAll = (P2BodyDist x = [-8,165]) && P2StateType != A && (P2StateType != L || P2StateNo = 5120)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger1 = P2BodyDist x >= 15 && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = (EnemyNear, StateNo = 5120 || EnemyNear, StateNo = 5201) && (EnemyNear, AnimTime = -18) && Random < (125 * (AILevel ** 2 / 64.0))
trigger3 = var(6) && MoveHit && Random < (50 * (AILevel ** 2 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 6

[State -1, Bakuzan Barrage Air]
type = ChangeState
value = ifElse((var(40) = 0 || var(40) = 3) && Power >= 500 && Random < 133, 1235, 1205)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = var(3) != [1,2]
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType = A
triggerAll = (P2BodyDist x = [-48,48]) && P2Dist y >= -120
trigger1 = ctrl && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && P2StateType = A

[State -1, Bakuzan Barrage]
type = ChangeState
value = ifElse((var(40) = 0 || var(40) = 3) && Power >= 500 && Random < 133, 1230, 1200)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = ((P2BodyDist x = [-48,48]) && P2StateType != A) || ((P2BodyDist x = [-140,140]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Uppercut]
type = ChangeState
value = ifElse((var(40) = 0 || var(40) = 3) && Power >= 500 && Random < 133, 1130, 1100)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = ((P2BodyDist x = [-48,48]) && P2StateType != A) || ((P2BodyDist x = [-140,140]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Life Fiber Blast Air]
type = ChangeState
value = ifElse((var(40) = 0 || var(40) = 3) && Power >= 500 && Random < 100, 1035, 1005)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = var(3) != [1,2]
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType = A
triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
trigger1 = ctrl && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && P2StateType = A

[State -1, Life Fiber Blast]
type = ChangeState
value = ifElse((var(40) = 0 || var(40) = 3) && Power >= 500 && Random < 100, 1030, 1000)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = AILevel && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 1000 && var(20) <= 60
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Throw]
type = ChangeState
value = 900
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20,40]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20,40]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerall = AIlevel && numenemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [92,122])

[State -1, Roll Back]
type = ChangeState
value = 715
triggerall = AIlevel && numenemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [92,122])

[State -1, Power Charge]
type = ChangeState
value = 730
triggerall = AIlevel && numenemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power < const(data.power) && !var(20)
trigger1 = ctrl && Power < const(data.power) && Power < PowerMax && !var(20)
trigger1 = !InGuardDist && P2BodyDist x >= 160 && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Dodge]
type = ChangeState
value = 700
triggerall = AIlevel && numenemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [0,60])

[State -1, Run Fwd]
type = ChangeState
value = 110
triggerall = AIlevel && numenemy
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl && (StateNo != [100,106])
trigger1 = (EnemyNear, MoveType != A) && P2BodyDist x >= 160 && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Hop Backward]
type = ChangeState
value = 105
triggerall = AIlevel && numenemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = ctrl && (StateNo != [100,106]) && var(20) <= 150 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && BackEdgeDist >= 80 && (P2BodyDist x = [80,120]) && (EnemyNear, vel x)
trigger1 = Random < (ifElse((EnemyNear, HitDefAttr = SC, AT), 150, 50) * (AILevel ** 2 / 64.0))
trigger2 = (P2BodyDist x = [0,80]) && BackEdgeBodyDist >= 80
trigger2 = EnemyNear, StateNo = 5120 && EnemyNear, AnimTime = -4 && Random < (750 * (AILevel ** 2 / 64.0))

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,63]) && (P2Dist y = [-87,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,80]) && (P2Dist y = [-129,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(24)

[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,101]) && (P2Dist y = [-111,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,72]) && (P2Dist y = [-23,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,60]) && (P2Dist y = [-115,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,146]) && (P2Dist y = [-111,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,61]) && (P2Dist y = [-54,0]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,70]) && (P2Dist y = [-52,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && Statetype != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && (P2Dist y = [-132,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,90]) && (P2Dist y = [-27,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100, 101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,111]) && (P2Dist y = [-33,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,97]) && (P2Dist y = [-33,0]) && P2StateType != A && P2StateType != L
triggerAll = (P2StateType = S || (P2StateType = C && P2MoveType = H))
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 6) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,41]) && (P2Dist y = [-56,28]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,42]) && (P2Dist y = [-80,50]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,45]) && (P2Dist y = [-64,50]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,32]) && (P2Dist y = [-117,40]) && P2StateType != L
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (ifElse(P2Dist x < 0, 250, 50) * (AILevel ** 2 / 64.0))

[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,79]) && (P2Dist y = [-60,40]) && P2StateType = A
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,92]) && (P2Dist y = [-116,50]) && P2StateType = S
trigger1 = ctrl && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

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
trigger1 = Random < (ifElse((P2StateNo = [200, 699]), 100, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
trigger1 = p2dist x > 160 && (enemynear, vel y > 0) && ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger1 = !(enemynear, ctrl) && (enemynear, movetype = H)