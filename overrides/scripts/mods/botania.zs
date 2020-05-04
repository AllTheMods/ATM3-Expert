##########################################################################################
#modloaded botania
#priority 100

import mods.botania.Apothecary;
import mods.botania.ElvenTrade;
import mods.botania.ManaInfusion;
import mods.botania.Orechid;
import mods.botania.OrechidIgnem;
import mods.botania.PureDaisy;
import mods.botania.RuneAltar;

print("==================== loading mods botania.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// terrestrial agglomeration plate
recipes.remove(<botania:terraplate>);
recipes.addShapedMirrored(<botania:terraplate>, [
    [<botania:rune>, <contenttweaker:manasteelplate>, <botania:rune:3>],
    [<ic2c_extras:plutoniumdust>, <botania:rune:8>, <ic2c_extras:plutoniumdust>],
    [<botania:rune:2>, <contenttweaker:manasteelplate>, <botania:rune:1>]
]);

// diluted mana pool
recipes.remove(<botania:pool:2>);
recipes.addShaped(<botania:pool:2>, [
    [null, null, null],
    [<botania:livingrock0slab>, null, <botania:livingrock0slab>],
    [<botania:livingrock>, <ore:plateIron>, <botania:livingrock>]
]);

// fabulous mana pool
recipes.remove(<botania:pool:3>);
recipes.addShaped(<botania:pool:3>, [
    [null, <botania:shimmerrock>, null],
    [<botania:shimmerrock>, <botania:pool>, <botania:shimmerrock>],
    [null, <botania:shimmerrock>, null]
]);

// mana spreader
recipes.removeShaped(<botania:spreader>);
recipes.addShaped(<botania:spreader>, [
    [<botania:livingwood>, <botania:livingwood>, <botania:livingwood>],
    [<tconstruct:seared>, <botania:petalblock>, null],
    [<botania:livingwood>, <botania:livingwood>, <botania:livingwood>]
]);

// petal apothecary
recipes.removeShaped(<botania:altar>);
recipes.addShaped(<botania:altar>, [
    [<tconstruct:seared_slab>, <minecraft:bucket>, <tconstruct:seared_slab>],
    [null, <tconstruct:seared>, null],
    [<tconstruct:seared>, <tconstruct:seared>, <tconstruct:seared>]
]);

// scorched pasture seeds
recipes.removeShapeless(<botania:grassseeds:6>);
recipes.addShapeless(<botania:grassseeds:6>, [
    <botania:grassseeds>, <ore:rodBlaze>
]);

// mana tablet
recipes.removeShaped(<botania:manatablet>);
recipes.addShaped(<botania:manatablet>.withTag({}), [
    [<botania:livingrock>, <ic2:itemmisc:256>, <botania:livingrock>],
    [<ore:manaPearl>, <botania:pool>, <ore:manaPearl>],
    [<botania:livingrock>, <ic2:itemmisc:256>, <botania:livingrock>]
]);
recipes.addShaped(<botania:manatablet>.withTag({}), [
    [<botania:livingrock>, <ic2:itemmisc:256>, <botania:livingrock>],
    [<ore:manaDiamond>, <botania:pool>, <ore:manaDiamond>],
    [<botania:livingrock>, <ic2:itemmisc:256>, <botania:livingrock>]
]);

// mana lens
recipes.remove(<botania:lens>.withTag({}));
recipes.addShaped(<botania:lens>.withTag({}), [
    [null, <ore:ingotManasteel>, null],
	[<ore:ingotManasteel>, <botania:managlasspane>, <ore:ingotManasteel>],
	[null, <ore:ingotManasteel>, null]
]);
recipes.addShaped(<botania:lens>.withTag({}), [
    [null, <ore:ingotManasteel>, null],
    [<ore:ingotManasteel>, <botania:managlass>, <ore:ingotManasteel>],
    [null, <ore:ingotManasteel>, null]
]);

// hovering hourglass
recipes.remove(<botania:hourglass>);
recipes.addShaped(<botania:hourglass>, [
    [<ore:plateGold>, <thermalfoundation:glass:8>, <ore:plateGold>],
    [<botania:manaresource:23>, <botania:manaresource>, <botania:manaresource:23>],
    [<ore:plateGold>, <thermalfoundation:glass:8>, <ore:plateGold>]
]);

// alchemy catalist
recipes.remove(<botania:alchemycatalyst>);
recipes.addShaped(<botania:alchemycatalyst>, [
    [<botania:livingrock>, <ore:plateGold>, <botania:livingrock>],
    [<botania:pylon:1>, <thaumcraft:metal_alchemical_advanced>, <botania:pylon:1>],
    [<botania:livingrock>, <ore:plateGold>, <botania:livingrock>]
]);

// manaweave cloth
recipes.remove(<botania:manaresource:22>);
recipes.addShaped(<botania:manaresource:22>, [
    [null, <botania:manaresource:16>, null],
    [<botania:manaresource:16>, <botania:manaresource:23>, <botania:manaresource:16>],
    [null, <botania:manaresource:16>, null]
]);


### APOTHECARY ###

// munchdew
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "munchdew"}));
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "munchdew"}), [
    <ore:petalLime>, <ore:petalLime>, <ore:petalRed>,
    <ore:petalRed>, <ore:petalGreen>, <tconstruct:fletching>.withTag({Material: "leaf"})
]);

// gourmaryllis
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "gourmaryllis"}));
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "gourmaryllis"}),[
    <ore:petalGray>, <ore:petalGray>, <ore:petalYellow>,
    <ore:petalYellow>, <ore:petalRed>, <xlfoodmod:donut>,
    <xlfoodmod:lasagne>
]);

// hydroangeas
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "hydroangeas"}));

// endoflame
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "endoflame"}));

// thermalily
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "thermalily"}));

// orechid
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "orechid"}));

// orechid ignim
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "orechidIgnem"}));

// jaded amaranthus
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "jadedAmaranthus"}));
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "jadedAmaranthus"}), [
    <botania:fertilizer>, <botania:manaresource:6>, <botania:petal:10>,
    <botania:petal:5>, <botania:petal:13>
]);

// petro petunia | FloralAlchemy
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "petro_petunia"}));
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "petro_petunia"}), [
    <botania:rune:1>, <botania:rune:8>, <immersivepetroleum:material>,
    <botania:petal:12>, <botania:petal:15>, <botania:petal:1>
]);


### ELVEN TRADE ###

// elementium
ElvenTrade.removeRecipe(<botania:manaresource:7>);
ElvenTrade.removeRecipe(<botania:storage:2>);
ElvenTrade.addRecipe([<botania:manaresource:7>], [<astralsorcery:itemcraftingcomponent:1>]);

// elven quartz
ElvenTrade.removeRecipe(<botania:quartz:5>);
ElvenTrade.addRecipe([<botania:quartz:5>], [<botania:quartz:1>, <botania:quartz:1>]);

// dreamwood
ElvenTrade.removeRecipe(<botania:dreamwood>);
ElvenTrade.addRecipe([<botania:dreamwood>], [<botania:livingwood>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "herba"}]})]);

// pixie dust
ElvenTrade.removeRecipe(<botania:manaresource:8>);
ElvenTrade.addRecipe([<botania:manaresource:8>], [<botania:quartz:6>, <botania:manaresource:1>]);

// dragonstone
ElvenTrade.removeRecipe(<botania:manaresource:9>);
ElvenTrade.addRecipe([<botania:manaresource:9>], [<botania:manaresource:2>, <botania:manaresource:2>]);

// dragonstone block
ElvenTrade.removeRecipe(<botania:storage:4>);
ElvenTrade.addRecipe([<botania:storage:4>], [<botania:storage:3>, <botania:storage:3>]);


### INFUSION ###

// mana steel
ManaInfusion.removeRecipe(<botania:storage>);
ManaInfusion.removeRecipe(<ore:ingotManasteel>);
ManaInfusion.addInfusion(<botania:manaresource>,<ic2:itemmisc:53>,2500);
// mana diamond
ManaInfusion.removeRecipe(<botania:manaresource:2>);
ManaInfusion.addInfusion(<botania:manaresource:2>, <ore:gemDiamond>, 10000);
// mana pearl
ManaInfusion.removeRecipe(<botania:manaresource:1>);
ManaInfusion.addInfusion(<botania:manaresource:1>, <minecraft:ender_pearl>, 5000);
// mana powder
ManaInfusion.removeRecipe(<botania:manaresource:23>);
ManaInfusion.addInfusion(<botania:manaresource:23>,<minecraft:glowstone_dust>,2500);

// hardened mana infused glass | Thermal Foundation
ManaInfusion.addInfusion(<thermalfoundation:glass:8>, <thermalfoundation:glass:3>, 10000);

// osmium ingot | Mekanism
ManaInfusion.addConjuration(<mekanism:ingot:1> *2, <mekanism:ingot:1>, 25000);

// greatwood planks | Thaumcraft
ManaInfusion.addAlchemy(<thaumcraft:plank_greatwood> * 2, <thaumcraft:plank_greatwood>, 10000);


### ORECHID ###

// recipe removal
val orechidRemovals as string[] = [
	"oreAluminum",
	"oreIron",
	"oreOsmium",
	"oreMythril",
	"oreInfusedFire",
	"oreTin",
	"oreCertusQuartz",
	"oreMCropsEssence",
	"oreChimerite",
	"oreRuby",
	"oreCinnabar",
	"oreLead",
	"oreSapphire",
	"oreCoal",
	"oreVinteum",
	"oreDiamond",
	"oreTungsten",
	"oreEmerald",
	"orePlatinum",
	"oreDarkIron",
	"oreUranium",
	"oreNickel",
	"oreLapis",
	"oreInfusedEntropy",
	"oreAdamantium",
	"oreInfusedAir",
	"oreInfusedEarth",
	"oreFzDarkIron",
	"oreAmber",
	"oreOlivine",
	"oreMithril",
	"oreSilver",
	"oreInfusedOrder",
	"oreGold",
	"oreGalena",
	"oreBlueTopaz",
	"oreDark",
	"oreInfusedWater",
	"oreZinc",
	"oreQuartzBlack",
	"oreRedstone",
	"oreSulfur",
	"oreCopper",
	"oreYellorite",
	"oreApatite"
];
for entry in orechidRemovals {
	Orechid.removeOre(entry);
}


### ORECHID IGNIM ###

// recipe removal
val orechidIgnimRemovals as string[] = [
	"oreQuartz",
	"oreNetherCoal",
	"oreNetherIron",
	"oreNetherRedstone",
	"oreNetherCopper",
	"oreNetherTin",
	"oreNetherGold",
	"oreNetherLapis",
	"oreNetherLead",
	"oreNetherNickel",
	"oreNetherSilver",
	"oreArdite",
	"oreCobalt",
	"oreNetherDiamond",
	"oreNetherPlatinum"
];
for entry in orechidIgnimRemovals {
	OrechidIgnem.removeOre(entry);
}


### PURE DAISY ###

// living wood
PureDaisy.removeRecipe(<botania:livingwood>);
PureDaisy.addRecipe(<immersiveengineering:treated_wood>, <botania:livingwood>);

// living stone
PureDaisy.removeRecipe(<botania:livingrock>);
PureDaisy.addRecipe(<tconstruct:seared>, <botania:livingrock>);


### RUNIC ALTAR ###

// runes
RuneAltar.removeRecipe(<botania:rune:*>);
// water rune
RuneAltar.addRecipe(<botania:rune>, [
    <bloodmagic:slate>, <botania:manaresource:23>, <botania:manaresource>, <minecraft:dye:15>,
    <minecraft:fishing_rod>, <ore:sugarcane>
], 3500);
// fire rune
RuneAltar.addRecipe(<botania:rune:1>, [
    <bloodmagic:slate>, <botania:manaresource>, <botania:manaresource:23>, <ore:cropNetherWart>,
    <ore:gunpowder>, <ore:ingotBrickNether>
], 3500);
// earth rune
RuneAltar.addRecipe(<botania:rune:2>, [
    <bloodmagic:slate>, <botania:manaresource:23>, <botania:manaresource>, <ore:stone>,
    <ore:blockCoal>, <minecraft:brown_mushroom>
], 3500);
RuneAltar.addRecipe(<botania:rune:2>, [
    <bloodmagic:slate>, <botania:manaresource:23>, <botania:manaresource>, <ore:stone>,
    <ore:blockCoal>, <minecraft:red_mushroom>
], 3500);
// air rune
RuneAltar.addRecipe(<botania:rune:3>, [
    <bloodmagic:slate>, <botania:manaresource:23>, <botania:manaresource>, <minecraft:carpet>,
    <ore:feather>, <ore:string>
], 3500);
// mana rune
RuneAltar.addRecipe(<botania:rune:8>, [
    <bloodmagic:slate>, <ore:manaPearl>, <botania:manaresource>, <botania:manaresource>,
    <botania:manaresource>, <botania:manaresource>, <botania:manaresource>
], 7000);
// winter rune
RuneAltar.addRecipe(<botania:rune:7>, [
    <bloodmagic:slate:1>, <botania:rune>, <botania:rune:2>, <minecraft:snow>,
    <minecraft:snow>, <ore:wool>, <minecraft:cake>
], 7000);
// autumn rune
RuneAltar.addRecipe(<botania:rune:6>, [
    <bloodmagic:slate:1>, <botania:rune:1>, <botania:rune:3>, <minecraft:spider_eye>,
    <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>
], 7000);
// summer rune
RuneAltar.addRecipe(<botania:rune:5>, [
    <bloodmagic:slate:1>, <botania:rune:2>, <botania:rune:3>, <ore:slimeball>,
    <ore:sand>, <minecraft:melon>
], 7000);
// spring rune
RuneAltar.addRecipe(<botania:rune:4>, [
    <bloodmagic:slate:1>, <botania:rune:1>, <botania:rune>, <minecraft:sapling>,
    <minecraft:sapling>, <minecraft:sapling>, <minecraft:wheat>
], 7000);
// pride
RuneAltar.addRecipe(<botania:rune:15>, [
    <bloodmagic:slate:2>, <bloodmagic:item_demon_crystal:4>, <bloodmagic:item_demon_crystal:4>,
    <actuallyadditions:item_misc:5>, <botania:manaresource>, <botania:manaresource>,
    <botania:manaresource:2>, <botania:manaresource:2>, <botania:rune:5>, <botania:rune:1>
], 10000);
// envy
RuneAltar.addRecipe(<botania:rune:14>, [
    <bloodmagic:slate:2>, <actuallyadditions:item_misc:5>, <actuallyadditions:item_misc:5>,
    <botania:quartz:1>, <botania:manaresource>, <botania:manaresource>,
    <botania:manaresource:2>, <botania:manaresource:2>, <botania:rune:7>, <botania:rune>
], 10000);
// wrath
RuneAltar.addRecipe(<botania:rune:13>, [
    <bloodmagic:slate:2>, <bloodmagic:item_demon_crystal:2>, <bloodmagic:item_demon_crystal:2>,
    <bloodmagic:item_demon_crystal:3>, <botania:manaresource>, <botania:manaresource>,
    <botania:manaresource:2>, <botania:manaresource:2>, <botania:rune:2>, <botania:rune:7>
], 10000);
// sloth
RuneAltar.addRecipe(<botania:rune:12>, [
    <bloodmagic:slate:2>, <tconstruct:slime_congealed:4>, <tconstruct:slime_congealed:4>,
    <minecraft:potion>.withTag({Potion: "minecraft:slowness"}), <botania:manaresource>, <botania:manaresource>,
    <botania:manaresource:2>, <botania:manaresource:2>, <botania:rune:6>, <botania:rune:3>
], 10000);
// greed
RuneAltar.addRecipe(<botania:rune:11>, [
    <bloodmagic:slate:2>, <minecraft:gold_ingot>, <minecraft:gold_ingot>,
    <minecraft:diamond_block>, <botania:manaresource>, <botania:manaresource>,
    <botania:manaresource:2>, <botania:manaresource:2>, <botania:rune>, <botania:rune:4>
], 10000);
// gluttony
RuneAltar.addRecipe(<botania:rune:10>, [
    <bloodmagic:slate:2>, <botania:manaresource>, <botania:manaresource>,
    <xlfoodmod:donut>, <botania:specialflower>.withTag({type: "munchdew"}), <botania:specialflower>.withTag({type: "munchdew"}),
    <botania:manaresource:2>, <botania:manaresource:2>, <botania:rune:7>, <botania:rune:1>
], 10000);
// lust
RuneAltar.addRecipe(<botania:rune:9>, [
    <bloodmagic:slate:2>, <actuallyadditions:item_crystal_empowered>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "desiderium"}]}),
    <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "desiderium"}]}), <botania:manaresource>, <botania:manaresource>,
    <botania:manaresource:2>, <botania:manaresource:2>, <botania:rune:3>, <botania:rune:5>
], 10000);

// large bloodstone tile | Blood Magic
RuneAltar.addRecipe(<bloodmagic:decorative_brick>, [
    <ic2:itemmisc:202>, <ic2:itemmisc:202>, <ic2:itemmisc:202>, <astralsorcery:itemcraftingcomponent:1>,
    <mekanism:polyethene>, <mekanism:polyethene>, <bloodmagic:blood_shard>
], 10000);

// schwarzschilds sphere | ATM Tweaks
RuneAltar.addRecipe(<atmtweaks:item_material:6>, [
    <thaumcraft:voidseer_charm>, <thaumcraft:causality_collapser>, <botania:manaresource:14>,
    <thaumcraft:ingot:1>, <draconicevolution:wyvern_core>
], 25000);

// certus quartz seeds | AgriCraft
RuneAltar.addRecipe(<agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "appliedenergistics2:certus_quartz_plant", agri_growth: 1 as byte}), [
    <minecraft:wheat_seeds>.withTag({agri_analyzed: 1 as byte, agri_strength: 10 as byte, agri_gain: 10 as byte, agri_seed: "vanilla:wheat_plant", agri_growth: 10 as byte}),
    <agricraft:agri_seed>.withTag({agri_analyzed: 1 as byte, agri_strength: 10 as byte, agri_gain: 10 as byte, agri_seed: "resource:smoked_quartzanthemum_plant", agri_growth: 10 as byte}),
    <agricraft:agri_seed>.withTag({agri_analyzed: 1 as byte, agri_strength: 10 as byte, agri_gain: 10 as byte, agri_seed: "resource:quartzanthemum_plant", agri_growth: 10 as byte}),
    <appliedenergistics2:material:10>,
    <botania:rune:11>,
    <appliedenergistics2:sky_stone_block>
], 25000);


##########################################################################################
print("==================== end of mods botania.zs ====================");
