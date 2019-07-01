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
import mods.astralsorcery.Altar;
import mods.astralsorcery.LightTransmutation;

#starlight altar
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2", <astralsorcery:blockaltar:1>, 200, 200, [
<astralsorcery:blockmarble:2>, <astralsorcery:itemcraftingcomponent>, <astralsorcery:blockmarble:2>,
null, <liquid:astralsorcery.liquidstarlight>, null,
<astralsorcery:blockmarble:2>, <botania:rune:8>, <astralsorcery:blockmarble:2>]);

#luminous altar 
recipes.remove(<astralsorcery:blockaltar>);
recipes.addShaped("CTlumincrafter", <astralsorcery:blockaltar>, [[<astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>],[<ore:relic>, <astralsorcery:blockmarble:4>, <ore:relic>], [<astralsorcery:blockmarble:4>, <ore:stoneMarble>, <astralsorcery:blockmarble:4>]]);

#Sooty stoneMarble
recipes.remove(<astralsorcery:blockblackmarble>);
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_black_raw");
recipes.addShaped("CTSootyMarble", <astralsorcery:blockblackmarble>,
    [[<ore:stoneMarble>,<ore:stoneMarble>, <ore:stoneMarble>],
    [<ore:stoneMarble>, <ore:dustQuartzBlack>, <ore:stoneMarble>],
    [<ore:stoneMarble>,<ore:stoneMarble>,<ore:stoneMarble>]]);

mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/marble_black_raw", <astralsorcery:blockblackmarble>, 10, 10, [
	<ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>,
	<ore:stoneMarble>, <ore:dustQuartzBlack>, <ore:stoneMarble>,
	<ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>]);

#Glass Lens 
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/glasslens");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/glasslens", <astralsorcery:itemcraftingcomponent:3>, 20, 20, [
	null, <botania:managlasspane>, null,
	<botania:managlasspane>, <astralsorcery:itemcraftingcomponent>, <botania:managlasspane>,
	null, <botania:managlasspane>, null]);

#Death to Cave Illuminator
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminator");

#Looking Glass
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/handtelescope");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/handtelescope", <astralsorcery:itemhandtelescope>, 40, 30, [
	null, <thaumcraft:plank_greatwood>, <astralsorcery:itemcraftingcomponent:3>,
	<ore:livingwoodTwig>, <ore:plateGold>, <ore:livingwoodTwig>,
	<astralsorcery:itemcraftingcomponent:3>, <thaumcraft:plank_greatwood>, null]);

#Grindstone
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/grindstone");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/grindstone", <astralsorcery:blockmachine:1>, 30, 20, [
	null, null, null,
	null, <ore:stoneMarble>, <thaumcraft:plank_greatwood>,
	<ore:livingwoodTwig>, <ore:livingwoodTwig>, <thaumcraft:plank_greatwood>]);

#Sextant
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/sextant");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/sextant", <astralsorcery:itemsextant>.withTag({astralsorcery: {}}), 30, 20, [
	null, <astralsorcery:itemcraftingcomponent:3>, null,
	<ore:plateGold>, <astralsorcery:itemcraftingcomponent:3>, <ore:plateGold>,
	<ore:livingwoodTwig>, <ore:livingwoodTwig>, <ore:livingwoodTwig>]);

#Fosic Resonator
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/skyresonator");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/skyresonator", <astralsorcery:itemskyresonator>.withTag({astralsorcery: {}}), 50, 50, [
	null, <astralsorcery:itemcraftingcomponent>, null,
	<astralsorcery:blockmarble>, <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}), <astralsorcery:blockmarble>,
	null, <ore:plateGold>, null]);

#Spectral Relay
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/attunementrelay");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/attunementrelay", <astralsorcery:blockattunementrelay>, 50, 50, [
	null, null, null,
	<atum:coin_gold>, <astralsorcery:itemcraftingcomponent:3>, <atum:coin_gold>,
	<thaumcraft:plank_greatwood>, <ore:stoneMarble>, <thaumcraft:plank_greatwood>]);

#Telescope
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/telescope");	
mods.astralsorcery.Altar.addAttunmentAltarRecipe("astralsorcery:shaped/internal/altar/telescope", <astralsorcery:blockmachine>, 500, 300, [
            null, <astralsorcery:itemhandtelescope>, null,
            <ore:plateThaumium>, <thaumcraft:plank_greatwood>, <ore:plateThaumium>,
            <ore:livingwoodTwig>, null, <ore:livingwoodTwig>,
            null, null, <ore:livingwoodTwig>, <ore:livingwoodTwig>]);


#Mantle of the Stars
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/capebase");
mods.astralsorcery.Altar.addTraitAltarRecipe("astralsorcery:shaped/internal/altar/capebase", <astralsorcery:itemcape>, 4500, 100, 
			[<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>,
            <botania:manaresource:4>, <botania:elementiumchest>, <botania:manaresource:4>,
            <mekanism:ingot:1>, <mekanism:ingot:1>, <mekanism:ingot:1>,
            <enderio:item_basic_capacitor:2>, <enderio:item_basic_capacitor:2>, <enderio:item_basic_capacitor:2>, <enderio:item_basic_capacitor:2>,
            null, null,
            <bloodmagic:slate:3>, <bloodmagic:slate:3>,
            <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:2>,
            null, null,
            null, <bloodmagic:slate:3>,
            <bloodmagic:slate:3>, null,
            <botania:manaresource:7>, <astralsorcery:itemusabledust:1>, <botania:manaresource>, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemusabledust>]);


#Mantle Discidia
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/cape/att/discidia");
mods.astralsorcery.Altar.addTraitAltarRecipe("astralsorcery:shaped/internal/cape/att/discidia", <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.discidia"}}), 4500, 100, 
			[null, <thaumcraft:turret:1>, null,
            <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcape>, <astralsorcery:itemcraftingcomponent:1>,
            <astralsorcery:itemcraftingcomponent:1>, null, <astralsorcery:itemcraftingcomponent:1>,
            <actuallyadditions:item_misc:19>, <actuallyadditions:item_misc:19>, <actuallyadditions:item_misc:19>, <actuallyadditions:item_misc:19>,
            null, null,
            null, null,
            <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.discidia"}}), <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.discidia"}}),
	    	<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.discidia"}}), <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.discidia"}}),
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemcraftingcomponent:4>, <extrautils2:opinium:5>, <astralsorcery:itemcraftingcomponent:4>,  <extrautils2:opinium:5>],
			"astralsorcery.constellation.discidia");

#Mantle Armara
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/cape/att/armara");
mods.astralsorcery.Altar.addTraitAltarRecipe("astralsorcery:shaped/internal/cape/att/armara", <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.armara"}}), 4500, 100, [
            null, <ic2:itemarmornanochestplate>.withTag({charge: 100000}), null,
            <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcape>, <astralsorcery:itemcraftingcomponent:1>,
            <astralsorcery:itemcraftingcomponent:1>, null, <astralsorcery:itemcraftingcomponent:1>,
            <extendedcrafting:material:40>, <extendedcrafting:material:40>, <extendedcrafting:material:40>, <extendedcrafting:material:40>,
            null, null,
            null, null,
            <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.armara"}}), <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.armara"}}),
	    	<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.armara"}}), <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.armara"}}),
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemcraftingcomponent:4>, <extrautils2:opinium:5>, <astralsorcery:itemcraftingcomponent:4>,  <extrautils2:opinium:5>],
			"astralsorcery.constellation.armara");            

#Mantle Vicio
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/cape/att/vicio");
mods.astralsorcery.Altar.addTraitAltarRecipe("astralsorcery:shaped/internal/cape/att/vicio", <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.vicio"}}), 4500, 100, [
            null, <extrautils2:angelring>, null,
            <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcape>, <astralsorcery:itemcraftingcomponent:1>,
            <astralsorcery:itemcraftingcomponent:1>, null, <astralsorcery:itemcraftingcomponent:1>,
            <botania:manaresource:14>, <botania:manaresource:14>, <botania:manaresource:14>, <botania:manaresource:14>,
            null, null,
            null, null,
            <draconicevolution:draconium_ingot>, <draconicevolution:draconium_ingot>,
	    	<draconicevolution:draconium_ingot>, <draconicevolution:draconium_ingot>,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemcraftingcomponent:4>, <draconicevolution:wyvern_core>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:blockcelestialcollectorcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.vicio", collectorType: 1}})],
			"astralsorcery.constellation.vicio");             
            
#Mantle Aevitas
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/cape/att/aevitas");
mods.astralsorcery.Altar.addTraitAltarRecipe("astralsorcery:shaped/internal/cape/att/aevitas", <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.aevitas"}}), 4500, 100, [
            null, <botania:overgrowthseed>, null,
            <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcape>, <astralsorcery:itemcraftingcomponent:1>,
            <astralsorcery:itemcraftingcomponent:1>, null, <astralsorcery:itemcraftingcomponent:1>,
            <botania:manaresource:4>, <botania:manaresource:4>, <botania:manaresource:4>, <botania:manaresource:4>,
            null, null,
            null, null,
            <botania:quartz:5>, <botania:quartz:5>,
	    	<botania:quartz:5>, <botania:quartz:5>,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemcraftingcomponent:4>, <botania:specialflower>.withTag({type: "gourmaryllis"}), <astralsorcery:itemcraftingcomponent:4>, <forestry:sapling>.withTag({IsAnalyzed: 0 as byte, Genome: {Chromosomes: [{UID1: "forestry.treeCocobolo", UID0: "forestry.treeCocobolo", Slot: 0 as byte}]}})],
			"astralsorcery.constellation.aevitas");            

#Mantle Evorsio
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/cape/att/evorsio");
mods.astralsorcery.Altar.addTraitAltarRecipe("astralsorcery:shaped/internal/cape/att/evorsio", <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.evorsio"}}), 4500, 100, [
            <atum:montus_blast>, null, <atum:montus_strike>,
            <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcape>, <astralsorcery:itemcraftingcomponent:1>,
            <astralsorcery:itemcraftingcomponent:1>, null, <astralsorcery:itemcraftingcomponent:1>,
            <botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>,
            null, null,
            null, null,
            <enderio:item_soul_vial:1>.withTag({entityId: "minecraft:creeper"}), <enderio:item_soul_vial:1>.withTag({entityId: "minecraft:creeper"}),
	    	<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:creeper"}), <enderio:item_soul_vial:1>.withTag({entityId: "minecraft:creeper"}),
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemcraftingcomponent:4>, <minecraft:tnt>, <astralsorcery:itemcraftingcomponent:4>, <minecraft:tnt>],
			"astralsorcery.constellation.evorsio");  
            
#Mantle Lucerna
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/cape/att/lucerna");
mods.astralsorcery.Altar.addTraitAltarRecipe("astralsorcery:shaped/internal/cape/att/lucerna", <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.lucerna"}}), 4500, 100, [
            null, <enderio:item_broken_spawner>.withTag({entityId: "minecraft:wither_skeleton"}), null,
            <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcape>, <astralsorcery:itemcraftingcomponent:1>,
            <astralsorcery:itemcraftingcomponent:1>, null, <astralsorcery:itemcraftingcomponent:1>,
            <mekanism:ingot:3>, <mekanism:ingot:3>, <mekanism:ingot:3>, <mekanism:ingot:3>,
            null, null,
            null, null,
            <enderio:item_soul_vial:1>.withTag({entityId: "thermalfoundation:blitz"}), <enderio:item_soul_vial:1>.withTag({entityId: "thermalfoundation:blitz"}),
	    	<enderio:item_soul_vial:1>.withTag({entityId: "thermalfoundation:blitz"}), <enderio:item_soul_vial:1>.withTag({entityId: "thermalfoundation:blitz"}),
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemcraftingcomponent:4>, <enderio:item_material:15>, <astralsorcery:itemcraftingcomponent:4>, <enderio:item_material:15>],
			"astralsorcery.constellation.lucerna");                 
 
#Mantle Mineralis
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/cape/att/mineralis");
mods.astralsorcery.Altar.addTraitAltarRecipe("astralsorcery:shaped/internal/cape/att/mineralis", <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.mineralis"}}), 4500, 100, [
            null, <thermalfoundation:ore:8>, null,
            <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcape>, <astralsorcery:itemcraftingcomponent:1>,
            <astralsorcery:itemcraftingcomponent:1>, null, <astralsorcery:itemcraftingcomponent:1>,
            <actuallyadditions:block_misc:2>, <actuallyadditions:block_misc:2>, <actuallyadditions:block_misc:2>, <actuallyadditions:block_misc:2>,
            null, null,
            null, null,
            <astralsorcery:blockcustomore:1>, <astralsorcery:blockcustomore:1>,
	    	<astralsorcery:blockcustomore:1>, <astralsorcery:blockcustomore:1>,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemcraftingcomponent:4>, <actuallyadditions:block_misc:3>, <astralsorcery:itemcraftingcomponent:4>, <actuallyadditions:block_misc:3>],
			"astralsorcery.constellation.mineralis");              
 
#Mantle Horologium
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/cape/att/horologium");
mods.astralsorcery.Altar.addTraitAltarRecipe("astralsorcery:shaped/internal/cape/att/horologium", <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.horologium"}}), 4500, 100, [
            null, <enderio:item_material:18>, null,
            <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcape>, <astralsorcery:itemcraftingcomponent:1>,
            <astralsorcery:itemcraftingcomponent:1>, null, <astralsorcery:itemcraftingcomponent:1>,
            <mekanism:ingot:1>, <mekanism:ingot:1>, <mekanism:ingot:1>, <mekanism:ingot:1>,
            null, null,
            null, null,
            <botania:hourglass>, <botania:hourglass>,
	    	<botania:hourglass>, <botania:hourglass>,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemcraftingcomponent:4>, <ic2:ic2upgrades:32>, null, <astralsorcery:itemcraftingcomponent:4>, <ic2:ic2upgrades:32>, null],
			"astralsorcery.constellation.horologium");              
 
#Mantle Octans
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/cape/att/octans");
mods.astralsorcery.Altar.addTraitAltarRecipe("astralsorcery:shaped/internal/cape/att/octans", <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.octans"}}), 4500, 100, [
            null, <enderio:item_material:56>, null,
            <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcape>, <astralsorcery:itemcraftingcomponent:1>,
            <astralsorcery:itemcraftingcomponent:1>, null, <astralsorcery:itemcraftingcomponent:1>,
            <alchemistry:ingot:93>, <alchemistry:ingot:93>, <alchemistry:ingot:93>, <alchemistry:ingot:93>,
            null, null,
            null, null  ,
            <thaumcraft:traveller_boots>, <thaumcraft:traveller_boots>,
	    	<thaumcraft:traveller_boots>, <thaumcraft:traveller_boots>,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemcraftingcomponent:4>, <minecraft:splash_potion>.withTag({Potion: "minecraft:long_water_breathing"}), <astralsorcery:itemcraftingcomponent:4>, <minecraft:splash_potion>.withTag({Potion: "minecraft:long_water_breathing"})],
			"astralsorcery.constellation.octans");              
 
#Mantle Bootes
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/cape/att/bootes");
mods.astralsorcery.Altar.addTraitAltarRecipe("astralsorcery:shaped/internal/cape/att/bootes", <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.bootes"}}), 4500, 100, [
            null, <enderio:item_broken_spawner>.withTag({entityId: "astralsorcery:entityflare"}), null,
            <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcape>, <astralsorcery:itemcraftingcomponent:1>,
            <astralsorcery:itemcraftingcomponent:1>, null, <astralsorcery:itemcraftingcomponent:1>,
            <extrautils2:ingredients:11>, <extrautils2:ingredients:11>, <extrautils2:ingredients:11>, <extrautils2:ingredients:11>,
            null, null,
            null, null,
            <enderio:item_soul_vial:1>.withTag({entityId: "astralsorcery:entityflare"}), <enderio:item_soul_vial:1>.withTag({entityId: "astralsorcery:entityflare"}),
	    	<enderio:item_soul_vial:1>.withTag({entityId: "astralsorcery:entityflare"}), <enderio:item_soul_vial:1>.withTag({entityId: "astralsorcery:entityflare"}),
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemcraftingcomponent:4>, null, null, <astralsorcery:itemcraftingcomponent:4>, null, null],
			"astralsorcery.constellation.bootes");              

#Mantle Fornax
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/cape/att/fornax");
mods.astralsorcery.Altar.addTraitAltarRecipe("astralsorcery:shaped/internal/cape/att/fornax", <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.fornax"}}), 4500, 100, [
            null, <actuallyadditions:item_potion_ring_advanced:6>.withTag({Blaze: 794}), null,
            <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcape>, <astralsorcery:itemcraftingcomponent:1>,
            <astralsorcery:itemcraftingcomponent:1>, null, <astralsorcery:itemcraftingcomponent:1>,
            <enderio:item_alloy_ingot:1>, <enderio:item_alloy_ingot:1>, <enderio:item_alloy_ingot:1>, <enderio:item_alloy_ingot:1>,
            null, null,
            null, null,
            <bloodmagic:component:1>, <bloodmagic:component:1>,
	    	<bloodmagic:component:1>, <bloodmagic:component:1>,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemcraftingcomponent:4>, <enderio:item_soul_vial:1>.withTag({entityId: "minecraft:blaze"}), <astralsorcery:itemcraftingcomponent:4>, <enderio:item_soul_vial:1>.withTag({entityId: "minecraft:blaze"})],
			"astralsorcery.constellation.fornax");        
			
#Mantle Pelotrio
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/cape/att/pelotrio");
mods.astralsorcery.Altar.addTraitAltarRecipe("astralsorcery:shaped/internal/cape/att/pelotrio", <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.pelotrio"}}), 4500, 100, [
            null, <botania:terrapick>, null,
            <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcape>, <astralsorcery:itemcraftingcomponent:1>,
            <astralsorcery:itemcraftingcomponent:1>, null, <astralsorcery:itemcraftingcomponent:1>,
            <thaumcraft:ingot:1>, <thaumcraft:ingot:1>, <thaumcraft:ingot:1>, <thaumcraft:ingot:1>,
            null, null,
            null, null,
            <thaumcraft:elemental_pick>, <thaumcraft:elemental_hoe>,
	    	<thaumcraft:elemental_sword>, <thaumcraft:elemental_axe>,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
            <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:primordial_pearl>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:primordial_pearl>],
			"astralsorcery.constellation.pelotrio"); 			

