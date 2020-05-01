##########################################################################################
#modloaded environmentaltech
#priority 100

print("==================== loading mods environmentaltech.zs ====================");
##########################################################################################


### CRAFTING RECIPES ###

// ranged nano bot beacon tier 1
recipes.remove(<environmentaltech:nano_cont_ranged_1>);
recipes.addShaped(<environmentaltech:nano_cont_ranged_1>, [
    [<ore:blockLitherite>, <environmentaltech:mica>, <ore:blockLitherite>],
    [<contenttweaker:corruptedstarmetal>, <minecraft:beacon>, <contenttweaker:corruptedstarmetal>],
    [<environmentaltech:interconnect>, <environmentaltech:modifier_null>, <environmentaltech:interconnect>]
]);

// personal nano bot beacon tier 1
recipes.remove(<environmentaltech:nano_cont_personal_1>);
recipes.addShaped(<environmentaltech:nano_cont_personal_1>, [
    [<ore:blockLitherite>, <environmentaltech:mica>, <ore:blockLitherite>],
    [<contenttweaker:corruptedstarmetal>, <environmentaltech:nano_cont_ranged_1>, <contenttweaker:corruptedstarmetal>],
    [<environmentaltech:interconnect>, <environmentaltech:modifier_null>, <environmentaltech:interconnect>]
]);

// void ore miner controller tier 1
recipes.remove(<environmentaltech:void_ore_miner_cont_1>);
recipes.addShaped(<environmentaltech:void_ore_miner_cont_1>, [
    [<ore:blockLitherite>, <ore:blockDiamond>, <ore:blockLitherite>],
    [<contenttweaker:corruptedstarmetal>, <environmentaltech:diode>, <contenttweaker:corruptedstarmetal>],
    [<environmentaltech:interconnect>, <ore:etLaserLensColored>, <environmentaltech:interconnect>]
]);

// void botanic miner controller tier 1
recipes.remove(<environmentaltech:void_botanic_miner_cont_1>);
recipes.addShaped(<environmentaltech:void_botanic_miner_cont_1>, [
    [<ore:blockLitherite>, <minecraft:chorus_flower>, <ore:blockLitherite>],
    [<contenttweaker:corruptedstarmetal>, <environmentaltech:diode>, <contenttweaker:corruptedstarmetal>],
    [<environmentaltech:interconnect>, <ore:etLaserLensColored>, <environmentaltech:interconnect>]
]);

// void resource miner controller tier 1
recipes.remove(<environmentaltech:void_res_miner_cont_1>);
recipes.addShaped(<environmentaltech:void_res_miner_cont_1>, [
    [<ore:blockLitherite>, <ore:obsidian>, <ore:blockLitherite>],
    [<contenttweaker:corruptedstarmetal>, <environmentaltech:diode>, <contenttweaker:corruptedstarmetal>],
    [<environmentaltech:interconnect>, <ore:etLaserLensColored>, <environmentaltech:interconnect>]
]);


##########################################################################################
print("==================== end of mods environmentaltech.zs ====================");
