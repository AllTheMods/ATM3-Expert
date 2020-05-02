##########################################################################################
#modloaded thermalexpansion
#priority 100

import crafttweaker.item.IItemStack;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Transposer;

print("==================== loading mods thermalexpansion.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// boiler conversion augment
recipes.addShaped(<thermalexpansion:augment:576>, [
    [<ore:dustRedstone>, <ore:blockGlass>, <ore:dustRedstone>],
    [<ore:blockGlass>, <extrautils2:drum>, <ore:blockGlass>],
    [<ore:dustRedstone>, <thermalfoundation:material:256>, <ore:dustRedstone>]
]);

// turbine conversion augment
recipes.remove(<thermalexpansion:augment:640>);
recipes.addShaped(<thermalexpansion:augment:640>, [
    [null, <thermalfoundation:material:24>, null],
    [<thermalfoundation:material:128>, <ic2c_extras:heatconductor>, <thermalfoundation:material:128>],
    [null, <thermalfoundation:material:128>, null]
]);

// pyro concentrator augment
val tankPyro = <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Fluid: {FluidName: "pyrotheum", Amount: 80000}, Level: 1 as byte, Lock: 0 as byte});
recipes.removeShaped(<thermalexpansion:augment:304>);
recipes.addShaped(<thermalexpansion:augment:304>, [
    [null,<thermalfoundation:material:288>,null],
    [<astralsorcery:itemcraftingcomponent:1>,<thermalfoundation:material:515>,<astralsorcery:itemcraftingcomponent:1>],
    [null, tankPyro,null]
]);

// pyroconvective loop augment
val dronePyro = <forestry:bee_drone_ge>.withTag({MaxH: 70, Mate: {Chromosomes: [{UID1: "magicbees.speciesTEPyro", UID0: "magicbees.speciesTEPyro", Slot: 0 as byte}, {UID1: "", UID0: "", Slot: 1 as byte}, {UID1: "", UID0: "", Slot: 2 as byte}, {UID1: "", UID0: "", Slot: 3 as byte}, {UID1: "", UID0: "", Slot: 4 as byte}, {UID1: "", UID0: "", Slot: 5 as byte}, {UID1: "", UID0: "", Slot: 6 as byte}, {UID1: "", UID0: "", Slot: 7 as byte}, {UID1: "", UID0: "", Slot: 8 as byte}, {UID1: "", UID0: "", Slot: 9 as byte}, {UID1: "", UID0: "", Slot: 10 as byte}, {UID1: "", UID0: "", Slot: 11 as byte}, {UID1: "", UID0: "", Slot: 12 as byte}]}, Health: 70, IsAnalyzed: 0 as byte, Genome: {Chromosomes: [{UID1: "magicbees.speciesTEPyro", UID0: "magicbees.speciesTEPyro", Slot: 0 as byte}, {UID1: "", UID0: "", Slot: 1 as byte}, {UID1: "", UID0: "", Slot: 2 as byte}, {UID1: "", UID0: "", Slot: 3 as byte}, {UID1: "", UID0: "", Slot: 4 as byte}, {UID1: "", UID0: "", Slot: 5 as byte}, {UID1: "", UID0: "", Slot: 6 as byte}, {UID1: "", UID0: "", Slot: 7 as byte}, {UID1: "", UID0: "", Slot: 8 as byte}, {UID1: "", UID0: "", Slot: 9 as byte}, {UID1: "", UID0: "", Slot: 10 as byte}, {UID1: "", UID0: "", Slot: 11 as byte}, {UID1: "", UID0: "", Slot: 12 as byte}]}});
val tankLava = <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Fluid: {FluidName: "lava", Amount: 500000}, Level: 4 as byte, Lock: 0 as byte});
recipes.removeShaped(<thermalexpansion:augment:352>);
recipes.addShaped(<thermalexpansion:augment:352>, [
    [null, <thermalfoundation:material:27>, null],
    [dronePyro, <thermalfoundation:material:515>, dronePyro],
    [null, tankLava, null]
]);

// flux anodizers augment
recipes.remove(<thermalexpansion:augment:257>);
recipes.addShaped(<thermalexpansion:augment:257>, [
    [null, <ore:gearBronze>, null],
    [<ore:plateInvar>, <thermalfoundation:material:515>, <ore:plateInvar>],
    [<actuallyadditions:item_crystal_empowered:2>, <ore:dustPyrotheum>, <actuallyadditions:item_crystal_empowered:2>]
]);

// portable tank basic
recipes.removeShaped(<thermalexpansion:tank>);
recipes.addShaped(<thermalexpansion:tank>, [
    [null, <thermalfoundation:material:128>, null],
    [<thermalfoundation:material:128>, <extrautils2:drum>, <thermalfoundation:material:128>],
    [<contenttweaker:coldironplate>, <thermalfoundation:material:512>, <contenttweaker:coldironplate>]
]);

// pulverizer
recipes.remove(<thermalexpansion:machine:1>);
recipes.addShaped(<thermalexpansion:machine:1>, [
    [<thermalfoundation:material:258>, <ic2:itemmisc:451>, <thermalfoundation:material:261>],
    [<minecraft:flint>, <thermalexpansion:frame>, <minecraft:flint>],
    [<contenttweaker:manasteelplate>, <thermalfoundation:material:512>, <contenttweaker:manasteelplate>]
]);

// redstone furnace
recipes.remove(<thermalexpansion:machine>);
recipes.addShaped(<thermalexpansion:machine>, [
    [<thermalfoundation:material:261>, <thermalfoundation:material:513>, <thermalfoundation:material:258>],
    [<minecraft:nether_brick>, <thermalexpansion:frame>, <minecraft:nether_brick>],
    [<thermalfoundation:material:320>, <ic2:itemmisc:451>, <thermalfoundation:material:320>]
]);

// induction smelter
recipes.remove(<thermalexpansion:machine:3>);
recipes.addShaped(<thermalexpansion:machine:3>, [
    [<immersiveengineering:wirecoil:5>, <tcomplement:alloy_tank>, <immersiveengineering:wirecoil:5>],
    [<minecraft:soul_sand>, <thermalexpansion:frame>, <minecraft:soul_sand>],
    [<thermalfoundation:material:290>, <ic2:itemmisc:451>, <thermalfoundation:material:290>]
]);

// device frame
recipes.remove(<thermalexpansion:frame:64>);
recipes.addShaped(<thermalexpansion:frame:64>, [
    [<botania:manaresource:23>, <ic2:itemcable:1>, <botania:manaresource:23>],
    [<thermalfoundation:material:512>, <thermalfoundation:material:257>, <thermalfoundation:material:512>],
    [<thermalfoundation:material:321>, <botania:managlass>, <thermalfoundation:material:321>]
]);

// machine frame
recipes.remove(<thermalexpansion:frame>);
recipes.addShaped(<thermalexpansion:frame>, [
    [<ore:dustRedstone>, <minecraft:piston>, <ore:dustRedstone>],
    [<contenttweaker:manasteelplate>, <thermalexpansion:frame:64>, <contenttweaker:manasteelplate>],
    [<thermalfoundation:material:162>, <contenttweaker:manadiamondplate>, <thermalfoundation:material:162>]
]);

// steam dynamo basic
recipes.remove(<thermalexpansion:dynamo>);
recipes.addShaped(<thermalexpansion:dynamo>, [
    [null, <ic2c_extras:heatconductor>, null],
    [<ore:ingotIron>, <thermalfoundation:material:256>, <ore:ingotIron>],
    [<thermalfoundation:material:128>, <ore:ingotIron>, <thermalfoundation:material:128>]
]);

// energy cell frame
recipes.remove(<thermalexpansion:frame:128>);
recipes.addShaped(<thermalexpansion:frame:128>, [
    [<alchemistry:ingot:31>, <thermalfoundation:glass_alloy:7>, <alchemistry:ingot:31>],
    [<thermalfoundation:material:294>, <actuallyadditions:block_misc:8>, <thermalfoundation:material:294>],
    [<alchemistry:ingot:31>, <thermalfoundation:glass_alloy:7>, <alchemistry:ingot:31>]
]);


### FLUID TRANSPOSER ###

// mana pool | Botania
Transposer.addFillRecipe(<botania:pool>, <botania:pool:2>, <liquid:glowstone> * 4000, 30000);

// ender ingot | Extended Crafting
Transposer.addFillRecipe(<extendedcrafting:material:36>, <enderio:item_alloy_ingot:5>, <liquid:vapor_of_levity> * 200, 500);


### PULVERIZER ###

// redstone | Vanilla
Pulverizer.removeRecipe(<netherendingores:ore_nether_vanilla:6>);
Pulverizer.removeRecipe(<netherendingores:ore_end_vanilla:6>);
Pulverizer.removeRecipe(<minecraft:redstone_ore>);
Pulverizer.addRecipe(<minecraft:redstone> * 6, <minecraft:redstone_ore>, 1500, <thermalfoundation:material:866>, 10);


### REDSTONE FURNACE ###

// redstone | Vanilla
RedstoneFurnace.removeRecipe(<minecraft:redstone_ore>);
RedstoneFurnace.addRecipe(<minecraft:redstone> * 2, <minecraft:redstone_ore>, 3600);


### INDUCTION SMELTER ###

// steel ingot removal
InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:768> * 4);
InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:769> * 4);
InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:802>);
InductionSmelter.removeRecipe(<thermalfoundation:material>, <thermalfoundation:material:768> * 4);
InductionSmelter.removeRecipe(<thermalfoundation:material>, <thermalfoundation:material:769> * 4);
InductionSmelter.removeRecipe(<thermalfoundation:material>, <thermalfoundation:material:802>);

// redstone | Vanilla
InductionSmelter.removeRecipe(<minecraft:sand>, <minecraft:redstone_ore>);
InductionSmelter.addRecipe(<minecraft:redstone>, <minecraft:sand>, <minecraft:redstone_ore>, 1500, <thermalfoundation:material:865>, 20);
InductionSmelter.removeRecipe(<thermalfoundation:material:865>, <netherendingores:ore_end_vanilla:6>);
InductionSmelter.removeRecipe(<thermalfoundation:material:865>, <netherendingores:ore_nether_vanilla:6>);


##########################################################################################
print("==================== end of mods thermalexpansion.zs ====================");
