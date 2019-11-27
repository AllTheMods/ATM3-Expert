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
import mods.jei.JEI.removeAndHide as removal;
import mods.botania.ManaInfusion;

#Basic tank
recipes.remove(<mekanism:machineblock2:11>);
recipes.addShaped(<mekanism:machineblock2:11>,
 [[<minecraft:redstone>, <minecraft:iron_ingot>, <minecraft:redstone>],
 [<mekanism:ingot:1>, <extrautils2:drum>, <mekanism:ingot:1>], 
 [<minecraft:redstone>, <minecraft:iron_ingot>, <minecraft:redstone>]]);

#induction cells
removal(<mekanism:basicblock2:4>);
removal(<mekanism:basicblock2:3>);

#universal cable
recipes.remove(<mekanism:transmitter:0>);
recipes.addShaped(<mekanism:transmitter>.withTag({tier: 0}) * 4, [[<ic2:itemcable:9>, <ic2:itemcable:9>, <ic2:itemcable:9>],[<mekanism:enrichedalloy>, <actuallyadditions:item_crystal_empowered>, <mekanism:enrichedalloy>], [<ic2:itemcable:9>, <ic2:itemcable:9>, <ic2:itemcable:9>]]);
recipes.addShaped(<mekanism:transmitter>.withTag({tier: 3}) * 8, [[<mekanism:transmitter>, <mekanism:transmitter>, <mekanism:transmitter>],[<mekanism:transmitter>, <mekanism:atomicalloy>, <mekanism:transmitter>], [<mekanism:transmitter>, <mekanism:transmitter>, <mekanism:transmitter>]]);
recipes.addShaped(<mekanism:transmitter>.withTag({tier: 2}) * 8, [[<mekanism:transmitter>, <mekanism:transmitter>, <mekanism:transmitter>],[<mekanism:transmitter>, <mekanism:reinforcedalloy>, <mekanism:transmitter>], [<mekanism:transmitter>, <mekanism:transmitter>, <mekanism:transmitter>]]);
recipes.addShaped(<mekanism:transmitter>.withTag({tier: 1}) * 8, [[<mekanism:transmitter>, <mekanism:transmitter>, <mekanism:transmitter>],[<mekanism:transmitter>, <mekanism:enrichedalloy>, <mekanism:transmitter>], [<mekanism:transmitter>, <mekanism:transmitter>, <mekanism:transmitter>]]);

#steel casing
recipes.remove(<mekanism:basicblock:8>);
mods.extendedcrafting.EnderCrafting.addShaped(<mekanism:basicblock:8>, [
	[<mekanism:ingot:1>, <botania:elfglass>, <thaumcraft:ingot>], 
	[<botania:elfglass>, <atmtweaks:item_material:2>, <botania:elfglass>], 
	[<thaumcraft:ingot>, <botania:elfglass>, <mekanism:ingot:1>]
]);

#osmium duplication
mods.botania.ManaInfusion.addConjuration(<mekanism:ingot:1> *2, <mekanism:ingot:1>, 25000);
recipes.addShaped("CTuuosmium", <mekanism:ingot:1> * 3, 
 [[<ic2:itemmisc:202>, <ic2:itemmisc:202>, <ic2:itemmisc:202>],
 [<ic2:itemmisc:202>, <mekanism:ingot:1>, <ic2:itemmisc:202>],
 [<ic2:itemmisc:202>, <ic2:itemmisc:202>, <ic2:itemmisc:202>]]);


#energised smelter 
recipes.remove(<mekanism:machineblock:10>);
recipes.addShaped("CTenergisedsmelter", <mekanism:machineblock:10>, 
 [[<mekanism:ingot:1>, <botania:manaresource:9>, <mekanism:ingot:1>],
 [<thermalfoundation:glass:3>, <mekanism:basicblock:8>, <thermalfoundation:glass:3>],
 [<immersiveengineering:wirecoil:5>, <mekanism:controlcircuit>, <immersiveengineering:wirecoil:5>]]);

 #metallurgic infuser
recipes.remove(<mekanism:machineblock:8>);
recipes.addShaped("CTmetallurgicinfuser", <mekanism:machineblock:8>, 
 [[<mekanism:ingot:1>, <ic2:blockmachinelv:1>, <mekanism:ingot:1>],
 [<immersiveengineering:wirecoil:5>, <mekanism:basicblock:8>, <immersiveengineering:wirecoil:5>], 
 [<mekanism:ingot:1>, <botania:elfglass>, <mekanism:ingot:1>]]);
