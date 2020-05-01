##########################################################################################
#modloaded advgenerators
#priority 100

print("==================== loading mods advancedgenerators.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// redstone iron wiring
recipes.remove(<advgenerators:iron_wiring>);
recipes.addShaped(<advgenerators:iron_wiring> * 4, [
    [null, <actuallyadditions:item_crystal>, <immersiveengineering:material:2>],
    [<actuallyadditions:item_crystal>, <immersiveengineering:material:2>, <actuallyadditions:item_crystal>],
    [<immersiveengineering:material:2>, <actuallyadditions:item_crystal>, null]
]);

// iron tubing
recipes.remove(<advgenerators:iron_tubing>);
recipes.addShaped(<advgenerators:iron_tubing> * 4, [
    [null, <actuallyadditions:item_crystal:5>, <immersiveengineering:material:2>],
    [<actuallyadditions:item_crystal:5>, <immersiveengineering:material:2>, <actuallyadditions:item_crystal:5>],
    [<immersiveengineering:material:2>, <actuallyadditions:item_crystal:5>, null]
]);

// power io module
recipes.remove(<advgenerators:power_io>);
recipes.addShaped(<advgenerators:power_io>, [
    [null, <thermalfoundation:material:160>, null],
    [<thermalfoundation:material:160>, <actuallyadditions:block_crystal_empowered>, <thermalfoundation:material:160>],
    [<thermalfoundation:material:160>, <thermalfoundation:material:160>, <thermalfoundation:material:160>]
]);

// advanced pressure valve
recipes.addShaped(<advgenerators:advanced_pressure_valve>, [
    [<contenttweaker:quartzplate>, <thermalfoundation:material:359>, <contenttweaker:quartzplate>],
    [<advgenerators:iron_tubing>, <advgenerators:iron_wiring>, <advgenerators:iron_tubing>],
    [<contenttweaker:quartzplate>, <thermalfoundation:material:359>, <contenttweaker:quartzplate>]
]);

// advanced alloy turbine blade | IC2Classic compat
recipes.addShaped(<advgenerators:turbine_blade_adv_alloy> * 4, [
    [null, <ic2:itemmisc:257>, <ic2:itemmisc:257>],
    [null, <ic2:itemmisc:257>, <ic2:itemmisc:257>],
    [null, null, <ic2:itemmisc:257>]
]);

// advanced alloy turbine rotor | IC2Classic compat
recipes.addShaped(<advgenerators:turbine_rotor_adv_alloy>, [
    [<advgenerators:turbine_blade_adv_alloy>, <advgenerators:turbine_blade_adv_alloy>, <advgenerators:turbine_blade_adv_alloy>],
    [<advgenerators:turbine_blade_adv_alloy>, <ic2:itemmisc:257>, <advgenerators:turbine_blade_adv_alloy>],
    [<advgenerators:turbine_blade_adv_alloy>, <advgenerators:turbine_blade_adv_alloy>, <advgenerators:turbine_blade_adv_alloy>]
]);

// low voltage emitter | IC2Classic compat
recipes.addShaped(<advgenerators:eu_output_lv>, [
    [<alchemistry:ingot:32>, <ic2:blockelectric:8>, <alchemistry:ingot:32>],
    [<ic2:itemcable:1>, <advgenerators:forge_output>, <ic2:itemcable:1>],
    [<alchemistry:ingot:32>, <ic2:blockelectric:8>, <alchemistry:ingot:32>]
]);

// medium voltage emitter | IC2Classic compat
recipes.addShaped(<advgenerators:eu_output_mv>, [
    [<alchemistry:ingot:32>, <ic2:blockelectric:9>, <alchemistry:ingot:32>],
    [<ic2:itemcable:4>, <advgenerators:forge_output>, <ic2:itemcable:4>],
    [<alchemistry:ingot:32>, <ic2:blockelectric:9>, <alchemistry:ingot:32>]
]);

// high voltage emitter | IC2Classic compat
recipes.addShaped(<advgenerators:eu_output_hv>, [
    [<alchemistry:ingot:32>, <ic2:blockelectric:10>, <alchemistry:ingot:32>],
    [<ic2:itemcable:8>, <advgenerators:forge_output>, <ic2:itemcable:8>],
    [<alchemistry:ingot:32>, <ic2:blockelectric:10>, <alchemistry:ingot:32>]
]);

// extreme voltage emitter | IC2Classic compat
recipes.addShaped(<advgenerators:eu_output_ev>, [
    [null, <ic2:blockelectric:11>, null],
    [<ic2:itemcable:9>, <advgenerators:eu_output_hv>, <ic2:itemcable:9>],
    [null, <ic2:blockelectric:11>, null]
]);

// insane voltage emitter | IC2Classic compat
recipes.addShaped(<advgenerators:eu_output_iv>, [
    [null, <ic2:blockelectric:13>, null],
    [<ic2:itemcable:16>, <advgenerators:eu_output_hv>, <ic2:itemcable:16>],
    [null, <ic2:blockelectric:13>, null]
]);


##########################################################################################
print("==================== end of mods advancedgenerators.zs ====================");
