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
import mods.thaumcraft.Crucible;
import mods.thaumcraft.ArcaneWorkbench;
import mods.botania.RuneAltar;
import mods.actuallyadditions.Empowerer;

print("thaumcraft Changes start here");

val aerAspect = <aspect:aer>;
val terraAspect = <aspect:terra>;
val aquaAspect = <aspect:aqua>;
val ignisAspect = <aspect:ignis>;
val ordoAspect = <aspect:ordo>;
val perditioAspect = <aspect:perditio>;

#thaum plates
recipes.remove(<thaumcraft:plate>);
recipes.remove(<thaumcraft:plate:1>);
recipes.remove(<thaumcraft:plate:2>);
recipes.remove(<thaumcraft:plate:3>);

#Slais Mundus
recipes.remove(<thaumcraft:salis_mundus>);
recipes.addShapeless("CtMundus",<thaumcraft:salis_mundus>,
	[<thaumcraft:crystal_essence>,<thaumcraft:crystal_essence>,
	<thaumcraft:crystal_essence>,<ore:powderMana>,<ore:pestleAndMortar>]
	);

#arcane stone
recipes.remove(<thaumcraft:stone_arcane>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtArcaneStone", "", 5,
		[aerAspect, terraAspect, aquaAspect, ignisAspect, ordoAspect, perditioAspect],
		<thaumcraft:stone_arcane>,
		[[null, <ore:livingrock>, null],
		[<ore:livingrock>, <ore:ingotThaumium>, <ore:livingrock>],
		[null, <ore:livingrock>, null]]
		);


#essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube>);
mods.thaumcraft.Crucible.registerRecipe("CtEtube","TUBES",<thaumcraft:tube>*12,
				<ore:plateIron>,
	[<aspect:vacuos>*10,<aspect:metallum>*10]
	);

#centrifuge
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:centrifuge>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtCentrifuge","CENTRIFUGE",100,
	[<aspect:ordo>,<aspect:perditio>],		 <thaumcraft:centrifuge>,
	[[<ore:plateSteel>,<thaumcraft:tube>,<ore:plateSteel>],
	[<thaumcraft:morphic_resonator>,<thaumcraft:metal_alchemical>,<thaumcraft:mechanism_simple>],
	[<ore:plateSteel>,<thaumcraft:tube>,<ore:plateSteel>]
	]);

#thaumometer
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:thaumometer>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtThaumometer", "", 20, [], <thaumcraft:thaumometer>,
	[[null,<ore:plateGold>,null],
	[<ore:plateGold>,<botania:managlasspane>, <ore:plateGold>],
	[null,<ore:plateGold>,null]
	]);

#basic focus
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:focus_1>);
mods.actuallyadditions.Empowerer.addRecipe(<thaumcraft:focus_1>, <ore:quicksilver>, <thaumcraft:mirrored_glass>, <actuallyadditions:item_crystal_empowered:2>, 
<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), 
<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), 50000, 40
);

#vis resonator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:vis_resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("CtVisResonator","BASEAUROMANCY",50,
		[aerAspect, aquaAspect],
		<thaumcraft:vis_resonator>,
		[<ore:plateIron>, <thaumcraft:mirrored_glass>]
		);

#caster
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:caster_basic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtCastersGauntlet","BASEAUROMANCY",100,
		[aerAspect, terraAspect, aquaAspect, ignisAspect, ordoAspect, perditioAspect],
		<thaumcraft:caster_basic>,
		[[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
		[<ore:leather>, <thaumcraft:vis_resonator>, <ore:leather>],
		[<ore:leather>, <thaumcraft:thaumometer>, <ore:leather>]]
		);

#phial
recipes.remove(<thaumcraft:phial>);
recipes.addShaped("CtPhial", <thaumcraft:phial>, 
	[[null, <minecraft:clay_ball>, null],
	[<botania:managlass>, null, <botania:managlass>],
	[null, <botania:managlass>, null]]
	);

#goggles of revealing
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:goggles>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtGoggles", "BASEARTIFICE", 50, 
		[ordoAspect, perditioAspect],
		<thaumcraft:goggles>,
		[[<ore:leather>, <thaumcraft:ingot:2>, <ore:leather>],
		[<ore:leather>, null, <ore:leather>],
		[<thaumcraft:thaumometer>, <thaumcraft:ingot:2>, <thaumcraft:thaumometer>]]
		);

#simple arcane mechanism
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mechanism_simple>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtSimpleArcaneMechanism", "BASEARTIFICE", 10,
		[ignisAspect, aquaAspect],
		<thaumcraft:mechanism_simple>,
		[[null, <ore:plateBrass>, null],
		[<ore:circuitBasic>, <ore:gearIron>, <ore:circuitBasic>],
		[null, <ore:plateBrass>, null]]
		);
#complex arcane mechanism
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mechanism_complex>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtComplexArcaneMechanism", "BASEARTIFICE", 50,
		[ignisAspect, aquaAspect],
		<thaumcraft:mechanism_complex>,
		[[null, <thaumcraft:mechanism_simple>, null],
		[<ore:plateThaumium>, <ore:circuitAdvanced>, <ore:plateThaumium>],
		[null, <thaumcraft:mechanism_simple>, null]]
		);

#Runic matrix
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:infusion_matrix>);
mods.ic2.Compressor.addRecipe(<thaumcraft:infusion_matrix>, <thaumcraft:stone_arcane_brick> *4);

#everfull urn
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:everfull_urn>);
mods.thaumcraft.Crucible.registerRecipe("CtCrucible", "EVERFULLURN", <thaumcraft:everfull_urn>, <tcomplement:porcelain_tank>, 
	[aquaAspect *30, <aspect:fabrico>, terraAspect]
	);

#mirror
	#magic mirror
	mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:mirror>);
	mods.thaumcraft.Infusion.registerRecipe("CtMagicMirror", "MIRROR", <thaumcraft:mirror>, 2, 
			[<aspect:motus> *25, <aspect:tenebrae> *25, <aspect:permutatio> *25],
			<astralsorcery:itemcraftingcomponent:3>, 
			[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>, <ore:enderpearl>]
			);
	#essemtia mirror
	mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:mirror_essentia>);
	mods.thaumcraft.Infusion.registerRecipe("CtEssentiaMirror", "ESSENTIAMIRROR", <thaumcraft:mirror_essentia>, 4, 
			[<aspect:motus>, aquaAspect, <aspect:permutatio>],
			<astralsorcery:itemcraftingcomponent:3>,
			[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>, <ore:enderpearl>]
			);

#workbench Charger
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:arcane_workbench_charger>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtArcaneCharger", "WORKBENCHCHARGER", 200, 
		[aerAspect *2, ordoAspect *2],
		<thaumcraft:arcane_workbench_charger>,
		[[null, <thaumcraft:vis_resonator>, null],
		[<thaumcraft:plank_greatwood>, null, <thaumcraft:plank_greatwood>],
		[<ore:plateSteel>, null, <ore:plateSteel>]]
		);