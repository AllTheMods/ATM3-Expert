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

#diluted mana pool
recipes.remove(<botania:pool:2>);
recipes.addShaped("CTdilutepool", <botania:pool:2>,
[[null, null, null],
[<botania:livingrock0slab>, null, <botania:livingrock0slab>],
[<botania:livingrock>, <ic2:itemmisc:256>, <botania:livingrock>]]);


val livingWood = <botania:livingwood>;
val livingRock = <botania:livingrock>;

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
	mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "munchdew"}),[<ore:petalLime>,<ore:petalLime>,<ore:petalRed>,<ore:petalRed>,<ore:petalGreen>,<ic2:itemmisc:351>,<botania:rune:10>]);
	#Gourmaryllis
	mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "gourmaryllis"}));
	mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "gourmaryllis"}),[<ore:petalGray>,<ore:petalGray>,<ore:petalYellow>,<ore:petalYellow>,<ore:petalRed>,<minecraft:bread>,<ore:foodMeat>]);


#mana tablet
recipes.removeShaped(<botania:manatablet>);
recipes.addShaped("CtManaTablet",<botania:manatablet>.withTag({}),[[livingRock,<ic2:itemmisc:256>,livingRock],[livingRock,<ore:manaPearl>,livingRock],[livingRock,<ic2:itemmisc:256>,livingRock]]);
recipes.addShaped("CtManaTablet2",<botania:manatablet>.withTag({}),[[livingRock,<ic2:itemmisc:256>,livingRock],[livingRock,<ore:manaDiamond>,livingRock],[livingRock,<ic2:itemmisc:256>,livingRock]]);

#runic altar
recipes.removeShaped(<botania:runealtar>);
recipes.addShaped("CtAltar",<botania:runealtar>,[[null,null,null][livingRock,<ic2:itemmisc:256>,livingRock],[livingRock,<ore:manaPearl>,livingRock]]);