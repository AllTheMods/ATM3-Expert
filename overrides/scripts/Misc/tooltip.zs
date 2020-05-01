##########################################################################################
#priority 50

import crafttweaker.item.IIngredient;

print("==================== loading misc tooltip.zs ====================");
##########################################################################################


### ACTUALLY ADDITIONS ###
// black quartz
<actuallyadditions:item_misc:5>.addTooltip(format.red("Found in Atum under y: 48"));

### ADVANCED GENERATORS ###
// turbines
<advgenerators:turbine_enderium>.addTooltip(format.red("Use turbine upgrade kit"));
<advgenerators:turbine_manyullyn>.addTooltip(format.red("Use turbine upgrade kit"));
<advgenerators:turbine_steel>.addTooltip(format.red("Use turbine upgrade kit"));
<advgenerators:turbine_adv_alloy>.addTooltip(format.red("Use turbine upgrade kit"));

### ALCHEMISTRY ###
// strontium
<alchemistry:element:38>.addTooltip(format.red("Combine in fusion multiblock for osmium."));

### APPLIED ENERGISTICS 2 ###
// facade
var stoneFacade = <appliedenergistics2:facade>.withTag({damage: 0, item: "minecraft:stone"});
stoneFacade.addTooltip(format.red("Check the recipe description for a crafting guide."));

### BOOKS ###
var books as IIngredient[] = [
    <actuallyadditions:item_booklet>,
    <astralsorcery:itemjournal>,
    <guideapi:bloodmagic-guide>,
    <botania:lexicon>,
    <draconicevolution:info_tablet>,
    <valkyrielib:guide>,
    <extrautils2:book>,
    <forestry:book_forester>,
    <immersiveengineering:tool:3>,
    <industrialforegoing:book_manual>,
    <openblocks:info_book>,
    <rftools:rftools_manual>,
    <rftools:rftools_shape_manual>,
    <tconstruct:book>,
    <thermalfoundation:tome_lexicon>,
    <totemic:totempedia>,
    <xnet:xnet_manual>
];
for entry in books {
    entry.addTooltip(format.red("Included in default book!"));
}

### CREATIVE ITEMS ###
var creative as IIngredient[] = [
    <tconstruct:materials:50>,
    <wct:wct_creative>,
    <psi:cad_assembly:5>,
    <botania:pool:1>,
    <botania:manatablet>.withTag({mana: 500000, creative: 1 as byte}),
    <draconicevolution:draconium_capacitor:2>,
    <draconicevolution:creative_rf_source>,
    <mekanism:machineblock2:11>.withTag({tier: 4}),
    <appliedenergistics2:creative_energy_cell>,
    <bibliocraft:bookcasecreative>,
    <thermalinnovation:magnet:32000>,
    <thermalinnovation:saw:32000>,
    <thermalinnovation:drill:32000>,
    <simplyjetpacks:itemjetpack:0>,
    <simplyjetpacks:itemfluxpack:0>,
    <rftools:powercell_creative>,
    <mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}})
];
for entry in creative {
    entry.addTooltip(format.red("Does not consume the ATM Star!"));
}

### EXTENDED CRAFTING ###
// black iron block iron, iron trimmed
<extendedcrafting:trimmed>.addTooltip(format.gray("Steel Infused"));
// black iron block iron, gold trimmed
<extendedcrafting:trimmed:1>.addTooltip(format.yellow("Lumium Stamped"));
// black iron block iron, diamond trimmed
<extendedcrafting:trimmed:2>.addTooltip(format.aqua("Chemically Imbued"));

### INDUSTRIALCRAFT 2 CLASSIC ###
// scrap
<ic2:itemmisc:200>.addTooltip(format.red("Check the recipe description for how to obtain it."));

### MODULAR MACHINERY ###
// machine blueprint
<modularmachinery:itemblueprint>.addTooltip(format.red("Use chisel to convert blueprint."));

### THAUMCRAFT ###
// salis mundus
<thaumcraft:salis_mundus>.addTooltip(format.red("Accepts any vis crystal."));

### THERMAL FOUNDATION ###
// copper ore
<thermalfoundation:ore:0>.addTooltip(format.red("Found in caves under y: 45"));
// tin ore
<thermalfoundation:ore:1>.addTooltip(format.red("Found in caves under y: 80"));
// silver ore
<thermalfoundation:ore:2>.addTooltip(format.red("Found in caves under y: 30"));
// lead ore
<thermalfoundation:ore:3>.addTooltip(format.red("Found in caves under y: 30"));
// nickel ore
<thermalfoundation:ore:5>.addTooltip(format.red("Found in caves under y: 40"));
// platinum ore
<thermalfoundation:ore:6>.addTooltip(format.red("Found in caves under y: 16"));
// aluminum ingot
<thermalfoundation:material:132>.addTooltip(format.red("Found in the Nether."));

### VANILLA ###
// iron ore
<minecraft:iron_ore>.addTooltip(format.red("Found in caves under y: 64"));
// gold ore
<minecraft:gold_ore>.addTooltip(format.red("Found in caves under y: 32"));
// redstone ore
<minecraft:redstone_ore>.addTooltip(format.red("Found in caves under y: 32"));
// lapis ore
<minecraft:lapis_ore>.addTooltip(format.red("Found in caves under y: 32"));
// coal ore
<minecraft:coal_ore>.addTooltip(format.red("Found in caves under y: 128"));
// diamond
<minecraft:diamond>.addTooltip(format.red("Found in Nether surfaces under y: 120"));
// charcoal
<minecraft:coal:1>.addTooltip(format.red("Made with Forestry piles."));


##########################################################################################
print("==================== end of misc tooltip.zs ====================");
