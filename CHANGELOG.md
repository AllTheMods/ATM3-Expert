# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog][Keep a Changelog] and this project adheres to [Semantic Versioning][Semantic Versioning].

## [Unreleased]

- /

---

## [Released]

## [1.9.3] - 2021-04-02
Note: Backup your world before upgrading to this version!

### Changed
*Mod-Updates:*
- Actually Additions
- Advanced Rocketry
- Alchemistry
- Atum 2: Return to the Sands
- Capability Adapter
- Ceramics
- Corail Tombstone
- CraftTweaker
- Cyclops Core
- EnderIO
- Flux Networks
- FoamFix
- FTB Quests
- FTB Utilities
- Gravisuit
- GunpowderLib
- IC2C Extras
- IC2 Classic Tweaker
- IC2 Classic
- Integration Foregoing
- LazyAE2
- LibVulpes
- MysticalLib
- Patchouli
- Psi
- Random Patches
- Random Tweaks
- Rustic
- Scannable
- Simply Jetpacks
- TickCentral
- Unidict
- WanionLib

### Removed
- shielding recipes from NuclearCraft
- advancements on joining from SimplyJetpacks

### Fixed
- Hardened Thrusters being unobtainable
- Flux-infused Jetplate being unobtainable
- JEI recipe lookup for Energy Cells
- insanely high amount of mob head drops when using Diamond Spikes to kill them

### Recipes
- added recipes for different tiers of Energy Cells
- changed recipe of Hardened Thrusters to use a Compression Dynamo instead of an unobtainable Magmatic Dynamo

## [1.9.2] - 2020-10-18

### Added
- conversion recipe for Steel Rods to Arc Furnace

### Changed
*Mod-Updates:*
- Advanced Rocketry
- CraftTweaker
- FTB Quests
- Lazy AE2
- LibNine
- NuclearCraft

### Removed
- conversion recipe for Steel Rods from Smeltery and Melter
- conversion recipe for Steel Rods from High Oven

### Fixed
- steel duplication exploit ([#250](https://github.com/AllTheMods/ATM3-Expert/issues/250))

## [1.9.1] - 2020-10-03

### Changed
- forge version

*Mod-Updates:*
- Astral Sorcery
- Atum 2: Return to the Sands
- Bad Wither No Cookie - Reloaded
- Brandon's Core
- Common Capabilities
- Controlling
- Corail Tombstone
- CraftTweaker
- Draconic Evolution
- Ender IO
- Just Enough Items
- Lazy AE2
- LibNine
- Logistics Pipes
- MysticalLib
- Netherending Ores
- NuclearCraft
- Psi
- RandomPatches
- Rustic
- Simply Jetpacks 2
- Tool Progression
- Torchmaster

### Removed
- newly added jetpacks by the new Simply Jetpacks version

### Fixed
- quest completion toasts not displaying

## [1.9.0] - 2020-08-03

### Added
- item descriptions
  - how to obtain Plutonium
  - how to obtain Near-depleted Uranium Cells
  - to show that you can scan chests with the Thaumometer
- Alchemistry guide book to Akashic Tome

*Mod-Additions:*
- Loot Capacitor Tooltips

### Changed
- IC2 Classic secret recipes are now visible

*Mod-Updates:*
- Advanced Rocketry
- Astral Sorcery
- Building Gadgets
- Carry On
- Common Capabilities
- Corail Tombstones
- CraftTweaker
- Cyclops Core
- Flux Networks
- FTB Quests
- FTB Utilities
- IC2 Classic
- IC2C Extras
- Item Filters
- Just Enough Items
- Lazy AE2
- Logistics Pipes
- NuclearCraft
- Psi
- RandomPatches
- RandomTweaks
- Recipe Stages
- Simply Jetpacks 2
- Torchmaster

### Fixed
- Astral Sorcery Lucerna ritual no longer stops Resturbed Mob Spawner ([HellFirePVP/AstralSorcery#1307](https://github.com/HellFirePvP/AstralSorcery/issues/1307))
- exploit for infinite resources by crafting metal dusts

### Recipes
- added recipe for Controller Slave
- added Enhanced Ender Ingots to Advanced Rocketry multiblock recipes to get more uses for the Ender Crafter
- added Plutonium Dust to Petro Petunia recipe to match progression
- fixed several metal block recipes
- fixed Iridium Ore recipe with UU-Matter
- Combination Crafting
  - added recipe for Steel Casing for automation purposes
  - added recipe for Ender Star for automation purposes
  - added recipe for Enhanced Ender Ingot for automation purposes
- Mana Infusion
  - added Manasteel Plate recipe
  - added Manasteel Block recipe
  - added Mana Diamond Block recipe
  - added Mana Quartz Block recipe
  - added Mana Glass Pane recipe
  - added Manasteel Nugget recipe
  - slightly increased Mana cost for Mana Quartz
  - slightly increased Mana cost for Mana Glass

### Quests
- added protection suit to "Chernobyl Diaries"
- added Chemical Combiner to "Splitting the Atoms" to match progression
- added information to "Thaumaturge" that Thaumometer supports inventory scanning
- removed Chemical Combiner from "Combining the Atoms"
- fixed "Man-Made-Osmium" spelling
- renamed "Combining the Atoms" to "Chemical Metal"
- "Splitting the Atoms" now ignores NBT data to also accept machines with leftover energy
- "I built a Rocket, Man!" now required 6 Liquid Fuel Tanks instead of 4

## [1.8.0] - 2020-06-30

Known issues:
- Thermal Expansion Dynamos do not output power when they aren't producing anything although their buffer is full
  - read this for more information: https://i.imgur.com/iKOmjLO.png

### Added
- item description to Scribing Tools that they need to be crafted in a vanilla table or the inventory to count towards the Thaumonomicon task
- item description to Thaumometer that there is a Mana Glass Pane in the middle of the crafting grid since it's almost invisible
- item description to Quantum Quarry that it's not able to mine all ores
- item descriptions to Thermal Expansion Satchels that they lose their inventory when upgraded
- Spice of Life Food Book to Akashic Tome
- ore dictionary for Water Buckets

### Changed
- The One Probe now shows extended information without the need of the probe
- AgriCraft Sprinklers are not that efficient anymore to give Garden Cloche more sense
  - growth chance reduced from 25% to 10%
  - growth interval slightly increased
  - water usage slightly increased

*Mod-Updates:*
- Advanced Rocketry
- AppleSkin
- Corail Tombstone
- CraftTweaker
- Ender IO
- FTB Library
- FTB Quests
- FTB Utilities
- IC2 Classic
- IC2 Classic Tweaker
- Just Enough Items
- Lazy AE2
- Logistics Pipes
- LootTweaker
- NuclearCraft
- Patchouli

### Removed
- some update notifications
- different Probe items from The One Probe as they are no longer necessary

### Fixed
- Botania Pylons and Astral Sorcery Crystals are now visible again ([TinyModularThings/IC2Classic#387](https://github.com/TinyModularThings/IC2Classic/issues/387), [TinyModularThings/IC2Classic#402](https://github.com/TinyModularThings/IC2Classic/issues/402))
- item description of Akashic Tome not being visible
- getting the correct loot tables because of the new format of LootTweaker
- armored Jetpacks not being convertible ([#247](https://github.com/AllTheMods/ATM3-Expert/issues/247))

### Recipes
- crafting Steel Rods by hand only gives 2 Steel Rods so the Metal Press is more efficient
- Dough now also accepts crafting with Clay Bucket
- AgriCraft Sprinklers are now fairly harder to craft so they aren't used so excessively and giving the Garden Cloche more sense again
- Luminessence now requires 6.000 blood in the Blood Altar (was 10.000 before)
- Mekanism
  - Pressurized Tubes now have recipes
  - Thermodynamic Conductors now have recipes
  - Basic Universal Cable now uses Compressed Obsidian
  - Universal Cables now depend on eachother
- Combination Crafting
  - Nocturnal Powder now gives 10 instead of 1
  - Illumination Powder now gives 24 instead of 1
- Empowerer energy costs
  - Machine Case (from 50k to 300k RF)
  - Inscriber presses (from 200k to 500k RF each)
  - ME Capability Adapter (from 200k to 500k RF)

### Quests
- added informational quest that you can only get one extra layer of hearts by eating different food
- added informational quest that saplings can't grow if they are planted next to each other
- added informational quest that IC2Classic machines can be upgraded with the Transformer Upgrade to let them use more Overclockers to speed them up
- added information to "Thaumaturge" that Scribing Tools need to be crafted in a Vanilla crafting grid to get them tracked in the Thaumonomicon
- added information to "Thaumic Infusion" that the required research in the Thaumonomicon will be unlocked with the quest reward
- added information to "Mining or Farming?" that weeds are disabled and crops can improve their stats by spreading
- added lighter items to "Who put that char on my coal?" to avoid confusion that Flint and Steel is not obtainable early on

## [1.7.0] - 2020-06-10

Known issues:
- Astral Sorcery collector crystals and Botania pylons are not visible as items
  - caused by IndustrialCraft 2 Classic
  - [TinyModularThings/IC2Classic#387](https://github.com/TinyModularThings/IC2Classic/issues/387)
  - [TinyModularThings/IC2Classic#402](https://github.com/TinyModularThings/IC2Classic/issues/402)

### Added
- descriptions to help how to obtain seared stone
- description to flint and steel that a firecharge can be used early on
- description how to get rubber tree saplings, resin and rubber
- creosote oil bucket to JEI for recipe lookup

### Changed
- enabled Tier 6 BloodMagic ([#236](https://github.com/AllTheMods/ATM3-Expert/pull/236))
- enabled passive permeation on NuclearCraft ([#240](https://github.com/AllTheMods/ATM3-Expert/pull/240/files))

*Mod-Updates:*
- Astral Sorcery
- EnderCore
- ImmersiveEngineering
- Logistics Pipes

### Removed
- unused ores from JEI
- unused Modular Machinery parts from JEI
- all parts from LogisticsPipes that are not implemented yet ([#236](https://github.com/AllTheMods/ATM3-Expert/pull/236))

### Fixed
- pyroconvective loop augment being unobtainable ([#246](https://github.com/AllTheMods/ATM3-Expert/issues/246))
- anima mundi being unobtainable

### Recipes
- added recipe for huge energy input hatch
- added recipes for crystal cluster and crystal cluster brick ([#236](https://github.com/AllTheMods/ATM3-Expert/pull/236))
- changed recipes for huge fluid input/output hatches to match energy hatch recipe
- changed recipe for pyroconvective loop augment because wrong bees were used
- changed recipe of heat conductor, now contains coal coke
- changed recipe of steam dynamo, now contains refined iron
- changed recipe of corrupted starlight, now uses 4x the corresponding will instead of will clusters to make it automatable ([#236](https://github.com/AllTheMods/ATM3-Expert/pull/236))
- recipe for coke bricks now give 3 instead of 1
- recipe for Schwarzschild's Sphere was moved from runic altar to blood altar (tier 6) ([#236](https://github.com/AllTheMods/ATM3-Expert/pull/236))

### Quests
- added an optional quest how to obtain charcoal to Tier 0
- rearranged some quests to keep the symmetry
- added an optional quest to inform about AgriCraft
- Tier 1 quests overhaul
- Tier 5 quests overhaul ([#236](https://github.com/AllTheMods/ATM3-Expert/pull/236))

## [1.6.2] - 2020-06-03

Known issues:
- Astral Sorcery collector crystals and Botania pylons are not visible as items
  - caused by IndustrialCraft 2 Classic
  - [TinyModularThings/IC2Classic#387](https://github.com/TinyModularThings/IC2Classic/issues/387)
  - [TinyModularThings/IC2Classic#402](https://github.com/TinyModularThings/IC2Classic/issues/402)

### Added
- enchanter recipe ([#241](https://github.com/AllTheMods/ATM3-Expert/issues/241))

### Changed
- default keybinds and options to match changes and different resolutions
- power storage of several jetpacks ([#243](https://github.com/AllTheMods/ATM3-Expert/issues/243))

*Mod-Updates:*
- Advanced Rocketry
- AppleCore
- Corail Tombstone
- CraftTweaker
- Cyclops Core
- Deep Mob Learning
- FTB Quests
- Game Stages
- IC2C Extras
- JEI Integration
- Lazy AE2
- Logistics Pipes
- NuclearCraft
- Rustic
- Spice of Life: Carrot Edition
- Storage Drawers

### Removed
- lens of disenchanting from JEI ([#244](https://github.com/AllTheMods/ATM3-Expert/issues/244))

### Fixed
- advanced crafting table being unobtainable because of new ender ingot recipe ([#234](https://github.com/AllTheMods/ATM3-Expert/issues/234))
- arc furnace outputting refined iron ingots instead of steel ingots
- crusher crashes the instance or is terribly slow ([#238](https://github.com/AllTheMods/ATM3-Expert/issues/238))
- steel block having the wrong ore dict
- empowerer recipes energy cost in item descriptions ([#242](https://github.com/AllTheMods/ATM3-Expert/issues/242))

### Recipes
- adjusted several Simply Jetpacks recipes ([#244](https://github.com/AllTheMods/ATM3-Expert/issues/244))
  - creative flux pack
  - creative jetpack
  - conductive iron thruster & jetpack
  - electrical steel thruster & jetpack
  - energetic thruster & jetpack
  - vibrant thruster & jetpack
  - hardened thruster
  - capacitor packs

### Quests
- "I'm so slippery" now tracks the correct blocks and amount ([#237](https://github.com/AllTheMods/ATM3-Expert/issues/237))

## [1.6.1] - 2020-05-07

### Changed

*Mod-Updates:*
- Advanced Rocketry
- Lazy AE2
- LibVulpes

### Fixed
- palis crystal using lapis dust instead of lapis at atomic reconstructor
- precision assembler duplicated and interfering recipes
- steel is no longer obtainable from blast furnace ([#231](https://github.com/AllTheMods/ATM3-Expert/issues/231))
- Mekanism supports unified materials again

## [1.6.0] - 2020-05-06

### Added
- Akashic Tome
  - Actually Additions guide
  - Open Blocks guide
- certus quartz seed
  - uses a runic altar recipe instead of crop breeding
  - only grows on a sky stone block with a me controller underneath it
  - doesn't drop an item everytime
  - can't be bonemealed
  - uses the same texture as the nether quartz plant since Applied Energistics doesn't add own plants
- custom item descriptions
  - items made in empowerer now show how much power is required
  - scrap now shows how it's obtained
  - how to obtain liquid xp
- pack logo and name to Discord rich presence

*Mod-Additions:*
- Capability Adapter
- Clumps
- DefaultOptions
- Ding
- FastFurnace
- FastWorkbench
- Just Enough Throwing in Fluid
- Just Enough Petroleum
- More Overlays
- PlusTiCMinusBad
- TickCentral
- Tinker's JEI

### Changed
- application window now shows modpack name
- Actually Additions guide is no longer given on first craft
- Applied Energistics facades are now hidden in JEI
  - prevents filling several pages from JEI
  - the stone facade is now used as a template on how to craft facades
- EnderIO tile entities are no longer paintable
- Immersive Engineering metal press is 50% faster now
- improved the modpack loading time
- the world now uses the Garden of Glass skybox
- unified wooden gears and stone gears
- UU matter uses are shown by default in JEI now
- various fluid containers are now hidden in JEI
  - prevents filling several pages from JEI
  - all basic forms are still shown
- huge script overhaul and refactor

*Mod-Updates:*
- Advanced Rocketry
- Advanced Solars Classic
- Alchemistry
- Animus
- Astral Sorcery
- Atum 2: Return to the Sands
- Blood Transmutation
- Brandon's Core
- Building Gadgets
- Chisel
- CoFH Core
- CoFH World
- Common Capabilities
- ConnectedTexturesMod
- Controlling
- Corail Tombstone
- Cosmetic Armor Reworked
- CraftTweaker
- Cyclops Core
- Doomlike Dungeons
- Draconic Evolution
- EnderCore
- Floralchemy
- Forestry
- FTB Library
- GameStages
- Integration Foregoing
- Inventory Tweaks
- JEI Integration
- JourneyMap
- Just Enough Dimensions
- JustEnoughIDs
- Lazy AE2
- LibNine
- LibVulpes
- Logistics Pipes
- LootTweaker
- ModTweaker
- MysticalLib
- Netherending Ores
- NuclearCraft
- Ore Excavation
- Psi
- Quark
- Random Things
- Random Patches
- Random Tweaks
- Redstone Flux
- Rustic
- Storage Drawers
- Tesla Core Lib
- Thaumic Energistics
- Thermal Cultivation
- Thermal Dynamics
- Thermal Expansion
- Thermal Foundation
- Thermal Innovation
- Tinkers Construct
- TOP Addons
- UniDict

### Removed
- a lot of old modpack version fragments
- carbon value from Mekanism sawdust
- Chicken Chunks chunk loaders
  - the mod is kept so admins can use it to see statistics
  - use FTB Utilities to chunkload
- enchantments curse of vanishing and shimmer from JEI ([#225](https://github.com/AllTheMods/ATM3-Expert/issues/225))
  - saves a JEI tab
- join notifications
  - ingame wiki mod from Extra Cells
  - Recurrent Complex
- recipes from orechid and orechid ignim from JEI
  - saves a JEI tab
- recipes from EnderIO painting machine from JEI
  - saves a JEI tab
- several blocks that give an infinite water sources
  - sink is still available

*Mod-Removals:*
- ElecCore
- Light Overlay Reloaded
- MCMultiPart
- MPUtils
- PlusTiC
- Reborn Core
- Sonar Core
- SuperSoundMuffler
- ZeroCore

### Fixed
- empty slot in Akashic Tome
- duplicated empowerer recipe for machine casing
- inscriber recipe for elementium processor being the wrong order
- ImmersiveEngineering loottables
- some broken world generation

### Security
- Discord rich presence no longer shows server IP

### Recipes
- added Extended Crafting recipes for illumination powder, nocturnal powder and luminessence
  - they are a lot harder and more expensive to be available in the late game
  - is intended to make them automatable when you are far in progression
- adjusted redstone output by several machines to keep it balanced
- angel ring now accepts primordial pearl with any damage
  - getting a full pearl when collapsing rifts just takes ages and tons of luck
- atomic reconstructor also accepts crystal blocks now but it costs 10x the power
- bag of holding recipe has been removed
  - it had serious bugs with saving items in it
  - existing ones **won't** be deleted
- diamond gear is now dependent on gold gear
- ender crafter, ender alternator and ender ingots
  - now uses vapor of levity so it has a use now
- fixed orb of transcendence recipe not accepting liquid xp tank
- flux anodizers augment is more expensive now
- plasma core only uses single ingredients now
- satchel recipes
  - make the first one available in the early game since it replaced the Traveller's Sack
  - adjusted the upgraded satchels so they can be crafted when progressing through the pack
- sink recipe nerfed to make it a little harder
- traveller's sack recipe has been removed
  - it has well known duping methods and is not recommended to keep
  - existing ones **won't** be removed but it's better if you empty and remove them
  - void sacks recipe has been removed too since it was dependent on the traveller's sack

### Quests
- added wand of the forest to "Mana Storage and Transfer" quest
  - colors of the wand are ignored
- corrected several spelling mistakes (report more if you find any)
- changed Traveller's Sack quest to Satchel
  - added description that satchels can be upgraded and enchanted
- improved some quest descriptions
- new quest for ImmersiveEngineering oil processing (pumpjack and distillation tower)
  - petro petunia quest is now dependent on it

## [1.5.0] - 2020-01-25
Note: We are still working on this project! Updated all mods.

## [1.4.0] - 2020-01-03

### Added
- BloodMagic to CarryOn ([#192](https://github.com/AllTheMods/ATM3-Expert/issues/192))
- blast furnace recipes to arc furnace (bomber12309) ([#94](https://github.com/AllTheMods/ATM3-Expert/issues/94))
- names to ContentTweaker items (bomber12309)
- black quartz seed (Trinsdar)

*Mod-Additions:*
- Block Drops Tweaker

### Changed
- metal bender dropping machine block instead of advanced machine block when broken ([#170](https://github.com/AllTheMods/ATM3-Expert/issues/170))

*Mod-Updates:*
- Advanced Solars Classic
- LootTweaker

### Fixed
- elementium processor recipe in circuit etcher (bomber12309) ([#195](https://github.com/AllTheMods/ATM3-Expert/issues/195))
- mundane ring recipe ([#198](https://github.com/AllTheMods/ATM3-Expert/issues/198))
- advanced rocketry circuit recipe (bomber12309) ([#158](https://github.com/AllTheMods/ATM3-Expert/issues/158))

### Quests
- added command reward to luminous crafting table quest ([#197](https://github.com/AllTheMods/ATM3-Expert/issues/197))

## [1.3.0] - 2019-12-20

### Added
- combination crafting recipe for machine case
- totemic to CarryOn blacklist

*Mod-Additions:*
- Super Sound Muffler

### Changed
- AE2 presses are now made in empowerer
- AE2 meteors don't spawn anymore
- sky stone spawns in Atum now
- Mekanism metallurgic infuser turns enriched iron into thermal steel blend
- fermium from terrasteel chance increased to 75%

*Mod-Updates:*
- Journey Map

### Removed
- old bee receptacle recipe

### Fixed
- creative recipes not giving back ATM star
- forge industrium recipe

### Quests
- fixed arcade quests not consuming coins

## [1.2.1] - 2020-12-16
Note: Credits to TheGoldCrayon for the update

### Added
- exchanging recipe to gamestages

### Changed
- wyvern core to 100 kRF/t
- barrel connector recipe

*Mod-Updates:*
- IC2 Classic Tweaker

### Removed

### Fixed
- loot tables
- drying rack recipes for porcelain

## [1.2.0] - 2019-12-15

### Added
- elementium processor in circuit etcher
- precision assembler workaround
- some items to CarryOn blacklist

### Changed
- some misc recipes
- BloodMagic snares recipe to give 3 per craft
- RF generated from SpectreCoil
- mob spawning in Atum decreased
- boiler conversion recipe
- moved ActuallyAdditions block breaker to tier 3
- flint and steel recipe
- firecharge recipe

*Mod-Updates:*
- Journey Map

### Removed
- manganese from Alchemistry
- scrap boxe items
- dilithium from overworld
- IC2 villagers

### Fixed
- guilty pool
- mining levels

## [1.1.1] - 2019-12-07

### Added
- recipes for the presses after removing crafting hammer
- colors to empowerer recipes (NobodyReal)

*Mod-Additions:*
- recipe stages
- game stages
- dimension stages
- MCMultiPart
- Chicken Chunks
- LagGoggles
- Scannables

### Changed
- AE2 meteorite spawn rate

### Removed
- Quark caves
- small plate press

*Mod-Removals:*
- Overloaded

### Quests
- oregen and Y-level values added to descriptions of items (TheGoldCrayon)
- iron plate to refined plate added in blast furnace
- Gamestages added for the new questing shop
- removed overloaded creative item scripts
- beacon recipe changed again
- LootTweaker initial tweaks with new mod
- Time in a bottle moved to gamestage shop
- crates readded and moved to gamestage shop
- scannables added and moved to gamestage shop
- energy injector moved to gamestage shop


## [1.0.1] - 2019-12-02
Note: server owners only need to update the scripts

### Added
- crystal binding recipe
- beacon recipe

### Changed
- elementium print language

### Fixed
- slimeboot recipe
- empowered enori block recipe
- loot tables (dungeon loot)

### Removed
- XU2 gens
- deep dark portal recipes

## [1.0.0] - 2019-11-29
- initial release

---

<!-- Links -->
[Keep a Changelog]: https://keepachangelog.com/
[Semantic Versioning]: https://semver.org/

<!-- Versions -->
[Unreleased]: https://github.com/AllTheMods/ATM3-Expert/
[Released]: https://github.com/AllTheMods/ATM3-Expert/
[1.9.3]: https://github.com/AllTheMods/ATM3-Expert/
[1.9.2]: https://github.com/AllTheMods/ATM3-Expert/
[1.9.1]: https://github.com/AllTheMods/ATM3-Expert/
[1.9.0]: https://github.com/AllTheMods/ATM3-Expert/
[1.8.0]: https://github.com/AllTheMods/ATM3-Expert/
[1.7.0]: https://github.com/AllTheMods/ATM3-Expert/
[1.6.2]: https://github.com/AllTheMods/ATM3-Expert/
[1.6.1]: https://github.com/AllTheMods/ATM3-Expert/
[1.6.0]: https://github.com/AllTheMods/ATM3-Expert/
[1.5.0]: https://github.com/AllTheMods/ATM3-Expert/
[1.4.0]: https://github.com/AllTheMods/ATM3-Expert/
[1.3.0]: https://github.com/AllTheMods/ATM3-Expert/
[1.2.1]: https://github.com/AllTheMods/ATM3-Expert/
[1.2.0]: https://github.com/AllTheMods/ATM3-Expert/
[1.1.1]: https://github.com/AllTheMods/ATM3-Expert/
[1.0.1]: https://github.com/AllTheMods/ATM3-Expert/
[1.0.0]: https://github.com/AllTheMods/ATM3-Expert/
