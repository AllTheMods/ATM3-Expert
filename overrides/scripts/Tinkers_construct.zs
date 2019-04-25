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

print("Tinkers changes start here");

val searedStone = <ore:blockSeared>;
val tin = <thermalfoundation:material:129>;
val porcelainBrick = <ceramics:unfired_clay:5>;

#remove grout
recipes.removeShapeless(<tconstruct:soil>);

# porcelain melter
recipes.removeShaped(<tcomplement:porcelain_melter>);
recipes.addShaped("CtPorcsmelt",<tcomplement:porcelain_melter>,
[[null,porcelainBrick,null],
[porcelainBrick,<ceramics:porcelain_barrel>,porcelainBrick],
[porcelainBrick,porcelainBrick,porcelainBrick]]);

#porcelain heater
recipes.removeShaped(<tcomplement:porcelain_melter:8>);
recipes.addShaped("CtPorcHeater",<tcomplement:porcelain_melter:8>,
[[null,porcelainBrick,null],
[porcelainBrick,porcelainBrick,porcelainBrick],
[porcelainBrick,<atum:kiln>,porcelainBrick]]);

#porc alloy tank
recipes.removeShaped(<tcomplement:porcelain_alloy_tank>);
recipes.addShaped("CtPorcAlloy",<tcomplement:porcelain_alloy_tank>,
[[null,<ceramics:faucet>,null],
[<ceramics:porcelain_barrel>,null,<ceramics:porcelain_barrel>],
[null,<ceramics:faucet>,null]]);

#seared furnace
recipes.removeShaped(<tconstruct:seared_furnace_controller>);
recipes.addShaped("CtSFurnace",<tconstruct:seared_furnace_controller>,
[[searedStone,searedStone,searedStone],
[searedStone,<atum:kiln>,searedStone],
[searedStone,<atum:kiln>,searedStone]]);

#smeltery controller
recipes.removeShaped(<tconstruct:smeltery_controller>);
recipes.addShaped("CtSmeltControl",<tconstruct:smeltery_controller>,
[[<minecraft:brick>,searedStone,<minecraft:brick>],
[searedStone,<tcomplement:porcelain_melter>,searedStone],
[<minecraft:brick>, tin,<minecraft:brick>]]);

#patterns
recipes.removeShaped(<tconstruct:pattern>);
mods.tconstruct.Drying.addRecipe(<tconstruct:pattern>,<tconstruct:pattern>, 300);