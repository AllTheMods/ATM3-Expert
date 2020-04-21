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

val germanium = <alchemistry:ingot:32>;
print("advanced generator recipes");

#Remove and hide
mods.jei.JEI.removeAndHide(<advgenerators:turbine_iron>);
mods.jei.JEI.removeAndHide(<advgenerators:turbine_rotor_iron>);
mods.jei.JEI.removeAndHide(<advgenerators:turbine_blade_iron>);
mods.jei.JEI.removeAndHide(<advgenerators:turbine_gold>);
mods.jei.JEI.removeAndHide(<advgenerators:turbine_kit_gold>);
mods.jei.JEI.removeAndHide(<advgenerators:turbine_rotor_gold>);
mods.jei.JEI.removeAndHide(<advgenerators:turbine_kit_gold>);
mods.jei.JEI.removeAndHide(<advgenerators:turbine_kit_steel>);
mods.jei.JEI.removeAndHide(<advgenerators:turbine_bronze>);
mods.jei.JEI.removeAndHide(<advgenerators:turbine_kit_bronze>);
mods.jei.JEI.removeAndHide(<advgenerators:turbine_rotor_bronze>);
mods.jei.JEI.removeAndHide(<advgenerators:turbine_blade_bronze>);

#turbine recipes//use upgrade kits
recipes.remove(<advgenerators:turbine_enderium>);
recipes.remove(<advgenerators:turbine_manyullyn>);
recipes.remove(<advgenerators:turbine_adv_alloy>);

#descriptions// .addTooltip(format.white(""));
<advgenerators:turbine_enderium>.addTooltip(format.red("Use turbine upgrade kit on steel"));
<advgenerators:turbine_manyullyn>.addTooltip(format.red("Use turbine upgrade kit on steel"));
<advgenerators:turbine_steel>.addTooltip(format.red("Use turbine upgrade kit to upgrade"));
<advgenerators:turbine_adv_alloy>.addTooltip(format.red("Use turbine upgrade kit on steel"));

#parts
recipes.remove(<advgenerators:iron_wiring>);
recipes.remove(<advgenerators:iron_tubing>);
recipes.remove(<advgenerators:power_io>);
recipes.addShaped("ctagwiring", <advgenerators:iron_wiring> * 4, [[null, <actuallyadditions:item_crystal>, <immersiveengineering:material:2>],[<actuallyadditions:item_crystal>, <immersiveengineering:material:2>, <actuallyadditions:item_crystal>], [<immersiveengineering:material:2>, <actuallyadditions:item_crystal>, null]]);
recipes.addShaped("ctagtubing", <advgenerators:iron_tubing> * 4, [[null, <actuallyadditions:item_crystal:5>, <immersiveengineering:material:2>],[<actuallyadditions:item_crystal:5>, <immersiveengineering:material:2>, <actuallyadditions:item_crystal:5>], [<immersiveengineering:material:2>, <actuallyadditions:item_crystal:5>, null]]);
recipes.addShaped("ctagpresvalve", <advgenerators:advanced_pressure_valve>, [[<contenttweaker:quartzplate>, <thermalfoundation:material:359>, <contenttweaker:quartzplate>],[<advgenerators:iron_tubing>, <advgenerators:iron_wiring>, <advgenerators:iron_tubing>], [<contenttweaker:quartzplate>, <thermalfoundation:material:359>, <contenttweaker:quartzplate>]]);
recipes.addShaped("ctagpowerio", <advgenerators:power_io>, [[null, <thermalfoundation:material:160>, null],[<thermalfoundation:material:160>, <actuallyadditions:block_crystal_empowered>, <thermalfoundation:material:160>], [<thermalfoundation:material:160>, <thermalfoundation:material:160>, <thermalfoundation:material:160>]]);

#ic2 recipes//blame the mod dev for not supporting ic2c
recipes.addShaped(<advgenerators:turbine_rotor_adv_alloy>, [[<advgenerators:turbine_blade_adv_alloy>, <advgenerators:turbine_blade_adv_alloy>, <advgenerators:turbine_blade_adv_alloy>],[<advgenerators:turbine_blade_adv_alloy>, <ic2:itemmisc:257>, <advgenerators:turbine_blade_adv_alloy>], [<advgenerators:turbine_blade_adv_alloy>, <advgenerators:turbine_blade_adv_alloy>, <advgenerators:turbine_blade_adv_alloy>]]);
recipes.addShaped(<advgenerators:turbine_blade_adv_alloy> * 4, [[null, <ic2:itemmisc:257>, <ic2:itemmisc:257>],[null, <ic2:itemmisc:257>, <ic2:itemmisc:257>], [null, null, <ic2:itemmisc:257>]]);
recipes.addShaped(<advgenerators:eu_output_iv>, [[null, <ic2:blockelectric:13>, null],[<ic2:itemcable:16>, <advgenerators:eu_output_hv>, <ic2:itemcable:16>], [null, <ic2:blockelectric:13>, null]]);
recipes.addShaped(<advgenerators:eu_output_ev>, [[null, <ic2:blockelectric:11>, null],[<ic2:itemcable:9>, <advgenerators:eu_output_hv>, <ic2:itemcable:9>], [null, <ic2:blockelectric:11>, null]]);
recipes.addShaped(<advgenerators:eu_output_hv>, [[germanium, <ic2:blockelectric:10>, germanium],[<ic2:itemcable:8>, <advgenerators:forge_output>, <ic2:itemcable:8>], [germanium, <ic2:blockelectric:10>, germanium]]);
recipes.addShaped(<advgenerators:eu_output_mv>, [[germanium, <ic2:blockelectric:9>, germanium],[<ic2:itemcable:4>, <advgenerators:forge_output>, <ic2:itemcable:4>], [germanium, <ic2:blockelectric:9>, germanium]]);
recipes.addShaped(<advgenerators:eu_output_lv>, [[germanium, <ic2:blockelectric:8>, germanium],[<ic2:itemcable:1>, <advgenerators:forge_output>, <ic2:itemcable:1>], [germanium, <ic2:blockelectric:8>, germanium]]);
