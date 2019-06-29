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
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

#val NAME = mods.modularmachinery.RecipeBuilder.newBuilder("recipeRegistryName", "associatedMachineRegistryName", 1000, 0);
#.addEnergyPerTickInput(100);
#.addItemInput(<ore:ingotIron>);
#.addItemOutput(<minecraft:gold_ingot>);
#.build();

#mods.modularmachinery.RecipeBuilder.newBuilder("_industrium_ingot", "mag_fab", 70)
#.addItemOutput(<atmtweaks:item_material:2>)
#.addEnergyPerTickInput(1200)
#.addItemInput(<thermalfoundation:material:352> 2)
#.addItemInput(<contenttweaker:manasteelplate> 2)
#.addItemInput(<ore:ingotAstralStarmetal> 2)
#.addItemInput(<thermalfoundation:glass_alloy>)
#.addItemInput(<bloodmagic:slate:2>)
#.addItemInput(<appliedenergistics2:material:43>)
#.addFluidInput(<forestry:fluid.glass> *2500)
#.build();