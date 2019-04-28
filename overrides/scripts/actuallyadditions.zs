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

print("Actually additions changes");

#iron casing
recipes.remove(<actuallyadditions:block_misc:9>);
recipes.addShaped("CTironcasing", <actuallyadditions:block_misc:9>, 
[[<thermalfoundation:material:354>, <botania:managlasspane>, <thermalfoundation:material:354>],
[<botania:managlasspane>, <minecraft:glowstone>, <botania:managlasspane>], 
[<thermalfoundation:material:354>, <botania:managlasspane>, <thermalfoundation:material:354>]]);

#AAlaser relay
recipes.remove(<actuallyadditions:block_laser_relay>);
recipes.addShaped("CTAAlasers", <actuallyadditions:block_laser_relay> * 2, 
[[<minecraft:obsidian>, <minecraft:redstone_block>, <minecraft:obsidian>],
[<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_misc:8>, <actuallyadditions:item_crystal_empowered>], 
[<minecraft:obsidian>, <minecraft:redstone_block>, <minecraft:obsidian>]]);

