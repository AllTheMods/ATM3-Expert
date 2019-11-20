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
import mods.ic2.Compressor;
import mods.botania.ManaInfusion;
import mods.actuallyadditions.AtomicReconstructor;

print("thaumcraft Changes start here");

val aerAspect = <aspect:aer>;
val terraAspect = <aspect:terra>;
val aquaAspect = <aspect:aqua>;
val ignisAspect = <aspect:ignis>;
val ordoAspect = <aspect:ordo>;
val perditioAspect = <aspect:perditio>;

<thaumcraft:salis_mundus>.addTooltip(format.yellow("Accepts any crystal"));		
#cinderpearl
recipes.remove(<thaumcraft:cinderpearl>);

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
		<thaumcraft:stone_arcane> * 3,
		[[null, <ore:livingrock>, null],
		[<ore:livingrock>, <ore:ingotThaumium>, <ore:livingrock>],
		[null, <ore:livingrock>, null]]
		);

#Essentia Smeltery
recipes.remove(<thaumcraft:smelter_basic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtEssentiaSmeltery", "ALUMENTUM", 50,
        [terraAspect, aquaAspect, ignisAspect],
        <thaumcraft:smelter_basic>,
        [[<thaumcraft:plate>, <thaumcraft:crucible>, <thaumcraft:plate>],
        [<atum:limestone_brick_small>, <tconstruct:seared_furnace_controller>, <atum:limestone_brick_small>],
        [<atum:limestone_brick_small>, <ore:livingrock>, <atum:limestone_brick_small>]]
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
	[[<contenttweaker:manasteelplate>, <ore:plateGold>, <contenttweaker:manasteelplate>],
	[<ore:plateGold>, <botania:managlasspane>, <ore:plateGold>],
	[<contenttweaker:manasteelplate>, <ore:plateGold>, <contenttweaker:manasteelplate>]]);


#Vis Resonator
recipes.remove(<thaumcraft:vis_resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtVisResonator", "BASEALCHEMY", 50,
        [aerAspect, aquaAspect],
        <thaumcraft:vis_resonator>,
        [[<thermalfoundation:material:354>, <thermalfoundation:glass:8>, <thermalfoundation:material:354>],
        [<thermalfoundation:glass:8>, <thaumcraft:mirrored_glass>, <thermalfoundation:glass:8>],
        [<thermalfoundation:material:354>, <thermalfoundation:glass:8>, <thermalfoundation:material:354>]]
        );

#Caster's Gauntlet
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:caster_basic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtCastersGauntlet","BASEALCHEMY",100,
        [aerAspect, terraAspect, aquaAspect, ignisAspect, ordoAspect, perditioAspect],
        <thaumcraft:caster_basic>,
        [[<thaumcraft:plate>, <contenttweaker:manasteelplate>, <thaumcraft:plate>],
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
		[[<simplyjetpacks:metaitem:4>, <thaumcraft:ingot:2>, <simplyjetpacks:metaitem:4>],
		[<simplyjetpacks:metaitem:4>, null, <simplyjetpacks:metaitem:4>],
		[<thaumcraft:thaumometer>, <thaumcraft:ingot:2>, <thaumcraft:thaumometer>]]
	);

#simple arcane mechanism
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mechanism_simple>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtSmipleMechanism", "BASEARTIFICE", 10,
		[aquaAspect * 4, ignisAspect * 4],
		<thaumcraft:mechanism_simple>,
		[[null, <ore:plateBrass>, null],
		[<ore:plateThaumium>, <actuallyadditions:item_misc:5>, <ore:plateThaumium>],
		[null, <ore:plateBrass>, null]]
		);
#complex arcane mechanism
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mechanism_complex>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtComplexMechanism", "BASEARTIFICE", 50,
		[aquaAspect * 8, ignisAspect * 8],
		<thaumcraft:mechanism_complex>,
		[[<ore:plateSteel>, <thaumcraft:mechanism_simple>, <thaumcraft:mechanism_simple>],
		[<ore:plateThaumium>, <thermalfoundation:material:27>, <ore:plateThaumium>],
		[<thaumcraft:mechanism_simple>, <thaumcraft:mechanism_simple>, <ore:plateSteel>]]
		);

#Flux Condenser
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:condenser>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtCondenser", "BASEARTIFICE", 500,
		[aquaAspect * 20, ignisAspect * 20, aerAspect *20],
		<thaumcraft:condenser>,
		[[<thaumcraft:crystal_vitium>, <thaumcraft:mechanism_complex>, <thermalfoundation:material:352>],
		[<thaumcraft:tube_filter>, <thaumcraft:morphic_resonator>, <thaumcraft:tube_filter>],
		[<thermalfoundation:material:352>, <thaumcraft:mechanism_complex>, <thaumcraft:crystal_vitium>]]
		);
		
#Void Syphon

mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:void_siphon>);
mods.thaumcraft.Infusion.registerRecipe("CtTeruBozu", "VOIDSYPHON", <thaumcraft:void_siphon>, 2, 
		[<aspect:vacuos> *100, <aspect:perditio> *100, <aspect:fabrico> *100, <aspect:alienis> *100],
		<botania:pylon:1>, 
		[<contenttweaker:infusion_block>, <minecraft:nether_star>, <thaumcraft:mechanism_complex>, <ore:plateBrass>, <ore:plateBrass>, <contenttweaker:infusion_block>, <thaumcraft:metal_void>]
	);

#Alchemical Construct
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:metal_alchemical>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtAlchConstruct", "BASEARTIFICE", 300,
		[aquaAspect * 20, ordoAspect * 20, perditioAspect *20],
		<thaumcraft:metal_alchemical>,
		[[<ore:plateSteel>, <thaumcraft:mechanism_simple>, <ore:plateSteel>],
		[<thaumcraft:tube_filter>, <thaumcraft:plank_greatwood>, <thaumcraft:tube_filter>],
		[<ore:plateSteel>, <thaumcraft:mechanism_simple>, <ore:plateSteel>]]
		);

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


#workbench Charger
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:arcane_workbench_charger>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtArcaneCharger", "WORKBENCHCHARGER", 200, 
		[aerAspect *2, ordoAspect *2],
		<thaumcraft:arcane_workbench_charger>,
		[[null, <thaumcraft:vis_resonator>, null],
		[<thaumcraft:plank_greatwood>, null, <thaumcraft:plank_greatwood>],
		[<ore:plateSteel>, null, <ore:plateSteel>]]
	);

#baubles
recipes.remove(<thaumcraft:baubles:*>);
	#simple baubles
		#mundane Ring
		mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtMundaneRing", "", 20, 
				[ordoAspect *2, ignisAspect *2],
		 		<thaumcraft:baubles:1>, 
				[[null, <ore:plateGold>, <ore:clusterCopper>],
				[<ore:goldPlate>, null, <ore:plateGold>],
				[null, <ore:plateGold>, null]]
			);
		#mundane Belt
		mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtMundaneBelt", "", 20,
				[ordoAspect *2, terraAspect *2],
				<thaumcraft:baubles:2>,
				[[null, <ore:leather>, null],
				[<ore:leather>, null, <ore:leather>],
				[<ore:clusterCopper>, <ore:plateBrass>, <ore:clusterCopper>]]
			);
		#mundane Amulet
		mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtMundaneAmulet", "", 20,
				[ordoAspect *2, aerAspect *2],
				<thaumcraft:baubles>,
				[[null, <ore:string>, null],
				[<ore:string>, <ore:plateBrass>, <ore:string>],
				[null, <ore:clusterCopper>, null]]
			);
		#fancy ring
		mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtFancyRing", "", 35,
				[ordoAspect *2, ignisAspect *2],
				<thaumcraft:baubles:5>,
				[[null, <ore:manaDiamond>, <thaumcraft:nugget:10>],
				[<ore:clusterGold>, <thaumcraft:baubles:1>, <ore:clusterGold>],
				[null, <ore:manaDiamond>, null]]
			);
		#fancy belt
		mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtFancyBelt", "", 35,
				[ordoAspect *2, terraAspect],
				<thaumcraft:baubles:6>,
				[[null, <ore:clusterGold>, null],
				[<ore:manaDiamond>, <thaumcraft:baubles:2>, <ore:manaDiamond>],
				[null, <thaumcraft:nugget:10>, null]]
			);
		#fancy amulet
		mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtFancyAmulet", "", 35,
				[ordoAspect *2, aerAspect *2],
				<thaumcraft:baubles:4>,
				[[null, <ore:clusterGold>, null],
				[<ore:manaDiamond>, <thaumcraft:baubles>, <ore:manaDiamond>],
				[null, <thaumcraft:nugget:10>, null]]
			);

	#effect Baubles
		#cloudstepper ring
		mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:cloud_ring>);
		mods.thaumcraft.Infusion.registerRecipe("CtCloudstepper", "CLOUDRING",
				<thaumcraft:cloud_ring>, 2,
				[aerAspect *100],
				<thaumcraft:baubles:5>,
				[<ore:feather>, <minecraft:potion>.withTag({Potion: "minecraft:leaping"})]
			);
		#Headband of curiosity
		mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:curiosity_band>);
		mods.thaumcraft.Infusion.registerRecipe("CtCuriosity", "CURIOSITYBAND", 
				<thaumcraft:curiosity_band>, 5,
				[<aspect:cognitio> *150, <aspect:vinculum> *100, <aspect:vacuos> *50],
				<thaumcraft:baubles:6>,
				[<ore:gemEmerald>, <ore:clusterSilver>, <ore:gemEmerald>, <minecraft:writable_book>, <ore:gemEmerald>, <ore:clusterSilver>, <ore:gemEmerald>, <minecraft:writable_book>]
			);
		#verdant charm
		mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:verdant_charm>);
		mods.thaumcraft.Infusion.registerRecipe("CtVerdant", "VERDANTCHARMS",
				<thaumcraft:verdant_charm>, 5,
				[<aspect:victus> *60, <aspect:herba> *60, ordoAspect *30],
				<thaumcraft:baubles:4>,
				[ <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "victus"}]}), <minecraft:cake>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "herba"}]}), <minecraft:potion>.withTag({Potion: "minecraft:healing"})]
			);
			
#Black Quartz Block
recipes.removeShaped(<actuallyadditions:block_misc:2>);
mods.thaumcraft.Infusion.registerRecipe("CtBlackQuartzBlock", "", <actuallyadditions:block_misc:2>, 5, 
		[<aspect:spiritus> *10, <aspect:tenebrae> *24],
		<minecraft:quartz_block>, 
		[<astralsorcery:itemusabledust:1>, <actuallyadditions:item_misc:5>, <astralsorcery:itemusabledust:1>, <actuallyadditions:item_misc:5>]
	);
	
# Altar Block			
			
mods.thaumcraft.Infusion.registerRecipe("CtLonsdale", "", 
		<contenttweaker:lonsdale>, 10, 
		[<aspect:mortuus> *12, <aspect:tenebrae> *42, <aspect:alienis> *12],
		 <actuallyadditions:block_crystal_empowered:3>, 
		[<bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>, <bloodmagic:monster_soul>]
	); 	


#Greatwood Plank Recipe Changes
recipes.remove(<thaumcraft:plank_greatwood>);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<thaumcraft:plank_greatwood>, <thaumcraft:log_greatwood>, 5000);
mods.botania.ManaInfusion.addAlchemy(<thaumcraft:plank_greatwood> * 2, <thaumcraft:plank_greatwood>, 10000);

#Redstone Inlay
recipes.remove(<thaumcraft:inlay>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtRedstoneInlay", "INFUSIONSTABLE", 25,
        [aerAspect, aquaAspect, ordoAspect],
        <thaumcraft:inlay>,
        [[<ore:dustRedstone>, <thermalfoundation:material:33>, <ore:dustRedstone>],
        [<thermalfoundation:material:33>, <ore:dustRedstone>, <thermalfoundation:material:33>],
        [<ore:dustRedstone>, <thermalfoundation:material:33>, <ore:dustRedstone>]]
        );

#Recharge Pedestal
recipes.remove(<thaumcraft:recharge_pedestal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtRechargePedestal", "BASEAUROMANCY", 100,
        [aerAspect, aquaAspect, ordoAspect, perditioAspect],
        <thaumcraft:recharge_pedestal>,
        [[null, <thaumcraft:vis_resonator>, null],
        [<contenttweaker:manadiamondplate>, <thermalfoundation:material:33>, <contenttweaker:manadiamondplate>],
        [<actuallyadditions:block_misc:2>, <actuallyadditions:block_misc:2>, <actuallyadditions:block_misc:2>]]
        );

# Infusion Block
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtInfusionBlock", "BASEINFUSION", 50,
		[aerAspect, terraAspect, aquaAspect, ignisAspect, ordoAspect, perditioAspect],
		<contenttweaker:infusion_block>,
		[[<thaumcraft:stone_arcane_brick>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), <thaumcraft:stone_arcane_brick>],
		[<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "instrumentum"}]}), <thermalfoundation:glass:8>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "instrumentum"}]})],
		[<thaumcraft:stone_arcane_brick>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), <thaumcraft:stone_arcane_brick>]]
		);

#Thaumium Smelter
		
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_thaumium>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtThaumSmelter", "TUBES", 300,
		[aquaAspect * 6, ignisAspect * 6, terraAspect * 6],
		<thaumcraft:smelter_thaumium>,
		[[<ore:plateBrass>, <thaumcraft:smelter_basic>, <ore:plateBrass>],
		[<ore:plateThaumium>, <thaumcraft:metal_alchemical>, <ore:plateThaumium>],
		[<ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>]]
		);

#Void Smelter
	
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_void>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtVoidSmelter", "ESSENTIASMELTERTHAUMIUM", 750,
		[aquaAspect * 10, ignisAspect * 10, terraAspect * 10, perditioAspect * 10, ordoAspect * 10, aerAspect * 10],
		<thaumcraft:smelter_void>,
		[[<ore:plateBrass>, <thaumcraft:smelter_thaumium>, <ore:plateBrass>],
		[<thaumcraft:plate:3>, <thaumcraft:metal_alchemical_advanced>, <thaumcraft:plate:3>],
		[<mekanism:ingot:1>, <actuallyadditions:block_crystal_empowered:3>, <mekanism:ingot:1>]]
		);

#Advanced Alchemical Construct.
		
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:metal_alchemical_advanced>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtAdvancedAlchemical", "IMPROVEDSMELTING2", 200,
		[aquaAspect * 4, ignisAspect * 4],
		<thaumcraft:metal_alchemical_advanced>,
		[[<bloodmagic:slate:3>, <thaumcraft:metal_alchemical>, <bloodmagic:slate:3>],
		[<thaumcraft:plate:3>, <actuallyadditions:item_misc:5>, <thaumcraft:plate:3>],
		[<bloodmagic:slate:3>, <thaumcraft:metal_alchemical>, <bloodmagic:slate:3>]]
		);
		
# White Tallow Candle	
recipes.remove(<thaumcraft:candle_white>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtWhiteCandle", "HEDGEALCHEMY", 5,
		[ignisAspect * 4],
		<thaumcraft:candle_white>,
		[[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]}), <ore:clothManaweave>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]})],
		[null, <thaumcraft:tallow>, null],
		[<thaumcraft:tallow>, <thaumcraft:tallow>, <thaumcraft:tallow>]]
		);
		
#Warded Jar
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:jar_normal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtWarded Jar", "WARDEDJARS", 5,
		[aquaAspect * 4, ignisAspect * 4],
		<thaumcraft:jar_normal>,
		[[<botania:managlasspane>, <thaumcraft:plank_greatwood>, <botania:managlasspane>],
		[<botania:managlasspane>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vacuos"}]}), <botania:managlasspane>],
		[<botania:managlasspane>, <botania:managlasspane>, <botania:managlasspane>]]
		);
		
#Arcane Lamp
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:lamp_arcane>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtArcaneLamp", "ARCANELAMP", 50,
		[aerAspect * 4, ignisAspect * 4],
		<thaumcraft:lamp_arcane>,
		[[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]}), <ore:dustAstralStarmetal>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]})],
		[<ore:plateThaumium>, <thaumcraft:amber_block>, <ore:plateThaumium>],
		[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]}), <ore:dustAstralStarmetal>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]})]]
		);
		
#Redstone Relay
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:redstone_relay>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtRedstoneRelay", "REDSTONERELAY", 10,
		[ordoAspect * 4, ignisAspect * 4],
		<thaumcraft:redstone_relay>,
		[[null, null, null],
		[<minecraft:redstone_torch>, <thaumcraft:mechanism_simple>, <minecraft:redstone_torch>],
		[<botania:livingrock0slab>, <botania:livingrock0slab>, <botania:livingrock0slab>]]
		);
		
#Alumentum
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:alumentum>);
mods.thaumcraft.Crucible.registerRecipe("Ctalumentum","ALUMENTUM",<thaumcraft:alumentum>,
				<ore:fuelCoke>,
	[<aspect:potentia>*10,<aspect:ignis>*10, <aspect:perditio>*10]
	);
	
#Lamp of Fertility
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:lamp_fertility>);
mods.thaumcraft.Infusion.registerRecipe("CtFertilityLamp", "LAMPFERTILITY", 
		<thaumcraft:lamp_fertility>, 15, 
		[<aspect:bestia> *40, <aspect:motus> *25, <aspect:lux> *25, <aspect:victus> *40],
		<thaumcraft:lamp_arcane>, 
		[<ic2:itemmisc:160>, <botania:rune:10>, <actuallyadditions:block_crystal_empowered:4>, <ic2:itemmisc:160>, <botania:rune:10>, <enderio:item_soul_vial:1>.withTag({entityId: "minecraft:cow"})]
	);
	
#Lamp of Growth
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:lamp_growth>);
mods.thaumcraft.Infusion.registerRecipe("CtGrowthLamp", "LAMPGROWTH", 
		<thaumcraft:lamp_growth>, 15, 
		[<aspect:herba> *40, <aspect:lux> *25, <aspect:instrumentum> *25, <aspect:victus> *40],
		<thaumcraft:lamp_arcane>, 
		[<botania:overgrowthseed>, <bloodmagic:component:5>, <thaumcraft:elemental_hoe>, <actuallyadditions:block_crystal_empowered:4>, <bloodmagic:component:5>, <thaumcraft:elemental_hoe>]
	);
	
#Automated Crossbow
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:turret>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtTurret", "TURRET", 100,
		[aerAspect * 10, terraAspect * 10],
		<thaumcraft:turret>,
		[[<tconstruct:bow_limb>.withTag({Material: "manyullyn"}), <thaumcraft:mechanism_simple>, <ore:plateSteel>],
		[<thaumcraft:plank_greatwood>, <thaumcraft:mind>, <thaumcraft:plank_greatwood>],
		[<tconstruct:tough_tool_rod>.withTag({Material: "manasteel"}), null, <tconstruct:tough_tool_rod>.withTag({Material: "manasteel"})]]
		);

#Advanced Automated Crossbow
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:turret:1>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtAdvTurret", "ADVANCEDTURRET", 150,
		[aerAspect * 15, terraAspect * 15],
		<thaumcraft:turret:1>,
		[[<thaumcraft:turret>, <ore:plateSteel>, <thaumcraft:turret>],
		[<ore:plateSteel>, <thaumcraft:mechanism_simple>, <ore:plateSteel>],
		[<tconstruct:tough_tool_rod>.withTag({Material: "elementium"}), null, <tconstruct:tough_tool_rod>.withTag({Material: "elementium"})]]
		);
		
#Clockwork Mind
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mind>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtMind", "MINDCLOCKWORK", 25,
		[ordoAspect * 5, ignisAspect * 5],
		<thaumcraft:mind>,
		[[null, <thermalfoundation:glass:8>, null],
		[<thermalfoundation:glass:8>, <thaumcraft:mechanism_simple>, <thermalfoundation:glass:8>],
		[<ore:plateBrass>, <thaumcraft:redstone_relay>, <ore:plateBrass>]]
		);

#Elemental Hoe
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_hoe>);
mods.thaumcraft.Infusion.registerRecipe("CtElementalHoe", "ELEMENTALTOOLS", 
		<thaumcraft:elemental_hoe>, 10, 
		[<aspect:herba> *40, <aspect:lux> *25, <aspect:instrumentum> *25, <aspect:victus> *20],
		<thaumcraft:thaumium_hoe>, 
		[<thaumcraft:plank_greatwood>, <actuallyadditions:block_misc:2>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "herba"}]}), <actuallyadditions:item_misc:24>, <actuallyadditions:block_misc:2>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "herba"}]})]
	);		

#Sword of the Zephyr
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_sword>);
mods.thaumcraft.Infusion.registerRecipe("CtElementalSword", "ELEMENTALTOOLS", 
		<thaumcraft:elemental_sword>, 10, 
		[<aspect:aer> *20, <aspect:volatus> *25, <aspect:instrumentum> *25, <aspect:aversio> *40],
		<thaumcraft:thaumium_sword>, 
		[<thaumcraft:plank_greatwood>, <actuallyadditions:block_misc:2>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "aer"}]}), <minecraft:skull:1>, <actuallyadditions:block_misc:2>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "aer"}]})]
	);	
	
#Pick of the core
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_pick>);
mods.thaumcraft.Infusion.registerRecipe("CtElementalpick", "ELEMENTALTOOLS", 
		<thaumcraft:elemental_pick>, 10, 
		[<aspect:potentia> *40, <aspect:fabrico> *25, <aspect:metallum> *20, <aspect:vitreus> *20],
		<thaumcraft:thaumium_pick>, 
		[<thaumcraft:plank_greatwood>, <actuallyadditions:block_misc:2>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "instrumentum"}]}), <thermalfoundation:ore:8>, <actuallyadditions:block_misc:2>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "instrumentum"}]})]
	);		
	
#Elemental Axe
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_axe>);
mods.thaumcraft.Infusion.registerRecipe("CtElementalAxe", "ELEMENTALTOOLS", 
		<thaumcraft:elemental_axe>, 10, 
		[<aspect:herba> *40, <aspect:metallum> *25, <aspect:instrumentum> *25, <aspect:humanus> *20],
		<thaumcraft:thaumium_axe>, 
		[<thaumcraft:plank_greatwood>, <actuallyadditions:block_misc:2>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "fabrico"}]}), <botania:manasteelaxe>, <actuallyadditions:block_misc:2>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "fabrico"}]})]
	);		
	
	