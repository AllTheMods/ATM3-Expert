##########################################################################################
#modloaded modularmachinery
#priority 100

print("==================== loading mods modularmachinery.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// machine vent
recipes.addShaped(<modularmachinery:blockcasing:1> * 2, [
    [<botania:livingrock:1>, <ore:barsIron>, <botania:livingrock:1>],
    [<thermalfoundation:glass:3>, <ore:barsIron>, <thermalfoundation:glass:3>],
    [<botania:livingrock:1>, <ore:barsIron>, <botania:livingrock:1>]
]);

// machine blueprint
recipes.addShapedMirrored(<modularmachinery:itemblueprint>, [
    [<thermalfoundation:material:768>, <ic2:itemmisc:451>, <thermalfoundation:material:768>],
    [<thermalfoundation:material:768>, <thermalfoundation:diagram_redprint:*>, <thermalfoundation:material:768>],
    [<thermalfoundation:material:768>, <ic2:itemmisc:451>, <thermalfoundation:material:768>]
]);

// normal fluid input hatch
recipes.addShaped(<modularmachinery:blockfluidinputhatch:2>, [
    [null, <appliedenergistics2:material>, null],
    [<appliedenergistics2:material>, <modularmachinery:blockfluidinputhatch:1>, <appliedenergistics2:material>],
    [null, <appliedenergistics2:material>, null]
]);

// reinforced fluid input hatch
recipes.addShaped(<modularmachinery:blockfluidinputhatch:3>, [
    [null, <botania:manaresource:7>, null],
    [<botania:manaresource:7>, <modularmachinery:blockfluidinputhatch:2>, <botania:manaresource:7>],
    [null, <botania:manaresource:7>, null]
]);

// big fluid input hatch
recipes.addShaped(<modularmachinery:blockfluidinputhatch:4>, [
    [null, <contenttweaker:planetshard>, null],
    [<contenttweaker:planetshard>, <modularmachinery:blockfluidinputhatch:3>, <contenttweaker:planetshard>],
    [null, <contenttweaker:planetshard>, null]
]);

// huge fluid input hatch
recipes.addShapeless(<modularmachinery:blockfluidinputhatch:5>, [
    <contenttweaker:corruptedstarmetal>, <modularmachinery:blockfluidinputhatch:4>
]);

// normal fluid output hatch
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:2>, [
    [null, <appliedenergistics2:material>, null],
    [<appliedenergistics2:material>, <modularmachinery:blockfluidoutputhatch:1>, <appliedenergistics2:material>],
    [null, <appliedenergistics2:material>, null]
]);

// reinforced fluid output hatch
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:3>, [
    [null, <botania:manaresource:7>, null],
    [<botania:manaresource:7>, <modularmachinery:blockfluidoutputhatch:2>, <botania:manaresource:7>],
    [null, <botania:manaresource:7>, null]
]);

// big fluid out output hatch
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:4>, [
    [null, <contenttweaker:planetshard>, null],
    [<contenttweaker:planetshard>, <modularmachinery:blockfluidoutputhatch:3>, <contenttweaker:planetshard>],
    [null, <contenttweaker:planetshard>, null]
]);

// huge fluid output hatch
recipes.addShapeless(<modularmachinery:blockfluidoutputhatch:5>, [
    <contenttweaker:corruptedstarmetal>, <modularmachinery:blockfluidoutputhatch:4>
]);

// normal item input
recipes.addShaped(<modularmachinery:blockinputbus:2>, [
    [null, <appliedenergistics2:material>, null],
    [<appliedenergistics2:material>, <modularmachinery:blockinputbus:1>, <appliedenergistics2:material>],
    [null, <appliedenergistics2:material>, null]
]);

// reinforced item input
recipes.addShaped(<modularmachinery:blockinputbus:3>, [
    [null, <botania:manaresource:7>, null],
    [<botania:manaresource:7>, <modularmachinery:blockinputbus:2>, <botania:manaresource:7>],
    [null, <botania:manaresource:7>, null]
]);

// normal item output
recipes.addShaped(<modularmachinery:blockoutputbus:2>, [
    [null, <appliedenergistics2:material>, null],
    [<appliedenergistics2:material>, <modularmachinery:blockoutputbus:1>, <appliedenergistics2:material>],
    [null, <appliedenergistics2:material>, null]
]);

// reinforced item output
recipes.addShaped(<modularmachinery:blockoutputbus:3>, [
    [null, <botania:manaresource:7>, null],
    [<botania:manaresource:7>, <modularmachinery:blockoutputbus:2>, <botania:manaresource:7>],
    [null, <botania:manaresource:7>, null]
]);

// normal energy input hatch
recipes.addShaped(<modularmachinery:blockenergyinputhatch:2>, [
    [null, <appliedenergistics2:material>, null],
    [<appliedenergistics2:material>, <modularmachinery:blockenergyinputhatch:1>, <appliedenergistics2:material>],
    [null, <appliedenergistics2:material>, null]
]);

// reinforced energy input hatch
recipes.addShaped(<modularmachinery:blockenergyinputhatch:3>, [
    [null, <botania:manaresource:7>, null],
    [<botania:manaresource:7>, <modularmachinery:blockenergyinputhatch:2>, <botania:manaresource:7>],
    [null, <botania:manaresource:7>, null]
]);

// big energy input hatch
recipes.addShaped(<modularmachinery:blockenergyinputhatch:4>, [
    [null, <contenttweaker:planetshard>, null],
    [<contenttweaker:planetshard>, <modularmachinery:blockenergyinputhatch:3>, <contenttweaker:planetshard>],
    [null, <contenttweaker:planetshard>, null]
]);


##########################################################################################
print("==================== end of mods modularmachinery.zs ====================");
