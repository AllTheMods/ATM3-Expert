import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
 
/* 
   
   Start of tier 1
   Gamestages
   
*/   
 
#Storage crates
   val Astorage = [
    <actuallyadditions:item_chest_to_crate_upgrade>,
	<actuallyadditions:item_small_to_medium_crate_upgrade>,
	<actuallyadditions:item_medium_to_large_crate_upgrade>,
	<actuallyadditions:item_crate_keeper>,
	<actuallyadditions:block_giant_chest_large>,
    <actuallyadditions:block_giant_chest_medium>,
    <actuallyadditions:block_giant_chest>]as IIngredient[];
	
val AL = Astorage.length;
	
	for i in 0 to AL{
	
	    mods.recipestages.Recipes.setRecipeStage("crates", Astorage[i]);
	}
	
#Scannables
 mods.recipestages.Recipes.setRecipeStageByMod("scanners", "scannable");

/*
  Start of tier 2
  Game Stages
*/

#building gadgets
 mods.recipestages.Recipes.setRecipeStageByMod("gadgets", "buildinggadgets");
  recipes.remove(<buildinggadgets:destructiontool>);
   mods.recipestages.Recipes.addShaped("gadgets", 
    <buildinggadgets:destructiontool>, 
    [[<actuallyadditions:item_crystal:5>, <minecraft:ender_pearl>, <actuallyadditions:item_crystal:5>],
    [<minecraft:ender_pearl>, <thermalfoundation:material:640>, <minecraft:ender_pearl>], 
    [<actuallyadditions:item_crystal:5>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal:5>]]);

  recipes.remove(<buildinggadgets:buildingtool>);
   mods.recipestages.Recipes.addShaped("gadgets", 
    <buildinggadgets:buildingtool>, 
    [[<actuallyadditions:item_crystal:5>, <minecraft:gold_ingot>, <actuallyadditions:item_crystal:5>],
    [<actuallyadditions:item_crystal_empowered:1>, <thermalfoundation:material:640>, <actuallyadditions:item_crystal_empowered:1>], 
    [<actuallyadditions:item_crystal:5>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal:5>]]);

/*
  Start of tier 3
  Game Stages
*/
#Environmental controller
   val Econtrol = [
    <rftools:environmental_controller>,
	<rftools:regeneration_module>,
	<rftools:regenerationplus_module>,
	<rftools:speed_module>,
    <rftools:speedplus_module>,
    <rftools:haste_module>,
    <rftools:hasteplus_module>,
	<rftools:saturation_module>,
	<rftools:saturationplus_module>,
	<rftools:featherfalling_module>,
	<rftools:featherfallingplus_module>,
	<rftools:peaceful_module>,
	<rftools:waterbreathing_module>,
	<rftools:nightvision_module>,
	<rftools:blindness_module>,
	<rftools:weakness_module>,
	<rftools:poison_module>,
	<rftools:slowness_module>,
	<rftools:glowing_module>,
	<rftools:luck_module>,
	<rftools:noteleport_module>]as IIngredient[];
	
val EC = Econtrol.length;
	
	for i in 0 to EC{
	
	    mods.recipestages.Recipes.setRecipeStage("control", Econtrol[i]);
	}
	
#spectre energy injector
  mods.recipestages.Recipes.setRecipeStage("injector", <randomthings:spectreenergyinjector>);
   
/*
  Start of tier 4
  Game Stages
*/

#ae2 wireless upgrade
 recipes.remove(<ae2wtlib:infinity_booster_card>);
  mods.recipestages.Recipes.addShaped("infinity", <ae2wtlib:infinity_booster_card>,
   [[<threng:material:14>, <mekanism:polyethene:2>, <contenttweaker:elementiumprocessor>],
   [<ic2c_extras:plutoniumingot>, <atmtweaks:item_material:10>, <ic2c_extras:plutoniumingot>], 
   [<contenttweaker:elementiumprocessor>, <mekanism:polyethene:2>, <threng:material:14>]]);
  
#time in a bottle
 recipes.remove(<randomthings:timeinabottle>);
  mods.recipestages.Recipes.addShaped("bottledtime", <randomthings:timeinabottle>, 
   [[<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:3>],
   [<thermalfoundation:storage_alloy>, <minecraft:clock>, <thermalfoundation:storage_alloy>],
   [<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered:4>]]);
   
/*
  Dimensional
  Game Stages
*/

#Nether// End// Atum
 mods.DimensionStages.addDimensionStage("nether", -1);
  mods.DimensionStages.addDimensionStage("end", 1); 
   mods.DimensionStages.addDimensionStage("atum", 17); 
  