##########################################################################################
#modloaded atum
#priority 100

import mods.atum.Kiln;

print("==================== loading mods atum.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// kiln
recipes.remove(<atum:kiln>);
recipes.addShaped(<atum:kiln>, [
    [<minecraft:sandstone>, <minecraft:sandstone>, <minecraft:sandstone>],
    [<minecraft:sandstone>, null, <minecraft:sandstone>],
    [<minecraft:sandstone>, <minecraft:sandstone>, <minecraft:sandstone>]
]);

// small limestone bricks
recipes.remove(<atum:limestone_brick_small>);
recipes.addShapeless(<atum:limestone_brick_small>, [
    <extrautils2:compressedsand>, <minecraft:clay_ball>
]);
recipes.addShapeless(<atum:limestone_brick_small> * 3, [
    <atum:small_stairs>, <atum:small_stairs>,
    <atum:small_stairs>, <atum:small_stairs>
]);

// royal torch
recipes.remove(<atum:pharaoh_torch>);
recipes.addShaped(<atum:pharaoh_torch> * 4, [
    [null, <minecraft:coal_block>, null],
    [null, <atmtweaks:item_material:2>, null],
    [null, null, null]
]);


### KILN ###

// glass | Vanilla
Kiln.blacklist("minecraft:glass");


##########################################################################################
print("==================== end of mods atum.zs ====================");
