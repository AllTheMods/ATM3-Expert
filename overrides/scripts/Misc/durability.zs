##########################################################################################
#priority 75

import crafttweaker.item.IItemStack;

print("==================== loading misc durability.zs ====================");
##########################################################################################


// pickaxes
val pickaxes as IItemStack[] = [
    <minecraft:iron_pickaxe>,
    <minecraft:golden_pickaxe>,
    <minecraft:diamond_pickaxe>
];
for entry in pickaxes {
    entry.maxDamage = 1;
}


##########################################################################################
print("==================== end of misc durability.zs ====================");
