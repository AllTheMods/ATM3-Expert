##########################################################################################
#modloaded contenttweaker
#priority 100

import mods.contenttweaker.tconstruct.MaterialBuilder;

print("==================== loading mods contenttweaker.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// quartz ingot
recipes.addShaped(<contenttweaker:quartzingot>, [
    [null, <ore:dustNetherQuartz>, null],
    [<ore:dustCertusQuartz>, <ore:ingotIron>, <ore:dustQuartzBlack>],
    [null, <ore:dustNetherQuartz>, null]
]);


### MATERIALS ###

// sand pickaxe
val sandMat = MaterialBuilder.create("vitrified_sand");
sandMat.color = 0xf7e4a1;
sandMat.craftable = true;
sandMat.liquid = <liquid:molten_sand>;
sandMat.castable = true;
sandMat.addHeadMaterialStats(400, 5.5f, 5.5f,2);
sandMat.addHandleMaterialStats(0.5, 400);
sandMat.addBowStringMaterialStats(0.5f);
sandMat.register();

// soldered pickaxe
val solderingmat = MaterialBuilder.create("soldering_alloy");
solderingmat.color = 0xf7e4a1;
solderingmat.craftable = true;
solderingmat.liquid = <liquid:soldering_alloy>;
solderingmat.castable = true;
solderingmat.addHeadMaterialStats(1000, 7.5f, 7.5f,3);
solderingmat.addHandleMaterialStats(0.7, 500);
solderingmat.addBowStringMaterialStats(0.5f);
solderingmat.register();


##########################################################################################
print("==================== end of mods contenttweaker.zs ====================");
