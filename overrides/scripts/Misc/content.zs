##########################################################################################
#loader contenttweaker
#modloaded contenttweaker
#priority 5000

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialBuilder;
import mods.contenttweaker.VanillaFactory;

print("==================== loading misc content.zs ====================");
##########################################################################################


### ITEMS ###
// cold iron ingot
VanillaFactory.createItem("coldironingot").register();
// cold iron plate
VanillaFactory.createItem("coldironplate").register();
// cracked hot steel
VanillaFactory.createItem("unrefinedhotsteel").register();
// quartz ingot
VanillaFactory.createItem("quartzingot").register();
// quartz plate
VanillaFactory.createItem("quartzplate").register();
// mana steel plate
VanillaFactory.createItem("manasteelplate").register();
// mana diamond
VanillaFactory.createItem("manadiamondplate").register();
// planet shard
VanillaFactory.createItem("planetshard").register();
// printed elementium
VanillaFactory.createItem("elementiumprint").register();
// elementium processor
VanillaFactory.createItem("elementiumprocessor").register();
// crystallized blood
VanillaFactory.createItem("crystallisedblood").register();
// tier 1
VanillaFactory.createItem("tier1").register();
// tier 2
VanillaFactory.createItem("tier2").register();
// tier 3
VanillaFactory.createItem("tier3").register();
// tier 4
VanillaFactory.createItem("tier4").register();
// tier 5
VanillaFactory.createItem("tier5").register();
// tier 6
VanillaFactory.createItem("tier6").register();
// corrupted star metal
VanillaFactory.createItem("corruptedstarmetal").register();
// lonsdale
VanillaFactory.createItem("lonsdale").register();


### BLOCKS ###
// infusion block
var infusionBlock = VanillaFactory.createBlock("infusion_block", <blockmaterial:rock>);
infusionBlock.setBlockHardness(5.0);
infusionBlock.setLightValue(2);
infusionBlock.setBlockResistance(5.0);
infusionBlock.setToolClass("pickaxe");
infusionBlock.setToolLevel(2);
infusionBlock.setBlockSoundType(<soundtype:stone>);
infusionBlock.register();
// magma soaked cobblestone
var magmaCobble = VanillaFactory.createBlock("magma_soaked_cobblestone", <blockmaterial:rock>);
magmaCobble.setBlockHardness(5.0);
magmaCobble.setLightValue(1);
magmaCobble.setBlockResistance(5.0);
magmaCobble.setToolClass("pickaxe");
magmaCobble.setToolLevel(2);
magmaCobble.setBlockSoundType(<soundtype:stone>);
magmaCobble.register();


### FLUIDS ###
// molten sand
VanillaFactory.createFluid("Molten_Sand", Color.fromHex("E8EEBB")).register();
// molten grout
VanillaFactory.createFluid("Liquid_Grout", Color.fromHex("434147")).register();
// soldering alloy
VanillaFactory.createFluid("Soldering_Alloy", Color.fromHex("959191")).register();
// corrupted starlight
VanillaFactory.createFluid("Corrupted_Starlight", Color.fromHex("FF4D4D")).register();


##########################################################################################
print("==================== end of misc content.zs ====================");
