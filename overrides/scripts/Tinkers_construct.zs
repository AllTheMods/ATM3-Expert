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



#add sand pickaxe

val sandMat = mods.contenttweaker.tconstruct.MaterialBuilder.create("vitrified_sand");
sandMat.color = 0xE8EEBB;
sandMat.craftable = true;
sandMat.liquid = <liquid:molten_sand>;
sandMat.castable = true;
sandMat.addHeadMaterialStats(100, 1.5f, 5.5f, 5);
sandMat.addHandleMaterialStats(0.3, 500);
sandMat.addBowStringMaterialStats(0.5f);
sandMat.register();

#meltable

mods.tconstruct.Melting.addRecipe(<liquid:molten_sand> * 1000,<extrautils2:compressedsand>, 400);
#alloys
mods.tconstruct.Alloy.addRecipe(<liquid:liquid_grout> * 144, [<liquid:molten_sand> * 72, <liquid:clay> * 72]);

# add casting basin recipe.

//mods.tconstruct.Casting.addBasinRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time)

mods.tconstruct.Casting.addBasinRecipe(<tconstruct:seared>,<minecraft:gravel>,<liquid:liquid_grout>,720,true,200);