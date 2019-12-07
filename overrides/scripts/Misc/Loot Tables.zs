import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import loottweaker.vanilla.loot.Conditions;
import crafttweaker.item.IItemStack;


#Botania resource removals
 LootTables.getTable("botania:inject/stronghold_corridor").getPool("main").removeEntry("botania:manaResource");
 
 LootTables.getTable("botania:inject/simple_dungeon").getPool("main").removeEntry("botania:manaResource");

#enderio removals
 LootTables.getTable("minecraft:chests/simple_dungeon").removePool("Ender IO");


