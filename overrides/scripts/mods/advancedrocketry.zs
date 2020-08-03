##########################################################################################
#modloaded advancedrocketry
#priority 100

import mods.advancedrocketry.PrecisionAssembler;

print("==================== loading mods advancedrocketry.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// optical sensor
recipes.remove(<advancedrocketry:satelliteprimaryfunction>);
recipes.addShaped(<advancedrocketry:satelliteprimaryfunction>, [
    [<thermalfoundation:glass:6>, <thermalfoundation:glass:6>, <thermalfoundation:glass:6>],
    [<mekanism:ingot:1>, <alchemistry:ingot:60>, <mekanism:ingot:1>],
    [<alchemistry:ingot:60>, <contenttweaker:elementiumprocessor>, <alchemistry:ingot:60>]
]);

// data storage unit
recipes.addShaped(<advancedrocketry:dataunit>, [
    [<ore:gemEmerald>, <ic2:itemmisc:202>, null],
    [<ore:dustRedstone>, <ore:gemEmerald>, null],
    [null, null, null]
]);

// basic circuit plate
recipes.addShaped(<advancedrocketry:itemcircuitplate>, [
    [<ore:dustRedstone>, <ore:ingotGold>, null],
    [<ore:ingotGold>, <ic2:itemmisc:202>, null],
    [null, null, null]
]);

// hover upgrade
recipes.addShaped(<advancedrocketry:itemupgrade>, [
    [<ore:dustRedstone>, <ore:dustRedstone_torch>, <ore:dustRedstone>],
    [<advancedrocketry:ic:3>, <ic2:itemmisc:202>, <advancedrocketry:ic>],
    [<ore:dustRedstone>, <ore:dustRedstone_torch>, <ore:dustRedstone>]
]);

// tracking circuit
recipes.addShaped(<advancedrocketry:ic:1>, [
    [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>],
    [<minecraft:ender_eye>, <ic2:itemmisc:202>, <advancedrocketry:itemcircuitplate>],
    [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]
]);

// machine structure
recipes.remove(<libvulpes:structuremachine>);
recipes.addShaped(<libvulpes:structuremachine> * 2, [
    [<mekanism:polyethene:2>, <mekanism:controlcircuit:3>, <mekanism:polyethene:2>],
    [<contenttweaker:elementiumprocessor>, <ic2:blockmachinemv>, <contenttweaker:quartzingot>],
    [<mekanism:polyethene:2>, <ic2:itemmisc:451>, <mekanism:polyethene:2>]
]);

// holo projector
recipes.remove(<libvulpes:holoprojector>);
recipes.addShaped(<libvulpes:holoprojector>, [
    [null, <ic2:itemmisc:264>, null],
    [<bloodmagic:slate:3>, <advancedrocketry:satelliteprimaryfunction>, <bloodmagic:slate:3>],
    [<advancedrocketry:satelliteprimaryfunction>, <contenttweaker:elementiumprocessor>, <advancedrocketry:satelliteprimaryfunction>]
]);

// input hatch
recipes.remove(<libvulpes:hatch>);
recipes.addShaped(<libvulpes:hatch>, [
    [<ic2:itemmisc:202>, <thermaldynamics:filter:4>, <ic2:itemmisc:202>],
    [<mekanism:ingot:1>, <libvulpes:structuremachine>, <mekanism:ingot:1>],
    [<ic2:itemmisc:264>, <bloodmagic:slate:3>, <ic2:itemmisc:264>]
]);

// output hatch
recipes.remove(<libvulpes:hatch:1>);
recipes.addShaped(<libvulpes:hatch:1>, [
    [<ic2:itemmisc:202>, <thermaldynamics:servo:4>, <ic2:itemmisc:202>],
    [<mekanism:ingot:1>, <libvulpes:structuremachine>, <mekanism:ingot:1>],
    [<ic2:itemmisc:264>, <bloodmagic:slate:3>, <ic2:itemmisc:264>]
]);

// quartz crucible
recipes.remove(<advancedrocketry:iquartzcrucible>);
recipes.addShaped(<advancedrocketry:iquartzcrucible>, [
    [<contenttweaker:quartzingot>, null, <contenttweaker:quartzingot>],
    [<contenttweaker:quartzingot>, <minecraft:cauldron>, <contenttweaker:quartzingot>],
    [<contenttweaker:quartzingot>, <contenttweaker:quartzingot>, <contenttweaker:quartzingot>]
]);

// user interface
recipes.remove(<advancedrocketry:misc>);
recipes.addShaped(<advancedrocketry:misc>, [
    [null, null, null],
    [<extendedcrafting:material:48>, <ore:dustRedstone>, <extendedcrafting:material:48>],
    [<ore:dustGlowstone>, <minecraft:glass_pane>, <ore:dustGlowstone>]
]);


### PRECISION ASSEMBLER ###

// clear all recipes to avoid bugs
PrecisionAssembler.clear();

// lens
PrecisionAssembler.addRecipe(<advancedrocketry:blocklens> * 1, 100, 20, <ore:stickIron> * 1, <advancedrocketry:lens> * 3, <ore:blockGlass> * 3);

// control circuit board
PrecisionAssembler.addRecipe(<advancedrocketry:ic:3> * 1, 200, 10, <thermalfoundation:material:352> * 1, <thermalfoundation:material:320> * 1, <ore:dustRedstone> * 1);

// item io circuit board
PrecisionAssembler.addRecipe(<advancedrocketry:ic:4> * 1, 200, 10, <thermalfoundation:material:352> * 1, <thermalfoundation:material:33> * 1, <ore:dustRedstone> * 1);

// liquid io circuit board
PrecisionAssembler.addRecipe(<advancedrocketry:ic:5> * 1, 200, 10, <thermalfoundation:material:352> * 1, <ore:gemLapis> * 1, <ore:dustRedstone> * 1);

// basic circuit plate
PrecisionAssembler.addRecipe(<advancedrocketry:itemcircuitplate> * 1, 200, 10, <ore:ingotGold> * 1, <ore:dustRedstone> * 1, <advancedrocketry:wafer> * 1);

// advanced circuit plate
PrecisionAssembler.addRecipe(<advancedrocketry:itemcircuitplate:1> * 1, 200, 10, <ore:ingotGold> * 1, <ore:blockRedstone> * 1, <advancedrocketry:wafer> * 1);

// data storage unit
PrecisionAssembler.addRecipe(<advancedrocketry:dataunit> * 1, 200, 10, <ore:dustRedstone> * 1, <ore:gemEmerald> * 1, <advancedrocketry:ic> * 1);

// tracking circuit
PrecisionAssembler.addRecipe(<advancedrocketry:ic:1> * 1, 200, 10, <ore:dustRedstone> * 1, <minecraft:ender_eye> * 1, <advancedrocketry:itemcircuitplate> * 1);

// space elevator chip
PrecisionAssembler.addRecipe(<advancedrocketry:elevatorchip> * 1, 200, 10, <advancedrocketry:spacestationchip> * 1, <advancedrocketry:ic:1> * 1);

// hover upgrade
PrecisionAssembler.addRecipe(<advancedrocketry:itemupgrade> * 1, 200, 50, <ore:dustRedstone> * 1, <advancedrocketry:ic> * 1, <advancedrocketry:ic:3> * 1, <minecraft:redstone_torch> * 1);

// flight speed control upgrade
PrecisionAssembler.addRecipe(<advancedrocketry:itemupgrade:1> * 1, 200, 50, <ore:gemDiamond> * 1, <advancedrocketry:ic:2> * 1, <advancedrocketry:ic:3> * 1, <minecraft:fire_charge> * 1);

// atmosphere analyzer
PrecisionAssembler.addRecipe(<advancedrocketry:atmanalyser> * 1, 1000, 150, <libvulpes:battery> * 1, <advancedrocketry:ic:2> * 1, <advancedrocketry:misc> * 1, <advancedrocketry:lens> * 1, <ore:plateTin> * 1);

// biome changer remote
PrecisionAssembler.addRecipe(<advancedrocketry:biomechanger> * 1, 1000, 150, <libvulpes:battery> * 1, <advancedrocketry:ic:2> * 1, <advancedrocketry:misc> * 1, <advancedrocketry:ic:1> * 1, <ore:plateTin> * 1);

// biome changer
PrecisionAssembler.addRecipe(<advancedrocketry:satelliteprimaryfunction:5> * 1, 1000, 150, <libvulpes:productrod:4> * 2, <libvulpes:productrod:7> * 1, <advancedrocketry:ic:2> * 1, <advancedrocketry:wafer> * 2);

// anti fog visor
PrecisionAssembler.addRecipe(<advancedrocketry:itemupgrade:4> * 1, 200, 100, <libvulpes:battery> * 1, <advancedrocketry:ic:2> * 1, <advancedrocketry:ic:3> * 1, <advancedrocketry:lens> * 1);

// beacon finder
PrecisionAssembler.addRecipe(<advancedrocketry:beaconfinder> * 1, 200, 100, <advancedrocketry:ic:1> * 1, <advancedrocketry:itemupgrade:4> * 1);

// bionic leg upgrade
PrecisionAssembler.addRecipe(<advancedrocketry:itemupgrade:2> * 1, 200, 100, <ore:blockMotor> * 1, <advancedrocketry:ic:2> * 1, <advancedrocketry:ic:3> * 1);

// padded landing boots
PrecisionAssembler.addRecipe(<advancedrocketry:itemupgrade:3> * 1, 200, 100, <minecraft:feather> * 1, <advancedrocketry:ic:2> * 1, <advancedrocketry:ic:3> * 1, <minecraft:iron_boots> * 1);


##########################################################################################
print("==================== end of mods advancedrocketry.zs ====================");
