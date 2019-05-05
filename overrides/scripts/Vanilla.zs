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

print("Vanilla changes here");

val ironPlate = <thermalfoundation:material:32>;
val ironGear = <ore:gearIron>;
val cobbleTwoTimes = <ore:compressed1xCobblestone>;


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
recipes.addShaped("CtFurnace",<minecraft:furnace>,
[[cobbleTwoTimes,cobbleTwoTimes,cobbleTwoTimes],
[cobbleTwoTimes,<minecraft:chest>,cobbleTwoTimes],
[cobbleTwoTimes,ironGear,cobbleTwoTimes]]);

#Charcoal
furnace.remove(<ore:charcoal>,<ore:logWood>);

#sandstone change
recipes.removeShaped(<minecraft:sandstone>);
recipes.addShaped("ctSandstone",<minecraft:sandstone>,
[[<extrautils2:compressedsand>,<extrautils2:compressedsand>]]);

#change quark sandstone
recipes.removeShaped(<quark:sandstone_new>);
recipes.addShaped("ctQuarkpolished",<quark:sandstone_new>,
[[<minecraft:sandstone>,<minecraft:sandstone>,<minecraft:sandstone>],
[<minecraft:sandstone>,<minecraft:sandstone>,<minecraft:sandstone>],
[<minecraft:sandstone>,<minecraft:sandstone>,<minecraft:sandstone>]]);


#furnace.remove array
	val ingotArray = [
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
	<ore:ingotDraconium>,
	<ore:ingotDraconium>,
	<ore:ingotDraconium>,
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
	<ore:slimeball>,
	<ore:itemClay>,
	<ore:dustRedstone>,
	<ore:ingotIron>,
	<ore:ingotGold>,
	<ore:coal>,
	<ore:gemLapis>,
	<ore:gemEmerald>,
	<ore:gemDiamond>,
	<ore:dustRedstone>,
	<ore:gemLapis>,
	<ore:gemDiamond>,
	<ore:ingotGold>,
	<ore:coal>,
	<ore:ingotIron>,
	<ore:gemEmerald>,
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
	<ore:crushedPurifiedIron>,
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
	<draconicevolution:draconium_ore>,
	<draconicevolution:draconium_ore:1>,
	<draconicevolution:draconium_ore:2>,
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
	<aroma1997sdimension:miningore>,
	<aroma1997sdimension:miningore:1>,
	<ore:oreNetherRedstone>,
	<ore:oreNetherIron>,
	<ore:oreNetherGold>,
	<ore:oreNetherCoal>,
	<ore:oreNetherLapis>,
	<ore:oreNetherEmerald>,
	<ore:oreNetherDiamond>,
	<ore:oreEndRedstone>,
	<ore:oreEndLapis>,
	<ore:oreEndDiamond>,
	<ore:oreEndGold>,
	<ore:oreEndCoal>,
	<ore:oreEndIron>,
	<ore:oreEndEmerald>,
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
