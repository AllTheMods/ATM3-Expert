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
import mods.astralsorcery.Altar;

#starlight altar
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2", <astralsorcery:blockaltar:1>, 200, 200, [
<astralsorcery:blockmarble:2>, <astralsorcery:itemcraftingcomponent>, <astralsorcery:blockmarble:2>,
null, <liquid:astralsorcery.liquidstarlight>, null,
<astralsorcery:blockmarble:2>, <botania:rune:8>, <astralsorcery:blockmarble:2>]);

#luminous altar 
recipes.remove(<astralsorcery:blockaltar>);
recipes.addShaped("CTlumincrafter", <astralsorcery:blockaltar>, [[<astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>],[<ore:relic>, <astralsorcery:blockmarble:4>, <ore:relic>], [<astralsorcery:blockmarble:4>, <ore:stoneMarble>, <astralsorcery:blockmarble:4>]]);
