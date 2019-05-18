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

#descriptions// .addTooltip(format.white("Use turbine upgrade kit on steel"));
<advgenerators:turbine_enderium>.addTooltip(format.white("Use turbine upgrade kit on steel"));
<advgenerators:turbine_manyullyn>.addTooltip(format.white("Use turbine upgrade kit on steel"));
<advgenerators:turbine_steel>.addTooltip(format.white("Use turbine upgrade kit to upgrade"));
<advgenerators:turbine_adv_alloy>.addTooltip(format.white("Use turbine upgrade kit on steel"));

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
