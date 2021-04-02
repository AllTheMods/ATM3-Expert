##########################################################################################
#modloaded simplyjetpacks
#priority 100

print("==================== loading mods simplyjetpacks.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// leather strap
recipes.remove(<simplyjetpacks:metaitem:4>);
recipes.addShapedMirrored(<simplyjetpacks:metaitem:4>, [
    [null, null, null],
    [<minecraft:leather>, <botania:manaresource>, <minecraft:leather>],
    [<minecraft:leather>, <botania:manaresource>, <minecraft:leather>]
]);

// hardened thruster
recipes.remove(<simplyjetpacks:metaitemmods:21>);
recipes.addShaped(<simplyjetpacks:metaitemmods:21>, [
    [<ore:ingotInvar>, <thermalfoundation:material:513>, <ore:ingotInvar>],
    [<thermaldynamics:duct_0:1>, <thermalexpansion:dynamo:2>, <thermaldynamics:duct_0:1>],
    [<ore:ingotInvar>, <ore:dustRedstone>, <ore:ingotInvar>]
]);

// leadstone fluxpack
recipes.remove(<simplyjetpacks:itemfluxpack:7>);
recipes.addShaped(<simplyjetpacks:itemfluxpack:7>, [
    [null, null, null],
    [<ore:ingotLead>, <thermalexpansion:cell>, <ore:ingotLead>],
    [<ore:ingotLead>, <simplyjetpacks:metaitem:4>, <ore:ingotLead>]
]);

// basic capacitor pack
recipes.remove(<simplyjetpacks:itemfluxpack:1>);
recipes.addShaped(<simplyjetpacks:itemfluxpack:1>, [
    [null, <ore:dustRedstone>, null],
    [<ore:ingotConductiveIron>, <enderio:item_basic_capacitor>, <ore:ingotConductiveIron>],
    [<ore:dustRedstone>, <thermalfoundation:material:768>, <ore:dustRedstone>]
]);

// capacitor pack
recipes.remove(<simplyjetpacks:itemfluxpack:2>);
recipes.addShaped(<simplyjetpacks:itemfluxpack:2>, [
    [null, <ore:dustRedstone>, null],
    [<ore:ingotEnergeticAlloy>, <simplyjetpacks:itemfluxpack:1>, <ore:ingotEnergeticAlloy>],
    [<ore:dustRedstone>, <enderio:item_material:14>, <ore:dustRedstone>]
]);

// vibrant capacitor pack
recipes.remove(<simplyjetpacks:itemfluxpack:3>);
recipes.addShaped(<simplyjetpacks:itemfluxpack:3>, [
    [null, <ore:dustRedstone>, null],
    [<ore:ingotVibrantAlloy>, <simplyjetpacks:itemfluxpack:2>, <ore:ingotVibrantAlloy>],
    [<ore:dustRedstone>, <enderio:item_material:15>, <ore:dustRedstone>]
]);

// conductive iron thruster
recipes.remove(<simplyjetpacks:metaitemmods:7>);
recipes.addShaped(<simplyjetpacks:metaitemmods:7>, [
    [<ore:ingotConductiveIron>, <thermalfoundation:material:513>, <ore:ingotConductiveIron>],
    [<enderio:item_redstone_conduit>, <enderio:item_material:20>, <enderio:item_redstone_conduit>],
    [<ore:ingotConductiveIron>, <ore:dustRedstone>, <ore:ingotConductiveIron>]
]);

// electrical steel thruster
recipes.remove(<simplyjetpacks:metaitemmods:8>);
recipes.addShaped(<simplyjetpacks:metaitemmods:8>, [
    [<ore:ingotElectricalSteel>, <thermalfoundation:material:513>, <ore:ingotElectricalSteel>],
    [<enderio:item_power_conduit>, <enderio:item_material:20>, <enderio:item_power_conduit>],
    [<ore:ingotElectricalSteel>, <ore:dustRedstone>, <ore:ingotElectricalSteel>]
]);

// energetic thruster
recipes.remove(<simplyjetpacks:metaitemmods:9>);
recipes.addShaped(<simplyjetpacks:metaitemmods:9>, [
    [<ore:ingotEnergeticAlloy>, <thermalfoundation:material:513>, <ore:ingotEnergeticAlloy>],
    [<enderio:item_power_conduit:1>, <enderio:item_material:20>, <enderio:item_power_conduit:1>],
    [<ore:ingotEnergeticAlloy>, <ore:ingotRedstoneAlloy>, <ore:ingotEnergeticAlloy>]
]);

// vibrant thruster
recipes.remove(<simplyjetpacks:metaitemmods:10>);
recipes.addShaped(<simplyjetpacks:metaitemmods:10>, [
    [<ore:ingotVibrantAlloy>, <thermalfoundation:material:513>, <ore:ingotVibrantAlloy>],
    [<enderio:item_power_conduit:2>, <enderio:item_material:20>, <enderio:item_power_conduit:2>],
    [<ore:ingotVibrantAlloy>, <ore:ingotRedstoneAlloy>, <ore:ingotVibrantAlloy>]
]);

// conductive iron jetpack
recipes.removeShaped(<simplyjetpacks:itemjetpack:1>, [
    [<ore:ingotConductiveIron>, <enderio:item_basic_capacitor>, <ore:ingotConductiveIron>],
    [<ore:ingotConductiveIron>, <simplyjetpacks:metaitem:4>, <ore:ingotConductiveIron>],
    [<simplyjetpacks:metaitemmods:7>, null, <simplyjetpacks:metaitemmods:7>]
]);
recipes.addShaped(<simplyjetpacks:itemjetpack:1>, [
    [<ore:ingotConductiveIron>, <simplyjetpacks:itemfluxpack:1>, <ore:ingotConductiveIron>],
    [<ore:ingotConductiveIron>, <simplyjetpacks:metaitem:4>, <ore:ingotConductiveIron>],
    [<simplyjetpacks:metaitemmods:7>, null, <simplyjetpacks:metaitemmods:7>]
]);

// electrical steel jetpack
recipes.removeShaped(<simplyjetpacks:itemjetpack:2>, [
    [<ore:ingotElectricalSteel>, <enderio:item_basic_capacitor>, <ore:ingotElectricalSteel>],
    [<ore:ingotElectricalSteel>, <simplyjetpacks:itemjetpack:1>, <ore:ingotElectricalSteel>],
    [<simplyjetpacks:metaitemmods:8>, null, <simplyjetpacks:metaitemmods:8>]
]);
recipes.addShaped(<simplyjetpacks:itemjetpack:2>, [
    [<ore:ingotElectricalSteel>, <simplyjetpacks:itemfluxpack:1>, <ore:ingotElectricalSteel>],
    [<ore:ingotElectricalSteel>, <simplyjetpacks:itemjetpack:1>, <ore:ingotElectricalSteel>],
    [<simplyjetpacks:metaitemmods:8>, null, <simplyjetpacks:metaitemmods:8>]
]);

// energetic jetpack
recipes.removeShaped(<simplyjetpacks:itemjetpack:3>, [
    [<ore:ingotEnergeticAlloy>, <enderio:item_basic_capacitor:1>, <ore:ingotEnergeticAlloy>],
    [<ore:ingotEnergeticAlloy>, <simplyjetpacks:itemjetpack:2>, <ore:ingotEnergeticAlloy>],
    [<simplyjetpacks:metaitemmods:9>, null, <simplyjetpacks:metaitemmods:9>]
]);
recipes.addShaped(<simplyjetpacks:itemjetpack:3>, [
    [<ore:ingotEnergeticAlloy>, <simplyjetpacks:itemfluxpack:2>, <ore:ingotEnergeticAlloy>],
    [<ore:ingotEnergeticAlloy>, <simplyjetpacks:itemjetpack:2>, <ore:ingotEnergeticAlloy>],
    [<simplyjetpacks:metaitemmods:9>, null, <simplyjetpacks:metaitemmods:9>]
]);

// vibrant jetpack
recipes.removeShaped(<simplyjetpacks:itemjetpack:4>, [
    [<ore:ingotVibrantAlloy>, <enderio:item_basic_capacitor:2>, <ore:ingotVibrantAlloy>],
    [<ore:ingotVibrantAlloy>, <simplyjetpacks:itemjetpack:3>, <ore:ingotVibrantAlloy>],
    [<simplyjetpacks:metaitemmods:10>, null, <simplyjetpacks:metaitemmods:10>]
]);
recipes.addShaped(<simplyjetpacks:itemjetpack:4>, [
    [<ore:ingotVibrantAlloy>, <simplyjetpacks:itemfluxpack:3>, <ore:ingotVibrantAlloy>],
    [<ore:ingotVibrantAlloy>, <simplyjetpacks:itemjetpack:3>, <ore:ingotVibrantAlloy>],
    [<simplyjetpacks:metaitemmods:10>, null, <simplyjetpacks:metaitemmods:10>]
]);


##########################################################################################
print("==================== end of mods simplyjetpacks.zs ====================");
