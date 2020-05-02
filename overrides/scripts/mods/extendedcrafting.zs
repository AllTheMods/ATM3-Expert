##########################################################################################
#modloaded extendedcrafting
#priority 100

import mods.extendedcrafting.CombinationCrafting;
import mods.extendedcrafting.EnderCrafting;
import mods.extendedcrafting.TableCrafting;

print("==================== loading mods extendedcrafting.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// ender ingot
recipes.remove(<extendedcrafting:material:36>);
recipes.addShaped(<extendedcrafting:material:36>, [
    [<extendedcrafting:material:37>, <extendedcrafting:material:37>, <extendedcrafting:material:37>],
    [<extendedcrafting:material:37>, <extendedcrafting:material:37>, <extendedcrafting:material:37>],
    [<extendedcrafting:material:37>, <extendedcrafting:material:37>, <extendedcrafting:material:37>]
]);

// black iron ingot
recipes.remove(<extendedcrafting:material>);
recipes.addShapeless(<extendedcrafting:material> * 4, [
    <extendedcrafting:storage>
]);

// black iron block
recipes.remove(<extendedcrafting:storage>);
recipes.addShapedMirrored(<extendedcrafting:storage>, [
    [<extendedcrafting:material>, <extendedcrafting:material>, null],
    [<extendedcrafting:material>, <extendedcrafting:material>, null],
    [null, null, null]
]);

// black iron block iron, iron trimmed
recipes.remove(<extendedcrafting:trimmed>);
recipes.addShaped(<extendedcrafting:trimmed>, [
    [<ore:nuggetIron>, <thermalfoundation:material:352>, <ore:nuggetIron>],
    [<thermalfoundation:material:352>, <extendedcrafting:storage>, <thermalfoundation:material:352>],
    [<ore:nuggetIron>, <thermalfoundation:material:352>, <ore:nuggetIron>]
]);

// black iron block iron, gold trimmed
recipes.remove(<extendedcrafting:trimmed:1>);
recipes.addShaped(<extendedcrafting:trimmed:1>,
[
    [<ore:nuggetGold>, <thermalfoundation:material:358>, <ore:nuggetGold>],
    [<thermalfoundation:material:358>, <extendedcrafting:trimmed>, <thermalfoundation:material:358>],
    [<ore:nuggetGold>, <thermalfoundation:material:358>, <ore:nuggetGold>]
]);

// black iron block iron, diamond trimmed
recipes.remove(<extendedcrafting:trimmed:2>);
recipes.addShaped(<extendedcrafting:trimmed:2>,
[
    [<thermalfoundation:material:16>, <alchemistry:compound:53>, <thermalfoundation:material:16>],
    [<alchemistry:compound:26>, <extendedcrafting:trimmed:1>, <alchemistry:compound:59>],
    [<thermalfoundation:material:16>, <alchemistry:compound:58>, <thermalfoundation:material:16>]
]);

// black iron frame
recipes.remove(<extendedcrafting:frame>);
recipes.addShaped(<extendedcrafting:frame>, [
    [<extendedcrafting:material>, <botania:elfglass>, <extendedcrafting:material>],
    [<atmtweaks:item_material:2>, <contenttweaker:corruptedstarmetal>, <atmtweaks:item_material:2>],
    [<extendedcrafting:material>, <botania:elfglass>, <extendedcrafting:material>]
]);

// elite component
recipes.remove(<extendedcrafting:material:16>);
recipes.addShaped(<extendedcrafting:material:16>, [
    [<ore:gemDiamond>, <botania:manaresource:18>, <ore:gemDiamond>],
    [<botania:manaresource:18>, <extendedcrafting:material:2>, <botania:manaresource:18>],
    [<ore:gemDiamond>, <extendedcrafting:material:7>, <ore:gemDiamond>]
]);

// advanced crafting table
recipes.remove(<extendedcrafting:table_advanced>);
recipes.addShaped(<extendedcrafting:table_advanced>, [
    [<extendedcrafting:material:36>, <extendedcrafting:material:9>, <extendedcrafting:material:36>],
    [<extendedcrafting:material:15>, <extrautils2:crafter>, <extendedcrafting:material:15>],
    [<extendedcrafting:material:36>, <extendedcrafting:material:15>, <extendedcrafting:material:36>]
]);

// pedestal
recipes.remove(<extendedcrafting:pedestal>);
recipes.addShaped(<extendedcrafting:pedestal>, [
    [null, <actuallyadditions:block_display_stand>, null],
    [<extendedcrafting:material>, <ic2:itemmisc:452>, <extendedcrafting:material>],
    [<extendedcrafting:material>, <actuallyadditions:block_crystal_empowered:4>, <extendedcrafting:material>]
]);

// ender alternator
recipes.remove(<extendedcrafting:ender_alternator>);
recipes.addShaped(<extendedcrafting:ender_alternator> * 2, [
    [null, <ore:pearlEnderEye>, null],
    [null, <extendedcrafting:material:36>, null],
    [<extendedcrafting:material:36>, <ore:gearEnderium>, <extendedcrafting:material:36>]
]);

// ender crafter
recipes.remove(<extendedcrafting:ender_crafter>);
recipes.addShaped(<extendedcrafting:ender_crafter>, [
    [<ore:pearlEnderEye>, <ore:pearlEnderEye>, <ore:pearlEnderEye>],
    [<extendedcrafting:material:36>, <ore:skullEnderResonator>, <extendedcrafting:material:36>],
    [<extendedcrafting:material:36>, <enderio:block_crafter>, <extendedcrafting:material:36>]
]);


### COMBINATION CRAFTING ###

// machine case | Tesla Core Lib
CombinationCrafting.addRecipe(<teslacorelib:machine_case>, 12500 * 4, 400, <actuallyadditions:block_crystal>, [
    <actuallyadditions:item_crystal:5>, <contenttweaker:quartzplate>,
    <actuallyadditions:item_crystal:5>, <contenttweaker:quartzplate>
]);

// empowered restonia crystal | Actually Additions
CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered>, 150000, 2000, <actuallyadditions:item_crystal>, [
    <actuallyadditions:item_misc:23>, <minecraft:apple>,
    <minecraft:red_mushroom>, <botania:dye:14>
]);
// empowered palis crystal | Actually Additions
CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:1>, 210000, 2100, <actuallyadditions:item_crystal:1>, [
    <minecraft:prismarine_crystals>, <minecraft:dye:6>,
    <minecraft:prismarine_shard>, <botania:dye:11>
]);
// empowered diamatine crystal | Actually Additions
CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:2>, 400000, 4000, <actuallyadditions:item_crystal:2>, [
    <thermalfoundation:material:70>, <nuclearcraft:gem_dust:2>,
    <thaumcraft:ingot>, <botania:dye:3>
]);
// empowered void crystal | Actually Additions
CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:3>, 50000, 500, <actuallyadditions:item_crystal:3>, [
    <actuallyadditions:item_misc:22>, <actuallyadditions:item_misc:17>,
    <ic2:itemmisc:254>, <botania:dye:15>
]);
// empowered emeradic crystal | Actually Additions
CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:4>, 600000, 9000, <actuallyadditions:item_crystal:4>, [
    <minecraft:slime_ball>, <actuallyadditions:item_solidified_experience>,
    <minecraft:ender_pearl>, <botania:dye:5>
]);
// empowered enori crystal | Actually Additions
CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:5>, 150000, 2000, <actuallyadditions:item_crystal:5>, [
    <tconstruct:materials>, <minecraft:dye:15>,
    <ic2c_extras:refinedironcasing>, <botania:dye>
]);

// empowered restonia crystal block | Actually Additions
CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered>, 1500000, 20000, <actuallyadditions:block_crystal>, [
    <actuallyadditions:item_misc:23>, <minecraft:apple>,
    <minecraft:red_mushroom>, <botania:dye:14>
]);
// empowered palis crystal block | Actually Additions
CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:1>, 2100000, 21000, <actuallyadditions:block_crystal:1>, [
    <minecraft:prismarine_crystals>, <minecraft:dye:6>,
    <minecraft:prismarine_shard>, <botania:dye:11>
]);
// empowered diamatine crystal block | Actually Additions
CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:2>, 4000000, 40000, <actuallyadditions:block_crystal:2>, [
    <thermalfoundation:material:70>, <nuclearcraft:gem_dust:2>,
    <thaumcraft:ingot>, <botania:dye:3>
]);
// empowered void crystal block | Actually Additions
CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:3>, 50000, 50000, <actuallyadditions:block_crystal:3>, [
    <actuallyadditions:item_misc:22>, <actuallyadditions:item_misc:17>,
    <ic2:itemmisc:254>, <botania:dye:15>
]);
// empowered emeradic crystal block | Actually Additions
CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:4>, 6000000, 90000, <actuallyadditions:block_crystal:4>, [
    <minecraft:slime_ball>, <actuallyadditions:item_solidified_experience>,
    <minecraft:ender_pearl>, <botania:dye:5>
]);
// empowered enori crystal block | Actually Additions
CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:5>, 1500000, 20000, <actuallyadditions:block_crystal:5>, [
    <tconstruct:materials>, <minecraft:dye:15>,
    <ic2c_extras:refinedironcasing>, <botania:dye>
]);

// angel rings | Extra Utilities 2
CombinationCrafting.addRecipe(<extrautils2:angelring>, 100000000, 5000, <minecraft:elytra>, [
    <bloodmagic:component:2>, <minecraft:feather>,
    <ic2:itemmisc:264>, <thaumcraft:primordial_pearl>,
    <botania:manaresource:14>, <rftools:dimensional_shard>,
    <atmtweaks:item_material:10>, <ore:blockGlass>
]);
CombinationCrafting.addRecipe(<extrautils2:angelring:1>, 100000000, 5000, <minecraft:elytra>, [
    <bloodmagic:component:2>, <minecraft:feather>,
    <ic2:itemmisc:264>, <thaumcraft:primordial_pearl>,
    <botania:manaresource:14>, <rftools:dimensional_shard>,
    <atmtweaks:item_material:10>, <minecraft:feather>
]);
CombinationCrafting.addRecipe(<extrautils2:angelring:2>, 100000000, 5000, <minecraft:elytra>, [
    <bloodmagic:component:2>, <minecraft:feather>,
    <ic2:itemmisc:264>, <thaumcraft:primordial_pearl>,
    <botania:manaresource:14>, <rftools:dimensional_shard>,
    <atmtweaks:item_material:10>, <minecraft:dye:9>
]);
CombinationCrafting.addRecipe(<extrautils2:angelring:3>, 100000000, 5000, <minecraft:elytra>, [
    <bloodmagic:component:2>, <minecraft:feather>,
    <ic2:itemmisc:264>, <thaumcraft:primordial_pearl>,
    <botania:manaresource:14>, <rftools:dimensional_shard>,
    <atmtweaks:item_material:10>, <minecraft:leather>
]);
CombinationCrafting.addRecipe(<extrautils2:angelring:4>, 100000000, 5000, <minecraft:elytra>, [
    <bloodmagic:component:2>, <minecraft:feather>,
    <ic2:itemmisc:264>, <thaumcraft:primordial_pearl>,
    <botania:manaresource:14>, <rftools:dimensional_shard>,
    <atmtweaks:item_material:10>, <ore:nuggetGold>
]);
CombinationCrafting.addRecipe(<extrautils2:angelring:5>, 100000000, 5000, <minecraft:elytra>, [
    <bloodmagic:component:2>, <minecraft:feather>,
    <ic2:itemmisc:264>, <thaumcraft:primordial_pearl>,
    <botania:manaresource:14>, <rftools:dimensional_shard>,
    <atmtweaks:item_material:10>, <ore:itemCoal>
]);

// wyvern core | Draconic Evolution
CombinationCrafting.addRecipe(<draconicevolution:wyvern_core>, 100000000, 100000, <draconicevolution:draconic_core>, [
    <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:4>,
    <ore:eternalLifeEssence>, <actuallyadditions:item_crystal_empowered:2>,
    <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered:1>,
    <thaumcraft:plate:3>, <environmentaltech:kyronite_crystal>
]);

// dragon essence | ATM Tweaks
CombinationCrafting.addRecipe(<atmtweaks:item_material:9>, 100000000, 10000, <draconicevolution:dragon_heart>, [
    <draconicevolution:awakened_core>, <deepmoblearning:pristine_matter_dragon>,
    <draconicevolution:ender_energy_manipulator>,
    <extrautils2:passivegenerator:8>, <minecraft:dragon_egg>,
    <enderio:item_material:44>,  <ic2:itemmisc:59>
]);

// wither essence | ATM Tweaks
CombinationCrafting.addRecipe(<atmtweaks:item_material:10>, 16000000, 10000, <atmtweaks:item_material:1>, [
    <ore:blockNetherStar>, <minecraft:skull:1>,
    <minecraft:skull:1>, <minecraft:skull:1>,
    <tconstruct:materials:17>, <enderio:block_reinforced_obsidian>,
    <minecraft:nether_star>, <minecraft:coal>
]);

// orb of transcendence | ATM Tweaks
CombinationCrafting.addRecipe(<atmtweaks:item_material:5>, 100000000, 5000,
    <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Fluid: {FluidName: "xpjuice", Amount: 500000}, Level: 4 as byte, Lock: 0 as byte}), [
        <actuallyadditions:block_xp_solidifier>, <actuallyadditions:item_solidified_experience>,
        <environmentaltech:aethium_crystal>, <extrautils2:decorativesolidwood:1>,
        <rftools:peaceful_module>, <actuallyadditions:item_solidified_experience>,
        <actuallyadditions:item_solidified_experience>, <contenttweaker:corruptedstarmetal>,
        <thaumcraft:alumentum>, <extendedcrafting:trimmed:2>
    ]
);

// me capability adapter
CombinationCrafting.addRecipe(<rf-capability-adapter:aecapabilityadapter>, 50000, 500, <appliedenergistics2:interface>, [
    <compactmachines3:tunneltool>, <ore:crystalPureCertusQuartz>,
    <appliedenergistics2:part:460>, <contenttweaker:elementiumprocessor>
]);


### ENDER CRAFTING ###

// steel casing | Mekanism
EnderCrafting.addShaped(<mekanism:basicblock:8>, [
	[<mekanism:ingot:1>, <botania:elfglass>, <thaumcraft:ingot>],
	[<botania:elfglass>, <atmtweaks:item_material:2>, <botania:elfglass>],
	[<thaumcraft:ingot>, <botania:elfglass>, <mekanism:ingot:1>]
]);


### TABLE CRAFTING - ANY ###

// black paper
recipes.remove(<enderio:item_material:77>);
TableCrafting.addShaped(0, <enderio:item_material:77>, [
	[<ore:dustCharcoal>, null, null, null, <ore:dustCharcoal>],
	[null, <ore:dustCharcoal>, <ore:paper>, <ore:dustCharcoal>, null],
	[null, <ore:paper>, <ore:paper>, <ore:paper>, null],
	[null, <ore:dustCharcoal>, <ore:paper>, <ore:dustCharcoal>, null],
	[<ore:dustCharcoal>, null, null, null, <ore:dustCharcoal>]
]);

// black iron ingot | 5x5
TableCrafting.addShaped(0, <extendedcrafting:material>, [
	[null, null, <actuallyadditions:item_misc:10>, null, null],
	[null, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, null],
	[<actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <immersiveengineering:material:19>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>],
	[null, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, null],
	[null, null, <immersiveengineering:material:6>, null, null]
]);

// garden cloche | Immersive Engineering | 5x5
TableCrafting.addShaped(0, <immersiveengineering:metal_device1:13>, [
	[<actuallyadditions:block_greenhouse_glass>, <immersiveengineering:material:26>, <actuallyadditions:block_greenhouse_glass>, <immersiveengineering:material:26>, <actuallyadditions:block_greenhouse_glass>],
	[<actuallyadditions:block_greenhouse_glass>, <actuallyadditions:block_greenhouse_glass>, <actuallyadditions:block_greenhouse_glass>, <actuallyadditions:block_greenhouse_glass>, <actuallyadditions:block_greenhouse_glass>],
	[<ic2c_extras:coil>, <atmtweaks:item_material:1>, <immersiveengineering:material:9>, <atmtweaks:item_material:1>, <ic2c_extras:coil>],
	[<immersiveengineering:treated_wood>, <bloodmagic:slate:2>, <bloodmagic:slate:2>, <bloodmagic:slate:2>, <immersiveengineering:treated_wood>],
	[<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>]
]);

// signalum upgrade kit | Thermal Foundation | 5x5
TableCrafting.addShaped(0, <thermalfoundation:upgrade:2>, [
	[<thermalfoundation:material:352>, <thermalfoundation:material:165>, <appliedenergistics2:material:10>, <thermalfoundation:material:165>, <thermalfoundation:material:352>],
	[<thermalfoundation:material:165>, <thermalfoundation:material:515>, <contenttweaker:manadiamondplate>, <ic2:itemmisc:452>, <thermalfoundation:material:165>],
	[<appliedenergistics2:material:10>, <thermalfoundation:material:165>, <bloodmagic:slate:1>, <thermalfoundation:material:165>, <appliedenergistics2:material:10>],
	[<thermalfoundation:material:165>, <ic2:itemmisc:452>, <contenttweaker:manadiamondplate>, <thermalfoundation:material:515>, <thermalfoundation:material:165>],
	[<thermalfoundation:material:352>, <thermalfoundation:material:165>, <appliedenergistics2:material:10>, <thermalfoundation:material:165>, <thermalfoundation:material:352>]
]);

// growth essence | ATM Tweaks | 5x5
mods.extendedcrafting.TableCrafting.addShaped(0, <atmtweaks:item_material:1>, [
	[<ic2:itemmisc:157>, <extendedcrafting:material:7>, <extendedcrafting:material:7>, <extendedcrafting:material:7>, <ic2:itemmisc:157>],
	[<extendedcrafting:material:7>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <extendedcrafting:material:7>],
	[<extendedcrafting:material:7>, <actuallyadditions:item_crystal_empowered:4>, <minecraft:bone_block>, <actuallyadditions:item_crystal_empowered:4>, <extendedcrafting:material:7>],
	[<extendedcrafting:material:7>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <extendedcrafting:material:7>],
	[<ic2:itemmisc:157>, <extendedcrafting:material:7>, <extendedcrafting:material:7>, <extendedcrafting:material:7>, <ic2:itemmisc:157>]
]);

// resonant upgrade kit | Thermal Foundation | 7x7
TableCrafting.addShaped(0, <thermalfoundation:upgrade:3>, [
	[<enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>],
	[<enderio:item_material:58>, <forestry:chipsets:3>, <thaumcraft:ingot>, <actuallyadditions:item_crystal_empowered:4>, <thaumcraft:ingot>, <forestry:chipsets:3>, <enderio:item_material:58>],
	[<enderio:item_material:58>, <thaumcraft:ingot>, <plustic:osmiridiumingot>, <plustic:osmiridiumingot>, <plustic:osmiridiumingot>, <thaumcraft:ingot>, <enderio:item_material:58>],
	[<enderio:item_material:58>, <actuallyadditions:item_crystal_empowered:4>, <plustic:osmiridiumingot>, <mekanism:teleportationcore>, <plustic:osmiridiumingot>, <actuallyadditions:item_crystal_empowered:4>, <enderio:item_material:58>],
	[<enderio:item_material:58>, <thaumcraft:ingot>, <plustic:osmiridiumingot>, <plustic:osmiridiumingot>, <plustic:osmiridiumingot>, <thaumcraft:ingot>, <enderio:item_material:58>],
	[<enderio:item_material:58>, <forestry:chipsets:3>, <thaumcraft:ingot>, <actuallyadditions:item_crystal_empowered:4>, <thaumcraft:ingot>, <forestry:chipsets:3>, <enderio:item_material:58>],
	[<enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>]
]);

// elven gateway core | Botania | 7x7
recipes.remove(<botania:alfheimportal>);
TableCrafting.addShaped(0, <botania:alfheimportal>, [
	[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>, <astralsorcery:itemcraftingcomponent:1>, <botania:livingwood>, <botania:livingwood>, <botania:livingwood>],
	[<botania:livingwood>, <bloodmagic:slate:2>, <ic2:itemmisc:256>, <alchemistry:ingot:100>, <contenttweaker:manadiamondplate>, <bloodmagic:slate:2>, <botania:livingwood>],
	[<botania:livingwood>, <contenttweaker:manadiamondplate>, <botania:manaresource:18>, <botania:manaresource:4>, <forge:bucketfilled>.withTag({FluidName: "ender_distillation", Amount: 1000}), <ic2:itemmisc:256>, <botania:livingwood>],
	[<botania:manaresource:4>, <enderio:item_alloy_ingot:8>, <thaumcraft:ingot>, <atmtweaks:item_material:2>, <thaumcraft:ingot>, <enderio:item_alloy_ingot:8>, <botania:manaresource:4>],
	[<botania:livingwood>, <ic2:itemmisc:256>, <forge:bucketfilled>.withTag({FluidName: "ender_distillation", Amount: 1000}), <botania:manaresource:4>, <botania:manaresource:18>, <contenttweaker:manadiamondplate>, <botania:livingwood>],
	[<botania:livingwood>, <bloodmagic:slate:2>, <contenttweaker:manadiamondplate>, <alchemistry:ingot:100>, <ic2:itemmisc:256>, <bloodmagic:slate:2>, <botania:livingwood>],
	[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>, <astralsorcery:itemcraftingcomponent:1>, <botania:livingwood>, <botania:livingwood>, <botania:livingwood>]
]);

// forged industrium ingot | ATM Tweaks | 9x9
TableCrafting.addShapeless(0, <atmtweaks:item_material:3>, [
    <ore:ingotOsgloglas>, <ore:ingotKnightslime>, <ore:ingotManyullyn>, <ore:ingotEnderium>, <ore:ingotLumium>, <ore:ingotSignalum>, <ore:ingotConstantan>, <atmtweaks:item_material:2>, <ore:ingotInvar>,
	<ore:ingotManasteel>, <ore:ingotAlubrass>, <contenttweaker:quartzingot>, <ore:ingotLithium>, <ore:ingotTerrasteel>, <ore:ingotVibrantAlloy>, <ore:ingotDarkSteel>, <ore:ingotGold>, <ore:ingotElvenElementium>,
	<ore:gaiaIngot>, <ore:ingotTitaniumAluminide>, <ore:ingotSiliconCarbide>, <ore:ingotEnrichedUranium>, <ore:ingotDraconiumAwakened>, <ore:ingotSoularium>, <ore:ingotPulsatingIron>, <ore:ingotManganeseOxide>, <ore:ingotTitanium>,
	<ore:ingotEndSteel>, <ore:itemSilicon>, <ore:ingotManganeseDioxide>, <contenttweaker:coldironingot>, <ore:ingotPigiron>, <ore:ingotConductiveIron>, <ore:ingotRedstoneAlloy>, <ore:ingotAlumite>, <ore:ingotTitaniumIridium>,
	<ore:ingotAstralStarmetal>, <ore:ingotRefinedGlowstone>, <ore:ingotHSLASteel>, <ore:ingotOsmiridium>, <ore:ingotIron>, <ore:ingotEnergeticAlloy>, <ore:ballRedstoneAlloy>, <ore:ballConstructionAlloy>, <ore:ballEndSteel>,
	<ore:ballSoularium>, <ore:ballEnergeticAlloy>, <ore:itemGrindingBallSignalum>, <ore:itemGrindingBallEnderium>, <contenttweaker:corruptedstarmetal>, <ore:ballPulsatingIron>, <ore:ballElectricalSteel>, <ore:ballVibrantAlloy>, <ore:ballDarkSteel>,
	<ore:ballConductiveIron>, <ore:gemDilithium>, <ore:gemDilithium>, <ore:gemDilithium>, <draconicevolution:chaos_shard>, <ore:gemDilithium>, <ore:gemDilithium>, <ore:gemDilithium>, <ore:itemGrindingBallLumium>,
	<ore:gemDilithium>, <ore:gemDilithium>, <ore:gemDilithium>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:2>, <ore:gemDilithium>, <ore:gemDilithium>, <ore:gemDilithium>,
	<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>
]);

// unified field core | ATM Tweaks | 9x9
TableCrafting.addShaped(0, <atmtweaks:item_material:7> * 2, [
	[<atmtweaks:item_material:2>, <atmtweaks:item_material:2>, <atmtweaks:item_material:2>, <atmtweaks:item_material:2>, null, null, null, null, null],
	[<atmtweaks:item_material:2>, <ic2:itemmisc:264>, <draconicevolution:dragon_heart>, <atmtweaks:item_material:2>, null, null, null, null, null],
	[<atmtweaks:item_material:2>, <draconicevolution:dragon_heart>, <minecraft:beacon>, <atmtweaks:item_material:2>, <contenttweaker:corruptedstarmetal>, null, null, null, null],
	[<atmtweaks:item_material:2>, <atmtweaks:item_material:2>, <atmtweaks:item_material:2>, <atmtweaks:item_material:2>, <atmtweaks:item_material:2>, <atmtweaks:item_material:2>, null, null, null],
	[null, null, <contenttweaker:corruptedstarmetal>, <atmtweaks:item_material:2>, <extrautils2:opinium:8>, <atmtweaks:item_material:2>, <contenttweaker:corruptedstarmetal>, null, null],
	[null, null, null, <atmtweaks:item_material:2>, <atmtweaks:item_material:2>, <atmtweaks:item_material:2>, <atmtweaks:item_material:2>, <atmtweaks:item_material:2>, <atmtweaks:item_material:2>],
	[null, null, null, null, <contenttweaker:corruptedstarmetal>, <atmtweaks:item_material:2>, <minecraft:beacon>, <ore:gaiaIngot>, <atmtweaks:item_material:2>],
	[null, null, null, null, null, <atmtweaks:item_material:2>, <ore:gaiaIngot>, <ic2:itemmisc:264>, <atmtweaks:item_material:2>],
	[null, null, null, null, null, <atmtweaks:item_material:2>, <atmtweaks:item_material:2>, <atmtweaks:item_material:2>, <atmtweaks:item_material:2>]
]);

// paradoxally dense component | ATM Tweaks | 9x9
TableCrafting.addShaped(0, <atmtweaks:item_material:8>, [
	[<nuclearcraft:turbine_rotor_blade_extreme>, <advgenerators:turbine_rotor_enderium>, <atmtweaks:item_material:2>, null, <advgenerators:power_io>, null, <atmtweaks:item_material:2>, <advgenerators:turbine_rotor_adv_alloy>, <nuclearcraft:turbine_rotor_blade_extreme>],
	[<advgenerators:turbine_rotor_enderium>, <nuclearcraft:turbine_rotor_blade_extreme>, <advgenerators:turbine_rotor_manyullyn>, <atmtweaks:item_material:2>, <advgenerators:power_io>, <atmtweaks:item_material:2>, <advgenerators:turbine_rotor_adv_alloy>, <nuclearcraft:turbine_rotor_blade_extreme>, <advgenerators:turbine_rotor_adv_alloy>],
	[<atmtweaks:item_material:2>, <advgenerators:turbine_rotor_manyullyn>, <nuclearcraft:turbine_rotor_blade_extreme>, <advgenerators:turbine_rotor_adv_alloy>, <advgenerators:power_io>, <advgenerators:turbine_rotor_adv_alloy>, <nuclearcraft:turbine_rotor_blade_extreme>, <advgenerators:turbine_rotor_adv_alloy>, <atmtweaks:item_material:2>],
	[null, <atmtweaks:item_material:2>, <advgenerators:turbine_rotor_adv_alloy>, <advgenerators:turbine_rotor_adv_alloy>, <advgenerators:power_io>, <advgenerators:turbine_rotor_adv_alloy>, <advgenerators:turbine_rotor_adv_alloy>, <atmtweaks:item_material:2>, null],
	[null, null, <environmentaltech:structure_frame_6>, <simplyjetpacks:metaitemmods:11>, <ic2:itemmisc:304>, <simplyjetpacks:metaitemmods:30>, <environmentaltech:modifier_invisibility>, null, null],
	[null, <atmtweaks:item_material:2>, <advgenerators:turbine_rotor_manyullyn>, <advgenerators:turbine_rotor_manyullyn>, <advgenerators:power_io>, <advgenerators:turbine_rotor_enderium>, <advgenerators:turbine_rotor_enderium>, <atmtweaks:item_material:2>, null],
	[<atmtweaks:item_material:2>, <advgenerators:turbine_rotor_manyullyn>, <nuclearcraft:turbine_rotor_blade_extreme>, <advgenerators:turbine_rotor_manyullyn>, <advgenerators:power_io>, <advgenerators:turbine_rotor_enderium>, <nuclearcraft:turbine_rotor_blade_extreme>, <advgenerators:turbine_rotor_enderium>, <atmtweaks:item_material:2>],
	[<advgenerators:turbine_rotor_manyullyn>, <nuclearcraft:turbine_rotor_blade_extreme>, <advgenerators:turbine_rotor_manyullyn>, <atmtweaks:item_material:2>, <advgenerators:power_io>, <atmtweaks:item_material:2>, <advgenerators:turbine_rotor_enderium>, <nuclearcraft:turbine_rotor_blade_extreme>, <advgenerators:turbine_rotor_enderium>],
	[<nuclearcraft:turbine_rotor_blade_extreme>, <advgenerators:turbine_rotor_manyullyn>, <atmtweaks:item_material:2>, null, <advgenerators:power_io>, null, <atmtweaks:item_material:2>, <advgenerators:turbine_rotor_enderium>, <nuclearcraft:turbine_rotor_blade_extreme>]
]);


##########################################################################################
print("==================== end of mods extendedcrafting.zs ====================");
