import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.tconstruct.Casting;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import mods.forestry.ThermionicFabricator;
import mods.forestry.Carpenter;


mods.jei.JEI.removeAndHide(<forestry:ffarm:*>);

val restonia = <actuallyadditions:item_crystal>;

#Circuit changes
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets>.withTag({T: 0 as short}));
mods.forestry.Carpenter.addRecipe(<forestry:chipsets>.withTag({T: 0 as short}),
[[<actuallyadditions:item_crystal>,<immersiveengineering:material:26>,<actuallyadditions:item_crystal>],
[<forestry:thermionic_tubes:1>,<ic2c_extras:refinedironplate>,<forestry:thermionic_tubes:1>],
[<actuallyadditions:item_crystal>,<contenttweaker:manadiamondplate>,<actuallyadditions:item_crystal>]], 100, <liquid:water> *  1000);

mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:1>.withTag({T: 1 as short}));
mods.forestry.Carpenter.addRecipe(<forestry:chipsets:1>.withTag({T: 1 as short}),
[[<actuallyadditions:item_crystal>,<immersiveengineering:material:26>,<actuallyadditions:item_crystal>],
[<forestry:thermionic_tubes:2>,<ic2c_extras:refinedironplate>,<forestry:thermionic_tubes:2>],
[<actuallyadditions:item_crystal>,<ore:plateBronze>,<actuallyadditions:item_crystal>]], 100, <liquid:water> * 1000);

mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:2>.withTag({T: 2 as short}));
mods.forestry.Carpenter.addRecipe(<forestry:chipsets:2>.withTag({T: 2 as short}),
[[<actuallyadditions:item_crystal>,<immersiveengineering:material:26>,<actuallyadditions:item_crystal>],
[<forestry:thermionic_tubes:3>,<ic2c_extras:refinedironplate>,<forestry:thermionic_tubes:3>],
[<actuallyadditions:item_crystal>,<ore:plateIron>,<actuallyadditions:item_crystal>]], 100, <liquid:water> * 1000);

mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:3>.withTag({T: 3 as short}));
mods.forestry.Carpenter.addRecipe(<forestry:chipsets:3>.withTag({T: 3 as short}),
[[<actuallyadditions:item_crystal>,<immersiveengineering:material:26>,<actuallyadditions:item_crystal>],
[<forestry:thermionic_tubes:4>,<ic2c_extras:refinedironplate>,<forestry:thermionic_tubes:4>],
[<actuallyadditions:item_crystal>,<ore:plateGold>,<actuallyadditions:item_crystal>]], 100, <liquid:water> * 1000);

#Thermionic fabricator
	mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:*>);
	mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes>,[[null,<ore:plateCopper>,null],[restonia,<ore:plateCopper>,restonia],[<ore:plateCopper>,<ore:plateCopper>,<ore:plateCopper>]],<liquid: glass>*500);
	mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:1>,[[null,<ore:plateTin>,null],[restonia,<ore:plateTin>,restonia],[<ore:plateTin>,<ore:plateTin>,<ore:plateTin>]],<liquid: glass>*500);
	mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:2>,[[null,<ore:plateBronze>,null],[restonia,<ore:plateBronze>,restonia],[<ore:plateBronze>,<ore:plateBronze>,<ore:plateBronze>]],<liquid: glass>*500);
	mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:3>,[[null,<ore:plateIron>,null],[restonia,<ore:plateIron>,restonia],[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]],<liquid: glass>*500);
	mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:4>,[[null,<ore:plateGold>,null],[restonia,<ore:plateGold>,restonia],[<ore:plateGold>,<ore:plateGold>,<ore:plateGold>]],<liquid: glass>*500);
	mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:5>,[[null,<actuallyadditions:item_crystal:2>,null],[restonia,<actuallyadditions:item_crystal:2>,restonia],[<actuallyadditions:item_crystal:2>,<actuallyadditions:item_crystal:2>,<actuallyadditions:item_crystal:2>]],<liquid: glass>*500);
	mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:6>,[[null,<ore:dustObsidian>,null],[restonia,<ore:dustObsidian>,restonia],[<ore:dustObsidian>,<ore:dustObsidian>,<ore:dustObsidian>]],<liquid: glass>*500);
	mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:7>,[[null,<ore:blockBlaze>,null],[restonia,<ore:blockBlaze>,restonia],[<ore:blockBlaze>,<ore:blockBlaze>,<ore:blockBlaze>]],<liquid: glass>*500);
	mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:8>,[[null,<ore:itemRubber>,null],[restonia,<ore:itemRubber>,restonia],[<ore:itemRubber>,<ore:itemRubber>,<ore:itemRubber>]],<liquid: glass>*500);
	mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:9>,[[null,<ore:dustEmerald>,null],[restonia,<ore:dustEmerald>,restonia],[<ore:dustEmerald>,<ore:dustEmerald>,<ore:dustEmerald>]],<liquid: glass>*500);
	mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:10>,[[null,<forestry:apatite>,null],[restonia,<forestry:apatite>,restonia],[<forestry:apatite>,<forestry:apatite>,<forestry:apatite>]],<liquid: glass>*500);
	mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:11>,[[null,<ore:dustLapis>,null],[restonia,<ore:dustLapis>,restonia],[<ore:dustLapis>,<ore:dustLapis>,<ore:dustLapis>]],<liquid: glass>*500);
	mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:12>,[[null,<minecraft:ender_eye>,null],[restonia,<minecraft:ender_eye>,restonia],[<minecraft:ender_eye>,<minecraft:end_stone>,<minecraft:ender_eye>]],<liquid: glass>*500);
	mods.forestry.ThermionicFabricator.addCast(<forestry:thermionic_tubes:13>,[[null,restonia,null],[<extrautils2:redorchid>,restonia,<extrautils2:redorchid>],[restonia,restonia,restonia]],<liquid: glass>*500);