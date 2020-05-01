##########################################################################################
#modloaded psi
#priority 100

print("==================== loading mods psi.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// spell programmer
recipes.remove(<psi:programmer>);
recipes.addShaped(<psi:programmer>, [
    [<psi:material>, <psi:material>, <psi:material>],
    [<contenttweaker:coldironplate>, <thermalexpansion:frame>, <contenttweaker:coldironplate>],
    [<contenttweaker:coldironplate>, <contenttweaker:coldironplate>, <contenttweaker:coldironplate>]
]);

// cad assembler
recipes.remove(<psi:cad_assembler>);
recipes.addShaped(<psi:cad_assembler>, [
    [<minecraft:piston>, <minecraft:piston>, <minecraft:piston>],
    [<contenttweaker:coldironplate>, <thermalexpansion:frame>, <contenttweaker:coldironplate>],
    [<contenttweaker:coldironplate>, <contenttweaker:coldironplate>, <contenttweaker:coldironplate>]
]);


##########################################################################################
print("==================== end of mods psi.zs ====================");
