Shiki Tohno
Version 1.3
Style: Unknown
	
General Design 
	Shiki's ground game is where he shines, with a variety of tools for both midscreen and the corner.
	Even without meter, he can confirm from some unlikely hits thanks to his God Speed Dash combos and specials.
	With meter, he can do straighforward damage without too much effort.

Table of Contents

1. Changelog
2. Controls
3. System Notes
4. Bonus Section
5. Credits


1. Changelog

	1.2 -> 1.3
		CH effects adjusted.
		Throw and 5B hitbox adjusted.
		Throws, wallsticks, and some moves now give forced liedown time to P2
		Other bugfixes
		
	1.1 -> 1.2
		AI rewritten
		Some bugfixes
		
	1.0 -> 1.1
		Bugs! Fixed!
		
2. Controls

	Numpad Guide:
			
			7 8 9
			4 5 6
			1 2 3
			
			All directional commands will be listed according to this numpad guide.
			When on the P1 side, 4 is back, 6 is forward, 2 is down, and 8 is up.
			Therefore, on the P1 side, 7 is up-back, 9 is up-forward, 3 is down-forward, and 1 is down-back.
			On the P2 side, 4 is forward and 6 is backward; 7, 9, 3, and 1 will reverse accordingly.
			
			5 is neutral.
			
			All commands are given assuming that Shiki is on P1's side of the screen.
		
	Basic Moves

		X, Y, Z, etc, refer to MUGEN button notation.
		The letters in parentheses will be used in this readme to explain what buttons to press.

		Light Attack - X (A)
		Medium Attack - Y (B)
		Heavy Attack - Z (C)
		Special Skill: God Speed Dash - A (D)

	Command Moves
				
		Straight Thrust - 6C (hold C to charge the move up; unblockable at full charge.)
		
	Throws
		Throw - A + B (air ok)
			Use Back to change the throw direction.

	System

			Recovery - any button, if recovery is possible. 
				Hold Forward/Back to recover in those directions.
			Run - Tap Fwd twice and hold it. Can cancel into basic attacks, specials, and supers.
			Superjump - Tap Down and then jump in any direction.
			Double Jump - Jump while you're in the middle of another jump. Works after superjumps, but you only get regular jumping height.
			Jump Cancel - Jump while hitting with any A attack, any B attack, or standing C.
				You get one jump cancel from the ground, and one jump cancel in the air.
			Air Dash - Press Forward or Backward twice in midair. Can cancel into basic attacks.
			Air Dash Cancel - Press Forward or Backward twice while hitting with jumping A, B, or C.
				You get one Air Dash Cancel, which resets when you land.

	Special Moves
		
		Moves marked with [SC] can be canceled into supers.
		
		236A/B/C - Trump Card No.3 (Flash Sheath "Eight Flower Mirror") [SC]
		623A/B/C - A Kick Even I Don't Understand (Flash Run "Six Fish")
		214A/B/C - Trump Card No.2 (Low Scoop) [SC]
		22A/B/C (in midair) - Engrossed Counterattack (Flash Sheath "Eight Falcon")
		236D - God Speed Flash (Flash Sheath "Eight God Speed Slash") [SC]
		214D - God Speed Strike (Flash Sheath "Eight God Speed Thrust")
		
		-The C versions of all special moves, as well as God Speed Flash and God Speed Strike, cost 500 power, or 1/2 a super meter stock.
		-The C versions of special moves can be used as guard cancels.
		-The C versions of Trump Card No.2 and Engrossed Counterattack can be jump canceled.
		
	God Speed Dash Moves
		
		5D - Shiki dashes to appear in front of the opponent.
		6D - Shiki dashes to appear behind the opponent.
		2D - Shiki dashes up into the air.
		j.D - Shiki dashes down to the ground slightly ahead of his starting position.
		
	After using God Speed Dash, God Speed Flash, or God Speed Strike, Shiki cannot immediately use it again.
	It will take 1.25 seconds to recharge, but if the opponent is still being hit, then the timer will pause.
	When Shiki can use God Speed Dash moves again, there will be an indicator at the bottom of the screen.
		
	Super Moves

		Lv. 1 (1000 power/1 super meter)
			236AB - Trump Card Edge No. 3
			214AB - Trump Card Edge No. 2

		Lv. 2 (2000 power/2 super meters)
			41236AB - Mystic Eyes of Death Perception (becomes Mystic Eyes of Death Perception: Instant Death in Burst Mode)

		Lv. 3/MAX (3000 power/3 super meters) 
			63214BC - Seventeen Dissection 

3. Other System Notes

	Burst Mode
		
		Burst Mode is engaged by pressing A + D with at least 1 super meter stock. 
			It can be used:
			-as a blowback attack while blocking (similar to a burst in Guilty Gear or Blazblue),
			-on the ground or in the air (similar to activating Heat in Melty Blood),
			-and during cancelable normals (similar to entering MAX or HD Mode in KoF).
			
		When it is not used as a blowback attack, Burst Mode can be canceled into attacks, dashes, or jumps after a specific frame.
		When Burst Mode is used during a grounded cancelable normal, Shiki performs a Burst Dash toward the enemy that can be canceled into attacks or jumps.
			
		Pros of Burst Mode:
			+ Shiki can use two God Speed attacks before he has to recharge, and they do more damage.
			+ Lv. 2 Super, Mystic Eyes of Death Perception, upgrades to its Burst version, Mystic Eyes of Death Perception: Instant Death, and does more damage.
				Additionally, the opponent's meter is completely drained by the attack.
			+ Seventeen Dissection does more damage.
			+ Lv. 1 Super Moves can be canceled into either a Lv. 2 or Lv. 3 super move.
			
		Cons of Burst Mode:
			- Shiki's super meter is constantly draining in order to maintain Burst Mode, and the mode ends when he runs out.
			- Performing a Lv. 2 or Lv. 3 super will drain all of Shiki's meter, ending Burst Mode after his powered-up attacks land.
			- When Burst Mode ends, Shiki enters "Break" status, which prevents him from gaining meter for ten seconds.

	Chain Combos
		5AAAAA....
		2AAAAA....
		5A -> 2A -> 5A....
		
	Cancelable Command Attacks
		Straight Thrust
		
	Ground Cancels
		A -> B -> C -> D
		A -> B -> C -> Command Attacks -> A/B Specials -> C Specials -> God Speed Flash/Strike or Super Moves
		-You can skip steps in the chain as you progress from left to right.
		-You can go from stand to crouch freely as you ascend through A B C (as in 5A 2B 5C or 2A 5B 2C).
		
	Ground Cancels (Burst Mode)
		A -> B -> C -> D
		A -> B -> C -> Command Attacks -> A/B Specials -> C Specials (can continue to cancel into other C Specials) -> God Speed Flash/Strike or Super Moves
		Lv. 1 Super Moves -> Lv. 2 or Lv. 3 Super Moves
		
		-You can skip steps in the chain as you progress from left to right.
		-You can go from stand to crouch freely as you ascend through A B C (as in 5A 2B 5C or 2A 5B 2C).
		-If you want to cancel the C version of a special attack with another C Special Attack, you need to use a different special move.
			For instance, you can do 214A (cancel) 214C (cancel) 623C, but not 214A (cancel) 214C (cancel) 214C.
	
	Air Cancels
		j.A -> j.B -> j.C -> Special Attacks or Air Throw
		j.A/B/C -> Air Jump or Air Dash -> j.A/B/C
		-You can also skip steps in the chain as you progress from left to right.
		-You get one air jump and one air dash per combo.
		
	Other System Notes
		-Counter hits give a little extra hitstun and untechable time for moves.
		
	Sample Combos
	
		Notation:
			ADC - Air Dash Cancel
			JC - Jump Cancel
	
		Meterless Combos
			2A 2B 5C 6D 5A 5B 5C 236A/B or 214A/B
			2A 2B 5C 2D j.C, land on ground 5B 5C 236A/B or 214A/B
			2A 2B 5C 2D j.C ADC j.C, land on ground 5A 5B 5C 236A/B or 214A/B
			2A 2B 5C 5D 5A 5B 5C 236A/B or 214A/B (corner combo only)
			
		Meter Combos
			2A 2B 5C 6D 5A 5B 5C 236A 236AB
			2A 2B 5C 6C 214D, land on ground 5A 5B 5C 236A/B or 214A/B (500 meter)
			2A 2B 5C 6C 236D 5A 5B 5C 236A/B 236C or 214C (1000 meter, corner combo)
			2A 2B 5C 6C 214D, land on ground 5A 5B 5C 214C, JC second hit of 214C, j.A j.B j.C, JC second hit of j.C, j.A j.B j.C Air Throw (1000 meter)
			
			
	
		
4. Bonus Section

	Palette 10 (hold Start, press MUGEN A button) is a pure jokes palette, if that wasn't obvious. 
		It only really has an effect on the music if you hit a character with Seventeen Dissection when they're under 300 life.
		
	Palette 11 (hold Start, press MUGEN B button) is a Gold Mode palette.
		The only benefit in this mode is increased movement speed.
		
	Palette 12 (hold Start, press MUGEN C button) is a Shadow Mode palette.
		The only benefit in this mode is unlimited meter.
		Engaging Burst Mode, however, will cause the meter to drain as normal, and Break status will still apply after the meter is drained.

5. Credits

	Kamekaze: Hitstun decay and untechable decay code--also, the general inspiration for this style of gameplay
	Vans, PotS: Cornerpush, throw checking, and other miscellaneous code
	N64Mario: The original character template
	Seravy: Original AI code
	Alchemist of Atlas: voice and some sound rips
	Saikoro: Large portrait
	cafe: Hitsparks from his Hina
	9: Hitsounds
	Evil Homer: Beta-tester, palette maker, and general source of the sillier parts of the character.
	You: for playing