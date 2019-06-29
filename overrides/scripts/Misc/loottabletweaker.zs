import mods.ltt.LootTable;

var lootremovals as string[] = [
	
	"actuallyadditions:block_misc:4",
	
	
	"minecraft:iron_ingot",
	"minecraft:gold_ingot",
	"minecraft:iron_pickaxe",
	"minecraft:iron_sword",
	"minecraft:obsidian",
	"minecraft:water_bucket",
    "ore:plateSteel",
	"<ore:toolHoe>",
	"minecraft:quartz",
	"<botania:manaresource>",
	"<minecraft:diamond>",
	"ore:ingotSteel",
	"minecraft:emerald",
	"railcraft:plate*"
	
];

for item in lootremovals {
	LootTable.removeGlobalItem(item);
}