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

#recipes that are apart of the mod
#removals//black iron script is located in immersiveengineering due to the imports, luminessence in modular machinery json
mods.jei.JEI.removeAndHide(<extendedcrafting:table_basic>);
recipes.remove(<extendedcrafting:material>);
recipes.remove(<extendedcrafting:table_advanced>);
recipes.remove(<extendedcrafting:material:7>);

#extended crafting t2 table
recipes.addShaped(<extendedcrafting:table_advanced>, [[<extendedcrafting:material:36>, <extendedcrafting:material:9>, <extendedcrafting:material:36>],[<extendedcrafting:material:15>, <extrautils2:crafter>, <extendedcrafting:material:15>], [<extendedcrafting:material:36>, <extendedcrafting:material:15>, <extendedcrafting:material:36>]]);

#extra recipe for black iron
mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:material>, [
	[null, null, <actuallyadditions:item_misc:10>, null, null], 
	[null, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, null], 
	[<actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <immersiveengineering:material:19>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>], 
	[null, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, <actuallyadditions:item_misc:10>, null], 
	[null, null, <immersiveengineering:material:6>, null, null]
]);

#luminessence
mods.bloodtransmutation.transmutation.addRecipe(2, 500, <minecraft:glowstone_dust>, <extendedcrafting:material:7>);

#temp
recipes.addShaped(<modularmachinery:itemblueprint>, [[<actuallyadditions:item_misc:5>, <actuallyadditions:item_misc:5>, <actuallyadditions:item_misc:5>],[<thermalfoundation:material:1025>, <actuallyadditions:item_misc:5>, <thermalfoundation:material:1025>], [<actuallyadditions:item_misc:5>, <actuallyadditions:item_misc:5>, <actuallyadditions:item_misc:5>]]);
