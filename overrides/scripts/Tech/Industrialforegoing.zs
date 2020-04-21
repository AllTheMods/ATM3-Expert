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
import mods.actuallyadditions.Empowerer;

print("Industrial foregoing");

#make breaker require steel gear
recipes.remove(<industrialforegoing:block_destroyer>);
recipes.addShaped(<industrialforegoing:block_destroyer>, [[<industrialforegoing:plastic>, <thermalfoundation:material:288>, <industrialforegoing:plastic>], [<minecraft:iron_pickaxe>, <teslacorelib:machine_case>, <minecraft:iron_shovel>], [<thermalfoundation:material:24>, <minecraft:redstone>, <thermalfoundation:material:24>]]);

#laser drills and base
recipes.remove(<industrialforegoing:laser_drill>);
recipes.remove(<industrialforegoing:laser_base>);
recipes.addShaped("CTiflaserdrill", <industrialforegoing:laser_drill>, [[<industrialforegoing:pink_slime_ingot>, <actuallyadditions:item_crystal_empowered>, <industrialforegoing:pink_slime_ingot>],[<thermalfoundation:material:352>, <actuallyadditions:block_crystal_empowered:2>, <thermalfoundation:material:352>], [<actuallyadditions:item_crystal_empowered>, <astralsorcery:itemcraftingcomponent:1>, <actuallyadditions:item_crystal_empowered>]]);
recipes.addShaped("CTiflaserbase", <industrialforegoing:laser_base>, [[<contenttweaker:quartzplate>, <contenttweaker:quartzplate>, <contenttweaker:quartzplate>],[<contenttweaker:quartzplate>, <teslacorelib:machine_case>, <contenttweaker:quartzplate>], [<bloodmagic:slate:2>, <bloodmagic:slate:2>, <bloodmagic:slate:2>]]);

#
recipes.remove(<industrialforegoing:mob_relocator>);
recipes.addShaped(<industrialforegoing:mob_relocator>, [[<industrialforegoing:plastic>, <botania:elementiumsword>, <industrialforegoing:plastic>],[<thaumcraft:elemental_sword>, <teslacorelib:machine_case>, <astralsorcery:itemcrystalsword>], [<thermalfoundation:material:293>, <thaumcraft:ingot>, <thermalfoundation:material:295>]]);
