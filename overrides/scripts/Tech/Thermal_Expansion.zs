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
import mods.thermalexpansion.RedstoneFurnace;
import mods.jei.JEI.removeAndHide;
import mods.thermalexpansion.InductionSmelter;


print("Thermal expansion changes");

val copper = <thermalfoundation:material:128>;
val tin = <thermalfoundation:material:129>;
val bronze = <thermalfoundation:material:163>;
val stonegear = <thermalfoundation:material:23>;
val ironplate = <thermalfoundation:material:32>;
val iron = <minecraft:iron_ingot>;

#boiler conversion
recipes.remove(<thermalexpansion:augment:576>);
recipes.addShaped(<thermalexpansion:augment:576>,
 [[null, <minecraft:furnace>, null],
 [<minecraft:redstone>, <minecraft:flint_and_steel>, <minecraft:redstone>], 
 [<minecraft:iron_ingot>, <thermalfoundation:material:513>, <minecraft:iron_ingot>]]);

#basic tank 
recipes.removeShaped(<thermalexpansion:tank>);
recipes.addShaped(<thermalexpansion:tank>, [[null, <thermalfoundation:material:128>, null],[<thermalfoundation:material:128>, <extrautils2:drum>, <thermalfoundation:material:128>], [<contenttweaker:coldironplate>, <thermalfoundation:material:512>, <contenttweaker:coldironplate>]]);


#pulveriser
recipes.remove(<thermalexpansion:machine:1>);
recipes.addShaped("CTpulveriser", <thermalexpansion:machine:1>,
 [[<thermalfoundation:material:258>, <ic2:itemmisc:451>, <thermalfoundation:material:261>],
 [<minecraft:flint>, <thermalexpansion:frame>, <minecraft:flint>], 
 [<contenttweaker:manasteelplate>, <thermalfoundation:material:512>, <contenttweaker:manasteelplate>]]);

#redstone furnace
recipes.remove(<thermalexpansion:machine>);
recipes.addShaped(<thermalexpansion:machine>,
 [[<thermalfoundation:material:261>, <thermalfoundation:material:513>, <thermalfoundation:material:258>],
 [<minecraft:nether_brick>, <thermalexpansion:frame>, <minecraft:nether_brick>], 
 [<thermalfoundation:material:320>, <ic2:itemmisc:451>, <thermalfoundation:material:320>]]);

#induction smelter
recipes.remove(<thermalexpansion:machine:3>);
recipes.addShaped("CTinductsmelter", <thermalexpansion:machine:3>,
 [[<immersiveengineering:wirecoil:5>, <tcomplement:alloy_tank>, <immersiveengineering:wirecoil:5>],
 [<minecraft:soul_sand>, <thermalexpansion:frame>, <minecraft:soul_sand>], 
 [<thermalfoundation:material:290>, <ic2:itemmisc:451>, <thermalfoundation:material:290>]]);

#compactor removal
 recipes.removeShaped(<thermalexpansion:machine:5>);
 mods.jei.JEI.hide(<thermalexpansion:machine:5>);
 mods.jei.JEI.hideCategory("thermalexpansion.compactor");
 mods.jei.JEI.hideCategory("thermalexpansion.compactor_mint");
 mods.jei.JEI.hideCategory("thermalexpansion.compactor_gear");
 recipes.removeShaped(<thermalexpansion:device:10>);
 mods.jei.JEI.hideCategory("thermalexpansion.factorizer_split");
 mods.jei.JEI.hideCategory("thermalexpansion.factorizer_combine");

#copper gear
recipes.removeShaped(<thermalfoundation:material:256>);

#bronze gear
recipes.removeShaped(<thermalfoundation:material:291>);

#tin gear
recipes.removeShaped(<thermalfoundation:material:257>);

#iron gear
recipes.removeShaped(<thermalfoundation:material:24>);

#Charcoal
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<thermalfoundation:material:801>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<thermalfoundation:material:801>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<minecraft:log:3>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<minecraft:hay_block>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<minecraft:cactus>);
mods.thermalexpansion.RedstoneFurnace.removePyrolysisRecipe(<minecraft:reeds>);

#thermal coils
recipes.addShaped("CTtransmission", <thermalfoundation:material:514>,
[[null, null, <actuallyadditions:item_crystal>],
[null, <thermalfoundation:material:130>, null],
[<actuallyadditions:item_crystal>, null, null]]);

recipes.addShaped("CTconductance", <thermalfoundation:material:515>, 
[[<actuallyadditions:item_crystal>, null, null],
[null, <thermalfoundation:material:161>, null], 
[null, null, <actuallyadditions:item_crystal>]]);

recipes.addShaped("CTreception", <thermalfoundation:material:513>, 
[[null, null, <actuallyadditions:item_crystal>],
[null, <minecraft:gold_ingot>, null], 
[<actuallyadditions:item_crystal>, null, null]]);

#thermal innovation base parts
recipes.addShaped("CTticasing", <thermalfoundation:material:640>, 
[[<thermalfoundation:material:353>, <actuallyadditions:block_crystal_empowered>, <thermalfoundation:material:353>],
[<thermalfoundation:material:353>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],
[<thermalfoundation:material:353>, <thermalfoundation:material:353>, <thermalfoundation:material:353>]]);
recipes.addShaped("CTtidrill", <thermalfoundation:material:656>, 
[[<ic2:itemmisc:303>, <ic2:itemmisc:303>, null],
[<ic2:itemmisc:303>, <thermalfoundation:material:352>, <ic2:itemmisc:303>],
[null, <ic2:itemmisc:303>, <thermalfoundation:material:352>]]);
recipes.addShaped("CTtisaw", <thermalfoundation:material:657>,
[[null, <ic2:itemmisc:303>, null],
[<ic2:itemmisc:303>, <thermalfoundation:material:352>, <ic2:itemmisc:303>], 
[null, <ic2:itemmisc:303>, null]]);

#Leadstone fluxduct
recipes.remove(<thermaldynamics:duct_0>);
recipes.addShaped("CTleadstoneFS", <thermaldynamics:duct_0> * 4,
[[<thermalfoundation:material:131>, <thermalfoundation:material:131>, <thermalfoundation:material:131>],
[<actuallyadditions:item_crystal>, <thermalfoundation:glass:3>, <actuallyadditions:item_crystal>], 
[<thermalfoundation:material:131>, <thermalfoundation:material:131>, <thermalfoundation:material:131>]]);

#Redstone Fluxduct
recipes.remove(<thermaldynamics:duct_0:6>);
recipes.addShaped("CTredstoneFD", <thermaldynamics:duct_0:6> * 3,
[[null, null, null],
[<thermalfoundation:material:353>, <thermalfoundation:glass_alloy>, <thermalfoundation:material:353>], 
[null, null, null]]);

#redstone servo
recipes.addShaped(<thermalfoundation:material:512>, 
[[<actuallyadditions:item_crystal>, <minecraft:iron_ingot>, <actuallyadditions:item_crystal>],
[null, <minecraft:iron_ingot>, null], 
[<actuallyadditions:item_crystal>, <minecraft:iron_ingot>, <actuallyadditions:item_crystal>]]);

#machine frame
recipes.remove(<thermalexpansion:frame>);
recipes.addShaped("ctteframe", <thermalexpansion:frame>, 
[[<minecraft:redstone>, <minecraft:piston>, <minecraft:redstone>],
[<contenttweaker:manasteelplate>, <thermalexpansion:frame:64>, <contenttweaker:manasteelplate>], 
[<thermalfoundation:material:162>, <contenttweaker:manadiamondplate>, <thermalfoundation:material:162>]]);


#device frame
recipes.remove(<thermalexpansion:frame:64>);
recipes.addShaped("ctdeviceframe", <thermalexpansion:frame:64>, 
[[<botania:manaresource:23>, <ic2:itemcable:1>, <botania:manaresource:23>],
[<thermalfoundation:material:512>, <thermalfoundation:material:257>, <thermalfoundation:material:512>],
[<thermalfoundation:material:321>, <botania:managlass>, <thermalfoundation:material:321>]]);


#steam dynamo (fixed due to coil moved to t2)
recipes.remove(<thermalexpansion:dynamo>);
recipes.addShaped("CTsteamdynamo", <thermalexpansion:dynamo>,
[[null, <ic2c_extras:heatconductor>, null],
[<minecraft:iron_ingot>, <thermalfoundation:material:256>, <minecraft:iron_ingot>],
[<thermalfoundation:material:128>, <minecraft:iron_ingot>, <thermalfoundation:material:128>]]);

#steam augment
recipes.remove(<thermalexpansion:augment:640>);
recipes.addShaped("CTthermalturbine", <thermalexpansion:augment:640>, 
[[null, <thermalfoundation:material:24>, null],
[<thermalfoundation:material:128>, <ic2c_extras:heatconductor>, <thermalfoundation:material:128>],
[null, <thermalfoundation:material:128>, null]]);

#Reinforced Upgrade Kit changes
recipes.removeShaped(<thermalfoundation:upgrade:1>);
recipes.addShaped("CTkit1", <thermalfoundation:upgrade:1>, [[null, <thermalfoundation:material:353>, null],[<thermalfoundation:material:353>, <thermalfoundation:material:288>, <thermalfoundation:material:353>], [<ic2:itemmisc:451>, <actuallyadditions:item_crystal_empowered>, <ic2:itemmisc:451>]]);

#signalum
recipes.remove(<thermalfoundation:upgrade:2>);
mods.extendedcrafting.TableCrafting.addShaped(0, <thermalfoundation:upgrade:2>, [
	[<thermalfoundation:material:352>, <thermalfoundation:material:165>, <appliedenergistics2:material:10>, <thermalfoundation:material:165>, <thermalfoundation:material:352>], 
	[<thermalfoundation:material:165>, <thermalfoundation:material:515>, <contenttweaker:manadiamondplate>, <ic2:itemmisc:452>, <thermalfoundation:material:165>], 
	[<appliedenergistics2:material:10>, <thermalfoundation:material:165>, <bloodmagic:slate:1>, <thermalfoundation:material:165>, <appliedenergistics2:material:10>], 
	[<thermalfoundation:material:165>, <ic2:itemmisc:452>, <contenttweaker:manadiamondplate>, <thermalfoundation:material:515>, <thermalfoundation:material:165>], 
	[<thermalfoundation:material:352>, <thermalfoundation:material:165>, <appliedenergistics2:material:10>, <thermalfoundation:material:165>, <thermalfoundation:material:352>]
]);

#resonant
recipes.remove(<thermalfoundation:upgrade:3>);
mods.extendedcrafting.TableCrafting.addShaped(0, <thermalfoundation:upgrade:3>, [
	[<enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>], 
	[<enderio:item_material:58>, <forestry:chipsets:3>, <thaumcraft:ingot>, <actuallyadditions:item_crystal_empowered:4>, <thaumcraft:ingot>, <forestry:chipsets:3>, <enderio:item_material:58>], 
	[<enderio:item_material:58>, <thaumcraft:ingot>, <plustic:osmiridiumingot>, <plustic:osmiridiumingot>, <plustic:osmiridiumingot>, <thaumcraft:ingot>, <enderio:item_material:58>], 
	[<enderio:item_material:58>, <actuallyadditions:item_crystal_empowered:4>, <plustic:osmiridiumingot>, <mekanism:teleportationcore>, <plustic:osmiridiumingot>, <actuallyadditions:item_crystal_empowered:4>, <enderio:item_material:58>], 
	[<enderio:item_material:58>, <thaumcraft:ingot>, <plustic:osmiridiumingot>, <plustic:osmiridiumingot>, <plustic:osmiridiumingot>, <thaumcraft:ingot>, <enderio:item_material:58>], 
	[<enderio:item_material:58>, <forestry:chipsets:3>, <thaumcraft:ingot>, <actuallyadditions:item_crystal_empowered:4>, <thaumcraft:ingot>, <forestry:chipsets:3>, <enderio:item_material:58>], 
	[<enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>, <enderio:item_material:58>]
]);

#fractioning still and gearworker for compactor
recipes.remove(<thermalexpansion:machine:7>); 
mods.jei.JEI.hide(<thermalexpansion:machine:7>); 
recipes.remove(<thermalexpansion:augment:369>); 
mods.jei.JEI.hide(<thermalexpansion:augment:369>); 
recipes.remove(<thermalexpansion:augment:368>); 
mods.jei.JEI.hide(<thermalexpansion:augment:368>);
mods.jei.JEI.hide(<thermalexpansion:augment:337>);

#Energy cell frame
recipes.remove(<thermalexpansion:frame:128>);
recipes.addShaped("CTrfFrame", <thermalexpansion:frame:128>, 
[[<alchemistry:ingot:31>, <thermalfoundation:glass_alloy:7>, <alchemistry:ingot:31>],
[<thermalfoundation:material:294>, <actuallyadditions:block_misc:8>, <thermalfoundation:material:294>], 
[<alchemistry:ingot:31>, <thermalfoundation:glass_alloy:7>, <alchemistry:ingot:31>]]);

#magmatic dynamo
mods.jei.JEI.hide(<thermalexpansion:dynamo:1>);

#satchels
mods.jei.JEI.hide(<thermalexpansion:satchel>);
recipes.remove(<thermalexpansion:satchel:1>);

#satchels
mods.jei.JEI.hide(<thermalexpansion:satchel>);
recipes.remove(<thermalexpansion:satchel:1>);
recipes.addShaped("CThardenedsatchel", <thermalexpansion:satchel:1>, [[null, <thermalfoundation:material:162>, <minecraft:leather>],[<thermalfoundation:material:162>, <actuallyadditions:item_bag:*>, <minecraft:leather>], [<minecraft:stick>, <thermalfoundation:material:162>, <minecraft:leather>]]);

#steel ingot removal
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material>, <thermalfoundation:material:768> * 4);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:802>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material>, <thermalfoundation:material:769> * 4);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:769> * 4);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material>, <thermalfoundation:material:802>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:768> * 4);

#Pyro-Concentrator
recipes.removeShaped(<thermalexpansion:augment:304>);
recipes.addShaped("CtPyroConcentrator",<thermalexpansion:augment:304>,
 [[null,<thermalfoundation:material:288>,null],
 [<astralsorcery:itemcraftingcomponent:1>,<thermalfoundation:material:515>,<astralsorcery:itemcraftingcomponent:1>],
 [null,<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Fluid: {FluidName: "pyrotheum", Amount: 80000}, Level: 1 as byte, Lock: 0 as byte}),null]]);

#Hardened Mana Glass
    recipes.remove(<thermalfoundation:glass:8>);
    mods.botania.ManaInfusion.addInfusion(<thermalfoundation:glass:8>, <thermalfoundation:glass:3>, 10000);

#Emerald Gear Can be used in Late Game

recipes.addShaped("CtEmeraldGear",<thermalfoundation:material:27>,
 [[null,<minecraft:emerald>,null],
 [<minecraft:emerald>,<botania:manaresource:4>,<minecraft:emerald>],
 [null,<minecraft:emerald>,null]]
 );

#PyroconvectiveLoop OP Gated BEEs

recipes.removeShaped(<thermalexpansion:augment:352>);
recipes.addShaped("CtPyroLoop",<thermalexpansion:augment:352>,
 [[null,<thermalfoundation:material:27>,null],
 [<forestry:bee_drone_ge>.withTag({MaxH: 70, Mate: {Chromosomes: [{UID1: "magicbees.speciesTEPyro", UID0: "magicbees.speciesTEPyro", Slot: 0 as byte}, {UID1: "", UID0: "", Slot: 1 as byte}, {UID1: "", UID0: "", Slot: 2 as byte}, {UID1: "", UID0: "", Slot: 3 as byte}, {UID1: "", UID0: "", Slot: 4 as byte}, {UID1: "", UID0: "", Slot: 5 as byte}, {UID1: "", UID0: "", Slot: 6 as byte}, {UID1: "", UID0: "", Slot: 7 as byte}, {UID1: "", UID0: "", Slot: 8 as byte}, {UID1: "", UID0: "", Slot: 9 as byte}, {UID1: "", UID0: "", Slot: 10 as byte}, {UID1: "", UID0: "", Slot: 11 as byte}, {UID1: "", UID0: "", Slot: 12 as byte}]}, Health: 70, IsAnalyzed: 0 as byte, Genome: {Chromosomes: [{UID1: "magicbees.speciesTEPyro", UID0: "magicbees.speciesTEPyro", Slot: 0 as byte}, {UID1: "", UID0: "", Slot: 1 as byte}, {UID1: "", UID0: "", Slot: 2 as byte}, {UID1: "", UID0: "", Slot: 3 as byte}, {UID1: "", UID0: "", Slot: 4 as byte}, {UID1: "", UID0: "", Slot: 5 as byte}, {UID1: "", UID0: "", Slot: 6 as byte}, {UID1: "", UID0: "", Slot: 7 as byte}, {UID1: "", UID0: "", Slot: 8 as byte}, {UID1: "", UID0: "", Slot: 9 as byte}, {UID1: "", UID0: "", Slot: 10 as byte}, {UID1: "", UID0: "", Slot: 11 as byte}, {UID1: "", UID0: "", Slot: 12 as byte}]}}),<thermalfoundation:material:515>,<forestry:bee_drone_ge>.withTag({MaxH: 70, Mate: {Chromosomes: [{UID1: "magicbees.speciesTEPyro", UID0: "magicbees.speciesTEPyro", Slot: 0 as byte}, {UID1: "", UID0: "", Slot: 1 as byte}, {UID1: "", UID0: "", Slot: 2 as byte}, {UID1: "", UID0: "", Slot: 3 as byte}, {UID1: "", UID0: "", Slot: 4 as byte}, {UID1: "", UID0: "", Slot: 5 as byte}, {UID1: "", UID0: "", Slot: 6 as byte}, {UID1: "", UID0: "", Slot: 7 as byte}, {UID1: "", UID0: "", Slot: 8 as byte}, {UID1: "", UID0: "", Slot: 9 as byte}, {UID1: "", UID0: "", Slot: 10 as byte}, {UID1: "", UID0: "", Slot: 11 as byte}, {UID1: "", UID0: "", Slot: 12 as byte}]}, Health: 70, IsAnalyzed: 0 as byte, Genome: {Chromosomes: [{UID1: "magicbees.speciesTEPyro", UID0: "magicbees.speciesTEPyro", Slot: 0 as byte}, {UID1: "", UID0: "", Slot: 1 as byte}, {UID1: "", UID0: "", Slot: 2 as byte}, {UID1: "", UID0: "", Slot: 3 as byte}, {UID1: "", UID0: "", Slot: 4 as byte}, {UID1: "", UID0: "", Slot: 5 as byte}, {UID1: "", UID0: "", Slot: 6 as byte}, {UID1: "", UID0: "", Slot: 7 as byte}, {UID1: "", UID0: "", Slot: 8 as byte}, {UID1: "", UID0: "", Slot: 9 as byte}, {UID1: "", UID0: "", Slot: 10 as byte}, {UID1: "", UID0: "", Slot: 11 as byte}, {UID1: "", UID0: "", Slot: 12 as byte}]}})],
 [null,<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Fluid: {FluidName: "lava", Amount: 500000}, Level: 4 as byte, Lock: 0 as byte}),null]]);

