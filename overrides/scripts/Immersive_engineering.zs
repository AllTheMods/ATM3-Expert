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
import mods.immersiveengineering.CokeOven;

print("Immersive engineering changes");

#Engineer's Hammer
recipes.removeShaped(<immersiveengineering:tool>);
recipes.addShaped("CTImmersiveTool", <immersiveengineering:tool>,
[[null, <minecraft:iron_ingot>, <thermalfoundation:material:24>], 
 [null, <minecraft:stick>, <minecraft:iron_ingot>],
 [<minecraft:stick>, null, null]]);

 #Coke Brick
recipes.removeShaped(<immersiveengineering:stone_decoration>);
recipes.addShaped("CtRefined",<immersiveengineering:stone_decoration>,
[[<minecraft:clay_ball>,<minecraft:brick>,<minecraft:clay_ball>],
[<minecraft:brick>,<tconstruct:seared>,<minecraft:brick>],
[<minecraft:clay_ball>,<minecraft:brick>,<minecraft:clay_ball>]]);

#Charcoal from coke oven
mods.immersiveengineering.CokeOven.removeRecipe(<minecraft:coal:1>);

#mana diamond plate
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:manadiamondplate>, <botania:manaresource:2>, <immersiveengineering:mold>,1000);