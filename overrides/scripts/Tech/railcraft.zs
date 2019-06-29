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

print("railcraft");

#crusher
recipes.remove(<railcraft:rock_crusher>);
recipes.addShaped("CTrailcrusher", <railcraft:rock_crusher> * 6, 
[[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>],
[<ic2c_extras:refinedironblock>, <ic2:blockmachinelv:3>, <ic2c_extras:refinedironblock>], 
[<ic2:itemmisc:53>, <ic2:itemmisc:53>, <ic2:itemmisc:53>]]);

#fireboxes
recipes.remove(<railcraft:boiler_firebox_solid>);
recipes.remove(<railcraft:boiler_firebox_fluid>);
recipes.addShaped(<railcraft:boiler_firebox_solid>, [[<ic2:itemmisc:53>, <ic2:itemmisc:53>, <ic2:itemmisc:53>],[<ic2:itemmisc:53>, <minecraft:furnace>, <ic2:itemmisc:53>], [<ic2:itemmisc:53>, <thermalfoundation:material:256>, <ic2:itemmisc:53>]]);
recipes.addShaped(<railcraft:boiler_firebox_fluid>, [[<ic2:itemmisc:53>, <ic2:itemmisc:53>, <ic2:itemmisc:53>],[<ic2:itemmisc:53>, <thermalexpansion:tank>, <ic2:itemmisc:53>], [<ic2:itemmisc:53>, <thermalfoundation:material:256>, <ic2:itemmisc:53>]]);
