##########################################################################################
#modloaded enderio
#priority 100

print("==================== loading mods enderio.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// simple machine chassis
recipes.remove(<enderio:item_material>);
recipes.addShaped(<enderio:item_material>, [
    [<enderio:block_dark_iron_bars>, <ic2c_extras:plutoniumdust>, <enderio:block_dark_iron_bars>],
    [<alchemistry:element:32>, <enderio:item_material:20>, <alchemistry:compound:22>],
    [<enderio:block_dark_iron_bars>, <atmtweaks:item_material:2>, <enderio:block_dark_iron_bars>]
]);

// basic capacitor
recipes.remove(<enderio:item_basic_capacitor>);
recipes.addShaped(<enderio:item_basic_capacitor>, [
    [null, <forestry:chipsets:1>.withTag({T: 1 as short}), null],
    [<actuallyadditions:item_crystal>, <alchemistry:ingot:3>, <actuallyadditions:item_crystal>],
    [<enderio:item_material:20>, <alchemistry:ingot:3>, <enderio:item_material:20>]
]);

// double layer capacitor
recipes.remove(<enderio:item_basic_capacitor:1>);
recipes.addShaped(<enderio:item_basic_capacitor:1>, [
    [null, <forestry:chipsets:1>.withTag({T: 1 as short}), null],
    [<enderio:item_basic_capacitor>, <immersiveengineering:material:17>, <enderio:item_basic_capacitor>],
    [null, <alchemistry:ingot:107>, null]
]);

// octadic capacitor
recipes.remove(<enderio:item_basic_capacitor:2>);
recipes.addShaped(<enderio:item_basic_capacitor:2>, [
    [null, <forestry:chipsets:3>.withTag({T: 3 as short}), null],
    [<enderio:item_basic_capacitor:1>, <astralsorcery:itemusabledust>, <enderio:item_basic_capacitor:1>],
    [null, <enderio:item_alloy_ingot:2>, null]
]);

// energy conduit
recipes.remove(<enderio:item_power_conduit>);
recipes.addShaped(<enderio:item_power_conduit> * 3, [
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
    [<thermaldynamics:duct_0>, <enderio:item_alloy_ingot:4>, <thermaldynamics:duct_0>],
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]
]);

// enhanced energy conduit
recipes.remove(<enderio:item_power_conduit:1>);
recipes.addShaped(<enderio:item_power_conduit:1> * 3, [
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
    [<thermaldynamics:duct_0:2>, <enderio:item_alloy_ingot:1>, <thermaldynamics:duct_0:2>],
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]
]);

// ender energy conduit
recipes.remove(<enderio:item_power_conduit:2>);
recipes.addShaped(<enderio:item_power_conduit:2> * 3, [
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
    [<thermaldynamics:duct_0:3>, <enderio:item_alloy_ingot:2>, <thermaldynamics:duct_0:3>],
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]
]);

// alloy smelter
recipes.remove(<enderio:block_alloy_smelter>);
recipes.addShaped(<enderio:block_alloy_smelter>, [
    [<enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>],
    [<ic2:blockmachinelv:1>, <enderio:item_material:1>, <ic2:blockmachinelv:1>],
    [<enderio:item_material:73>, <minecraft:cauldron>, <enderio:item_material:73>]
]);

// sag mill
recipes.remove(<enderio:block_sag_mill>);
recipes.addShaped(<enderio:block_sag_mill>, [
    [<enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>],
    [<thermalfoundation:material:770>, <enderio:item_material:1>, <thermalfoundation:material:770>],
    [<enderio:item_material:73>, <minecraft:piston>, <enderio:item_material:73>]
]);

// farming station
recipes.remove(<enderio:block_farm_station>);
recipes.addShaped(<enderio:block_farm_station>, [
    [<industrialforegoing:crop_recolector>, <enderio:item_material:12>, <industrialforegoing:crop_sower>],
    [<enderio:item_material:73>, <enderio:item_material:53>, <enderio:item_material:13>],
    [<alchemistry:ingot:24>, <alchemistry:ingot:24>, <alchemistry:ingot:24>]
]);

// the vat
recipes.remove(<enderio:block_vat>);
recipes.addShaped(<enderio:block_vat>, [
    [<enderio:item_material:73>, <enderio:item_alloy_ingot:8>, <enderio:item_material:73>],
    [<enderio:item_alloy_ingot:6>, <enderio:item_material:1>, <enderio:item_alloy_ingot:6>],
    [<enderio:item_alloy_ingot:6>, <enderio:item_material:13>, <enderio:item_alloy_ingot:6>]
]);

// the enhanced vat
recipes.remove(<enderio:block_enhanced_vat>);
recipes.addShapedMirrored(<enderio:block_enhanced_vat>, [
    [null, null, null],
    [<enderio:item_alloy_ingot:8>, <enderio:block_vat>, <enderio:item_alloy_ingot:8>],
    [<enderio:item_alloy_ingot:6>, <enderio:item_material:54>, <enderio:item_alloy_ingot:6>]
]);

// fluid tank
recipes.remove(<enderio:block_tank>);
recipes.addShaped(<enderio:block_tank>, [
    [<thermalfoundation:material:160>, <ore:barsIron>, <thermalfoundation:material:160>],
    [<ore:barsIron>, <ore:blockGlass>, <ore:barsIron>],
    [<thermalfoundation:material:160>, <ore:barsIron>, <thermalfoundation:material:160>]
]);


##########################################################################################
print("==================== end of mods enderio.zs ====================");
