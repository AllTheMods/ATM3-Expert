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

#Botania resource removals
  LootTables.getTable("botania:inject/stronghold_corridor").getPool("main").removeEntry("botania:manaResource");
   LootTables.getTable("botania:inject/simple_dungeon").getPool("main").removeEntry("botania:manaResource");

#enderio removals
  LootTables.getTable("minecraft:chests/simple_dungeon").removePool("Ender IO");
   LootTables.getTable("minecraft:chests/village_blacksmith").removePool("Ender IO");
    LootTables.getTable("minecraft:chests/abandoned_mineshaft").removePool("Ender IO");

#diamond loot removals
  LootTables.getTable("minecraft:chests/abandoned_mineshaft").getPool("main").removeEntry("<minecraft:diamond>");
