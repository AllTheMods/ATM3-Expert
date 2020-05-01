##########################################################################################
#modloaded inworldcrafting
#priority 100

import mods.inworldcrafting.FluidToFluid;

print("==================== loading mods inworldcrafting.zs ====================");
##########################################################################################


### FLUID TO FLUID ###

// corrupted starlight
FluidToFluid.transform(<liquid:corrupted_starlight>, <liquid:astralsorcery.liquidstarlight>, [
    <contenttweaker:crystallisedblood>
]);


##########################################################################################
print("==================== end of mods inworldcrafting.zs ====================");
