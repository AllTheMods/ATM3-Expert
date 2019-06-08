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

print("Botania Changes");

val livingWood = <botania:livingwood>;
val livingRock = <botania:livingrock>;
val manaSteel = <ore:ingotManasteel>;
val manaPowder = <ore:powderMana>;
val manaDiamond = <ore:manaDiamond>;
val voiddew = <forge:bucketfilled>.withTag({FluidName: "ender_distillation", Amount: 1000});

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
[<botania:shimmerrock>, <botania:pool:1>, <botania:shimmerrock>],
[null, <botania:shimmerrock>, null]]);

#Mana Pool
recipes.remove(<botania:pool>);
mods.thermalexpansion.Transposer.addFillRecipe(<botania:pool>,<botania:pool:2>,<liquid:glowstone>*4000,30000);

#mana infusion
	#ManaSteel
	mods.botania.ManaInfusion.removeRecipe(<ore:ingotManasteel>);
	mods.botania.ManaInfusion.addInfusion(<botania:manaresource>,<ic2:itemmisc:53>,2500);
	#manaDiamond
	mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:2>);
	mods.botania.ManaInfusion.addInfusion(<botania:manaresource:2>, <ore:gemDiamond>, 10000);
	#manaPearl
	mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:1>);
	mods.botania.ManaInfusion.addInfusion(<botania:manaresource:1>, <minecraft:ender_pearl>, 5000);


#Manaspreader
recipes.removeShaped(<botania:spreader>);
recipes.addShaped("CtSpreader",<botania:spreader>,
 [[livingWood,livingWood,livingWood],
 [<tconstruct:seared>,<botania:petalblock>,null],
 [livingWood,livingWood,livingWood]]);

#pulse mana spreader
recipes.removeShapeless(<botania:spreader:1>);
recipes.addShapeless(<botania:spreader:1>,[<botania:spreader:1>,<minecraft:repeater>]);

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
	mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "munchdew"}),[<ore:petalLime>,<ore:petalLime>,<ore:petalRed>,<ore:petalRed>,<ore:petalGreen>,<ceramics:clay_bucket:1>]);
	#Gourmaryllis
	mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "gourmaryllis"}));
	mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "gourmaryllis"}),[<ore:petalGray>,<ore:petalGray>,<ore:petalYellow>,<ore:petalYellow>,<ore:petalRed>,<xlfoodmod:donut>,<xlfoodmod:lasagne>]);
	#Hydroangeeas
	mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "hydroangeas"}));
	#endoflame
	mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "endoflame"}));
	#thermalily
	mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "thermalily"}));
	mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "thermalily"}),[<botania:grassseeds:6>,<minecraft:lava_bucket>,<botania:petal:1>,<botania:petal:14>,<botania:rune:2>,<botania:rune:1>]);


#Functional flowers
	#jaded amaranthus
	mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "jadedAmaranthus"}));
	mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "jadedAmaranthus"}),[<botania:fertilizer>,<botania:manaresource:6>,<botania:petal:10>,<botania:petal:5>,<botania:petal:13>]);

#scorched pasture seeds
recipes.removeShapeless(<botania:grassseeds:6>);
recipes.addShapeless("CtScorchedSeed",<botania:grassseeds:6>,[<botania:grassseeds>,<ore:rodBlaze>]);

#orechid
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "orechid"}));
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "orechidIgnem"}));

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
	#pride
	mods.botania.RuneAltar.addRecipe(<botania:rune:15>, [<bloodmagic:slate:2>, manaDiamond, manaDiamond, <botania:rune:5>, <botania:rune:1>], 10000
	);
	#envy
	mods.botania.RuneAltar.addRecipe(<botania:rune:14>, [<bloodmagic:slate:2>, manaDiamond, manaDiamond, <botania:rune:7>, <botania:rune>], 10000
	);
	#wrath
	mods.botania.RuneAltar.addRecipe(<botania:rune:13>, [<bloodmagic:slate:2>, manaDiamond, manaDiamond, <botania:rune:2>, <botania:rune:7>], 10000
	);
	#sloth
	mods.botania.RuneAltar.addRecipe(<botania:rune:12>, [<bloodmagic:slate:2>, manaDiamond, manaDiamond, <botania:rune:6>, <botania:rune:3>], 10000
	);
	#greed
	mods.botania.RuneAltar.addRecipe(<botania:rune:11>, [<bloodmagic:slate:2>, manaDiamond, manaDiamond, <botania:rune>, <botania:rune:4>], 10000
	);
	#gluttony
	mods.botania.RuneAltar.addRecipe(<botania:rune:10>, [<bloodmagic:slate:2>, manaDiamond, manaDiamond, <botania:rune:7>, <botania:rune:1>], 10000
	);
	#lust
	mods.botania.RuneAltar.addRecipe(<botania:rune:9>, [<bloodmagic:slate:2>, manaDiamond, manaDiamond, <botania:rune:3>, <botania:rune:5>], 10000
	);
	
#elven gateway core
recipes.remove(<botania:alfheimportal>);
mods.extendedcrafting.TableCrafting.addShaped(0, <botania:alfheimportal>, [
	[<botania:livingwood>, <botania:livingwood>, <botania:manaresource:18>, <botania:livingwood>, <botania:livingwood>], 
	[<botania:livingwood>, <alchemistry:ingot:100>, <botania:manaresource:18>, voiddew, <botania:livingwood>], 
	[<botania:manaresource:18>, <botania:manaresource:18>, <atmtweaks:item_material:2>, <botania:manaresource:18>, <botania:manaresource:18>], 
	[<botania:livingwood>, voiddew, <botania:manaresource:18>, <alchemistry:ingot:100>, <botania:livingwood>], 
	[<botania:livingwood>, <botania:livingwood>, <botania:manaresource:18>, <botania:livingwood>, <botania:livingwood>]
]);