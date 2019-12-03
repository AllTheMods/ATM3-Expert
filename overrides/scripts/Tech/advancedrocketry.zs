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
 
