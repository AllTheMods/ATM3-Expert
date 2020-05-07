##########################################################################################
#modloaded actuallyadditions
#priority 100

import mods.actuallyadditions.AtomicReconstructor;
import mods.actuallyadditions.Crusher;
import mods.actuallyadditions.Empowerer;

print("==================== loading mods actuallyadditions.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// small storage crate
recipes.remove(<actuallyadditions:block_giant_chest>);
recipes.addShaped(<actuallyadditions:block_giant_chest>, [
    [<ore:chest>, <ic2:itemmisc:53>, <ore:chest>],
    [<ic2:itemmisc:53>, <botania:livingwood:0>, <ic2:itemmisc:53>],
    [<ore:chest>, <ic2:itemmisc:53>, <ore:chest>]
]);

// auto breaker
recipes.remove(<actuallyadditions:block_breaker>);
recipes.addShaped(<actuallyadditions:block_breaker>, [
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
    [<ore:cobblestone>, <actuallyadditions:item_misc:7>, <thermalfoundation:material:160>],
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
]);

// iron casing
recipes.remove(<actuallyadditions:block_misc:9>);
recipes.addShaped(<actuallyadditions:block_misc:9>, [
    [<thermalfoundation:material:32>, <ore:dustGlowstone>, <thermalfoundation:material:32>],
    [<ic2:itemmisc:11>, <ic2:itemmisc:259>, <ic2:itemmisc:11>],
    [<thermalfoundation:material:32>, <ore:dustGlowstone>, <thermalfoundation:material:32>]
]);

// energy laser relay
recipes.remove(<actuallyadditions:block_laser_relay>);
recipes.addShaped(<actuallyadditions:block_laser_relay> * 2, [
    [<ore:obsidian>, <ore:blockRedstone>, <ore:obsidian>],
    [<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_misc:8>, <actuallyadditions:item_crystal_empowered>],
    [<ore:obsidian>, <ore:blockRedstone>, <ore:obsidian>]
]);

// basic coil
recipes.remove(<actuallyadditions:item_misc:7>);
recipes.addShaped(<actuallyadditions:item_misc:7>, [
    [null, <immersiveengineering:material:20>, null],
    [<immersiveengineering:material:20>, <ic2:itemcable:10>, <immersiveengineering:material:20>],
    [null, <immersiveengineering:material:20>, null]
]);

// advanced coil
recipes.remove(<actuallyadditions:item_misc:8>);
recipes.addShaped(<actuallyadditions:item_misc:8>, [
    [null, <immersiveengineering:material:21>, null],
    [<immersiveengineering:material:21>, <actuallyadditions:item_misc:7>, <immersiveengineering:material:21>],
    [null, <immersiveengineering:material:21>, null]
]);

// display stand
recipes.remove(<actuallyadditions:block_display_stand>);
recipes.addShaped(<actuallyadditions:block_display_stand>, [
    [<ore:barsIron>, null, <ore:barsIron>],
    [<actuallyadditions:block_testifi_bucks_green_wall>, <actuallyadditions:block_testifi_bucks_white_wall>, <actuallyadditions:block_testifi_bucks_green_wall>],
    [<forestry:thermionic_tubes:5>, <forestry:thermionic_tubes:7>, <forestry:thermionic_tubes:5>]
]);

// item filter
recipes.remove(<actuallyadditions:item_filter>);
recipes.addShaped(<actuallyadditions:item_filter>, [
    [null, <ore:barsIron>, null],
    [<ore:barsIron>, <extrautils2:filter>, <ore:barsIron>],
    [null, <ore:barsIron>, null]
]);


### ATOMIC RECONSTRUCTOR ###

// change energy requirements for crystals
AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:*>);
// restonia crystal
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal>, <ore:dustRedstone>, 2500);
// palis crystal
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:1>, <ore:gemLapis>, 2000);
// diamatine crystal
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:2>, <ore:gemDiamond>, 15000);
// void crystal
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:3>, <ore:itemCoal>, 1000);
// emeradic crystal
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:4>, <ore:gemEmerald>, 25000);
// enori crystal
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:5>, <ore:ingotIron>, 5000);

// change energy requirements for crystal blocks
AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:*>);
// restonia crystal block
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal>, <ore:blockRedstone>, 25000);
// palis crystal block
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal:1>, <ore:blockLapis>, 20000);
// diamatine crystal block
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal:2>, <ore:blockDiamond>, 150000);
// void crystal block
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal:3>, <ore:blockCoal>, 10000);
// emeradic crystal block
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal:4>, <ore:blockEmerald>, 250000);
// enori crystal block
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal:5>, <ore:blockIron>, 50000);

// sunny quartz | Botania
AtomicReconstructor.addRecipe(<botania:quartz:6>, <botania:quartz:1>, 50000);

// greatwood planks | Thaumcraft
AtomicReconstructor.addRecipe(<thaumcraft:plank_greatwood>, <thaumcraft:log_greatwood>, 5000);


### CRUSHER ###

// redstone | Vanilla
Crusher.removeRecipe(<minecraft:redstone>);
Crusher.addRecipe(<minecraft:redstone> * 5, <minecraft:redstone_ore>, <thermalfoundation:material:866>, 25);
Crusher.addRecipe(<minecraft:redstone>, <extrautils2:ingredients>);


### EMPOWERER ###

// empowered crystals
Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:*>);
// empowered restonia crystal
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal>, <actuallyadditions:item_misc:23>, <minecraft:apple>, <minecraft:red_mushroom>, <botania:dye:14>, 150000, 400, [0.5, 0.3, 0.2]);
// empowered palis crystal
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal:1>, <minecraft:prismarine_crystals>, <minecraft:dye:6>, <minecraft:prismarine_shard>, <botania:dye:11>, 210000, 400, [0.5, 0.3, 0.2]);
// empowered diamatine crystal
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal:2>, <thermalfoundation:material:70>, <nuclearcraft:gem_dust:2>, <thaumcraft:ingot>, <botania:dye:3>, 400000, 500, [0.5, 0.3, 0.2]);
// empowered void crystal
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal:3>, <actuallyadditions:item_misc:22>, <actuallyadditions:item_misc:17>, <ic2:itemmisc:254>, <botania:dye:15>, 50000, 400, [0.5, 0.3, 0.2]);
// empowered emeradic crystal
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal:4>, <minecraft:slime_ball>, <actuallyadditions:item_solidified_experience>, <minecraft:ender_pearl>, <botania:dye:5>, 600000, 700, [0.5, 0.3, 0.2]);
// empowered enori crystal
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal:5>, <tconstruct:materials>, <minecraft:dye:15>, <ic2c_extras:refinedironcasing>, <botania:dye>, 150000, 400, [0.5, 0.3, 0.2]);

// empowered crystal blocks
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:*>);
// empowered restonia crystal block
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered>, <actuallyadditions:block_crystal>, <actuallyadditions:item_misc:23>, <minecraft:apple>, <minecraft:red_mushroom>, <botania:dye:14>, 1500000, 400, [0.5, 0.3, 0.2]);
// empowered palis crystal block
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:1>, <actuallyadditions:block_crystal:1>, <minecraft:prismarine_crystals>, <minecraft:dye:6>, <minecraft:prismarine_shard>, <botania:dye:11>, 2100000, 400, [0.5, 0.3, 0.2]);
// empowered diamatine crystal block
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:2>, <actuallyadditions:block_crystal:2>, <thermalfoundation:material:70>, <nuclearcraft:gem_dust:2>, <thaumcraft:ingot>, <botania:dye:3>, 4000000, 500, [0.5, 0.3, 0.2]);
// empowered void crystal block
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:3>, <actuallyadditions:block_crystal:3>, <actuallyadditions:item_misc:22>, <actuallyadditions:item_misc:17>, <ic2:itemmisc:254>, <botania:dye:15>, 500000, 400, [0.5, 0.3, 0.2]);
// empowered emeradic crystal block
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:4>, <actuallyadditions:block_crystal:4>, <minecraft:slime_ball>, <actuallyadditions:item_solidified_experience>, <minecraft:ender_pearl>, <botania:dye:5>, 6000000, 700, [0.5, 0.3, 0.2]);
// empowered enori crystal block
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:5>, <actuallyadditions:block_crystal:5>, <tconstruct:materials>, <minecraft:dye:15>, <ic2c_extras:refinedironcasing>, <botania:dye>, 1500000, 400, [0.5, 0.3, 0.2]);

// runic altar | Botania
Empowerer.addRecipe(<botania:runealtar>, <botania:pool>, <ore:livingrock>, <ore:manaDiamond>, <actuallyadditions:block_crystal_empowered:5>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "praecantatio"}]}), 100000, 20, [0.0, 0.5, 0.0]);

// machine case | Tesla Core Lib
Empowerer.addRecipe(<teslacorelib:machine_case>, <actuallyadditions:block_crystal>,	<actuallyadditions:item_crystal:5>, <contenttweaker:quartzplate>, <actuallyadditions:item_crystal:5>, <contenttweaker:quartzplate>,	12500, 400, [0.5, 0.3, 0.2]);

// inscriber silicon press | Applied Energistics 2
Empowerer.addRecipe(<appliedenergistics2:material:19>, <ore:blockIron>, <appliedenergistics2:material:5>, <thermalfoundation:material:160>, <appliedenergistics2:material:45>, <appliedenergistics2:fluix_block>, 50000, 600, [0.5, 0.3, 0.2]);
// inscriber logic press | Applied Energistics 2
Empowerer.addRecipe(<appliedenergistics2:material:13>, <ore:blockIron>, <appliedenergistics2:quartz_block>, <thermalfoundation:material:160>, <appliedenergistics2:material:45>, <appliedenergistics2:fluix_block>, 50000, 600, [0.5, 0.3, 0.2]);
// inscriber calculation press | Applied Energistics 2
Empowerer.addRecipe(<appliedenergistics2:material:15>, <ore:blockIron>, <ore:blockGold>, <thermalfoundation:material:160>, <appliedenergistics2:material:45>, <appliedenergistics2:fluix_block>, 50000, 600, [0.5, 0.3, 0.2]);
// inscriber engineering press | Applied Energistics 2
Empowerer.addRecipe(<appliedenergistics2:material:14>, <ore:blockIron>, <ore:blockDiamond>, <thermalfoundation:material:160>, <appliedenergistics2:material:45>, <appliedenergistics2:fluix_block>, 50000, 600, [0.5, 0.3, 0.2]);

// me capability adapter
Empowerer.addRecipe(<rf-capability-adapter:aecapabilityadapter>, <appliedenergistics2:interface>, <compactmachines3:tunneltool>, <ore:crystalPureCertusQuartz>, <appliedenergistics2:part:460>, <contenttweaker:elementiumprocessor>, 50000, 600, [0.5, 0.3, 0.2]);

// scarab | Atum 2
Empowerer.addRecipe(<atum:scarab>, <contenttweaker:manadiamondplate>, <forge:bucketfilled>.withTag({FluidName: "liquid_death", Amount: 1000}), <actuallyadditions:item_crystal_empowered:4>, <thermalfoundation:glass:3>, <thaumcraft:plate:2>, 150000, 2400);


##########################################################################################
print("==================== end of mods actuallyadditions.zs ====================");
