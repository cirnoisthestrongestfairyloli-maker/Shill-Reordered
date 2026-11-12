******************************************************************************************
		Sailor Moon v1.45(05/04/26)
		from Bishoujo Senshi Sailor Moon
******************************************************************************************
MUGEN ver: 1.0
Author: MillionMiles

CREDITS:
rgveda99, TsukinoAi+ - sprites
Makron & Roket (spriters-resource.com) - sprite rips
PotS, Mr.Foobs, PlasmoidThunder, Cyanide - coding advice
Flavio-ruru (www.deviantart.com/flavio-ruru) - vector portrait
N.Lin - voice rips

Naoko Takeuchi - original character
Kotono Mitsuishi - original voice
Banpresto - original sprites
Elecbyte - MUGEN engine

Testing and feedback:
PotS, thebestmlTBM, sergioprft, karl_eichholtz_13, Momotaro, RagingRowen, rgveda99
 

This character is a non-profit fan work, any commercial use is prohibited.


MOVESET:
==========================================================================================
		Basic Moves
==========================================================================================
 U - up
 D - down
 F - forward
 B - back

 x 		- light punch (LP)
 y 		- heavy punch (HP)
 z equals x+y
 
 a		- light kick (LK)
 b		- heavy kick (HK)
 c equals a+b

 s 		- taunt

 x,x,x,x,x	- autocombo
 F+b		- front kick

 tap U		- short jump

[cancel guard or any non-aerial normal attack that connects]
 F,F or z	- run forward
 B,B or B+z	- dash back
 D,U or c	- superjump

[when running forward]
 hold F		- keep running
 x or y		- running punch
 a or b		- running kick

[after dashing back]
 F or z		- forward roll
 B or B+z	- backward roll
 U		- jump
 tap U		- short jump
 D,U or c	- superjump
 D		- crouch
 x or y		- headbutt
 a or b		- low kick

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
 D,DF,F, x/y		- MOON TIARA ACTION [Projectile][EX Cancel]
 	
 F,D,DF, x/y		- MOON SCREW PUNCH [Dodge][EX Cancel]

 D,DB,B, x/y		- TWILIGHT FLASH [Dodge]

 D,DB,B, a/b		- SILVER CRYSTAL

 D,DF,F, x/y		- SPIRAL HEART ATTACK [Air][Projectile][EX Cancel]

 D,DB,B, a/b		- SAILOR BODY ATTACK [Air]

[EX Cancel]:
 >recovery animation of a special move can be canceled by its EX counterpart if it has one
 >after using special don't release the attack button and press the other one to do EX Cancel
	e.g. D,DF,F, hold x, y
 >EX cancel also can be performed using the normal command for EX Special

==========================================================================================
(1/6 energy)	EX Special Moves
==========================================================================================
 D,DF,F, z		- MOON PRINCESS HALATION [Projectile]

 F,D,DF, z		- RISING MOON [Dodge]

 D,DF,F, z		- RAINBOW MOON HEARTACHE [Air][Projectile]

==========================================================================================
(2/3 energy)	Super Moves 
==========================================================================================
 D,DF,F,D,DF,F, x/y 	- MOON TIARA STARDUST [Projectile][Unblockable]
	
 D,DF,F,D,DF,F, a/b 	- SUPERSONIC CRY [Dodge]

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
==========================================================================================

CHANGELOG:
(v1.45)
-aerial cross-up attack command remapped to D+y/b
-throw command remapped to F+z
-now possible to disable double attack inputs for movement in config.txt file
-smoother combo into launching normal attack
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
-new back dash follow-ups:
	F or z		- forward roll
 	B or B+z	- backward roll
	U		- jump
	tap U		- short jump
	D,U or c	- superjump
	D		- crouch
	x or y		- headbutt
	a or b		- low kick
-Moon Screw Punch and Rising Moon startup invincibility extended to ground attacks
-other small tweaks

(v1.3)
-now Sailor Moon doesn't catch her tiara when she's in air
-EX specials are not affected by specials projectile limit anymore
-Planet Power reduces Super Moves energy cost by 25%
-some character compatibility updates
-visual updates & new sprites
-balance adjustments
-minor error fixes

(v1.2b)
-Twilight Flash edited to properly interact with Sailor Mars ofuda
-fixed character going into jump land state when doing grounded Twilight Flash
(v1.2)
-Spiral Heart Attack light/heavy version added
-Sailor Body Attack light/heavy version added
-Silver Crystal has faster startup, lower range and not affected by projectile limit
-added special intro for Sailor Mercury/Sailor Mars in vs/coop
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
-Silver Crystal random projectile spread removed
-Moon Screw Punch rebalanced
-other small changes