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
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.ArcFurnace;
val bohrium = <alchemistry:ingot:107>;

#dark steel
mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:item_alloy_ingot:6>, <thermalfoundation:material:160>, <immersiveengineering:material:18>, 200, 0, [<immersiveengineering:material:19>]);

#removals
mods.jei.JEI.removeAndHide(<enderio:block_simple_furnace>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_alloy_smelter>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_stirling_generator>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_sag_mill>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_wired_charger>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_crafter>);
mods.jei.JEI.removeAndHide(<enderio:block_solar_panel>);
recipes.remove(<enderio:block_cap_bank:3>);
recipes.remove(<enderio:block_cap_bank:2>);
recipes.remove(<enderio:block_cap_bank:1>);

#green dye powder
mods.immersiveengineering.BlastFurnace.addRecipe(<enderio:item_material:48> *4, <botania:overgrowthseed>, 1000, <enderio:item_material:50> *2);

#regular chassis
recipes.remove(<enderio:item_material>);
recipes.addShaped("CTeiosimpchassis", <enderio:item_material>, [[<enderio:block_dark_iron_bars>, <minecraft:iron_ingot>, <enderio:block_dark_iron_bars>],[<alchemistry:element:32>, <enderio:item_material:20>, <alchemistry:compound:22>], [<enderio:block_dark_iron_bars>, <atmtweaks:item_material:2>, <enderio:block_dark_iron_bars>]]);

#end machine chassis
recipes.remove(<enderio:item_material:66>);
mods.alchemistry.Combiner.addRecipe(<enderio:item_material:66> *2,
[<plustic:mirioningot>, <enderio:item_alloy_ingot:8>, <alchemistry:ingot:107>,<enderio:item_alloy_ingot:8>, <enderio:item_material:1> *2, <enderio:item_alloy_ingot:8>, <alchemistry:ingot:107>, <enderio:item_alloy_ingot:8>, <plustic:mirioningot>]);

#capactitors maybe temp
recipes.remove(<enderio:item_basic_capacitor:2>);
recipes.remove(<enderio:item_basic_capacitor:1>);
recipes.remove(<enderio:item_basic_capacitor>);
recipes.addShaped("eiocap3", <enderio:item_basic_capacitor:2>, [[null, <forestry:chipsets:3>.withTag({T: 3 as short}), null],[<enderio:item_basic_capacitor:1>, <astralsorcery:itemusabledust>, <enderio:item_basic_capacitor:1>], [null, <enderio:item_alloy_ingot:2>, null]]);
recipes.addShaped("eiocap2", <enderio:item_basic_capacitor:1>, [[null, <forestry:chipsets:1>.withTag({T: 1 as short}), null],[<enderio:item_basic_capacitor>, <immersiveengineering:material:17>, <enderio:item_basic_capacitor>], [null, <alchemistry:ingot:107>, null]]);
recipes.addShaped("eiocap1", <enderio:item_basic_capacitor>, [[null, <forestry:chipsets:1>.withTag({T: 1 as short}), null],[<actuallyadditions:item_crystal>, <alchemistry:ingot:3>, <actuallyadditions:item_crystal>], [<enderio:item_material:20>, <alchemistry:ingot:3>, <enderio:item_material:20>]]);

#conduits
recipes.remove(<enderio:item_power_conduit:2>);
recipes.remove(<enderio:item_power_conduit:1>);
recipes.remove(<enderio:item_power_conduit>);
recipes.addShaped("eioenergy3", <enderio:item_power_conduit:2> * 3, [[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],[<thermaldynamics:duct_0:3>, <enderio:item_alloy_ingot:2>, <thermaldynamics:duct_0:3>], [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);
recipes.addShaped("eioenergy2", <enderio:item_power_conduit:1> * 3, [[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],[<thermaldynamics:duct_0:2>, <enderio:item_alloy_ingot:1>, <thermaldynamics:duct_0:2>], [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);
recipes.addShaped("eioenergy1", <enderio:item_power_conduit> * 3, [[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],[<thermaldynamics:duct_0>, <enderio:item_alloy_ingot:4>, <thermaldynamics:duct_0>], [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);

#alloy furnace
recipes.remove(<enderio:block_alloy_smelter>);
recipes.addShaped(<enderio:block_alloy_smelter>, [[<enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>],[<ic2:blockmachinelv:1>, <enderio:item_material:1>, <ic2:blockmachinelv:1>], [<enderio:item_material:73>, <minecraft:cauldron>, <enderio:item_material:73>]]);

#sagmill
recipes.remove(<enderio:block_sag_mill>);
recipes.addShaped(<enderio:block_sag_mill>, [[<enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>],[<thermalfoundation:material:770>, <enderio:item_material:1>, <thermalfoundation:material:770>], [<enderio:item_material:73>, <minecraft:piston>, <enderio:item_material:73>]]);

#farming station
recipes.remove(<enderio:block_farm_station>);
recipes.addShaped(<enderio:block_farm_station>, [[<industrialforegoing:crop_recolector>, <enderio:item_material:12>, <industrialforegoing:crop_sower>],[<enderio:item_material:73>, <enderio:item_material:53>, <enderio:item_material:13>], [<alchemistry:ingot:24>, <alchemistry:ingot:24>, <alchemistry:ingot:24>]]);

#vat changes
recipes.remove(<enderio:block_enhanced_vat>);
recipes.remove(<enderio:block_vat>);
recipes.addShaped(<enderio:block_vat>, [[<enderio:item_material:73>, <enderio:item_alloy_ingot:8>, <enderio:item_material:73>],[<enderio:item_alloy_ingot:6>, <enderio:item_material:1>, <enderio:item_alloy_ingot:6>], [<enderio:item_alloy_ingot:6>, <enderio:item_material:13>, <enderio:item_alloy_ingot:6>]]);
recipes.addShapedMirrored(<enderio:block_enhanced_vat>, [[null, null, null],[<enderio:item_alloy_ingot:8>, <enderio:block_vat>, <enderio:item_alloy_ingot:8>], [<enderio:item_alloy_ingot:6>, <enderio:item_material:54>, <enderio:item_alloy_ingot:6>]]);

#Fluid Tank, this felt way too easy to have available so early on. So i put steel on it!
recipes.remove(<enderio:block_tank>);
recipes.addShaped(<enderio:block_tank>, 
	[[<thermalfoundation:material:160>, <minecraft:iron_bars>, <thermalfoundation:material:160>],
	[<minecraft:iron_bars>, <minecraft:glass>, <minecraft:iron_bars>], 
	[<thermalfoundation:material:160>, <minecraft:iron_bars>, <thermalfoundation:material:160>]]);

