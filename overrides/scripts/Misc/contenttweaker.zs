#loader contenttweaker 

import mods.contenttweaker.Color;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Commands;

var moltenSand = VanillaFactory.createFluid("Molten_Sand", Color.fromHex("E8EEBB"));
moltenSand.register();

var moltenGrout = VanillaFactory.createFluid("Liquid_Grout", Color.fromHex("434147"));
moltenGrout.register();

var solderingalloy =  VanillaFactory.createFluid("Soldering_Alloy", Color.fromHex("959191"));
solderingalloy.register();

var coldIronIngot = VanillaFactory.createItem("coldironingot");
coldIronIngot.register();

var coldIronPlate = VanillaFactory.createItem("coldironplate");
coldIronPlate.register();

var UnrefinedHotSteel = VanillaFactory.createItem("unrefinedhotsteel");
UnrefinedHotSteel.register();

var QuartzIngot = VanillaFactory.createItem("quartzingot");
QuartzIngot.register();

var QuartzPlate = VanillaFactory.createItem("quartzplate");
QuartzPlate.register();

var ManaSteelPlate = VanillaFactory.createItem("manasteelplate");
ManaSteelPlate.register();

var corruptedStarlight = VanillaFactory.createFluid("Corrupted_Starlight", Color.fromHex("FF4D4D"));
corruptedStarlight.register();

var PlanetShard = VanillaFactory.createItem("planetshard");
PlanetShard.register();

var manaDiamondPlate = VanillaFactory.createItem("manadiamondplate");
manaDiamondPlate.register();

var ElementiumProcessor = VanillaFactory.createItem("elementiumprocessor");
ElementiumProcessor.register();

var ElementiumPrint = VanillaFactory.createItem("elementiumprint");
ElementiumPrint.register();

var CrystallisedBlood = VanillaFactory.createItem("crystallisedblood");
CrystallisedBlood.register();

var tier1 = VanillaFactory.createItem("tier1");
tier1.register();

var tier2 = VanillaFactory.createItem("tier2");
tier2.register();

var tier3 = VanillaFactory.createItem("tier3");
tier3.register();

var tier4 = VanillaFactory.createItem("tier4");
tier4.register();

var tier5 = VanillaFactory.createItem("tier5");
tier5.register();

var tier6 = VanillaFactory.createItem("tier6");
tier6.register();

var CorruptedStarmetal = VanillaFactory.createItem("corruptedstarmetal");
CorruptedStarmetal.register();

var Lonsdale = VanillaFactory.createItem("lonsdale");
Lonsdale.register();

#Infusion Block Contenttweaker Block Creation

var infusionBlock = VanillaFactory.createBlock("infusion_block", <blockmaterial:rock>);
infusionBlock.setBlockHardness(5.0);
infusionBlock.setLightValue(2);
infusionBlock.setBlockResistance(5.0);
infusionBlock.setToolClass("pickaxe");
infusionBlock.setToolLevel(2);
infusionBlock.setBlockSoundType(<soundtype:stone>);	
infusionBlock.register();


var magmaCobble = VanillaFactory.createBlock("magma_soaked_cobblestone", <blockmaterial:rock>);
magmaCobble.setBlockHardness(5.0);
magmaCobble.setLightValue(1);
magmaCobble.setBlockResistance(5.0);
magmaCobble.setToolClass("pickaxe");
magmaCobble.setToolLevel(2);
magmaCobble.setBlockSoundType(<soundtype:stone>);	
magmaCobble.register();


