##########################################################################################
#modloaded tconstruct
#priority 100

import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Drying;
import mods.tconstruct.Melting;

print("==================== loading mods tinkersconstruct.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// flint shard
recipes.addShapeless(<tconstruct:shard>.withTag({Material: "flint"}) * 4, [<minecraft:flint>]);

// porcelain melter | Tinkers Complement
recipes.remove(<tcomplement:porcelain_melter>);
recipes.addShaped(<tcomplement:porcelain_melter>, [
    [null, <ceramics:unfired_clay:5>, null],
    [<ceramics:unfired_clay:5>, <ceramics:porcelain_barrel>, <ceramics:unfired_clay:5>],
    [<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>]
]);

// porcelain heater | Tinkers Complement
recipes.removeShaped(<tcomplement:porcelain_melter:8>);
recipes.addShaped(<tcomplement:porcelain_melter:8>, [
    [null, <ceramics:unfired_clay:5>, null],
    [<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>],
    [<ceramics:unfired_clay:5>, <atum:kiln>, <ceramics:unfired_clay:5>]
]);

// porcelain alloy tank
recipes.removeShaped(<tcomplement:porcelain_alloy_tank>);
recipes.addShaped(<tcomplement:porcelain_alloy_tank>, [
    [null, <ceramics:faucet>, null],
    [<ceramics:porcelain_barrel>, null, <ceramics:porcelain_barrel>],
    [null, <ceramics:faucet>, null]
]);

// vitrified sand sharpening kit
recipes.addShaped(<tconstruct:sharpening_kit>.withTag({Material: "vitrified_sand"}), [
    [null, <minecraft:sand>, null],
    [<minecraft:sand>, <tconstruct:seared>, <minecraft:sand>],
    [null, <minecraft:sand>, null]
]);

// smeltery controller
recipes.removeShaped(<tconstruct:smeltery_controller>);
recipes.addShaped(<tconstruct:smeltery_controller>, [
    [<minecraft:brick>, <ore:blockSeared>, <minecraft:brick>],
    [<ore:blockSeared>, <tcomplement:porcelain_melter>, <ore:blockSeared>],
    [<minecraft:brick>, <thermalfoundation:material:129>, <minecraft:brick>]
]);

// tool forge
recipes.remove(<tconstruct:toolforge>);
recipes.addShaped(<tconstruct:toolforge>.withTag({textureBlock: {id: "enderio:block_alloy", Count: 1 as byte, Damage: 0 as short}}), [
    [<actuallyadditions:block_crystal_empowered:3>, <actuallyadditions:block_crystal_empowered:3>, <actuallyadditions:block_crystal_empowered:3>],
    [<actuallyadditions:block_crystal_empowered:5>, <tconstruct:tooltables:3>, <actuallyadditions:block_crystal_empowered:5>],
    [<actuallyadditions:block_crystal_empowered:5>, null, <actuallyadditions:block_crystal_empowered:5>]
]);

// slime boots
recipes.remove(<tconstruct:slime_boots>);
recipes.addShaped(<tconstruct:slime_boots>, [
    [null, null, null],
    [<ic2:itemmisc:450>, <ic2:itemmisc:254>, <ic2:itemmisc:450>],
    [<tconstruct:slime_congealed>, <ic2:itemarmorrubboots>, <tconstruct:slime_congealed>]
]);

// slime sling
recipes.remove(<tconstruct:slimesling>);
recipes.addShaped(<tconstruct:slimesling>, [
    [<actuallyadditions:item_crystal:2>, <tconstruct:slime_congealed>, <actuallyadditions:item_crystal:2>],
    [<tconstruct:slime_congealed>, null, <minecraft:slime_ball>],
    [null, <tconstruct:slime_congealed>, null]
]);

// firewood
recipes.remove(<tconstruct:firewood:1>);
recipes.addShaped(<tconstruct:firewood:1>, [
    [<bloodmagic:lava_crystal>, <tconstruct:firewood>, null],
    [null, null, null],
    [null, null, null]
]);


### ALLOYING ###

// remove alloys
Alloy.removeRecipe(<liquid:steel>, [<liquid:iron>, <liquid:coal>]);
Alloy.removeRecipe(<liquid:dark_steel>, [<liquid:iron>, <liquid:coal>, <liquid:obsidian>]);
Alloy.removeRecipe(<liquid:hard_carbon>, [<liquid:diamond>, <liquid:coal>]);
Alloy.removeRecipe(<liquid:pulsating_iron>, [<liquid:iron>, <liquid:ender>]);
Alloy.removeRecipe(<liquid:vibrant_alloy>, [<liquid:energetic_alloy>, <liquid:ender>]);
Alloy.removeRecipe(<liquid:lumium>, [<liquid:tin>, <liquid:silver>, <liquid:glowstone>]);
Alloy.removeRecipe(<liquid:conductive_iron>, [<liquid:redstone>, <liquid:iron>]);
Alloy.removeRecipe(<liquid:energetic_alloy>, [<liquid:redstone>, <liquid:gold>, <liquid:glowstone>]);
Alloy.removeRecipe(<liquid:signalum>);
Alloy.removeRecipe(<liquid:enderium>);
Alloy.removeRecipe(<liquid:dark_steel>);
Alloy.removeRecipe(<liquid:hard_carbon>);

// liquid grout
Alloy.addRecipe(<liquid:liquid_grout> * 576, [<liquid:molten_sand> * 144, <liquid:clay> * 144]);

// soldering alloy
Alloy.addRecipe(<liquid:soldering_alloy> * 288, [<liquid:manasteel> * 144, <liquid:lead> * 144, <liquid:silver> * 144]);

// primal mana
Alloy.addRecipe(<liquid:mana> * 288, [<liquid:gold> * 32, <liquid:liquid_death> * 100, <liquid:xpjuice> * 80, <liquid:manasteel> * 32, <liquid:pyrotheum> * 125 ]);


### CASTING ###

// seared stone
Casting.addBasinRecipe(<tconstruct:seared>, <minecraft:gravel>, <liquid:liquid_grout>, 576, true, 200);

// seared brick
Casting.addTableRecipe(<tconstruct:materials>, <tconstruct:shard>.withTag({Material: "flint"}) * 4, <liquid:liquid_grout>, 144, true, 50);

// seared stuff
Casting.addBasinRecipe(<tconstruct:faucet>, <ceramics:faucet>, <liquid:liquid_grout>, 288, true, 200);
Casting.addBasinRecipe(<tconstruct:casting:1>, <tcomplement:porcelain_casting:1>, <liquid:liquid_grout>, 288, true, 200);
Casting.addBasinRecipe(<tconstruct:casting>, <tcomplement:porcelain_casting>, <liquid:liquid_grout>, 288, true, 200);
Casting.addBasinRecipe(<tconstruct:seared_tank>, <tcomplement:porcelain_tank>, <liquid:liquid_grout>, 288, true, 200);
Casting.addBasinRecipe(<tconstruct:smeltery_io>, <ceramics:clay_hard>, <liquid:liquid_grout>, 288, true, 200);
Casting.addBasinRecipe(<tconstruct:channel>, <ceramics:channel>, <liquid:liquid_grout>, 288, true, 200);
Casting.addBasinRecipe(<tcomplement:alloy_tank>, <tcomplement:porcelain_alloy_tank>, <liquid:liquid_grout>, 288, true, 200);

// modularium | Modular Machinery
Casting.addTableRecipe(<modularmachinery:itemmodularium>, <tconstruct:cast_custom>, <liquid:soldering_alloy>, 144, false, 50);

// runic matrix | Thaumcraft
Casting.addBasinRecipe(<thaumcraft:infusion_matrix>, <contenttweaker:infusion_block>, <liquid:mana>, 288, true, 1000);

// mana infused ore | Thermal Foundation
Casting.addBasinRecipe(<thermalfoundation:ore:8>, <thermalfoundation:ore:6>, <liquid:mana>, 72, true, 100);


### DRYING ###

// porcelain brick | Ceramics
Drying.addRecipe(<ceramics:unfired_clay:5>, <ceramics:unfired_clay:4>, 160);

// white porcelain barrel | Ceramics
Drying.addRecipe(<ceramics:porcelain_barrel>, <ceramics:clay_barrel_unfired:2>, 300);

// porcelain faucet | Ceramics
Drying.addRecipe(<ceramics:faucet>, <ceramics:unfired_clay:6>, 300);

// porcelain channel | Ceramics
Drying.addRecipe(<ceramics:channel>, <ceramics:unfired_clay:7>, 300);


### MELTING ###

// clay
Melting.removeRecipe(<liquid:clay>);
Melting.addRecipe(<liquid:molten_sand> * 1296,<extrautils2:compressedsand>, 400);
Melting.addRecipe(<liquid:clay> * 144,<minecraft:clay_ball>, 350);
Melting.addRecipe(<liquid:clay> * 576,<minecraft:clay>, 400);

// removals
Melting.removeRecipe(<liquid:steel>, <immersiveengineering:sword_steel>);
Melting.removeRecipe(<liquid:steel>, <immersiveengineering:shovel_steel>);
Melting.removeRecipe(<liquid:steel>, <immersiveengineering:axe_steel>);
Melting.removeRecipe(<liquid:steel>, <immersiveengineering:pickaxe_steel>);
Melting.removeRecipe(<liquid:steel>, <immersiveengineering:material:16>);
Melting.removeRecipe(<liquid:steel>, <immersiveengineering:steel_armor_legs>);
Melting.removeRecipe(<liquid:steel>, <immersiveengineering:steel_armor_head>);
Melting.removeRecipe(<liquid:steel>, <immersiveengineering:steel_armor_chest>);
Melting.removeRecipe(<liquid:steel>, <immersiveengineering:steel_armor_feet>);
Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_helmet>);
Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_chestplate>);
Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_leggings>);
Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_boots>);
Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_pickaxe>);
Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_axe>);
Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_crook>);
Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_shears>);
Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_sword>);


##########################################################################################
print("==================== end of mods tinkersconstruct.zs ====================");
