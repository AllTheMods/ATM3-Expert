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
import mods.forestry.ThermionicFabricator;


#recipes that use the bigger tables
#growth essence
mods.extendedcrafting.TableCrafting.addShaped(0, <atmtweaks:item_material:1>, [
	[<ic2:itemmisc:157>, <extendedcrafting:material:7>, <extendedcrafting:material:7>, <extendedcrafting:material:7>, <ic2:itemmisc:157>], 
	[<extendedcrafting:material:7>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <extendedcrafting:material:7>], 
	[<extendedcrafting:material:7>, <actuallyadditions:item_crystal_empowered:4>, <minecraft:bone_block>, <actuallyadditions:item_crystal_empowered:4>, <extendedcrafting:material:7>], 
	[<extendedcrafting:material:7>, <minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>, <extendedcrafting:material:7>], 
	[<ic2:itemmisc:157>, <extendedcrafting:material:7>, <extendedcrafting:material:7>, <extendedcrafting:material:7>, <ic2:itemmisc:157>]
]);


#industrium ingot
mods.forestry.ThermionicFabricator.addCast(<atmtweaks:item_material:2> *3, 
[[<thermalfoundation:material:352>,<bloodmagic:slate:2>,<contenttweaker:manasteelplate>], 
[<astralsorcery:itemcraftingcomponent:1>,<appliedenergistics2:material:43>,<astralsorcery:itemcraftingcomponent:1>],
[<contenttweaker:manasteelplate>,<thermalfoundation:glass_alloy>,<thermalfoundation:material:352>]], 
<liquid: glass> * 1000);