##########################################################################################
#priority 80

print("==================== loading mods yabba.zs ====================");
##########################################################################################


### VARIABLES ###
val atmstar = <atmtweaks:item_material>.reuse(); # atm star
val creativeTablet = <botania:manatablet>.withTag({mana: 500000, creative: 1 as byte}); # creative mana tablet
val fullTablet = <botania:manatablet>.withTag({mana: 500000}); # full mana tablet
val energyCube = <mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}}); # full ultimate energy cube


### CRAFTING RECIPES ###

// creative modifier | Tinkers Construct
recipes.addShaped(<tconstruct:materials:50> * 8, [
    [<minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>],
    [<minecraft:skull:1>, atmstar, <minecraft:skull:1>],
    [<minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>]
]);

// creative wireless crafting terminal | Wireless Crafting Terminal
recipes.addShapeless(<wct:wct_creative>, [
    atmstar, <wct:wct:*>
]);

// creative cad assembly | Psi
recipes.addShapeless(<psi:cad_assembly:5>, [
    atmstar, <psi:cad_assembly:4>, <psi:cad_assembly:3>
]);

// the everlasting guilty pool | Botania
recipes.addShaped(<botania:pool:1>, [
    [<botania:pool:3>, <botania:pool:3>, <botania:pool:3>],
    [<botania:pool:3>, atmstar, <botania:pool:3>],
    [<botania:pool:3>, <botania:pool:3>, <botania:pool:3>]
]);

// creative mana tablet | Botania
recipes.addShaped(creativeTablet, [
    [fullTablet, fullTablet, fullTablet],
    [fullTablet, atmstar, fullTablet],
    [fullTablet, fullTablet, fullTablet]
]);

// creative flux capacitor | Draconic Evolution
recipes.addShaped(<draconicevolution:draconium_capacitor:2>, [
    [null, <draconicevolution:draconium_capacitor:1>, null],
    [<draconicevolution:draconium_capacitor:1>, atmstar, <draconicevolution:draconium_capacitor:1>],
    [null, <draconicevolution:draconium_capacitor:1>, null]
]);

// creative rf source | Draconic Evolution
recipes.addShaped(<draconicevolution:creative_rf_source>, [
    [null, energyCube, null],
    [energyCube, atmstar, energyCube],
    [null, energyCube, null]
]);

// creative fluid tank | Mekanism
recipes.addShapedMirrored(<mekanism:machineblock2:11>.withTag({tier: 4}), [
    [<mekanism:machineblock:12>, <mekanism:machineblock2:11>, <mekanism:machineblock:12>],
    [<mekanism:machineblock2:11>, atmstar, <mekanism:machineblock2:11>],
    [<mekanism:machineblock:12>, <mekanism:machineblock2:11>, <mekanism:machineblock:12>]
]);

// creative energy cube
recipes.addShapedMirrored(<mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}}), [
    [<mekanism:machineblock2:13>, <mekanism:energycube>, <mekanism:machineblock2:13>],
    [<mekanism:energycube>, atmstar, <mekanism:energycube>],
    [<mekanism:machineblock2:13>, <mekanism:energycube>, <mekanism:machineblock2:13>]
]);

// creative energy cell | Applied Energistics
recipes.addShapedMirrored(<appliedenergistics2:creative_energy_cell>, [
    [<appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>],
    [<appliedenergistics2:dense_energy_cell>, atmstar, <appliedenergistics2:dense_energy_cell>],
    [<appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>]
]);

// oak creative bookcase | BiblioCraft
recipes.addShaped(<bibliocraft:bookcasecreative>, [
    [<bibliocraft:bookcase>, <bibliocraft:bookcase>, <bibliocraft:bookcase>],
    [<bibliocraft:bookcase>, atmstar, <bibliocraft:bookcase>],
    [<bibliocraft:bookcase>, <bibliocraft:bookcase>, <bibliocraft:bookcase>]
]);

// creative fluxomagnet | Thermal Innovation
recipes.addShapeless(<thermalinnovation:magnet:32000>.withTag({Energy: 600000}), [
	atmstar, <thermalinnovation:magnet:4>, <thermalinnovation:magnet:4>
]);

// creative flux saw | Thermal Innovation
recipes.addShapeless(<thermalinnovation:saw:32000>.withTag({Energy: 600000}), [
    atmstar, <thermalinnovation:saw:4>, <thermalinnovation:saw:4>
]);

// creative flux bore | Thermal Innovation
recipes.addShapeless(<thermalinnovation:drill:32000>.withTag({Energy: 600000}), [
    atmstar, <thermalinnovation:drill:4>, <thermalinnovation:drill:4>
]);

// creative flux pack | Simply Jetpacks
recipes.addShapeless(<simplyjetpacks:itemfluxpack:0>.withTag({Energy: 2000000}), [
    atmstar, <simplyjetpacks:itemfluxpack:8>, <simplyjetpacks:itemfluxpack:3>
]);

// creative jetpack | Simply Jetpacks
recipes.addShapeless(<simplyjetpacks:itemjetpack:0>.withTag({Energy: 200000}), [
    atmstar, <simplyjetpacks:itemjetpack:13>, <simplyjetpacks:itemjetpack:4>
]);

// creative powercell | RFTools
recipes.addShapedMirrored(<rftools:powercell_creative>, [
    [<rftools:powercell_advanced>, <rftools:powercell_card>, <rftools:powercell_advanced>],
    [<rftools:powercell_card>, atmstar, <rftools:powercell_card>],
    [<rftools:powercell_advanced>, <rftools:powercell_card>, <rftools:powercell_advanced>]
]);


##########################################################################################
print("==================== end of mods yabba.zs ====================");
