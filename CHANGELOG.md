# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog][Keep a Changelog] and this project adheres to [Semantic Versioning][Semantic Versioning].

## [Unreleased]

## [1.6.0] - 2020-XX-XX

### Added
- open blocks guide to akashic tome
- actually additions guide to akashic tome
- custom descriptions to items made in empowerer to know how much RF is needed to empower them
- instructions how to get scrap from IndustrialCraft since the recipe is not shown in JEI
- pack logo to Discord rich presence

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
- Tinker's JEI

### Changed
- huge script overhaul and refactor
- Discord rich presence now shows modpack name
- application window now shows modpack name
- actually additions guide is no longer given on first craft
- all AE2 facades are now hidden to prevent JEI page spam
- only the AE2 stone facade is shown with a guide how to craft facades
- various fluid containers are now hidden to prevent JEI page spam, all basic forms are still visible
- Bag of Holding recipe to make it available in the earlier game since it replaces the Traveller's Sack
- skybox to garden of glass
- atomic reconstructor also accepts crystal blocks now but it costs 10x the power
- adjusted redstone output by several machines to keep it balanced
- flux anodizers augment is more expensive now
- recipes of ender crafter, ender alternator and ender ingots
  - now use vapor of levity so it has a use now
- nerfed sink recipe
- plasma core is automatable now, machine structures give 2 per craft ([#191](https://github.com/AllTheMods/ATM3-Expert/issues/191))
- unified wooden and stone gears
- made diamond gear dependent on gold gear
- ImmersiveEngineering metal press is 50% faster now
- Capability Adapter has empowerer and combination recipes

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
- Floralchemy
- Forestry
- FTB Library
- Integration Foregoing
- Inventory Tweaks
- Journey Map
- Just Enough Dimensions
- Just Enough IDs
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
- RandomPatches
- Redstone Flux
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
- removed the Traveller's Sack from crafting
  - it has well known duping bugs and is not recommended to keep
  - existing ones **won't** be deleted but it's recommended to empty and to remove them
  - it's now replaced with the Bag of Holding
  - void sack is also removed as it was dependent
- removed shimmer and curse of vanishing enchantments from JEI ([#225](https://github.com/AllTheMods/ATM3-Expert/issues/225))
- tile entities from EnderIO painting machine's paintable objects
- recipes for painting blocks to save a JEI tab
- all recipes from orechid and orechid ignim to save a JEI tab
- a ton of old modpack version fragments
- join notifications of ingame wiki mod from extra cells
- join notifications from recurrent complex
- thermal foundation satchel crafting recipes
  - bag of holding from quest is already bigger
  - existing ones **won't** be deleted
- chicken chunk loaders
  - the mod is kept so admins can use it to see statistics
  - use FTB Utilities to chunkload
- several blocks that give an infinite water source
  - sink is still available but harder
- carbon value from Mekanism sawdust

*Mod-Removals:*
- ElecCore
- LagGoggles
- Light Overlay Reloaded
- MCMultiPart
- MPUtils
- Reborn Core
- Sonar Core
- TickCentral
- ZeroCore

### Fixed
- inscriber recipe for elementium processor being the wrong order
- ImmersiveEngineering loottables
- empty slot in Akashic Tome
- duplicate empowerer recipe for machine casing
- some broken world generation

### Security
- Discord rich presence no longer shows server IP

### Quests
- corrected several spelling mistakes (report more if you find any)
- improved some quest descriptions
- added wand of the forest to "Mana Storage and Transfer" quest, it ignores the color you chose though
- changed Traveller's Sack quest to Bag of Holding
- petro petunia quest is now dependent on a ImmersiveEngineering multiblock quest
- new quest for ImmersiveEngineering oil processing (pumpjack and distillation tower)

---

## [Released]

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
[1.6.0]: https://github.com/AllTheMods/ATM3-Expert/
[1.5.0]: https://github.com/AllTheMods/ATM3-Expert/
[1.4.0]: https://github.com/AllTheMods/ATM3-Expert/
[1.3.0]: https://github.com/AllTheMods/ATM3-Expert/
[1.2.1]: https://github.com/AllTheMods/ATM3-Expert/
[1.2.0]: https://github.com/AllTheMods/ATM3-Expert/
[1.1.1]: https://github.com/AllTheMods/ATM3-Expert/
[1.0.1]: https://github.com/AllTheMods/ATM3-Expert/
[1.0.0]: https://github.com/AllTheMods/ATM3-Expert/
