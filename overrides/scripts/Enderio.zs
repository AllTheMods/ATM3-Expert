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

val bohrium = <alchemistry:ingot:107>;

#removals
mods.jei.JEI.removeAndHide(<enderio:block_simple_furnace>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_alloy_smelter>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_stirling_generator>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_sag_mill>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_wired_charger>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_crafter>);
mods.jei.JEI.removeAndHide(<enderio:block_solar_panel>);

#regular chassis
recipes.remove(<enderio:item_material>);
recipes.addShaped("CTeiosimpchassis", <enderio:item_material>, [[<enderio:block_dark_iron_bars>, <minecraft:iron_ingot>, <enderio:block_dark_iron_bars>],[<minecraft:iron_ingot>, <enderio:item_material:20>, <minecraft:iron_ingot>], [<enderio:block_dark_iron_bars>, <atmtweaks:item_material:2>, <enderio:block_dark_iron_bars>]]);

#end machine chassis
recipes.remove(<enderio:item_material:66>);
mods.alchemistry.Combiner.addRecipe(<enderio:item_material:66> *2,
[<plustic:mirioningot>, <enderio:item_alloy_ingot:8>, <alchemistry:ingot:107>,<enderio:item_alloy_ingot:8>, <enderio:item_material:1> *2, <enderio:item_alloy_ingot:8>, <alchemistry:ingot:107>, <enderio:item_alloy_ingot:8>, <plustic:mirioningot>]);

#capactitors maybe temp
recipes.remove(<enderio:item_basic_capacitor:2>);
recipes.remove(<enderio:item_basic_capacitor:1>);
recipes.remove(<enderio:item_basic_capacitor>);
recipes.addShaped("eiocap3", <enderio:item_basic_capacitor:2>, [[null, <enderio:item_alloy_ingot:2>, null],[<enderio:item_basic_capacitor:1>, <astralsorcery:itemusabledust>, <enderio:item_basic_capacitor:1>], [null, <enderio:item_alloy_ingot:2>, null]]);
recipes.addShaped("eiocap2", <enderio:item_basic_capacitor:1>, [[null, <alchemistry:ingot:107>, null],[<enderio:item_basic_capacitor>, <immersiveengineering:material:17>, <enderio:item_basic_capacitor>], [null, <alchemistry:ingot:107>, null]]);
recipes.addShaped("eiocap1", <enderio:item_basic_capacitor>, [[null, <actuallyadditions:item_crystal>, null],[<actuallyadditions:item_crystal>, <alchemistry:ingot:3>, <actuallyadditions:item_crystal>], [<enderio:item_material:20>, <alchemistry:ingot:3>, <enderio:item_material:20>]]);

#conduits
recipes.remove(<enderio:item_power_conduit:2>);
recipes.remove(<enderio:item_power_conduit:1>);
recipes.remove(<enderio:item_power_conduit>);
recipes.addShaped("eioenergy3", <enderio:item_power_conduit:2> * 3, [[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],[<thermaldynamics:duct_0:3>, <enderio:item_alloy_ingot:2>, <thermaldynamics:duct_0:3>], [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);
recipes.addShaped("eioenergy2", <enderio:item_power_conduit:1> * 3, [[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],[<thermaldynamics:duct_0:2>, <enderio:item_alloy_ingot:1>, <thermaldynamics:duct_0:2>], [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);
recipes.addShaped("eioenergy1", <enderio:item_power_conduit> * 3, [[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],[<thermaldynamics:duct_0>, <enderio:item_alloy_ingot:4>, <thermaldynamics:duct_0>], [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);
