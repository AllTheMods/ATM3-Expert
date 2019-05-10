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
import mods.jei.JEI.removeAndHide;

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
#recipes.removeShaped(<tconstruct:pattern>);
#mods.tconstruct.Drying.addRecipe(<tconstruct:pattern>,<tconstruct:pattern>, 300);



#add sand pickaxe

val sandMat = mods.contenttweaker.tconstruct.MaterialBuilder.create("vitrified_sand");
sandMat.color = 0xE8EEBB;
sandMat.craftable = true;
sandMat.liquid = <liquid:molten_sand>;
sandMat.castable = true;
sandMat.addHeadMaterialStats(100, 5.5f, 5.5f,2);
sandMat.addHandleMaterialStats(0.3, 500);
sandMat.addBowStringMaterialStats(0.5f);
sandMat.register();

#meltable

mods.tconstruct.Melting.addRecipe(<liquid:molten_sand> * 1000,<extrautils2:compressedsand>, 400);
mods.tconstruct.Melting.removeRecipe(<liquid:clay>);
mods.tconstruct.Melting.addRecipe(<liquid:clay> * 144,<minecraft:clay_ball>, 350);
mods.tconstruct.Melting.addRecipe(<liquid:clay> * 576,<minecraft:clay>, 400);
#alloys
#liquid grout
mods.tconstruct.Alloy.addRecipe(<liquid:liquid_grout> * 144, [<liquid:molten_sand> * 72, <liquid:clay> * 72]);

#soldering alloy
mods.tconstruct.Alloy.addRecipe(<liquid:soldering_alloy> * 500, [<liquid:tin> * 144, <liquid:lead> * 144, <liquid:silver> * 144]);

# add casting basin recipe.

//mods.tconstruct.Casting.addBasinRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time)

mods.tconstruct.Casting.addBasinRecipe(<tconstruct:seared>,<minecraft:gravel>,<liquid:liquid_grout>,720,true,200);

#Tinkers' Tables
recipes.removeShaped(<tconstruct:tooltables:*>);

recipes.addShaped("CtPatternChest",<tconstruct:tooltables:4>,
[[<ore:chestWood>,<ore:chestWood>,<ore:chestWood>],
[<ore:logWood>,<tconstruct:pattern>,<ore:logWood>],
[<ore:logWood>,null,<ore:logWood>]]);

recipes.addShaped("CtToolStation",<tconstruct:tooltables:3>,
[[<tconstruct:tooltables>,<tconstruct:tooltables>,<tconstruct:tooltables>],
[<ore:logWood>,<tconstruct:pattern>,<ore:logWood>],
[<ore:logWood>,null,<ore:logWood>]]);

recipes.addShaped("CtPartBuilder",<tconstruct:tooltables:2>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}),
[[<tconstruct:pattern>,<minecraft:planks>,<tconstruct:pattern>],
[<ore:logWood>,<ore:logWood>,<ore:logWood>],
[<ore:logWood>,null,<ore:logWood>]]);

recipes.addShaped("CtStencilTable",<tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 0 as short}}),
[[<tconstruct:pattern>,<tconstruct:pattern>,<tconstruct:pattern>],
[<minecraft:planks>,<minecraft:planks>,<minecraft:planks>],
[<minecraft:planks>,null,<minecraft:planks>]]);

#Changing Tinkers Forge
recipes.removeShaped(<tconstruct:toolforge>.withTag({textureBlock: {id: "minecraft:iron_block", Count: 1 as byte, Damage: 0 as short}}));
recipes.addShaped("CtToolForge",<tconstruct:toolforge>.withTag({textureBlock: {id: "minecraft:iron_block", Count: 1 as byte, Damage: 0 as short}}),
[[<actuallyadditions:block_crystal_empowered:3>,<actuallyadditions:block_crystal_empowered:3>,<actuallyadditions:block_crystal_empowered:3>],
[<actuallyadditions:block_crystal_empowered:5>,<tconstruct:tooltables:3>,<actuallyadditions:block_crystal_empowered:5>],
[<actuallyadditions:block_crystal_empowered:5>,null,<actuallyadditions:block_crystal_empowered:5>]]);

#changing Seared items recipes.
recipes.removeShaped(<tconstruct:smeltery_io>);
recipes.removeShaped(<tconstruct:casting:1>);
recipes.removeShaped(<tconstruct:casting>);
recipes.removeShaped(<tconstruct:faucet>);
recipes.removeShaped(<tconstruct:seared_tank>);
recipes.removeShaped(<tconstruct:channel>);
recipes.removeShaped(<tcomplement:alloy_tank>);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:faucet>,<ceramics:faucet>,<liquid:liquid_grout>,288,true,200);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:casting:1>,<tcomplement:porcelain_casting:1>,<liquid:liquid_grout>,288,true,200);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:casting>,<tcomplement:porcelain_casting>,<liquid:liquid_grout>,288,true,200);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:seared_tank>,<tcomplement:porcelain_tank>,<liquid:liquid_grout>,288,true,200);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:smeltery_io>,<ceramics:clay_hard>,<liquid:liquid_grout>,288,true,200);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:channel>,<ceramics:channel>,<liquid:liquid_grout>,288,true,200);
mods.tconstruct.Casting.addBasinRecipe(<tcomplement:alloy_tank>,<tcomplement:porcelain_alloy_tank>,<liquid:liquid_grout>,288,true,200);

#slime boots
recipes.remove(<tconstruct:slime_boots>);
recipes.addShaped("CTtcbootsgreen", <tconstruct:slime_boots>, [[null, null, null],[<ic2:itemmisc:450>, <ic2:itemmisc:254>, <ic2:itemmisc:450>], [<tconstruct:slime>, <ic2:itemarmorrubboots>, <tconstruct:slime>]]);
mods.jei.JEI.removeAndHide(<tconstruct:slime_boots:1>);
mods.jei.JEI.removeAndHide(<tconstruct:slime_boots:2>);
mods.jei.JEI.removeAndHide(<tconstruct:slime_boots:3>);
mods.jei.JEI.removeAndHide(<tconstruct:slime_boots:4>);

#slimesling
recipes.remove(<tconstruct:slimesling>);
recipes.addShaped(<tconstruct:slimesling>, [[<actuallyadditions:item_crystal:2>, <tconstruct:slime>, <actuallyadditions:item_crystal:2>],[<minecraft:slime_ball>, null, <minecraft:slime_ball>], [null, <minecraft:slime_ball>, null]]);
mods.jei.JEI.removeAndHide(<tconstruct:slimesling:1>);
mods.jei.JEI.removeAndHide(<tconstruct:slimesling:2>);
mods.jei.JEI.removeAndHide(<tconstruct:slimesling:3>);
mods.jei.JEI.removeAndHide(<tconstruct:slimesling:4>);