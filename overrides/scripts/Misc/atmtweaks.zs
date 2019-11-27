import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import crafttweaker.game.IGame;
import mods.jei.JEI.removeAndHide;
import mods.forestry.ThermionicFabricator;

val atmStarReturnOrb = <atmtweaks:item_material:0>.transformReplace(<atmtweaks:item_material:5>);
val mekCube = <mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}});
val fullTablet = <botania:manatablet>.withTag({mana: 500000});
val creativeTablet = <botania:manatablet>.withTag({mana: 500000, creative: 1 as byte});
val Astar = <atmtweaks:item_material>.reuse();

#recipes that use the bigger tables
#growth essence
mods.extendedcrafting.TableCrafting.addShaped(0, <atmtweaks:item_material:1>, [
	[<ic2:itemmisc:157>, <extendedcrafting:material:7>, <extendedcrafting:material:7>, <extendedcrafting:material:7>, <ic2:itemmisc:157>], 
	[<extendedcrafting:material:7>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <extendedcrafting:material:7>], 
	[<extendedcrafting:material:7>, <actuallyadditions:item_crystal_empowered:4>, <minecraft:bone_block>, <actuallyadditions:item_crystal_empowered:4>, <extendedcrafting:material:7>], 
	[<extendedcrafting:material:7>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <extendedcrafting:material:7>], 
	[<ic2:itemmisc:157>, <extendedcrafting:material:7>, <extendedcrafting:material:7>, <extendedcrafting:material:7>, <ic2:itemmisc:157>]
]);


#industrium ingot
mods.forestry.ThermionicFabricator.addCast(<atmtweaks:item_material:2> *3, 
[[<thermalfoundation:material:352>,<bloodmagic:slate:2>,<contenttweaker:manasteelplate>], 
[<astralsorcery:itemcraftingcomponent:1>,<appliedenergistics2:material:43>,<astralsorcery:itemcraftingcomponent:1>],
[<contenttweaker:manasteelplate>,<enderio:item_material:77>,<thermalfoundation:material:352>]], 
<liquid: glass> * 1000);

#forged industrium ingot
mods.extendedcrafting.TableCrafting.addShapeless(0, <atmtweaks:item_material:3>, [<ore:ingotOsgloglas>, <ore:ingotKnightslime>, <ore:ingotManyullyn>, <ore:ingotEnderium>, <ore:ingotLumium>, <ore:ingotSignalum>, <ore:ingotConstantan>, <atmtweaks:item_material:2>, <ore:ingotInvar>, <ore:ingotManasteel>, <ore:ingotAlubrass>, <contenttweaker:quartzingot>, <ore:ingotLithium>, <ore:ingotTerrasteel>, <ore:ingotVibrantAlloy>, <ore:ingotDarkSteel>, <ore:ingotGold>, <ore:ingotElvenElementium>, <ore:gaiaIngot>, <ore:ingotTitaniumAluminide>, <ore:ingotSiliconCarbide>, <ore:ingotEnrichedUranium>, <ore:ingotDraconiumAwakened>, <ore:ingotSoularium>, <ore:ingotPulsatingIron>, <ore:ingotManganeseOxide>, <ore:ingotTitanium>, <ore:ingotEndSteel>, <ore:itemSilicon>, <ore:ingotManganeseDioxide>, <contenttweaker:coldironingot>, <ore:ingotPigiron>, <ore:ingotConductiveIron>, <ore:ingotRedstoneAlloy>, <ore:ingotAlumite>, <ore:ingotTitaniumIridium>, <ore:ingotAstralStarmetal>, <ore:ingotRefinedGlowstone>, <ore:ingotHSLASteel>, <ore:ingotOsmiridium>, <ore:ingotIron>, <ore:ingotEnergeticAlloy>, <ore:ballRedstoneAlloy>, <ore:ballConstructionAlloy>, <ore:ballEndSteel>, <ore:ballSoularium>, <ore:ballEnergeticAlloy>, <ore:itemGrindingBallSignalum>, <ore:itemGrindingBallEnderium>, <contenttweaker:corruptedstarmetal>, <ore:ballPulsatingIron>, <ore:ballElectricalSteel>, <ore:ballVibrantAlloy>, <ore:ballDarkSteel>, <ore:ballConductiveIron>, <ore:crystalDilithium>, <ore:crystalDilithium>, <ore:crystalDilithium>, <draconicevolution:chaos_shard>, <ore:crystalDilithium>, <ore:crystalDilithium>, <ore:crystalDilithium>, <ore:itemGrindingBallLumium>, <ore:crystalDilithium>, <ore:crystalDilithium>, <ore:crystalDilithium>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:2>, <ore:crystalDilithium>, <ore:crystalDilithium>, <ore:crystalDilithium>, <actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>]);

#atmstar
recipes.addShaped(<atmtweaks:item_material>, 
 [[<atmtweaks:item_material:4>, <atmtweaks:item_material:8>, <atmtweaks:item_material:3>],
 [<atmtweaks:item_material:7>, <draconicevolution:chaotic_core>, <atmtweaks:item_material:9>], 
 [<atmtweaks:item_material:5>, <atmtweaks:item_material:10>, <atmtweaks:item_material:6>]]);

#transcendance orb
mods.extendedcrafting.CombinationCrafting.addRecipe(<atmtweaks:item_material:5>, 
 100000000, 5000, <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Fluid: {FluidName: "xpjuice", Amount: 500000}, Level: 4 as byte, Lock: 0 as byte}), 
[<actuallyadditions:block_xp_solidifier>, <actuallyadditions:item_solidified_experience>, <environmentaltech:aethium_crystal>, <extrautils2:decorativesolidwood:1>,
<rftools:peaceful_module>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <contenttweaker:corruptedstarmetal>, 
<thaumcraft:alumentum>, <extendedcrafting:trimmed:2>]);

#field core
mods.extendedcrafting.TableCrafting.addShaped(0, <atmtweaks:item_material:7> *2, [
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

#paradox component
mods.extendedcrafting.TableCrafting.addShaped(0, <atmtweaks:item_material:8>, [
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


#sphere
    mods.botania.RuneAltar.addRecipe(<atmtweaks:item_material:6>, [<thaumcraft:voidseer_charm>, <thaumcraft:causality_collapser>, <botania:manaresource:14>, <thaumcraft:ingot:1>, <draconicevolution:wyvern_core>], 25000
	);
	
#dragon essence
mods.extendedcrafting.CombinationCrafting.addRecipe(<atmtweaks:item_material:9>, 
 100000000, 10000, <draconicevolution:dragon_heart>, 
[<draconicevolution:awakened_core>, <deepmoblearning:pristine_matter_dragon>, <draconicevolution:ender_energy_manipulator>, 
 <extrautils2:passivegenerator:8>, <minecraft:dragon_egg>, <enderio:item_material:44>,  <ic2:itemmisc:59>]);

#creative items

recipes.addShaped(<tconstruct:materials:50> * 16,
 [[<minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>],
 [<minecraft:skull:1>, Astar, <minecraft:skull:1>],
 [<minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>]]);
 <tconstruct:materials:50>.addTooltip("Does not consume the ATM Star when crafted");

recipes.addShaped(<wct:wct_creative>,
 [[null, null, null],
 [Astar, <wct:wct:*>, null],
 [null, null, null]]);
 <wct:wct_creative>.addTooltip("Does not consume the ATM Star when crafted");

recipes.addShaped(<psi:cad_assembly:5>,
 [[null, null, null],
 [<psi:cad_assembly:4>, Astar, <psi:cad_assembly:3>],
 [null, null, null]]);
 <psi:cad_assembly:5>.addTooltip("Does not consume the ATM Star when crafted");

recipes.addShaped(<botania:pool:1>,
 [[<botania:pool:3>, <botania:pool:3>, <botania:pool:3>],
 [<botania:pool:3>, <botania:manatablet>, <botania:pool:3>], 
 [<botania:pool:3>, <botania:pool:3>, <botania:pool:3>]]);
 <botania:pool:1>.addTooltip("Does not consume the ATM Star when crafted");

recipes.addShaped(creativeTablet, 
 [[fullTablet, fullTablet, fullTablet],
 [fullTablet, Astar, fullTablet], 
 [fullTablet, fullTablet, fullTablet]]);
creativeTablet.addTooltip("Does not consume the ATM Star when crafted");

recipes.addShaped(<draconicevolution:draconium_capacitor:2>,
 [[null, <draconicevolution:draconium_capacitor:1>, null],
 [<draconicevolution:draconium_capacitor:1>, Astar, <draconicevolution:draconium_capacitor:1>], 
 [null, <draconicevolution:draconium_capacitor:1>, null]]);
<draconicevolution:draconium_capacitor:2>.addTooltip("Does not consume the ATM Star when crafted");

recipes.addShaped(<draconicevolution:creative_rf_source>,
 [[null, mekCube, null],
 [mekCube, Astar, mekCube], 
 [null, mekCube, null]]);
 <draconicevolution:creative_rf_source>.addTooltip("Does not consume the ATM Star when crafted");

var creativeMekTank = <mekanism:machineblock2:11>.withTag({tier: 4});
recipes.addShapedMirrored("CreativeTank", creativeMekTank, [
	[<mekanism:machineblock:12>, <mekanism:machineblock2:11>, <mekanism:machineblock:12>],
	[<mekanism:machineblock2:11>, atmStarReturnOrb, <mekanism:machineblock2:11>],
	[<mekanism:machineblock:12>, <mekanism:machineblock2:11>, <mekanism:machineblock:12>]
	]);
creativeMekTank.addTooltip("Does not consume the ATM Star when crafted");

	// AE2 Creative ENERGY Cell
	recipes.addShapedMirrored("CreativeAEEnergy", <appliedenergistics2:creative_energy_cell>, [
		[<appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>],
		[<appliedenergistics2:dense_energy_cell>, atmStarReturnOrb, <appliedenergistics2:dense_energy_cell>],
		[<appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>]
		]);
	<appliedenergistics2:creative_energy_cell>.addTooltip("Does not consume the ATM Star when crafted");
	
	// Creative Bookcase
	recipes.addShaped("CBookcase", <bibliocraft:bookcasecreative>, [
		[<bibliocraft:bookcase>, <bibliocraft:bookcase>, <bibliocraft:bookcase>],
		[<bibliocraft:bookcase>, atmStarReturnOrb, <bibliocraft:bookcase>],
		[<bibliocraft:bookcase>, <bibliocraft:bookcase>, <bibliocraft:bookcase>]
	]);
	<bibliocraft:bookcasecreative>.addTooltip("Does not consume the ATM Star when crafted");
	
	// Creative Flux Magnet
	recipes.addShapeless("CFluxMag",
		<thermalinnovation:magnet:32000>.withTag({Energy: 600000}), [
			atmStarReturnOrb, <thermalinnovation:magnet:4>, <thermalinnovation:magnet:4>
		]);
	<thermalinnovation:magnet:32000>.addTooltip("Does not consume the ATM Star when crafted");
	
	// Creative Flux Saw
	recipes.addShapeless("CFluxSaw",
		<thermalinnovation:saw:32000>.withTag({Energy: 600000}), [
			atmStarReturnOrb, <thermalinnovation:saw:4>, <thermalinnovation:saw:4>
		]);
	<thermalinnovation:saw:32000>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
	
	// Creative Flux Bore
	recipes.addShapeless("CFluxBore",
		<thermalinnovation:drill:32000>.withTag({Energy: 600000}), [
			atmStarReturnOrb, <thermalinnovation:drill:4>, <thermalinnovation:drill:4>
		]);
	<thermalinnovation:drill:32000>.addTooltip("Does not consume the ATM Star when crafted");
		
	// Creative Jetpack
	recipes.addShapeless("CJetpack",
		<simplyjetpacks:itemjetpack:0>.withTag({Energy: 200000}), [
			atmStarReturnOrb, <simplyjetpacks:itemjetpack:13>, <simplyjetpacks:itemjetpack:4>
		]);
	<simplyjetpacks:itemjetpack:0>.addTooltip("Does not consume the ATM Star when crafted");
	
	// Creative Flux Pack
	recipes.addShapeless("CFluxPack",
		<simplyjetpacks:itemfluxpack:0>.withTag({Energy: 2000000}), [
			atmStarReturnOrb, <simplyjetpacks:itemfluxpack:8>, <simplyjetpacks:itemfluxpack:3>
		]);
	<simplyjetpacks:itemfluxpack:0>.addTooltip("Does not consume the ATM Star when crafted");
	
	// Overloaded Tool
	recipes.remove(<overloaded:multi_tool>);
	recipes.addShaped("OLTool", <overloaded:multi_tool>.withTag({IntEnergyStorage: {Count: 0 as long}}), [
		[<minecraft:nether_star>, <minecraft:iron_ingot>, null],
		[<minecraft:iron_ingot>, atmStarReturnOrb, <overloaded:nether_star_block>],
		[null, <overloaded:nether_star_block>, <minecraft:iron_block>]
		]);
	<overloaded:multi_tool>.addTooltip("Does not consume the ATM Star when crafted");
		
	// Overloaded Armor Legs
	recipes.remove(<overloaded:multi_leggings>);
	recipes.addShaped("OLLegs", <overloaded:multi_leggings>.withTag({IntEnergyStorage: {Count: 0 as long}}), [
		[<overloaded:nether_star_block>, atmStarReturnOrb, <overloaded:nether_star_block>],
		[<overloaded:nether_star_block>, null, <overloaded:nether_star_block>],
		[<overloaded:nether_star_block>, null, <overloaded:nether_star_block>]
		]);
	<overloaded:multi_leggings>.addTooltip("Does not consume the ATM Star when crafted");
		
	// Overloaded Armor Helm
	recipes.remove(<overloaded:multi_helmet>);
	recipes.addShaped("OLHelm", <overloaded:multi_helmet>.withTag({IntEnergyStorage: {Count: 0 as long}}), [
		[<overloaded:nether_star_block>, atmStarReturnOrb, <overloaded:nether_star_block>],
		[<overloaded:nether_star_block>, null, <overloaded:nether_star_block>]
		]);
	<overloaded:multi_helmet>.addTooltip("Does not consume the ATM Star when crafted");
		
	// Overloaded Armor Chest
	recipes.remove(<overloaded:multi_chestplate>);
	recipes.addShaped("OLChest", <overloaded:multi_chestplate>.withTag({IntEnergyStorage: {Count: 0 as long}}), [
		[<overloaded:nether_star_block>, null, <overloaded:nether_star_block>],
		[<overloaded:nether_star_block>, atmStarReturnOrb, <overloaded:nether_star_block>],
		[<overloaded:nether_star_block>, <overloaded:nether_star_block>, <overloaded:nether_star_block>]
		]);
	<overloaded:multi_chestplate>.addTooltip("Does not consume the ATM Star when crafted");
		
	// Overloaded Armor Feet
	recipes.remove(<overloaded:multi_boots>);
	recipes.addShaped("OLFeet", <overloaded:multi_boots>.withTag({IntEnergyStorage: {Count: 0 as long}}), [
		[<overloaded:nether_star_block>, null, <overloaded:nether_star_block>],
		[<overloaded:nether_star_block>, atmStarReturnOrb, <overloaded:nether_star_block>]
		]);
	<overloaded:multi_boots>.addTooltip("Does not consume the ATM Star when crafted");

	// RFTools Creative Powercell
	recipes.addShapedMirrored("CreativeRFToolsRF", <rftools:powercell_creative>, [
		[<rftools:powercell_advanced>, <rftools:powercell_card>, <rftools:powercell_advanced>],
		[<rftools:powercell_card>, atmStarReturnOrb, <rftools:powercell_card>],
		[<rftools:powercell_advanced>, <rftools:powercell_card>, <rftools:powercell_advanced>]
		]);
	<rftools:powercell_creative>.addTooltip("Does not consume the ATM Star when crafted");
	
	// Mek Energy Cube
	var creativeMekCube = <mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}});
	recipes.addShapedMirrored("CreativeCube", creativeMekCube, [
		[<mekanism:machineblock2:13>, <mekanism:energycube>, <mekanism:machineblock2:13>],
		[<mekanism:energycube>, atmStarReturnOrb, <mekanism:energycube>],
		[<mekanism:machineblock2:13>, <mekanism:energycube>, <mekanism:machineblock2:13>]
		]);
	creativeMekCube.addTooltip("Does not consume the ATM Star when crafted");
