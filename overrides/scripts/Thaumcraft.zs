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
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.ArcaneWorkbench;

#Slais Mundus
recipes.remove(<thaumcraft:salis_mundus>);
recipes.addShapeless("CtMundus",<thaumcraft:salis_mundus>,[<thaumcraft:crystal_essence>,<thaumcraft:crystal_essence>,<thaumcraft:crystal_essence>,<ore:powderMana>,<ore:pestleAndMortar>]);
mods.jei.JEI.hide(<thaumcraft:salis_mundus>);

#essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube>);
mods.thaumcraft.Crucible.registerRecipe("CtEtube","",<thaumcraft:tube>*12,<ore:plateSteel>,[<aspect:vacuos>*10,<aspect:metallum>*10]);

#centrifuge
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:centrifuge>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("CtCentrifuge","",100,[<aspect:ordo>,<aspect:perditio>],<thaumcraft:centrifuge>,[[<ore:plateSteel>,<thaumcraft:tube>,<ore:plateSteel>],[<thaumcraft:morphic_resonator>,<thaumcraft:metal_alchemical>,<thaumcraft:mechanism_simple>],[<ore:plateSteel>,<thaumcraft:tube>,<ore:plateSteel>]]);