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
import mods.thermalexpansion.RedstoneFurnace;

print("Thermal expansion changes");

val copper = <thermalfoundation:material:128>;
val tin = <thermalfoundation:material:129>;
val bronze = <thermalfoundation:material:163>;
val stonegear = <thermalfoundation:material:23>;
val ironplate = <thermalfoundation:material:32>;
val iron = <minecraft:iron_ingot>;
#Override gear recipes removal and iron plate

#compactor removal
recipes.removeShaped(<thermalexpansion:machine:5>);
mods.jei.JEI.hide(<thermalexpansion:machine:5>);
mods.jei.JEI.hideCategory("thermalexpansion.compactor");
mods.jei.JEI.hideCategory("thermalexpansion.compactor_mint");
mods.jei.JEI.hideCategory("thermalexpansion.compactor_gear");

#copper gear
recipes.removeShaped(<thermalfoundation:material:256>);

#bronze gear
recipes.removeShaped(<thermalfoundation:material:291>);

#tin gear
recipes.removeShaped(<thermalfoundation:material:257>);

#iron gear
recipes.removeShaped(<thermalfoundation:material:24>);

#Charcoal
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<thermalfoundation:material:801>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<thermalfoundation:material:801>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<minecraft:log:3>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<minecraft:hay_block>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<minecraft:cactus>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<minecraft:reeds>);
