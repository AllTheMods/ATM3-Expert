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


### PRECISION ASSEMBLER ###

// control circuit board
PrecisionAssembler.removeRecipe(<advancedrocketry:ic:3>);
PrecisionAssembler.addRecipe(<advancedrocketry:ic:3> * 1, 200, 10, <thermalfoundation:material:352> * 1, <thermalfoundation:material:320> * 1, <ore:dustRedstone> * 1);

// item io circuit board
PrecisionAssembler.removeRecipe(<advancedrocketry:ic:4>);
PrecisionAssembler.addRecipe(<advancedrocketry:ic:4> * 1, 200, 10, <thermalfoundation:material:352> * 1, <thermalfoundation:material:33> * 1, <ore:dustRedstone> * 1);

// liquid io circuit board
PrecisionAssembler.removeRecipe(<advancedrocketry:ic:5>);
PrecisionAssembler.addRecipe(<advancedrocketry:ic:5> * 1, 200, 10, <thermalfoundation:material:352> * 1, <ore:gemLapis> * 1, <ore:dustRedstone> * 1);


##########################################################################################
print("==================== end of mods advancedrocketry.zs ====================");
