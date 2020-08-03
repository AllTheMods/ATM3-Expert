##########################################################################################
#priority 50

import crafttweaker.item.IItemStack;
import mods.jei.JEI.addDescription;

print("==================== loading misc description.zs ====================");
##########################################################################################


### AKASHIC TOME ###
// tome
addDescription(<akashictome:tome>, "To get the initial Akashic Tome that already includes most manuals, put a dirt block in a crafting grid.");

### APPLIED ENERGISTICS 2 ###
// facade template
var stoneFacade = <appliedenergistics2:facade>.withTag({damage: 0, item: "minecraft:stone"});
addDescription(stoneFacade, "To craft facades, place the block you want to make a facade of in the centre of the crafting grid (3x3) and four AE2 cable anchors on all adjacent sides of that block. If no output appears, you can't create a facade with that block.");
// certus quartz seed
var seed = <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "appliedenergistics2:certus_quartz_plant", agri_growth: 1 as byte});
addDescription(seed, "All seeds that are required for the recipe of this seed have to be analyzed and 10/10/10.");

### EMPOWERER RECIPES ###
val empowererRecipes as string[IItemStack] = {
    <actuallyadditions:item_misc:24>: "16.000", # empowered canola seed
    <botania:runealtar>: "400.000", # runic altar
    <atum:scarab>: "600.000",  # scarab
    <teslacorelib:machine_case>: "300.000", # machine case
    <appliedenergistics2:material:13>: "500.000", # inscriber calculation press
    <appliedenergistics2:material:14>: "500.000", # inscriber engineering press
    <appliedenergistics2:material:15>: "500.000", # inscriber logic press
    <appliedenergistics2:material:19>: "500.000", # inscriber silicon press
    <actuallyadditions:item_crystal_empowered:3>: "200.000", # empowered void crystal
    <actuallyadditions:item_crystal_empowered:5>: "600.000", # empowered enori crystal
    <actuallyadditions:item_crystal_empowered>: "600.000", # empowered restonia crystal
    <actuallyadditions:item_crystal_empowered:1>: "840.000", # empowered palis crystal
    <actuallyadditions:item_crystal_empowered:2>: "1.600.000", # empowered diamantine crystal
    <actuallyadditions:item_crystal_empowered:4>: "2.400.000", # empowered emeradic crystal
    <actuallyadditions:block_crystal_empowered:3>: "2.000.000", # empowered void crystal block
    <actuallyadditions:block_crystal_empowered:5>: "6.000.000", # empowered enori crystal block
    <actuallyadditions:block_crystal_empowered>: "6.000.000", # empowered restonia crystal block
    <actuallyadditions:block_crystal_empowered:1>: "8.400.000", # empowered palis crystal block
    <actuallyadditions:block_crystal_empowered:2>: "16.000.000", # empowered diamantine crystal block
    <actuallyadditions:block_crystal_empowered:4>: "24.000.000", # empowered emeradic crystal block
    <rf-capability-adapter:aecapabilityadapter>: "500.000" # me capability adapter
};
for entry, power in empowererRecipes {
    addDescription(entry, "This item requires " + power + " RF in the empowerer to make.");
}

### EXTRA UTILITIES 2 ###
// quantum quarry
addDescription([
    <extrautils2:quarryproxy>,
    <extrautils2:quarry>
], [
    "Won't be able to mine all ores since it's creating a hypothetical dimension. We only spawn ores on exposed surfaces so this will mess with the ore generation in that dimension.",
    "Better use the Laser Drill or AgriCraft instead."
]);

### FLORALCHEMY ###
// petro petunia fuels
addDescription([
    <botania:specialflower>.withTag({type: "petro_petunia"}),
    <botania:floatingspecialflower>.withTag({type: "petro_petunia"})
], [
    "Fuel must be placed 1 y-level below in a container or in the world.",
    "",
    "Accepted fuels:",
    "refined canola oil, crystalized oil, empowered oil, biodiesel, diesel, syngas"
]);

### INDUSTRIALCRAFT 2 CLASSIC ###
// rubber tree sapling
addDescription(<ic2:blockrubsapling>, ["To get your first rubber tree, search for them in the wilderness. They have a big tip on the top.", "", "To make them drop more saplings, harvest the leaves manually or shear them with a sickle."]);
// scrap
addDescription(<ic2:itemmisc:200>, "To get scrap, craft a Recycler from Industrial Craft and recycle stuff in it. Scrap drops with a small chance.");
// sticky resin
addDescription(<ic2:itemharz>, ["Resin can be obtained by clicking a brown sticky spot of a rubber tree with a treetap.", "", "More info about rubber trees can be read if you search for the rubber tree sapling in JEI."]);
// near-depleted uranium cell
addDescription(<ic2:itemmisc:500>, "Byproduct of the Nuclear Reactor.");
// plutonium
addDescription([
    <ic2c_extras:plutoniumdust>,
    <ic2c_extras:plutoniumingot>
], [
    "Obtained from Plutonium in the Chemical Combiner.",
    "",
    "Plutonium can be obtained in the Chemical Dissolver from Near-depleted Uranium Cells."
]);

### OPEN BLOCKS ###
// liquid xp
addDescription(<forge:bucketfilled>.withTag({FluidName: "xpjuice", Amount: 1000}), "Can be obtained by placing an OpenBlocks XP Drain on a fluid tank and standing on it while having experience.");
addDescription(<liquid:xpjuice>, "Can be obtained by placing an OpenBlocks XP Drain on a fluid tank and standing on it while having experience.");

### THAUMCRAFT ###
// thaumonomicon
addDescription(<thaumcraft:thaumonomicon>, "Made by right-clicking a vanilla bookshelf with Salis Mundus.");
// arcane workbench
addDescription(<thaumcraft:arcane_workbench>, "Made by right-clicking a crafting table with Salis Mundus.");
// crucible
addDescription(<thaumcraft:crucible>, "Made by right-clicking a vanilla cauldron with Salis Mundus.");
// scribing tools
addDescription(<thaumcraft:scribing_tools>, "Needs to be crafted in a Vanilla crafting grid to get it tracked in the Thaumonomicon.");
// thaumometer
addDescription(<thaumcraft:thaumometer>, "Has a mana glass pane in the middle of the crafting grid.");

### THERMAL EXPANSION ###
// satchels
val satchels as IItemStack[] = [
    <thermalexpansion:satchel:1>,
    <thermalexpansion:satchel:2>,
    <thermalexpansion:satchel:3>,
    <thermalexpansion:satchel:4>
];
for entry in satchels {
    addDescription(entry, "Satchels lose their inventory when they are upgraded. Make sure to empty them before upgrading!");
}

### TINKERS COMPLEMENT ###
// porcelain alloy tank
addDescription(<tcomplement:porcelain_alloy_tank>, "Must be placed above a heater to work!");

### TINKERS CONSTRUCT ###
// grout
addDescription(<tconstruct:soil>, "Grout is disabled in this pack. To obtain seared stone for the smeltery, follow the questline in Tier 0.");

### VANILLA ###
// flint and steel
addDescription(<minecraft:flint_and_steel>, "You can also use a fire charge to light things up if the flint and steel is too expensive. Keep in mind that a fire charge is has a one time use only.");


##########################################################################################
print("==================== end of misc description.zs ====================");
