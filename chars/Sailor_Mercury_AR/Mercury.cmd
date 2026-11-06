;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 1

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "Shabon Spray Freezing"
command = ~D, DF, F, D, DF, F, a+b
time = 30
[Command]
name = "Shabon Spray Freezing"
command = ~D, DF, F, D, DF, F, b+c
time = 30
[Command]
name = "Shabon Spray Freezing"
command = ~D, DF, F, D, DF, F, a+c
time = 30

[Command]
name = "Shabon Spray Freezing R"
command = ~D, DB, B, D, DB, B, a+b
time = 30
[Command]
name = "Shabon Spray Freezing R"
command = ~D, DB, B, D, DB, B, b+c
time = 30
[Command]
name = "Shabon Spray Freezing R"
command = ~D, DB, B, D, DB, B, a+c
time = 30

[Command]
name = "Shine Aqua Cutter"
command = ~D, DB, B, D, DF, F, a+b
time = 30
[Command]
name = "Shine Aqua Cutter"
command = ~D, DB, B, D, DF, F, b+c
time = 30
[Command]
name = "Shine Aqua Cutter"
command = ~D, DB, B, D, DF, F, a+c
time = 30

[Command]
name = "Shine Aqua Cutter R"
command = ~D, DF, F, D, DB, B, a+b
time = 30
[Command]
name = "Shine Aqua Cutter R"
command = ~D, DF, F, D, DB, B, b+c
time = 30
[Command]
name = "Shine Aqua Cutter R"
command = ~D, DF, F, D, DB, B, a+c
time = 30

[Command]
name = "QCF_LP"
command = ~D, DF, F, a
time = 20
[Command]
name = "QCF_LP"
command = D, DF, F, a
time = 20
name = "QCF_LP"
command = ~D, DF, F, ~a
time = 20
[Command]
name = "QCF_LP"
command = D, DF, F, ~a
time = 20

[Command]
name = "QCF_HP"
command = ~D, DF, F, b
time = 30
[Command]
name = "QCF_HP"
command = D, DF, F, b
time = 20
[Command]
name = "QCF_HP"
command = ~D, DF, F, ~b
time = 30
[Command]
name = "QCF_HP"
command = D, DF, F, ~b
time = 20

[Command]
name = "QCF_PP"
command = ~D, DF, F, c
time = 20
[Command]
name = "QCF_PP"
command = D, DF, F, c
time = 20
[Command]
name = "QCF_PP"
command = ~D, DF, F, ~c
time = 20
[Command]
name = "QCF_PP"
command = D, DF, F, ~c
time = 20

[Command]
name = "QCF_LK"
command = ~D, DB, B, a
time = 20
[Command]
name = "QCF_LK"
command = D, DB, B, a
time = 20
[Command]
name = "QCF_LK"
command = ~D, DB, B, ~a
time = 20
[Command]
name = "QCF_LK"
command = D, DB, B, ~a
time = 20

[Command]
name = "QCF_HK"
command = ~D, DB, B, b
time = 30
[Command]
name = "QCF_HK"
command = D, DB, B, b
time = 30
[Command]
name = "QCF_HK"
command = ~D, DB, B, ~b
time = 30
[Command]
name = "QCF_HK"
command = D, DB, B, ~b
time = 30

[Command]
name = "QCF_KK"
command = ~D, DB, B, c
time = 20
[Command]
name = "QCF_KK"
command = D, DB, B, c
time = 20
[Command]
name = "QCF_KK"
command = ~D, DB, B, ~c
time = 20
[Command]
name = "QCF_KK"
command = D, DB, B, ~c
time = 20

[Command]
name = "QCB_LP"
command = ~D, DB, B, a
time = 20
[Command]
name = "QCB_LP"
command = D, DB, B, a
time = 20
[Command]
name = "QCB_LP"
command = ~D, DB, B, ~a
time = 20
[Command]
name = "QCB_LP"
command = D, DB, B, ~a
time = 20

[Command]
name = "QCB_HP"
command = ~D, DB, B, b
time = 20
[Command]
name = "QCB_HP"
command = D, DB, B, b
time = 20
[Command]
name = "QCB_HP"
command = ~D, DB, B, ~b
time = 20
[Command]
name = "QCB_HP"
command = D, DB, B, ~b
time = 20

[Command]
name = "QCB_PP"
command = ~D, DB, B, c
time = 20
[Command]
name = "QCB_PP"
command = D, DB, B, c
time = 20
[Command]
name = "QCB_PP"
command = ~D, DB, B, ~c
time = 20
[Command]
name = "QCB_PP"
command = D, DB, B, ~c
time = 20

[Command]
name = "QCB_LK"
command = ~D, DF, F, a
time = 20
[Command]
name = "QCB_LK"
command = D, DF, F, a
time = 20
[Command]
name = "QCB_LK"
command = ~D, DF, F, ~a
time = 20
[Command]
name = "QCB_LK"
command = D, DF, F, ~a
time = 20

[Command]
name = "QCB_HK"
command = ~D, DF, F, b
time = 20
[Command]
name = "QCB_HK"
command = D, DF, F, b
time = 20
[Command]
name = "QCB_HK"
command = ~D, DF, F, ~b
time = 20
[Command]
name = "QCB_HK"
command = D, DF, F, ~b
time = 20

[Command]
name = "QCB_KK"
command = ~D, DF, F, c
time = 20
[Command]
name = "QCB_KK"
command = D, DF, F, c
time = 20
[Command]
name = "QCB_KK"
command = ~D, DF, F, ~c
time = 20
[Command]
name = "QCB_KK"
command = D, DF, F, ~c
time = 20

[Command]
name = "DP_LP"
command = ~F, D, DF, a
time = 20
[Command]
name = "DP_LP"
command = F, D, DF, a
time = 20
[Command]
name = "DP_LP"
command = ~F, D, DF, ~a
time = 20
[Command]
name = "DP_LP"
command = F, D, DF, ~a
time = 20

[Command]
name = "DP_HP"
command = ~F, D, DF, b
time = 20
[Command]
name = "DP_HP"
command = F, D, DF, b
time = 20
[Command]
name = "DP_HP"
command = ~F, D, DF, ~b
time = 20
[Command]
name = "DP_HP"
command = F, D, DF, ~b
time = 20

[Command]
name = "DP_PP"
command = ~F, D, DF, c
time = 20
[Command]
name = "DP_PP"
command = F, D, DF, c
time = 20
[Command]
name = "DP_PP"
command = ~F, D, DF, ~c
time = 20
[Command]
name = "DP_PP"
command = F, D, DF, ~c
time = 20

[Command]
name = "DP_LK"
command = ~F, D, DF, a
time = 20
[Command]
name = "DP_LK"
command = F, D, DF, a
time = 20
[Command]
name = "DP_LK"
command = ~F, D, DF, ~a
time = 20
[Command]
name = "DP_LK"
command = F, D, DF, ~a
time = 20

[Command]
name = "DP_HK"
command = ~F, D, DF, b
time = 20
[Command]
name = "DP_HK"
command = F, D, DF, b
time = 20
[Command]
name = "DP_HK"
command = ~F, D, DF, ~b
time = 20
[Command]
name = "DP_HK"
command = F, D, DF, ~b
time = 20

[Command]
name = "DP_KK"
command = ~F, D, DF, c
time = 20
[Command]
name = "DP_KK"
command = F, D, DF, c
time = 20
[Command]
name = "DP_KK"
command = ~F, D, DF, ~c
time = 20
[Command]
name = "DP_KK"
command = F, D, DF, ~c
time = 20

;revDP------------------
[Command]
name = "revDP_LP"
command = ~B, D, DB, a
time = 20
[Command]
name = "revDP_LP"
command = B, D, DB, a
time = 20
[Command]
name = "revDP_LP"
command = ~B, D, DB, ~a
time = 20
[Command]
name = "revDP_LP"
command = B, D, DB, ~a
time = 20

[Command]
name = "revDP_HP"
command = ~B, D, DB, b
time = 20
[Command]
name = "revDP_HP"
command = B, D, DB, b
time = 20
[Command]
name = "revDP_HP"
command = ~B, D, DB, ~b
time = 20
[Command]
name = "revDP_HP"
command = B, D, DB, ~b
time = 20

[Command]
name = "revDP_PP"
command = ~B, D, DB, c
time = 20
[Command]
name = "revDP_PP"
command = B, D, DB, c
time = 20
[Command]
name = "revDP_PP"
command = ~B, D, DB, ~c
time = 20
[Command]
name = "revDP_PP"
command = B, D, DB, ~c
time = 20

[Command]
name = "revDP_LK"
command = ~B, D, DB, a
time = 20
[Command]
name = "revDP_LK"
command = B, D, DB, a
time = 20
[Command]
name = "revDP_LK"
command = ~B, D, DB, ~a
time = 20
[Command]
name = "revDP_LK"
command = B, D, DB, ~a
time = 20

[Command]
name = "revDP_HK"
command = ~B, D, DB, b
time = 20
[Command]
name = "revDP_HK"
command = B, D, DB, b
time = 20
[Command]
name = "revDP_HK"
command = ~B, D, DB, ~b
time = 20
[Command]
name = "revDP_HK"
command = B, D, DB, ~b
time = 20

[Command]
name = "revDP_KK"
command = ~B, D, DB, c
time = 20
[Command]
name = "revDP_KK"
command = B, D, DB, c
time = 20
[Command]
name = "revDP_KK"
command = ~B, D, DB, ~c
time = 20
[Command]
name = "revDP_KK"
command = B, D, DB, ~c
time = 20

;HCF------------------
[Command]
name = "HCF_LP"
command = ~B, $D, F, a
time = 25
[Command]
name = "HCF_LP"
command = B, $D, F, a
time = 25
[Command]
name = "HCF_LP"
command = ~B, $D, F, ~a
time = 25
[Command]
name = "HCF_LP"
command = B, $D, F, ~a
time = 25

[Command]
name = "HCF_HP"
command = ~B, $D, F, b
time = 25
[Command]
name = "HCF_HP"
command = B, $D, F, b
time = 25
[Command]
name = "HCF_HP"
command = ~B, $D, F, ~b
time = 25
[Command]
name = "HCF_HP"
command = B, $D, F, ~b
time = 25

[Command]
name = "HCF_PP"
command = ~B, $D, F, c
time = 25
[Command]
name = "HCF_PP"
command = B, $D, F, c
time = 25
[Command]
name = "HCF_PP"
command = ~B, $D, F, ~c
time = 25
[Command]
name = "HCF_PP"
command = B, $D, F, ~c
time = 25

[Command]
name = "HCF_LK"
command = ~B, $D, F, a
time = 25
[Command]
name = "HCF_LK"
command = B, $D, F, a
time = 25
[Command]
name = "HCF_LK"
command = ~B, $D, F, ~a
time = 25
[Command]
name = "HCF_LK"
command = B, $D, F, ~a
time = 25

[Command]
name = "HCF_HK"
command = ~B, $D, F, b
time = 25
[Command]
name = "HCF_HK"
command = B, $D, F, b
time = 25
[Command]
name = "HCF_HK"
command = ~B, $D, F, ~b
time = 25
[Command]
name = "HCF_HK"
command = B, $D, F, ~b
time = 25

[Command]
name = "HCF_KK"
command = ~B, $D, F, c
time = 25
[Command]
name = "HCF_KK"
command = B, $D, F, c
time = 25
[Command]
name = "HCF_KK"
command = ~B, $D, F, ~c
time = 25
[Command]
name = "HCF_KK"
command = B, $D, F, ~c
time = 25

;HCB------------------
[Command]
name = "HCB_LP"
command = ~F, $D, B, a
time = 25
[Command]
name = "HCB_LP"
command = F, $D, B, a
time = 25
[Command]
name = "HCB_LP"
command = ~F, $D, B, ~a
time = 25
[Command]
name = "HCB_LP"
command = F, $D, B, ~a
time = 25

[Command]
name = "HCB_HP"
command = ~F, $D, B, b
time = 25
[Command]
name = "HCB_HP"
command = F, $D, B, b
time = 25
[Command]
name = "HCB_HP"
command = ~F, $D, B, ~b
time = 25
[Command]
name = "HCB_HP"
command = F, $D, B, ~b
time = 25

[Command]
name = "HCB_PP"
command = ~F, $D, B, c
time = 25
[Command]
name = "HCB_PP"
command = F, $D, B, c
time = 25
[Command]
name = "HCB_PP"
command = ~F, $D, B, ~c
time = 25
[Command]
name = "HCB_PP"
command = F, $D, B, ~c
time = 25

[Command]
name = "HCB_LK"
command = ~F, $D, B, a
time = 25
[Command]
name = "HCB_LK"
command = F, $D, B, a
time = 25
[Command]
name = "HCB_LK"
command = ~F, $D, B, ~a
time = 25
[Command]
name = "HCB_LK"
command = F, $D, B, ~a
time = 25

[Command]
name = "HCB_HK"
command = ~F, $D, B, b
time = 25
[Command]
name = "HCB_HK"
command = F, $D, B, b
time = 25
[Command]
name = "HCB_HK"
command = ~F, $D, B, ~b
time = 25
[Command]
name = "HCB_HK"
command = F, $D, B, ~b
time = 25

[Command]
name = "HCB_KK"
command = ~F, $D, B, c
time = 25
[Command]
name = "HCB_KK"
command = F, $D, B, c
time = 25
[Command]
name = "HCB_KK"
command = ~F, $D, B, ~c
time = 25
[Command]
name = "HCB_KK"
command = F, $D, B, ~c
time = 25

;chargeF------------------
[Command]
name = "chargeF_LP"
command = ~20$F, $B, a
time = 20
[Command]
name = "chargeF_LP"
command = ~20$F, $B, ~a
time = 20

[Command]
name = "chargeF_HP"
command = ~20$F, $B, b
time = 20
[Command]
name = "chargeF_HP"
command = ~20$F, $B, ~b
time = 20

[Command]
name = "chargeF_PP"
command = ~20$F, $B, c
time = 20
[Command]
name = "chargeF_PP"
command = ~20$F, $B, ~c
time = 20

[Command]
name = "chargeF_LK"
command = ~20$F, $B, a
time = 20
[Command]
name = "chargeF_LK"
command = ~20$F, $B, ~a
time = 20

[Command]
name = "chargeF_HK"
command = ~20$F, $B, b
time = 20
[Command]
name = "chargeF_HK"
command = ~20$F, $B, ~b
time = 20

[Command]
name = "chargeF_KK"
command = ~20$F, $B, c
time = 20
[Command]
name = "chargeF_KK"
command = ~20$F, $B, ~c
time = 20

;chargeB------------------
[Command]
name = "chargeB_LP"
command = ~20$B, $F, a
time = 20
[Command]
name = "chargeB_LP"
command = ~20$B, $F, ~a
time = 20

[Command]
name = "chargeB_HP"
command = ~20$B, $F, b
time = 20
[Command]
name = "chargeB_HP"
command = ~20$B, $F, ~b
time = 20

[Command]
name = "chargeB_PP"
command = ~20$B, $F, c
time = 20
[Command]
name = "chargeB_PP"
command = ~20$B, $F, ~c
time = 20

[Command]
name = "chargeB_LK"
command = ~20$B, $F, a
time = 20
[Command]
name = "chargeB_LK"
command = ~20$B, $F, ~a
time = 20

[Command]
name = "chargeB_HK"
command = ~20$B, $F, b
time = 20
[Command]
name = "chargeB_HK"
command = ~20$B, $F, ~b
time = 20

[Command]
name = "chargeB_KK"
command = ~20$B, $F, c
time = 20
[Command]
name = "chargeB_KK"
command = ~20$B, $F, ~c
time = 20

;chargeD------------------
[Command]
name = "chargeD_LP"
command = ~20$D, $U, a
time = 25
[Command]
name = "chargeD_LP"
command = ~20$D, $U, ~a
time = 25

[Command]
name = "chargeD_HP"
command = ~20$D, $U, b
time = 25
[Command]
name = "chargeD_HP"
command = ~20$D, $U, ~b
time = 25

[Command]
name = "chargeD_PP"
command = ~20$D, $U, c
time = 25
[Command]
name = "chargeD_PP"
command = ~20$D, $U, ~c
time = 25

[Command]
name = "chargeD_LK"
command = ~20$D, $U, a
time = 25
[Command]
name = "chargeD_LK"
command = ~20$D, $U, ~a
time = 25

[Command]
name = "chargeD_HK"
command = ~20$D, $U, b
time = 25
[Command]
name = "chargeD_HK"
command = ~20$D, $U, ~b
time = 25

[Command]
name = "chargeD_KK"
command = ~20$D, $U, c
time = 25
[Command]
name = "chargeD_KK"
command = ~20$D, $U, ~c
time = 25

;-| Movement |-----------------------------------------------------------
[Command]
name = "dash_fwd"
command = F, F
time = 10

[Command]
name = "Adash_back_rev"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "dash_back"
command = B, B
time = 10
[Command]
name = "Adash_back"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "superjump"    
command = $D,$U
time = 10
[Command]
name = "superjump"    
command = ~D,$U
time = 5
[Command]
name = "Asuperjump"
command = U, D, U, D, U, D, U, D
time = 1

[Command]
name = "jumpby"
command = ~$U,$U
[Command]
name = "airjump"
command = $U
time = 2

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "x+y"
command = a+b

[Command]
name = "a+b"
command = b+c

[Command]
name = "a"
command = /$F, a

[Command]
name = "b"
command = c

[Command]
name = "c"
command = c

[Command]
name = "x"
command = a

[Command]
name = "y"
command = b

[Command]
name = "z"
command = c

[Command]
name = "up"
command = U
[Command]
name = "down"
command = D
[Command]
name = "fwd"
command = F
[Command]
name = "back"
command = B

[Command]
name = "block"
command = $B
[Command]
name = "start"
command = s

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
[Command]
name = "holdback";Required (do not remove)
command = /$B
[Command]
name = "holdup" ;Required (do not remove)
command = /$U
[Command]
name = "holddown";Required (do not remove)
command = /$D

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "holda"
command = /a

[Command]
name = "holdb"
command = /c

[Command]
name = "holdc"
command = /c

[Command]
name = "holdx"
command = /a

[Command]
name = "holdy"
command = /b

[Command]
name = "holdz"
command = /c

[Command]
name = "holdstart"
command = /s

; Don't remove the following line. It's required by the CMD standard.

;Abstract Reordered: A/B/C = light punch / heavy punch / heavy kick, X = Data Collect (hold),
;Y = grab, Z = parry, A+B+C = burst. 214214 + two attacks = Planet Power.
[Command]
name = "ar_x"
command = x
time = 1

[Command]
name = "ar_holdx"
command = /x
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
name = "ar_planet"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[Command]
name = "ar_planet"
command = ~D, DB, B, D, DB, B, b+c
time = 30

[Command]
name = "ar_planet"
command = ~D, DB, B, D, DB, B, a+c
time = 30

[Statedef -1]

;---------------------------------------------------------------------------
;Abstract Reordered: burst (Kamijo's) - A+B+C while being hit, recharges in 75 s (var(44))
[State -1, AR burst round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(44) = 0

[State -1, AR burst recharge]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = var(44) > 0
var(44) = -1
ignorehitpause = 1

;Abstract Reordered: comeback - once a combo has done more than 15% of max life, every further hit
;knocks half a second (30 ticks) off the burst cooldown. var(45) = life when the combo started, var(46) = life last tick
[State -1, AR burst comeback]
type = VarAdd
triggerall = !ishelper
triggerall = var(44) > 0
trigger1 = movetype = H
trigger1 = Life < var(46)
trigger1 = var(45) - Life > LifeMax * 0.15
var(44) = -30
ignorehitpause = 1

[State -1, AR burst comeback clamp]
type = VarSet
triggerall = !ishelper
trigger1 = var(44) < 0
var(44) = 0
ignorehitpause = 1

[State -1, AR burst combo start]
type = VarSet
triggerall = !ishelper
trigger1 = movetype != H
var(45) = Life
ignorehitpause = 1

[State -1, AR burst last life]
type = VarSet
triggerall = !ishelper
trigger1 = 1
var(46) = Life
ignorehitpause = 1

;Abstract Reordered: burst HUD - Touma's BURST gauge, recoloured, just under the lifebar.
;var(44) = cooldown ticks (4500 = just used, 0 = ready). Anims 9660-9668, explod IDs = anims.
[State -1, AR burst gauge 9668 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9668) = 0
trigger1 = var(44) = 0
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
trigger1 = var(44) = 0
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
trigger1 = var(44) > 3750
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
trigger1 = var(44) <= 3750 && var(44) > 3000
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
trigger1 = var(44) <= 3000 && var(44) > 2250
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
trigger1 = var(44) <= 2250 && var(44) > 1500
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
trigger1 = var(44) <= 1500 && var(44) > 750
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
trigger1 = var(44) <= 750 && var(44) > 0
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
trigger1 = var(44) > 3750
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
trigger1 = var(44) = 0
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
trigger1 = var(44) = 0
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
trigger1 = var(44) > 3750
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
trigger1 = var(44) <= 3750 && var(44) > 3000
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
trigger1 = var(44) <= 3000 && var(44) > 2250
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
trigger1 = var(44) <= 2250 && var(44) > 1500
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
trigger1 = var(44) <= 1500 && var(44) > 750
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
trigger1 = var(44) <= 750 && var(44) > 0
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
trigger1 = var(44) > 3750
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
trigger1 = !(var(44) = 0)
ID = 9668
ignorehitpause = 1

[State -1, AR burst gauge 9661 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9661)
trigger1 = !(var(44) = 0)
ID = 9661
ignorehitpause = 1

[State -1, AR burst gauge 9660 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9660)
trigger1 = !(var(44) > 3750)
ID = 9660
ignorehitpause = 1

[State -1, AR burst gauge 9662 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9662)
trigger1 = !(var(44) <= 3750 && var(44) > 3000)
ID = 9662
ignorehitpause = 1

[State -1, AR burst gauge 9663 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9663)
trigger1 = !(var(44) <= 3000 && var(44) > 2250)
ID = 9663
ignorehitpause = 1

[State -1, AR burst gauge 9664 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9664)
trigger1 = !(var(44) <= 2250 && var(44) > 1500)
ID = 9664
ignorehitpause = 1

[State -1, AR burst gauge 9665 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9665)
trigger1 = !(var(44) <= 1500 && var(44) > 750)
ID = 9665
ignorehitpause = 1

[State -1, AR burst gauge 9666 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9666)
trigger1 = !(var(44) <= 750 && var(44) > 0)
ID = 9666
ignorehitpause = 1

[State -1, AR burst gauge 9667 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9667)
trigger1 = !(var(44) > 3750)
ID = 9667
ignorehitpause = 1


[State -1, AR burst]
type = ChangeState
value = ifelse(StateType = A, 7751, 7750)
triggerall = !ishelper
triggerall = var(59) = 0
triggerall = command = "ar_burst"
triggerall = var(44) = 0
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
triggerall = var(59) = 0
triggerall = command = "ar_parry"
trigger1 = ctrl

;Abstract Reordered: hold X = Data Collect (builds Aqua Mist)
[State -1, AR Data Collect]
type = ChangeState
value = 196
triggerall = !IsHelper
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "ar_x"
trigger1 = ctrl

;Abstract Reordered: Y = grab (run-in throw attempt)
[State -1, AR grab flag reset]
type = VarSet
trigger1 = !IsHelper
trigger1 = stateno != 100
trigger1 = var(47)
var(47) = 0

[State -1, AR Grab]
type = ChangeState
value = 100
triggerall = !IsHelper
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "ar_grab"
trigger1 = ctrl
trigger2 = stateno = [100,101]
trigger1 = (var(47) := 1) || 1
trigger2 = (var(47) := 1) || 1


[State -1, KeyCtrll]
type = Helper
trigger1 = !numhelper(7000)
stateno = 7000
ID = 7000
name = "KeyCtrl"
pos = 0,0
postype = p1
facing = 1
ownpal = 1
keyctrl = 1
pausemovetime = 9999
supermovetime = 9999
ignorehitpause = 1

[State -1, projectile index]
type = VarSet
trigger1 = var(35)%2 = 0
trigger1 = !numhelper(1050)
trigger1 = !numhelper(1200)
var(35) = var(35)/2

[State -1, projectile index]
type = VarSet
trigger1 = var(35)%3 = 0
trigger1 = !numhelper(2000)
trigger1 = !numhelper(3000)
var(35) = var(35)/3

[State -1, projectile index]
type = VarSet
trigger1 = var(35)!=1
trigger1 = numhelper(1050)+numhelper(1200)+numhelper(2000)+numhelper(3000)=0
var(35) = 1

[State -1, AI Level]
type = VarSet
trigger1 = ailevel
var(59) = 4+(1+3*numhelper(3500))*ailevel**2

[State -1, AI var]
type = VarSet
trigger1 = 1;var(59)
fvar(20) = p2bodydist x+2*enemynear,vel x*facing*enemynear,facing

[State -1, AI var]
type = VarSet
trigger1 = 1;var(59)
fvar(21) = p2bodydist y+(20*(enemynear,vel y>-2)-40*(enemynear,vel y<-4))*(enemynear,statetype=A)

[State -1, AI var]
type = VarAdd
trigger1 = p2movetype = H
trigger1 = p2stateno = [5020,5071]
trigger1 = var(59)
fvar(21) = 4.5*enemynear,gethitvar(yaccel)*(p2statetype=A)

[State -1, AI var]
type = VarAdd
trigger1 = p2movetype != H
trigger1 = p2stateno = [50,51]
trigger1 = var(59)
fvar(21) = 4.5*enemynear,const(movement.yaccel)*(p2statetype=A)

[State -1, AI p2 not throwable]
type = RemoveExplod
triggerall = var(59)
triggerall = numexplod(5120)
trigger1 = enemynear,stateno=5120
id = 5120
[State -1, AI p2 not throwable]
type = Explod
triggerall = var(59)
trigger1 = enemynear,stateno=5120
anim = 9999
ID = 5120
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 12
sprpriority = -4
ontop = 0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
ignorehitpause = 1
removeongethit = 0

;AI p2 state--------------------------------------
[State -1, AI p2 state index]
type = VarSet
trigger1 = 1
var(49) = 1
[State -1, AI p2 state index];p2 is crouching or small (2)
type = VarSet
trigger1 = enemynear,statetype = C
trigger2 = enemynear,const(size.head.pos.y)>-60*const(size.yscale)
trigger2 = enemynear,pos y>-40*const(size.yscale)
trigger3 = enemynear,SelfAnimExist(3016304)
trigger3 = enemynear,stateno = [1200,1210]
trigger3 = enemynear,movetype = A
var(49) = var(49)*2
[State -1, AI p2 state index];p2 is not throwable (3)
type = VarSet
trigger1 = (enemynear,statetype = A)||(enemynear,statetype = L)
trigger2 = numexplod(5120)
trigger3 = !(enemynear,hitover)
trigger4 = enemynear,SelfAnimExist(3016302)
trigger4 = enemynear,numhelper(2000)>0
trigger5 = enemynear,SelfAnimExist(3016304)
trigger5 = enemynear,stateno = 3100
trigger5 = enemynear,movetype != H
var(49) = var(49)*3
[State -1, AI p2 state index];p2 not hit by attacks (5)
type = VarSet
trigger1 = enemynear,SelfAnimExist(3016301)
trigger1 = enemynear,numhelper(3100)>0
trigger2 = enemynear,SelfAnimExist(3016302)
trigger2 = enemynear,numhelper(2000)>0
trigger3 = enemynear,SelfAnimExist(3016304)
trigger3 = enemynear,stateno = 2200 || enemynear,stateno = 3100
trigger3 = enemynear,movetype != H
trigger4 = enemynear,stateno = 5120
trigger5 = enemynear,SelfAnimExist(301630)
trigger5 = enemynear,stateno = 750
trigger5 = enemynear,time<30
trigger6 = enemynear,SelfAnimExist(3016305)
trigger6 = enemynear,stateno = [1230,1235]
trigger6 = enemynear,animelemno(0)<8
var(49) = var(49)*5
[State -1, AI p2 state index];p2 not hit by projectiles (7)
type = VarSet
trigger1 = enemynear,SelfAnimExist(3016302)
trigger1 = enemynear,numhelper(2000)>0
trigger2 = enemynear,SelfAnimExist(3016304)
trigger2 = (enemynear,stateno = [1200,1210])||(enemynear,stateno = 2200)
trigger2 = enemynear,movetype = A
trigger3 = enemynear,SelfAnimExist(3016304)
trigger3 = enemynear,stateno = 3100
trigger3 = enemynear,movetype != H
trigger4 = enemynear,stateno = 5120
trigger5 = enemynear,SelfAnimExist(301630)
trigger5 = enemynear,stateno = 750
trigger5 = enemynear,time<30
trigger6 = enemynear,SelfAnimExist(3016305)
trigger6 = enemynear,stateno = [1230,1235]
trigger6 = enemynear,animelemno(0)<8
var(49) = var(49)*7
[State -1, AI p2 state index];p2 uses special (for counters via supers) (11)
type = VarSet
triggerall = enemynear,time<10
triggerall = enemynear,movetype = A
trigger1 = !enemynear,SelfAnimExist(301630)
trigger1 = enemynear,stateno = [1000,1999]
trigger2 = enemynear,SelfAnimExist(301630)
trigger2 = enemynear,stateno = [1000,2999]
trigger2 = (!enemynear,SelfAnimExist(3016301))||(enemynear,stateno!=[1200,1210])
var(49) = var(49)*11
;character-specific------------------------------
[State -1, AI p2 state index];Mercury Shine Aqua Illusion 
type = VarSet
trigger1 = enemynear,SelfAnimExist(3016302)
trigger1 = enemynear,numhelper(1200)
var(49) = var(49)*13
[State -1, AI p2 state index];Mars Running Fire
type = null;VarSet
trigger1 = enemynear,SelfAnimExist(3016303)
trigger1 = enemynear,numhelper(1200)
var(49) = var(49)*17
[State -1, AI p2 state index];Moon Tiara Stardust
type = VarSet
triggerall = enemynear,SelfAnimExist(3016301)
trigger1 = enemynear,numhelper(3070)
trigger2 = enemynear,numhelper(3071)
var(49) = var(49)*19
[State -1, AI p2 state index];Jupiter Kick Reversal
type = VarSet
trigger1 = enemynear,SelfAnimExist(3016304)
trigger1 = enemynear,stateno = 3100
trigger1 = enemynear,movetype != H
var(49) = var(49)*23
;------------------------------------------------

[State -1, AI Guard]
type = ChangeState
value = 120
triggerall = random%8<ailevel
triggerall = !numhelper(3500)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = inguarddist && ctrl
triggerall = stateno != [101,106]
triggerall = stateno != [120,155]
triggerall = !(enemynear,hitdefattr = SCA, AT) && (enemynear,time < 120)
trigger1 = p2stateno<1000
trigger1 = 0.15*random<var(59)
trigger2 = p2stateno = [1000,2999]
trigger2 = 0.1*random<var(59)
trigger3 = (p2stateno>=3000)||(var(49)%13)
trigger3 = 0.05*random<var(59)
[State -1, AI Guard]
type = AssertSpecial
triggerall = var(59)>0
trigger1 = stateno != [120,155]
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

[State -1, heart attack spam counter]
type = Explod
triggerall = !numexplod(11502)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = enemynear,SelfAnimExist(3016301)
triggerall = enemynear,time = 2
trigger1 = enemynear,stateno = 1500
trigger2 = enemynear,stateno = 1510
trigger3 = enemynear,stateno = 2500
anim = 9999
ID = 11502
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 20
sprpriority = -5
ontop = 0
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 0
removeongethit = 0
[State -1, AI heart attack spam counter]
type = ChangeState
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = numexplod(11502)
triggerall = fvar(20)>60
triggerall = random%80<var(59)
triggerall = ctrl
triggerall = statetype!=A
trigger1 = !inguarddist
value = 100

[State -1, AI loses player]
type = VarSet
triggerall = enemynear,SelfAnimExist(301630)
trigger1 = enemynear,var(3)<=5
var(59) = 0

[State -1, AI launcher follow up]
type = ChangeState
triggerall = stateno = 410
trigger1 = (var(59)>0)&&(roundstate=2)
trigger1 = movehit&&numtarget
value = 60
;===========================================================================
;Normals (AI)
;---------------------------------------------------------------------------
[State -1, AI Tackle]
type = ChangeState
value = 705
triggerall = (var(49)%2)*(var(49)%5)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = statetype != A
triggerall = p2statetype!=L
trigger1 = var(20) = [0,50]
trigger1 = stateno = 700
trigger1 = movehit

[State -1, AI Run (combo)]
type = ChangeState
value = 100
triggerall = random%8<ailevel
triggerall = var(49)%5
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 0.4*random<var(59)*10
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = !numhelper(3500)
triggerall = movehit && numtarget
;p2 dist
triggerall = fvar(20) = [0,75]
triggerall = fvar(21)>-30
;combos
trigger1 = stateno = 210
trigger2 = stateno = 240

[State -1, AI SLP]
type = ChangeState
value = 200
triggerall = random%8<ailevel
triggerall = (var(49)%2)*(var(49)%5)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 0.3*random<var(59)+25
triggerall = statetype != A
triggerall = p2statetype!=L
;p2 dist
triggerall = fvar(20)<20
triggerall = p2dist x>0
triggerall = fvar(21) > -30
;combos
trigger1 = ctrl
trigger2 = stateno = 200 && time>6
trigger3 = stateno = 400 && (time>7||movecontact)
trigger4 = numhelper(3500)
trigger4 = stateno = [200,799]
trigger4 = movecontact
trigger4 = helper(3500),numexplod(200) = 0

[State -1, AI CLP]
type = ChangeState
value = 400
triggerall = random%8<ailevel
triggerall = (var(49)%5)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 0.3*random<var(59)+25
triggerall = statetype != A
triggerall = (p2statetype!=L)&&(p2statetype!=A)
;p2 dist
triggerall = fvar(20)<25
triggerall = p2dist x>0
triggerall = fvar(21) > -10
;combos
trigger1 = ctrl
trigger2 = stateno = 200 && time>6
trigger3 = stateno = 400 && (time>7||movecontact)
trigger4 = numhelper(3500)
trigger4 = stateno = [200,799]
trigger4 = movecontact
trigger4 = helper(3500),numexplod(400) = 0

[State -1, AI SLK]
type = ChangeState
value = 230
triggerall = random%8<ailevel
triggerall = (var(49)%5)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 0.6*random<var(59)*(1+15*(movehit&&numtarget)+10*(numhelper(3500)>0))
triggerall = statetype != A
triggerall = p2statetype!=A
triggerall = (p2statetype != L)||(p2stateno = 5110)
;p2 dist
triggerall = fvar(20) = [0,25]
triggerall = fvar(21) > -10
;combos
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = (stateno%50=[0,9])
trigger2 = movecontact
trigger3 = stateno = 230 && time>12
trigger4 = stateno = 430 && time>10
trigger5 = numhelper(3500)
trigger5 = stateno = [200,799]
trigger5 = movecontact
trigger5 = helper(3500),numexplod(230) = 0

[State -1, AI CLK]
type = ChangeState
value = 430
triggerall = random%8<ailevel
triggerall = (var(49)%5)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 0.6*random<var(59)*(1+15*(movecontact&&numtarget)+10*(numhelper(3500)>0||p2stateno = [5080,5110]))
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = (p2statetype != L)||(fvar(20)<20&&p2stateno = [5080,5110])
;p2 dist
triggerall = fvar(20) = [0,35]
triggerall = fvar(21) >= 0
;combos
trigger1 = ctrl
trigger2 = !moveguarded||p2statetype=S
trigger2 = stateno = [200,499]
trigger2 = (stateno%50=[0,9])
trigger2 = movecontact
trigger3 = stateno = 230 && time>12
trigger4 = stateno = 430 && time>10
trigger5 = numhelper(3500)
trigger5 = stateno = [200,799]
trigger5 = movecontact
trigger5 = helper(3500),numexplod(430) = 0

[State -1, AI SHP]
type = ChangeState
value = 210
triggerall = random%8<ailevel
triggerall = (var(49)%2)*(var(49)%5)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 1.0*random<var(59)*(1+10*(movehit&&numtarget)+10*(numhelper(3500)>0))
triggerall = statetype != A
triggerall = p2statetype!=L
triggerall = p2movetype!=H||p2statetype!=A||enemynear,vel y<=0||fvar(21)<-60
;p2 dist
triggerall = fvar(20) = [0,40]
triggerall = fvar(21) > -20
;combos
trigger1 = fvar(20)>10
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = (stateno%50=[0,9])||(stateno%50=[30,39])
trigger2 = movecontact
trigger3 = numhelper(3500)
trigger3 = stateno = [200,799]
trigger3 = movecontact
trigger3 = helper(3500),numexplod(210) = 0

[State -1, AI CHK]
type = ChangeState
value = 440
triggerall = random%8<ailevel
triggerall = (var(49)%5)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 1.0*random<var(59)*(1+10*(movecontact&&numtarget)+10*(numhelper(3500)>0||p2stateno = [5080,5110]))
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = (p2statetype != L)||(p2stateno = [5080,5110])
;p2 dist
triggerall = fvar(20) = [0,45]
triggerall = fvar(21) >= 0
;combos
trigger1 = fvar(20)>20
trigger1 = ctrl
trigger2 = !moveguarded||p2statetype=S
trigger2 = stateno = [200,499]
trigger2 = (stateno%50=[0,9])||(stateno%50=[30,39])
trigger2 = movecontact
trigger3 = numhelper(3500)
trigger3 = stateno = [200,799]
trigger3 = movecontact
trigger3 = !numhelper(440)
trigger3 = helper(3500),numexplod(440)

[State -1, AI CHP (launcher)]
type = ChangeState
value = 410
triggerall = random%8<ailevel
triggerall = (var(49)%5)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 0.6*random<var(59)*(1+5*(movehit&&numtarget)+10*(numhelper(3500)>0))
triggerall = statetype != A
triggerall = p2statetype!=L
;p2 dist
triggerall = fvar(20) = [0,35]
triggerall = fvar(21) > -60
;combos
trigger1 = fvar(20)<20
trigger1 = ctrl
trigger2 = fvar(20)<20
trigger2 = stateno = [200,499]
trigger2 = (stateno%50=[0,9])||(stateno%50=[30,39])
trigger2 = movecontact
trigger3 = numhelper(3500)
trigger3 = stateno = [200,799]
trigger3 = movecontact
trigger3 = helper(3500),numexplod(410) = 0

[State -1, AI SHK]
type = ChangeState
value = 240
triggerall = random%8<ailevel
triggerall = (var(49)%2)*(var(49)%5)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 1.0*random<var(59)*(1+10*(movehit&&numtarget)+10*(numhelper(3500)>0))
triggerall = statetype != A
triggerall = p2statetype!=L
triggerall = p2movetype!=H||p2statetype!=A||enemynear,vel y<=0||fvar(21)<-60
;p2 dist
triggerall = fvar(20) = [0,65]
triggerall = fvar(21) > -40
;combos
trigger1 = fvar(20)>20
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = (stateno%50=[0,9])||(stateno%50=[30,39])
trigger2 = movecontact
trigger3 = numhelper(3500)
trigger3 = stateno = [200,799]
trigger3 = movecontact
trigger3 = helper(3500),numexplod(240) = 0

[State -1, AI Cross-up Attack]
type = ChangeState
value = 730
triggerall = random%8<ailevel
triggerall = (var(49)%5)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = .5*random<var(59)*10
triggerall = statetype = A
triggerall = (p2statetype!=L)
;p2 dist
triggerall = fvar(20)+10*(vel x>0)+20*(stateno=110) = [-60,-20]
triggerall = p2dist x<-10
;combos
trigger1 = ctrl
trigger1 = fvar(21) = [-20,55-25*(var(49)%2=0)]
trigger2 = stateno = 110
trigger2 = time>8

[State -1, AI Jumpdown Attack]
type = ChangeState
value = 720
triggerall = random%8<ailevel
triggerall = (var(49)%2)*(var(49)%5)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 0.3*random<var(59)*(1+2*(stateno=110&&p2statetype!=A))+25
triggerall = statetype = A
triggerall = p2statetype!=L
;p2 dist
triggerall = fvar(20)-10*(vel x>0) = [0,20+20*(stateno=110&&p2statetype!=A)]
triggerall = fvar(21) = [30,60]
triggerall = (vel y>-1)||numhelper(3500)
triggerall = stateno != 110 || fvar(20)>20
;combos
trigger1 = ctrl
trigger2 = numhelper(3500)
trigger2 = stateno = [200,799]
trigger2 = movecontact
trigger3 = stateno = 110
trigger3 = time>8

[State -1, AI JLP]
type = ChangeState
value = 600
triggerall = random%8<ailevel
triggerall = (var(1)!=2)||(stateno!=50)||(time>10)||(pos y<-40)
triggerall = (var(49)%5)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 0.2*random<25+var(59)*(1+5*var(42)+30*(var(1)=2))
triggerall = statetype = A
triggerall = (p2statetype!=L)
;p2 dist
triggerall = fvar(20) = [0,10+5*(vel x>0)+40*(stateno=110)]
triggerall = (fvar(21) = [-10-10*(var(1)=2),40])
;combos
trigger1 = ctrl
trigger2 = numhelper(3500)
trigger2 = stateno = [200,799]
trigger2 = movecontact
trigger2 = helper(3500),numexplod(600) = 0
trigger3 = stateno = 110
trigger3 = time>8

[State -1, AI JLK]
type = ChangeState
value = 630
triggerall = random%8<ailevel
triggerall = (var(1)!=2)||(stateno!=50)||(time>10)||(pos y<-40)
triggerall = (var(49)%5)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 0.3*random<var(59)*(1+15*(movehit&&numtarget)+10*(numhelper(3500)>0))
triggerall = statetype = A
triggerall = (p2statetype!=L)
;p2 dist
triggerall = fvar(20) = [0,35+5*(vel x>0)+40*(stateno=110)]
;combos
trigger1 = ctrl
trigger1 = (fvar(21) = [-40,20])||(var(1)=2)
trigger2 = stateno=600
trigger2 = movecontact
trigger3 = numhelper(3500)
trigger3 = stateno = [200,799]
trigger3 = movecontact
trigger3 = helper(3500),numexplod(630) = 0
trigger4 = stateno = 110
trigger4 = time>8
trigger4 = fvar(21) = [-30,30]

[State -1, AI JHP]
type = ChangeState
value = 610
triggerall = random%8<ailevel
triggerall = (var(1)!=2)||(stateno!=50)||(time>10)||(pos y<-40)
triggerall = (var(49)%5)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = .5*random<var(59)*(1+10*(movehit&&numtarget)+10*(numhelper(3500)>0)+7*(stateno=110&&p2statetype!=A))
triggerall = statetype = A
triggerall = (p2statetype!=L)
;p2 dist
triggerall = fvar(20) = [0,25+10*(vel x>0)+40*(stateno=110)]
triggerall = (fvar(21) = [-20*(movecontact>0),60-20*(var(49)%2=0)])
triggerall = stateno != 110 || fvar(20)>20
;combos
trigger1 = ctrl
trigger1 = vel y>-2.5
trigger2 = stateno = [600,699]
trigger2 = (stateno%50=[0,9])||(stateno%50=[30,39])
trigger2 = movecontact
trigger3 = numhelper(3500)
trigger3 = stateno = [200,799]
trigger3 = movecontact
trigger3 = helper(3500),numexplod(610) = 0
trigger4 = stateno = 110
trigger4 = time>8

[State -1, AI JHK]
type = ChangeState
value = 640
triggerall = random%8<ailevel
triggerall = (var(1)!=2)||(stateno!=50)||(time>10)||(pos y<-40)
triggerall = (var(49)%5)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = .5*random<var(59)*(1+10*(movehit&&numtarget)+10*(numhelper(3500)>0))
triggerall = statetype = A
triggerall = (p2statetype!=L)
;p2 dist
triggerall = fvar(20)+20*(vel x>0)+20*(stateno=110) = [0,45]
triggerall = fvar(20)>0
;combos
trigger1 = ctrl
trigger1 = fvar(21) = [-10,65-25*(var(49)%2=0)]
trigger2 = stateno = [600,699]
trigger2 = (stateno%50=[0,9])||(stateno%50=[30,39])
trigger2 = movecontact
trigger3 = numhelper(3500)
trigger3 = stateno = [200,799]
trigger3 = movecontact
trigger3 = helper(3500),numexplod(640) = 0
trigger4 = stateno = 110
trigger4 = time>8

[State -1, AI Taunt]
type = ChangeState
value = 195+(var(2)>0)
triggerall = life>.5*lifemax
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = (7-2*var(2))*random<1+5*(p2statetype=L)+10*(life-p2life>600)
triggerall = statetype != A
triggerall = !numhelper(3500)
;p2 dist
trigger1 = fvar(20)>80
trigger1 = ctrl
;==========================================================================
;Movement (AI)
;--------------------------------------------------------------------------
[State -1, AI Run Fwd]
type = ChangeState
value = 100
triggerall = (var(49)%13)*(var(49)%23)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 3.0*random<var(59)*(1+30*((movehit&&numtarget)||numhelper(3500)||numhelper(2000)||p2stateno=17398))
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = !numhelper(1200)||(random%5)||numhelper(3500)||(p2stateno=17398)
;p2 dist
trigger1 = ctrl
trigger1 = fvar(20)>60
trigger1 = !inguarddist
;combos
trigger2 = var(57)
trigger2 = stateno = [200,499]
trigger2 = movehit
trigger2 = (stateno%50=[10,19])||(stateno%50=[40,49])
trigger2 = (stateno!=440)&&(stateno!=410)

[State -1, AI Run Fwd (throw)]
type = ChangeState
value = 100
triggerall = (var(49)%3)*(var(49)%13)*(var(49)%23)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 2.0*random<var(59)*30
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = fvar(20) = [0,35]
;p2 dist
trigger1 = ctrl
trigger1 = !inguarddist
trigger1 = p2statetype!=A
trigger1 = enemynear,ctrl

[State -1, AI Dash Back]
type = ChangeState
value = 105
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 3.0*random<var(59)*(1+20*(moveguarded>0)*(!numhelper(3500))+10*(var(49)%13=0||var(49)%19=0||var(49)%23=0||p2stateno=5120))
triggerall = statetype != A
triggerall = backedgebodydist>50
triggerall = !var(42)
;p2 dist
triggerall = (fvar(20) = [0,60])||(moveguarded)||(var(49)%23=0)
triggerall = (p2movetype = A)||(gametime%5 = 0)
;combos
trigger1 = ctrl
trigger2 = var(57)
trigger2 = stateno = [200,499]
trigger2 = moveguarded
trigger2 = gametime%30 = [15,25]
trigger3 = var(57)
trigger3 = stateno = [120,159]
trigger3 = HitShakeOver
trigger3 = gametime%20 = [10,19]

[State -1, AI Super Jump]
type = ChangeState
value = 60
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 3.0*random<var(59)*(1+20*(moveguarded>0)*(!numhelper(3500))+10*(var(49)%13=0||var(49)%23=0))
triggerall = statetype != A
;p2 dist
trigger1 = ctrl
trigger1 = fvar(21)<-100
trigger1 = !inguarddist
;combos
trigger2 = var(57)
trigger2 = stateno = [200,499]
trigger2 = moveguarded
trigger2 = gametime%30 = [0,5]
trigger3 = var(57)
trigger3 = stateno = [120,159]
trigger3 = HitShakeOver
trigger3 = gametime%20 = [0,9]

[State -1, AI Air Jump]
type = ChangeState
value = 45
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = pos y<-const(movement.airjump.height)
triggerall = statetype = A
triggerall = ctrl
triggerall = var(32)
triggerall = vel y>=-4+2*(anim=[44,46])
triggerall = 10>random
trigger1 = fvar(21)<-40
trigger2 = fvar(20)>100
trigger3 = fvar(20)=[0,50]
trigger4 = var(49)%23=0
trigger4 = pos y<-70

[State -1, AI Air Dash]
type = ChangeState
value = 110
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = var(33)
triggerall = 3.0*random<var(59)*(1+10*(var(49)%13=0))
triggerall = pos y<-const(movement.airjump.height)
triggerall = statetype = A
triggerall = ctrl
;p2 dist
trigger1 = fvar(20)>100-50*(var(49)%13=0)
trigger1 = pos y<-80 || var(49)%13

[State -1, AI Air Dash (jumping in)]
type = ChangeState
value = 110
triggerall = random%8<ailevel
triggerall = var(49)%5
triggerall = var(49)%13 || pos y<-70
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = var(33)
triggerall = (.2+1.8*inguarddist)*random<var(59)
triggerall = pos y<-const(movement.airjump.height)
triggerall = statetype = A
triggerall = ctrl
triggerall = p2statetype = S || p2statetype = C
;p2 dist
trigger1 = fvar(20) = [60,120]
trigger1 = fvar(21) = [20,60]
;===========================================================================
;Specials (AI)
;---------------------------------------------------------------------------
[State -1, AI Aqua Mirage LP]
type = VarSet
v = 20+0*(var(21):=1)
value = 1500
triggerall = (var(49)%5)*(var(49)%19)
triggerall = var(2)>1
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 1.75*random<var(59)*5
triggerall = pos y<-ceil(.75*const(movement.airjump.height))
triggerall = statetype = A
triggerall = p2statetype!=L
triggerall = enemynear,vel y<0
;p2 dist
triggerall = fvar(20)=[-120,-20]
triggerall = fvar(21)>-30
trigger1 = ctrl
trigger1 = !inguarddist
;combos
trigger2 = stateno = 730
trigger2 = moveguarded

[State -1, AI Aqua Mirage HP]
type = VarSet
v = 20+0*(var(21):=1)
value = 1510
triggerall = (var(1)!=2)||(stateno!=50)||(time>10)||(pos y<-40)
triggerall = (var(49)%5)*(var(49)%19)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 1.75*random<var(59)*(10+10*(movehit&&numtarget))
triggerall = pos y<-ceil(.75*const(movement.airjump.height))
triggerall = statetype = A
triggerall = p2statetype!=L
triggerall = enemynear,vel y<0
;p2 dist
triggerall = fvar(20)=[20,120]
triggerall = fvar(21)>-30
trigger1 = ctrl
trigger1 = !inguarddist
;combos
trigger2 = stateno = [200,799]
trigger2 = movehit
trigger2 = (stateno%50=[10,19])||(stateno%50=[40,49])||(stateno>=700)

[State -1, AI Shine Aqua Illusion LP/HP]
type = VarSet
v = 20+0*(var(21):=1)
value = 1200+10*(moveguarded||fvar(20)<80)
triggerall = (var(49)%7)
triggerall = !var(53)||(var(35)=1)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = !movehit
triggerall = (fvar(20)<80||!inguarddist)
triggerall = numhelper(1270)+numhelper(1271)+numhelper(3060)+numhelper(3061) = 0
triggerall = 2.5*random<var(59)*(3+17*(moveguarded)+50*(stateno>=700))
triggerall = !numhelper(3500)||(random%5=0)
triggerall = statetype != A
triggerall = p2statetype!=L
;p2 dist
triggerall = fvar(21)>-60
trigger1 = fvar(20) = [40,130]
trigger1 = ctrl||(stateno = [100,101])
;combos
trigger2 = stateno = [200,799]
trigger2 = moveguarded
trigger2 = (stateno%50=[10,19])||(stateno%50=[40,49])||(stateno>=700)

[State -1, AI Shabon Spray LP/HP]
type = VarSet
v = 20+0*(var(21):=1)
value = 1010-10*(random%2)
triggerall = !numexplod(5946)
triggerall = (var(49)%2)*(var(49)%7)*(var(49)%13)
triggerall = !var(53)||(var(35)=1)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 1.0*random<var(59)*(3+17*(moveguarded)+50*(stateno>=700))
triggerall = !movehit
triggerall = statetype != A
triggerall = p2statetype!=L
triggerall = p2movetype!=H||p2statetype!=A||enemynear,vel y<=0||fvar(21)<-60
;p2 dist
triggerall = fvar(21)>-50
trigger1 = fvar(20)>80
trigger1 = ctrl||(stateno = [100,101])
trigger1 = !inguarddist
;combos
trigger2 = stateno = [200,799]
trigger2 = movehit
trigger2 = (stateno%50=[10,19])||(stateno%50=[40,49])||(stateno>=700)
trigger2 = (stateno!=440)&&(stateno!=410)&&(stateno!=710)

[State -1, AI Reverse Break Step LK/HK]
type = VarSet
v = 20+0*(var(21):=1)
value = 1300+10*(fvar(20)>40||movehit)
triggerall = (var(49)%2)*(var(49)%5)*(var(49)%13)*(var(49)%19)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 1.5*random<var(59)*(1+20*(movehit&&numtarget)+50*(stateno>=700))
triggerall = statetype != A
triggerall = p2statetype!=L
;p2 dist
triggerall = fvar(21)>-100
trigger1 = fvar(20) = [30,100]
trigger1 = ctrl||(stateno = [100,101])
trigger1 = !inguarddist
;combos
trigger2 = stateno = [200,799]
trigger2 = movehit
trigger2 = (stateno%50=[10,19])||(stateno%50=[40,49])||(stateno>=700)
trigger2 = (stateno!=440)&&(stateno!=410)&&(stateno!=710)
trigger2 = stateno!=240

[State -1, AI Aqua Ribbon Upper LP/HP]
type = VarSet
v = 20+0*(var(21):=1)
value = 1100+10*((fvar(21)<-50)||movehit)
triggerall = !numexplod(5928)
triggerall = (var(49)%2)*(var(49)%5)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 1.25*random<var(59)*(3+12*((movehit&&numtarget)||var(42)))
triggerall = statetype != A
triggerall = p2statetype!=L
;p2 dist
triggerall = fvar(21)<-35
triggerall = fvar(20) = [0,30]
trigger1 = ctrl||(stateno = [100,101])
trigger1 = !inguarddist
;combos
trigger2 = stateno = 410
trigger2 = movehit
;===========================================================================
;EX Specials (AI)
;---------------------------------------------------------------------------
[State -1, AI EX Shabon Spray Barrier]
type = VarSet
v = 20+0*(var(21):=1)
value = 2000
triggerall = !numexplod(5946)
triggerall = !var(53)||(var(35)=1)||(var(35)%3>0)
triggerall = power>=500
triggerall = !numhelper(3500)
triggerall = random<50+450*(power>2500)-40*(power>1500&&power<2500)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 2.25*random<var(59)*(1+10*(stateno=[1000,1010]))
triggerall = statetype != A
triggerall = p2statetype!=L
;p2 dist
triggerall = fvar(20)=[80,160]
trigger1 = ctrl||(stateno = [100,101])
trigger1 = !inguarddist
;combos
trigger2 = stateno = [1000,1010]

[State -1, AI EX Water Bullet]
type = VarSet
v = 20+0*(var(21):=1)
value = 2300
triggerall = (var(49)%2)*(var(49)%5)*(var(49)%19)
triggerall = power>=500
triggerall = !numhelper(3500)
triggerall = random<50+450*(power>2500)-40*(power>1500&&power<2500)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 1.75*random<var(59)*(2+8*((movehit&&numtarget)||var(42)))
triggerall = statetype != A
triggerall = p2statetype!=L
triggerall = (!movecontact&&var(43)=0)||stateno!=1310||time>35
triggerall = p2movetype!=H||p2statetype!=A||enemynear,vel y<=0||fvar(21)<-60
;p2 dist
triggerall = fvar(21)>-30-20*(fvar(20)<80)
trigger1 = fvar(20) = [40,180]
trigger1 = ctrl||(stateno = [100,101])
;combos
trigger2 = stateno = [200,799]
trigger2 = movehit
trigger2 = (stateno%50=[10,19])||(stateno%50=[40,49])||(stateno>=700)
trigger2 = (stateno!=440)&&(stateno!=410)&&(stateno!=710)
trigger2 = stateno!=240
trigger3 = movehit
trigger3 = stateno=1300||(animelemno(0)>=10&&stateno=1310)
trigger4 = stateno = [1300,1310]
trigger4 = !movecontact

[State -1, AI EX Triple Aqua Ribbon Upper]
type = VarSet
v = 20+0*(var(21):=1)
value = 2100
triggerall = !numexplod(5928)
triggerall = (var(49)%2)*(var(49)%5)
triggerall = power>=500
triggerall = !numhelper(3500)
triggerall = random<50+450*(power>2500)-40*(power>1500&&power<2500)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 1.25*random<var(59)*(2+5*((movehit&&numtarget)||var(42))+8*(stateno=[1100,1110]))
triggerall = (statetype != A)||(stateno=[1100,1110])
triggerall = p2statetype!=L
;p2 dist
triggerall = fvar(21)<-35+25*(movehit>0)*(stateno>1000)
triggerall = fvar(20) = [0,50]
trigger1 = ctrl||(stateno = [100,101])
trigger1 = !inguarddist
;combos
trigger2 = stateno = 410
trigger2 = movehit
trigger3 = stateno = [1100,1110]
;===========================================================================
;Supermoves (AI)
;---------------------------------------------------------------------------
[State -1, AI Shabon Spray Freezing]
type = VarSet
v = 20+0*(var(21):=1)
value = 3000
triggerall = (var(49)%2)
triggerall = power>=2000-500*(numhelper(3500)>0)
triggerall = cond(numhelper(3500),helper(3500),time>120,1)
triggerall = numhelper(3000)+numhelper(3060)+numhelper(3061) = 0
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = .75*random<var(59)*(1+15*(movehit&&numtarget)+2*(var(49)%11=0))
triggerall = numhelper(3500)||(random%2)
triggerall = (var(20)<100)||(random%2=0)
triggerall = statetype != A
triggerall = p2statetype!=L
triggerall = p2movetype!=H||p2statetype!=A||enemynear,vel y<=0||fvar(21)<-60
;p2 dist
triggerall = fvar(21)>-40
trigger1 = fvar(20)>60
trigger1 = ctrl||(stateno = [100,101])
trigger1 = !inguarddist
;combos
trigger2 = stateno = [200,799]
trigger2 = movehit
trigger2 = (stateno%50=[10,19])||(stateno%50=[40,49])||(stateno>=700)
trigger2 = (stateno!=440)&&(stateno!=410)

[State -1, AI Shine Aqua Cutter]
type = VarSet
v = 20+0*(var(21):=1)
value = 3100
triggerall = power>=2000-500*(numhelper(3500)>0)
triggerall = cond(numhelper(3500),helper(3500),time>120,1)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = .35*random<var(59)*(1+(10+5*var(2))*(movehit&&numtarget))
triggerall = numhelper(3500)||(random%2)
triggerall = statetype != A
triggerall = p2statetype!=L
;p2 dist
triggerall = fvar(21)>-40
triggerall = fvar(20) = [-60,60]
trigger1 = ctrl||(stateno = [100,101])
trigger1 = !inguarddist
;combos
trigger2 = stateno = [200,799]
trigger2 = movehit
trigger2 = (stateno%50=[10,19])||(stateno%50=[40,49])||(stateno>=700)
trigger2 = (stateno!=440)&&(stateno!=410)
;==========================================================================
;System
;--------------------------------------------------------------------------
[State -1, AI Planet Power]
type = ChangeState
value = 3500
triggerall = (var(49)%5)
triggerall = (var(59)>0)&&(roundstate=2)
triggerall = 3.0*random<var(59)*(1+5*var(42))
triggerall = statetype != A
triggerall = ctrl
triggerall = power>=1000
triggerall = (!inguarddist)&&p2stateno<1000
triggerall = life>ceil(lifemax*.33)
triggerall = fvar(20) = [0,120]
triggerall = !numhelper(3500)
triggerall = (random<100)||(power>=2500)
trigger1 = random<100-75*(power<2500)
trigger2 = !enemynear,canrecover
trigger2 = enemynear,statetype != L
ignorehitpause = 1

[State -1, Planet Power]
type = ChangeState
value = 3500
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = ctrl
triggerall = power>=1000
triggerall = !numhelper(3500)
trigger1 = command = "ar_planet"   ;Abstract Reordered: 214214 + two attacks
ignorehitpause = 1
;==========================================================================
;Movement (Player)
;--------------------------------------------------------------------------
[State -1, Super Jump]
type = VarSet
v = 20+0*(var(21):=(stateno=150||stateno=152||stateno=154)*gethitvar(ctrltime))
value = 60
triggerall = var(20)!=1
triggerall = (var(20)!=[1000,2999])||ctrl||(stateno=[120,159])
triggerall = var(59) = 0
trigger1 = command = "superjump"
trigger2 = var(51)
trigger2 = command = "Asuperjump"
ignorehitpause = 1
[State -1, Run Fwd]
type = VarSet
v = 20+0*(var(21):=(stateno=150||stateno=152||stateno=154)*gethitvar(ctrltime))
value = 100
triggerall = var(20)!=1
triggerall = (var(20)!=[2000,2999])||ctrl||(stateno=[120,159])
triggerall = var(59) = 0
trigger1 = command = "dash_fwd"
trigger1 = p2dist x>=0
trigger2 = command = "dash_back"
trigger2 = p2dist x<0
trigger3 = 0   ;Abstract Reordered: no button run (the throw is on Y)
ignorehitpause = 1
[State -1, Run Back]
type = VarSet
v = 20+0*(var(21):=(stateno=150||stateno=152||stateno=154)*gethitvar(ctrltime))
value = 105
triggerall = var(20)!=1
triggerall = (var(20)!=[2000,2999])||ctrl||(stateno=[120,159])
triggerall = var(59) = 0
trigger1 = (command = "dash_back")||(command = "Adash_back"&&var(51))
trigger1 = p2dist x>=0
trigger2 = (command = "Adash_back_rev"&&var(51))||command = "dash_fwd"
trigger2 = p2dist x<0
ignorehitpause = 1
;===========================================================================
;Specials (Player)
;---------------------------------------------------------------------------
[State -1, Shabon Spray LP]
type = VarSet
v = 20+0*(var(21):=var(56))
value = 1000
triggerall = roundstate = 2
triggerall = !var(53)||(var(35)=1)
triggerall = var(59) = 0
triggerall = ((var(20)!=1)&&(var(20)!=stateno-(stateno%100)+1000))||(stateno!=[1000,1999])
trigger1 = helper(7000),cond(facing=root,facing,command="chargeB_LP",command="chargeF_LP")
ignorehitpause = 1
[State -1, Shabon Spray HP]
type = VarSet
v = 20+0*(var(21):=var(56))
value = 1010
triggerall = roundstate = 2
triggerall = !var(53)||(var(35)=1)
triggerall = var(59) = 0
triggerall = ((var(20)!=1)&&(var(20)!=stateno-(stateno%100)+1000))||(stateno!=[1000,1999])
trigger1 = helper(7000),cond(facing=root,facing,command="chargeB_HP",command="chargeF_HP")
trigger2 = helper(7000),cond(facing=root,facing,command="chargeB_PP",command="chargeF_PP")
ignorehitpause = 1

[State -1, Shine Aqua Illusion LP]
type = VarSet
v = 20+0*(var(21):=var(56))
value = 1200
triggerall = roundstate = 2
triggerall = !var(53)||(var(35)=1)
triggerall = var(59) = 0
triggerall = numhelper(1270)+numhelper(1271)+numhelper(3060)+numhelper(3061) = 0
triggerall = ((var(20)!=1)&&(var(20)!=stateno-(stateno%100)+1000))||(stateno!=[1000,1999])
trigger1 = helper(7000),cond(facing=root,facing,command="QCB_LP",command="QCF_LP")
ignorehitpause = 1
[State -1, Shine Aqua Illusion HP]
type = VarSet
v = 20+0*(var(21):=var(56))
value = 1210
triggerall = roundstate = 2
triggerall = !var(53)||(var(35)=1)
triggerall = var(59) = 0
triggerall = numhelper(1270)+numhelper(1271)+numhelper(3060)+numhelper(3061) = 0
triggerall = ((var(20)!=1)&&(var(20)!=stateno-(stateno%100)+1000))||(stateno!=[1000,1999])
trigger1 = helper(7000),cond(facing=root,facing,command="QCB_HP",command="QCF_HP")
trigger2 = helper(7000),cond(facing=root,facing,command="QCB_PP",command="QCF_PP")
ignorehitpause = 1

[State -1, Aqua Ribbon Upper LP]
type = VarSet
v = 20+0*(var(21):=var(56))
value = 1100
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = ((var(20)!=1)&&(var(20)!=stateno-(stateno%100)+1000))||(stateno!=[1000,1999])
trigger1 = helper(7000),command = "chargeD_LP"
ignorehitpause = 1
[State -1, Aqua Ribbon Upper HP]
type = VarSet
v = 20+0*(var(21):=var(56))
value = 1110
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = ((var(20)!=1)&&(var(20)!=stateno-(stateno%100)+1000))||(stateno!=[1000,1999])
trigger1 = helper(7000),command = "chargeD_HP"
trigger2 = helper(7000),command = "chargeD_PP"
ignorehitpause = 1

[State -1, Reverse Break Step LK]
type = VarSet
v = 20+0*(var(21):=var(56))
value = 1300
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = ((var(20)!=1)&&(var(20)!=stateno-(stateno%100)+1000))||(stateno!=[1000,1999])
trigger1 = helper(7000),cond(facing=root,facing,command="QCB_LK",command="QCF_LK")
ignorehitpause = 1
[State -1, Reverse Break Step HK]
type = VarSet
v = 20+0*(var(21):=var(56))
value = 1310
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = ((var(20)!=1)&&(var(20)!=stateno-(stateno%100)+1000))||(stateno!=[1000,1999])
trigger1 = helper(7000),cond(facing=root,facing,command="QCB_HK",command="QCF_HK")
trigger2 = helper(7000),cond(facing=root,facing,command="QCB_KK",command="QCF_KK")
ignorehitpause = 1

[State -1, Aqua Mirage LP]
type = VarSet
v = 20+0*(var(21):=var(56))
value = 1500
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(59) = 0
triggerall = ((var(20)!=1)&&(var(20)!=stateno-(stateno%100)+1000))||(stateno!=[1000,1999])
triggerall = (pos y<-ceil(.75*const(movement.airjump.height)))
triggerall = stateno<1000
trigger1 = helper(7000),cond(facing=root,facing,command="QCB_LP",command="QCF_LP")
ignorehitpause = 1
[State -1, Aqua Mirage HP]
type = VarSet
v = 20+0*(var(21):=var(56))
value = 1510
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = var(59) = 0
triggerall = ((var(20)!=1)&&(var(20)!=stateno-(stateno%100)+1000))||(stateno!=[1000,1999])
triggerall = (pos y<-ceil(.75*const(movement.airjump.height)))
triggerall = stateno<1000
trigger1 = helper(7000),cond(facing=root,facing,command="QCB_HP",command="QCF_HP")
trigger2 = helper(7000),cond(facing=root,facing,command="QCB_PP",command="QCF_PP")
ignorehitpause = 1

;===========================================================================
;EX Specials (Player)
;---------------------------------------------------------------------------
[State -1, EX Shabon Spray Barrier]
type = VarSet
v = 20+0*(var(21):=var(56))
value = 2000
triggerall = roundstate = 2
triggerall = !var(53)||(var(35)=1)||(var(35)%3>0)
triggerall = power>=500
triggerall = var(59) = 0
trigger1 = helper(7000),cond(facing=root,facing,command="chargeB_LP",command="chargeF_LP")
trigger1 = helper(7000),command!="holdy"&&helper(7000),var(2) = 1
trigger2 = helper(7000),cond(facing=root,facing,command="chargeB_HP",command="chargeF_HP")
trigger2 = helper(7000),command!="holdx"&&helper(7000),var(1) = 1
trigger3 = helper(7000),cond(facing=root,facing,command="chargeB_LP",command="chargeF_LP")
trigger3 = helper(7000),cond(facing=root,facing,command="chargeB_HP",command="chargeF_HP")
trigger4 = helper(7000),cond(facing=root,facing,command="chargeB_PP",command="chargeF_PP")
ignorehitpause = 1

[State -1, EX Triple Aqua Ribbon Upper]
type = VarSet
v = 20+0*(var(21):=var(56))
value = 2100
triggerall = roundstate = 2
triggerall = power>=500
triggerall = var(59) = 0
trigger1 = helper(7000),command = "chargeD_LP"
trigger1 = helper(7000),command!="holdy"&&helper(7000),var(2) = 1
trigger2 = helper(7000),command = "chargeD_HP"
trigger2 = helper(7000),command!="holdx"&&helper(7000),var(1) = 1
trigger3 = helper(7000),command = "chargeD_LP"
trigger3 = helper(7000),command = "chargeD_HP"
trigger4 = helper(7000),command = "chargeD_PP"
ignorehitpause = 1

[State -1, EX Water Bullet]
type = VarSet
v = 20+0*(var(21):=var(56))
value = 2300
triggerall = roundstate = 2
triggerall = power>=500
triggerall = var(59) = 0
trigger1 = helper(7000),cond(facing=root,facing,command="QCB_LK",command="QCF_LK")
trigger1 = helper(7000),command!="holdb"&&helper(7000),var(5) = 1
trigger2 = helper(7000),cond(facing=root,facing,command="QCB_HK",command="QCF_HK")
trigger2 = helper(7000),command!="holda"&&helper(7000),var(4) = 1
trigger3 = helper(7000),cond(facing=root,facing,command="QCB_LK",command="QCF_LK")
trigger3 = helper(7000),cond(facing=root,facing,command="QCB_HK",command="QCF_HK")
trigger4 = helper(7000),cond(facing=root,facing,command="QCB_KK",command="QCF_KK")
ignorehitpause = 1

;===========================================================================
;Supermoves (Player)
;---------------------------------------------------------------------------
[State -1, Shabon Spray Freezing]
type = VarSet
v = 20+0*(var(21):=var(56))
value = 3000
triggerall = roundstate = 2
triggerall = numhelper(3000)+numhelper(3060)+numhelper(3061) = 0
triggerall = var(59) = 0
trigger1 = helper(7000),cond(facing=root,facing,command="Shabon Spray Freezing",command="Shabon Spray Freezing R")
ignorehitpause = 1

[State -1, Shine Aqua Cutter]
type = VarSet
v = 20+0*(var(21):=var(56))
value = 3100
triggerall = roundstate = 2
triggerall = var(59) = 0
trigger1 = helper(7000),cond(facing=root,facing,command="Shine Aqua Cutter",command="Shine Aqua Cutter R")
ignorehitpause = 1

;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;Command reader
[State -1, Supers]
type = ChangeState
value = var(20)+0*(var(21):=0)
triggerall = roundstate = 2
triggerall = power>=2000-500*(numhelper(3500)>0)
triggerall = var(20) = [3000,3499]
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = [200,799])
trigger3 = stateno = [100,101]
trigger4 = stateno = [0,52]
[State -1, EX SSpecials]
type = ChangeState
value = var(20)+0*(var(21):=0)
triggerall = roundstate = 2
triggerall = var(20) = [2000,2499]
triggerall = statetype != A
triggerall = power>=500
trigger1 = ctrl || (stateno = 40||stateno = 60||stateno = 151||stateno = 153)*(var(20)=2100)
trigger2 = movecontact && (stateno = [200,799])
trigger3 = stateno = [100,101]
[State -1, SSpecials]
type = ChangeState
value = var(20)+0*(var(21):=0)
triggerall = roundstate = 2
triggerall = var(20) = [1000,1499]
triggerall = statetype != A
trigger1 = ctrl || (stateno = 40||stateno = 60||stateno = 151||stateno = 153)*(var(20)=[1100,1110])
trigger2 = movecontact && (stateno = [200,799])
trigger3 = stateno = [100,101]
[State -1, EX ASpecials]
type = ChangeState
value = var(20)+0*(var(21):=0)+500*(var(20)<2500)
triggerall = roundstate = 2
triggerall = var(20) = [2500,2999]
triggerall = statetype = A
triggerall = power>=500
triggerall = pos y<=-ceil(.75*const(movement.airjump.height))
trigger1 = ctrl
trigger2 = movecontact && ((stateno=[720,730])||(stateno = [600,699]))
[State -1, ASpecials]
type = ChangeState
value = var(20)+0*(var(21):=0)+500*(var(20)<1500)
triggerall = roundstate = 2
triggerall = var(20) = [1500,1999]
triggerall = statetype = A
triggerall = pos y<=-ceil(.75*const(movement.airjump.height))
trigger1 = ctrl
trigger2 = movecontact && ((stateno=[720,730])||(stateno = [600,699]))
[State -1, Movement]
type = ChangeState
value = var(20)+0*(var(21):=0)
triggerall = var(20) = [60,105]
triggerall = var(20)!=100||stateno!=101
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(57)&&movecontact&&stateno = [200,499]
trigger3 = var(57)&&(stateno = 151||stateno = 153)&&(var(20)!=100)
;Reset buffer
[State -1, Input timer]
type = VarAdd
triggerall = HitShakeOver
triggerall = !HitPauseTime
triggerall = var(21)
trigger1 = stateno!=[1000,1999]
trigger2 = var(20)!=stateno+1000-(stateno%100)
trigger3 = movetype = H
var(21) = -1
[State -1, Reset buffer]
type = VarSet
triggerall = !var(21)
trigger1 = var(20)
var(20) = 0
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;===========================================================================
;Normals (Player)
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195   ;Abstract Reordered: Data Collect is on X
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "start"

[State -1, Tackle]
type = ChangeState
value = 705
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = command = "x"||command = "y"
trigger1 = stateno = 700
trigger1 = movecontact

[State -1, Air Jump]
type = ChangeState
value = 45
triggerall = pos y<-const(movement.airjump.height)
triggerall = statetype = A
triggerall = ctrl
triggerall = var(32)
triggerall = vel y>=-4+2*(anim=[44,46])
triggerall = var(59) = 0
trigger1 = command = "airjump"
trigger1 = command != "jumpby"

[State -1, Air Dash]
type = ChangeState
value = 110
triggerall = pos y<-const(movement.airjump.height)
triggerall = statetype = A
triggerall = ctrl
triggerall = var(33)
triggerall = var(59) = 0
trigger1 = command = "dash_fwd"
trigger1 = command != "holdback"
trigger2 = 0   ;Abstract Reordered: no button air dash
trigger2 = (command = "x"&&command = "y")||command = "z"
trigger3 = 0   ;Abstract Reordered: no button air dash
trigger3 = (command = "a"&&command = "b")||command = "c"

[State -1, S/CHP]
type = ChangeState
value = 210+200*(command = "holddown")
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = (command = "y")
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = (stateno%50=[0,9])||(stateno%50=[30,39])
trigger2 = movecontact
trigger3 = numhelper(3500)
trigger3 = stateno = [200,799]
trigger3 = movecontact

[State -1, S/CHK]
type = ChangeState
value = 240+200*(command = "holddown")
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = (command = "b"||command = "c")
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = (stateno%50=[0,9])||(stateno%50=[30,39])
trigger2 = movecontact
trigger3 = numhelper(3500)
trigger3 = stateno = [200,799]
trigger3 = movecontact

[State -1, S/CLP]
type = ChangeState
value = 200+200*(command = "holddown")
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "a"   ;Abstract Reordered: 6A / 3A = light kicks
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time>6
trigger3 = stateno = 400 && (time>7||movecontact)
trigger4 = numhelper(3500)
trigger4 = stateno = [200,799]
trigger4 = (stateno != 200)||(command = "holddown")
trigger4 = movecontact
;trigger5 = stateno = 100

[State -1, S/CLK]
type = ChangeState
value = 230+200*(command = "holddown")
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = command = "a"
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = (stateno%50=[0,9])||stateno=235
trigger2 = movecontact
trigger3 = stateno = 230 && time>12
trigger4 = stateno = 430 && time>10
trigger5 = numhelper(3500)
trigger5 = stateno = [200,799]
trigger5 = movecontact
;trigger6 = stateno = 100

[State -1, Cross-up Attack]
type = ChangeState
value = 730
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = statetype = A
triggerall = command = "holddown"||command = "down"
triggerall = (command = "y")||(command = "b")||(command = "z")||(command = "c")
trigger1 = ctrl
trigger2 = stateno = 110
trigger2 = time>8

[State -1, Jumpdown Attack]
type = ChangeState
value = 720
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = statetype = A
triggerall = command = "holddown"||command = "down"
triggerall = (command = "x")||(command = "a")
trigger1 = ctrl
trigger2 = numhelper(3500)
trigger2 = stateno = [600,799]
trigger2 = movecontact
trigger3 = stateno = 110
trigger3 = time>8

[State -1, JHP]
type = ChangeState
value = 610
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = statetype = A
triggerall = command = "y"
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = (stateno%50=[0,9])||(stateno%50=[30,39])
trigger2 = movecontact
trigger3 = stateno = 720
trigger3 = movecontact
trigger4 = numhelper(3500)
trigger4 = stateno = [600,799]
trigger4 = movecontact
trigger5 = stateno = 110
trigger5 = time>8

[State -1, JHK]
type = ChangeState
value = 640
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = statetype = A
triggerall = command = "b"||command = "c"
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = (stateno%50=[0,9])||(stateno%50=[30,39])
trigger2 = movecontact
trigger3 = stateno = 720
trigger3 = movecontact
trigger4 = numhelper(3500)
trigger4 = stateno = [600,799]
trigger4 = movecontact
trigger5 = stateno = 110
trigger5 = time>8

[State -1, JLP]
type = ChangeState
value = 600
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = statetype = A
triggerall = command = "x"
trigger1 = ctrl
trigger2 = numhelper(3500)
trigger2 = stateno = [600,799]
trigger2 = movecontact
trigger3 = stateno = 110
trigger3 = time>8

[State -1, JLK]
type = ChangeState
value = 630
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = statetype = A
triggerall = command = "a"
trigger1 = ctrl
trigger2 = stateno=600
trigger2 = movecontact
trigger3 = numhelper(3500)
trigger3 = stateno = [600,799]
trigger3 = movecontact
trigger4 = stateno = 110
trigger4 = time>8
