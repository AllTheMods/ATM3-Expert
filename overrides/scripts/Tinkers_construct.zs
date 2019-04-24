import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.tconstruct.Casting;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import mods.tcomplement.Overrides;
import mods.tconstruct.Drying;

print("Tinkers tier 0 changes start here");

val searedStone = <ore:blockSeared>;

#seared furnace
recipes.removeShaped(<tconstruct:seared_furnace_controller>);
recipes.addShaped("CtSFurnace",<tconstruct:seared_furnace_controller>,
[[searedStone,searedStone,searedStone],
[searedStone,<minecraft:furnace>,searedStone],
[searedStone,searedStone,searedStone]]);

#smeltery controller
recipes.removeShaped(<tconstruct:smeltery_controller>);
recipes.addShaped("CtSmeltControl",<tconstruct:smeltery_controller>,
[[<minecraft:iron_ingot>,searedStone,<minecraft:iron_ingot>],
[searedStone,<tcomplement:porcelain_melter>,searedStone],
[<minecraft:iron_ingot>,<ore:blockTin>,<minecraft:iron_ingot>]]);

#patterns
recipes.removeShaped(<tconstruct:pattern>);
mods.tconstruct.Drying.addRecipe(<tconstruct:pattern>,<tconstruct:pattern>, 500);