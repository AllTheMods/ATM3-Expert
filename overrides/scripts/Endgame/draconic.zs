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
import mods.jei.JEI.removeAndHide;
import mods.bloodmagic.BloodAltar;
import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.InductionSmelter;

print("Draconic changes start here");

#Draconium ingots
recipes.remove(<draconicevolution:draconium_ingot>);
recipes.addShapeless(<draconicevolution:draconium_ingot> * 9, [<draconicevolution:draconium_block>]);
recipes.addShaped(<draconicevolution:draconium_ingot>,
 [[<draconicevolution:nugget>, <draconicevolution:nugget>, <draconicevolution:nugget>],
 [<draconicevolution:nugget>, <draconicevolution:nugget>, <draconicevolution:nugget>], 
 [<draconicevolution:nugget>, <draconicevolution:nugget>, <draconicevolution:nugget>]]);

#Removing draconium ingots from being obtained without blood magic/ adding them to blood magic
mods.bloodmagic.BloodAltar.addRecipe(<draconicevolution:draconium_ingot>, <draconicevolution:draconium_dust>, 4, 50000, 25, 5);
mods.immersiveengineering.ArcFurnace.removeRecipe(<draconicevolution:draconium_ingot>);
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<draconicevolution:draconium_ingot>);
furnace.remove(<draconicevolution:draconium_ingot>);

#Draconic core
recipes.removeShapeless(<draconicevolution:draconic_core>);
recipes.addShaped(<draconicevolution:draconic_core>, 
 [[<thermalfoundation:material:294>, <botania:manaresource:7>, <contenttweaker:planetshard>],
 [<draconicevolution:draconium_ingot>, <contenttweaker:corruptedstarmetal>, <draconicevolution:draconium_ingot>],
 [<contenttweaker:planetshard>, <thaumcraft:ingot>, <thermalfoundation:material:295>]]);

#Wyvern Core
 mods.extendedcrafting.CombinationCrafting.addRecipe(<draconicevolution:wyvern_core>, 
 100000000, 10000, <draconicevolution:wyvern_core>, <actuallyadditions:item_crystal_empowered:5>,
 <actuallyadditions:item_crystal_empowered:4>, <ore:eternalLifeEssence>,
 <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered>,
 <actuallyadditions:item_crystal_empowered:1>, <thaumcraft:plate:3>, <environmentaltech:kyronite_crystal>]);

#Awakened core
recipes.remove(<draconicevolution:awakened_core>);