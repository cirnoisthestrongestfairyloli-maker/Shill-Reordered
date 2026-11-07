; ________________________
;| Broly by Mr.Ansatsuken |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< COMMAND FILE >=======================================
;==============================================================================================
	
;===================< BUTTON REMAPPING >===================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;===================< DEFAULT VALUES >===================

[Defaults]
command.time = 15
command.buffer.time = 1


;===================< SINGLE BUTTON >===================

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


;===================< HOLD DIR >===================

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


;===================< HOLD BUTTON >===================

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


;===================< DIR >===================

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


;===================< SUPER MOTIONS >===================

[Command]
name = "sgs"
command = x, x, F, a, z
time = 48
[Command]
name = "sgs"
command = x, x, F, a+z
time = 40
[Command]
name = "sgs"
command = x, x+F, a, z
time = 40
[Command]
name = "sgs"
command = x, x, F+a, z
time = 40
[Command]
name = "sgs"
command = x, x, F+a+z
time = 32
[Command]
name = "sgs"
command = x, x+F+a, z
time = 32
[Command]
name = "sgs"
command = x, x+F, a+z
time = 32

[Command]
name = "jks"
command = x, x, B, a, z
time = 48
[Command]
name = "jks"
command = x, x, B+a, z
time = 40
[Command]
name = "jks"
command = x, x+B, a, z
time = 40
[Command]
name = "jks"
command = x, x, B, a+z
time = 40
[Command]
name = "jks"
command = x, x+B, a+z
time = 32
[Command]
name = "jks"
command = x, x, B+a+z
time = 32
[Command]
name = "jks"
command = x, x+B, a+z
time = 32

[Command]
name = "otokomichi"
command = z, a, ~B, x, x
time = 48
[Command]
name = "otokomichi"
command = z+a, ~B, x, x
time = 40
[Command]
name = "otokomichi"
command = z, a, ~B+x, x
time = 40
[Command]
name = "otokomichi"
command = z, a+B,x, x
time = 40
[Command]
name = "otokomichi"
command = z, a+B+x, x
time = 32
[Command]
name = "otokomichi"
command = z+a+B, x, x
time = 32
[Command]
name = "otokomichi"
command = z+a, ~B+x, x
time = 32


[Command]
name = "qcfhcbp"
command = ~D, F, DF, D, B, x
time = 45
[Command]
name = "qcfhcbp"
command = ~D, F, DF, D, B, y
time = 45
[Command]
name = "qcfhcbp"
command = ~D, F, DF, D, B, z
time = 45
[Command]
name = "qcfhcbp"
command = ~D, F, DF, D, B, ~x
time = 45
[Command]
name = "qcfhcbp"
command = ~D, F, DF, D, B, ~y
time = 45
[Command]
name = "qcfhcbp"
command = ~D, F, DF, D, B, ~z
time = 45

[Command]
name = "2qcf2p"
command = ~D, DF, F, D, DF, F, x+y
time = 30
[Command]
name = "2qcf2p"
command = ~D, DF, F, D, DF, F, x+z
time = 30
[Command]
name = "2qcf2p"
command = ~D, DF, F, D, DF, F, y+z
time = 30

[Command]
name = "qcbqcf2p"
command = ~D, DB, B, D, DF, F, x+y
time = 30
[Command]
name = "qcbqcf2p"
command = ~D, DB, B, D, DF, F, x+z
time = 30
[Command]
name = "qcbqcf2p"
command = ~D, DB, B, D, DF, F, y+z
time = 30

[Command]
name = "qcbqcf2k"
command = ~D, DB, B, D, DF, F, a+b
time = 30
[Command]
name = "qcbqcf2k"
command = ~D, DB, B, D, DF, F, a+c
time = 30
[Command]
name = "qcbqcf2k"
command = ~D, DB, B, D, DF, F, b+c
time = 30

[Command]
name = "qcfqcbk"
command = ~D, DF, F, D, DB, B, a
time = 30
[Command]
name = "qcfqcbk"
command = ~D, DF, F, D, DB, B, b
time = 30
[Command]
name = "qcfqcbk"
command = ~D, DF, F, D, DB, B, c
time = 30

[Command]
name = "qcfqcb2k"
command = ~D, DF, F, D, DB, B, a+b
time = 30
[Command]
name = "qcfqcb2k"
command = ~D, DF, F, D, DB, B, a+c
time = 30
[Command]
name = "qcfqcb2k"
command = ~D, DF, F, D, DB, B, b+c
time = 30

[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, x
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, y
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, z
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, ~x
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, ~y
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, ~z
time = 30

[Command]
name = "2qcfk"
command = ~D, DF, F, D, DF, F, a
time = 30
[Command]
name = "2qcfk"
command = ~D, DF, F, D, DF, F, b
time = 30
[Command]
name = "2qcfk"
command = ~D, DF, F, D, DF, F, c
time = 30
[Command]
name = "2qcfk"
command = ~D, DF, F, D, DF, F, ~a
time = 30
[Command]
name = "2qcfk"
command = ~D, DF, F, D, DF, F, ~b
time = 30
[Command]
name = "2qcfk"
command = ~D, DF, F, D, DF, F, ~c
time = 30

[Command]
name = "2qcf2k"
command = ~D, DF, F, D, DF, F, a+b
time = 30
[Command]
name = "2qcf2k"
command = ~D, DF, F, D, DF, F, b+c
time = 30
[Command]
name = "2qcf2k"
command = ~D, DF, F, D, DF, F, c+a
time = 30
[Command]
name = "2qcf2k"
command = ~D, DF, F, D, DF, F, ~a+b
time = 30
[Command]
name = "2qcf2k"
command = ~D, DF, F, D, DF, F, ~b+c
time = 30
[Command]
name = "2qcf2k"
command = ~D, DF, F, D, DF, F, ~c+a
time = 30

[Command]
name = "2qcfs"
command = ~D, DF, F, D, DF, F, s
time = 30
[Command]
name = "2qcfs"
command = ~D, DF, F, D, DF, F, ~s
time = 30

[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, x
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, y
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, z
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, ~x
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, ~y
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, ~z
time = 30

[Command]
name = "qcbx"
command = ~D, DB, B, x
time = 30
[Command]
name = "qcby"
command = ~D, DB, B, y
time = 30
[Command]
name = "qcbz"
command = ~D, DB, B, z
time = 30
[Command]
name = "qcbx"
command = ~D, DB, B, ~x
time = 30
[Command]
name = "qcby"
command = ~D, DB, B, ~y
time = 30
[Command]
name = "qcbz"
command = ~D, DB, B, ~z
time = 30

[Command]
name = "qcb2p"
command = ~D, DB, B, x+y
time = 30
[Command]
name = "qcb2p"
command = ~D, DB, B, y+z
time = 30
[Command]
name = "qcb2p"
command = ~D, DB, B, z+x
time = 30
[Command]
name = "qcb2p"
command = ~D, DB, B, ~x+y
time = 30
[Command]
name = "qcb2p"
command = ~D, DB, B, ~y+z
time = 30
[Command]
name = "qcb2p"
command = ~D, DB, B, ~z+x
time = 30

[Command]
name = "2qcbpk"
command = ~D, DB, B, D, DB, B, x+a
time = 30
[Command]
name = "2qcbpk"
command = ~D, DB, B, D, DB, B, y+b
time = 30
[Command]
name = "2qcbpk"
command = ~D, DB, B, D, DB, B, z+c
time = 30
[Command]
name = "2qcbpk"
command = ~D, DB, B, D, DB, B, ~x+a
time = 30
[Command]
name = "2qcbpk"
command = ~D, DB, B, D, DB, B, ~y+b
time = 30
[Command]
name = "2qcbpk"
command = ~D, DB, B, D, DB, B, ~z+c
time = 30

[Command]
name = "2qcfpk"
command = ~D, DF, F, D, DF, F, x+a
time = 30
[Command]
name = "2qcfpk"
command = ~D, DF, F, D, DF, F, y+b
time = 30
[Command]
name = "2qcfpk"
command = ~D, DF, F, D, DF, F, z+c
time = 30
[Command]
name = "2qcfpk"
command = ~D, DF, F, D, DF, F, ~x+a
time = 30
[Command]
name = "2qcfpk"
command = ~D, DF, F, D, DF, F, ~y+b
time = 30
[Command]
name = "2qcfpk"
command = ~D, DF, F, D, DF, F, ~z+c
time = 30

[Command]
name = "2qcb2p"
command = ~D, DB, B, D, DB, B, x+y
time = 30
[Command]
name = "2qcb2p"
command = ~D, DB, B, D, DB, B, y+z
time = 30
[Command]
name = "2qcb2p"
command = ~D, DB, B, D, DB, B, z+x
time = 30
[Command]
name = "2qcb2p"
command = ~D, DB, B, D, DB, B, ~x+y
time = 30
[Command]
name = "2qcb2p"
command = ~D, DB, B, D, DB, B, ~y+z
time = 30
[Command]
name = "2qcb2p"
command = ~D, DB, B, D, DB, B, ~z+x
time = 30

[Command]
name = "2qcbk"
command = ~D, DB, B, D, DB, B, a
time = 30
[Command]
name = "2qcbk"
command = ~D, DB, B, D, DB, B, b
time = 30
[Command]
name = "2qcbk"
command = ~D, DB, B, D, DB, B, c
time = 30
[Command]
name = "2qcbk"
command = ~D, DB, B, D, DB, B, ~a
time = 30
[Command]
name = "2qcbk"
command = ~D, DB, B, D, DB, B, ~b
time = 30
[Command]
name = "2qcbk"
command = ~D, DB, B, D, DB, B, ~c
time = 30

[Command]
name = "2qcb2k"
command = ~D, DB, B, D, DB, B, a+b
time = 30
[Command]
name = "2qcb2k"
command = ~D, DB, B, D, DB, B, b+c
time = 30
[Command]
name = "2qcb2k"
command = ~D, DB, B, D, DB, B, c+a
time = 30
[Command]
name = "2qcb2k"
command = ~D, DB, B, D, DB, B, ~a+b
time = 30
[Command]
name = "2qcb2k"
command = ~D, DB, B, D, DB, B, ~b+c
time = 30
[Command]
name = "2qcb2k"
command = ~D, DB, B, D, DB, B, ~c+a
time = 30

[Command]
name = "2qcbs"
command = ~D, DB, B, D, DB, B, s
time = 30
[Command]
name = "2qcbs"
command = ~D, DB, B, D, DB, B, ~s
time = 30


;===================< SPECIAL MOTIONS >===================

[Command]
name = "fhcfx"
command = ~F, B, D, F, x
time = 30
[Command]
name = "fhcfy"
command = ~F, B, D, F, y
time = 30
[Command]
name = "fhcfz"
command = ~F, B, D, F, z
time = 30
[Command]
name = "fhcfx"
command = ~F, B, D, F, ~x
time = 30
[Command]
name = "fhcfy"
command = ~F, B, D, F, ~y
time = 30
[Command]
name = "fhcfz"
command = ~F, B, D, F, ~z
time = 30

[Command]
name = "hcfx"
command = ~B, DB, D, DF, F, x
time = 30
[Command]
name = "hcfy"
command = ~B, DB, D, DF, F, y
time = 30
[Command]
name = "hcfz"
command = ~B, DB, D, DF, F, z
time = 30
[Command]
name = "hcfx"
command = ~B, DB, D, DF, F, ~x
time = 30
[Command]
name = "hcfy"
command = ~B, DB, D, DF, F, ~y
time = 30
[Command]
name = "hcfz"
command = ~B, DB, D, DF, F, ~z
time = 30

[Command]
name = "hcfa"
command = ~B, DB, D, DF, F, a
time = 30
[Command]
name = "hcfb"
command = ~B, DB, D, DF, F, b
time = 30
[Command]
name = "hcfc"
command = ~B, DB, D, DF, F, c
time = 30
[Command]
name = "hcfa"
command = ~B, DB, D, DF, F, ~a
time = 30
[Command]
name = "hcfb"
command = ~B, DB, D, DF, F, ~b
time = 30
[Command]
name = "hcfc"
command = ~B, DB, D, DF, F, ~c
time = 30

[Command]
name = "hcf2k"
command = ~B, DB, D, DF, F, a+b
time = 30
[Command]
name = "hcf2k"
command = ~B, DB, D, DF, F, b+c
time = 30
[Command]
name = "hcf2k"
command = ~B, DB, D, DF, F, c+a
time = 30
[Command]
name = "hcf2k"
command = ~B, DB, D, DF, F, ~a+b
time = 30
[Command]
name = "hcf2k"
command = ~B, DB, D, DF, F, ~b+c
time = 30
[Command]
name = "hcf2k"
command = ~B, DB, D, DF, F, ~c+a
time = 30

[Command]
name = "fhcf2p"
command = ~F, B, D, F, x+y
time = 30
[Command]
name = "fhcf2p"
command = ~F, B, D, F, x+z
time = 30
[Command]
name = "fhcf2p"
command = ~F, B, D, F, y+z
time = 30

[Command]
name = "hcb2k"
command = ~F, DF, D, DB, B, a+b
time = 30
[Command]
name = "hcb2k"
command = ~F, DF, D, DB, B, a+c
time = 30
[Command]
name = "hcb2k"
command = ~F, DF, D, DB, B, b+c
time = 30

[Command]
name = "dfx"
command = ~F, D, DF, x
time = 20
[Command]
name = "dfy"
command = ~F, D, DF, y
time = 20
[Command]
name = "dfz"
command = ~F, D, DF, z
time = 20
[Command]
name = "dfx"
command = ~F, D, DF, ~x
time = 20
[Command]
name = "dfy"
command = ~F, D, DF, ~y
time = 20
[Command]
name = "dfz"
command = ~F, D, DF, ~z
time = 20

[Command]
name = "df2p"
command = ~F, D, DF, x+y
time = 20
[Command]
name = "df2p"
command = ~F, D, DF, x+z
time = 20
[Command]
name = "df2p"
command = ~F, D, DF, y+z
time = 20

[Command]
name = "db2p"
command = ~B, D, DB, x+y
time = 20
[Command]
name = "db2p"
command = ~B, D, DB, x+z
time = 20
[Command]
name = "db2p"
command = ~B, D, DB, y+z
time = 20

[Command]
name = "df2k"
command = ~F, D, DF, a+b
time = 20
[Command]
name = "df2k"
command = ~F, D, DF, a+c
time = 20
[Command]
name = "df2k"
command = ~F, D, DF, b+c
time = 20
[Command]
name = "db2k"
command = ~B, D, DB, a+b
time = 20
[Command]
name = "db2k"
command = ~B, D, DB, a+c
time = 20
[Command]
name = "db2k"
command = ~B, D, DB, b+c
time = 20

[Command]
name = "df2k"
command = ~F, D, DF, a+b
time = 20
[Command]
name = "df2k"
command = ~F, D, DF, b+c
time = 20
[Command]
name = "df2k"
command = ~F, D, DF, c+a
time = 20

[Command]
name = "dfa"
command = ~F, D, DF, a
time = 16
[Command]
name = "dfb"
command = ~F, D, DF, b
time = 16
[Command]
name = "dfc"
command = ~F, D, DF, c
time = 16
[Command]
name = "dfa"
command = ~F, D, DF, ~a
time = 16
[Command]
name = "dfb"
command = ~F, D, DF, ~b
time = 16
[Command]
name = "dfc"
command = ~F, D, DF, ~c
time = 16

[Command]
name = "dbx"
command = ~B, D, DB, x
time = 20
[Command]
name = "dby"
command = ~B, D, DB, y
time = 20
[Command]
name = "dbz"
command = ~B, D, DB, z
time = 20
[Command]
name = "dbx"
command = ~B, D, DB, ~x
time = 20
[Command]
name = "dby"
command = ~B, D, DB, ~y
time = 20
[Command]
name = "dbz"
command = ~B, D, DB, ~z
time = 20

[Command]
name = "qcfx"
command = ~D, DF, F, x
time = 15
[Command]
name = "qcfy"
command = ~D, DF, F, y
time = 15
[Command]
name = "qcfz"
command = ~D, DF, F, z
time = 15
[Command]
name = "qcfx"
command = ~D, DF, F, ~x
time = 15
[Command]
name = "qcfy"
command = ~D, DF, F, ~y
time = 15
[Command]
name = "qcfz"
command = ~D, DF, F, ~z
time = 15

[Command]
name = "qcf2p"
command = ~D, DF, F, x+y
time = 15
[Command]
name = "qcf2p"
command = ~D, DF, F, x+z
time = 15
[Command]
name = "qcf2p"
command = ~D, DF, F, y+z
time = 15

[Command]
name = "qcf2k"
command = ~D, DF, F, a+b
time = 15
[Command]
name = "qcf2k"
command = ~D, DF, F, a+c
time = 15
[Command]
name = "qcf2k"
command = ~D, DF, F, b+c
time = 15

[Command]
name = "qcfa"
command = ~D, DF, F, a
time = 15
[Command]
name = "qcfb"
command = ~D, DF, F, b
time = 15
[Command]
name = "qcfc"
command = ~D, DF, F, c
time = 15
[Command]
name = "qcfa"
command = ~D, DF, F, ~a
time = 15
[Command]
name = "qcfb"
command = ~D, DF, F, ~b
time = 15
[Command]
name = "qcfc"
command = ~D, DF, F, ~c
time = 15

[Command]
name = "qcba"
command = ~D, DB, B, a
time = 15
[Command]
name = "qcbb"
command = ~D, DB, B, b
time = 15
[Command]
name = "qcbc"
command = ~D, DB, B, c
time = 15
[Command]
name = "qcba"
command = ~D, DB, B, ~a
time = 15
[Command]
name = "qcbb"
command = ~D, DB, B, ~b
time = 15
[Command]
name = "qcbc"
command = ~D, DB, B, ~c
time = 15

[Command]
name = "qcb2k"
command = ~D, DB, B, a+b
time = 15
[Command]
name = "qcb2k"
command = ~D, DB, B, a+c
time = 15
[Command]
name = "qcb2k"
command = ~D, DB, B, b+c
time = 15

[Command]
name = "qcb2p"
command = ~D, DB, B, x+y
time = 15
[Command]
name = "qcb2p"
command = ~D, DB, B, x+z
time = 15
[Command]
name = "qcb2p"
command = ~D, DB, B, y+z
time = 15

[Command]
name = "Counter_P"
command = F, D, DF, x
time = 16
[Command]
name = "Counter_P"
command = F, D, DF, y
time = 16
[Command]
name = "Counter_P"
command = F, D, DF, z
time = 16

[Command]
name = "Counter_K"
command = F, D, DF, a
time = 16
[Command]
name = "Counter_K"
command = F, D, DF, b
time = 16
[Command]
name = "Counter_K"
command = F, D, DF, c
time = 16

[Command]
name = "qcfs"
command = ~D, DF, F, s
time = 15
[Command]
name = "qcbs"
command = ~D, DB, B, s
time = 15
[Command]
name = "qcfs"
command = ~D, DF, F, ~s
time = 15
[Command]
name = "qcbs"
command = ~D, DB, B, ~s
time = 15



;===================< SPECIAL MOTIONS >===================

[Command]
name = "qcfp"
command = ~D, DF, F, x
time = 15
[Command]
name = "qcfp"
command = ~D, DF, F, y
time = 15
[Command]
name = "qcfp"
command = ~D, DF, F, z
time = 15
[Command]
name = "qcfp"
command = ~D, DF, F, s
time = 15
[Command]
name = "qcfp"
command = ~D, DF, F, ~x
time = 15
[Command]
name = "qcfp"
command = ~D, DF, F, ~y
time = 15
[Command]
name = "qcfp"
command = ~D, DF, F, ~z
time = 15

[Command]
name = "qcfk"
command = ~D, DF, F, a
time = 15
[Command]
name = "qcfk"
command = ~D, DF, F, b
time = 15
[Command]
name = "qcfk"
command = ~D, DF, F, c
time = 15
[Command]
name = "qcfk"
command = ~D, DF, F, ~a
time = 15
[Command]
name = "qcfk"
command = ~D, DF, F, ~b
time = 15
[Command]
name = "qcfk"
command = ~D, DF, F, ~c
time = 15

[Command]
name = "hcba"
command = ~F, DF, D, DB, B, a
time = 30
[Command]
name = "hcbb"
command = ~F, DF, D, DB, B, b
time = 30
[Command]
name = "hcbc"
command = ~F, DF, D, DB, B, c
time = 30
[Command]
name = "hcba"
command = ~F, DF, D, DB, B, ~a
time = 30
[Command]
name = "hcbb"
command = ~F, DF, D, DB, B, ~b
time = 30
[Command]
name = "hcbc"
command = ~F, DF, D, DB, B, ~c
time = 30

[Command]
name = "hcb2k"
command = ~F, DF, D, DB, B, a+b
time = 30
[Command]
name = "hcb2k"
command = ~F, DF, D, DB, B, b+c
time = 30
[Command]
name = "hcb2k"
command = ~F, DF, D, DB, B, c+a
time = 30
[Command]
name = "hcb2k"
command = ~F, DF, D, DB, B, ~a+b
time = 30
[Command]
name = "hcb2k"
command = ~F, DF, D, DB, B, ~b+c
time = 30
[Command]
name = "hcb2k"
command = ~F, DF, D, DB, B, ~c+a
time = 30


[Command]
name = "qcbx"
command = ~D, DB, B, x
time = 15
[Command]
name = "qcby"
command = ~D, DB, B, y
time = 15
[Command]
name = "qcbz"
command = ~D, DB, B, z
time = 15
[Command]
name = "qcbx"
command = ~D, DB, B, ~x
time = 15
[Command]
name = "qcby"
command = ~D, DB, B, ~y
time = 15
[Command]
name = "qcbz"
command = ~D, DB, B, ~z
time = 15

[Command]
name = "qcb2p"
command = ~D, DB, B, x+y
time = 15
[Command]
name = "qcb2p"
command = ~D, DB, B, y+z
time = 15
[Command]
name = "qcb2p"
command = ~D, DB, B, z+x
time = 15
[Command]
name = "qcb2p"
command = ~D, DB, B, ~x+y
time = 15
[Command]
name = "qcb2p"
command = ~D, DB, B, ~y+z
time = 15
[Command]
name = "qcb2p"
command = ~D, DB, B, ~z+x
time = 15

[Command]
name = "qcba"
command = ~D, DB, B, a
time = 15
[Command]
name = "qcbb"
command = ~D, DB, B, b
time = 15
[Command]
name = "qcbc"
command = ~D, DB, B, c
time = 15
[Command]
name = "qcba"
command = ~D, DB, B, ~a
time = 15
[Command]
name = "qcbb"
command = ~D, DB, B, ~b
time = 15
[Command]
name = "qcbc"
command = ~D, DB, B, ~c
time = 15

[Command]
name = "qcb2k"
command = ~D, DB, B, a+b
time = 30
[Command]
name = "qcb2k"
command = ~D, DB, B, b+c
time = 30
[Command]
name = "qcb2k"
command = ~D, DB, B, c+a
time = 30
[Command]
name = "qcb2k"
command = ~D, DB, B, ~a+b
time = 30
[Command]
name = "qcb2k"
command = ~D, DB, B, ~b+c
time = 30
[Command]
name = "qcb2k"
command = ~D, DB, B, ~c+a
time = 30

[Command]
name = "qcba"
command = ~D, DB, B, a+b
time = 15
[Command]
name = "qcbb"
command = ~D, DB, B, b+c
time = 15
[Command]
name = "qcbc"
command = ~D, DB, B, c+a
time = 15
[Command]
name = "qcba"
command = ~D, DB, B, ~a+b
time = 15
[Command]
name = "qcbb"
command = ~D, DB, B, ~b+c
time = 15
[Command]
name = "qcbc"
command = ~D, DB, B, ~c+a
time = 15


[Command]
name = "cbfx"
command = ~45$B, $F, x
time = 16
[Command]
name = "cbfy"
command = ~45$B, $F, y
time = 16
[Command]
name = "cbfz"
command = ~45$B, $F, z
time = 16
[Command]
name = "cbx"
command = ~45$B, $F, ~x
time = 16
[Command]
name = "cbfy"
command = ~45$B, $F, ~y
time = 16
[Command]
name = "cbfz"
command = ~45$B, $F, ~z
time = 16

[Command]
name = "cbfa"
command = ~45$B, $F, a
time = 16
[Command]
name = "cbfb"
command = ~45$B, $F, b
time = 16
[Command]
name = "cbfc"
command = ~45$B, $F, c
time = 16
[Command]
name = "cbfa"
command = ~45$B, $F, ~a
time = 16
[Command]
name = "cbfb"
command = ~45$B, $F, ~b
time = 16
[Command]
name = "cbfc"
command = ~45$B, $F, ~c
time = 16

[Command]
name = "cbf2p"
command = ~45$B, $F, x+y
time = 16
[Command]
name = "cbf2p"
command = ~45$B, $F, y+z
time = 16
[Command]
name = "cbf2p"
command = ~45$B, $F, x+z
time = 16

[Command]
name = "cbf2k"
command = ~45$B, $F, a+b
time = 16
[Command]
name = "cbf2k"
command = ~45$B, $F, b+c
time = 16
[Command]
name = "cbf2k"
command = ~45$B, $F, a+c
time = 16


[Command]
name = "bfx"
command = ~$B, $F, x
time = 16
[Command]
name = "bfy"
command = ~$B, $F, y
time = 16
[Command]
name = "bfz"
command = ~$B, $F, z
time = 16
[Command]
name = "bfx"
command = ~$B, $F, ~x
time = 16
[Command]
name = "bfy"
command = ~$B, $F, ~y
time = 16
[Command]
name = "bfz"
command = ~$B, $F, ~z
time = 16

[Command]
name = "bfa"
command = ~$B, $F, a
time = 16
[Command]
name = "bfb"
command = ~$B, $F, b
time = 16
[Command]
name = "bfc"
command = ~$B, $F, c
time = 16
[Command]
name = "bfa"
command = ~$B, $F, ~a
time = 16
[Command]
name = "bfb"
command = ~$B, $F, ~b
time = 16
[Command]
name = "bfc"
command = ~$B, $F, ~c
time = 16

[Command]
name = "bf2p"
command = ~$B, $F, x+y
time = 16
[Command]
name = "bf2p"
command = ~$B, $F, y+z
time = 16
[Command]
name = "bf2p"
command = ~$B, $F, x+z
time = 16

[Command]
name = "bf2k"
command = ~$B, $F, a+b
time = 16
[Command]
name = "bf2k"
command = ~$B, $F, b+c
time = 16
[Command]
name = "bf2k"
command = ~$B, $F, a+c
time = 16


[Command]
name = "Counter_P"
command = ~B, DB, D, x
time = 16
[Command]
name = "Counter_P"
command = ~B, DB, D, y
time = 16
[Command]
name = "Counter_P"
command = ~B, DB, D, z
time = 16

[Command]
name = "Counter_P"
command = ~B, DB, D, ~x
time = 16
[Command]
name = "Counter_P"
command = ~B, DB, D, ~y
time = 16
[Command]
name = "Counter_P"
command = ~B, DB, D, ~z
time = 16

[Command]
name = "Counter_K"
command = ~B, DB, D, a
time = 16
[Command]
name = "Counter_K"
command = ~B, DB, D, b
time = 16
[Command]
name = "Counter_K"
command = ~B, DB, D, c
time = 16
[Command]
name = "Counter_K"
command = ~B, DB, D, ~a
time = 16
[Command]
name = "Counter_K"
command = ~B, DB, D, ~b
time = 16
[Command]
name = "Counter_K"
command = ~B, DB, D, ~c
time = 16


;===================< OTHER >===================

[Command]
name = "highjump"
command = $D, $U
time = 15


;===================< DOUBLE TAP >===================

[Command]
name = "FF"
command = F, F
time = 10
[Command]
name = "BB"
command = B, B
time = 10


;===================< 2/3 BUTTON COMBINATION >===================

[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "recovery"
command = x+z
time = 1
[Command]
name = "recovery"
command = y+z
time = 1
[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "2p"
command = x+y
time = 1
[Command]
name = "2p"
command = x+z
time = 1
[Command]
name = "2p"
command = y+z
time = 1

[Command]
name = "2k"
command = a+b
time = 1
[Command]
name = "2k"
command = a+c
time = 1
[Command]
name = "2k"
command = b+c
time = 1

[Command]
name = "excelcombo"
command = c+z
time = 1

[Command]
name = "roll"
command = a+x
time = 1


;===========================================================================
;===============================< -1 STATES >=================================
;===========================================================================

;Abstract Reordered: 3 buttons (A light, B medium, C heavy), X barrier, Y grab, Z parry
[Command]
name = "ar_L"
command = a
time = 1
[Command]
name = "ar_M"
command = b
time = 1
[Command]
name = "ar_H"
command = c
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
name = "ar_barrier"
command = x
time = 1
[Command]
name = "ar_hold_x"
command = /x
time = 1
[Command]
name = "ar_burst"
command = a+b+c
time = 1
[Command]
name = "ar_236L"
command = ~D, DF, F, a
[Command]
name = "ar_236M"
command = ~D, DF, F, b
[Command]
name = "ar_236H"
command = ~D, DF, F, c
[Command]
name = "ar_214L"
command = ~D, DB, B, a
[Command]
name = "ar_214M"
command = ~D, DB, B, b
[Command]
name = "ar_214H"
command = ~D, DB, B, c
[Command]
name = "ar_623L"
command = ~F, D, DF, a
[Command]
name = "ar_623M"
command = ~F, D, DF, b
[Command]
name = "ar_623H"
command = ~F, D, DF, c
[Command]
name = "ar_22L"
command = D, D, a
time = 15
[Command]
name = "ar_22M"
command = D, D, b
time = 15
[Command]
name = "ar_22H"
command = D, D, c
time = 15
[Command]
name = "ar_s236AB"
command = ~D, DF, F, D, DF, F, a+b
[Command]
name = "ar_s236BC"
command = ~D, DF, F, D, DF, F, b+c
[Command]
name = "ar_s236AC"
command = ~D, DF, F, D, DF, F, a+c
[Command]
name = "ar_s214AB"
command = ~D, DB, B, D, DB, B, a+b
[Command]
name = "ar_s214BC"
command = ~D, DB, B, D, DB, B, b+c
[Command]
name = "ar_s214AC"
command = ~D, DB, B, D, DB, B, a+c
[Command]
name = "ar_lv3AB"
command = ~F, B, DB, D, DF, F, a
[Command]
name = "ar_lv3AB"
command = ~F, B, DB, D, DF, F, b
[Command]
name = "ar_lv3C"
command = ~F, B, DB, D, DF, F, c

[Statedef -1]

;---------------------------------------------------------------------------
;Abstract Reordered: burst (Kamijo's) - A+B+C while being hit, recharges in 75 s (var(41))
[State -1, AR burst round reset]
type = VarSet
triggerall = !ishelper
trigger1 = RoundState < 2
var(41) = 0

[State -1, AR burst recharge]
type = VarAdd
triggerall = !ishelper
trigger1 = RoundState = 2
trigger1 = var(41) > 0
var(41) = -1
ignorehitpause = 1

;Abstract Reordered: comeback - once a combo has done more than 15% of max life, every further hit
;knocks half a second (30 ticks) off the burst cooldown. var(42) = life when the combo started, var(45) = life last tick
[State -1, AR burst comeback]
type = VarAdd
triggerall = !ishelper
triggerall = var(41) > 0
trigger1 = movetype = H
trigger1 = Life < var(45)
trigger1 = var(42) - Life > LifeMax * 0.15
var(41) = -30
ignorehitpause = 1

[State -1, AR burst comeback clamp]
type = VarSet
triggerall = !ishelper
trigger1 = var(41) < 0
var(41) = 0
ignorehitpause = 1

[State -1, AR burst combo start]
type = VarSet
triggerall = !ishelper
trigger1 = movetype != H
var(42) = Life
ignorehitpause = 1

[State -1, AR burst last life]
type = VarSet
triggerall = !ishelper
trigger1 = 1
var(45) = Life
ignorehitpause = 1

;Abstract Reordered: burst HUD - Touma's BURST gauge, recoloured, just under the lifebar.
;var(41) = cooldown ticks (4500 = just used, 0 = ready). Anims 9660-9668, explod IDs = anims.
[State -1, AR burst gauge 9668 P1]
type = Explod
triggerall = !ishelper
triggerall = TeamSide = 1
trigger1 = NumExplod(9668) = 0
trigger1 = var(41) = 0
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
trigger1 = var(41) = 0
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
trigger1 = var(41) > 3750
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
trigger1 = var(41) <= 3750 && var(41) > 3000
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
trigger1 = var(41) <= 3000 && var(41) > 2250
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
trigger1 = var(41) <= 2250 && var(41) > 1500
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
trigger1 = var(41) <= 1500 && var(41) > 750
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
trigger1 = var(41) <= 750 && var(41) > 0
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
trigger1 = var(41) > 3750
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
trigger1 = var(41) = 0
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
trigger1 = var(41) = 0
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
trigger1 = var(41) > 3750
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
trigger1 = var(41) <= 3750 && var(41) > 3000
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
trigger1 = var(41) <= 3000 && var(41) > 2250
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
trigger1 = var(41) <= 2250 && var(41) > 1500
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
trigger1 = var(41) <= 1500 && var(41) > 750
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
trigger1 = var(41) <= 750 && var(41) > 0
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
trigger1 = var(41) > 3750
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
trigger1 = !(var(41) = 0)
ID = 9668
ignorehitpause = 1

[State -1, AR burst gauge 9661 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9661)
trigger1 = !(var(41) = 0)
ID = 9661
ignorehitpause = 1

[State -1, AR burst gauge 9660 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9660)
trigger1 = !(var(41) > 3750)
ID = 9660
ignorehitpause = 1

[State -1, AR burst gauge 9662 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9662)
trigger1 = !(var(41) <= 3750 && var(41) > 3000)
ID = 9662
ignorehitpause = 1

[State -1, AR burst gauge 9663 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9663)
trigger1 = !(var(41) <= 3000 && var(41) > 2250)
ID = 9663
ignorehitpause = 1

[State -1, AR burst gauge 9664 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9664)
trigger1 = !(var(41) <= 2250 && var(41) > 1500)
ID = 9664
ignorehitpause = 1

[State -1, AR burst gauge 9665 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9665)
trigger1 = !(var(41) <= 1500 && var(41) > 750)
ID = 9665
ignorehitpause = 1

[State -1, AR burst gauge 9666 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9666)
trigger1 = !(var(41) <= 750 && var(41) > 0)
ID = 9666
ignorehitpause = 1

[State -1, AR burst gauge 9667 off]
type = RemoveExplod
triggerall = !ishelper
trigger1 = NumExplod(9667)
trigger1 = !(var(41) > 3750)
ID = 9667
ignorehitpause = 1


[State -1, AR burst]
type = ChangeState
value = ifelse(StateType = A, 7721, 7720)
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "ar_burst"
triggerall = var(41) = 0
triggerall = RoundState = 2
triggerall = Alive
trigger1 = (stateno = 5000 || stateno = 5010 || stateno = 5020 || stateno = 5070) && Time > 0
trigger2 = stateno = [5001, 5099]
trigger2 = stateno != 5000 && stateno != 5010 && stateno != 5020 && stateno != 5070

;Abstract Reordered: parry on Z
[State -1, AR Parry]
type = ChangeState
value = 7740
triggerall = !AIlevel
triggerall = command = "ar_parry"
trigger1 = ctrl

[State -1, AR Barrier]
;Abstract Reordered: X = his taunt's Powered Shell (one at a time); it only stops special and super attacks
type = ChangeState
value = 195
triggerall = !AIlevel
triggerall = command = "ar_barrier"
triggerall = statetype != A
triggerall = !NumHelper(1155)
trigger1 = ctrl
trigger2 = (stateno = [200, 255]) && (movecontact = [1, 24])


[State -1, Tick Fix]
type = ctrlset
triggerall = !ctrl
trigger1 = (stateno = 52 || stateno = 105 || stateno = 5120) && !animtime
trigger2 = (stateno = [200, 259]) && !animtime
trigger3 = ((stateno = [700, 701]) || (stateno = [710, 729]) || stateno = 760) && !animtime
trigger4 = (stateno = 5001 || stateno = 5011 || stateno = 151 || stateno = 153) && hitover
value = 1

[State -1, Omega Spirit Cannon / Omega Kamehameha]
type = changestate
value = 4400
triggerall = !AIlevel && numpartner
triggerall = ifelse(numpartner,(partner,alive)&&(partner,selfanimexist(4400))&&((partner,name="Bardock"&&partner,authorname="DJMouF & Mr.Ansatsuken")||((partner,name="Goku"||partner,name="Vegeta")&&partner,authorname="DJMouF")),0)
triggerall = ifelse(numpartner,((partner,ctrl)||(partner,stateno=[1000,1999])||(partner,stateno=[0,731])||(partner,StateNo=[1251109,1251114])),0)
triggerall = 0
triggerall = roundstate = 2 && power >= (3000-1000*(var(53)>0)) && var(20) <= 60
triggerall = stateno != [4000,4999]
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1599]) || stateno = 3100 || stateno = 3200 || stateno = 3600) && (movecontact = [1, 24]) && prevstateno != [3700,3706]
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= 6 && stateno != [3700,3706]
trigger4 = helper(stateno + 5), var(3) && prevstateno != [3700,3706]
trigger5 = var(20) && (stateno = [200, 699])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, Omega Blaster]
type = changestate
value = 4100
triggerall = !AIlevel
triggerall = command = "ar_lv3AB"
triggerall = roundstate = 2 && power >= (3000-1000*(var(53)>0)) && var(20) <= 60
triggerall = stateno != [4000,4999]
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1599]) || stateno = 3100 || stateno = 3200 || stateno = 3600) && (movecontact = [1, 24]) && prevstateno != [3700,3706]
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= 6 && stateno != [3700,3706]
trigger4 = helper(stateno + 5), var(3) && prevstateno != [3700,3706]
trigger5 = var(20) && (stateno = [200, 699])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, Gigantic Catastrophe]
type = changestate
value = 4300
triggerall = !AIlevel
triggerall = command = "ar_lv3C" || 0
triggerall = roundstate = 2 && power >= (3000-1000*(var(53)>0)) && var(20) <= 60
triggerall = statetype != A && stateno != [4000,4999]
trigger1 = ctrl || ((stateno = [200, 699]))
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1599]) || stateno = 3100 || stateno = 3200 || stateno = 3600) && (movecontact = [1, 24]) && prevstateno != [3700,3706]
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= 6 && stateno != [3700,3706]
trigger4 = helper(stateno + 5), var(3) && prevstateno != [3700,3706]
trigger5 = var(20) && (stateno = [200, 699])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, Gigantic Omegastorm]
type = changestate
value = 4200
triggerall = !AIlevel
triggerall = 0
triggerall = roundstate = 2 && power >= (3000-1000*(var(53)>0)) && var(20) <= 60
triggerall = statetype != A && stateno != 3000 && prevstateno != 4200 && stateno != [4000,4999]
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1599]) || stateno = 3400 || (stateno = [3700,3706])) && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= 6 ;&& stateno != [3700,3706]
trigger4 = helper(stateno + 5), var(3) ;&& prevstateno != [3700,3706]
trigger5 = var(20) && (stateno = [200, 699])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, Blaster Meteor]
type = changestate
value = 4000
triggerall = !AIlevel
triggerall = 0
triggerall = roundstate = 2 && power >= (3000-1000*(var(53)>0)) && var(20) <= 60
triggerall = !numhelper(4005)
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1599]) || stateno = 3100 || stateno = 3804 || stateno = 3400 || stateno = 3200 || stateno = 3500 || (stateno = [3700,3706])) && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= 6 && stateno != 3200 && stateno != 4000
trigger4 = helper(stateno + 5), var(3) && prevstateno != 4000
trigger5 = var(20) && (stateno = [200, 699])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])
trigger9 = stateno = 3807 && numhelper(3821) && var(10) <= 6
trigger9 = helper(3821), var(3) && prevstateno != 4000

[State -1, Gigantic Meteor]
type = changestate
value = 3900
triggerall = !AIlevel
triggerall = command = "ar_s236BC"
triggerall = roundstate = 2 && statetype = A && power >= (2000-1000*(var(53)>0)) && var(20) <= 60
triggerall = !numhelper(3905) && stateno != [4000,4999]
trigger1 = ctrl || stateno = 1502 || stateno = 3705 || (anim = 1102 && animelemtime(5)>=0) || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1599]) || stateno = 3100 || stateno = 3200 || stateno = 3600 || (stateno = [3700,3706])) && (movecontact = [1, 24]) && prevstateno != 3900
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= ifelse(var(46),6,5) && stateno != 3900
trigger4 = helper(stateno + 5), var(3) && prevstateno != 3900
trigger5 = var(20) && (stateno = [200, 699])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, Gigantic Buster]
type = changestate
value = 3800
triggerall = !AIlevel
triggerall = 0
triggerall = roundstate = 2 && power >= (2000-1000*(var(53)>0)) && var(20) <= 60
triggerall = stateno != [4000,4999]
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1599]) || stateno = 3400 || (stateno = [3700,3706])) && (movecontact = [1, 24]) && prevstateno != [3800,3807]
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= ifelse(var(46),6,5) && stateno != [3800,3807]
trigger4 = helper(stateno + 5), var(3) && prevstateno != [3800,3807]
trigger5 = var(20) && (stateno = [200, 699])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, Gigantic Hammer]
type = changestate
value = 3700
triggerall = !AIlevel
triggerall = 0
triggerall = roundstate = 2 && power >= (2000-1000*(var(53)>0)) && var(20) <= 60
triggerall = stateno != [4000,4999]
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1599]) || stateno = 3100 || stateno = 3200 || stateno = 3600) && (movecontact = [1, 24]) && prevstateno != [3700,3706]
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= ifelse(var(46),6,5) && stateno != [3700,3706]
trigger4 = helper(stateno + 5), var(3) && prevstateno != [3700,3706]
trigger5 = var(20) && (stateno = [200, 699])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, Eraser Shot Volley]
type = changestate
value = 3500
triggerall = !AIlevel
triggerall = command = "ar_s236BC"
triggerall = roundstate = 2 && statetype != A && power >= (2000-1000*(var(53)>0)) && var(20) <= 60
triggerall = !numhelper(3505) && stateno != [4000,4999]
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1599]) || stateno = 3100 || stateno = 3804 || stateno = 3400 || stateno = 3200 || stateno = 3600 || (stateno = [3700,3706])) && (movecontact = [1, 24]) && prevstateno != 3500
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= ifelse(var(46),6,5) && stateno != 3500
trigger4 = helper(stateno + 5), var(3) && prevstateno != 3500
trigger5 = var(20) && (stateno = [200, 699])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, Planet Geyser]
type = changestate
value = 3600
triggerall = !AIlevel
triggerall = command = "ar_s214BC"
triggerall = roundstate = 2 && statetype != A && power >= (2000-1000*(var(53)>0)) && var(20) <= 60
triggerall = !numhelper(3605) && stateno != [4000,4999]
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1599]) || stateno = 3100 || stateno = 3804 || stateno = 3400 || stateno = 3200 || stateno = 3500 || (stateno = [3700,3706])) && (movecontact = [1, 24]) && prevstateno != 3600
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= ifelse(var(46),6,5) && stateno != 3600
trigger4 = helper(stateno + 5), var(3) && prevstateno != 3600
trigger5 = var(20) && (stateno = [200, 699])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, Gigantic Press]
type = changestate
value = 3400
triggerall = !AIlevel
triggerall = command = "ar_s236AC" && var(20) <= 60
triggerall = roundstate = 2 && power >= (1000*(var(53)=0)) && var(20) <= 60
triggerall = stateno != [3500,4999]
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1599]) || stateno = 3300) && (movecontact = [1, 24]) && prevstateno != 3400
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= ifelse(var(46),5,4) && stateno != 3400
trigger4 = helper(stateno + 5), var(3) && prevstateno != 3400
trigger5 = var(20) && (stateno = [200, 699])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, Full Power Energy Wave]
type = changestate
value = 3300
triggerall = !AIlevel
triggerall = command = "ar_s236AB"
triggerall = roundstate = 2 && statetype = A && power >= (1000*(var(53)=0)) && var(20) <= 60
triggerall = !numhelper(3305) && stateno != [3500,4999]
trigger1 = ctrl || stateno = 1502 || (anim = 1102 && animelemtime(5)>=0) || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1599]) || stateno = 3100 || stateno = 3200 || stateno = 3400) && (movecontact = [1, 24]) && prevstateno != 3300
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= ifelse(var(46),5,4) && stateno != 3300
trigger4 = helper(stateno + 5), var(3) && prevstateno != 3300
trigger5 = var(20) && (stateno = [200, 699])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, Gigantic Roar]
type = changestate
value = 3100
triggerall = !AIlevel
triggerall = command = "ar_s214AB"
triggerall = roundstate = 2 && statetype != A && power >= (1000*(var(53)=0)) && var(20) <= 60
triggerall = !numhelper(3105) && stateno != [3500,4999]
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1599]) || stateno = 3100 || stateno = 3200 || stateno = 3400) && (movecontact = [1, 24]) && prevstateno != 3100
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= ifelse(var(46),5,4) && stateno != 3100
trigger4 = helper(stateno + 5), var(3) && prevstateno != 3100
trigger5 = var(20) && (stateno = [200, 699])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, Burst Eraser]
type = changestate
value = 3200
triggerall = !AIlevel
triggerall = command = "ar_s214AC"
triggerall = roundstate = 2 && power >= (1000*(var(53)=0)) && var(20) <= 60
triggerall = !numhelper(3205) && !numhelper(3821) && stateno != [3500,4999]
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1599]) || stateno = 3300 || stateno = 3400) && (movecontact = [1, 24]) && prevstateno != 3200
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= ifelse(var(46),5,4) && stateno != 3200
trigger4 = helper(stateno + 5), var(3) && prevstateno != 3200
trigger5 = var(20) && (stateno = [200, 699])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, Eraser Cannon]
type = changestate
value = 3000
triggerall = !AIlevel
triggerall = command = "ar_s236AB"
triggerall = roundstate = 2 && statetype != A && power >= (1000*(var(53)=0)) && var(20) <= 60
triggerall = !numhelper(3005) && stateno != [3500,4999]
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1299]) || stateno = 3100 || stateno = 3200 || stateno = 3400) && (movecontact = [1, 24]) && prevstateno != 3000
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) <= ifelse(var(46),5,4) && stateno != 3000
trigger4 = helper(stateno + 5), var(3) && prevstateno != 3000
trigger5 = var(20) && (stateno = [200, 699])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, EX Bloody Smash]
type = changestate
value = 1410
triggerall = !AIlevel
triggerall = 0 && power >= (500*(var(53)=0))
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 699])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EX Gigantic Strike]
type = changestate
value = 1110
triggerall = !AIlevel
triggerall = command = "ar_623H" && power >= (500*(var(53)=0))
triggerall = roundstate = 2 ;&& statetype != A
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 699])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EX Eraser Blow]
type = changestate
value = 1310
triggerall = !AIlevel
triggerall = 0 && power >= (500*(var(53)=0))
triggerall = roundstate = 2 && statetype != A && !numhelper(1315) && !numhelper(1305)
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 699])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EX Bloody Stomp]
type = changestate
value = 1460
triggerall = !AIlevel
;Abstract Reordered: air 22H = EX stomp (500 meter): three stomps, the last restands and stuns
triggerall = command = "ar_22H" && power >= (500*(var(53)=0))
triggerall = roundstate = 2 && statetype = A
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 699])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EX Gigantic Spike]
type = changestate
value = 1510
triggerall = !AIlevel
triggerall = command = "ar_214H" && power >= (500*(var(53)=0))
triggerall = roundstate = 2 ;&& statetype != A
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 699])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EX Lariat Express]
type = changestate
value = 1210
triggerall = !AIlevel
triggerall = 0 && power >= (500*(var(53)=0))
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 699])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EX Eraser Shot]
type = changestate
value = 1010
triggerall = !AIlevel
triggerall = command = "ar_236H"
triggerall = roundstate = 2 && statetype != A && power >= (500*(var(53)=0)) && var(20) <= 60
triggerall = !numhelper(1015) ;&& !numhelper(3005)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 255]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 699])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EX Aerial Eraser Shot]
type = changestate
value = 1060
triggerall = !AIlevel
triggerall = command = "ar_236H"
triggerall = roundstate = 2 && statetype = A && power >= (500*(var(53)=0)) && var(20) <= 60
triggerall = !numhelper(1065) ;&& !numhelper(3005)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 285]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 699])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, Bloody Smash]
type = changestate
value = 1400
triggerall = !AIlevel
triggerall = 0 || 0 || 0
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 699])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, Gigantic Strike]
type = changestate
value = 1100
triggerall = !AIlevel
triggerall = command = "ar_623L" || command = "ar_623M" || 0
triggerall = roundstate = 2 ;&& statetype != A
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 699])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, Bloody Stomp]
type = changestate
value = 1450
triggerall = !AIlevel
;air 22 + L/M/H (button = strength)
triggerall = command = "ar_22L" || command = "ar_22M"
triggerall = roundstate = 2 && statetype = A
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 699])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, Gigantic Spike]
type = changestate
value = 1500
triggerall = !AIlevel
triggerall = 0 || command = "ar_214M" || command = "ar_214L"
triggerall = roundstate = 2 ;&& statetype != A
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 699])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, Lariat Express]
type = changestate
value = 1200
triggerall = !AIlevel
triggerall = 0 || 0 || 0
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 699]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 699]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 699])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, Aerial Eraser Shot]
type = changestate
value = 1050
triggerall = !AIlevel
triggerall = command = "ar_236L" || command = "ar_236M" || 0
triggerall = roundstate = 2 && statetype = A
;triggerall = !numhelper(1015) && !numhelper(3005)
triggerall = ifelse(!var(20), !numhelper(1005) && !numhelper(1405), 1)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 285]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 699])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, Eraser Blow]
type = changestate
value = 1300
triggerall = !AIlevel
triggerall = 0 || 0 || 0
triggerall = roundstate = 2 && statetype != A
;triggerall = !numhelper(3005)
triggerall = ifelse(!var(20), !numhelper(1305) && !numhelper(1315), 1)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 255]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 699])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, Eraser Shot]
type = changestate
value = 1000
triggerall = !AIlevel
triggerall = command = "ar_236L" || command = "ar_236M" || 0
triggerall = roundstate = 2 && statetype != A
triggerall = !numhelper(3005)
triggerall = ifelse(!var(20), !numhelper(1005) && !numhelper(1405), 1)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 230)
trigger2 = (stateno = [200, 255]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 699])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, Roll Combo]
type = changestate
value = 710
triggerall = !AIlevel
triggerall = 0   ;Abstract Reordered: roll removed
triggerall = roundstate = 2 && statetype != A && var(20)
trigger1 = var(20) && (stateno = [200, 699]) && (movecontact = [1, 24])
trigger2 = var(20) && (stateno = [1000,1299]) && statetype != A && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000,1299]) && statetype != A && numhelper(stateno + 5)
trigger3 = helper(stateno + 5), var(3)

[State -1, Roll / Dodge]
type = changestate
value = ifelse(command = "holdfwd", 710, ifelse(command = "holdback", 715, 700))
triggerall = !AIlevel
triggerall = 0   ;Abstract Reordered: roll removed
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 255]) && (movecontact = [1, 8]) && var(20)

[State -1, Custom Combo]
type = changestate
value = 900
triggerall = !AIlevel && !var(40) && !var(50)
triggerall = 0   ;Abstract Reordered: removed
triggerall = roundstate = 2 && power >= 1000 && !var(20)
trigger1 = ctrl || (stateno = [100,101])

[State -1, MAX Mode]
type = changestate
value = 770
triggerall = !AIlevel && !var(40) && var(50)
triggerall = 0   ;Abstract Reordered: MAX mode removed
triggerall = roundstate = 2 && power >= 1000 && !var(53)
trigger1 = ctrl || (stateno = [100,101])

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = !AIlevel
trigger1 = stateno = 150 || stateno = 152
trigger1 = command = "Counter_P" || command = "Counter_K"
trigger1 = roundstate = 2 && !var(20) && power >= 750 && statetype != A

[State -1, Run / Dash]
type = changestate
value = ifelse(command = "FF", 100, 105)
trigger1 = !AIlevel
trigger1 = command = "FF" || command = "BB"
trigger1 = roundstate = 2 && (stateno != [100, 106]) && statetype = S && ctrl

[State -1, Throw]
type = changestate
value = 800
trigger1 = !AIlevel
;Abstract Reordered: grab on Y
trigger1 = command = "ar_grab"
trigger1 = roundstate = 2 && ctrl && statetype = S && stateno != 100

[State -1, Power Charge]
type = changestate
value = 730
trigger1 = !AIlevel
trigger1 = command = "holdb" && command = "holdc"   ;Abstract Reordered: hold Medium + Heavy
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = power < const(data.power) && power < powermax && !var(20) && !var(53)

[State -1, SLP]
type = changestate
value = 200
triggerall = !AIlevel
triggerall = command = "ar_L" && command != "holdback" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230 || stateno = 245) && time >= 7
trigger3 = var(20) && (stateno = [200, 699]) && (movecontact = [1, 32])
trigger4 = var(20) && (stateno = [1000,1299]) && statetype != A && movecontact
trigger5 = var(20) && (stateno = [1000,1299]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, SMP]
type = changestate
value = 205
triggerall = !AIlevel
triggerall = 0 && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(47) && (stateno = 200 || stateno = 215 || stateno = 230 || stateno = 245) && ((movecontact = [1, 32]) = [1, 4])
trigger3 = var(20) && (stateno = [200, 699]) && (movecontact = [1, 32])
trigger4 = var(20) && (stateno = [1000,1299]) && statetype != A && movecontact
trigger5 = var(20) && (stateno = [1000,1299]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, SHP]
type = changestate
value = 210
triggerall = !AIlevel
triggerall = command = "ar_H" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(47) && ((stateno = [200, 206]) || (stateno = [230, 235]) || (stateno = [215, 220]) || (stateno = [245, 250])) && ((movecontact = [1, 32]) = [1, 4])
trigger3 = var(20) && (stateno = [200, 699]) && (movecontact = [1, 32])
trigger4 = var(20) && (stateno = [1000,1299]) && statetype != A && movecontact
trigger5 = var(20) && (stateno = [1000,1299]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, SLK]
type = changestate
value = 215
triggerall = !AIlevel
triggerall = command = "ar_L" && command = "holdback" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230) && (movecontact = [1, 32])
trigger3 = (stateno = 200 || stateno = 215 || stateno = 230 || stateno = 245) && time >= 7
trigger4 = var(20) && (stateno = [200, 699]) && (movecontact = [1, 32])
trigger5 = var(20) && (stateno = [1000,1299]) && statetype != A && movecontact
trigger6 = var(20) && (stateno = [1000,1299]) && statetype != A && numhelper(stateno + 5)
trigger6 = helper(stateno + 5), var(3)

[State -1, SMK]
type = changestate
value = 220
triggerall = !AIlevel
triggerall = command = "ar_M" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(47) && ((stateno = [200, 205]) || stateno = 215 || (stateno = [230, 235]) || stateno = 245) && ((movecontact = [1, 32]) = [1, 4])
trigger3 = var(20) && (stateno = [200, 699]) && (movecontact = [1, 32])
trigger4 = var(20) && (stateno = [1000,1299]) && statetype != A && movecontact
trigger5 = var(20) && (stateno = [1000,1299]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, SHK]
type = changestate
value = 225
triggerall = !AIlevel
triggerall = 0 && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(47) && (stateno = 200 || stateno = 205 || stateno = 206 || stateno = 210 || (stateno = [230, 240]) || (stateno = [215, 220]) || (stateno = [245, 250])) && ((movecontact = [1, 32]) = [1, 4])
trigger3 = var(20) && (stateno = [200, 699]) && (movecontact = [1, 32])
trigger4 = var(20) && (stateno = [1000,1299]) && statetype != A && movecontact
trigger5 = var(20) && (stateno = [1000,1299]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, CLP]
type = changestate
value = 230
triggerall = !AIlevel
triggerall = command = "ar_L" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230 || stateno = 245) && time >= 7
trigger3 = var(20) && (stateno = [200, 699]) && (movecontact = [1, 32])
trigger4 = var(20) && (stateno = [1000,1299]) && statetype != A && movecontact
trigger5 = var(20) && (stateno = [1000,1299]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, CMP]
type = changestate
value = 235
triggerall = !AIlevel
triggerall = 0 && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(47) && (stateno = 200 || stateno = 215 || stateno = 230 || stateno = 245) && ((movecontact = [1, 32]) = [1, 4])
trigger3 = var(20) && (stateno = [200, 699]) && (movecontact = [1, 32])
trigger4 = var(20) && (stateno = [1000,1299]) && statetype != A && movecontact
trigger5 = var(20) && (stateno = [1000,1299]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, CHP]
type = changestate
value = 240
triggerall = !AIlevel
triggerall = command = "ar_H" && command = "holdfwd" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(47) && ((stateno = [200, 206]) || (stateno = [230, 235]) || (stateno = [215, 220]) || (stateno = [245, 250])) && ((movecontact = [1, 32]) = [1, 4])
trigger3 = var(20) && (stateno = [200, 699]) && (movecontact = [1, 32])
trigger4 = var(20) && (stateno = [1000,1299]) && statetype != A && movecontact
trigger5 = var(20) && (stateno = [1000,1299]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, CLK]
type = changestate
value = 245
triggerall = !AIlevel
triggerall = 0 && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 230) && (movecontact = [1, 32])
trigger3 = (stateno = 200 || stateno = 230 || stateno = 245) && time >= 7
trigger4 = var(20) && (stateno = [200, 699]) && (movecontact = [1, 32])
trigger5 = var(20) && (stateno = [1000,1299]) && statetype != A && movecontact
trigger6 = var(20) && (stateno = [1000,1299]) && statetype != A && numhelper(stateno + 5)
trigger6 = helper(stateno + 5), var(3)

[State -1, CMK]
type = changestate
value = 250
triggerall = !AIlevel
triggerall = command = "ar_M" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(47) && ((stateno = [200, 206]) || stateno = 215 || (stateno = [230, 235]) || stateno = 245) && ((movecontact = [1, 32]) = [1, 4])
trigger3 = var(20) && (stateno = [200, 699]) && (movecontact = [1, 32])
trigger4 = var(20) && (stateno = [1000,1299]) && statetype != A && movecontact
trigger5 = var(20) && (stateno = [1000,1299]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, CHK]
type = changestate
value = 255
triggerall = !AIlevel
triggerall = command = "ar_H" && command != "holdfwd" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(47) && (stateno = 200 || stateno = 205 || stateno = 206 || stateno = 210 || (stateno = [230, 240]) || (stateno = [215, 220]) || (stateno = [245, 250])) && ((movecontact = [1, 32]) = [1, 4])
trigger3 = var(20) && (stateno = [200, 699]) && (movecontact = [1, 32])
trigger4 = var(20) && (stateno = [1000,1299]) && statetype != A && movecontact
trigger5 = var(20) && (stateno = [1000,1299]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, ALP]
type = changestate
value = 260
triggerall = !AIlevel
triggerall = command = "ar_L" && statetype = A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 699]) && (movecontact = [1, 32])
trigger3 = var(20) && (stateno = [1000,1299]) && statetype != A && movecontact
trigger4 = var(20) && (stateno = [1000,1299]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, AMP]
type = changestate
value = 265
triggerall = !AIlevel
triggerall = 0 && statetype = A
trigger1 = ctrl
trigger2 = var(47)>=2 && (stateno = 260 || stateno = 275) && ((movecontact = [1, 32]) = [1, 4]) && var(9) != 2
trigger3 = var(20) && (stateno = [200, 699]) && (movecontact = [1, 32])
trigger4 = var(20) && (stateno = [1000,1299]) && statetype != A && movecontact
trigger5 = var(20) && (stateno = [1000,1299]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, AHP]
type = changestate
value = 270
triggerall = !AIlevel
triggerall = command = "ar_H" && statetype = A
trigger1 = ctrl
trigger2 = var(47)>=2 && ((stateno = [260, 265]) || (stateno = [275, 280])) && ((movecontact = [1, 32]) = [1, 4]) && var(9) != 2
trigger3 = var(20) && (stateno = [200, 699]) && (movecontact = [1, 32])
trigger4 = var(20) && (stateno = [1000,1299]) && statetype != A && movecontact
trigger5 = var(20) && (stateno = [1000,1299]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, ALK]
type = changestate
value = 275
triggerall = !AIlevel
triggerall = 0 && statetype = A
trigger1 = ctrl
trigger2 = var(47)>=2 && stateno = 260 && ((movecontact = [1, 32]) = [1, 4]) && var(9) != 2
trigger3 = var(20) && (stateno = [200, 699]) && (movecontact = [1, 32])
trigger4 = var(20) && (stateno = [1000,1299]) && statetype != A && movecontact
trigger5 = var(20) && (stateno = [1000,1299]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, AMK]
type = changestate
value = 280
triggerall = !AIlevel
triggerall = command = "ar_M" && statetype = A
trigger1 = ctrl
trigger2 = var(47)>=2 && ((stateno = [260, 265]) || stateno = 275) && ((movecontact = [1, 32]) = [1, 4]) && var(9) != 2
trigger3 = var(20) && (stateno = [200, 699]) && (movecontact = [1, 32])
trigger4 = var(20) && (stateno = [1000,1299]) && statetype != A && movecontact
trigger5 = var(20) && (stateno = [1000,1299]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, AHK]
type = changestate
value = 285
triggerall = !AIlevel
triggerall = 0 && statetype = A
trigger1 = ctrl
trigger2 = var(47)>=2 && (stateno = [260, 280]) && ((movecontact = [1, 32]) = [1, 4]) && var(9) != 2
trigger3 = var(20) && (stateno = [200, 699]) && (movecontact = [1, 32])
trigger4 = var(20) && (stateno = [1000,1299]) && statetype != A && movecontact
trigger5 = var(20) && (stateno = [1000,1299]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, Standing Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && (statetype = S || stateno = 5120)
trigger1 = command = "fwd" && command != "back" && command != "up" && command != "down"
trigger1 = ctrl || (stateno = [760, 761]) || stateno = 5120
trigger1 = var(21) := 1
attr = SA, AA, AP
stateno = 760
slot = 0
time = 8

[State -1, Crouching Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && statetype != A
trigger1 = command = "down" && command != "fwd" && command != "back" && command != "up"
trigger1 = ctrl || (stateno = [760, 761]) || stateno = 5120
trigger1 = var(21) := 2
attr = C, AA, AP
stateno = 761
slot = 0
time = 8

[State -1, Air Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && statetype = A
trigger1 = command = "fwd" && command != "back" && command != "up" && command != "down"
trigger1 = ctrl || stateno = 762
trigger1 = var(21) := 3
attr = SA, AA, AP
stateno = 762
forceair = 1
slot = 0
time = 7

[State -1, Taunt (Powered Shell)]
type = changestate
value = 195
triggerall = !AIlevel
triggerall = command = "start" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 255]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [200, 699])
trigger4 = var(20) && ((stateno = [1000,1299]) || stateno = 52 && (prevstateno = [1000,1299])) && movecontact
trigger5 = var(20) && (stateno = [1000,1299]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)


;===========================================================================
;=================================< A.I. >====================================
;===========================================================================

[State -1, AI Standing Parry]
type = hitoverride
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
trigger1 = (ctrl && random < (75 * (AIlevel ** 2 / 64.0))) || ((stateno = [760, 761]) && random < (350 * (AIlevel ** 2 / 64.0)))
trigger1 = var(21) := 1
attr = SA, AA, AP
stateno = 760
slot = 0
time = 8

[State -1, AI Crouching Parry]
type = hitoverride
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
trigger1 = (ctrl && random < (75 * (AIlevel ** 2 / 64.0))) || ((stateno = [760, 761]) && random < (250 * (AIlevel ** 2 / 64.0)))
trigger1 = var(21) := 2
attr = C, AA, AP
stateno = 761
slot = 0
time = 8

[State -1, AI Air Parry]
type = hitoverride
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
trigger1 = (ctrl && random < (75 * (AIlevel ** 2 / 64.0))) || (stateno = 762 && random < (250 * (AIlevel ** 2 / 64.0)))
trigger1 = var(21) := 3
attr = SA, AA, AP
stateno = 762
forceair = 1
slot = 0
time = 7

[State -1, AI Reset Parry]
type = hitoverride
trigger1 = (!ctrl && (stateno != [760, 762]) && stateno != 5120) || var(20)
trigger2 = movetype != I || (stateno = [100, 106]) || (stateno = [120, 132])
trigger3 = !AIlevel && (command = "holdback" || command = "holdup")
trigger4 = (statetype = S || statetype = C) && var(21) != 1 && var(21) != 2
trigger5 = statetype = A && var(21) != 3
slot = 0
time = 0

[State -1, AI Team Lv3 Super]
type = changestate
value = 4400
triggerall = AIlevel && numpartner && numenemy && (var(22) = 0 || var(22) = 3 || var(22) = 20)
triggerall = ifelse(numpartner,(partner,alive)&&(partner,selfanimexist(4400))&&((partner,name="Bardock"&&partner,authorname="DJMouF & Mr.Ansatsuken")||((partner,name="Goku"||partner,name="Vegeta")&&partner,authorname="DJMouF")),0)
triggerall = ifelse(numpartner,((partner,ctrl)||(partner,stateno=[1000,1999])||(partner,stateno=[0,731])||(partner,StateNo=[1251109,1251114])),0)
triggerall = roundstate = 2 && prevstateno != 4100 && anim != 3500 && anim != 3200 && anim != 3300 && anim != 1300
triggerall = power >= (3000-1000*(var(53)>0)) && var(20) <= 60 && ifelse(anim=1301||anim=1303,animelemtime(2)>=8,1)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (p2bodydist x = [ -150, 150]) && (p2dist y = [ -80, 20]) && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (stateno = 210 || stateno = 225 || stateno = 240 || stateno = 255)
trigger1 = (movehit = [1, 16]) && (p2bodydist x = [0, 150]) && random < (350 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [1200, 1399]) || (stateno = 3400 && statetype != A)
trigger2 = (movehit = [1, 16]) && (p2bodydist x = [0, 150]) && random < (450 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = [1000,3999]) && numhelper(stateno + 5) && var(10) <= 6
trigger3 = helper(stateno + 5), var(3) && random < (250 * (AIlevel ** 2 / 64.0))
trigger4 = ctrl && enemynear, movetype = A && (p2bodydist x = [0, 70]) && random < (500 * (AIlevel ** 2 / 64.0))

[State -1, AI Taunt (Powered Shell)]
type = changestate
value = 195
triggerall = AIlevel && numenemy ;&& var(5)<ifelse(roundstate=2,3,6)
triggerall = roundstate = 2 && statetype != A && !numhelper(1155)
trigger1 = p2dist x > 140 && (enemynear, vel y > 0) && ctrl && random < (800 * (AIlevel ** 2 / 64.0))
trigger1 = !(enemynear, ctrl) && ((enemynear, movetype = H)  || ((enemynear, movetype=A)&&enemynear,name="Dr.Doom"||enemy,name="Dormammu"||enemy,name="Magneto"))

[State -1, AI Power Charge]
type = changestate
value = 730
triggerall = AIlevel && numenemy && enemynear, stateno != [700,999]
trigger1 = roundstate = 2 && statetype != A && ctrl && enemynear, movetype != A
trigger1 = power < const(data.power) && power < powermax && !var(20) && !var(53)
trigger1 = !inguarddist && p2bodydist x >= 200 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, AI MAX Mode]
type = changestate
value = 770
triggerall = AIlevel && var(50) = 1 && numenemy && enemynear, stateno != [700,999]
trigger1 = roundstate = 2 && statetype != A && ctrl && enemynear, movetype != A
trigger1 = power = powermax && !var(20) && !var(53)
trigger1 = !inguarddist && p2bodydist x >= 200 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, AI Run]
type = changestate
value = 100
trigger1 = AIlevel && numenemy
trigger1 = statetype = S && roundstate = 2 && ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger1 = (stateno != [100, 105]) && enemynear, movetype != A && p2bodydist x > 120

[State -1, AI Back Dash]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = statetype = S && roundstate = 2 && ctrl
triggerall = (p2bodydist x = [0, 80]) && backedgebodydist > 80 && (stateno != [100, 105])
trigger1 = enemynear, movetype = A && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -3 && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, AI Jump]
type = changestate
value = 40
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT

[State -1, AI Roll / Dodge]
type = changestate
value = ifelse((backedgebodydist > 40 && random < 200), 715, ifelse(random < 600, 710, 700))
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype = S && ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, movetype = A && p2bodydist x < 80

[State -1, AI Guard]
type = changestate
value = 120
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && inguarddist
trigger1 = ctrl && (stateno != [120, 155]) && !var(20)
trigger1 = ifelse(statetype = A, (var(9) != 2 || stateno = 5210), 1)
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = random < (ifelse((p2stateno = [200, 699]), 100, ifelse((p2stateno = [1000,1299]), 333, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, AI Zero Counter]
type = changestate
value = 750
trigger1 = AIlevel && numenemy && power<3000
trigger1 = (p2dist x = [-90, 90]) && stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && power >= 750 && !var(20) && life < 500 && random < (10 * (AIlevel ** 2 / 64.0))
;
;[State -1, powercharge]
;type = changestate
;value = 740
;trigger1 = AIlevel && numenemy
;trigger1 = !numhelper(3033)
;trigger1 = roundstate = 2 && statetype != A && ctrl
;trigger1 = power < const(data.power) && power < powermax && !var(20)
;trigger1 = random < (50 * (AIlevel ** 2 / 64.0)) && !inguarddist && p2movetype != A && p2dist x >= 160

[State -1, AI Fall Recovery]
type = changestate
value = 5210
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = stateno = 5050 && canrecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, AI Fall Recovery]
type = changestate
value = 5200
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = stateno = 5050 && gethitvar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))

[State -1, AI SHP]
type = changestate
value = 210
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2bodydist x = [0, 80]) && (p2dist y = [ -50, 50]) && p2statetype != C && p2statetype != L && !(enemynear, hitfall)
triggerall = (p2stateno != [120, 155]) && p2movetype != A && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && p2bodydist x < 25 && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 205 || stateno = 206 || stateno = 215 || stateno = 220 || stateno = 230 || stateno = 235 || stateno = 245 || stateno = 250)
trigger2 = p2bodydist x <= 50 && (movehit = [1, 16]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, AI SHK]
type = changestate
value = 225
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2bodydist x = [0, 70]) && (p2dist y = [ -50, 50]) && p2statetype != C && p2statetype != L && !(enemynear, hitfall)
triggerall = (p2stateno != [120, 155]) && p2movetype != A && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (stateno = 200 || stateno = 205 || stateno = 206 || stateno = 215 || stateno = 220 || stateno = 230 || stateno = 235 || stateno = 245 || stateno = 250)
trigger1 = p2bodydist x = 0 && (movehit = [1, 16]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, AI SMP]
type = changestate
value = 205
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2bodydist x = [0, 60]) && (p2dist y = [ -50, 50]) && p2statetype != C && p2statetype != L && !(enemynear, hitfall)
triggerall = (p2stateno != [120, 155]) && p2movetype != A && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (stateno = 200 || stateno = 215 || stateno = 230 || stateno = 245)
trigger1 = p2bodydist x <= 16 && (movehit = [1, 16]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, AI SMK]
type = changestate
value = 220
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2bodydist x = [0, 60]) && (p2dist y = [ -50, 50]) && p2statetype != C && p2statetype != L && !(enemynear, hitfall)
triggerall = (p2stateno != [120, 155]) && p2movetype != A && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (stateno = 200 || stateno = 205 || stateno = 206 || stateno = 215 || stateno = 230 || stateno = 235 || stateno = 245)
trigger1 = p2bodydist x <= 16 && (movehit = [1, 16]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, AI SLP]
type = changestate
value = 200
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && !inguarddist
triggerall = (p2bodydist x = [0, 60]) && (p2dist y = [ -50, 50]) && p2statetype != C && p2statetype != L && !(enemynear, hitfall)
triggerall = (p2stateno != [120, 155]) && p2movetype != A && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 230 || stateno = 245) && time >= 5 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AI SLK]
type = changestate
value = 215
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && !inguarddist
triggerall = (p2bodydist x = [0, 60]) && (p2dist y = [ -50, 50]) && p2statetype != C && p2statetype != L && !(enemynear, hitfall)
triggerall = (p2stateno != [120, 155]) && p2movetype != A && !(enemynear, hitfall)
trigger1 = (stateno = 200 || stateno = 230)
trigger1 = p2bodydist x <= 4 && ((movehit = [1, 16]) = [1, 4]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, AI CHP]
type = changestate
value = 240
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && !inguarddist
triggerall = (p2bodydist x = [0, 40]) && (p2dist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (p2stateno != [120, 155]) && p2movetype != A && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (stateno = 200 || stateno = 205 || stateno = 206 || stateno = 215 || stateno = 220 || stateno = 230 || stateno = 235 || stateno = 245 || stateno = 250)
trigger1 = p2bodydist x <= 4 && ((movehit = [1, 16]) = [1, 4]) && random < (ifelse(var(47)=2,800,250) * (AIlevel ** 2 / 64.0))

[State -1, AI CHK]
type = changestate
value = 255
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && !inguarddist
triggerall = (p2bodydist x = [0, 60]) && (p2dist y = [ -50, 50]) && p2statetype != A && p2stateno != 5120
triggerall = ((p2stateno != [120, 155]) || p2stateno = 130 || p2stateno = 150 || p2stateno = 151) && p2movetype != A
trigger1 = (stateno = 200 || stateno = 205 || stateno = 206 || stateno = 206 || stateno = 215 || stateno = 220 || stateno = 230 || stateno = 235 || stateno = 245 || stateno = 250)
trigger1 = p2bodydist x <= 30 && ((movecontact = [1, 32]) = [1, 4]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, AI CMP]
type = changestate
value = 235
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && !inguarddist
triggerall = (p2bodydist x = [0, 45]) && (p2dist y = [ -50, 50]) && p2statetype = C
triggerall = (p2stateno != [120, 155]) && p2movetype != A && !(enemynear, hitfall)
trigger1 = (stateno = 200 || stateno = 215 || stateno = 230 || stateno = 245)
trigger1 = p2bodydist x <= 20 && ((movehit = [1, 16]) = [1, 4]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, AI CMK]
type = changestate
value = 250
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && !inguarddist
triggerall = (p2bodydist x = [0, 70]) && (p2dist y = [ -50, 50]) && p2statetype = S
triggerall = ((p2stateno != [120, 155]) || p2stateno = 130 || p2stateno = 150 || p2stateno = 151) && p2movetype != A
trigger1 = (stateno = 200 || stateno = 205 || stateno = 206 || stateno = 215 || stateno = 230 || stateno = 235 || stateno = 245)
trigger1 = p2bodydist x <= 20 && ((movehit = [1, 16]) = [1, 4]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, AI CLP]
type = changestate
value = 230
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && !inguarddist && !(enemynear, hitfall)
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [ -50, 50]) && p2statetype = C
triggerall = (p2stateno != [120, 155]) && p2movetype != A
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 200 || stateno = 230 || stateno = 245) && time >= 5 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AI CLK]
type = changestate
value = 245
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && !inguarddist
triggerall = (p2bodydist x = [0, 36]) && (p2dist y = [ -50, 50]) && p2statetype = S
triggerall = ((p2stateno != [120, 155]) || p2stateno = 130 || p2stateno = 150 || p2stateno = 151) && p2movetype != A
trigger1 = ctrl
trigger1 = random < (100 * (AIlevel ** 2 / 64.0)) || (p2stateno = 130 || p2stateno = 150 || p2stateno = 151) || p2stateno = 5110
trigger2 = (stateno = 200 || stateno = 230 || stateno = 245) && time >= 5 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AI AHP]
type = changestate
value = 270
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A && !inguarddist
triggerall = (p2bodydist x = [0, 45]) && (p2dist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 260 || stateno = 265 || stateno = 275 || stateno = 280) && ((movehit = [1, 16]) = [1, 4]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, AI AHK]
type = changestate
value = 285
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A && !inguarddist
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = 260 || stateno = 265 || stateno = 275 || stateno = 280) && ((movehit = [1, 16]) = [1, 4]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, AI AMP]
type = changestate
value = 265
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = (p2bodydist x = [0, 100]) && (p2dist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, AI AMK]
type = changestate
value = 280
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = (p2bodydist x = [ -50, 30]) && (p2dist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, AI ALP]
type = changestate
value = 260
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, AI ALK]
type = changestate
value = 275
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, AI Eraser Blow]
type = changestate
value = ifelse(power>=(500*!var(53))&&power<powermax&&((numtarget&&var(53)>500)||(random<100&&var(53)!=[1,500])),1310,1300)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (p2bodydist x = [0, 100]) && (p2dist y = [ -90, 0]) && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ((stateno = [200,699]) && stateno != 210)
trigger1 = (movehit = [1, 16]) && (p2bodydist x = [0, 90]) && random < (500 * (AIlevel ** 2 / 64.0))

[State -1, AI Bloody Smash]
type = changestate
value = ifelse(power>=(500*!var(53))&&power<powermax&&((numtarget&&var(53)>500)||(random<100&&var(53)!=[1,500])),1410,1400)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2dist x = [40, 190]) ;&& p2statetype != L
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
trigger1 = (ctrl || StateNo = 52 || (stateno=[130,131]) || (StateNo = [100,101]))
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (stateno=[130,131]) || (StateNo = [100,101]))
trigger2 = !numhelper(1155) && random < (200 * (AIlevel ** 2 / 64.0)) && enemynear, stateno != [3000,4999]
trigger2 = (enemynear, numhelper(enemynear, stateno + 5)) || (enemynear, numhelper(enemynear, stateno + 10)) || (enemynear, numhelper(1005)) || (enemynear, numhelper(1055)) || (enemynear, numhelper(1010)) || (enemynear, numhelper(1060))

[State -1, AI Gigantic Strike / Gigantic Smash]
type = changestate
value = ifelse(power>=(500*!var(53))&&power<powermax&&((numtarget&&var(53)>500)||(random<100&&var(53)!=[1,500])),1110,1100)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 ;&& statetype != A
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (p2statetype != L || p2stateno = 5120) && (p2bodydist x = [0, 80]) && (p2dist y = [ -120, 0])
triggerall = (enemynear, statetype = A) ;&& (enemynear, const(size.head.pos.y) <= -40)
trigger1 = ctrl && p2statetype = A && random < (ifelse(prevstateno = 1200, 333, 200) * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 699])
trigger2 = (movehit = [1, 16]) && (p2bodydist x = [0, 12]) && random < (500 * (AIlevel ** 2 / 64.0))
trigger4 = ctrl && enemynear, movetype = A && (p2bodydist x = [0, 40]) && random < (500 * (AIlevel ** 2 / 64.0))
trigger5 = stateno = 0 && prevstateno = 5120 && time <= 1
trigger5 = ctrl && (p2bodydist x = [ -40, 40]) && random < (500 * (AIlevel ** 2 / 64.0))
trigger6 = ctrl && (p2bodydist x = [ -30, 30])
trigger6 = (enemynear, stateno = 5120) && (enemynear, animtime = [ -6, -3]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, AI Gigantic Claw / Gigantic Spike]
type = changestate
value = ifelse(power>=(500*!var(53))&&power<powermax&&((numtarget&&var(53)>500)||(random<100&&var(53)!=[1,500])),1510,1500)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && ((statetype = A && enemynear, statetype = A)||(statetype != A && (enemynear, statetype != A || enemynear, movetype = H)))
triggerall = (ctrl || StateNo = 52 || (StateNo = [100,101]))
triggerall = p2statetype != L ;&& p2movetype != H
trigger1 = (p2bodydist x = [0, 25]) && (p2bodydist y = [ -50, 50]) && random < (300 * (AIlevel ** 2 / 64.0))
trigger2 = (p2stateno = [120, 155]) && (p2bodydist x = [0, 40]) && (p2bodydist y = [ -50, 50]) && random < (300 * (AIlevel ** 2 / 64.0))

[State -1, AI Lariat Express]
type = ChangeState
value = ifelse(power>=(500*!var(53))&&((numtarget&&movehit)||numhelper(1155))&&power<powermax&&((numtarget&&var(53)>500)||(random<125&&var(53)!=[1,500])),1210,1200)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2stateno != [120, 155]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (p2dist y >= -120) && (enemynear, vel y > -2)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && random < (50 * (AIlevel ** 2 / 64.0)) && (p2bodydist x = [0, 200])
trigger2 = (stateno = [200, 699]) && (movehit = [1, 16]) && Random < (150 * (AIlevel ** 2 / 64.0)) && (p2bodydist x = [0, 200])
trigger3 = numhelper(1155) && (ctrl || StateNo = 52 || (stateno=[130,131]) || (StateNo = [100,101]))
trigger3 = random < (500 * (AIlevel ** 2 / 64.0))
trigger3 = (enemynear, numhelper(enemynear, stateno + 5)) || (enemynear, numhelper(enemynear, stateno + 10)) || (enemynear, numhelper(1005)) || (enemynear, numhelper(3005)) || (enemynear, numhelper(1055)) || (enemynear, numhelper(3055))

[State -1, AI Eraser Shot]
type = changestate
value = ifelse(power>=(500*!var(53))&&power<powermax&&((numtarget&&var(53)>500)||(random<100&&var(53)!=[1,500])),1010,1000)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(!var(20), !numhelper(1005), 1) ;&& !numhelper(3005) && !numhelper(3055)
triggerall = (p2bodydist x >= 0) && p2movetype != A && (p2statetype != L || p2stateno = 5120)
triggerall = (enemynear, const(size.head.pos.y) <= 60) || (enemynear, statetype = A)
trigger1 = ctrl && p2bodydist x >= 100 && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 699])
trigger2 = (movehit = [1, 16]) && (p2bodydist x = [40, 80]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, AI Blaster Shot / Bloody Stomp]
type = changestate
value = ifelse((p2dist x = [-30,30]),ifelse(power>=(500*!var(53))&&power<powermax&&((numtarget&&var(53)>500)||(random<100&&var(53)!=[1,500])),1460,1450),ifelse(power>=(500*!var(53))&&power<powermax&&((numtarget&&var(53)>500)||random<100),1060,1050))
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A ;&& var(9) != 2
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = p2dist x >= -30 && p2dist y >= -25
trigger1 = ctrl && vel y > -2 && random < (333 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 699])
trigger2 = (movehit = [1, 16]) && random < (333 * (AIlevel ** 2 / 64.0))

[State -1, AI Gigantic Catastrophe]
type = changestate
value = 4300
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power >= (3000-1000*(var(53)>0)) && !var(20)
triggerall = !(enemynear, ctrl) && (p2stateno != 40) && (p2stateno != [5030, 5119])
triggerall = (p2bodydist x = [ -160, 160]) && (p2dist y = [ -120, 0]) && p2statetype != L
triggerall = (enemynear, vel y = 0) || (enemynear, vel y > 0 && enemynear, vel x < 0)
trigger1 = ctrl && (p2bodydist x = [0, 60]) && (enemynear, statetype != A) && random < (400 * (AIlevel ** 2 / 64.0))
;trigger2 = stateno = 1400 && animelemtime(6) >= 0 && (p2bodydist x = [0, 50]) && p2statetype != A && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, AI Omega Blaster / Gigantic Omegastorm]
type = changestate
value = ifelse(statetype!=A&&((random<450&&(stateno!=3000))||stateno=3400),4200,4100)
triggerall = AIlevel && numenemy && (var(22) = 0 || var(22) = 3 || var(22) = 20)
triggerall = roundstate = 2 && prevstateno != 4100 && anim != 3500 && anim != 3200 && anim != 3300 && anim != 1300
triggerall = power >= (3000-1000*(var(53)>0)) && var(20) <= 60 && ifelse(anim=1301||anim=1303,animelemtime(2)>=8,1)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (p2bodydist x = [ -150, 150]) && (p2dist y = [ -80, 20]) && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (stateno = 210 || stateno = 225 || stateno = 240 || stateno = 255)
trigger1 = (movehit = [1, 16]) && (p2bodydist x = [0, 150]) && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [1200, 1399]) || (stateno = 3400 && statetype != A)
trigger2 = (movehit = [1, 16]) && (p2bodydist x = [0, 150]) && random < (350 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = [1000,3999]) && numhelper(stateno + 5) && var(10) <= 6
trigger3 = helper(stateno + 5), var(3) && random < (150 * (AIlevel ** 2 / 64.0))
trigger4 = ctrl && enemynear, movetype = A && (p2bodydist x = [0, 70]) && random < (350 * (AIlevel ** 2 / 64.0))

[State -1, AI Blaster Meteor]
type = changestate
value = 4000
triggerall = AIlevel && numenemy && (var(22) = 0 || var(22) = 3 || var(22) = 20) && anim != 1300
triggerall = roundstate = 2 && enemynear, stateno != 5120 && enemynear, stateno != [700,999]
triggerall = power >= (3000-1000*(var(53)>0)) && stateno != 3200 && anim != 3300 && anim != 3500 && stateno != 4000 && prevstateno != 4000
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155]) && ifelse(anim=1301||anim=1303,animelemtime(2)>=8,1)
triggerall = (p2stateno != [5030, 5119]) && (enemynear, vel y < 4)
;triggerall = movetype = A || !(enemynear, hitfall)
trigger1 = ctrl && (enemynear, statetype = S || enemynear, statetype = C) && (enemynear, animtime <= -30) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (enemynear, statetype = A) && (enemynear, pos y <= -60) && (enemynear, movetype = A) && random < (500 * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = [1200, 1499])
trigger3 = (movehit = [1, 16]) && (p2bodydist x = [0, 30]) && random < (100 * (AIlevel ** 2 / 64.0))
trigger5 = (stateno = 3400 || stateno = 3706) && (movehit = [1, 16]) && random < (333 * (AIlevel ** 2 / 64.0))
trigger6 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && var(10) <= 6
trigger6 = helper(stateno + 5), var(3) && random < (200 * (AIlevel ** 2 / 64.0))
trigger7 = (stateno = 3807) && numhelper(stateno + 5) && var(10) <= 6
trigger7 = helper(3821), var(3) && random < (300 * (AIlevel ** 2 / 64.0))
trigger8 = stateno = 3706 && var(22)= 20 && (movehit = [1, 16]) && random < (900 * (AIlevel ** 2 / 64.0))

[State -1, AI Full Power Energy Wave / Gigantic Meteor]
type = changestate
value = ifelse(power>=(2000-1000*(var(53)>0))&&((!var(46)&&stateno=[3000,3499])||(stateno=[3500,3999])||((var(22)=2||var(22)=30)&&var(22)!=1&&(var(22)!=[31,33])&&var(22)!=[21,22])||(var(22)=0&&random<850)),3900,3300)
triggerall = AIlevel && numenemy && enemynear, stateno != 5120 && anim != 1300
triggerall = roundstate = 2 && statetype = A && prevstateno != 3300 && prevstateno != 3900
triggerall = !numhelper(3305) && !numhelper(3905) && anim != 3200 && var(22)!=3 && var(22) != 20
triggerall = power >= ifelse((stateno=[3500,3999]),2000,(1000*(var(53)=0))) && var(20) <= 60 && stateno != 3300 && stateno != 3900
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (p2bodydist x = [0, 120]) && p2dist y >= -20 && (enemynear, vel y < 4)
trigger1 = (stateno = 270 || stateno = 285)
trigger1 = (movehit = [1, 16]) && (p2bodydist x = [0, 30]) && random < (ifelse(power>=2000,400,100) * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [1200, 1499])
trigger2 = (movehit = [1, 16]) && random < (ifelse(power>=2000,500,250) * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = 3400 && ifelse(!var(46),power>=2000,1)) || (stateno = 3706 && var(46))) && (movehit = [1, 16]) && animelemtime(17) >= 0 && random < (ifelse(power>=2000,600,450) * (AIlevel ** 2 / 64.0))
trigger3 = ifelse(var(46),(stateno = [1000,3999]),((stateno=[1000,1999])||(power>=2000&&stateno=[3000,3499]))) && numhelper(stateno + 5) && var(10) <= 6
trigger3 = helper(stateno + 5), var(3) && random < (ifelse(power>=2000,600,100) * (AIlevel ** 2 / 64.0))
trigger4 = ((anim = 1102 && animelemtime(5)>=0 && vel y >6 && p2dist x >=80)||stateno=1502||(var(46)&&stateno=3705&&prevstateno=3704&&power>=2000)) && random < (ifelse(power>=2000,400,100) * (AIlevel ** 2 / 64.0))

[State -1, AI Gigantic Roar / Planet Geyser]
type = changestate
value = ifelse(power>=(2000-1000*(var(53)>0))&&((!var(46)&&stateno=[3000,3499])||(stateno=[3500,3999])||((var(22)=2||var(22)=30)&&var(22)!=1&&(var(22)!=[31,33])&&var(22)!=[21,22])||(var(22)=0&&random<600)),3600,3100)
triggerall = AIlevel && numenemy && var(22)!=3 && var(22) != 20 && ifelse(anim=1301||anim=1303,animelemtime(2)>=8,1)
triggerall = roundstate = 2 && statetype != A && prevstateno != 3100 && prevstateno != 3600
triggerall = anim != 3200 && stateno != 3100 && stateno != 3600 && anim != 3500 && anim != 1300
triggerall = power >= ifelse((stateno=[3500,3999]),2000,(1000*(var(53)=0))) && var(20) <= 60
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (p2bodydist x = [ -120, 120]) && (p2dist y = [ -300, -80]) && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (stateno = [1200, 1399])
trigger1 = (movehit = [1, 16]) && (p2bodydist x = [0, 60]) && random < (500 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = 3400 && ifelse(!var(46),power>=2000,1)) || (stateno = 3706 && var(46))) && (movehit = [1, 16]) && animelemtime(17) >= 0 && random < (450 * (AIlevel ** 2 / 64.0))
trigger3 = ifelse(var(46),(stateno = [1000,3999]),((stateno=[1000,1999])||(power>=2000&&stateno=[3000,3499]))) && numhelper(stateno + 5) && var(10) <= 6
trigger3 = helper(stateno + 5), var(3) && random < (300 * (AIlevel ** 2 / 64.0))

[State -1, AI Eraser Cannon / Eraser Shot Volley]
type = changestate
value = ifelse(power>=(2000-1000*(var(53)>0))&&((!var(46)&&stateno=[3000,3499])||(stateno=[3500,3999])||((var(22)=2||var(22)=30)&&var(22)!=1&&(var(22)!=[31,33])&&var(22)!=[21,22])||(var(22)=0&&random<600)),3500,3000)
triggerall = AIlevel && numenemy && var(22)!=3 && var(22) != 20 && ifelse(anim=1301||anim=1303,animelemtime(2)>=8,1)
triggerall = roundstate = 2 && statetype != A && prevstateno != 3000 && prevstateno != 3500
triggerall = !numhelper(3005) && !numhelper(3505) && anim != 3200 && anim != 1300
triggerall = power >= ifelse((stateno=[3500,3999]),2000,(1000*(var(53)=0))) && var(20) <= 60
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (p2bodydist x = [ -120, 120]) && (p2dist y = [ -60, 0]) && (enemynear, vel y < 8) && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (stateno = [1200, 1399])
trigger1 = (movehit = [1, 16]) && (p2bodydist x = [0, 60]) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = 3400 && ifelse(!var(46),power>=2000,1)) || (stateno = 3706 && var(46))) && (movehit = [1, 16]) && animelemtime(17) >= 0 && random < (200 * (AIlevel ** 2 / 64.0))
trigger3 = ifelse(var(46),(stateno = [1000,3999]),((stateno=[1000,1999])||(power>=2000&&stateno=[3000,3499]))) && numhelper(stateno + 5) && var(10) <= 6 && stateno != 3000 && stateno != 3500
trigger3 = helper(stateno + 5), var(3) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, AI Burst Eraser / Ggiantic Buster]
type = changestate
value = ifelse(power>=(2000-1000*(var(53)>0))&&p2statetype!=L&&p2dist y <=15&&((!var(46)&&stateno=[3000,3499])||(stateno=[3500,3999])||((var(22)=2||var(22)=30)&&var(22)!=1&&(var(22)!=[31,33])&&var(22)!=[21,22])||(var(22)=0&&random<600)),3800,3200)
triggerall = AIlevel && numenemy && var(22)!=3 && var(22) != 20 && enemynear, stateno != 5120 && ifelse(anim=1301||anim=1303,animelemtime(2)>=8,1)
triggerall = roundstate = 2 && (prevstateno != 3200) && anim != 3300 && anim != 3500 && anim != 1300
triggerall = power >= ifelse((stateno=[3500,3999]),2000,(1000*(var(53)=0))) && var(20) <= 60 && !numhelper(3205)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155]) && prevstateno != 1460
triggerall = (p2bodydist x = [0, 40]) && ifelse((stateno=[3500,3999]),p2dist y <=15,p2dist y = [ -90, 90]) ;&& p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (stateno = [1200, 1499])
trigger1 = (movehit = [1, 16]) && (p2bodydist x = [0, 30]) && random < (75 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = 3400 && ifelse(!var(46),power>=2000,1)) || (stateno = 3706 && var(46))) && (movehit = [1, 16]) && random < (333 * (AIlevel ** 2 / 64.0))
trigger3 = ifelse(var(46),(stateno = [1000,3999]),((stateno=[1000,1999])||(power>=2000&&stateno=[3000,3499]))) && numhelper(stateno + 5) && var(10) <= 6 && stateno != 3200
trigger3 = helper(stateno + 5), var(3) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, AI Gigantic Press / Gigantic Hammer]
type = changestate
value = ifelse(power>=(2000-1000*(var(53)>0))&&((!var(46)&&stateno=[3000,3499])||(stateno=[3500,3999])||((var(22)=2||var(22)=30)&&var(22)!=1&&(var(22)!=[31,33])&&var(22)!=[21,22])||(var(22)=0&&random<600)),3700,3400)
triggerall = AIlevel && numenemy && var(22)!=3 && var(22) != 20 && ifelse(anim=1301||anim=1303,animelemtime(2)>=8,1)
triggerall = roundstate = 2 && prevstateno != 3400 && anim != 3500 && anim != 1300
triggerall = power >= ifelse((stateno=[3500,3999]),2000,(1000*(var(53)=0))) && var(20) <= 60 && anim != 3200 && anim != 3300 && stateno != 3400
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (p2bodydist x = [ -150, 150]) && (p2dist y = [ -80, 20]) && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (stateno = 210 || stateno = 225 || stateno = 240 || stateno = 255)
trigger1 = (movehit = [1, 16]) && (p2bodydist x = [0, 150]) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [1200, 1399])
trigger2 = (movehit = [1, 16]) && (p2bodydist x = [0, 150]) && random < (250 * (AIlevel ** 2 / 64.0))
trigger3 = ifelse(var(46),(stateno = [1000,3999]),((stateno=[1000,1999])||(power>=2000&&stateno=[3000,3499]))) && numhelper(stateno + 5) && var(10) <= 6
trigger3 = helper(stateno + 5), var(3) && random < (100 * (AIlevel ** 2 / 64.0))
trigger4 = ctrl && enemynear, movetype = A && (p2bodydist x = [0, 70]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, AI Throw]
type = changestate
value = 800
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S && stateno != 100 && ctrl
triggerall = p2statetype != A && p2statetype != L && p2movetype != H
triggerAll = (P2BodyDist x = [-20,24]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (250 * (AILevel ** 2 / 64.0))
;trigger1 = (p2bodydist x = [0, 20]) && (p2bodydist y = [ -25, 25]) && random < (250 * (AIlevel ** 2 / 64.0))
;trigger2 = (p2stateno != [120, 155]) && (p2bodydist x = [0, 26]) && (p2bodydist y = [ -25, 25]) && random < (500 * (AIlevel ** 2 / 64.0))