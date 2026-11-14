; Nice Nature AR - placeholder: no moves yet, only the engine's common states (stand / walk / crouch / jump)
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
command.buffer.time = 1

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
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10


[Command]
name = "x"
command = x
time = 1

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
name = "qcf_a"
command = ~D, DF, F, a
time = 15

[Command]
name = "qcf_b"
command = ~D, DF, F, b
time = 15

[Command]
name = "qcf_c"
command = ~D, DF, F, c
time = 15

[Statedef -1]

[State -1, 236 Dismantle H (EX)]
type = ChangeState
value = 1002
triggerall = command = "qcf_c"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 225]) || (stateno = [400, 420])
trigger2 = movecontact

[State -1, 236 Dismantle M]
type = ChangeState
value = 1001
triggerall = command = "qcf_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 225]) || (stateno = [400, 420])
trigger2 = movecontact

[State -1, 236 Dismantle L]
type = ChangeState
value = 1000
triggerall = command = "qcf_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 225]) || (stateno = [400, 420])
trigger2 = movecontact

[State -1, Black Flash]
type = ChangeState
value = 1500
triggerall = command = "x"
triggerall = var(20) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 215 || stateno = 225 || stateno = 400 || stateno = 410 || stateno = 420
trigger2 = movecontact

[State -1, 2L crouching jab (Kenshiro 2A)]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact

[State -1, 2M crouching elbow (NT Touma 2B)]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact

[State -1, 2H dropkick (CvS Karin 2HK)]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400 || stateno = 215 || stateno = 410
trigger2 = movecontact

[State -1, 5L jab]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact

[State -1, 5M low kick]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact

[State -1, 5H high kick]
type = ChangeState
value = 225
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400 || stateno = 215 || stateno = 410 || stateno = 420
trigger2 = movecontact

[State -1, j2C forward leap (Touma j.2C)]
type = ChangeState
value = 630
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact

[State -1, jL flying knee]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = movecontact

[State -1, jM air punch]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

[State -1, jH flying kick]
type = ChangeState
value = 620
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630
trigger2 = movecontact

[State -1, jump cancel (M/H ground normals on hit)]
type = ChangeState
value = 40
triggerall = command = "holdup"
trigger1 = stateno = 215 || stateno = 225 || stateno = 410 || stateno = 420
trigger1 = movehit

[State -1, j.2C bounce count resets once the opponent is out of hitstun]
type = VarSet
trigger1 = var(32) > 0
trigger1 = numenemy
trigger1 = enemynear, movetype != H
v = 32
value = 0

[State -1, 5C launch count resets once the opponent is out of hitstun]
type = VarSet
trigger1 = var(33) > 0
trigger1 = numenemy
trigger1 = enemynear, movetype != H
v = 33
value = 0


[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
