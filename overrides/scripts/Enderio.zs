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

#removals
mods.jei.JEI.removeAndHide(<enderio:block_simple_furnace>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_alloy_smelter>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_stirling_generator>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_sag_mill>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_wired_charger>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_crafter>);
mods.jei.JEI.removeAndHide(<enderio:block_solar_panel>);

#end steel chassis
recipes.remove(<enderio:item_material:66>);
recipes.addShaped("CTeioendchassis", <enderio:item_material:66>, [[<plustic:mirioningot>, <enderio:item_alloy_ingot:8>, <alchemistry:ingot:107>],[<enderio:item_alloy_ingot:8>, <enderio:item_material:1>, <enderio:item_alloy_ingot:8>], [<alchemistry:ingot:107>, <enderio:item_alloy_ingot:8>, <plustic:mirioningot>]]);

#regular chassis
recipes.remove(<enderio:item_material>);
recipes.addShaped("CTeiosimpchassis", <enderio:item_material>, [[<enderio:block_dark_iron_bars>, <minecraft:iron_ingot>, <enderio:block_dark_iron_bars>],[<minecraft:iron_ingot>, <enderio:item_material:20>, <minecraft:iron_ingot>], [<enderio:block_dark_iron_bars>, <atmtweaks:item_material:2>, <enderio:block_dark_iron_bars>]]);
