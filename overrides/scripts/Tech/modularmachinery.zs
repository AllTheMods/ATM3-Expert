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
import mods.chisel.Carving;
import mods.tconstruct.Casting;

print("modular machinery recipes");

val mag_fab = <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mag_fab"});
val growth_tower = <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:growth_tower"});
val ind_chiller = <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:industrial_chiller"});

#machine vent
recipes.addShaped(<modularmachinery:blockcasing:1> * 2, [[<ic2:blockutility:2>, <minecraft:iron_bars>, <ic2:blockutility:2>],[<thermalfoundation:glass:3>, <minecraft:iron_bars>, <thermalfoundation:glass:3>], [<ic2:blockutility:2>, <minecraft:iron_bars>, <ic2:blockutility:2>]]);

#modularium
recipes.remove(<modularmachinery:itemmodularium>);

#temp
recipes.addShapedMirrored(<modularmachinery:itemblueprint>, [[<thermalfoundation:material:768>, <ic2:itemmisc:451>, <thermalfoundation:material:768>],[<thermalfoundation:material:768>, <thermalfoundation:diagram_redprint:*>, <thermalfoundation:material:768>], [<thermalfoundation:material:768>, <ic2:itemmisc:451>, <thermalfoundation:material:768>]]);

#chisel for the modular machinery patterns// mods.chisel.Carving.addVariation("Blueprints", );
<modularmachinery:itemblueprint>.addTooltip(format.white("Chisels into any blueprint"));
mods.chisel.Carving.addGroup("Blueprints");
mods.chisel.Carving.addVariation("Blueprints", <modularmachinery:itemblueprint>);
mods.chisel.Carving.addVariation("Blueprints", mag_fab);
mods.chisel.Carving.addVariation("Blueprints", growth_tower);
mods.chisel.Carving.addVariation("Blueprints", ind_chiller);

#Modularium
mods.tconstruct.Casting.addTableRecipe(<modularmachinery:itemmodularium>, <tconstruct:cast_custom>, <liquid:soldering_alloy>, 144, true, 50);
