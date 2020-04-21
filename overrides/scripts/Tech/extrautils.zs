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

print("xu2 changes");

#climograph base block
recipes.remove(<extrautils2:terraformer:9>);
recipes.addShaped(<extrautils2:terraformer:9>, [[<minecraft:iron_ingot>, <minecraft:diamond>, <minecraft:iron_ingot>], [<ore:treeSapling>, <ore:blockSteel>, <ore:treeSapling>], [<minecraft:iron_ingot>, <minecraft:diamond>, <minecraft:iron_ingot>]]);

#drums
recipes.remove(<extrautils2:drum:1>);
recipes.remove(<extrautils2:drum>);
recipes.addShaped(<extrautils2:drum:1>, [[<contenttweaker:coldironingot>, <quark:obsidian_pressure_plate>, <contenttweaker:coldironingot>],[<contenttweaker:coldironingot>, <extrautils2:drum>, <contenttweaker:coldironingot>], [<contenttweaker:coldironingot>, <quark:obsidian_pressure_plate>, <contenttweaker:coldironingot>]]);
recipes.addShaped(<extrautils2:drum>, [[<tconstruct:seared>, <minecraft:stone_pressure_plate>, <tconstruct:seared>],[<tconstruct:seared>, <xlfoodmod:bowl>, <tconstruct:seared>], [<tconstruct:seared>, <minecraft:stone_pressure_plate>, <tconstruct:seared>]]);

#crusher and furnace
recipes.remove(<extrautils2:teleporter:1>);
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:crusher"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>);

#angel ring
recipes.remove(<extrautils2:angelring:1>);
recipes.remove(<extrautils2:angelring>);
recipes.remove(<extrautils2:angelring:2>);
recipes.remove(<extrautils2:angelring:3>);
recipes.remove(<extrautils2:angelring:4>);
recipes.remove(<extrautils2:angelring:5>);

#thickened glass 
recipes.removeShapeless(<extrautils2:decorativesolid:4>, []);
recipes.addShapeless(<extrautils2:decorativesolid:4> * 4, [<minecraft:sand>,<minecraft:glass>,<minecraft:glass>,<minecraft:sand>]);

#mechanical user
recipes.remove(<extrautils2:user>);
recipes.addShaped("CTmechuser", <extrautils2:user>, 
[[<minecraft:lever>, <ic2:itemmisc:451>, <minecraft:lever>],
[<immersiveengineering:wirecoil:5>, <minecraft:dispenser>, <immersiveengineering:wirecoil:5>],
[<botania:manaresource>, <actuallyadditions:item_crystal_empowered:4>, <botania:manaresource>]]);


#extrautils angel ring
mods.extendedcrafting.CombinationCrafting.addRecipe(<extrautils2:angelring>, 
 100000000, 5000, <minecraft:elytra>, 
[<bloodmagic:component:2>, <minecraft:feather>, 
 <ic2:itemmisc:264>, <thaumcraft:primordial_pearl>, 
 <botania:manaresource:14>, <rftools:dimensional_shard>, 
 <atmtweaks:item_material:10>, <minecraft:glass>]);
 
mods.extendedcrafting.CombinationCrafting.addRecipe(<extrautils2:angelring:1>, 
 100000000, 5000, <minecraft:elytra>, 
[<bloodmagic:component:2>, <minecraft:feather>, 
 <ic2:itemmisc:264>, <thaumcraft:primordial_pearl>, 
 <botania:manaresource:14>, <rftools:dimensional_shard>, 
 <atmtweaks:item_material:10>, <minecraft:feather>]);

mods.extendedcrafting.CombinationCrafting.addRecipe(<extrautils2:angelring:2>, 
 100000000, 5000, <minecraft:elytra>, 
[<bloodmagic:component:2>, <minecraft:feather>, 
 <ic2:itemmisc:264>, <thaumcraft:primordial_pearl>, 
 <botania:manaresource:14>, <rftools:dimensional_shard>, 
 <atmtweaks:item_material:10>, <minecraft:dye:9>]);
 
mods.extendedcrafting.CombinationCrafting.addRecipe(<extrautils2:angelring:3>, 
 100000000, 5000, <minecraft:elytra>, 
[<bloodmagic:component:2>, <minecraft:feather>, 
 <ic2:itemmisc:264>, <thaumcraft:primordial_pearl>, 
 <botania:manaresource:14>, <rftools:dimensional_shard>, 
 <atmtweaks:item_material:10>, <minecraft:leather>]);

mods.extendedcrafting.CombinationCrafting.addRecipe(<extrautils2:angelring:4>, 
 100000000, 5000, <minecraft:elytra>, 
[<bloodmagic:component:2>, <minecraft:feather>, 
 <ic2:itemmisc:264>, <thaumcraft:primordial_pearl>, 
 <botania:manaresource:14>, <rftools:dimensional_shard>, 
 <atmtweaks:item_material:10>, <minecraft:gold_nugget>]);

mods.extendedcrafting.CombinationCrafting.addRecipe(<extrautils2:angelring:5>, 
 100000000, 5000, <minecraft:elytra>, 
[<bloodmagic:component:2>, <minecraft:feather>, 
 <ic2:itemmisc:264>, <thaumcraft:primordial_pearl>, 
 <botania:manaresource:14>, <rftools:dimensional_shard>, 
 <atmtweaks:item_material:10>, <minecraft:coal>]);
