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
import mods.forestry.ThermionicFabricator; # mods.forestry.ThermionicFabricator.addCast(,    [[],   [],   []],    <liquid: glass> * 200);

print("AE2 recipe changes");

#certus gen from end ores
furnace.addRecipe(<appliedenergistics2:material:1> * 2, <netherendingores:ore_end_modded_1:10>, 0.0);
furnace.addRecipe(<appliedenergistics2:material> * 4, <netherendingores:ore_end_modded_1:9>, 0.0);
#circuit etcher
recipes.remove(<threng:machine:2>);
recipes.addShaped(<threng:machine:2>,
 [[<appliedenergistics2:material:14>, <enderio:item_material:1>, <appliedenergistics2:material:15>],
 [<contenttweaker:elementiumprocessor>, <threng:material:4>, <contenttweaker:elementiumprocessor>],
 [<appliedenergistics2:material:13>, <teslacorelib:machine_case>, <appliedenergistics2:material:19>]]);

#elementiumprocessor
mods.appliedenergistics2.Inscriber.addRecipe(<contenttweaker:elementiumprocessor>, <contenttweaker:elementiumprint>, false, <ore:dustRedstone>, <appliedenergistics2:material:20>);
mods.appliedenergistics2.Inscriber.addRecipe(<contenttweaker:elementiumprint>, <botania:manaresource:7>, true, <appliedenergistics2:material:14>);

#quartz glass
recipes.remove(<appliedenergistics2:quartz_glass>);
mods.forestry.ThermionicFabricator.addCast(<appliedenergistics2:quartz_glass> *3, 
 [[<botania:quartz:6>, <botania:managlass>, <botania:quartz:1>], 
 [<botania:managlass>, <thermalfoundation:glass_alloy>, <botania:managlass>],
 [<botania:quartz:1>, <botania:managlass>, <botania:quartz:6>]], 
 <liquid: glass> * 250);

#energy acceptor
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.addShaped("CTaeenergyinput", <appliedenergistics2:energy_acceptor>, [[<contenttweaker:quartzplate>, <thermalfoundation:material:160>, <contenttweaker:quartzplate>],[<actuallyadditions:item_crystal_empowered>, <appliedenergistics2:fluix_block>, <actuallyadditions:item_crystal_empowered>], [<contenttweaker:quartzplate>, <thermalfoundation:material:160>, <contenttweaker:quartzplate>]]);

#me controller
recipes.remove(<appliedenergistics2:controller>);
recipes.addShaped("CTmecontroller", <appliedenergistics2:controller>, 
 [[<contenttweaker:elementiumprocessor>, <alchemistry:ingot:94>, <contenttweaker:elementiumprocessor>],
 [<appliedenergistics2:material:12>, <actuallyadditions:block_crystal_empowered:5>, <appliedenergistics2:material:12>],
 [<contenttweaker:elementiumprocessor>, <alchemistry:ingot:94>, <contenttweaker:elementiumprocessor>]]);

#inscriber
recipes.remove(<appliedenergistics2:inscriber>);
recipes.addShaped("CTae2inscriber", <appliedenergistics2:inscriber>, [[<thermalfoundation:material:160>, <thermalfoundation:material:160>, <thermalfoundation:material:160>],[<contenttweaker:quartzplate>, <minecraft:piston>, <astralsorcery:itemcraftingcomponent:1>], [<thermalfoundation:material:160>, <thermalfoundation:material:160>, <thermalfoundation:material:160>]]);

#ME drive
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped("CTae2drive", <appliedenergistics2:drive>, [[<thermalfoundation:material:160>, <ore:stickSteel>, <thermalfoundation:material:160>],[<contenttweaker:quartzingot>, <rftools:modular_storage>, <contenttweaker:quartzingot>], [<thermalfoundation:material:160>, <ore:stickSteel>, <thermalfoundation:material:160>]]);

#crafting unit 
recipes.remove(<appliedenergistics2:crafting_unit>);
recipes.addShapedMirrored(<appliedenergistics2:crafting_unit>, 
 [[<appliedenergistics2:material:7>, <thermalfoundation:material:160>, <appliedenergistics2:material:7>],
 [<contenttweaker:quartzplate>, <contenttweaker:elementiumprocessor>, <contenttweaker:quartzplate>],
 [<appliedenergistics2:material:7>, <thermalfoundation:material:160>, <appliedenergistics2:material:7>]]);

#1k storage unit
recipes.remove(<appliedenergistics2:material:35>);
recipes.addShaped("CT1kstorage", <appliedenergistics2:material:35>, [[<thaumcraft:ingot>, <ironchest:iron_chest:3>, <thaumcraft:ingot>],[<actuallyadditions:item_crystal>, <appliedenergistics2:material:22>, <actuallyadditions:item_crystal>], [<thermalfoundation:material:160>, <thermalfoundation:material:515>, <thermalfoundation:material:160>]]);

#annihi core
recipes.remove(<appliedenergistics2:material:44>);
recipes.addShapedMirrored("CTannihicore", <appliedenergistics2:material:44>, [[null, <appliedenergistics2:material:8>, null],[<minecraft:quartz>, <appliedenergistics2:material:22>, <actuallyadditions:item_crystal>], [null, null, null]]);

#formation core
recipes.remove(<appliedenergistics2:material:43>);
recipes.addShapedMirrored("CTformationcore", <appliedenergistics2:material:43>, [[null, <appliedenergistics2:material:8>, null],[<appliedenergistics2:material>, <appliedenergistics2:material:22>, <actuallyadditions:item_crystal>], [null, null, null]]);

#wireless reciever
recipes.remove(<appliedenergistics2:wireless_access_point>);
recipes.addShaped("CTae2wirelessreciever", <appliedenergistics2:wireless_access_point>, [[null, <appliedenergistics2:material:41>, null],[<contenttweaker:quartzingot>, <actuallyadditions:block_item_viewer>, <contenttweaker:quartzingot>], [<contenttweaker:quartzingot>, <appliedenergistics2:material:12>, <contenttweaker:quartzingot>]]);

#fluix pearl
recipes.remove(<appliedenergistics2:material:9>);
recipes.addShaped("CTfluixpearl", <appliedenergistics2:material:9>, [[null, <appliedenergistics2:material:12>, null],[<appliedenergistics2:material:12>, <rftools:infused_enderpearl>, <appliedenergistics2:material:12>], [null, <appliedenergistics2:material:12>, null]]);

#quartz glass
mods.forestry.ThermionicFabricator.addCast(<appliedenergistics2:quartz_glass> *2, 
[[null, <ore:dustQuartz>, null],
[<ore:dustQuartz>, <botania:managlass>, <ore:dustQuartz>],
[null, <ore:dustQuartz>, null]], 
<liquid: glass> * 100);

#pattern terminal
recipes.remove(<appliedenergistics2:part:340>);
recipes.addShapeless("Ctpatternterminal", <appliedenergistics2:part:340>, 
[<appliedenergistics2:part:360>,<contenttweaker:elementiumprocessor>]);

#ae2 tool removal
mods.jei.JEI.removeAndHide(<appliedenergistics2:certus_quartz_axe>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:certus_quartz_spade>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:certus_quartz_hoe>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:certus_quartz_pickaxe>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:certus_quartz_sword>);

#quartz tools
mods.jei.JEI.removeAndHide(<appliedenergistics2:nether_quartz_axe>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:nether_quartz_hoe>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:nether_quartz_spade>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:nether_quartz_pickaxe>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:nether_quartz_sword>);