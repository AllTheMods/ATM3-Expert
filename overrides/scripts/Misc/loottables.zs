##########################################################################################
#modloaded loottweaker
#priority 500

import loottweaker.LootTweaker;

print("==================== loading misc loottweaker.zs ====================");
##########################################################################################


### VARIABLES ###

// vanilla
val blacksmith = LootTweaker.getTable("minecraft:chests/village_blacksmith");
val corridor = LootTweaker.getTable("minecraft:chests/stronghold_corridor");
val crossing = LootTweaker.getTable("minecraft:chests/stronghold_crossing");
val dungeon = LootTweaker.getTable("minecraft:chests/simple_dungeon");
val end = LootTweaker.getTable("minecraft:chests/end_city_treasure");
val jungle = LootTweaker.getTable("minecraft:chests/jungle_temple");
val jungleDispenser = LootTweaker.getTable("minecraft:chests/jungle_temple_dispenser");
val mansion = LootTweaker.getTable("minecraft:chests/woodland_mansion");
val mineshaft = LootTweaker.getTable("minecraft:chests/abandoned_mineshaft");
val nether = LootTweaker.getTable("minecraft:chests/nether_bridge");
val pyramid = LootTweaker.getTable("minecraft:chests/desert_pyramid");

// astral sorcery
val astral = LootTweaker.getTable("astralsorcery:chest_shrine");
val astralMain = astral.getPool("astralsorcery:chest_shrine");

// immersive engineering
val iehouse = LootTweaker.getTable("immersiveengineering:chests/engineers_house");

// actually additions
val aahouse = LootTweaker.getTable("actuallyadditions:engineer_house");

// botania
val bstronghold = LootTweaker.getTable("botania:inject/stronghold_corridor");
val bdungeon = LootTweaker.getTable("botania:inject/simple_dungeon");


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
