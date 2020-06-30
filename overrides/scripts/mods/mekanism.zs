##########################################################################################
#modloaded mekanism
#priority 100

import mods.mekanism.infuser;

print("==================== loading mods mekanism.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// basic fluid tank
recipes.remove(<mekanism:machineblock2:11>);
recipes.addShaped(<mekanism:machineblock2:11>, [
    [<minecraft:redstone>, <minecraft:iron_ingot>, <minecraft:redstone>],
    [<mekanism:ingot:1>, <extrautils2:drum>, <mekanism:ingot:1>],
    [<minecraft:redstone>, <minecraft:iron_ingot>, <minecraft:redstone>]
]);

// energized smelter
recipes.remove(<mekanism:machineblock:10>);
recipes.addShaped(<mekanism:machineblock:10>, [
    [<mekanism:ingot:1>, <botania:manaresource:9>, <mekanism:ingot:1>],
    [<thermalfoundation:glass:3>, <mekanism:basicblock:8>, <thermalfoundation:glass:3>],
    [<immersiveengineering:wirecoil:5>, <mekanism:controlcircuit>, <immersiveengineering:wirecoil:5>]
]);

// metallurgic infuser
recipes.remove(<mekanism:machineblock:8>);
recipes.addShaped(<mekanism:machineblock:8>, [
    [<mekanism:ingot:1>, <ic2:blockmachinelv:1>, <mekanism:ingot:1>],
    [<immersiveengineering:wirecoil:5>, <mekanism:basicblock:8>, <immersiveengineering:wirecoil:5>],
    [<mekanism:ingot:1>, <botania:elfglass>, <mekanism:ingot:1>]
]);

// osmium ingot
recipes.addShaped(<mekanism:ingot:1> * 3, [
    [<ic2:itemmisc:202>, <ic2:itemmisc:202>, <ic2:itemmisc:202>],
    [<ic2:itemmisc:202>, <mekanism:ingot:1>, <ic2:itemmisc:202>],
    [<ic2:itemmisc:202>, <ic2:itemmisc:202>, <ic2:itemmisc:202>]
]);

// basic universal cable
recipes.remove(<mekanism:transmitter>.withTag({tier: 0}));
recipes.addShaped(<mekanism:transmitter>.withTag({tier: 0}) * 4, [
    [<ic2:itemcable:9>, <ic2:itemcable:9>, <ic2:itemcable:9>],
    [<mekanism:compressedobsidian>, <actuallyadditions:item_crystal_empowered>, <mekanism:compressedobsidian>],
    [<ic2:itemcable:9>, <ic2:itemcable:9>, <ic2:itemcable:9>]
]);

// basic pressurized tube
recipes.remove(<mekanism:transmitter:2>.withTag({tier: 0}));
recipes.addShaped(<mekanism:transmitter:2>.withTag({tier: 0}) * 4, [
    [<enderio:item_liquid_conduit:1>, <enderio:item_liquid_conduit:1>, <enderio:item_liquid_conduit:1>],
    [<mekanism:compressedobsidian>, <actuallyadditions:item_crystal_empowered:1>, <mekanism:compressedobsidian>],
    [<enderio:item_liquid_conduit:1>, <enderio:item_liquid_conduit:1>, <enderio:item_liquid_conduit:1>]
]);

// basic thermodynamic conductor
recipes.remove(<mekanism:transmitter:6>.withTag({tier: 0}));
recipes.addShaped(<mekanism:transmitter:6>.withTag({tier: 0}) * 4, [
    [null, <ic2c_extras:heatconductor>, null],
    [<mekanism:compressedobsidian>, <actuallyadditions:item_crystal_empowered:3>, <mekanism:compressedobsidian>],
    [null, <ic2c_extras:heatconductor>, null]
]);


### INFUSER ###

// steel blend | Thermal Foundation
infuser.addRecipe("CARBON", 40, <mekanism:enrichediron>, <thermalfoundation:material:96>);


##########################################################################################
print("==================== end of mods mekanism.zs ====================");
