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
mods.jei.JEI.removeAndHide(<extendedcrafting:material:128>);
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

#elite component
recipes.remove(<extendedcrafting:material:16>);
recipes.addShaped(<extendedcrafting:material:16>, [[<minecraft:diamond>, <botania:manaresource:18>, <minecraft:diamond>],[<botania:manaresource:18>, <extendedcrafting:material:2>, <botania:manaresource:18>], [<minecraft:diamond>, <extendedcrafting:material:7>, <minecraft:diamond>]]);

#luminessence
mods.bloodtransmutation.transmutation.addRecipe(3, 1000, <minecraft:glowstone_dust>, <extendedcrafting:material:7>);

#black iron
recipes.remove(<extendedcrafting:storage>);
recipes.addShapeless(<extendedcrafting:material> * 4, [<extendedcrafting:storage>]);
recipes.addShapedMirrored(<extendedcrafting:storage>, 
[[<extendedcrafting:material>, <extendedcrafting:material>, null],
[<extendedcrafting:material>, <extendedcrafting:material>,  null], 
[null,                     null,                           null]]);

#steel infused
recipes.remove(<extendedcrafting:trimmed>);
recipes.addShaped("irontrimmed", <extendedcrafting:trimmed>, 
[[<minecraft:iron_nugget>, <thermalfoundation:material:352>, <minecraft:iron_nugget>],
[<thermalfoundation:material:352>, <extendedcrafting:storage>, <thermalfoundation:material:352>], 
[<minecraft:iron_nugget>, <thermalfoundation:material:352>, <minecraft:iron_nugget>]]);
<extendedcrafting:trimmed>.addTooltip(format.gray("Steel infused"));

#Lumium Stamped
recipes.remove(<extendedcrafting:trimmed:1>);
recipes.addShaped(<extendedcrafting:trimmed:1>, 
[[<minecraft:gold_nugget>, <thermalfoundation:material:358>, <minecraft:gold_nugget>],
[<thermalfoundation:material:358>, <extendedcrafting:trimmed>, <thermalfoundation:material:358>], 
[<minecraft:gold_nugget>, <thermalfoundation:material:358>, <minecraft:gold_nugget>]]);
<extendedcrafting:trimmed:1>.addTooltip(format.yellow("Lumium Stamped"));

#Chemically Imbued
recipes.remove(<extendedcrafting:trimmed:2>);
recipes.addShaped(<extendedcrafting:trimmed:2>, 
[[<thermalfoundation:material:16>, <alchemistry:compound:53>, <thermalfoundation:material:16>],
[<alchemistry:compound:26>, <extendedcrafting:trimmed:1>, <alchemistry:compound:59>],
[<thermalfoundation:material:16>, <alchemistry:compound:58>, <thermalfoundation:material:16>]]);
<extendedcrafting:trimmed:2>.addTooltip(format.aqua("Chemically Imbued"));

#black iron frame
recipes.remove(<extendedcrafting:frame>);
recipes.addShaped(<extendedcrafting:frame>,
 [[<extendedcrafting:material>, <botania:elfglass>, <extendedcrafting:material>],
 [<atmtweaks:item_material:2>, <contenttweaker:corruptedstarmetal>, <atmtweaks:item_material:2>], 
 [<extendedcrafting:material>, <botania:elfglass>, <extendedcrafting:material>]]);

#pedestal
recipes.remove(<extendedcrafting:pedestal>);
recipes.addShaped(<extendedcrafting:pedestal>, 
 [[null, <actuallyadditions:block_display_stand>, null],
 [<extendedcrafting:material>, <ic2:itemmisc:452>, <extendedcrafting:material>],
 [<extendedcrafting:material>, <actuallyadditions:block_crystal_empowered:4>, <extendedcrafting:material>]]);

#Black Paper
recipes.remove(<enderio:item_material:77>);
mods.extendedcrafting.TableCrafting.addShaped(0, <enderio:item_material:77>, [
	[<ore:dustCharcoal>, null, null, null, <ore:dustCharcoal>], 
	[null, <ore:dustCharcoal>, <ore:paper>, <ore:dustCharcoal>, null], 
	[null, <ore:paper>, <ore:paper>, <ore:paper>, null], 
	[null, <ore:dustCharcoal>, <ore:paper>, <ore:dustCharcoal>, null], 
	[<ore:dustCharcoal>, null, null, null, <ore:dustCharcoal>]
]);

