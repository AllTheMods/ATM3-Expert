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

print("modular machinery recipes");

#machine controller
recipes.remove(<modularmachinery:blockcontroller>);
recipes.addShaped("CTmmcontroller", <modularmachinery:blockcontroller>, [[<thermalfoundation:material:32>, <ic2:itemmisc:451>, <thermalfoundation:material:32>],[<thermalfoundation:material:355>, <ic2:blockmachinelv>, <thermalfoundation:material:355>], [<thermalfoundation:material:32>, <thermalfoundation:material:355>, <thermalfoundation:material:32>]]);

#tiny item in
recipes.remove(<modularmachinery:blockinputbus>);
recipes.addShaped("CTmmtinyitemi", <modularmachinery:blockinputbus>, [[<actuallyadditions:item_crystal:5>, <tconstruct:wooden_hopper>, <actuallyadditions:item_crystal:5>],[<minecraft:redstone>, <tconstruct:wooden_hopper>, <minecraft:redstone>], [<actuallyadditions:item_crystal:5>, <minecraft:redstone>, <actuallyadditions:item_crystal:5>]]);

#tiny item swap
recipes.remove(<modularmachinery:blockoutputbus>);
recipes.addShapeless(<modularmachinery:blockinputbus>, [<modularmachinery:blockoutputbus>]);
recipes.addShapeless(<modularmachinery:blockoutputbus>, [<modularmachinery:blockinputbus>]);

#tiny fluid in
recipes.remove(<modularmachinery:blockfluidinputhatch>);
recipes.addShaped("CTtinyfluidi", <modularmachinery:blockfluidinputhatch>, [[<actuallyadditions:item_crystal:5>, <minecraft:bucket>, <actuallyadditions:item_crystal:5>],[<minecraft:redstone>, <minecraft:bucket>, <minecraft:redstone>], [<actuallyadditions:item_crystal:5>, <minecraft:redstone>, <actuallyadditions:item_crystal:5>]]);

#tiny fluid swap
recipes.remove(<modularmachinery:blockfluidoutputhatch>);
recipes.addShapeless(<modularmachinery:blockfluidoutputhatch>, [<modularmachinery:blockfluidinputhatch>]);
recipes.addShapeless(<modularmachinery:blockfluidinputhatch>, [<modularmachinery:blockfluidoutputhatch>]);

#tiny energy in
recipes.remove(<modularmachinery:blockenergyinputhatch>);
recipes.addShaped(<modularmachinery:blockenergyinputhatch>, [[<actuallyadditions:item_crystal:5>, <ic2:itembatre>.anyDamage(), <actuallyadditions:item_crystal:5>],[<minecraft:redstone>, <ic2:itembatre>.anyDamage(), <minecraft:redstone>], [<actuallyadditions:item_crystal:5>, <minecraft:redstone>, <actuallyadditions:item_crystal:5>]]);

#tiny energy swap
recipes.remove(<modularmachinery:blockenergyoutputhatch>);
recipes.addShapeless(<modularmachinery:blockenergyinputhatch>, [<modularmachinery:blockenergyoutputhatch>.anyDamage()]);
recipes.addShapeless(<modularmachinery:blockenergyoutputhatch>, [<modularmachinery:blockenergyinputhatch>.anyDamage()]);

#machine vent
recipes.addShaped(<modularmachinery:blockcasing:1> * 2, [[<ic2:blockutility:2>, <minecraft:iron_bars>, <ic2:blockutility:2>],[<thermalfoundation:glass:3>, <minecraft:iron_bars>, <thermalfoundation:glass:3>], [<ic2:blockutility:2>, <minecraft:iron_bars>, <ic2:blockutility:2>]]);
