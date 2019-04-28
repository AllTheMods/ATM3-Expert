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


mods.jei.JEI.removeAndHide(<forestry:ffarm:*>);

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
