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

val unfired = <ceramics:unfired_clay:4>;

#remove glass
mods.atum.Kiln.blacklist("minecraft:glass");

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

#porcerlain barrel  mods.tconstruct.Drying.addRecipe();
mods.tconstruct.Drying.addRecipe(<ceramics:porcelain_barrel>, <ceramics:clay_barrel_unfired:2>, 300);

#faucet
mods.tconstruct.Drying.addRecipe(<ceramics:faucet>, <ceramics:unfired_clay:6>, 300);

#channel
mods.tconstruct.Drying.addRecipe(<ceramics:channel>, <ceramics:unfired_clay:7>, 300);

#scarab
recipes.remove(<atum:scarab>);
mods.actuallyadditions.Empowerer.addRecipe(<atum:scarab>, <contenttweaker:manadiamondplate>, <forge:bucketfilled>.withTag({FluidName: "liquid_death", Amount: 1000}), <actuallyadditions:item_crystal_empowered:4>, <thermalfoundation:glass:3>, <thaumcraft:plate:2>, 150000, 2400);

#porcelain again
mods.tconstruct.Drying.addRecipe(<ceramics:unfired_clay:5>,unfired, 160);

#Royal Torches

recipes.remove(<atum:pharaoh_torch>);
recipes.addShaped("Ctphtorch",<atum:pharaoh_torch> * 4 ,
[[null, <minecraft:coal_block>, null],
[null, <atmtweaks:item_material:2>, null],
[null, null, null]]);