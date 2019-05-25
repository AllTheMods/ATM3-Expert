import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import mods.atum.Kiln;
import mods.actuallyadditions.Empowerer;

#remove glass

mods.atum.Kiln.blacklist("minecraft:glass");
mods.atum.Kiln.blacklist("minecraft:cobblestone");

#change kiln

recipes.removeShaped(<atum:kiln>);
recipes.addShaped("CtKiln",<atum:kiln>,
[[<minecraft:sandstone>,<minecraft:sandstone>,<minecraft:sandstone>],
[<minecraft:sandstone>,null,<minecraft:sandstone>],
[<minecraft:sandstone>,<minecraft:sandstone>,<minecraft:sandstone>]]);

#remove limestone furnace
mods.jei.JEI.removeAndHide(<atum:limestone_furnace>);

#limestone bricks change
recipes.removeShaped(<atum:limestone_brick_small>);
recipes.addShaped("CtAtumSmallBrick",<atum:limestone_brick_small>,
[[<extrautils2:compressedsand>,<minecraft:clay_ball>]]);

#add porcelain
mods.atum.Kiln.addRecipe(<ceramics:unfired_clay:4>, <ceramics:unfired_clay:5>, 0.4);

#scarab
recipes.remove(<atum:scarab>);
mods.actuallyadditions.Empowerer.addRecipe(<atum:scarab>, <actuallyadditions:item_crystal_empowered:4>, <forge:bucketfilled>.withTag({FluidName: "liquid_death", Amount: 1000}), <contenttweaker:manadiamondplate>, <thermalfoundation:glass:3>, <ic2:itemmisc:257>, 150000, 2400);
