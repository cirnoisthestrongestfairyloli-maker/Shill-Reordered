-------------------------------------
Hong Meiling (Meiling_RP)
(Touhou: Gensokyo Reloaded version)
-------------------------------------
Author: RicePigeon

------------------
Contents
------------------

1. Contents (You're reading this)
2. Version Changes
3. Who's China?
4. System Info
5. Movelist
  5a. Command Moves
  5b. Specials
  5c. Spellcards
6. Credits

------------------
Version Changes
------------------

=====================================
01/01/21 - Version 2021.01.01
=====================================

- 4y/j.4y: Can no longer KO an opponent via chip damage.

=====================================
12/05/20 - Version 2020.12.05
=====================================

- [System] Fixed bug where Meiling was vulnerable to grabs during pre-jump frames.
- [System] Fixed graphical bug involving dash effects during superpauses.
- [System] Fixed an issue where getup invulnerability would end prematurely if an attack was performed on the same frame control was regained.
- [System] Fixed incorrect flag that prevented certain victory quotes from being used.
- [System] Removed aura effect from Palette 12.
- [System] Added workaround that would resolve a bug in Stupa's Training character.
- [System] Corrected button strength priority in commands; higher strength buttons now take priority over lower strength buttons.
- Implemented new character-specific intro against Lie Meiling.
- 3z: Guard velocity increased.
- 3z [Fierce Tiger]: Fixed bug involving proration not applying on the last possible active frames of the attack.
- j.3x/y/z: Hitstun against airborne opponents increased.
- j.5z: Fixed bug involving proration not applying on the last possible active frames of the attack.
- Throw: Fixed bug where Stupa's Training character could not tech the throw.
- Throw: Fixed timing where Throw proration flag was set prematurely.
- Fragrant Wave: Fixed incorrect hitstun values against airborne opponents, fixed graphical bug involving effects during superpauses.
- Cyclone Light Step: Fixed graphical bug involving effects during superpauses.
- Cyclone Light Step: Fixed incorrect hitstun values against airborne opponents, fixed counterhit hitstun bonus not being applied against airborne opponents.
- Cyclone Light Step [Fierce Tiger]: Adjusted how proration is handled, fixed bug involving flagging of recovery frames.
- Tremor Kick: Fixed graphical bug involving effects during superpauses.
- Descending Flower Slam: Fixed incorrect hitstun values against airborne opponents, fixed graphical bug involving effects during superpauses.
- Scarlet Cannon: Fixed incorrect hitstun values against airborne opponents, fixed graphical bug involving effects during superpauses.
- "Colorful Windchime": Fixed incorrect hitstun values against airborne opponents, fixed counterhit hitstun bonus not being applied against airborne opponents.
- "Roc's Fist": Fixed graphical bug involving effects during superpauses, fixed timing of effects.
- "Roc's Fist": Fixed incorrect hitstun values against airborne opponents, fixed counterhit hitstun bonus not being applied against airborne opponents.
- "Fierce Tiger's Inner Strength": Fixed graphical bug involving effects during superpauses.

=====================================
08/17/20 - Version 2020.08.17
=====================================

- Throw: Removed fall parameter glitch.

=====================================
08/10/20 - Version 2020.08.10
=====================================

- [System] Tech recovery command changed to hold x/y/z before hitting ground. Can now tech left or right.
- [System] Damage dampener no longer uses attackmulset.
- [System] Throw tech window increased (7f->15f).
- [System] All combos now apply a one-time 75% prorate for the second attack onward.
- [System] Implemented flag that prevents multi-hit moves from applying forced 75% proration to its remaining hits.
- 5x: Opponent's fall gravity increased.
- 6y: Now sends airborne opponents into the correct reset state.
- 6y: Opponent's fall gravity increased.
- 5z: Startup decreased (11f->10f).
- 6z: Recovery decreased by 5f, now causes a wallbounce on counterhit.
- 2x: Opponent's fall gravity increased.
- 2y: Recovery decreased by 2f, blockstun increased by 1f, Opponent's fall gravity increased.
- 2z: Hitbox horizontal size slightly increased.
- 2z: Guard pushback velocity increased, opponent's fall gravity slightly increased.
- 2z: Recovery decreased by 4f, proration increased (0.7->0.75).
- 3z: Recovery decreased by 4f, move now continues with the "Fierce Tiger's Strength" version if the spellcard ends mid-attack.
- j.5x: Opponent's fall gravity increased.
- j.5z: Hitstun against airborne opponents increased, opponent's fall gravity increased.
- Throw: No longer turns to face P2 on startup.
- Throw: Fixed Ikemen-exclusive bug.
- Cyclone Light Step [X ver]: Blockstun increased by 4f.
- Fragrant Wave: Vertical hit velocity slightly increased.
- Fragrant Wave [X ver]: Total animation time decreased (25f->21f).
- Fragrant Wave [z ver]: Damage per hit increased (24->25).
- Fragrant Wave [z ver]: Opponent's fall gravity increased.
- Tremor Kick: Hitstun increased by 1f.
- Tremor Kick [X ver]: Blockstun increased by 8f.
- Tremor Kick [Y ver]: Blockstun increased by 5f, vertical hit velocity increased.
- Tremor Kick [Z ver]: Blockstun increased by 2f.


=====================================
05/08/20 - Version 2020.05.08
=====================================

- Maximum life decreased (950->900).
- 2y: No longer forces opponent to autorecover.

=====================================
10/08/19 - Version 2019.10.08
=====================================

- [System] Juggle system now functions independently of M.U.G.E.N's default juggle system.
- Fragrant Wave [x version]: Recovery frames are now flagged instantly.
- Fragrant Wave [z version]: Improved lower body invulnerability.
- Scarlet Cannon: Fixed an issue where the "Fierce Tiger Strength" versions weren't applying counterhit hitstun bonuses.

=====================================
09/26/19 - Version 2019.09.26
=====================================

- [Syatem] Minor adjustments to certain sprite alignments and common anims.
- [System] Adjusted head and mid positions.

=====================================
09/02/19 - Version 2019.09.02
=====================================

- [System] Additional miscellaneous common state fixes.
- "Fierce Tiger's Strength": Timer countdown now ignores hitpause.

=====================================
08/25/19 - Version 2019.08.25
=====================================

- [System] Miscellaneous common state fixes and adjustments.
- [System] Fixed various timing issues pertaining to Spellcard effects.
- [System] Opponents will now always go into the air recovery anim at the same time as the reset state.
- [System] Reset landing now grants opponents increased full invulnerability (2f->3f) and 6f extra grab invulnerability.
- [System] Added numerous state numbers that were missing from the tick fix code.

=====================================
08/04/19 - Version 2019.08.04
=====================================

- Reorganized file structure.
- Sprites realigned.
- [System] Adjustments to hurtboxes in some gethit states.
- [System] Adjustments to some common state animations.
- [System] Updated Recovery frame flags to current standards.
- [System] Updated Hitdef triggers to current standards.
- [System] Groundbounces & Wallbounces no longer allow opponents to quick getup upon landing.
- [System] Fixed timing issues with groundbounce angledraw and offset.
- [System] Updated common states to current standards.
- [System] Repositioned dash effects.
- [System] Corrected jump cancel timings of forward dash.
- [System] Backward hop velocity multiplier decreased (x1.2->x1.0).
- [System] Corrected back hop/air dash landing times (4f->8f).
- [System] Forward air dash velocity multiplier decreased (x1.0->x0.75).
- [System] Backward air dash velocity multiplier decreased (x1.0->x0.75).
- [System] Air dashes now have a height restriction when ascending.
- [System] Adjusted how the character handles landing sounds in certain basic states.
- [System] Fixed an issue where the ground tech recovery would send the character in the wrong direction.
- [System] Fixed visual issue where the tech recovery explod was being affected by palfx.
- [System] Fixed IKEMEN exclusive visual issue where certain effect helpers would incorrectly generate a shadow.
- [System] Fixed an issue with palette 12 where the aura effect would disappear during a custom state.
- [System] Fixed a sprite conflict issue that caused one frame in the level 3 spellcard effect to show the incorrect sprite.
- [System] Rudimentary state tree-based A.I. added.
- All ground Normals: Jump cancel criteria during "Fierce Tiger's Strength" adjusted, jump cancel is now possible within 5
  frames of the move making contact (excluding hitpause).
- 5x; Revised hurtbox placements.
- 4y/j4y: Fixed an issue where the move could be used more than once in a juggle.
- 4y/j4y: Now disappears if Meiling is hit.
- 4y/j4y: Can now be jump cancelled during "Fierce Tiger's Strength".
- 6y: No longer loses overhead property when cancelled into.
- 6y: Jump cancel window during "Fierce Tiger's Strength" is now within 5 frames of Meiling landing if the move makes contact.
- 6y: Can no longer cancel into Heavy Normals during "Fierce Tiger's Strength".
- 5z: No longer causes a knockdown.
- 5z: Proration increased (80%->85%).
- 6z: Can now be jump cancelled during "Fierce Tiger's Strength".
- 2z: Revised hurtbox placements.
- 3z: Can now be jump cancelled during "Fierce Tiger's Strength".
- j5y: Revised hurtbox and hitbox placements.
- j3z: Revised hurtbox placements, hitbox moved up slightly.
- Throw: Now applies standard 90% proration.
- Guard Cancel Counter: No longer gains counterhit bonuses.
- Fragrant Wave: Can no longer conserve momentum from a forward dash.
- Fragrant Wave: Revised hurtbox placements.
- Cyclone Light Step: Revised hurtbox placements, hitbox moved up slightly.
- Cyclone Light Step ["Fierce Tiger Strength"]: proration decreased (0.95x3->0.947x3).
- Scarlet Cannon: Fixed an issue where one of the FX wouldn't show due to an erroneous destruction trigger.
- Descending Flower Slam: Aerial versions now have separate animations that use the regular aerial hurtbox.
- Descending Flower Slam [Ground versions]: Can no longer carry momentum over from a dash.
- Tremor Kick: Can no longer carry momentum over from a dash.
- "Roc's Fist": Revised hurtbox placements.
- "Colorful Windchime": Recovery frames are now flagged properly.
- "Fierce Tiger's Strength" Spellcard now plays the level 1 activation sound if Power is lower than 2000.
- "Colorful Light Lotus Flower Palm": Revised hurtbox placements.
- "Colorful Light Lotus Flower Palm": Hitpause time adjusted (1->0).
- "Colorful Light Lotus Flower Palm": Meiling no longer continues to phase through opponents past a certain point if the move
  is blocked.
- "Colorful Light Lotus Flower Palm": Damage/block damage increased (365/73->400/80).
- "Colorful Light Lotus Flower Palm": P2 Power gain on block increased (100->600).
- "Colorful Light Lotus Flower Palm": Recovery frames are now flagged properly.

=====================================
02/18/19 - Version 2019.02.18
=====================================

- 4y/j4y: Corrected juggle flags.

=====================================
01/29/19 - Version 2019.01.29
=====================================

- [System] Recovery flags updated to current standards.
- 5y: Hit velocities adjusted, now easier to connect after the launch.
- "Roc's Fist": Fixed issue where opponent could recover prematurely.

=====================================
12/31/18 - Version 2018.12.31
=====================================

- Fixed bug with launcher states.

=====================================
12/08/18 - Version 2018.12.08
=====================================

- Fixed Intro bug.

=====================================
12/02/18 - Version 2018.12.02
=====================================

- [System] Fixed bug involving OTGs.

=====================================
09/20/18 - Version 2018.09.20
=====================================

- Fixed a minor issue with reset.

=====================================
08/19/18 - Version 2018.08.19
=====================================

- Scarlet Cannon: Can now hit crouching opponents.

=====================================
05/27/18 - Version 2018.05.27
=====================================

- Fixed counterhit related bugs.

=====================================
05/17/18 - Version 2018.05.17
=====================================

- Fixed additional bugs to reset system.

=====================================
04/13/18 - Version 2018.04.13
=====================================

- Adjustments to dash behavior.
- Corrected guarding behavior in regards to crossups.
- Adjusted handling of invulnerability on Guard Cancel.
- Adjustments to the handling of resets.
- 5x: Startup increased by 1f, hitvels slightly adjusted.
- 5x: Damage decreased (25->20), proration decreased (95%->93%).
- 5y: Damage decreased (60->50).
- 5y: Can now only be jump cancelled on hit when used outside of Fierce Tiger's Inner Strength.
- 5z: Damage decreased (70->60), proration decreased (85%->80%).
- 2x: Damage decreased (25->20).
- 2z: Damage decreased (70->60), proration decreased (75%->70%).
- Descending Flower Slam: Now always causes a Hard Knockdown.

=====================================
11/29/17 - Version 2017.11.29
=====================================

- j3x/j3y/j3z: Can no longer be blocked low (reverted 2017.11.20 changes).
- j3x: Startup increased by 2f.
- j3y: Startup increased by 1f.
- j3z: Startup increased by 3f.

=====================================
11/25/17 - Version 2017.11.25
=====================================

- Fixed missing dust effects on ground tech recovery.
- "Fierce Tiger's Strength": Now applies additional proration when used in a combo.
- "Colorful Light Lotus Flower Palm": Now applies additional proration when used in a combo.

=====================================
11/20/17 - Version 2017.11.20
=====================================

- Corrected supercancel conditions on certain Specials.
- Corrections to cornerpush behavior in certain attacks.
- Adjustments to certain gethit & system animations.
- Foward Dash: Corrected bug if Meiling dashes immediately after getting up from a knockdown.
- 5x: Damage decreased (30->25).
- 5y: Corrected issue in launcher state involving opponent being vulnerable longer than they should be.
- 6y: Damage increased (60->70), proration decreased (90%->85%).
- 2x: Damage increased (20->25), proration decreased (95%->92%).
- 2y: Damage decreased (55->50), proration decreased (90%->85%).
- 2z: Damage increased (62->70), proration decreased (80%->75%).
- 3z: P2 power gains during Fierce Tiger's Strength increased (19x2->22x2).
- 3z: Proration during Fierce Tiger's Strength decreased (92%x2->89.5%x2).
- j3x/j3y/j3z: Can now be blocked low, proration decreased (85%->80%).
- j5y: Damage decreased (65->60).
- j5z: Damage decreased (50x2->40x2), P2 power gains decreased (0/45x2/27*26->0/45x2/22x2).
- Throw: Fixed debug error if opponent is somehow missing.
- Cyclone Light Step: Power gains increased (45/60/30->45/80/40).
- Scarlet Cannon: Vertical hit velocity decreased during Fierce Tiger's Strength.
- Scarlet Cannon [Y ver]: Recovery during Fierce Tiger's Strength increased by 2f.
- Scarlet Cannon [Z ver]: Recovery during Fierce Tiger's Strength increased by 2f.
- Fragrant Wave [Y ver]: Power gains decreased (30/40x3/20x3 -> 15/20x3/10x3).
- Fragrant Wave [Z ver]: Power gains decreased (30/40x5/20x5 -> 15/12x5/6x5).
- Descending Flower Slam: Now applies an additional 90% proration when causing a groundbounce, can now be airblocked.
- Tremor Kick: Improved command detection.
- Tremor Kick: Chip damage during Fierce Tiger's Strength decreased (10->9).
- Tremor Kick [Z ver]: Adjustment to crumple animation.
- "Roc's Fist": Chip damage on final hit (40->36).
- "Colorful Light Lotus Flower Palm": Minor spacing adjustments, total damage increased (355->365).

=====================================
10/14/17 - Version 2017.10.14
=====================================

- Guard Cancel Counter: Can now hit crouching opponents.

=====================================
09/25/17 - Version 2017.09.25
=====================================

- Fixed bug where Throw could not be done while crouching.
- New mechanic added: Guard Cancel Counter (412x/y/z during blockstun).
- j3x/y/z: Now applies movement velocities 3f later.
- "Colorful Light Lotus Flower Palm": Damage decreased (420->355).

=====================================
08/15/17 - Version 2017.08.15
=====================================

- Safeguard implemented if target is somehow lost during throws.
- Adjustments made to bounce acceleration behavior.

=====================================
06/15/17 - Version 2017.06.15
=====================================

- 4y: Projectile hitbox size decreased.
- 4y: Recovery increased by 2f.
- 5z: Now moves Meiling forward.
- 5z: Vertical hit velocity increased.
- j3y/j3z: Vertical velocity increased.
- Cyclone Light Step: Effect now disappears when active frames end.
- Cyclone Light Step [Y version]: Active frames increased by 2f.
- Cyclone Light Step [Z version]: Active frames increased by 4f.
- Cyclone Light Step [Tiger]: Total active frames increased by 4f.
- "Colorful Windchime": Horizontal velocity increased.

=====================================
06/13/17 - Version 2017.06.13
=====================================

- 5y: Fixed bug on launcher state against certain opponents.

=====================================
06/01/17 - Version 2017.06.01
=====================================

- j3x/y/z: Startup increased by 1f, landing recovery decreased by 2f.
- j3x/y/z: Fixed error where landing could not be cancelled into Specials.
- j3x/y/z: Power gains doubled.
- j3x/y/z: Hitstun increased by 1f.

=====================================
05/23/17 - Version 2017.05.23
=====================================

- Minor code optimization.

=====================================
04/18/17 - Version 2017.04.18
=====================================

- Fixed bug involving graphical display of Spellcard selection.

=====================================
03/30/17 - Version 2017.03.30
=====================================

- Fixed minor sprite issues.
- "Fierce Tiger's Inner Strength": Minimum Power requirement reduced to 1500. 
- "Fierce Tiger's Inner Strength": Buff duration now dependent on Power consumed.
- "Fierce Tiger's Inner Strength": Now displays a timer.

=====================================
03/14/17 - Version 2017.03.14
=====================================

- Fixed issue with anim 5160.
- "Fierce Tiger's Inner Strength": Now has 6f additional recovery time after superpause.

=====================================
02/23/17 - Version 2017.02.23
=====================================

- Fixed issue with anims 5030 & 5035.

=====================================
01/29/17 - Version 2017.01.29
=====================================

Changes from Version 2016.11.03:

- Life increased (900->950).
- Fixed bug on palette & spellcard selector on p2 side.
- Replaced incorrect sound on spellcard activation.
- j3x, j3y, & j3z: Startup decreased by 1f.
- Fragrant Wave [Y Version]: Normal version startup decreased by 4f.
- Fragrant Wave [All versions]: Hitbox size increased. Corrected bug with juggle flags.
- Descending Flower Slam [X version]: Startup decreased by 1f.
- Descending Flower Slam [Y & Z versions]: Startup decreased by 2f.
- "Roc's Fist": Startup decreased by 1f.
- "Colorful Light Lotus Flower Palm": Now has projectile invincibility until last active frame.


------------------
Who's China?
------------------

It's MEILING! HONG! MEI! LING!

Hong Meiling, affectionately known as China or Chuugoku by some, is the Stage 3 boss
of the sixth Touhou Project game: Embodiment of Scarlet Devil. She serves as the
gatekeeper of the Scarlet Devil Mansion, the residence of Remilia Scarlet. She is
known for her mastery of martial arts and acts very human-like, despite being a
youkai, and apparently chats with humans while on the job. She is often depicted
falling asleep on the job, which pisses Sakuya the maid off, which usually leads to
Sakuya shoving one of her knives in China's head.

Despite being only a stage 3 boss, she became widely popular among the Touhou fanbase,
so much that she became a playable character in Immaterial and Missing Power through
a patch.

------------------
System Info
------------------

Normals can be chained into any higher strength Normal attack. (Ie: X>Y>Z)
Normals can be cancelled into Specials or Spellcards.
Specials can be cancelled into Spellcards.

Each move has a minimum scale value that cannot go below a certain percent. These values are:

All Normals: 10%
All Specials: 15%
All Lv1 Spellcards: 20%
All Lv3 Spellcards:: 100%


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
- Both the ground and aerial versions can be cancelled into aerials.

* y+z (5yz) - Forward Throw [G]
- Can be teched out of by pressing any button while holding back or forward; opponent cannot tech if grabbed in the
  middle of an attack.

* B+y+z (4yz) - Backward Throw [G]
- Can be teched out of by pressing any button while holding back or forward; opponent cannot tech if grabbed in the
  middle of an attack.

* F+y (6y) - Roundhouse Kick [G]
- Meiling leaps up a bit, kicking the opponent. Similar in appearance to her j.5x. Can only be blocked high.

* B+y (4y) - Rainbow Typhoon [GA]
- Meiling kicks upward, launching a rainbow spiral projectile in front of her. Similar in appearance to her 5y.

* F+z (6z) - Step Palm [G]
- Meiling moves forward a bit, extending both palms out. Knocks opponent down on hit. Can cross up airborne opponents
  if timed properly. Causes a wallbounce on counterhit.

* DF+z (3z) - Shoulder Barge [G]
- Meiling moves about half a screen forward, before charging the opponent with her shoulder. Has upper body invincibility
  during the startup.

* DF + x/y/z (3x, 3y, or 3z) - Divekick [A]
- A divekick. The button press determines the angle at which Meiling travels. Hitboxes remain active until landing on 
  all versions.

* D+z -> z (2z -> 5z) - Unique Combo 1 [G]
- Meiling can cancel her Crouching Heavy Attack into her Standing Heavy Attack.

------------------
Specials
------------------

* B,DB,D + x/y/z (412x, 412y, or 412z) - Guard Cancel [G]
- Requires 1000 Power, can only be done during blockstun. Meiling counterattacks using the x version of Scarlet Cannon.

* D,DF,F + x/y/z (236x, 236y, or 236z) - Cyclone Light Step [G]
- Meiling lunges forward with rainbow energy gathered in her palm. Button press determines startup, damage, and distance.
  During the effects of Fierce Tiger's Strength, this attack will hit 3 times instead of once.
	X version: Quick startup, short distance, low damage
	Y version: Medium startup, medium distance, medium damage
	Z version: Slow startup, long distance, high damage
  NOTE: This move will not knock down the opponent while under the effects of Fierce Tiger's Strength.

* F,D,DF + x/y/z (623x, 623y, or 623z) - Scarlet Cannon [G]
- Meiling thrusts her fist at the sky. Button press determines damage, startup, recovery, and hitbox size
	X version: Quick startup, quick recovery, low damage, small hitbox. Has invincibility during startup.
	Y version: Medium startup, medium recovery, medium damage, medium hitbox.  Has upper body invincibility during
                   startup.Moves a bit before striking.
	Z version: Slow startup, slow recovery, high damage, large hitbox. Moves a bit more than y version before striking.

* D,DB,B + x/y/z (214x, 214y, or 214z) - Fragrant Wave [G]
- Meiling fires a short range beam of energy. The X version is a fake out.
	X version: Fakeout
	Y version: Hits 3 times.
	Z version: Hits 5 times. Has lower body invincibility. Wallslams on hit.

* B,DB,D,DF,F + x/y/z (41236x, 41236y, or 41236z) - Descending Flower Slam [GA]
- Meiling leaps into the air, performing a mid-air axe kick. Button press determines startup and distance travelled. All 
  versions groundslam the opponent on Counterhit.
  NOTE: All versions perform Groundslam on hit during Fierce Tiger's Strength, regardless of Counterhit.
	X version: Fast startup, Long recovery on land. Travels 1/3 screen
	Y version: Medium startup, Medium recovery on land. Travels 2/3 screen.
	Z version: Slow startup, Fast recovery on land. Travels full screen.

* D,D + x/y/z (22x, 22y, or 22z) - Tremor Kick [G]
- Meiling stomps the ground. All versions deal same amount of damage. Button press determines startup, recovery
  and effect on hit. All versions must be blocked low.
	X version: Fast startup, Slow recovery. Gives small frame advantage on hit.
	Y version: Medium startup, Medium recovery. Knocks down opponent on hit.
	Z version: Slow startup, Fast recovery. Crumples opponent on hit.

------------------
Spellcards
------------------

=============================
Level 1 Spellcards
=============================

* D,DF,F,D,DF,F + x/y/z (236236x, 236236y, or 236236z) - Strike Sign "Roc's Fist" [G]
- Meiling's classic Mountain Breaker spellcard from IaMP/UNL. Has startup invincibility, but extremely punishable on
  block.

* D,DB,B,D,DB,B + x/y/z (214214x, 214214y, or 214214z) - Color Sign "Colorful Windchime" [G]
- Meiling spins while moving forward. Has projectile invincibility during the movement.

=============================
Level X Spellcards
=============================

* D,DB,B,D,DB,B + x+y+z (214214xyz) - Qi Sign "Fierce Tiger's Strength" [G]
- Meiling will glow yellow for about 4~10 seconds after use. During this time, all of her move's properties
  have been altered. Most attacks will now have one or more of the following:
	- Decreased startup time
	- Decreased recovery time
	- Increased hitstun/frame advantage
	- Increased number of hits
	- All Normals become jump cancelable
	- Juggle checking disabled
  As a tradeoff, Meiling's moves will deal less damage overall and she will not be able to gain meter from
  any attacks. However, Meiling's minimum damage scaling will not go beyond 33% during this time.

=============================
Level 3 Spellcards
=============================

* D,DF,F,D,DF,F + x+y+z (236236xyz) - Flower Sign "Colorful Light Lotus Flower Palm" [G]
- Meiling charges into a dash, striking the opponent with her palm when close up. The palm strike
  causes rainbow chi to gather and explode. Can cross up the opponent if used at point blank.


------------------
Credits
------------------

Elecbyte 		- For making MUGEN.
ZUN             	- For creating the Touhou project and the smexy Hong Meiling, among others.
PichuJC			- Palettes
MightyKombat		- MvC3 Chun-Li voice rips
DoomBowser		- Additional fixes