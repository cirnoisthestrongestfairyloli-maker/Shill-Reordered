MUGEN Character(WINMUGEN only!)
Haruhi Suzumiya
from [Melancholy of Haruhi Suzumiya]

author		Choiyer
last update	2013/09/22


*move list

=button configration=
 x	light attack
 y	midium attack
 z	hard attack
 a	Shield
 b	Striker
 c	
start	taunt(+power50)


=sub system=
 Shield		: a
 Dash			: 66
 Back Step		: 44
 Throw			: 6+y+z

*Skill*

=Basic Moves=
 Low kick	: 6+x
 Upper kick : (enemy near)z
 Arial rave :(Upper kick hit)8
 Roll :(x+a)
 Roll back :(4+x+a)

=Special Moves=
 Bat swing	: 236+x or y or z(z = delete enemy projectile)
 Knock		: 214+x or y or z
 Syoryu-megaphone: 623+x or y or z
 Air Drop kick	: (in air)214+x or y or z
 Drop kick	: dash+y
 Sliding Kick	: dash+z
 Molester grab	:(While I grapple it by an arm throw)z:(Power-500)
 Haruhi buster	;(While I grapple it by an arm throw)y:(Power-500)

=Super Moves=(Power-1000)
 Frip Kick		:(while Guard hitting)236+x or y or z
 Cho-Yusha Haruhi	: 2626+x
 Cho-Yusha Thunder	: (in air)2626+x
 SOS-rape		: 2626+y(power-2000,+bonus action)
 Sommon Flame Haze	: 2424+b

=Super Moves=(Power-2000)
 SOS Attack!		: 2424+y

=Hyper Moves=(Power-3000)
 Live Alive		: 2424+z

=Striker=(Power-500)
 Nagato		: b
 Mikuru		: 4+b
 =Striker=(Power+-0)
 Konata		: 6+b(When she gave a book, random poweradd)


-------------------------------------------------------------------------------

Do not use or edit my files in order to make your creations. Characters must be used only to play.
Do not host, distribute or upload my files in another mugen site.
Do not edit & release this character in any way.
Do not sell this character in any way.

Sprite of this character made it from Melty-Blood.

-------------------------------------------------------------------------------
You open Haruhi.def in Notepad if I want to change a color of the underwear of the default color, and please choose Pal4.
Mint is the mint green of "the solitary island syndrome".
Orange is an orange of "Melancholy".
White is pure white!

-------------------------------------------------------------------------------

You will let Chara display exclusive anime in Molester grab.
When air-file of Chara which wants to let you cope does not have AnimeNo.15211 & No.15212, please change it in sprite which I do copy&paste of the following, and like a group and an image.
The coordinate is each person adjustment.

[Begin Action 15211]
5062, 0, 0, 0, 5
5062, 0, 0, 0, 30
5032, 30, 0, 0, 2
5040, 10, 0, 0, 8
5040, 10, 0, 0, 8
5040, 10, 0, 0, 8
5040, 10, 0, 0, 8
5040, 10, 0, 0, -1

[Begin Action 15212]
5041, 0, 0, 0, 6
5041, 10, 0, 0, 6
5041, 0, 0, 0, 6
5041, 10, 0, 0, 6

[Begin Action 15213]
5041, 10, 0, 0, 4
5041, 20, 0, 0, 30

[Begin Action 15214]
5040, 10, 0, 0, 6
5040, 10, 0, 0, 6

-------------------------------------------------------------------------------

Choice of the stripping KO direction
When it is done KO to (two taking first is the second defeat) at defeat time, it is done it specially. If you want to choose this, you open config.txt, and please change 0 of the very last to 1.

[State -1, setting]
type = varset
trigger1 = 1
v = 20
value = 0
Å´
value = 1

When you want to let you urinate in KO of Haruhi, You open config.txt, and please change var(23) value=1.

When you don't want to watch molester grab & SOS-rape, You open config.txt, and please change var(24) value=0.

-------------------------------------------------------------------------------

AI setting

You change [State -1, AI config] of config.txt.
var(59) = 1:easy-AI
var(59) = 2:hard-AI

-------------------------------------------------------------------------------
SPECIAL THANKS!
Addition and adjustment of the skill:Mr.mona777
Cooperation of the palette:Mr.T's,Mr.Hiiragi
Permission to Guiter dotwork:Mr.Tsubaki
Permission to Intro:agent616
The permission to use stripping K.O. state:Mr.CCIronmugen(Vietspana)
Permission to use state & material for SOS crash!:Mr.Yuzuru(Let's DARK BITE)
Permission to use state & material for SOS rape:Mr.NRF(NRF-FLASH)
Reference to use state for Live Alive:Mr.hanma(Hanma's sky ship)
and all of you!
