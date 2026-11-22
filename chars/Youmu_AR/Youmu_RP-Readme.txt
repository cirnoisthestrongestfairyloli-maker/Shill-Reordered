-------------------------------------
Youmu Konpaku (Youmu_RP)
(Touhou: Gensokyo Reloaded version)
-------------------------------------
Author: RicePigeon

------------------
Contents
------------------

1. Contents (You're reading this)
2. Version Changes
3. Movelist
  3a. Command Moves
  3b. Specials
  3c. Spellcards
4. Credits

------------------
Version Changes
------------------

=====================================
12/30/20 - Version 2020.12.30
=====================================

- [System] Fixed issue where Youmu could not tech recover backward or forward.

=====================================
12/19/20 - Version 2020.12.19
=====================================

- [System] Fixed bug where Youmu was vulnerable to grabs during pre-jump frames.
- [System] Fixed graphical bug involving dash effects during superpauses.
- [System] Fixed an issue where getup invulnerability would end prematurely if an attack was performed on the same frame control was regained.
- [System] Fixed graphical issues with Spirit Level gauge.
- [System] Myon now changes color based on Youmu's current Spirit Level.
- [System] Added workaround that would resolve a bug in Stupa's Training character.
- [System] Corrected button strength priority in commands; higher strength buttons now take priority over lower strength buttons.
- Throw: Fixed bug where Stupa's Training character could not tech the throw.
- Throw: Fixed timing where Throw proration flag was set prematurely.
- Insightful Sword: Myon now performs a follow up attack if counter is successful during "Secret of Life and Death".
- Insightful Sword: Fixed oversight where move would erroneously gain hitstun bonuses on counterhit.
- Insightful Sword: Now gains a hitpause bonus at max spirit level.
- Crescent Moon Slash: Fixed bug involving proration not applying on the last possible active frames of the attack.
- Crescent Moon Slash: Ground and Air versions now properly share the same juggle flag.
- Slash of Life and Death: Improved buffer window of cancelling into self on movecontact.
- "Meditation": Fixed bug in handling of recovery frames.
- "Slash of Present": Fixed bug involving proration not applying on the last possible active frames of the attack.
- "6-Root Cleansing": Fixed Ikemen exclusive bug that would occur if Youmu traded hits with an opponent.
- "6-Root Cleansing": Fixed oversight where move would erroneously display counterhit indicator.
- "Secret of Life and Death": Adjusted method of handling Myon's hitboxes during landing frames.
- "Secret of Life and Death": Myon now utilizes her own proration variable separate from Youmu's, which is copied at the beginning of each attack. This
   should result in each hit of Myon's attacks dealing near identical damage to Youmu's.
- "Secret of Life and Death": Minimum & Maximum durations decreased (Min: 5 sec -> 4 sec, Max: 12.5 sec -> 10 sec).
- "Matsuyoi Reflecting Satellite Slash": Fixed oversight where counterhit bonus damage was not being applied.

=====================================
09/20/20 - Version 2020.09.20
=====================================

- Crescent Moon Slash [Air]: Fixed bug where move was incorrectly using the same juggle flags as Lotus Stance Cut.

=====================================
08/17/20 - Version 2020.08.17
=====================================

- [System] Tech recovery command changed to hold x/y/z before hitting ground. Can now tech left or right.
- [System] Throw tech window increased (7f->15f).
- [System] Damage proration no longer utilizes Attackmulset.
- [System] All combos now apply a one-time 75% prorate for the second attack onward.
- [System] Implemented flag that prevents multi-hit moves from applying forced 75% proration to its remaining hits.
- 2x: Spirit Lv damages adjusted (18/18/21/25->18/20/23/25).
- j2z: Spirit Lv damages adjusted (65/65/70/80->65/65/70/75).
- Throw: Now affected by Spirit Lv, damages adjusted (80/80/80/80->70/70/75/80), fixed Ikemen-exclusive bug.
- Throw: Removed fall parameter glitch.
- Fixed incorrect Counterhit stun bonuses on air Normals.
- Crescent Moon Slash [Y ver]: Damage on 1st hit adjusted (49/51/54/54->45/47/49/52), proration increased (0.8x2->0.9,0.85).
- Crescent Moon Slash [Z ver]: Damage on 1st & 2nd hits adjusted (49/51/54/54->45/47/49/52), proration increased (0.8x3->0.9x2,0.85).

=====================================
04/22/20 - Version 2020.04.22
=====================================

- "Meditation": Fixed a visual bug where the sword graphic would become desynchronized from Youmu during the opponent's superpause.

=====================================
12/02/19 - Version 2019.12.02
=====================================

- [System] Juggle system now functions independently of M.U.G.E.N's default juggle system.
- Lotus Stance Cut: Additional projectile spawned during "Secret of Life and Death" now uses a seperate juggle value.
- "Secret of Life and Death": Timer countdown now ignores hitpause, buff duration is 25% longer to compensate for this.

=====================================
09/16/19 - Version 2019.09.16
=====================================

- [System] Fixed an issue where the tech recovery wasn't using all two-punch button combinations.
- [System] Miscellaneous common state fixes and adjustments.
- [System] Fixed various timing issues pertaining to Spellcard effects.
- [System] Opponents will now always go into the air recovery anim at the same time as the reset state.
- [System] Reset landing now grants opponents increased full invulnerability (2f->3f) and 6f extra grab invulnerability.
- [System] Added numerous state numbers that were missing from the tick fix code.
- [System] Fixed an issue where custom stated opponents were getting up a frame too early.
- Crescent Moon Slash: Can now be used in midair.
- "6-Root Cleansing": Fixed a 1.1-exclusive issue where certain explods would reappear for a single frame after the parent helper was destroyed.
- "Matsuyoi-Reflecting Satellite Slash": Added new visual effects from Incident Zero version of Youmu.

=====================================
05/21/19 - Version 2019.05.21
=====================================

- 5y: Changed attacking sound clip. 
- 5z: Can now only chain into 6y starting from a spirit level of 2.
- Insightful Sword (counterattack): Fixed a bug where the move could cancel into Spellcards before the counterattack had hit.
- "Secret of Life and Death" Spellcard now plays the level 1 activation sound if Power is lower than 2000.

=====================================
05/08/19 - Version 2019.05.08
=====================================

- [System] Minor adjustments to hurtboxes in some gethit states.
- [System] Minor adjustments to some common state animations.
- [System] Updated Recovery frame flags to current standards.
- [System] Updated Hitdef triggers to current standards.
- [System] Groundbounces & Wallbounces no longer allow opponents to quick getup upon landing.
- [System] Fixed timing issues with groundbounce angledraw and offset.
- [System] Corrected regular jump landing time (5f->4f).
- [System] Corrected forward dash startup time (3f->5f).
- [System] Corrected time in which the forward dash can be jump cancelled.
- [System] Forward dash skid animation time increased (6f->8f).
- [System] Corrected back hop/air dash landing times (10f->8f).
- [System] Adjusted how the character handles landing sounds in certain basic states.
- [System] Air dashes now have a height restriction when ascending.
- [System] Fixed numerous debug errors that would occur if P2 was somehow missing.
- Fixed visual issue where the tech recovery explod was being affected by palfx.
- Fixed IKEMEN exclusive visual issue where the Dash/Guard Cancel Counter/Spellcard effect helpers would incorrectly generate a shadow.
- 6y: No longer loses overhead properties when chained into.
- 2x: Corrected inability to conserve forward dash momentum into the attack.
- j.2z: Groundbounce proration increased (75%->72%)
- Throw: Now applies 90% normal proration.
- Guard Cancel Counter: No longer gains counterhit bonuses.
- Slash of Life & Death [3rd hit]: Fixed a bug where spirit was being deducted even if the move had made contact. 
- Insightful Sword: Move is no longer tied to the spirit mechanic, now uses old level 3 hitbox duration and old max level damage.
- Insightful Sword: No longer gains counterhit bonuses.
- Netherworld Reflection Slash: Move is no longer tied to the spirit mechanic, now uses old level 3 hitbox duration.
- Crescent Moon Slash [all versions]: Move is now a hard knockdown.
- Crescent Moon Slash [y and z versions]: Fixed a bug where proration was being applied incorrectly.
- Crescent Moon Slash [y and z versions]: Spirit is now applied on each successful hit.
- Lotus Stance Cut: Fixed a bug where the final hit of the projectile was not adding spirit.
- Lotus Stance Cut: All versions now move a fixed distance.
- "6-Root Cleansing": Now functions as a command grab instead of a full-body counter. Now has startup invincibility.

=====================================
02/16/19 - Version 2019.02.16
=====================================

- [System] Corrected bug that erroneously give projectiles counterhit properties.

=====================================
01/25/19 - Version 2019.01.25
=====================================

- [SYSTEM] Resolved issue with missing sounds.
- "Meditation": Fixed issue where opponent could recover prematurely.
- "Slash of Present": Fixed issue where opponent could recover prematurely.

=====================================
12/02/18 - Version 2018.12.02
=====================================

- [System] Fixed bug involving OTGs.

=====================================
10/18/18 - Version 2018.10.18
=====================================

- Fixed forward dash behaviors.

=====================================
09/20/18 - Version 2018.09.20
=====================================

- Fixed a minor issue with reset.

=====================================
06/04/18 - Version 2018.06.04
=====================================

- Youmu now gains slight damage increases on her Normals starting on Spirit Lvl 3.
- Slash of Life & Death: Damage on 1st & 2nd hits increased (30/35/40->35/40/45).
- Crescent Moon Slash: Base damage on 1st hit increased (80/60/60->85/65/65).
- Heart Carving Cut: Now gains slight damage increase starting on Spirit Lvl 3.

=====================================
05/27/18 - Version 2018.05.27
=====================================

- Fixed counterhit related bugs.

=====================================
05/18/18 - Version 2018.05.18
=====================================

- Fixed additional bugs in reset code.

=====================================
03/17/18 - Version 2018.03.17
=====================================

- Adjustments to reset behavior.
- Fixed Guarding behavior regarding crossups.
- Fixed Invulnerability times on Guard Cancel Counter.

=====================================
11/28/17 - Version 2017.11.28
=====================================

- Lotus Stance Cut: Base damage decreased (65->60).
- Lotus Stance Cut: Properties inversed; X is now fastest, while Z is now slowest.
- Lotus Stance Cut [Y ver]: Startup time increased by 3f.
- Lotus Stance Cut [Z ver]: Startup time increased by 6f.

=====================================
11/24/17 - Version 2017.11.24
=====================================

- Fixed bug where incorrect sounds would play if Youmu is knocked down.
- Adjustments to several system animations.
- Throw: Added safeguard in case target is somehow lost.
- Heart Carving Cut: Fixed input bug
- New Special: Lotus Stance Cut (B,DB,D,DF,F + x/y/z).

=====================================
11/10/17 - Version 2017.11.10
=====================================

- Fixed minor debug errors.
- 5y: Proration increased (87%->90%).
- 6y: Power gains increased (0/60/30->0/80/40).
- j2z: Now deals 75% proration if this move causes a groundbounce.
- Crescent Moon Slash: Fixed proration bug during "Secret of Life & Death".
- Crescent Moon Slash: Chip damage decreased.
- Crescent Moon Slash [Z ver]: Chip damage decreased.
- Slash of Life & Death: Chip damage on 2nd & 3rd hits decreased.
- "6-Root Cleansing": Command changed to D,DB,B,D,DB,B + X+Y+Z (214214XYZ).
- New Last Word: "Matsuyoi-Reflecting Satellite Slash" (D,DF,F,D,DF,F + X+Y+Z (236236XYZ) at max spirit level).

=====================================
09/28/17 - Version 2017.09.28
=====================================

- New mechanic added: Guard Cancel Counter (412x/y/z during blockstun).
- Backdashes no longer deplete Youmu's spirit meter.
- Added missing dust effects on ground tech recovery.
- Throw: Fixed bug with proration.
- Crescent Moon Slash [X ver]: Can now be airblocked after 3rd active frame.
- Crescent Moon Slash [Y & Z ver]: Final hit can now be airblocked.
- Slash of Life and Death: 3rd hit can now be airblocked.
- "Meditation": Chip damage decreased (10xN->7xN), Chip damage during Level Max decreased (10xN->8xN).
- "Slash of Present": Chip damage on Level Max decreased (40*40->28*28).

=====================================
06/21/17 - Version 2017.06.21
=====================================

- Spirit Level system rebalancing:
-- Spirit Level 2 is now obtained at 300 Spirit (down from 350).
-- Youmu now starts each match at 350 Spirit (Level 2).
-- Spirit Levels now have a Level Max, obtained at 950 Spirit.
- Corrected bug in Lose by Time Over animation.
- 6y: Can now cancel into 6z at Level Max.
- 6z: Hurtbox size decreased.
- j2z: Damage now increases during Level Max (65->75).
- Crescent Moon Slash: Corrected hitvels against airborne opponents.
- Crescent Moon Slash [Z version]: Hitbox size on 2nd hit slightly increased.
- Insightful Sword: Now gains increased damage during Level Max.
- Insightful Sword: Power gains for P1 and P2 increased (50->80, 25->40).
- Slash of Life & Death: Power gains on MP & HP versions of 3rd hit reduced (80->40, 40->20).
- "Slash of Present": Now hits twice during Level Max.
- "Meditation": Damage per hit increased during Level Max (48->52).
- "6-Root Cleansing": Damage during Levels 1-3 decreased (400->390, 500->480, 600->570).
- "6-Root Cleansing": Can now counter throws at Level Max.
- "6-Root Cleansing": Now deals 650 damage during Level Max.

=====================================
04/19/17 - Version 2017.04.19
=====================================

- Fixed bug involving graphical display of Spellcard selection.

=====================================
03/12/17 - Version 2017.03.12
=====================================

- Fixed issue with anim 5160.

=====================================
01/13/17 - Version 2017.01.13
=====================================

Changes from Version 2017.01.10

- "Secret of Life and Death": Minimum Power requirement increased to 1500 (up from 1000).
- "Secret of Life and Death": Now has 6f of recovery time after the super pause.
- "6 Root Cleansing": Corrected bug where Counter would not occur if Youmu is on player 2's side.
- "6 Root Cleansing": Damage on Spirit Lv2 and Spirit Lv3 versions increased (475->500, 550->600).

=====================================
01/10/17 - Version 2017.01.10
=====================================

Changes from Version 2017.01.04

- Spirit gain from standing near opponent increased during Level 2 and Level 3.
- Spirit loss during Level 2 and Level 3 decreased to x1.0 and x1.1, respectively.
- Spirit Levels 2 and 3 are now obtained at 350 and 700 Spirit, respectively (down from 400 and 750).
- Insightful Sword: Spirit gained from successful counter increased (90->125).

=====================================
01/04/17 - Version 2017.01.04
=====================================

Changes from Version 2016.12.31

- Spirit Level system rebalancing:
-- Spirit Levels 2 and 3 are now obtained at 400 and 750 Spirit, respectively (up from 333 & 667).
-- Spirit gained from standing near opponent now decreases as Spirit Level increases.
-- Spirit lost from taking damage now increases by Level; x1.0 at Level 1, x1.10 at Level 2, and x1.25 at Level 3.
- 2x: Startup increased by 2f.
- 2y: Startup and Recovery both increased by 1f. Distance traveled decreased.
- Slash of Life & Death [X Version]: 1st hit recovery increased on all levels, hitstun on lv 3 variants decreased by 1.
- Slash of Life & Death [Y Version]: 1st hit recovery on lv2 & lv3 variants increased by 1f.

=====================================
12/31/16 - Version 2016.12.31
=====================================

Changes from Version 2016.12.30

- Fixed (hopefully the last) graphical glitches.

=====================================
12/30/16 - Version 2016.12.30
=====================================

Changes from Version 2016.12.26

- Fixed additional graphical glitches.

=====================================
12/26/16 - Version 2016.12.26
=====================================

Changes from Version 2016.12.25

- Fixed some graphical glitches.

=====================================
12/25/16 - Version 2016.12.25
=====================================

- First release


------------------
Movelist
------------------
 
X - Light Attack
Y - Medium Attack
Z - Heavy Attack
A - Dash Shortcut 
B - Shortcut for y+z
C - Shortcut for x+y+z
Start - Taunt

------------------
Command Moves
------------------

Note: Each move indicates if it can be done on the ground only [G], in the air only [A], or both [GA]

* F,F or F+a (66 or 6a) - Forward Dash [GA] 
- The ground version can be jump cancelled or cancelled into ground moves, while the aerial version can be cancelled
  into aerials.

* B,B or B+a (44 or 4a) - Backward Dash [GA]
- The ground version can be cancelled into ground moves, while the aerial version can be cancelled into aerials.

* y+z (5yz) - Forward Throw [G]
- Can be teched out of by pressing any button while holding back or forward; opponent cannot tech if grabbed in the
  middle of an attack.

* B+y+z (4yz) - Backward Throw [G]
- Can be teched out of by pressing any button while holding back or forward; opponent cannot tech if grabbed in the
  middle of an attack.

* F+Y (6y) - Overhead Slash [G]
- Youmu does an overhead slash. Spirit level decreases startup time. Can be chained into from 5z starting from spirit level 2.

* F+Z (6z) - Sting [G]
- Youmu thrusts her sword forward. Spirit level decreases startup time. Can be chained into from 6y at higher Spirit levels.

* j.D+z (j.2z) - Slashing a Flower Upon One's Head [A]
- Youmu does a downward slash. Spirit level increases hitbox size and decreases landing recovery. Can cause Groundbounce
  starting at Spirit Level 2.

------------------
Specials
------------------

* B,DB,D + x/y/z (412x, 412y, or 412z) - Guard Cancel [G]
- Requires 1000 Power, can only be done during blockstun. Youmu counterattacks using the x version of Crescent Moon Slash.

* D,DF,F + x/y/z (236x, 236y, or 236z) - Slash of Life & Death [G]
- Youmu performs a series of sword slashes. Pressing x/y/z again will allow for a rekka-style attack that knocks down on the
  3rd hit. 3rd hit always hits high. Spirit levels reduce the amount of recovery frames after each hit.

* B,D,DB + x/y (421x or 421y) - Insightful Sword [G]
- Melee Counter. Youmu parries an incoming attack, striking with her sword. The move functions independently of the spirit
  meter, and thus has no differences between spirit levels.
	X version: Counters High & Mid
	Y version: Counters Low & Mid

* B,D,DB + z (421z) - Netherworld Reflection Slash [G]
- Projectile Counter. Youmu slashes a barrier with her sword that reflects incoming projectiles. The move functions independently
  of the spirit meter, and thus has no differences between spirit levels. 

* F,D,DF + x/y/z (623x, 623y, or 623z) - Crescent Moon Slash [GA]
- Youmu performs a series of upper slashes with her sword. Spirit levels increase damage and hitbox size. Aerial version always deals
  exactly 3 hits and Spirit levels decrease the amount of startup.
	Ground X Version: 1 Hit, invincible on startup.
	Ground Y Version: 2 Hits, has projectile invincibility.
	Ground Z Version: 3 Hits.          

* F,DF,D,DB,B + x/y/z (63214x, 63214y, or 63214z) - Heart Carving Cut [G]
- Youmu does a runpast slash. The z version is unique in that the active frames hit behind Youmu, allowing for crossup opportunities.
  All versions contain projectile invincibility during the active frames. Spirit levels decrease the amount of startup frames, making
  it possible for this move to connect in a combo at higher spirit levels.

* B,DB,D,DF,F + x/y/z (41236x, 41236y, or 41236z) - Lotus Stance Cut [G]
- Youmu unsheathes both swords to slash a projectile in front of her. Has long startup. Button press determines initial velocity of the
  projectile. All versions gradually slow down and travel a fixed difference. Spirit levels increase the amount of damage dealt.

------------------
Spellcards
------------------

=============================
Level 1 Spellcards
=============================

* D,DF,F,D,DF,F + x/y/z (236236x, 236236y, or 236236z) - Life Ending Sword "Sword of Meditation" [G]
- Youmu surrounds her sword in green energy before performing an overhead slash. Hits OTG. Spirit levels reduce the amount of
  recovery frames.

* D,DB,B,D,DB,B + x/y/z (214214x, 214214y, or 214214z) - Human Sign "Slash of Present" [G]
- Youmu does a runpast similar to Heart Carving Cut, except much faster and is fully invincible during the active frames of
  the attack. Spirit levels increase the amount of damage dealt, hitting twice at Level Max.

=============================
Level X Spellcards
=============================

* D,DB,B,D,DB,B + x+y+z (214214xyz) - "Secret of Life and Death" [G]
- Myon takes on a humanoid appearance and begins to mimic Youmu's movements. Damage dealt is reduced by 40%, but allows each
  attack to effectively hit twice. Requires at least 1500 Power to use. Lasts 5 seconds at minimum, and lasts 12.5 seconds at Level 3.

=============================
Level 3 Spellcards
=============================

* D,DB,B,D,DB,B + x+y+z (214214xyz) - "6-Root Cleansing" [G]
- Command Grab. Youmu stuns the opponent with her sword, before performing a high-speed series of slashes and then
  slashing from above. Spirit levels increase the amount of damage dealt by this attack.

* D,DF,F,D,DF,F + x+y+z (236236xyz) - "Matsuyoi-Reflecting Satellite Slash" [G]
- Can only be performed if Youmu is at maximum Spirit level. Youmu strikes with a blinding high-speed series of slashes that
  fill the entire screen. Can be used regardless of which Last Word is chosen at the beginning of the match.


------------------
Credits
------------------

Elecbyte 		- For making MUGEN.
ZUN             	- For creating the Touhou project.
Daniel9999999		- Recycled code portions, beta testing, and a good friend in general
Flawless		- Original X-Costume Selector code
DoomBowser		- Additional fixes.

Palette Contributors: 
- GarchompMatt
- DoomBowser
- Dumanios
- IkutronHD
- vgma2
- smoke072

Beta Testers:
- RodKnee
- DoomBowser