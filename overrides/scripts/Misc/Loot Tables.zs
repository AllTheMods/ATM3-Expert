import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import loottweaker.vanilla.loot.Conditions;
import crafttweaker.item.IItemStack;

/*
"minecraft:chests/abandoned_mineshaft"
"minecraft:chests/simple_dungeon"
"minecraft:chests/desert_pyramid"
"minecraft:chests/igloo_chest"
"minecraft:chests/jungle_temple"
"minecraft:chests/village_blacksmith"
"minecraft:chests/jungle_temple_dispenser"
"minecraft:chests/nether_bridge"
"minecraft:chests/stronghold_corridor"
"minecraft:chests/stronghold_crossing"
"minecraft:chests/woodland_mansion"
"minecraft:chests/stronghold_library"
"minecraft:chests/end_city_treasure"
*/

val mineshaft = LootTables.getTable("minecraft:chests/abandoned_mineshaft");
val dungeon = LootTables.getTable("minecraft:chests/simple_dungeon");
val pyramid = LootTables.getTable("minecraft:chests/desert_pyramid");
val igloo = LootTables.getTable("minecraft:chests/igloo_chest");
val jungle = LootTables.getTable("minecraft:chests/jungle_temple");
val jungleDispenser = LootTables.getTable("minecraft:chests/jungle_temple_dispenser");
val blacksmith = LootTables.getTable("minecraft:chests/village_blacksmith");
val nether = LootTables.getTable("minecraft:chests/nether_bridge");
val corridor = LootTables.getTable("minecraft:chests/stronghold_corridor");
val crossing = LootTables.getTable("minecraft:chests/stronghold_crossing");
val mansion = LootTables.getTable("minecraft:chests/woodland_mansion");
val library = LootTables.getTable("minecraft:chests/stronghold_library");
val end = LootTables.getTable("minecraft:chests/end_city_treasure");

val astral = LootTables.getTable("astralsorcery:chest_shrine");
val astralMain = astral.getPool("astralsorcery:chest_shrine");

val iehouse = LootTables.getTable("immersiveengineering:engineers_house");
val ielibrary = LootTables.getTable("immersiveengineering:stronghold_library");
val ieblacksmith = LootTables.getTable("immersiveengineering:village_blacksmith");

val aahouse = LootTables.getTable("actuallyadditions:engineer_house");

 
#IE removals
iehouse.clear();

#AA pool removal
aahouse.clear();

#astral removals
astralMain.removeEntry("minecraft:diamond");
astralMain.removeEntry("minecraft:ender_pearl");
 
#Botania resource removals 
LootTables.getTable("botania:inject/stronghold_corridor").getPool("main").removeEntry("botania:manaResource");   
LootTables.getTable("botania:inject/simple_dungeon").getPool("main").removeEntry("botania:manaResource"); 
 
#enderio removals 
mineshaft.removePool("Ender IO");
dungeon.removePool("Ender IO");
pyramid.removePool("Ender IO");
jungle.removePool("Ender IO");
jungleDispenser.removePool("Ender IO");
blacksmith.removePool("Ender IO");
mansion.removePool("Ender IO");
end.removePool("Ender IO");

#diamond removals
mineshaft.getPool("pool1").removeEntry("minecraft:diamond");
jungle.getPool("main").removeEntry("minecraft:diamond");
pyramid.getPool("main").removeEntry("minecraft:diamond");
corridor.getPool("main").removeEntry("minecraft:diamond");
blacksmith.getPool("main").removeEntry("minecraft:diamond");

#bucket removals
dungeon.getPool("pool1").removeEntry("minecraft:bucket");
mansion.getPool("pool1").removeEntry("minecraft:bucket");

#iridium removals
dungeon.getPool("main").removeEntry("ic2c_extras:iridiumshard");
nether.getPool("main").removeEntry("ic2c_extras:iridiumshard");
corridor.getPool("main").removeEntry("ic2c_extras:iridiumshard");
crossing.getPool("main").removeEntry("ic2c_extras:iridiumshard");
jungle.getPool("main").removeEntry("ic2c_extras:iridiumshard");
pyramid.getPool("main").removeEntry("ic2c_extras:iridiumshard");

#plutonium removals
dungeon.getPool("main").removeEntry("ic2c_extras:tinyplutonium");
nether.getPool("main").removeEntry("ic2c_extras:tinyplutonium");
corridor.getPool("main").removeEntry("ic2c_extras:tinyplutonium");
crossing.getPool("main").removeEntry("ic2c_extras:tinyplutonium");
jungle.getPool("main").removeEntry("ic2c_extras:tinyplutonium");
pyramid.getPool("main").removeEntry("ic2c_extras:tinyplutonium"); 


#AE2 removals
mineshaft.removePool("AE2 Crystals");
mineshaft.removePool("AE2 DUSTS");

#ender pearl removal
corridor.getPool("main").removeEntry("minecraft:ender_pearl");

#obsidian removal
blacksmith.getPool("main").removeEntry("minecraft:obsidian");
 