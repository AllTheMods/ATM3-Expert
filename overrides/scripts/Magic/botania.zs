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
import mods.botania.ManaInfusion;
import mods.botania.PureDaisy;
import mods.botania.Apothecary;
import mods.actuallyadditions.Empowerer;
import mods.thermalexpansion.Transposer;
import mods.botania.ElvenTrade;
import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.TartaricForge;
import mods.thaumcraft.ArcaneWorkbench;
import mods.actuallyadditions.AtomicReconstructor;

print("Botania Changes");
val petro = <botania:specialflower>.withTag({type: "petro_petunia"});
val livingWood = <botania:livingwood>;
val livingRock = <botania:livingrock>;
val manaSteel = <ore:ingotManasteel>;
val manaPowder = <ore:powderMana>;
val manaDiamond = <ore:manaDiamond>;
val voiddew = <forge:bucketfilled>.withTag({FluidName: "ender_distillation", Amount: 1000});

#terrestrial ag plate
recipes.remove(<botania:terraplate>);
recipes.addShapedMirrored(<botania:terraplate>, [[<botania:rune>, <contenttweaker:manasteelplate>, <botania:rune:3>],[<ic2c_extras:plutoniumdust>, <botania:rune:8>, <ic2c_extras:plutoniumdust>], [<botania:rune:2>, <contenttweaker:manasteelplate>, <botania:rune:1>]]);

#pretropetnininua
mods.botania.Apothecary.removeRecipe(petro);
mods.botania.Apothecary.addRecipe(petro, [<botania:rune:1>, <botania:rune:8>, <immersivepetroleum:material>, <botania:petal:12>, <botania:petal:15>, <botania:petal:1>]);

#Overgrowth seeds
mods.bloodtransmutation.transmutation.addRecipe(3, 25000, <atmtweaks:item_material:1>, <botania:overgrowthseed> *3);

#diluted mana pool
recipes.remove(<botania:pool:2>);
recipes.addShaped("CTdilutepool", <botania:pool:2>,
[[null, null, null],
[<botania:livingrock0slab>, null, <botania:livingrock0slab>],
[<botania:livingrock>, <ore:plateIron>, <botania:livingrock>]]);

#Fabulous Mana Pool
recipes.remove(<botania:pool:3>);
recipes.addShaped("CTFabulouspool", <botania:pool:3>,
[[null, <botania:shimmerrock>, null],
[<botania:shimmerrock>, <botania:pool>, <botania:shimmerrock>],
[null, <botania:shimmerrock>, null]]);

#Mana Pool
recipes.remove(<botania:pool>);
mods.thermalexpansion.Transposer.addFillRecipe(<botania:pool>,<botania:pool:2>,<liquid:glowstone>*4000,30000);

#mana infusion
	#ManaSteel
	mods.botania.ManaInfusion.removeRecipe(<botania:storage>);
	mods.botania.ManaInfusion.removeRecipe(<ore:ingotManasteel>);
	mods.botania.ManaInfusion.addInfusion(<botania:manaresource>,<ic2:itemmisc:53>,2500);
	#manaDiamond
	mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:2>);
	mods.botania.ManaInfusion.addInfusion(<botania:manaresource:2>, <ore:gemDiamond>, 10000);
	#manaPearl
	mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:1>);
	mods.botania.ManaInfusion.addInfusion(<botania:manaresource:1>, <minecraft:ender_pearl>, 5000);
	#Mana Powder
	mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:23>);
	mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>,<minecraft:glowstone_dust>,2500);

#Manaspreader
recipes.removeShaped(<botania:spreader>);
recipes.addShaped("CtSpreader",<botania:spreader>,
 [[livingWood,livingWood,livingWood],
 [<tconstruct:seared>,<botania:petalblock>,null],
 [livingWood,livingWood,livingWood]]);

#petal apothecary
recipes.removeShaped(<botania:altar>);
recipes.addShaped("CtApothecary",<botania:altar>,[[<tconstruct:seared_slab>,<minecraft:bucket>,<tconstruct:seared_slab>],[null,<tconstruct:seared>,null],[<tconstruct:seared>,<tconstruct:seared>,<tconstruct:seared>]]);

#daisy recipe changes
	#livingwood
	mods.botania.PureDaisy.removeRecipe(<botania:livingwood>);
	mods.botania.PureDaisy.addRecipe(<immersiveengineering:treated_wood>,<botania:livingwood>);

	#livingStone
	mods.botania.PureDaisy.removeRecipe(<botania:livingrock>);
	mods.botania.PureDaisy.addRecipe(<tconstruct:seared>,<botania:livingrock>);

#gen flowers
	#muchdew
	mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "munchdew"}));
	mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "munchdew"}),[<ore:petalLime>,<ore:petalLime>,<ore:petalRed>,<ore:petalRed>,<ore:petalGreen>,<tconstruct:fletching>.withTag({Material: "leaf"})]);
	#Gourmaryllis
	mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "gourmaryllis"}));
	mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "gourmaryllis"}),[<ore:petalGray>,<ore:petalGray>,<ore:petalYellow>,<ore:petalYellow>,<ore:petalRed>,<xlfoodmod:donut>,<xlfoodmod:lasagne>]);
	#Hydroangeeas
	mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "hydroangeas"}));
	#endoflame
	mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "endoflame"}));
	#thermalily
	mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "thermalily"}));



#Functional flowers
	#jaded amaranthus
	mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "jadedAmaranthus"}));
	mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "jadedAmaranthus"}),[<botania:fertilizer>,<botania:manaresource:6>,<botania:petal:10>,<botania:petal:5>,<botania:petal:13>]);

#scorched pasture seeds
recipes.removeShapeless(<botania:grassseeds:6>);
recipes.addShapeless("CtScorchedSeed",<botania:grassseeds:6>,[<botania:grassseeds>,<ore:rodBlaze>]);

#orechid
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "orechid"}));
mods.jei.JEI.hide(<botania:specialflower>.withTag({type: "orechid"}));
recipes.removeByRecipeName("botania:floating_orechid");
mods.jei.JEI.hide(<botania:floatingspecialflower>.withTag({type: "orechid"}));

mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "orechidIgnem"}));
mods.jei.JEI.hide(<botania:specialflower>.withTag({type: "orechidIgnem"}));
recipes.removeByRecipeName("botania:floating_orechidignem");
mods.jei.JEI.hide(<botania:floatingspecialflower>.withTag({type: "orechidIgnem"}));


mods.botania.Orechid.removeOre("oreAluminum");
mods.botania.Orechid.removeOre("oreIron");
mods.botania.Orechid.removeOre("oreOsmium");
mods.botania.Orechid.removeOre("oreMythril");
mods.botania.Orechid.removeOre("oreInfusedFire");
mods.botania.Orechid.removeOre("oreTin");
mods.botania.Orechid.removeOre("oreCertusQuartz");
mods.botania.Orechid.removeOre("oreMCropsEssence");
mods.botania.Orechid.removeOre("oreChimerite");
mods.botania.Orechid.removeOre("oreRuby");
mods.botania.Orechid.removeOre("oreCinnabar");
mods.botania.Orechid.removeOre("oreLead");
mods.botania.Orechid.removeOre("oreSapphire");
mods.botania.Orechid.removeOre("oreCoal");
mods.botania.Orechid.removeOre("oreVinteum");
mods.botania.Orechid.removeOre("oreDiamond");
mods.botania.Orechid.removeOre("oreTungsten");
mods.botania.Orechid.removeOre("oreEmerald");
mods.botania.Orechid.removeOre("orePlatinum");
mods.botania.Orechid.removeOre("oreDarkIron");
mods.botania.Orechid.removeOre("oreUranium");
mods.botania.Orechid.removeOre("oreNickel");
mods.botania.Orechid.removeOre("oreLapis");
mods.botania.Orechid.removeOre("oreInfusedEntropy");
mods.botania.Orechid.removeOre("oreAdamantium");
mods.botania.Orechid.removeOre("oreInfusedAir");
mods.botania.Orechid.removeOre("oreInfusedEarth");
mods.botania.Orechid.removeOre("oreFzDarkIron");
mods.botania.Orechid.removeOre("oreAmber");
mods.botania.Orechid.removeOre("oreOlivine");
mods.botania.Orechid.removeOre("oreMithril");
mods.botania.Orechid.removeOre("oreSilver");
mods.botania.Orechid.removeOre("oreInfusedOrder");
mods.botania.Orechid.removeOre("oreGold");
mods.botania.Orechid.removeOre("oreGalena");
mods.botania.Orechid.removeOre("oreBlueTopaz");
mods.botania.Orechid.removeOre("oreDark");
mods.botania.Orechid.removeOre("oreInfusedWater");
mods.botania.Orechid.removeOre("oreZinc");
mods.botania.Orechid.removeOre("oreQuartzBlack");
mods.botania.Orechid.removeOre("oreRedstone");
mods.botania.Orechid.removeOre("oreSulfur");
mods.botania.Orechid.removeOre("oreCopper");
mods.botania.Orechid.removeOre("oreYellorite");
mods.botania.Orechid.removeOre("oreApatite");
mods.botania.OrechidIgnem.removeOre("oreNetherNickel");
mods.botania.OrechidIgnem.removeOre("oreNetherCopper");
mods.botania.OrechidIgnem.removeOre("oreNetherLead");
mods.botania.OrechidIgnem.removeOre("oreNetherPlatinum");
mods.botania.OrechidIgnem.removeOre("oreNetherSilver");
mods.botania.OrechidIgnem.removeOre("oreNetherTin");
mods.botania.OrechidIgnem.removeOre("oreNetherCoal");
mods.botania.OrechidIgnem.removeOre("oreNetherDiamond");
mods.botania.OrechidIgnem.removeOre("oreNetherGold");
mods.botania.OrechidIgnem.removeOre("oreNetherIron");
mods.botania.OrechidIgnem.removeOre("oreNetherLapis");
mods.botania.OrechidIgnem.removeOre("oreNetherRedstone");
mods.botania.OrechidIgnem.removeOre("oreArdite");
mods.botania.OrechidIgnem.removeOre("oreCobalt");
mods.botania.OrechidIgnem.removeOre("oreQuartz");

#mana tablet
recipes.removeShaped(<botania:manatablet>);
recipes.addShaped("CtManaTablet",<botania:manatablet>.withTag({}),[[livingRock,<ic2:itemmisc:256>,livingRock],[<ore:manaPearl>,<botania:pool>,<ore:manaPearl>],[livingRock,<ic2:itemmisc:256>,livingRock]]);
recipes.addShaped("CtManaTablet2",<botania:manatablet>.withTag({}),[[livingRock,<ic2:itemmisc:256>,livingRock],[<ore:manaDiamond>,<botania:pool>,<ore:manaDiamond>],[livingRock,<ic2:itemmisc:256>,livingRock]]);

#altar
recipes.removeShaped(<botania:runealtar>);
mods.actuallyadditions.Empowerer.addRecipe(<botania:runealtar>, <botania:pool>, <ore:livingrock>, <ore:manaDiamond>, <actuallyadditions:block_crystal_empowered:5>, 
	<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "praecantatio"}]}), 100000, 20, [0.0, 0.5, 0.0]
	);
	
#mana lens
recipes.remove(<botania:lens>.withTag({}));
recipes.addShaped("CtManaLens",<botania:lens>.withTag({}),
	[[null,<ore:ingotManasteel>,null],
	[<ore:ingotManasteel>,<botania:managlasspane>,<ore:ingotManasteel>],
	[null,<ore:ingotManasteel>,null]
	]);
recipes.addShaped("CtManaLens2",<botania:lens>.withTag({}),
	[[null,<ore:ingotManasteel>,null],
	[<ore:ingotManasteel>,<botania:managlass>,<ore:ingotManasteel>],
	[null,<ore:ingotManasteel>,null]
	]);


#runes
mods.botania.RuneAltar.removeRecipe(<botania:rune:*>);
	#water
	mods.botania.RuneAltar.addRecipe(<botania:rune>, 
	[<bloodmagic:slate>, manaPowder, manaSteel, <minecraft:dye:15>, <minecraft:fishing_rod>, <ore:sugarcane>], 3500		
		);
	#fire
	mods.botania.RuneAltar.addRecipe(<botania:rune:1>, [<bloodmagic:slate>, manaSteel, manaPowder, <ore:cropNetherWart>, <ore:gunpowder>, <ore:ingotBrickNether>], 3500
	);
	#Earth
	mods.botania.RuneAltar.addRecipe(<botania:rune:2>, [<bloodmagic:slate>, manaPowder, manaSteel,  <ore:stone>, <ore:blockCoal>, <minecraft:brown_mushroom>], 3500
	);
	mods.botania.RuneAltar.addRecipe(<botania:rune:2>, [<bloodmagic:slate>, manaPowder, manaSteel, <ore:stone>, <ore:blockCoal>, <minecraft:red_mushroom>], 3500
	);
	#air
	mods.botania.RuneAltar.addRecipe(<botania:rune:3>, [<bloodmagic:slate>, manaPowder, manaSteel, <minecraft:carpet>, <ore:feather>, <ore:string>], 3500
	);
	#mana
	mods.botania.RuneAltar.addRecipe(<botania:rune:8>, [<bloodmagic:slate>, <ore:manaPearl>, manaSteel, manaSteel, manaSteel, manaSteel, manaSteel], 7000
	);
	#winter
	mods.botania.RuneAltar.addRecipe(<botania:rune:7>, [<bloodmagic:slate:1>, <botania:rune>, <botania:rune:2>, <minecraft:snow>, <minecraft:snow>, <ore:wool>, <minecraft:cake>], 7000
	);
	#autumn
	mods.botania.RuneAltar.addRecipe(<botania:rune:6>, [<bloodmagic:slate:1>, <botania:rune:1>, <botania:rune:3>, <minecraft:spider_eye>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>], 7000
	);
	#summer
	mods.botania.RuneAltar.addRecipe(<botania:rune:5>, [<bloodmagic:slate:1>, <botania:rune:2>, <botania:rune:3>, <ore:slimeball>, <ore:sand>, <minecraft:melon>], 7000
	);
	#Spring
	mods.botania.RuneAltar.addRecipe(<botania:rune:4>, [<bloodmagic:slate:1>,  <botania:rune:1>, <botania:rune>, <minecraft:sapling>, <minecraft:sapling>, <minecraft:sapling>, <minecraft:wheat>], 7000
	);

	
#elven gateway core
recipes.remove(<botania:alfheimportal>);
mods.extendedcrafting.TableCrafting.addShaped(0, <botania:alfheimportal>, [
	[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>, <astralsorcery:itemcraftingcomponent:1>, <botania:livingwood>, <botania:livingwood>, <botania:livingwood>], 
	[<botania:livingwood>, <bloodmagic:slate:2>, <ic2:itemmisc:256>, <alchemistry:ingot:100>, <contenttweaker:manadiamondplate>, <bloodmagic:slate:2>, <botania:livingwood>], 
	[<botania:livingwood>, <contenttweaker:manadiamondplate>, <botania:manaresource:18>, <botania:manaresource:4>, voiddew, <ic2:itemmisc:256>, <botania:livingwood>], 
	[<botania:manaresource:4>, <enderio:item_alloy_ingot:8>, <thaumcraft:ingot>, <atmtweaks:item_material:2>, <thaumcraft:ingot>, <enderio:item_alloy_ingot:8>, <botania:manaresource:4>], 
	[<botania:livingwood>, <ic2:itemmisc:256>, voiddew, <botania:manaresource:4>, <botania:manaresource:18>, <contenttweaker:manadiamondplate>, <botania:livingwood>], 
	[<botania:livingwood>, <bloodmagic:slate:2>, <contenttweaker:manadiamondplate>, <alchemistry:ingot:100>, <ic2:itemmisc:256>, <bloodmagic:slate:2>, <botania:livingwood>], 
	[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>, <astralsorcery:itemcraftingcomponent:1>, <botania:livingwood>, <botania:livingwood>, <botania:livingwood>]
]);


#Elementium recipe
mods.botania.ElvenTrade.removeRecipe(<botania:storage:2>);
mods.botania.ElvenTrade.removeRecipe(<botania:manaresource:7>);
mods.botania.ElvenTrade.addRecipe([<botania:manaresource:7>], [<astralsorcery:itemcraftingcomponent:1>]);

#Elven Quartz
mods.botania.ElvenTrade.removeRecipe(<botania:quartz:5>);
mods.botania.ElvenTrade.addRecipe([<botania:quartz:5>], [<botania:quartz:1>, <botania:quartz:1>]);

#Dreamwood recipe
mods.botania.ElvenTrade.removeRecipe(<botania:dreamwood>);
mods.botania.ElvenTrade.addRecipe([<botania:dreamwood>], [<botania:livingwood>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "herba"}]})]);

#Pixie Dust recipe
mods.botania.ElvenTrade.removeRecipe(<botania:manaresource:8>);
mods.botania.ElvenTrade.addRecipe([<botania:manaresource:8>], [<botania:quartz:6>,<botania:manaresource:1>]);

#Dragonstone recipe
mods.botania.ElvenTrade.removeRecipe(<botania:manaresource:9>);
mods.botania.ElvenTrade.addRecipe([<botania:manaresource:9>], [<botania:manaresource:2>,<botania:manaresource:2>]);


#Dragonstone block recipe
mods.botania.ElvenTrade.removeRecipe(<botania:storage:4>);
mods.botania.ElvenTrade.addRecipe([<botania:storage:4>], [<botania:storage:3>,<botania:storage:3>]);

#Hourglass
recipes.remove(<botania:hourglass>);
recipes.addShaped("CtHourglass", <botania:hourglass>,
[[<ore:plateGold>, <thermalfoundation:glass:8>, <ore:plateGold>],
[<botania:manaresource:23>, <botania:manaresource>, <botania:manaresource:23>],
[<ore:plateGold>, <thermalfoundation:glass:8>, <ore:plateGold>]]);

#Alchemy Catalyst
recipes.remove(<botania:alchemycatalyst>);
recipes.addShaped("CtAlchCatalyst",<botania:alchemycatalyst>,
[[<botania:livingrock>, <ore:plateGold>, <botania:livingrock>],
[<botania:pylon:1>, <thaumcraft:metal_alchemical_advanced>, <botania:pylon:1>],
[<botania:livingrock>, <ore:plateGold>, <botania:livingrock>]]);

#Manaweave Cloth
recipes.remove(<botania:manaresource:22>);
recipes.addShaped("CtManaweave",<botania:manaresource:22>,
[[null, <botania:manaresource:16>, null],
[<botania:manaresource:16>, <botania:manaresource:23>, <botania:manaresource:16>],
[null, <botania:manaresource:16>, null]]);

	#pride
	mods.botania.RuneAltar.addRecipe(<botania:rune:15>, [<bloodmagic:slate:2>, <bloodmagic:item_demon_crystal:4>, <bloodmagic:item_demon_crystal:4>, <actuallyadditions:item_misc:5>, <botania:manaresource>, <botania:manaresource>, manaDiamond, manaDiamond, <botania:rune:5>, <botania:rune:1>], 10000
	);
	#envy
	mods.botania.RuneAltar.addRecipe(<botania:rune:14>, [<bloodmagic:slate:2>, <actuallyadditions:item_misc:5>, <actuallyadditions:item_misc:5>, <botania:quartz:1>, <botania:manaresource>, <botania:manaresource>, manaDiamond, manaDiamond, <botania:rune:7>, <botania:rune>], 10000
	);
	#wrath
	mods.botania.RuneAltar.addRecipe(<botania:rune:13>, [<bloodmagic:slate:2>, <bloodmagic:item_demon_crystal:2>, <bloodmagic:item_demon_crystal:2>, <bloodmagic:item_demon_crystal:3>, <botania:manaresource>, <botania:manaresource>, manaDiamond, manaDiamond, <botania:rune:2>, <botania:rune:7>], 10000
	);
	#sloth
	mods.botania.RuneAltar.addRecipe(<botania:rune:12>, [<bloodmagic:slate:2>, <tconstruct:slime_congealed:4>, <tconstruct:slime_congealed:4>, <minecraft:potion>.withTag({Potion: "minecraft:slowness"}), <botania:manaresource>, <botania:manaresource>, manaDiamond, manaDiamond, <botania:rune:6>, <botania:rune:3>], 10000
	);
	#greed
	mods.botania.RuneAltar.addRecipe(<botania:rune:11>, [<bloodmagic:slate:2>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:diamond_block>, <botania:manaresource>, <botania:manaresource>, manaDiamond, manaDiamond, <botania:rune>, <botania:rune:4>], 10000
	);
	#gluttony
	mods.botania.RuneAltar.addRecipe(<botania:rune:10>, [<bloodmagic:slate:2>, <botania:manaresource>, <botania:manaresource>, <xlfoodmod:donut>, <botania:specialflower>.withTag({type: "munchdew"}), <botania:specialflower>.withTag({type: "munchdew"}), manaDiamond, manaDiamond, <botania:rune:7>, <botania:rune:1>], 10000
	);
	#lust
	mods.botania.RuneAltar.addRecipe(<botania:rune:9>, [<bloodmagic:slate:2>, <actuallyadditions:item_crystal_empowered>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "desiderium"}]}), <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "desiderium"}]}), <botania:manaresource>, <botania:manaresource>, manaDiamond, manaDiamond, <botania:rune:3>, <botania:rune:5>], 10000
	);

#Sunny quartz
recipes.remove(<botania:quartz:6>);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<botania:quartz:6>, <botania:quartz:1>, 50000);


