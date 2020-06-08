##########################################################################################
#modloaded ic2
#priority 100

import mods.ic2.LiquidFuelGenerator;
import mods.ic2.Macerator;
import mods.ic2.MetalFormer;
import mods.ic2.ScrapBox;
import mods.ic2.ThermalCentrifuge;

print("==================== loading mods industrialcraft.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// raw obsidian blade
recipes.remove(<ic2:itemmisc:302>);
recipes.addShaped(<ic2:itemmisc:302>, [
    [<ore:dustObsidian>, <ore:dustObsidian>, <ore:dustObsidian>],
    [<ore:dustObsidian>, <minecraft:flint>, <ore:dustObsidian>],
    [<ore:dustObsidian>, <ore:dustObsidian>, <ore:dustObsidian>]
]);

// mass fabricator
recipes.remove(<ic2:blockmachinehv:1>);
recipes.addShaped(<ic2:blockmachinehv:1>, [
    [<mekanism:polyethene:2>, <ic2:itemmisc:452>, <mekanism:polyethene:2>],
    [<ic2:blockmachinemv>, <mekanism:controlcircuit:1>, <ic2:blockmachinemv>],
    [<mekanism:polyethene:2>, <ic2:itemmisc:452>, <mekanism:polyethene:2>]
]);

// macerator
recipes.remove(<ic2:blockmachinelv:3>);
recipes.addShaped(<ic2:blockmachinelv:3>, [
    [<immersiveengineering:material:7>, <immersiveengineering:material:7>, <immersiveengineering:material:7>],
    [<immersiveengineering:stone_decoration:5>, <ic2:blockmachinelv>, <immersiveengineering:stone_decoration:5>],
    [null, <ic2:itemmisc:451>, null]
]);

// electronic circuit
recipes.remove(<ic2:itemmisc:451>);
recipes.addShaped(<ic2:itemmisc:451>, [
    [<ic2:itemcable:1>,  <ic2:itemcable:1>, <ic2:itemcable:1>],
    [<ore:dustRedstone>, <ore:plateIron>, <ore:dustRedstone>],
    [<ic2:itemcable:1>, <ic2:itemcable:1>, <ic2:itemcable:1>]
]);

// refined iron ingot from block
recipes.remove(<ic2:itemmisc:53>);
recipes.addShapeless(<ic2:itemmisc:53> * 9, [
    <ic2c_extras:refinedironblock>
]);

// machine block
recipes.remove(<ic2:blockmachinelv>);
recipes.addShaped(<ic2:blockmachinelv>, [
    [<ic2:itemmisc:53>, <thermalfoundation:material:354>, <ic2:itemmisc:53>],
    [<thermalfoundation:material:354>, <tconstruct:clear_glass>, <thermalfoundation:material:354>],
    [<ic2:itemmisc:53>, <thermalfoundation:material:354>, <ic2:itemmisc:53>]
]);

// electric furnace
recipes.remove(<ic2:blockmachinelv:2>);
recipes.addShapedMirrored(<ic2:blockmachinelv:2>, [
    [<ore:dustRedstone>, <ic2:itemmisc:451>, <ore:dustRedstone>],
    [<ic2:blockmachinelv:1>, <immersiveengineering:stone_decoration:1>, <ic2:blockmachinelv:1>],
    [<ore:dustRedstone>, <ic2:itemmisc:451>, <ore:dustRedstone>]
]);

// mixed metal ingot
recipes.remove(<ic2:itemmisc:56>);
recipes.addShaped(<ic2:itemmisc:56> * 2, [
    [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
    [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>],
    [<ore:ingotPlatinum>, <ore:ingotPlatinum>, <ore:ingotPlatinum>]
]);

// coffee beans
recipes.addShapeless(<ic2:itemmisc:154>, [
    <actuallyadditions:item_coffee_beans>
]);

// reactor chamber
recipes.remove(<ic2:blockchambers>);
recipes.addShaped(<ic2:blockchambers>, [
    [null, <ic2:itemmisc:259>, null],
    [<ic2:itemmisc:259>, <ic2:blockmachinemv>, <ic2:itemmisc:259>],
    [null, <ic2:itemmisc:259>, null]
]);

// plasma core
recipes.remove(<ic2:itemmisc:264>);
recipes.addShaped(<ic2:itemmisc:264>, [
    [<ic2:itemmisc:263>, <ic2:itemmisc:257>, <ic2:itemmisc:263>],
    [<ic2:itemmisc:257>, <ic2:itemmisc:108>, <ic2:itemmisc:257>],
    [<ic2:itemmisc:263>, <ic2:itemmisc:257>, <ic2:itemmisc:263>]
]);

// metal bender | IC2Classic Extras
recipes.remove(<ic2c_extras:metalbender>);
recipes.addShaped(<ic2c_extras:metalbender>, [
    [<ic2:itemcable:1>, <thermalfoundation:material:256>, <ic2:itemcable:1>],
    [<ic2:blockmachinelv:5>, <ic2:blockmachinelv>, <ic2:blockmachinelv:5>],
    [<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>]
]);

// blank press | IC2Classic Extras
recipes.addShaped(<ic2c_extras:blankpress> * 3, [
    [<thermalfoundation:material:32>, <ic2c_extras:refinedironplate>, null],
    [<ic2c_extras:refinedironplate>, <ic2c_extras:refinedironplate>, null],
    [null, null, null]
]);

// rolling press | IC2Classic Extras
recipes.addShaped(<ic2c_extras:rollingpress>, [
    [null, <thermalfoundation:material:32>, null],
    [<thermalfoundation:material:32>, <ic2c_extras:blankpress>, <thermalfoundation:material:32>],
    [null, <thermalfoundation:material:32>, null]
]);

// heat conductor | IC2Classic Extras
recipes.remove(<ic2c_extras:heatconductor>);
recipes.addShaped(<ic2c_extras:heatconductor>, [
    [<ore:itemRubber>, <ore:itemRubber>, <ore:ingotBronze>],
    [<ore:itemRubber>, <immersiveengineering:material:6>, <ore:itemRubber>],
    [<ore:ingotBronze>, <ore:itemRubber>, <ore:itemRubber>]
]);


### FURNACE RECIPES ###

// refined iron ingot
furnace.remove(<ic2:itemmisc:53>, <minecraft:iron_ingot>);

// refind iron block | IC2Classic Extras
furnace.remove(<ic2c_extras:refinedironblock>, <minecraft:iron_block>);


### LIQUID FUEL GENERATOR ###

// refined canola oil | Actually Additions
LiquidFuelGenerator.addFluid(<liquid:refinedcanolaoil>, 800, 20);


### MACERATOR ###

// coffee powder
Macerator.addRecipe(<ic2:itemmisc:154> * 3, <actuallyadditions:item_coffee_beans>);

// pulverized obsidian | Thermal Foundation
Macerator.addRecipe(<thermalfoundation:material:770> *4, <minecraft:obsidian>);


### METAL FORMER ###

// cold iron plate | ContentTweaker
MetalFormer.addRollingRecipe(<contenttweaker:coldironplate>, <contenttweaker:coldironingot>);
// quartz plate | ContentTweaker
MetalFormer.addRollingRecipe(<contenttweaker:quartzplate>, <contenttweaker:quartzingot>);
// manasteel plate | ContentTweaker
MetalFormer.addRollingRecipe(<contenttweaker:manasteelplate>, <botania:manaresource>);
// mana diamond plate | ContentTweaker
MetalFormer.addRollingRecipe(<contenttweaker:manadiamondplate>, <botania:manaresource:2>);

// iron plate | Thermal Foundation
MetalFormer.addRollingRecipe(<thermalfoundation:material:32>, <minecraft:iron_ingot>);
// gold plate | Thermal Foundation
MetalFormer.addRollingRecipe(<thermalfoundation:material:33>, <minecraft:gold_ingot>);
// copper plate | Thermal Foundation
MetalFormer.addRollingRecipe(<thermalfoundation:material:320>, <thermalfoundation:material:128>);
// tin plate | Thermal Foundation
MetalFormer.addRollingRecipe(<thermalfoundation:material:321>, <thermalfoundation:material:129>);
// silver plate | Thermal Foundation
MetalFormer.addRollingRecipe(<thermalfoundation:material:322>, <thermalfoundation:material:130>);
// lead plate | Thermal Foundation
MetalFormer.addRollingRecipe(<thermalfoundation:material:323>, <thermalfoundation:material:131>);
// steel plate | Thermal Foundation
MetalFormer.addRollingRecipe(<thermalfoundation:material:352>, <thermalfoundation:material:160>);
// bronze plate | Thermal Foundation
MetalFormer.addRollingRecipe(<thermalfoundation:material:355>, <thermalfoundation:material:163>);


### SCRAPBOX ###

// netherrack | Vanilla
ScrapBox.removeDrop(<minecraft:netherrack>);
// nether star | Vanilla
ScrapBox.removeDrop(<minecraft:nether_star>);
// diamond | Vanilla
ScrapBox.removeDrop(<minecraft:diamond>);
// glowstone dust | Vanilla
ScrapBox.removeDrop(<minecraft:glowstone_dust>);
// sould sand | Vanilla
ScrapBox.removeDrop(<minecraft:soul_sand>);
// ghast tear | Vanilla
ScrapBox.removeDrop(<minecraft:ghast_tear>);


### THERMAL CENTRIFUGE ###

// pulverized iron
ThermalCentrifuge.addRecipe([<thermalfoundation:material>, <ic2c_extras:goldtinydust>], <ore:crushedPurifiedIron>, 400);
ThermalCentrifuge.addRecipe([<thermalfoundation:material>, <ic2c_extras:goldtinydust>, <ic2c_extras:stonedust>], <ore:crushedIron>, 600);
// pulverized gold
ThermalCentrifuge.addRecipe([<thermalfoundation:material:1>, <ic2c_extras:silvertinydust>], <ore:crushedPurifiedGold>, 400);
ThermalCentrifuge.addRecipe([<thermalfoundation:material:1>, <ic2c_extras:silvertinydust>, <ic2c_extras:stonedust>], <ore:crushedGold>, 600);
// pulverized copper
ThermalCentrifuge.addRecipe([<thermalfoundation:material:64>, <ic2c_extras:tintinydust>], <ore:crushedPurifiedCopper>, 400);
ThermalCentrifuge.addRecipe([<thermalfoundation:material:64>, <ic2c_extras:tintinydust>, <ic2c_extras:stonedust>], <ore:crushedCopper>, 600);
// pulverized tin
ThermalCentrifuge.addRecipe([<thermalfoundation:material:65>, <ic2c_extras:irontinydust>], <ore:crushedPurifiedTin>, 400);
ThermalCentrifuge.addRecipe([<thermalfoundation:material:65>, <ic2c_extras:irontinydust>, <ic2c_extras:stonedust>], <ore:crushedTin>, 600);
// pulverized silver
ThermalCentrifuge.addRecipe([<thermalfoundation:material:66>, <ic2c_extras:leadtinydust>], <ore:crushedPurifiedSilver>, 400);
ThermalCentrifuge.addRecipe([<thermalfoundation:material:66>, <ic2c_extras:leadtinydust>, <ic2c_extras:stonedust>], <ore:crushedSilver>, 600);
// pulverized lead
ThermalCentrifuge.addRecipe([<thermalfoundation:material:67>, <ic2c_extras:coppertinydust>], <ore:crushedPurifiedLead>, 400);
ThermalCentrifuge.addRecipe([<thermalfoundation:material:67>, <ic2c_extras:coppertinydust>, <ic2c_extras:stonedust>], <ore:crushedLead>, 600);


##########################################################################################
print("==================== end of mods industrialcraft.zs ====================");
