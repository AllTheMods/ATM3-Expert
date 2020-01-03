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
import mods.advancedrocketry.PrecisionAssembler;

#will be sorted later
recipes.remove(<libvulpes:holoprojector>);
recipes.remove(<advancedrocketry:satelliteprimaryfunction>);
recipes.remove(<libvulpes:hatch>);
recipes.remove(<libvulpes:hatch:1>);
recipes.addShaped(<libvulpes:holoprojector>, [[null, <ic2:itemmisc:264>, null],[<bloodmagic:slate:3>, <advancedrocketry:satelliteprimaryfunction>, <bloodmagic:slate:3>], [<advancedrocketry:satelliteprimaryfunction>, <contenttweaker:elementiumprocessor>, <advancedrocketry:satelliteprimaryfunction>]]);
recipes.addShaped(<advancedrocketry:satelliteprimaryfunction>, [[<thermalfoundation:glass:6>, <thermalfoundation:glass:6>, <thermalfoundation:glass:6>],[<mekanism:ingot:1>, <alchemistry:ingot:60>, <mekanism:ingot:1>], [<alchemistry:ingot:60>, <contenttweaker:elementiumprocessor>, <alchemistry:ingot:60>]]);
recipes.addShaped(<libvulpes:hatch:1>, [[<ic2:itemmisc:202>, <thermaldynamics:servo:4>, <ic2:itemmisc:202>],[<mekanism:ingot:1>, <libvulpes:structuremachine>, <mekanism:ingot:1>], [<ic2:itemmisc:264>, <bloodmagic:slate:3>, <ic2:itemmisc:264>]]);
recipes.addShaped(<libvulpes:hatch>, [[<ic2:itemmisc:202>, <thermaldynamics:filter:4>, <ic2:itemmisc:202>],[<mekanism:ingot:1>, <libvulpes:structuremachine>, <mekanism:ingot:1>], [<ic2:itemmisc:264>, <bloodmagic:slate:3>, <ic2:itemmisc:264>]]);

#ADVANCED ROCKETRY
recipes.remove(<libvulpes:structuremachine>);
recipes.addShaped(<libvulpes:structuremachine>,
 [[<mekanism:polyethene:2>, <mekanism:controlcircuit:3>, <mekanism:polyethene:2>],
 [<contenttweaker:elementiumprocessor>, <ic2:blockmachinemv>, <contenttweaker:quartzingot>],
 [<mekanism:polyethene:2>, <ic2:itemmisc:451>, <mekanism:polyethene:2>]]);
 recipes.remove(<advancedrocketry:platepress>);

#precision assembler = very broken
recipes.addShaped(<advancedrocketry:dataunit>, [[<minecraft:emerald>, <ic2:itemmisc:202>, null],[<minecraft:redstone>, <minecraft:emerald>, null], [null, null, null]]);
recipes.addShaped(<advancedrocketry:itemcircuitplate>, [[<minecraft:redstone>, <minecraft:gold_ingot>, null],[<minecraft:gold_ingot>, <ic2:itemmisc:202>, null], [null, null, null]]);
recipes.addShaped(<advancedrocketry:itemupgrade>, [[<minecraft:redstone>, <minecraft:redstone_torch>, <minecraft:redstone>],[<advancedrocketry:ic:3>, <ic2:itemmisc:202>, <advancedrocketry:ic>], [<minecraft:redstone>, <minecraft:redstone_torch>, <minecraft:redstone>]]);
recipes.addShaped(<advancedrocketry:ic:1>, [[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],[<minecraft:ender_eye>, <ic2:itemmisc:202>, <advancedrocketry:itemcircuitplate>], [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]]);
recipes.addShaped(<thermalexpansion:augment:576>, [[<minecraft:redstone>, <minecraft:glass>, <minecraft:redstone>],[<minecraft:glass>, <extrautils2:drum>, <minecraft:glass>], [<minecraft:redstone>, <thermalfoundation:material:256>, <minecraft:redstone>]]);

mods.advancedrocketry.PrecisionAssembler.removeRecipe(<advancedrocketry:ic:3>);
mods.advancedrocketry.PrecisionAssembler.removeRecipe(<advancedrocketry:ic:3>);
mods.advancedrocketry.PrecisionAssembler.removeRecipe(<advancedrocketry:ic:4>);
mods.advancedrocketry.PrecisionAssembler.removeRecipe(<advancedrocketry:ic:4>);
mods.advancedrocketry.PrecisionAssembler.removeRecipe(<advancedrocketry:ic:5>);
mods.advancedrocketry.PrecisionAssembler.removeRecipe(<advancedrocketry:ic:5>);
mods.advancedrocketry.PrecisionAssembler.addRecipe(<advancedrocketry:ic:3>*1, 200, 10, <thermalfoundation:material:352>*1, <thermalfoundation:material:320>*1, <minecraft:redstone>*1);
mods.advancedrocketry.PrecisionAssembler.addRecipe(<advancedrocketry:ic:4>*1, 200, 10, <thermalfoundation:material:352>*1, <thermalfoundation:material:33>*1, <minecraft:redstone>*1);
mods.advancedrocketry.PrecisionAssembler.addRecipe(<advancedrocketry:ic:5>*1, 200, 10, <thermalfoundation:material:352>*1, <minecraft:dye:4>*1, <minecraft:redstone>*1);
#output, ticks, rf/t, inputs
