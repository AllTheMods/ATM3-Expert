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
import mods.jei.JEI.removeAndHide as removal;
print("Vanilla changes here");

val ironPlate = <thermalfoundation:material:32>;
val ironGear = <ore:ingotTin>;
val cobbleTwoTimes = <ore:compressed1xCobblestone>;

#iron plate @quark
recipes.removeShaped(<quark:iron_plate> * 24,
 [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
 [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>], 
 [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
recipes.addShaped(<quark:iron_plate> * 24,
 [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
 [null, <minecraft:iron_ingot>, null], 
 [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>]]);
#litherite // recipe inside MM configs
 recipes.remove(<environmentaltech:litherite_crystal>);
 
#bee receptacle
recipes.remove(<gendustry:bee_receptacle>);
recipes.addShaped(<gendustry:bee_receptacle>, [[<thermalfoundation:material:163>, <atmtweaks:item_material:2>, <thermalfoundation:material:163>],[<atmtweaks:item_material:2>, <minecraft:glass>, <atmtweaks:item_material:2>], [<thermalfoundation:material:163>, <minecraft:redstone>, <thermalfoundation:material:163>]]);

#translocators
recipes.remove(<translocators:translocator_part:1>);
recipes.remove(<translocators:translocator_part>);

recipes.addShaped(<translocators:translocator_part:1> * 2, [[<actuallyadditions:item_crystal>, <minecraft:ender_eye>, <actuallyadditions:item_crystal>],[<minecraft:iron_ingot>, <minecraft:piston>, <minecraft:iron_ingot>], [<actuallyadditions:item_crystal>, <appliedenergistics2:material:22>, <actuallyadditions:item_crystal>]]);
recipes.addShaped(<translocators:translocator_part> * 2, [[<actuallyadditions:item_crystal>, <minecraft:ender_pearl>, <actuallyadditions:item_crystal>],[<minecraft:iron_ingot>, <minecraft:piston>, <minecraft:iron_ingot>], [<actuallyadditions:item_crystal>, <appliedenergistics2:material:22>, <actuallyadditions:item_crystal>]]);

 
#advanced rocketry circuit
 mods.advancedrocketry.PrecisionAssembler.removeRecipe(<advancedrocketry:ic:4>);
 mods.advancedrocketry.PrecisionAssembler.addRecipe(<advancedrocketry:ic:4>, 80, 100, <thermalfoundation:material:352>, <thermalfoundation:material:33>, <minecraft:redstone>);
 
#diamond gear 
recipes.addShaped(<thermalfoundation:material:26>,
 [[null, <minecraft:diamond>, null],
 [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], 
 [null, <minecraft:diamond>, null]]);

#high oven
recipes.remove(<tcomplement:high_oven_controller>);

#fluxcore
recipes.remove(<fluxnetworks:fluxcore>);

#time in a bottle
recipes.remove(<randomthings:timeinabottle>);
recipes.addShaped(<randomthings:timeinabottle>, [[<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:3>],[<forge:bucketfilled>, <minecraft:clock>, <thermalfoundation:storage_alloy>], [<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered:4>]]);

#descriptions
<minecraft:diamond>.addTooltip(format.red("Found in the Nether"));
<actuallyadditions:item_misc:5>.addTooltip(format.gold("Found in Atum"));
<thermalfoundation:material:132>.addTooltip(format.red("Found in the Nether"));
<minecraft:coal:1>.addTooltip(format.red("Made with Forestry piles"));

#building gadgets
recipes.remove(<buildinggadgets:destructiontool>);
recipes.remove(<buildinggadgets:buildingtool>);
recipes.addShaped(<buildinggadgets:destructiontool>, [[<actuallyadditions:item_crystal:5>, <minecraft:ender_pearl>, <actuallyadditions:item_crystal:5>],[<minecraft:ender_pearl>, <thermalfoundation:material:640>, <minecraft:ender_pearl>], [<actuallyadditions:item_crystal:5>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal:5>]]);
recipes.addShaped(<buildinggadgets:buildingtool>, [[<actuallyadditions:item_crystal:5>, <minecraft:gold_ingot>, <actuallyadditions:item_crystal:5>],[<actuallyadditions:item_crystal_empowered:1>, <thermalfoundation:material:640>, <actuallyadditions:item_crystal_empowered:1>], [<actuallyadditions:item_crystal:5>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal:5>]]);

#Logistics pipes changes
/// 
recipes.remove(<logisticspipes:chip_basic_raw>);
recipes.addShapedMirrored(<logisticspipes:chip_basic_raw> * 2, 
 [[null, <thermalfoundation:material:32>, null],
 [<ic2:itemmisc:53>, <minecraft:sandstone>, <ic2:itemmisc:53>], 
 [null, <thermalfoundation:material:32>, null]]);
 
recipes.remove(<logisticspipes:chip_fpga_raw>);
recipes.addShaped(<logisticspipes:chip_fpga_raw> * 16, 
 [[<ore:sand>, <ic2:itemmisc:53>, <ore:sand>],
 [<minecraft:gold_ingot>, <minecraft:redstone>, <minecraft:gold_ingot>], 
 [<ore:sand>, <minecraft:dye:4>, <ore:sand>]]);

recipes.remove(<logisticspipes:pipe_request_mk2>);
recipes.addShaped(<logisticspipes:pipe_request_mk2>,
 [[<minecraft:gold_ingot>, <logisticspipes:chip_advanced>, <minecraft:redstone>],
 [<contenttweaker:manadiamondplate>, <logisticspipes:pipe_request>, <contenttweaker:manadiamondplate>],
 [<minecraft:redstone>, <logisticspipes:chip_advanced>, <minecraft:gold_ingot>]]);

recipes.remove(<logisticspipes:pipe_request>);
recipes.addShaped(<logisticspipes:pipe_request>,
 [[<thermalfoundation:material:354>, <thermalfoundation:material:354>, <minecraft:redstone>],
 [<logisticspipes:pipe_basic>, <logisticspipes:chip_basic>, <logisticspipes:pipe_basic>], 
 [<minecraft:redstone>, <thermalfoundation:material:354>, <thermalfoundation:material:354>]]);


#cinderpearl>>blaze powder
recipes.removeShapeless(<minecraft:blaze_powder>, [<thaumcraft:cinderpearl>]);

# Rustic Advanced Condenser # blazing trail gate to thaum
recipes.remove(<rustic:condenser_advanced>);
recipes.addShaped("CtAdvancedCondenser", <rustic:condenser_advanced>,
 [[null, <minecraft:netherbrick>, null],
 [<minecraft:netherbrick>, <minecraft:bucket>, <minecraft:netherbrick>],
 [<minecraft:netherbrick>, <thaumcraft:metal_thaumium>, <minecraft:netherbrick>]]);

# Leather Strap
recipes.remove(<simplyjetpacks:metaitem:4>);
recipes.addShaped("CtLeatherStrap", <simplyjetpacks:metaitem:4>,
 [[null, null, null],
 [<minecraft:leather>, <botania:manaresource>, <minecraft:leather>],
 [<minecraft:leather>, <botania:manaresource>, <minecraft:leather>]]);

#Drawer controller and slave
recipes.remove(<storagedrawers:controller>);
recipes.addShaped("CTdrawercontroller", <storagedrawers:controller>, 
 [[<ic2:itemmisc:256>, <actuallyadditions:block_testifi_bucks_green_wall>, <ic2:itemmisc:256>],
 [<randomthings:stableenderpearl>, <thermalexpansion:frame:64>, <randomthings:stableenderpearl>], 
 [<actuallyadditions:item_crystal>, <actuallyadditions:block_testifi_bucks_green_wall>, <actuallyadditions:item_crystal>]]);
 removal(<storagedrawers:controllerslave>);

#duplicate nether star block
removal(<overloaded:nether_star_block>);

#Quartz ingot
recipes.addShaped("CCTquartzingot", <contenttweaker:quartzingot>, 
 [[null, <ore:dustNetherQuartz>, null],
 [<ore:dustCertusQuartz>, <minecraft:iron_ingot>, <ore:dustQuartzBlack>], 
 [null, <ore:dustNetherQuartz>, null]]);


#Minecraft bucket
recipes.remove(<minecraft:bucket>);
recipes.addShaped("CTbucket", <minecraft:bucket>,
 [[null, <ic2:itemcable>, null],
 [ironPlate, null, ironPlate],
 [null, ironPlate, null]]);
 
#furnace change
recipes.removeShaped(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>,
 [[<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>],
 [<ore:blockSeared>, null, <ore:blockSeared>], 
 [<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>]]);

#Charcoal
furnace.remove(<ore:charcoal>,<ore:logWood>);

#change quark sandstone
recipes.removeShaped(<quark:sandstone_new>);
recipes.addShaped("ctQuarkpolished",<quark:sandstone_new> *9,
 [[<minecraft:sandstone>,<minecraft:sandstone>,<minecraft:sandstone>],
 [<minecraft:sandstone>,<minecraft:sandstone>,<minecraft:sandstone>],
 [<minecraft:sandstone>,<minecraft:sandstone>,<minecraft:sandstone>]]);

#draconium chest alternate recipe
recipes.addShaped("CTdracchest", <draconicevolution:draconium_chest>,
 [[<contenttweaker:manadiamondplate>, <minecraft:crafting_table>, <contenttweaker:manadiamondplate>],
 [<ironchest:iron_chest:6>, <thermalexpansion:frame>, <ironchest:iron_chest:6>], 
 [<ic2:blockmachinelv:1>, <ic2:blockmachinelv:1>, <ic2:blockmachinelv:1>]]);

#floralchemy jei integration
//addDescription(IItemStack[] item, string... desc);
mods.jei.JEI.addDescription([<botania:specialflower>.withTag({type: "petro_petunia"}), <botania:floatingspecialflower>.withTag({type: "petro_petunia"})],
["acceptable fuels must be placed 1y below either in a tank or in world", 
 "Refined canola", 
 "crystalised oil",
 "empowered oil",
 "Biodiesel", 
 "Diesel", 
 "Syngas"]);


#Wither essence
mods.extendedcrafting.CombinationCrafting.addRecipe(<atmtweaks:item_material:10>, 
 16000000, 10000, <atmtweaks:item_material:1>, 
[<ore:blockNetherStar>, <minecraft:skull:1>, 
 <minecraft:skull:1>, <minecraft:skull:1>, 
 <tconstruct:materials:17>, <enderio:block_reinforced_obsidian>, 
 <minecraft:nether_star>, <minecraft:coal>]);

 
#factory manager 
recipes.remove(<superfactorymanager:manager>);
recipes.addShaped(<superfactorymanager:manager>, 
 [[<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>],
 [<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered:5>], 
 [<ore:blockSeared>, <minecraft:piston>, <ore:blockSeared>]]);
#factory cables
recipes.remove(<superfactorymanager:cable>);
recipes.addShaped(<superfactorymanager:cable> * 2, 
 [[<thermalfoundation:glass:3>, <quark:obsidian_pressure_plate>, <thermalfoundation:glass:3>],
 [<thermaldynamics:duct_32>, <modularmachinery:itemmodularium>, <thermaldynamics:duct_16:2>], 
 [<thermalfoundation:glass:3>, <quark:obsidian_pressure_plate>, <thermalfoundation:glass:3>]]);
 
#remove pyrotheum hardened glass recipes
recipes.removeShaped(<ore:blockGlassHardened>);

#Mining turtles
mods.jei.JEI.hide(<computercraft:turtle:0>);
var regularTurtle = <computercraft:turtle_expanded> | <computercraft:turtle:*>;
recipes.removeByRecipeName("computercraft:normal_turtle");
recipes.addShaped("turtle", <computercraft:turtle_expanded>, [
[<ore:ingotRefinedIron>, <ore:ingotRefinedIron>, <ore:ingotRefinedIron>], 
[<ore:ingotRefinedIron>, <computercraft:computer>.marked("nbt"), <ore:ingotRefinedIron>], 
[<ore:ingotRefinedIron>, <ic2:itemmisc:452>, <ore:ingotRefinedIron>]],
function(out, ins, cInfo){
	return out.withTag(ins.nbt.tag);
},
null);
recipes.removeByRecipeName("computercraft:advanced_turtle");
recipes.addShaped("advanced_turtle", <computercraft:turtle_advanced>, [[<ore:ingotGold>, <actuallyadditions:block_crystal_empowered:5>, <ore:ingotGold>], [<ore:ingotGold>, <computercraft:computer:16384>.marked("nbt"), <ore:ingotGold>], [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]]
function(out, ins, cInfo){
	return out.withTag(ins.nbt.tag);
},
null);
recipes.removeByRecipeName("computercraft:advanced_turtle_upgrade");
recipes.addShaped("turtle_upgrade", <computercraft:turtle_advanced>, [
[<ore:ingotGold>, <actuallyadditions:block_crystal_empowered:5>, <ore:ingotGold>], 
[<ore:ingotGold>, regularTurtle.marked("nbt"), <ore:ingotGold>], 
[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]], 
function(out, ins, cInfo){
	return out.withTag(ins.nbt.tag);
},
null);
dan200.computercraft.turtle.removeUpgrade(<minecraft:diamond_pickaxe>);
dan200.computercraft.turtle.addTool("minecraft:diamond_pickaxe", <thaumcraft:elemental_pick>, <minecraft:diamond_pickaxe>);

#xnet changes 

#routing cable
recipes.remove(<xnet:netcable:4>);
recipes.addShaped(<xnet:netcable:4> * 4, 
 [[<minecraft:string>, <minecraft:redstone_block>, <minecraft:string>],
 [<minecraft:redstone_block>, <superfactorymanager:cable>, <minecraft:redstone_block>],
 [<minecraft:string>, <minecraft:redstone_block>, <minecraft:string>]]);
#blue networking cable
recipes.remove(<xnet:netcable>);
recipes.addShaped(<xnet:netcable> * 8, 
 [[<minecraft:string>, <minecraft:redstone>, <minecraft:string>],
 [<minecraft:redstone>, <superfactorymanager:cable>, <minecraft:redstone>], 
 [<minecraft:string>, <minecraft:redstone>, <minecraft:string>]]);
#controller
recipes.remove(<xnet:controller>);
recipes.addShaped(<xnet:controller>,
 [[<ic2c_extras:refinedironplate>, <thermaldynamics:duct_0:2>, <ic2c_extras:refinedironplate>],
 [<minecraft:comparator>, <superfactorymanager:manager>, <minecraft:comparator>],
 [<minecraft:redstone>, <thermaldynamics:duct_0:2>, <minecraft:redstone>]]);

#advanced rocketry crucible
recipes.remove(<advancedrocketry:iquartzcrucible>);
recipes.addShaped(<advancedrocketry:iquartzcrucible>, 
 [[<contenttweaker:quartzingot>, null, <contenttweaker:quartzingot>],
 [<contenttweaker:quartzingot>, <minecraft:cauldron>, <contenttweaker:quartzingot>], 
 [<contenttweaker:quartzingot>, <contenttweaker:quartzingot>, <contenttweaker:quartzingot>]]);

#Deep mob learning machine recipe changes
recipes.remove(<deepmoblearning:simulation_chamber>);
recipes.remove(<deepmoblearning:extraction_chamber>);
recipes.remove(<deepmoblearning:machine_casing>);
recipes.addShaped(<deepmoblearning:simulation_chamber>, [[<industrialforegoing:mob_imprisonment_tool>, <industrialforegoing:pink_slime_ingot>, <industrialforegoing:mob_imprisonment_tool>],[<industrialforegoing:mob_relocator>, <deepmoblearning:machine_casing>, <industrialforegoing:mob_relocator>], [<industrialforegoing:mob_imprisonment_tool>, <industrialforegoing:mob_duplicator>, <industrialforegoing:mob_imprisonment_tool>]]);
recipes.addShaped(<deepmoblearning:extraction_chamber>, [[<ic2:itemscrapbox>, <ic2:itemscrapbox>, <ic2:itemscrapbox>],[<contenttweaker:elementiumprocessor>, <deepmoblearning:machine_casing>, <contenttweaker:elementiumprocessor>], [<contenttweaker:corruptedstarmetal>, <minecraft:comparator>, <contenttweaker:corruptedstarmetal>]]);
recipes.addShaped(<deepmoblearning:machine_casing>, [[<deepmoblearning:soot_covered_plate>, <contenttweaker:planetshard>, <deepmoblearning:soot_covered_plate>],[<ic2:blockmachinemv>, <contenttweaker:corruptedstarmetal>, <libvulpes:advancedmotor>], [<deepmoblearning:soot_covered_plate>, <ic2:itemmisc:202>, <deepmoblearning:soot_covered_plate>]]);


#furnace.remove array
	val ingotArray = [
	<ore:ingotSilver>,
	<ore:ingotIron>,
	<ore:ingotIron>,
	<ore:ingotGold>,
	<ore:coal>,
	<ore:ingotCopper>,
	<ore:gemLapis>,
	<ore:gemDiamond>,
	<ore:dustRedstone>,
	<ore:gemQuartz>,
	<ore:gemEmerald>,
	<ore:gemQuartzBlack>,
	<ore:ingotLead>,
	<ore:gemAquamarine>,
	<ore:ingotAstralStarmetal>,
	<ore:ingotAluminum>,
	<ore:gemAmethyst>,
	<ore:gemRuby>,
	<ore:gemPeridot>,
	<ore:gemTopaz>,
	<ore:gemTanzanite>,
	<ore:gemMalachite>,
	<ore:gemSapphire>,
	<ore:gemAmber>,
	<ore:ingotThorium>,
	<ore:ingotLithium>,
	<ore:ingotMagnesium>,
	<ore:ingotOsmium>,
	<ore:ingotBoron>,
	<ore:ingotPlatinum>,
	<ore:ingotIridium>,
	<ore:ingotMithril>,
	<ore:dustDilithium>,
	<ore:ingotArdite>,
	<ore:ingotCobalt>,
	<ore:quicksilver>]as IIngredient[];

	val oreArray = [
	<ore:oreSilver>,
	<ore:oreIron>,
	<ore:oreGold>,
	<ore:oreCoal>,
	<ore:oreCopper>,
	<ore:oreLapis>,
	<ore:oreDiamond>,
	<ore:oreRedstone>,
	<ore:oreQuartz>,
	<ore:oreEmerald>,
	<ore:oreQuartzBlack>,
	<ore:oreLead>,
	<ore:oreAquamarine>,
	<ore:oreAstralStarmetal>,
	<ore:oreAluminum>,
	<ore:oreAmethyst>,
	<ore:oreRuby>,
	<ore:orePeridot>,
	<ore:oreTopaz>,
	<ore:oreTanzanite>,
	<ore:oreMalachite>,
	<ore:oreSapphire>,
	<ore:oreAmber>,
	<ore:oreThorium>,
	<ore:oreLithium>,
	<ore:oreMagnesium>,
	<ore:oreOsmium>,
	<ore:oreBoron>,
	<ore:orePlatinum>,
	<ore:oreIridium>,
	<ore:oreMithril>,
	<ore:oreDilithium>,
	<ore:oreArdite>,
	<ore:oreCobalt>,
	<ore:oreCinnabar>]as IIngredient[];


	val AL = oreArray.length;

	for i in 0 to AL{
	    furnace.remove(ingotArray[i],oreArray[i]);
	}

	#durabilty removal
	val picks = [<minecraft:iron_pickaxe>,<minecraft:golden_pickaxe>,<minecraft:diamond_pickaxe>] as IItemStack[];

for i in picks{

	i.maxDamage = 1;
	   
	}
