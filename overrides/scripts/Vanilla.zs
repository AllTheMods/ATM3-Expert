import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import crafttweaker.game.IGame;

print("Vanilla changes here");

val IronPlate = <thermalfoundation:material:32>
val ironGear= <ore:gearIron>;
val cobbleTwoTimes = <ore:compressed1xCobblestone>;



#Minecraft bucket
recipes.remove(<minecraft:bucket>);
recipes.addShaped("CTbucket", <minecraft:bucket>,
 [[null, null, null],
 [IronPlate, null, IronPlate],
 [null, IronPlate, null]]);
 
#furnace change
recipes.removeShaped(<minecraft:furnace>);
recipes.addShaped("CtFurnace",<minecraft:furnace>,
[[cobbleTwoTimes,cobbleTwoTimes,cobbleTwoTimes],
[cobbleTwoTimes,<minecraft:chest>,cobbleTwoTimes],
[cobbleTwoTimes,ironGear,cobbleTwoTimes]]);

#Charcoal
furnace.remove(<ore:charcoal>,<ore:logWood>);

#sandstone change
recipes.removeShaped(<minecraft:sandstone>);
recipes.addShaped("ctSandstone",<minecraft:sandstone>,
[[<extrautils2:compressedsand>,<extrautils2:compressedsand>]]);
