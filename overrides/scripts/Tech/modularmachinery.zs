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
recipes.addShaped(<modularmachinery:blockcasing:1> * 2, [[<botania:livingrock:1>, <minecraft:iron_bars>, <botania:livingrock:1>],[<thermalfoundation:glass:3>, <minecraft:iron_bars>, <thermalfoundation:glass:3>], [<botania:livingrock:1>, <minecraft:iron_bars>, <botania:livingrock:1>]]);

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
mods.tconstruct.Casting.addTableRecipe(<modularmachinery:itemmodularium>, <tconstruct:cast_custom>, <liquid:soldering_alloy>, 144, false, 50);

#bigger fluid hatches
recipes.addShapeless(<modularmachinery:blockfluidinputhatch:5>, [<contenttweaker:corruptedstarmetal>,<modularmachinery:blockfluidinputhatch:4>]);
recipes.addShapeless(<modularmachinery:blockfluidoutputhatch:5>, [<contenttweaker:corruptedstarmetal>,<modularmachinery:blockfluidoutputhatch:4>]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:4>, [[null, <contenttweaker:planetshard>, null],[<contenttweaker:planetshard>, <modularmachinery:blockfluidoutputhatch:3>, <contenttweaker:planetshard>], [null, <contenttweaker:planetshard>, null]]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:4>, [[null, <contenttweaker:planetshard>, null],[<contenttweaker:planetshard>, <modularmachinery:blockfluidinputhatch:3>, <contenttweaker:planetshard>], [null, <contenttweaker:planetshard>, null]]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:3>, [[null, <botania:manaresource:7>, null],[<botania:manaresource:7>, <modularmachinery:blockfluidoutputhatch:2>, <botania:manaresource:7>], [null, <botania:manaresource:7>, null]]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:3>, [[null, <botania:manaresource:7>, null],[<botania:manaresource:7>, <modularmachinery:blockfluidinputhatch:2>, <botania:manaresource:7>], [null, <botania:manaresource:7>, null]]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:2>, [[null, <appliedenergistics2:material>, null],[<appliedenergistics2:material>, <modularmachinery:blockfluidoutputhatch:1>, <appliedenergistics2:material>], [null, <appliedenergistics2:material>, null]]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:2>, [[null, <appliedenergistics2:material>, null],[<appliedenergistics2:material>, <modularmachinery:blockfluidinputhatch:1>, <appliedenergistics2:material>], [null, <appliedenergistics2:material>, null]]);

#item hatches
recipes.addShaped(<modularmachinery:blockoutputbus:3>, [[null, <botania:manaresource:7>, null],[<botania:manaresource:7>, <modularmachinery:blockoutputbus:2>, <botania:manaresource:7>], [null, <botania:manaresource:7>, null]]);
recipes.addShaped(<modularmachinery:blockinputbus:3>, [[null, <botania:manaresource:7>, null],[<botania:manaresource:7>, <modularmachinery:blockinputbus:2>, <botania:manaresource:7>], [null, <botania:manaresource:7>, null]]);
recipes.addShaped(<modularmachinery:blockinputbus:2>, [[null, <appliedenergistics2:material>, null],[<appliedenergistics2:material>, <modularmachinery:blockinputbus:1>, <appliedenergistics2:material>], [null, <appliedenergistics2:material>, null]]);
recipes.addShaped(<modularmachinery:blockoutputbus:2>, [[null, <appliedenergistics2:material>, null],[<appliedenergistics2:material>, <modularmachinery:blockoutputbus:1>, <appliedenergistics2:material>], [null, <appliedenergistics2:material>, null]]);

#energy hatches
recipes.addShaped(<modularmachinery:blockenergyinputhatch:3>, [[null, <botania:manaresource:7>, null],[<botania:manaresource:7>, <modularmachinery:blockenergyinputhatch:2>, <botania:manaresource:7>], [null, <botania:manaresource:7>, null]]);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:4>, [[null, <contenttweaker:planetshard>, null],[<contenttweaker:planetshard>, <modularmachinery:blockenergyinputhatch:3>, <contenttweaker:planetshard>], [null, <contenttweaker:planetshard>, null]]);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:2>, [[null, <appliedenergistics2:material>, null],[<appliedenergistics2:material>, <modularmachinery:blockenergyinputhatch:1>, <appliedenergistics2:material>], [null, <appliedenergistics2:material>, null]]);
