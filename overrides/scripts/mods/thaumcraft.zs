##########################################################################################
#modloaded thaumcraft
#priority 100

import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;

print("==================== loading mods thaumcraft.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// salis mundus
recipes.remove(<thaumcraft:salis_mundus>);
recipes.addShapeless(<thaumcraft:salis_mundus>, [
    <ore:itemVisCrystal>, <ore:itemVisCrystal>, <ore:itemVisCrystal>,
    <ore:powderMana>, <ore:pestleAndMortar>
]);

// glass phial
recipes.remove(<thaumcraft:phial>);
recipes.addShaped(<thaumcraft:phial>, [
    [null, <minecraft:clay_ball>, null],
    [<botania:managlass>, null, <botania:managlass>],
    [null, <botania:managlass>, null]
]);


### ARCANE WORKBENCH ###

// arcane stone
ArcaneWorkbench.registerShapedRecipe("CTArcaneStone", "", 5,
    [<aspect:aer>, <aspect:terra>, <aspect:aqua>, <aspect:ignis>, <aspect:ordo>, <aspect:perditio>],
    <thaumcraft:stone_arcane> * 3, [
        [null, <ore:livingrock>, null],
        [<ore:livingrock>, <ore:ingotThaumium>, <ore:livingrock>],
        [null, <ore:livingrock>, null]
    ]
);

// essentia smeltery
ArcaneWorkbench.registerShapedRecipe("CTEssentiaSmeltery", "ALUMENTUM", 50,
    [<aspect:terra>, <aspect:aqua>, <aspect:ignis>],
    <thaumcraft:smelter_basic>, [
        [<thaumcraft:plate>, <thaumcraft:crucible>, <thaumcraft:plate>],
        [<atum:limestone_brick_small>, <tconstruct:seared_furnace_controller>, <atum:limestone_brick_small>],
        [<atum:limestone_brick_small>, <ore:livingrock>, <atum:limestone_brick_small>]
    ]
);

// thaumium essentia smeltery
ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_thaumium>);
ArcaneWorkbench.registerShapedRecipe("CTThaumSmelter", "TUBES", 300,
	[<aspect:aqua> * 6, <aspect:ignis> * 6, <aspect:terra> * 6],
	<thaumcraft:smelter_thaumium>, [
        [<ore:plateBrass>, <thaumcraft:smelter_basic>, <ore:plateBrass>],
		[<ore:plateThaumium>, <thaumcraft:metal_alchemical>, <ore:plateThaumium>],
		[<ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>]
    ]
);

// void metal essentia smeltery
ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_void>);
ArcaneWorkbench.registerShapedRecipe("CTVoidSmelter", "ESSENTIASMELTERTHAUMIUM", 750,
	[<aspect:aqua> * 10, <aspect:ignis> * 10, <aspect:terra> * 10, <aspect:perditio> * 10, <aspect:ordo> * 10, <aspect:aer> * 10],
	<thaumcraft:smelter_void>, [
        [<ore:plateBrass>, <thaumcraft:smelter_thaumium>, <ore:plateBrass>],
		[<thaumcraft:plate:3>, <thaumcraft:metal_alchemical_advanced>, <thaumcraft:plate:3>],
		[<mekanism:ingot:1>, <actuallyadditions:block_crystal_empowered:3>, <mekanism:ingot:1>]
    ]
);

// essentia centrifuge
ArcaneWorkbench.removeRecipe(<thaumcraft:centrifuge>);
ArcaneWorkbench.registerShapedRecipe("CTCentrifuge", "CENTRIFUGE", 100,
	[<aspect:ordo>, <aspect:perditio>],
    <thaumcraft:centrifuge>, [
        [<ore:plateSteel>, <thaumcraft:tube>, <ore:plateSteel>],
        [<thaumcraft:morphic_resonator>, <thaumcraft:metal_alchemical>, <thaumcraft:mechanism_simple>],
        [<ore:plateSteel>, <thaumcraft:tube>, <ore:plateSteel>]
	]
);

// thaumometer
ArcaneWorkbench.removeRecipe(<thaumcraft:thaumometer>);
ArcaneWorkbench.registerShapedRecipe("CTThaumometer", "", 20,
    [],
    <thaumcraft:thaumometer>, [
        [<contenttweaker:manasteelplate>, <ore:plateGold>, <contenttweaker:manasteelplate>],
        [<ore:plateGold>, <botania:managlasspane>, <ore:plateGold>],
        [<contenttweaker:manasteelplate>, <ore:plateGold>, <contenttweaker:manasteelplate>]
    ]
);

// vis resonator
ArcaneWorkbench.registerShapedRecipe("CTVisResonator", "BASEALCHEMY", 50,
    [<aspect:aer>, <aspect:aqua>],
    <thaumcraft:vis_resonator>, [
        [<thermalfoundation:material:354>, <thermalfoundation:glass:8>, <thermalfoundation:material:354>],
        [<thermalfoundation:glass:8>, <thaumcraft:mirrored_glass>, <thermalfoundation:glass:8>],
        [<thermalfoundation:material:354>, <thermalfoundation:glass:8>, <thermalfoundation:material:354>]
    ]
);

// casters gauntlet
ArcaneWorkbench.removeRecipe(<thaumcraft:caster_basic>);
ArcaneWorkbench.registerShapedRecipe("CTCastersGauntlet","BASEALCHEMY",100,
    [<aspect:aer>, <aspect:terra>, <aspect:aqua>, <aspect:ignis>, <aspect:ordo>, <aspect:perditio>],
    <thaumcraft:caster_basic>, [
        [<thaumcraft:plate>, <contenttweaker:manasteelplate>, <thaumcraft:plate>],
        [<ore:leather>, <thaumcraft:vis_resonator>, <ore:leather>],
        [<ore:leather>, <thaumcraft:thaumometer>, <ore:leather>]
    ]
);

// goggles of revealing
ArcaneWorkbench.removeRecipe(<thaumcraft:goggles>);
ArcaneWorkbench.registerShapedRecipe("CTGoggles", "BASEARTIFICE", 50,
    [<aspect:ordo>, <aspect:perditio>],
    <thaumcraft:goggles>, [
        [<simplyjetpacks:metaitem:4>, <thaumcraft:ingot:2>, <simplyjetpacks:metaitem:4>],
        [<simplyjetpacks:metaitem:4>, null, <simplyjetpacks:metaitem:4>],
        [<thaumcraft:thaumometer>, <thaumcraft:ingot:2>, <thaumcraft:thaumometer>]
    ]
);

// simple arcane mechanism
ArcaneWorkbench.removeRecipe(<thaumcraft:mechanism_simple>);
ArcaneWorkbench.registerShapedRecipe("CTSmipleMechanism", "BASEARTIFICE", 10,
    [<aspect:aqua> * 4, <aspect:ignis> * 4],
    <thaumcraft:mechanism_simple>, [
        [null, <ore:plateBrass>, null],
        [<ore:plateThaumium>, <actuallyadditions:item_misc:5>, <ore:plateThaumium>],
        [null, <ore:plateBrass>, null]
    ]
);

// complex arcane mechanism
ArcaneWorkbench.removeRecipe(<thaumcraft:mechanism_complex>);
ArcaneWorkbench.registerShapedRecipe("CTComplexMechanism", "BASEARTIFICE", 50,
	[<aspect:aqua> * 8, <aspect:ignis> * 8],
    <thaumcraft:mechanism_complex>, [
        [<ore:plateSteel>, <thaumcraft:mechanism_simple>, <thaumcraft:mechanism_simple>],
		[<ore:plateThaumium>, <thermalfoundation:material:27>, <ore:plateThaumium>],
		[<thaumcraft:mechanism_simple>, <thaumcraft:mechanism_simple>, <ore:plateSteel>]
    ]
);

// flux condenser
ArcaneWorkbench.removeRecipe(<thaumcraft:condenser>);
ArcaneWorkbench.registerShapedRecipe("CTCondenser", "BASEARTIFICE", 500,
	[<aspect:aqua> * 20, <aspect:ignis> * 20, <aspect:aer> *20],
    <thaumcraft:condenser>,	[
        [<thaumcraft:crystal_vitium>, <thaumcraft:mechanism_complex>, <thermalfoundation:material:352>],
        [<thaumcraft:tube_filter>, <thaumcraft:morphic_resonator>, <thaumcraft:tube_filter>],
        [<thermalfoundation:material:352>, <thaumcraft:mechanism_complex>, <thaumcraft:crystal_vitium>]
    ]
);

// alchemical construct
ArcaneWorkbench.removeRecipe(<thaumcraft:metal_alchemical>);
ArcaneWorkbench.registerShapedRecipe("CTAlchConstruct", "BASEARTIFICE", 300,
	[<aspect:aqua> * 20, <aspect:ordo> * 20, <aspect:perditio> *20],
	<thaumcraft:metal_alchemical>, [
        [<ore:plateSteel>, <thaumcraft:mechanism_simple>, <ore:plateSteel>],
		[<thaumcraft:tube_filter>, <thaumcraft:plank_greatwood>, <thaumcraft:tube_filter>],
		[<ore:plateSteel>, <thaumcraft:mechanism_simple>, <ore:plateSteel>]
    ]
);

// advanced alchemical construct
ArcaneWorkbench.removeRecipe(<thaumcraft:metal_alchemical_advanced>);
ArcaneWorkbench.registerShapedRecipe("CTAdvancedAlchemical", "IMPROVEDSMELTING2", 200,
	[<aspect:aqua> * 4, <aspect:ignis> * 4],
	<thaumcraft:metal_alchemical_advanced>, [
        [<bloodmagic:slate:3>, <thaumcraft:metal_alchemical>, <bloodmagic:slate:3>],
		[<thaumcraft:plate:3>, <actuallyadditions:item_misc:5>, <thaumcraft:plate:3>],
		[<bloodmagic:slate:3>, <thaumcraft:metal_alchemical>, <bloodmagic:slate:3>]
    ]
);

// workbench charger
ArcaneWorkbench.removeRecipe(<thaumcraft:arcane_workbench_charger>);
ArcaneWorkbench.registerShapedRecipe("CTArcaneCharger", "WORKBENCHCHARGER", 200,
    [<aspect:aer> *2, <aspect:ordo> *2],
    <thaumcraft:arcane_workbench_charger>, [
        [null, <thaumcraft:vis_resonator>, null],
        [<thaumcraft:plank_greatwood>, null, <thaumcraft:plank_greatwood>],
        [<ore:plateSteel>, null, <ore:plateSteel>]
    ]
);

// mundane ring
ArcaneWorkbench.registerShapedRecipe("CTMundaneRing", "", 20,
	[<aspect:ordo> * 2, <aspect:ignis> * 2],
    <thaumcraft:baubles:1>, [
        [null, <ore:plateGold>, <ore:clusterCopper>],
		[<ore:plateGold>, null, <ore:plateGold>],
		[null, <ore:plateGold>, null]
    ]
);

// mundane belt
ArcaneWorkbench.registerShapedRecipe("CTMundaneBelt", "", 20,
	[<aspect:ordo> * 2, <aspect:terra> * 2],
    <thaumcraft:baubles:2>, [
        [null, <ore:leather>, null],
        [<ore:leather>, null, <ore:leather>],
        [<ore:clusterCopper>, <ore:plateBrass>, <ore:clusterCopper>]
    ]
);

// mundane amulet
ArcaneWorkbench.registerShapedRecipe("CTMundaneAmulet", "", 20,
	[<aspect:ordo> * 2, <aspect:aer> * 2],
    <thaumcraft:baubles>, [
        [null, <ore:string>, null],
        [<ore:string>, <ore:plateBrass>, <ore:string>],
        [null, <ore:clusterCopper>, null]
    ]
);

// fancy ring
ArcaneWorkbench.registerShapedRecipe("CTFancyRing", "", 35,
	[<aspect:ordo> * 2, <aspect:ignis> *2 ],
	<thaumcraft:baubles:5>, [
        [null, <ore:manaDiamond>, <thaumcraft:nugget:10>],
        [<ore:clusterGold>, <thaumcraft:baubles:1>, <ore:clusterGold>],
        [null, <ore:manaDiamond>, null]
    ]
);

// fancy belt
ArcaneWorkbench.registerShapedRecipe("CTFancyBelt", "", 35,
	[<aspect:ordo> * 2, <aspect:terra>],
	<thaumcraft:baubles:6>, [
        [null, <ore:clusterGold>, null],
		[<ore:manaDiamond>, <thaumcraft:baubles:2>, <ore:manaDiamond>],
		[null, <thaumcraft:nugget:10>, null]
    ]
);

// fancy amulet
ArcaneWorkbench.registerShapedRecipe("CTFancyAmulet", "", 35,
	[<aspect:ordo> * 2, <aspect:aer> * 2],
	<thaumcraft:baubles:4>, [
        [null, <ore:clusterGold>, null],
		[<ore:manaDiamond>, <thaumcraft:baubles>, <ore:manaDiamond>],
		[null, <thaumcraft:nugget:10>, null]
    ]
);

// redstone inlay
ArcaneWorkbench.registerShapedRecipe("CTRedstoneInlay", "INFUSIONSTABLE", 25,
    [<aspect:aer>, <aspect:aqua>, <aspect:ordo>],
    <thaumcraft:inlay>, [
        [<ore:dustRedstone>, <thermalfoundation:material:33>, <ore:dustRedstone>],
        [<thermalfoundation:material:33>, <ore:dustRedstone>, <thermalfoundation:material:33>],
        [<ore:dustRedstone>, <thermalfoundation:material:33>, <ore:dustRedstone>]
    ]
);

// recharge pedestal
ArcaneWorkbench.registerShapedRecipe("CTRechargePedestal", "BASEAUROMANCY", 100,
    [<aspect:aer>, <aspect:aqua>, <aspect:ordo>, <aspect:perditio>],
    <thaumcraft:recharge_pedestal>, [
        [null, <thaumcraft:vis_resonator>, null],
        [<contenttweaker:manadiamondplate>, <thermalfoundation:material:33>, <contenttweaker:manadiamondplate>],
        [<actuallyadditions:block_misc:2>, <actuallyadditions:block_misc:2>, <actuallyadditions:block_misc:2>]
    ]
);

// warded jar
ArcaneWorkbench.removeRecipe(<thaumcraft:jar_normal>);
ArcaneWorkbench.registerShapedRecipe("CTWardedJar", "WARDEDJARS", 5,
	[<aspect:aqua> * 4, <aspect:ignis> * 4],
	<thaumcraft:jar_normal>, [
        [<botania:managlasspane>, <thaumcraft:plank_greatwood>, <botania:managlasspane>],
		[<botania:managlasspane>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vacuos"}]}), <botania:managlasspane>],
		[<botania:managlasspane>, <botania:managlasspane>, <botania:managlasspane>]
    ]
);

// arcane lamp
ArcaneWorkbench.removeRecipe(<thaumcraft:lamp_arcane>);
ArcaneWorkbench.registerShapedRecipe("CTArcaneLamp", "ARCANELAMP", 50,
	[<aspect:aer> * 4, <aspect:ignis> * 4],
	<thaumcraft:lamp_arcane>, [
        [<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]}), <ore:dustAstralStarmetal>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]})],
		[<ore:plateThaumium>, <thaumcraft:amber_block>, <ore:plateThaumium>],
		[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]}), <ore:dustAstralStarmetal>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]})]
    ]
);

// redstone relay
ArcaneWorkbench.removeRecipe(<thaumcraft:redstone_relay>);
ArcaneWorkbench.registerShapedRecipe("CTRedstoneRelay", "REDSTONERELAY", 10,
	[<aspect:ordo> * 4, <aspect:ignis> * 4],
	<thaumcraft:redstone_relay>, [
        [null, null, null],
		[<minecraft:redstone_torch>, <thaumcraft:mechanism_simple>, <minecraft:redstone_torch>],
		[<botania:livingrock0slab>, <botania:livingrock0slab>, <botania:livingrock0slab>]
    ]
);

// automated crossbow
ArcaneWorkbench.removeRecipe(<thaumcraft:turret>);
ArcaneWorkbench.registerShapedRecipe("CTTurret", "TURRET", 100,
	[<aspect:aer> * 10, <aspect:terra> * 10],
	<thaumcraft:turret>, [
        [<tconstruct:bow_limb>.withTag({Material: "manyullyn"}), <thaumcraft:mechanism_simple>, <ore:plateSteel>],
		[<thaumcraft:plank_greatwood>, <thaumcraft:mind>, <thaumcraft:plank_greatwood>],
		[<tconstruct:tough_tool_rod>.withTag({Material: "manasteel"}), null, <tconstruct:tough_tool_rod>.withTag({Material: "manasteel"})]
    ]
);

// advanced automated crossbow
ArcaneWorkbench.removeRecipe(<thaumcraft:turret:1>);
ArcaneWorkbench.registerShapedRecipe("CTAdvTurret", "ADVANCEDTURRET", 150,
	[<aspect:aer> * 15, <aspect:terra> * 15],
	<thaumcraft:turret:1>, [
        [<thaumcraft:turret>, <ore:plateSteel>, <thaumcraft:turret>],
		[<ore:plateSteel>, <thaumcraft:mechanism_simple>, <ore:plateSteel>],
		[<tconstruct:tough_tool_rod>.withTag({Material: "elementium"}), null, <tconstruct:tough_tool_rod>.withTag({Material: "elementium"})]
    ]
);

// clockwork mind
ArcaneWorkbench.removeRecipe(<thaumcraft:mind>);
ArcaneWorkbench.registerShapedRecipe("CTMind", "MINDCLOCKWORK", 25,
	[<aspect:ordo> * 5, <aspect:ignis> * 5],
	<thaumcraft:mind>, [
        [null, <thermalfoundation:glass:8>, null],
		[<thermalfoundation:glass:8>, <thaumcraft:mechanism_simple>, <thermalfoundation:glass:8>],
		[<ore:plateBrass>, <thaumcraft:redstone_relay>, <ore:plateBrass>]
    ]
);

// runic matrix
ArcaneWorkbench.removeRecipe(<thaumcraft:infusion_matrix>);

// hellfire forge | Blood Magic
ArcaneWorkbench.registerShapedRecipe("CTHellfire", "", 250,
    [<aspect:perditio> * 30, <aspect:ignis> * 30],
    <bloodmagic:soul_forge>, [
        [<ic2c_extras:refinedironblock>, null, <ic2c_extras:refinedironblock>],
		[<atum:porphyry>, <contenttweaker:lonsdale>, <atum:porphyry>],
		[<atum:porphyry>, <ore:blockGold>, <atum:porphyry>]
    ]
);

// infusion block | ContentTweaker
ArcaneWorkbench.registerShapedRecipe("CTInfusionBlock", "BASEINFUSION", 50,
	[<aspect:aer>, <aspect:terra>, <aspect:aqua>, <aspect:ignis>, <aspect:ordo>, <aspect:perditio>],
	<contenttweaker:infusion_block>, [
        [<thaumcraft:stone_arcane_brick>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), <thaumcraft:stone_arcane_brick>],
		[<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "instrumentum"}]}), <thermalfoundation:glass:8>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "instrumentum"}]})],
		[<thaumcraft:stone_arcane_brick>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), <thaumcraft:stone_arcane_brick>]
    ]
);


### CRUCIBLE ###

// everfull urn
Crucible.removeRecipe(<thaumcraft:everfull_urn>);
Crucible.registerRecipe("CTCrucible", "EVERFULLURN",
    <thaumcraft:everfull_urn>, <tcomplement:porcelain_tank>,
	[<aspect:aqua> * 30, <aspect:fabrico>, <aspect:terra>]
);

// alumentum
Crucible.removeRecipe(<thaumcraft:alumentum>);
Crucible.registerRecipe("CTalumentum","ALUMENTUM",
    <thaumcraft:alumentum>, <ore:fuelCoke>,
	[<aspect:potentia> * 10,<aspect:ignis> * 10, <aspect:perditio> * 10]
);


### INFUSION ###

// void siphon
Infusion.removeRecipe(<thaumcraft:void_siphon>);
Infusion.registerRecipe("CTTeruBozu", "VOIDSIPHON", <thaumcraft:void_siphon>, 2,
    [<aspect:vacuos> * 100, <aspect:perditio> * 100, <aspect:fabrico> * 100, <aspect:alienis> * 100],
	<botania:pylon:1>, [
        <contenttweaker:infusion_block>, <minecraft:nether_star>, <thaumcraft:mechanism_complex>,
        <ore:plateBrass>, <ore:plateBrass>, <contenttweaker:infusion_block>, <thaumcraft:metal_void>
    ]
);

// magic mirror
Infusion.removeRecipe(<thaumcraft:mirror>);
Infusion.registerRecipe("CTMagicMirror", "MIRROR", <thaumcraft:mirror>, 2,
    [<aspect:motus> * 25, <aspect:tenebrae> * 25, <aspect:permutatio> * 25],
    <astralsorcery:itemcraftingcomponent:3>, [
        <ore:plateGold>, <ore:plateGold>, <ore:plateGold>, <ore:enderpearl>
    ]
);

// cloudstepper ring
Infusion.removeRecipe(<thaumcraft:cloud_ring>);
Infusion.registerRecipe("CTCloudstepper", "CLOUDRING", <thaumcraft:cloud_ring>, 2,
    [<aspect:aer> * 100],
    <thaumcraft:baubles:5>, [
        <ore:feather>, <minecraft:potion>.withTag({Potion: "minecraft:leaping"})
    ]
);

// headband of curiosity
Infusion.removeRecipe(<thaumcraft:curiosity_band>);
Infusion.registerRecipe("CTCuriosity", "CURIOSITYBAND", <thaumcraft:curiosity_band>, 5,
    [<aspect:cognitio> * 150, <aspect:vinculum> * 100, <aspect:vacuos> * 50],
    <thaumcraft:baubles:6>, [
        <ore:gemEmerald>, <ore:clusterSilver>, <ore:gemEmerald>, <minecraft:writable_book>,
        <ore:gemEmerald>, <ore:clusterSilver>, <ore:gemEmerald>, <minecraft:writable_book>
    ]
);

// verdant charm
Infusion.removeRecipe(<thaumcraft:verdant_charm>);
Infusion.registerRecipe("CTVerdant", "VERDANTCHARMS", <thaumcraft:verdant_charm>, 5,
    [<aspect:victus> * 60, <aspect:herba> * 60, <aspect:ordo> * 30],
    <thaumcraft:baubles:4>, [
        <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "victus"}]}), <minecraft:cake>,
        <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "herba"}]}),
        <minecraft:potion>.withTag({Potion: "minecraft:healing"})
    ]
);

// lamp of fertility
Infusion.removeRecipe(<thaumcraft:lamp_fertility>);
Infusion.registerRecipe("CTFertilityLamp", "LAMPFERTILITY", <thaumcraft:lamp_fertility>, 15,
	[<aspect:bestia> * 40, <aspect:motus> * 25, <aspect:lux> * 25, <aspect:victus> * 40],
	<thaumcraft:lamp_arcane>, [
        <ic2:itemmisc:160>, <botania:rune:10>, <actuallyadditions:block_crystal_empowered:4>,
        <ic2:itemmisc:160>, <botania:rune:10>, <enderio:item_soul_vial:1>.withTag({entityId: "minecraft:cow"})
    ]
);

// lamp of growth
Infusion.removeRecipe(<thaumcraft:lamp_growth>);
Infusion.registerRecipe("CTGrowthLamp", "LAMPGROWTH", <thaumcraft:lamp_growth>, 15,
	[<aspect:herba> * 40, <aspect:lux> * 25, <aspect:instrumentum> * 25, <aspect:victus> * 40],
	<thaumcraft:lamp_arcane>, [
        <botania:overgrowthseed>, <bloodmagic:component:5>, <thaumcraft:elemental_hoe>,
        <actuallyadditions:block_crystal_empowered:4>, <bloodmagic:component:5>, <thaumcraft:elemental_hoe>
    ]
);

// black quartz block | Actually Additions
Infusion.registerRecipe("CTBlackQuartzBlock", "", <actuallyadditions:block_misc:2>, 5,
	[<aspect:spiritus> * 10, <aspect:tenebrae> * 24],
	<minecraft:quartz_block>, [
        <astralsorcery:itemusabledust:1>, <actuallyadditions:item_misc:5>,
        <astralsorcery:itemusabledust:1>, <actuallyadditions:item_misc:5>
    ]
);

// lonsdale | ContentTweaker
Infusion.registerRecipe("CTLonsdale", "", <contenttweaker:lonsdale>, 10,
	[<aspect:mortuus> * 12, <aspect:tenebrae> * 42, <aspect:alienis> * 12],
	<actuallyadditions:block_crystal_empowered:3>, [
        <bloodmagic:monster_soul>, <bloodmagic:monster_soul>,
        <bloodmagic:monster_soul>, <bloodmagic:monster_soul>
    ]
);

// blood altar | Blood Magic
Infusion.registerRecipe("CTBloodAltar", "", <bloodmagic:altar>, 15,
    [<aspect:alkimia> * 40, <aspect:mortuus> * 25, <aspect:tenebrae> * 25, <aspect:victus> * 40],
    <contenttweaker:lonsdale>, [
        <actuallyadditions:block_misc:2>, <ore:blockGold>, <contenttweaker:quartzingot>,
        <actuallyadditions:block_misc:2>, <actuallyadditions:block_crystal_empowered>, <contenttweaker:quartzingot>
    ]
);

// empowerer | ActuallyAdditions
Infusion.registerRecipe("CTEmpowerer", "", <actuallyadditions:block_empowerer>, 1,
    [<aspect:praecantatio> * 10, <aspect:vitreus> * 30],
    <actuallyadditions:block_display_stand>, [
        <ore:manaDiamond>, <forestry:chipsets>, <thaumcraft:mirrored_glass>, <ore:blockQuartz>
    ]
);


##########################################################################################
print("==================== end of mods thaumcraft.zs ====================");
