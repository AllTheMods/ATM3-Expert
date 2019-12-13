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
import mods.thaumcraft.Infusion;
import mods.actuallyadditions.Empowerer;
import mods.actuallyadditions.AtomicReconstructor;

print("Actually additions changes");

#bag
recipes.remove(<actuallyadditions:item_bag>);
recipes.addShaped("CTaabag", <actuallyadditions:item_bag>, [[<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],[<minecraft:stick>, <ore:chest>, <minecraft:leather>], [<minecraft:stick>, <minecraft:leather>, <minecraft:leather>]]);

#block breaker
recipes.remove(<actuallyadditions:block_breaker>);
recipes.addShaped(<actuallyadditions:block_breaker>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],[<minecraft:cobblestone>, <actuallyadditions:item_misc:7>, <thermalfoundation:material:160>], [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);


#iron casing
recipes.removeShaped(<actuallyadditions:block_misc:9>);
recipes.addShaped(<actuallyadditions:block_misc:9>, 
[[<thermalfoundation:material:32>, <minecraft:glowstone_dust>, <thermalfoundation:material:32>],
[<ic2:itemmisc:11>, <ic2:itemmisc:259>, <ic2:itemmisc:11>], 
[<thermalfoundation:material:32>, <minecraft:glowstone_dust>, <thermalfoundation:material:32>]]);


#AAlaser relay
recipes.removeShaped(<actuallyadditions:block_laser_relay>);
recipes.addShaped("CTAAlasers", <actuallyadditions:block_laser_relay> * 2, 
[[<minecraft:obsidian>, <minecraft:redstone_block>, <minecraft:obsidian>],
[<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_misc:8>, <actuallyadditions:item_crystal_empowered>], 
[<minecraft:obsidian>, <minecraft:redstone_block>, <minecraft:obsidian>]]);

#Empowerer
recipes.removeShaped(<actuallyadditions:block_empowerer>);
mods.thaumcraft.Infusion.registerRecipe("CtEmpowerer","",<actuallyadditions:block_empowerer>,1,[<aspect:praecantatio>*10,<aspect:vitreus>*30],<actuallyadditions:block_display_stand>,[<ore:manaDiamond>,<forestry:chipsets>,<thaumcraft:mirrored_glass>,<ore:blockQuartz>]);

#change coils for AA
recipes.removeShaped(<actuallyadditions:item_misc:7>);
recipes.addShaped("CtBasicCoil",<actuallyadditions:item_misc:7>,
[[null,<immersiveengineering:material:20>,null],
[<immersiveengineering:material:20>,<ic2:itemcable:10>,<immersiveengineering:material:20>],
[null,<immersiveengineering:material:20>,null]]);

recipes.removeShaped(<actuallyadditions:item_misc:8>);
recipes.addShaped("CtAdvCoil",<actuallyadditions:item_misc:8>,
[[null,<immersiveengineering:material:21>,null],
[<immersiveengineering:material:21>,<actuallyadditions:item_misc:7>,<immersiveengineering:material:21>],
[null,<immersiveengineering:material:21>,null]]);


#display stand
recipes.remove(<actuallyadditions:block_display_stand>);
recipes.addShaped("CTdisplayStand", <actuallyadditions:block_display_stand>,
[[<minecraft:iron_bars>, null, <minecraft:iron_bars>],
[<actuallyadditions:block_testifi_bucks_green_wall>, <actuallyadditions:block_testifi_bucks_white_wall>, <actuallyadditions:block_testifi_bucks_green_wall>],
[<forestry:thermionic_tubes:5>,<forestry:thermionic_tubes:7>, <forestry:thermionic_tubes:5>]]);

#item filter
recipes.remove(<actuallyadditions:item_filter>);
recipes.addShaped("CTaafilter", <actuallyadditions:item_filter>, 
[[null, <minecraft:iron_bars>, null],
[<minecraft:iron_bars>, <extrautils2:filter>, <minecraft:iron_bars>], 
[null, <minecraft:iron_bars>, null]]);

#energy changes
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:*>);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:*>);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal>, <minecraft:redstone>, 2500);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:1>, <minecraft:dye:4>, 2000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:2>, <minecraft:diamond>, 15000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:3>, <minecraft:coal>, 1000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:4>, <minecraft:emerald>, 25000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:5>, <minecraft:iron_ingot>, 5000);



var aaDisable  = [
<actuallyadditions:block_bio_reactor>,
<actuallyadditions:block_leaf_generator>,
	<actuallyadditions:item_misc:18>,
	<actuallyadditions:item_more_damage_lens>,
	<actuallyadditions:item_explosion_lens>,
	<actuallyadditions:item_damage_lens>,
	<actuallyadditions:item_mining_lens>,
<actuallyadditions:item_color_lens>,
<actuallyadditions:block_coal_generator>,
<actuallyadditions:item_drill_upgrade_speed>,
	<actuallyadditions:item_drill_upgrade_speed_ii>,
	<actuallyadditions:item_drill_upgrade_speed_iii>,
	<actuallyadditions:item_drill_upgrade_silk_touch>,
	<actuallyadditions:item_drill_upgrade_fortune>,
	<actuallyadditions:item_drill_upgrade_three_by_three>,
	<actuallyadditions:item_drill_upgrade_block_placing>,
	<actuallyadditions:item_drill_upgrade_five_by_five>,
	<actuallyadditions:item_drill_upgrade_fortune_ii>,
	<actuallyadditions:item_drill:0>,
	<actuallyadditions:item_drill:1>,
	<actuallyadditions:item_drill:2>,
	<actuallyadditions:item_drill:3>,
	<actuallyadditions:item_drill:4>,
	<actuallyadditions:item_drill:5>,
	<actuallyadditions:item_drill:6>,
	<actuallyadditions:item_drill:7>,
	<actuallyadditions:item_drill:8>,
	<actuallyadditions:item_drill:9>,
	<actuallyadditions:item_drill:10>,
	<actuallyadditions:item_drill:11>,
	<actuallyadditions:item_drill:12>,
	<actuallyadditions:item_drill:13>,
	<actuallyadditions:item_drill:14>,
	<actuallyadditions:item_drill:15>,
	<actuallyadditions:block_heat_collector>,
	<actuallyadditions:item_wings_of_the_bats>,
	<actuallyadditions:block_furnace_solar>
	]as IItemStack[];

val AL = aaDisable.length;
	
	for i in 0 to AL{
	
	    mods.jei.JEI.removeAndHide(aaDisable[i]);
	}
