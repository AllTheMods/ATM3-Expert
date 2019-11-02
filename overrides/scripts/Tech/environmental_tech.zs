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
import mods.jei.JEI.removeAndHide as removal;

print("ET changes");

#tier 1 controllers
recipes.remove(<environmentaltech:nano_cont_ranged_1>);
recipes.remove(<environmentaltech:nano_cont_personal_1>);
recipes.remove(<environmentaltech:void_ore_miner_cont_1>);
recipes.remove(<environmentaltech:void_botanic_miner_cont_1>);
recipes.remove(<environmentaltech:void_res_miner_cont_1>);

recipes.addShaped(<environmentaltech:void_res_miner_cont_1>, [[<ore:blockLitherite>, <minecraft:obsidian>, <ore:blockLitherite>],[<contenttweaker:corruptedstarmetal>, <environmentaltech:diode>, <contenttweaker:corruptedstarmetal>], [<environmentaltech:interconnect>, <ore:etLaserLensColored>, <environmentaltech:interconnect>]]);
recipes.addShaped(<environmentaltech:void_botanic_miner_cont_1>, [[<ore:blockLitherite>, <minecraft:chorus_flower>, <ore:blockLitherite>],[<contenttweaker:corruptedstarmetal>, <environmentaltech:diode>, <contenttweaker:corruptedstarmetal>], [<environmentaltech:interconnect>, <ore:etLaserLensColored>, <environmentaltech:interconnect>]]);
recipes.addShaped(<environmentaltech:void_ore_miner_cont_1>, [[<ore:blockLitherite>, <minecraft:diamond_block>, <ore:blockLitherite>],[<contenttweaker:corruptedstarmetal>, <environmentaltech:diode>, <contenttweaker:corruptedstarmetal>], [<environmentaltech:interconnect>, <ore:etLaserLensColored>, <environmentaltech:interconnect>]]);
recipes.addShaped(<environmentaltech:nano_cont_personal_1>, [[<ore:blockLitherite>, <environmentaltech:mica>, <ore:blockLitherite>],[<contenttweaker:corruptedstarmetal>, <environmentaltech:nano_cont_ranged_1>, <contenttweaker:corruptedstarmetal>], [<environmentaltech:interconnect>, <environmentaltech:modifier_null>, <environmentaltech:interconnect>]]);
recipes.addShaped(<environmentaltech:nano_cont_ranged_1>, [[<ore:blockLitherite>, <environmentaltech:mica>, <ore:blockLitherite>],[<contenttweaker:corruptedstarmetal>, <minecraft:beacon>, <contenttweaker:corruptedstarmetal>], [<environmentaltech:interconnect>, <environmentaltech:modifier_null>, <environmentaltech:interconnect>]]);

#power gen removals
var etDisable  = [
<environmentaltech:lightning_cont_1>,
<environmentaltech:lightning_cont_2>,
<environmentaltech:solar_cont_1>,
<environmentaltech:solar_cont_2>,
<environmentaltech:solar_cont_3>,
<environmentaltech:solar_cont_4>,
<environmentaltech:solar_cont_5>,
<environmentaltech:solar_cont_6>,
<environmentaltech:lightning_cont_3>,
<environmentaltech:lightning_cont_4>,
<environmentaltech:lightning_cont_5>,
<environmentaltech:lightning_cont_6>,
<environmentaltech:lightning_rod>,
<environmentaltech:lightning_rod_insulated>
	]as IItemStack[];

val AL = etDisable.length;
	
	for i in 0 to AL{
	
	    mods.jei.JEI.removeAndHide(etDisable[i]);
	}
