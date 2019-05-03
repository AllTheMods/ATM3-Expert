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

#diluted mana pool
recipes.remove(<botania:pool:2>);
recipes.addShaped("CTdilutepool", <botania:pool:2>,
[[null, null, null],
[<botania:livingrock0slab>, null, <botania:livingrock0slab>],
[<botania:livingrock>, <ic2:itemmisc:256>, <botania:livingrock>]]);

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
recipes.addShaped("CtSpreader",<botania:spreader>,[[livingWood,livingWood,livingWood],[<ic2c_extras:goldpurifiedcrushedore>,<botania:petalblock>,null],[livingWood,livingWood,livingWood]]);

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
	mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "munchdew"}),[<ore:petalLime>,<ore:petalLime>,<ore:petalRed>,<ore:petalRed>,<ore:petalGreen>,<ic2:itemmisc:351>]);
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

#JeI
mods.jei.JEI.removeAndHide(<botania:manasteelpick>);
mods.jei.JEI.removeAndHide(<botania:manasteelshovel>);
mods.jei.JEI.removeAndHide(<botania:manasteelsword>);
mods.jei.JEI.removeAndHide(<botania:manasteelaxe>);
mods.jei.JEI.removeAndHide(<botania:manasteelshears>);


#altar
recipes.removeShaped(<botania:runealtar>);
mods.actuallyadditions.Empowerer(<botania:runealtar>, <botania:pool>, <ore:livingrock>, <ore:manaDiamond>, <actuallyadditions:block_crystal_empowered:5>, <thaumcraft:salis_mundus>);

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