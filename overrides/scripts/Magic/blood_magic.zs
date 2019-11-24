import mods.thaumcraft.Infusion;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.ArcaneWorkbench;
import mods.botania.ManaInfusion;

val ignisAspect = <aspect:ignis>; 
val perditioAspect = <aspect:perditio>;

#Blood magic slate
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:stone>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate>, <botania:livingrock:4>, 0, 1000, 25, 5);


#blood brick
recipes.remove(<bloodmagic:decorative_brick>);
mods.botania.RuneAltar.addRecipe(<bloodmagic:decorative_brick>,[<ic2:itemmisc:202>,<ic2:itemmisc:202>,<ic2:itemmisc:202>,<astralsorcery:itemcraftingcomponent:1>,<mekanism:polyethene>,<mekanism:polyethene>, <bloodmagic:blood_shard>], 10000);

#Hellfire Forge

recipes.remove(<bloodmagic:soul_forge>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtHellfire", "", 250,
		[perditioAspect * 30, ignisAspect * 30],
		<bloodmagic:soul_forge>,
		[[<ic2c_extras:refinedironblock>, null, <ic2c_extras:refinedironblock>],
		[<atum:porphyry>, <contenttweaker:lonsdale>, <atum:porphyry>],
		[<atum:porphyry>, <minecraft:gold_block>, <atum:porphyry>]]
		);

#Snare

recipes.remove(<bloodmagic:soul_snare>);
recipes.addShaped("CtSnare", <bloodmagic:soul_snare>, 
		[[<botania:manaresource:16>, <ic2:itemmisc:53>, <botania:manaresource:16>],
		[<ic2:itemmisc:53>, <astralsorcery:itemusabledust:1>, <ic2:itemmisc:53>],
		[<botania:manaresource:16>, <ic2:itemmisc:53>, <botania:manaresource:16>]]
	);
	
#Blood Magic Altar
recipes.remove(<bloodmagic:altar>);
mods.thaumcraft.Infusion.registerRecipe("CtBloodAltar", "", 
		<bloodmagic:altar>, 15, 
		[<aspect:alkimia> *40, <aspect:mortuus> *25, <aspect:tenebrae> *25, <aspect:victus> *40],
		<contenttweaker:lonsdale>, 
		[<actuallyadditions:block_misc:2>, <minecraft:gold_block>, <contenttweaker:quartzingot>, <actuallyadditions:block_misc:2>, <actuallyadditions:block_crystal_empowered>, <contenttweaker:quartzingot>]
	);

	
#crystal blood pile
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:crystallisedblood>, <botania:manaresource:8>, 3, 30000, 50, 10);

#incense altar
recipes.remove(<bloodmagic:incense_altar>);
recipes.addShaped(<bloodmagic:incense_altar>,
 [[null, <botania:grassseeds:1>, null],
 [<immersiveengineering:material:18>, <bloodmagic:slate:2>, <immersiveengineering:material:18>], 
 [<ore:plankWood>, <bloodmagic:slate:2>, <ore:plankWood>]]);
