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