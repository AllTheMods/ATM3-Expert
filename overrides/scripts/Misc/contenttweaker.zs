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

var coldIronIngot = VanillaFactory.createItem("ColdIronIngot");
coldIronIngot.register();

var coldIronPlate = VanillaFactory.createItem("ColdIronPlate");
coldIronPlate.register();

var UnrefinedHotSteel = VanillaFactory.createItem("UnrefinedHotSteel");
UnrefinedHotSteel.register();

var QuartzIngot = VanillaFactory.createItem("QuartzIngot");
QuartzIngot.register();

var QuartzPlate = VanillaFactory.createItem("QuartzPlate");
QuartzPlate.register();

var ManaSteelPlate = VanillaFactory.createItem("ManaSteelPlate");
ManaSteelPlate.register();

var corruptedStarlight = VanillaFactory.createFluid("Corrupted_Starlight", Color.fromHex("FF4D4D"));
corruptedStarlight.register();

var LonsdaleShard = VanillaFactory.createItem("LonsdaleShard");
LonsdaleShard.register();

var manaDiamondPlate = VanillaFactory.createItem("ManaDiamondPlate");
manaDiamondPlate.register();

var ElementiumProcessor = VanillaFactory.createItem("ElementiumProcessor");
ElementiumProcessor.register();

var ElementiumPrint = VanillaFactory.createItem("ElementiumPrint");
ElementiumPrint.register();

var CorruptedStarmetal = VanillaFactory.createItem("CorruptedStarmetal");
CorruptedStarmetal.register();

var CrystalBlood = VanillaFactory.createItem("CrystalBlood");
CrystalBlood.register();

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
