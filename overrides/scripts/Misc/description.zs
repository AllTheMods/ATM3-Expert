##########################################################################################
#priority 50

import crafttweaker.item.IItemStack;
import mods.jei.JEI.addDescription;

print("==================== loading misc description.zs ====================");
##########################################################################################


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
    <teslacorelib:machine_case>: "50.000", # machine case
    <appliedenergistics2:material:13>: "200.000", # inscriber calculation press
    <appliedenergistics2:material:14>: "200.000", # inscriber engineering press
    <appliedenergistics2:material:15>: "200.000", # inscriber logic press
    <appliedenergistics2:material:19>: "200.000", # inscriber silicon press
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
    <rf-capability-adapter:aecapabilityadapter>: "200.000" # me capability adapter
};
for entry, power in empowererRecipes {
    addDescription(entry, "This item requires " + power + " RF in the empowerer to make.");
}

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
// scrap
addDescription(<ic2:itemmisc:200>, "To get scrap, craft a Recycler from Industrial Craft and recycle stuff in it. Scrap drops with a small chance.");

### OPEN BLOCKS ###
addDescription(<forge:bucketfilled>.withTag({FluidName: "xpjuice", Amount: 1000}), "Can be obtained by placing an OpenBlocks XP Drain on a fluid tank and standing on it while having experience.");
addDescription(<liquid:xpjuice>, "Can be obtained by placing an OpenBlocks XP Drain on a fluid tank and standing on it while having experience.");

### THAUMCRAFT ###
// thaumonomicon
addDescription(<thaumcraft:thaumonomicon>, "Made by right-clicking a vanilla bookshelf with Salis Mundus.");
// arcane workbench
addDescription(<thaumcraft:arcane_workbench>, "Made by right-clicking a crafting table with Salis Mundus.");
// crucible
addDescription(<thaumcraft:crucible>, "Made by right-clicking a vanilla cauldron with Salis Mundus.");

### TINKERS COMPLEMENT ###
// porcelain alloy tank
addDescription(<tcomplement:porcelain_alloy_tank>, "Must be placed above a heater to work!");

### TINKERS CONSTRUCT ###
// grout
addDescription(<tconstruct:soil>, "Grout is disabled in this pack. To obtain seared stone for the smeltery, follow the questline in Tier 0.");

##########################################################################################
print("==================== end of misc description.zs ====================");
