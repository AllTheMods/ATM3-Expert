##########################################################################################
#modloaded logisticspipes
#priority 100
import mods.jei.JEI.removeAndHide as rh;

print("==================== loading mods logisticspipes.zs ====================");
##########################################################################################


### REMOVE ITEMS NOT IMPLEMENTED ###
rh(<logisticspipes:parts>);
rh(<logisticspipes:parts:1>);
rh(<logisticspipes:parts:2>);
rh(<logisticspipes:parts:3>);
rh(<logisticspipes:hud_glasses>);
rh(<logisticspipes:upgrade_logic_controller>);
rh(<logisticspipes:power_provider_rf>);
rh(<logisticspipes:power_provider_eu>);
rh(<logisticspipes:power_provider_mj>);
rh(<logisticspipes:upgrade_power_transportation>);
rh(<logisticspipes:upgrade_power_supplier_rf>);
rh(<logisticspipes:upgrade_power_supplier_eu_lv>);
rh(<logisticspipes:upgrade_power_supplier_eu_mv>);
rh(<logisticspipes:upgrade_power_supplier_eu_hv>);
rh(<logisticspipes:upgrade_power_supplier_eu_ev>);
rh(<logisticspipes:broken_item>);

### TOOLTIPS ###
<logisticspipes:crafting_table>.addTooltip("Used for autocrafting with Logistics");
<logisticspipes:crafting_table_fuzzy>.addTooltip("Used for oredict autocrafting with Logistics");
<logisticspipes:pipe_request_table>.addTooltip("This is your Logistics Crafting Terminal");

### CRAFTING RECIPES ###

// raw basic chip
recipes.remove(<logisticspipes:chip_basic_raw>);
recipes.addShapedMirrored(<logisticspipes:chip_basic_raw> * 2, [
    [null, <thermalfoundation:material:32>, null],
    [<ic2:itemmisc:53>, <minecraft:sandstone>, <ic2:itemmisc:53>],
    [null, <thermalfoundation:material:32>, null]
]);

// raw fpga
recipes.remove(<logisticspipes:chip_fpga_raw>);
recipes.addShaped(<logisticspipes:chip_fpga_raw> * 16, [
    [<ore:sand>, <ic2:itemmisc:53>, <ore:sand>],
    [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>],
    [<ore:sand>, <ore:gemLapis>, <ore:sand>]
]);

// request logistics pipe
recipes.remove(<logisticspipes:pipe_request>);
recipes.addShaped(<logisticspipes:pipe_request>, [
    [<thermalfoundation:material:354>, <thermalfoundation:material:354>, <ore:dustRedstone>],
    [<logisticspipes:pipe_basic>, <logisticspipes:chip_basic>, <logisticspipes:pipe_basic>],
    [<ore:dustRedstone>, <thermalfoundation:material:354>, <thermalfoundation:material:354>]
]);

// request logistics pipe mk2
recipes.remove(<logisticspipes:pipe_request_mk2>);
recipes.addShaped(<logisticspipes:pipe_request_mk2>, [
    [<ore:ingotIron>, <logisticspipes:chip_advanced>, <ore:dustRedstone>],
    [<contenttweaker:manadiamondplate>, <logisticspipes:pipe_request>, <contenttweaker:manadiamondplate>],
    [<ore:dustRedstone>, <logisticspipes:chip_advanced>, <ore:ingotIron>]
]);


##########################################################################################
print("==================== end of mods logisticspipes.zs ====================");
