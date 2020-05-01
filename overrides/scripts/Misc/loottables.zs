##########################################################################################
#modloaded loottweaker
#priority 500

import loottweaker.vanilla.loot.LootTables;

print("==================== loading misc loottweaker.zs ====================");
##########################################################################################


### VARIABLES ###

// vanilla
val blacksmith = LootTables.getTable("minecraft:chests/village_blacksmith");
val corridor = LootTables.getTable("minecraft:chests/stronghold_corridor");
val crossing = LootTables.getTable("minecraft:chests/stronghold_crossing");
val dungeon = LootTables.getTable("minecraft:chests/simple_dungeon");
val end = LootTables.getTable("minecraft:chests/end_city_treasure");
val jungle = LootTables.getTable("minecraft:chests/jungle_temple");
val jungleDispenser = LootTables.getTable("minecraft:chests/jungle_temple_dispenser");
val mansion = LootTables.getTable("minecraft:chests/woodland_mansion");
val mineshaft = LootTables.getTable("minecraft:chests/abandoned_mineshaft");
val nether = LootTables.getTable("minecraft:chests/nether_bridge");
val pyramid = LootTables.getTable("minecraft:chests/desert_pyramid");

// astral sorcery
val astral = LootTables.getTable("astralsorcery:chest_shrine");
val astralMain = astral.getPool("astralsorcery:chest_shrine");

// immersive engineering
val iehouse = LootTables.getTable("immersiveengineering:chests/engineers_house");

// actually additions
val aahouse = LootTables.getTable("actuallyadditions:engineer_house");

// botania
val bstronghold = LootTables.getTable("botania:inject/stronghold_corridor");
val bdungeon = LootTables.getTable("botania:inject/simple_dungeon");


### TWEAKS ###

// vanilla
blacksmith.getPool("main").removeEntry("minecraft:diamond");
blacksmith.getPool("main").removeEntry("minecraft:obsidian");
blacksmith.removePool("Ender IO");
corridor.getPool("main").removeEntry("ic2c_extras:iridiumshard");
corridor.getPool("main").removeEntry("ic2c_extras:tinyplutonium");
corridor.getPool("main").removeEntry("minecraft:diamond");
corridor.getPool("main").removeEntry("minecraft:ender_pearl");
crossing.getPool("main").removeEntry("ic2c_extras:iridiumshard");
crossing.getPool("main").removeEntry("ic2c_extras:tinyplutonium");
dungeon.getPool("main").removeEntry("ic2c_extras:iridiumshard");
dungeon.getPool("main").removeEntry("ic2c_extras:tinyplutonium");
dungeon.getPool("pool1").removeEntry("minecraft:bucket");
dungeon.removePool("Ender IO");
end.removePool("Ender IO");
jungle.getPool("main").removeEntry("ic2c_extras:iridiumshard");
jungle.getPool("main").removeEntry("ic2c_extras:tinyplutonium");
jungle.getPool("main").removeEntry("minecraft:diamond");
jungle.removePool("Ender IO");
jungleDispenser.removePool("Ender IO");
mansion.getPool("pool1").removeEntry("minecraft:bucket");
mansion.removePool("Ender IO");
mineshaft.getPool("pool1").removeEntry("minecraft:diamond");
mineshaft.removePool("AE2 Crystals");
mineshaft.removePool("AE2 DUSTS");
mineshaft.removePool("Ender IO");
nether.getPool("main").removeEntry("ic2c_extras:iridiumshard");
nether.getPool("main").removeEntry("ic2c_extras:tinyplutonium");
pyramid.getPool("main").removeEntry("ic2c_extras:iridiumshard");
pyramid.getPool("main").removeEntry("ic2c_extras:tinyplutonium");
pyramid.getPool("main").removeEntry("minecraft:diamond");
pyramid.removePool("Ender IO");

// immersive engineering
iehouse.clear();

// actually additions
aahouse.clear();

// astral sorcery
astralMain.removeEntry("minecraft:diamond");
astralMain.removeEntry("minecraft:ender_pearl");

// botania
bstronghold.getPool("main").removeEntry("botania:manaResource");
bdungeon.getPool("main").removeEntry("botania:manaResource");


##########################################################################################
print("==================== end of misc loottweaker.zs ====================");
