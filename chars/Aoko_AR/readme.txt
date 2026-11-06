Aoko Aozaki
Version 2.0
Style: Unknown
	
General Design 
	Aoko benefits from having lots of meter at her disposal, as it lets her set up some nice tricks without having a knockdown handy. 
	Her corner game is particularly strong once she can score a knockdown, as it allows for a variety of setups to keep the opponent 
	pinned and guessing under pressure using her Starmine Setter technique.
	
	She has a few midscreen options, but they're generally not as strong as her corner game, and it's better to focus on pushing the enemy 
	toward the corner for maximum reliable damage.

Table of Contents

1. Changelog
2. Controls
3. System Notes
4. Bonus Section
5. Credits


1. Changelog

	1.4 -> 2.0
		spAIder and Neutrality added
		Starmines re-reworked
		Blazing Starmine, 6D, and 4D removed
		Burst Mode drain slowed down slightly
		Special ground-bounce state added for 4C, counterhit j.C
		Severe Break & Severe Break Slider pickup grounded opponents
		If j.D starmine detonates you may jump cancel it.
		
	1.3 -> 1.4
		Airdash height restriction loosened
		Starmines reworked
		Jump and air dash cancelable normals reworked
	
	1.2 -> 1.3
		CH effects adjusted.
		Throw hitbox adjusted.
		Throws, wallsticks, and some moves now give forced liedown time to P2
		Other bugfixes
	
	1.1 -> 1.2
		AI rewritten
		Some bugfixes
	
	1.0 -> 1.1
		Bugs! Fixed!
		Starmines may now be special canceled if they hit an opponent.
		
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
			
			All commands are given assuming that Aoko is on P1's side of the screen.
		
	Basic Moves

		X, Y, Z, etc, refer to MUGEN button notation.
		The letters in parentheses will be used in this readme to explain what buttons to press.

		Light Attack - X (A)
		Medium Attack - Y (B)
		Heavy Attack - Z (C)
		Special Skill: Starmine Setter - A (D)
		
		About Starmine Setter
			When Aoko uses a Starmine Setter Move, she sets a blue sphere (Starmine) out on the field. These Starmines hit once after their deployment.
			Pressing D while a Starmine is out will detonate it, causing it to hit again and giving Aoko the opportunity to cancel into special moves.
			If they hit the opponent when they are first placed on-screen, Starmines will eventually detonate.
			
			Hitting Aoko will force any set Starmines to dissipate.
			
			Starmines come in two sizes, Normal and Large.

	Command Moves
				
		Aoko One-Two-Three - 6A, B, C
			Aoko Sweep - 6C
			Aoko Rider - 4C
		Aoko Axe Kick - 4C
		Aoko Upper - 3C
		
		Throw - A + B (air ok). Use Back to change the throw direction.

		- If any parts of the Aoko One-Two-Three miss, the sequence cannot continue.
			
	System
			Recovery - hold any button, if recovery is possible. Hold Forward/Back to recover in those directions.
			Run - 66. Can cancel into basic attacks, specials, and supers.
			Backhop - 44.
			Superjump - Tap 2 and then jump in any direction.
			Double Jump - Jump while you're in the middle of another jump. Cannot use after an airdash.
			Jump Cancel - Jump while hitting with certain moves on the ground or in the air.
			Air Dash - Press Forward or Backward twice in midair. Can cancel into basic attacks. Cannot use after a double jump.
			Air Dash Cancel - Press Forward or Backward twice while hitting with jumping A or B. Cannot use unless you can air dash normally.

	Special Moves
		
		C and D Special Moves cost 1/2 a super meter stock to perform. They can also be used while blocking.
		
		236A/B/C - Magic Draw [SC]
		623A/B/C - Aoko Moonsault [SC]
		63214A/B/C - Browning Starbow [SC]
	
		5D - sets a Starmine in front of Aoko that travels forward.
		2D - sets a Starmine on the ground in front of Aoko.
		j.D - sets a Starmine in the air slightly below Aoko.
		214D (air OK) - Starmine Bomber. Sets a Large Starmine that travels forward (ground) or downward (air). 
			If a Starmine is already present, Bomber will detonate it before setting a new Large Starmine.
				
		
	Super Moves

		Lv. 1 (1000 power/1 super meter)
			236AB - Magic Draw Edge
			623AB - Aoko Moonsault Edge

		Lv. 2 (2000 power/2 super meters)
			41236AB - Severe Break (becomes Severe Break Slider in Burst Mode)

		Lv. 3/MAX (3000 power/3 super meters)
			63214BC - Retroflow - Genesis Light Year

	Burst Mode
		
		Burst Mode is engaged by pressing A + D with at least 1 super meter stock. 
			It can be used as a blowback attack while blocking, on the ground, or in the air.
			It can also be used during cancelable normals, which creates a Quick Burst (similar to entering MAX or HD Mode in KoF).
			
		When Burst Mode is not used while blocking, it can be canceled into attacks, dashes, or jumps after a specific period of time.
		Using Quick Burst makes Aoko Burst Dash toward the enemy. You can stop a Burst Dash with jumps or attacks.
			
		Pros of Burst Mode:
			+ All Starmines become auto-detonating Large Starmines.
			+ Lv. 2 Super, Severe Break, upgrades to its Burst version, Severe Break Slider, and does more damage.
			+ Retroflow - Genesis Light Year does more damage.
			+ Lv. 1 Super Moves can be canceled into either a Lv. 2 or Lv. 3 super move.
			
		Cons of Burst Mode:
			- Aoko's super meter is constantly draining in order to maintain Burst Mode, and the mode ends when she runs out.
			- Using Quick Burst cuts the total time of Burst Mode in half.
			- Performing a Lv. 2 or Lv. 3 super, whether it hits or not, will drain the rest of Aoko's meter.
			- When Burst Mode ends, Aoko enters "Break" status, which prevents her from gaining meter for ten seconds.

		
	Other System Notes
	
	Ground Cancels
		A -> B -> C -> D
		A -> B -> C -> D or Command Attacks -> A/B Specials -> C Specials -> D Specials -> Super Moves
		Lv. 1 Super Moves -> Lv. 2 or Lv. 3 Super Moves (during Burst Mode only)
		
		-You can skip steps in the chain as you progress from left to right.
		-You can go from stand to crouch freely as you ascend through A B C (as in 5A 2B 5C or 2A 5B 2C).
		-If you want to cancel the C version of a special attack with another C Special Attack, you need to use a different special move.
			For instance, you can do 236A (cancel) 236C (cancel) 623C, but not 236A (cancel) 236C (cancel) 236C.
	
	Air Cancels
		j.A -> j.B -> j.C -> Special Attacks or Air Throw
		j.A/B -> Air Jump or Air Dash -> j.A/B/C
		-You can skip steps in the chain as you progress from left to right.
		-You get one air jump and one air dash per combo.
		
		-Counter hits give a little extra hitstun and untechable time for moves.
		
		
3. Bonus Section
		
	Palette 11 (hold Start, press MUGEN B button) is a Gold Mode palette.
		The only benefit in this mode is increased movement speed.
		
	Palette 12 (hold Start, press MUGEN C button) is a Shadow Mode palette.
		The only benefit in this mode is unlimited meter.
		Engaging Burst Mode, however, will cause the meter to drain as normal, and Break status will still apply after the meter is drained.
		
4. Credits

	Kamekaze: Hitstun decay, untechable decay, neutrality, and spAIder code--
		also, the general inspiration for this style of gameplay, beta-testing, and many other things.
	Vans, PotS: Cornerpush, throw checking, and other miscellaneous code
	N64Mario: The original character template
	Alchemist of Atlas: voice and some sound rips
	cafe: Hitsparks from his Hina
	9: Hitsounds
	Evil Homer, Blackinu: Beta-testers
	Hoshi: sprite separation, some palettes, and hi-res FX
	You: for playing