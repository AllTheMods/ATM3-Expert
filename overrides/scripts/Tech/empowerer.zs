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
import mods.actuallyadditions.Empowerer as empower;
import mods.actuallyadditions.AtomicReconstructor;

print("Actually additions empowerer changes");

#machine casing
recipes.remove(<teslacorelib:machine_case>);
mods.actuallyadditions.Empowerer.addRecipe(<teslacorelib:machine_case>, <actuallyadditions:block_crystal>, <actuallyadditions:item_crystal:5>, <contenttweaker:quartzplate>, <actuallyadditions:item_crystal:5>, <contenttweaker:quartzplate>, 12500, 400);

#remove
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:*>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:*>);

#void crystal
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal:3>, 
     <actuallyadditions:item_misc:22>, <actuallyadditions:item_misc:17>, <ic2:itemmisc:254>, <botania:dye:15>, 50000, 400);

mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:3>, 50000, 500, <actuallyadditions:item_crystal:3>, 
    [<actuallyadditions:item_misc:22>, <actuallyadditions:item_misc:17>, <ic2:itemmisc:254>, <botania:dye:15>]);

#enori
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal:5>, 
     <tconstruct:materials>, <minecraft:dye:15>, <ic2c_extras:refinedironcasing>, <botania:dye>, 150000, 400);

mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:5>, 150000, 2000, <actuallyadditions:item_crystal:5>, 
    [<tconstruct:materials>, <minecraft:dye:15>, <ic2c_extras:refinedironcasing>, <botania:dye>]);

#restonia	
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal>, 
     <actuallyadditions:item_misc:23>, <minecraft:apple>, <minecraft:red_mushroom>, <botania:dye:14>, 150000, 400);

mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered>, 150000, 2000, <actuallyadditions:item_crystal>, 
    [<actuallyadditions:item_misc:23>, <minecraft:apple>, <minecraft:red_mushroom>, <botania:dye:14>]);
	
#palis
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal:1>, 
     <minecraft:prismarine_crystals>, <minecraft:dye:6>, <minecraft:prismarine_shard>, <botania:dye:11>, 210000, 400);

mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:1>, 210000, 2100, <actuallyadditions:item_crystal:1>, 
    [<minecraft:prismarine_crystals>, <minecraft:dye:6>, <minecraft:prismarine_shard>, <botania:dye:11>]);
 
#diamatine
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal:2>, 
     <thermalfoundation:material:70>, <nuclearcraft:gem_dust:2>, <thaumcraft:ingot>, <botania:dye:3>, 400000, 500);

mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:2>, 400000, 4000, <actuallyadditions:item_crystal:2>, 
    [<thermalfoundation:material:70>, <nuclearcraft:gem_dust:2>, <thaumcraft:ingot>, <botania:dye:3>]);

#emeradic
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal:4>, 
     <minecraft:slime_ball>, <actuallyadditions:item_solidified_experience>, <minecraft:ender_pearl>, <botania:dye:5>, 600000, 700);

mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:item_crystal_empowered:4>, 600000, 9000, <actuallyadditions:item_crystal:4>, 
    [<minecraft:slime_ball>, <actuallyadditions:item_solidified_experience>, <minecraft:ender_pearl>, <botania:dye:5>]);

#empowering blocks
#void crystal
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:3>, <actuallyadditions:block_crystal:3>, 
     <actuallyadditions:item_misc:22>, <actuallyadditions:item_misc:17>, <ic2:itemmisc:254>, <botania:dye:15>, 500000, 400);

mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:3>, 500000, 50000, <actuallyadditions:block_crystal:3>, 
    [<actuallyadditions:item_misc:22>, <actuallyadditions:item_misc:17>, <ic2:itemmisc:254>, <botania:dye:15>]);

#enori
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:5>, <actuallyadditions:item_crystal:5>, 
     <tconstruct:materials>, <minecraft:dye:15>, <ic2c_extras:refinedironcasing>, <botania:dye>, 1500000, 400);

mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:5>, 1500000, 200000, <actuallyadditions:block_crystal:5>, 
    [<tconstruct:materials>, <minecraft:dye:15>, <ic2c_extras:refinedironcasing>, <botania:dye>]);

#restonia	
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered>, <actuallyadditions:block_crystal>, 
     <actuallyadditions:item_misc:23>, <minecraft:apple>, <minecraft:red_mushroom>, <botania:dye:14>, 1500000, 400);

mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered>, 1500000, 200000, <actuallyadditions:block_crystal>, 
    [<actuallyadditions:item_misc:23>, <minecraft:apple>, <minecraft:red_mushroom>, <botania:dye:14>]);
	
#palis
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:1>, <actuallyadditions:block_crystal:1>, 
     <minecraft:prismarine_crystals>, <minecraft:dye:6>, <minecraft:prismarine_shard>, <botania:dye:11>, 2100000, 400);

mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:1>, 2100000, 210000, <actuallyadditions:block_crystal:1>, 
    [<minecraft:prismarine_crystals>, <minecraft:dye:6>, <minecraft:prismarine_shard>, <botania:dye:11>]);
 
#diamatine
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:2>, <actuallyadditions:block_crystal:2>, 
     <thermalfoundation:material:70>, <nuclearcraft:gem_dust:2>, <thaumcraft:ingot>, <botania:dye:3>, 4000000, 500);

mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:2>, 4000000, 40000, <actuallyadditions:block_crystal:2>, 
    [<thermalfoundation:material:70>, <nuclearcraft:gem_dust:2>, <thaumcraft:ingot>, <botania:dye:3>]);

#emeradic
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:4>, <actuallyadditions:block_crystal:4>, 
     <minecraft:slime_ball>, <actuallyadditions:item_solidified_experience>, <minecraft:ender_pearl>, <botania:dye:5>, 6000000, 700);

mods.extendedcrafting.CombinationCrafting.addRecipe(<actuallyadditions:block_crystal_empowered:4>, 6000000, 90000, <actuallyadditions:block_crystal:4>, 
    [<minecraft:slime_ball>, <actuallyadditions:item_solidified_experience>, <minecraft:ender_pearl>, <botania:dye:5>]);