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

print("RF tools recipes");

#storage_scanner
recipes.remove(<rftools:storage_scanner>);
recipes.addShaped("CTsscaner", <rftools:storage_scanner>,
[[<minecraft:ender_pearl>, <contenttweaker:manadiamondplate>, <actuallyadditions:item_crystal>],
[<contenttweaker:manadiamondplate>, <thermalexpansion:frame>, <contenttweaker:manadiamondplate>], 
[<actuallyadditions:item_crystal>, <contenttweaker:manadiamondplate>, <minecraft:ender_pearl>]]);

#Modular storage
recipes.remove(<rftools:modular_storage>);
recipes.addShaped("CTSmodular", <rftools:modular_storage>,
[[<ore:chest>, <minecraft:quartz>, <ore:chest>],
[<minecraft:quartz>, <thermalexpansion:frame>, <minecraft:quartz>], 
[<contenttweaker:manadiamondplate>, <minecraft:quartz>, <contenttweaker:manadiamondplate>]]);

#coal gen
mods.jei.JEI.removeAndHide(<rftools:coalgenerator>);
mods.jei.JEI.removeAndHide(<rftools:powercell_simple>);

#machine frame
recipes.remove(<rftools:machine_frame>);
mods.forestry.ThermionicFabricator.addCast(<rftools:machine_frame>, 
[[<contenttweaker:coldironplate>,<thermalfoundation:glass_alloy>,<contenttweaker:coldironplate>], 
[<thermalfoundation:glass_alloy>,<thermalfoundation:material:512>,<thermalfoundation:glass_alloy>],
[<contenttweaker:coldironplate>,<thermalfoundation:glass_alloy>,<contenttweaker:coldironplate>]], 
<liquid: glass> * 400);

