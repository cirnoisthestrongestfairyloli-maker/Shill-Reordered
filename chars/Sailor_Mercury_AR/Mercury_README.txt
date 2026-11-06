******************************************************************************************
		Sailor Mercury v1.45(05/04/26)
		from Bishoujo Senshi Sailor Moon
******************************************************************************************
MUGEN ver: 1.0
Author: MillionMiles

CREDITS:
rgveda99, TsukinoAi+, LuisChamat - sprites
Makron & Roket (spriters-resource.com) - sprite rips
PotS, Mr.Foobs, PlasmoidThunder, Cyanide - coding advice
Flavio-ruru (www.deviantart.com/flavio-ruru) - vector portrait
N.Lin - voice rips

Naoko Takeuchi - original character
Aya Hisakawa - original voice
Banpresto - original sprites
Elecbyte - MUGEN engine

Testing and feedback:
PotS, Toni, thebestmlTBM, sergioprft, karl_eichholtz_13, Momotaro, RagingRowen, rgveda99

This character is a non-profit fan work, any commercial use is prohibited.


MOVESET:
==========================================================================================
		Basic Moves
==========================================================================================
 U - up
 D - down
 F - forward
 B - back

 x 		- light punch
 y 		- heavy punch
 z equals x+y
 
 a		- light kick
 b		- heavy kick
 c equals a+b

 s 		- taunt

 x,x,x,x,x	- autocombo

 tap U		- short jump

[cancel guard or any normal attack that connects]
 F,F or z	- run forward
 B,B or B+z	- dash back
 D,U or c	- superjump

[when running forward]
 hold F		- keep running
 x or y (x2)	- running punch
 a or b		- running kick

[opponent is near]
 F+z	 	- normal throw
		>both players should mash buttons to increase/decrease damage.

[while jumping]
 U		- air jump
 F,F or z or c 	- air dash
 D+x/a		- jumpdown attack
 D+y/b		- cross-up attack
 x,x,x		- autocombo

[while falling]
 any 2 attack
 buttons	- fall recovery
 
[while getting up from knockdown]
 U+x+a
  or 		- getup attack
 U+y+b

==========================================================================================
		Special Moves
==========================================================================================
 hold B,F x/y		- SHABON SPRAY [Projectile][Aqua Mist][EX Cancel]

 hold D,U x/y		- AQUA RIBBON UPPER [Dodge][Aqua Mist][EX Cancel]

 D,DB,B, x/y		- SHINE AQUA ILLUSION [Projectile]

 D,DB,B, a/b		- REVERSE BREAK STEP [EX Cancel]

 D,DB,B, x/y		- AQUA MIRAGE [Air]

==========================================================================================
(1/6 energy)	EX Special Moves	
==========================================================================================
 hold B,F z		- SHABON SPRAY BARRIER [Projectile][Dodge][Aqua Mist]

 hold D,U z		- TRIPLE AQUA RIBBON UPPER [Dodge][Aqua Mist]

 D,DB,B, c		- WATER BULLET [Dodge]

==========================================================================================
(2/3 energy)	Super Moves		
==========================================================================================
 D,DF,F,D,DF,F, x/y 	- SHABON SPRAY FREEZING [Projectile][Aqua Mist]
	
 D,DB,B,D,DF,F, a/b 	- SHINE AQUA CUTTER [Dodge]

==========================================================================================
(1/3 energy)	Planet Power
==========================================================================================
 z+c		- ACTIVATE
		>faster movement
		>no projectile limit
		>unlimited normal attack chains and juggling
		>normal attacks deal chip damage
		>unique normal attacks during combo push character forward
		>reduces Super Moves energy cost by 25% (to 1/2 of energy)
		>cannot guard or gain energy
		>small invincibility window upon activation
		>duration is 180 frames (3 seconds)
Getting hit or using any energy consuming attack ends duration prematurely.
==========================================================================================
		Tags
==========================================================================================
[Air] - can only be used in air
[Air+] - can be used both on ground and in air
[Hold] - hold the attack button to charge

[Dodge] - can avoid some attacks or projectiles
[Armor] - can take some attacks without being interrupted
[Counter] - can reverse some incoming attacks

[Unblockable] - cannot be blocked by an opponent
[Projectile] - counts as an active projectile
 >only one projectile can be used at a time unless EX Special or Super

[EX Cancel] - can be chained into EX counterpart
 >after using special don't release the attack button and press the other one to do EX Cancel
	e.g. D,DF,F, hold x, y
 >EX Cancel also can be performed using the normal command for EX Special

[Aqua Mist] - increases level of Aqua Mist
>while mist is active most attacks deal additional damage.
>attacks that create mist like Shabon Spray or Aqua Ribbon Upper are not affected by attack boost.
>Sailor Mercury will gradually become obscured by the mist if she isn't attacking, jumping or running.
 Level 1 - 10% attack boost; additional airjump
 Level 2 - 15% attack boost; some moves create illusions
 Level 3 - 20% attack boost; +10% damage reduction and +50% duration
==========================================================================================

CHANGELOG:
(v1.45)
-aerial cross-up attack command remapped to D+y/b
-throw command remapped to F+z
-now possible to disable double attack inputs for movement in config.txt file
-smoother combo into launching normal attack
-Shine Aqua illusion received small nerfs in damage and range
-some AI adjustments


(v1.4)
-aerial cross-up attack reworked:
	B+y/b - cross-up attack
	>character will turn if hit connects
	>better adapted for starting combos
-short jump and aerial autocombo added: 
	>tap U to perform short jump instead of a normal one
	x,x,x - autocombo in air
-added seamless air-to-ground transitions during normal attack combos
-Shabon Spray now grants 2 levels of Aqua Mist instead of 1
-Aqua Mist default duration decreased, lvl 3 effect changed to:
	>20% attack boost; +10% damage reduction and +50% duration
-Aqua Ribbon Upper and Triple Aqua Ribbon Upper startup invincibility extended to ground attacks
-other small tweaks

(v1.3)
-changed command inputs for certain moves:
	hold B, F, x/y - Shabon Spray
	hold B, F, z   - EX Shabon Spray Barrier
	hold D, U, x/y - Aqua Ribbon Upper
	hold D, U, z   - EX Triple Aqua Ribbon Upper
-Shabon Spray Barrier no longer disappears after being hit by projectiles
-Shabon Spray Barrier now counts as an active projectile
-Shine Aqua Illusion is rewamped to have freezing effect, EX verison removed
-new EX special:
	D,DB,B, c - Water Bullet
-crouching HP changed to uppercut
-Aqua Mist buffs rework
-doing taunt during Aqua Mist now increases its level
-EX specials are not affected by specials projectile limit anymore
-Planet Power reduces Super Moves energy cost by 25%
-some character compatibility updates
-visual updates & new sprites
-balance adjustments
-minor error fixes

(v1.2b)
-fixed AI behaviour during Shine Aqua Cutter
-fixed Aqua Mist refresh error
-minor sprite updates
(v1.2)
-Aqua Mirage and Retrograde Aqua Mirage are revamped and merged under [D,DB,B, x/y] input
-Shabon Spray Veil reworked into Shabon Spray Barrier
-EX Shine Aqua Illusion no longer teleports character backwards
-new taunt added
-Aqua Mist buffs altered
-added special intro for Sailor Moon/Sailor Mars in vs/coop
-added Perfect Guard mechanic
-KO via chip damage is limited to energy consuming moves
-special KO effects are limited to Supers and EX Specials
-airdash now can be cancelled early by aerial normals
-added negative edge support for complex commands
-changed hit properties of some attacks
-AI improved
-visual refinement and minor error fixes

(v1.1)
-new recovery near ground animation
-added simple input for EX Cancel
-hitbox rework
-jumping normals fix
-Aqua Mist effect rework
-Aqua Ribbon Upper rebalanced
-other small changes