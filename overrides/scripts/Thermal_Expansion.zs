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

val = copper <thermalfoundation:material:128>
val = tin <thermalfoundation:material:129>
val = bronze <thermalfoundation:material:163>
val = stonegear <thermalfoundation:material:23>
val = ironplate <thermalfoundation:material:32>
val = iron <minecraft:iron_ingot>
#Override gear recipes removal and iron plate

#copper gear
recipes.removeShapeless(<thermalfoundation:material:256>, 
[[null, copper, null,
[copper, stonegear, copper],
[null, copper, null]]);

#bronze gear
recipes.removeShapeless(<thermalfoundation:material:291>,
[[null, bronze, null],
[bronze, stonegear, bronze],
[null, bronze, null]]);

#tin gear
recipes.removeShapeless(<thermalfoundation:material:257>,
[[null, tin, null],
[tin, stonegear, tin],
[null, tin, null]]);

#iron plate
recipes.removeShapeless(<thermalfoundation:material:32>,
[[iron, iron, iron],
[null, null, null],
[null, null, null]]);

#Charcoal
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<thermalfoundation:material:801>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<thermalfoundation:material:801>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<minecraft:log:3>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<minecraft:hay_block>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<minecraft:cactus>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<minecraft:reeds>);