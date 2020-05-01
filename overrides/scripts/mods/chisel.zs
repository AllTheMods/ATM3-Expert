##########################################################################################
#modloaded chisel
#priority 100

import mods.chisel.Carving;

print("==================== loading mods chisel.zs ====================");
##########################################################################################


### CARVING ###

// machine blueprint | Modular Machinery
Carving.addGroup("Blueprints");
Carving.addVariation("Blueprints", <modularmachinery:itemblueprint>);
Carving.addVariation("Blueprints", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mag_fab"}));
Carving.addVariation("Blueprints", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:growth_tower"}));
Carving.addVariation("Blueprints", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:industrial_chiller"}));


##########################################################################################
print("==================== end of mods chisel.zs ====================");
