import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.tconstruct.Casting;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import mods.tcomplement.Overrides;
import mods.tconstruct.Drying;
import mods.tconstruct.Alloy;
import mods.jei.JEI.removeAndHide;
import mods.immersiveengineering.ArcFurnace;

print("Tinkers changes start here");

#remove efln
recipes.remove(<tconstruct:throwball:1>);

val searedStone = <ore:blockSeared>;
val tin = <thermalfoundation:material:129>;
val porcelainBrick = <ceramics:unfired_clay:5>;
val flintshard = <tconstruct:shard>.withTag({Material: "flint"});

#add osmiridium & osgloglas to arc furnace
mods.immersiveengineering.ArcFurnace.addRecipe(<plustic:osmiridiumingot>, <ore:ingotOsmium>, null, 400, 512, [<ore:ingotIridium>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<plustic:osgloglasingot>, <ore:ingotOsmium>, null, 400, 512, [<ore:ingotRefinedObsidian>, <ore:ingotRefinedGlowstone>]);


#flint shard
recipes.addShapeless(flintshard * 4, [<minecraft:flint>]);

#remove grout
recipes.removeShapeless(<tconstruct:soil>);

# porcelain melter
recipes.removeShaped(<tcomplement:porcelain_melter>);
recipes.addShaped("CtPorcsmelt",<tcomplement:porcelain_melter>,
[[null,porcelainBrick,null],
[porcelainBrick,<ceramics:porcelain_barrel>,porcelainBrick],
[porcelainBrick,porcelainBrick,porcelainBrick]]);

#porcelain heater
recipes.removeShaped(<tcomplement:porcelain_melter:8>);
recipes.addShaped("CtPorcHeater",<tcomplement:porcelain_melter:8>,
[[null,porcelainBrick,null],
[porcelainBrick,porcelainBrick,porcelainBrick],
[porcelainBrick,<atum:kiln>,porcelainBrick]]);

#porc alloy tank
recipes.removeShaped(<tcomplement:porcelain_alloy_tank>);
recipes.addShaped("CtPorcAlloy",<tcomplement:porcelain_alloy_tank>,
[[null,<ceramics:faucet>,null],
[<ceramics:porcelain_barrel>,null,<ceramics:porcelain_barrel>],
[null,<ceramics:faucet>,null]]);

#vitrified_sand sharpening kit
recipes.addShaped(<tconstruct:sharpening_kit>.withTag({Material: "vitrified_sand"}), [[null, <minecraft:sand>, null],[<minecraft:sand>, <tconstruct:seared>, <minecraft:sand>], [null, <minecraft:sand>, null]]);


#smeltery controller
recipes.removeShaped(<tconstruct:smeltery_controller>);
recipes.addShaped("CtSmeltControl",<tconstruct:smeltery_controller>,
[[<minecraft:brick>,searedStone,<minecraft:brick>],
[searedStone,<tcomplement:porcelain_melter>,searedStone],
[<minecraft:brick>, tin,<minecraft:brick>]]);

#patterns
#recipes.removeShaped(<tconstruct:pattern>);
#mods.tconstruct.Drying.addRecipe(<tconstruct:pattern>,<tconstruct:pattern>, 300);

#Removing Alloys from Smeltery Alloying

mods.tconstruct.Alloy.removeRecipe(<liquid:steel>, [<liquid:iron>, <liquid:coal>]);
mods.tconstruct.Alloy.removeRecipe(<liquid:dark_steel>, [<liquid:iron>, <liquid:coal>, <liquid:obsidian>]);
mods.tconstruct.Alloy.removeRecipe(<liquid:hard_carbon>, [<liquid:diamond>, <liquid:coal>]);
mods.tconstruct.Alloy.removeRecipe(<liquid:pulsating_iron>, [<liquid:iron>, <liquid:ender>]);
mods.tconstruct.Alloy.removeRecipe(<liquid:vibrant_alloy>, [<liquid:energetic_alloy>, <liquid:ender>]);
mods.tconstruct.Alloy.removeRecipe(<liquid:lumium>, [<liquid:tin>, <liquid:silver>, <liquid:glowstone>]);
mods.tconstruct.Alloy.removeRecipe(<liquid:conductive_iron>, [<liquid:redstone>, <liquid:iron>]);
mods.tconstruct.Alloy.removeRecipe(<liquid:energetic_alloy>, [<liquid:redstone>, <liquid:gold>, <liquid:glowstone>]);

mods.tconstruct.Alloy.removeRecipe(<liquid:signalum>);
mods.tconstruct.Alloy.removeRecipe(<liquid:enderium>);
mods.tconstruct.Alloy.removeRecipe(<liquid:dark_steel>);
mods.tconstruct.Alloy.removeRecipe(<liquid:hard_carbon>);

#add sand pickaxe

val sandMat = mods.contenttweaker.tconstruct.MaterialBuilder.create("vitrified_sand");
sandMat.color = 0xf7e4a1;
sandMat.craftable = true;
sandMat.liquid = <liquid:molten_sand>;
sandMat.castable = true;
sandMat.addHeadMaterialStats(400, 5.5f, 5.5f,2);
sandMat.addHandleMaterialStats(0.5, 400);
sandMat.addBowStringMaterialStats(0.5f);
sandMat.register();

#add soldered pickaxe
val solderingmat = mods.contenttweaker.tconstruct.MaterialBuilder.create("soldering_alloy");
solderingmat.color = 0xf7e4a1;
solderingmat.craftable = true;
solderingmat.liquid = <liquid:soldering_alloy>;
solderingmat.castable = true;
solderingmat.addHeadMaterialStats(1000, 7.5f, 7.5f,3);
solderingmat.addHandleMaterialStats(0.7, 500);
solderingmat.addBowStringMaterialStats(0.5f);
solderingmat.register();

#meltable

mods.tconstruct.Melting.addRecipe(<liquid:molten_sand> * 1296,<extrautils2:compressedsand>, 400);
mods.tconstruct.Melting.removeRecipe(<liquid:clay>);
mods.tconstruct.Melting.addRecipe(<liquid:clay> * 144,<minecraft:clay_ball>, 350);
mods.tconstruct.Melting.addRecipe(<liquid:clay> * 576,<minecraft:clay>, 400);

mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <immersiveengineering:sword_steel>);
mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <immersiveengineering:shovel_steel>);
mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <immersiveengineering:axe_steel>);
mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <immersiveengineering:pickaxe_steel>);
mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <immersiveengineering:material:16>);
mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <immersiveengineering:steel_armor_legs>);
mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <immersiveengineering:steel_armor_head>);
mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <immersiveengineering:steel_armor_chest>);
mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <immersiveengineering:steel_armor_feet>);

mods.tconstruct.Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_helmet>);
mods.tconstruct.Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_chestplate>);
mods.tconstruct.Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_leggings>);
mods.tconstruct.Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_boots>);
mods.tconstruct.Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_pickaxe>);
mods.tconstruct.Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_axe>);
mods.tconstruct.Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_crook>);
mods.tconstruct.Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_shears>);
mods.tconstruct.Melting.removeRecipe(<liquid:dark_steel>, <enderio:item_dark_steel_sword>);

#alloys
#liquid grout
mods.tconstruct.Alloy.addRecipe(<liquid:liquid_grout> * 576, [<liquid:molten_sand> * 144, <liquid:clay> * 144]);

#soldering alloy
mods.tconstruct.Alloy.addRecipe(<liquid:soldering_alloy> * 288, [<liquid:manasteel> * 144, <liquid:lead> * 144, <liquid:silver> * 144]);

# add casting basin recipe.

//mods.tconstruct.Casting.addBasinRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time)

mods.tconstruct.Casting.addBasinRecipe(<tconstruct:seared>,<minecraft:gravel>,<liquid:liquid_grout>,576,true,200);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:materials>, flintshard, <liquid:liquid_grout>, 144, true, 50);

#Changing Tinkers Forge
recipes.remove(<tconstruct:toolforge>);
recipes.addShaped("CtToolForge",<tconstruct:toolforge>.withTag({textureBlock: {id: "enderio:block_alloy", Count: 1 as byte, Damage: 0 as short}}),
[[<actuallyadditions:block_crystal_empowered:3>,<actuallyadditions:block_crystal_empowered:3>,<actuallyadditions:block_crystal_empowered:3>],
[<actuallyadditions:block_crystal_empowered:5>,<tconstruct:tooltables:3>,<actuallyadditions:block_crystal_empowered:5>],
[<actuallyadditions:block_crystal_empowered:5>,null,<actuallyadditions:block_crystal_empowered:5>]]);

#changing Seared items recipes.
recipes.removeShaped(<tconstruct:smeltery_io>);
recipes.removeShaped(<tconstruct:casting:1>);
recipes.removeShaped(<tconstruct:casting>);
recipes.removeShaped(<tconstruct:faucet>);
recipes.removeShaped(<tconstruct:seared_tank>);
recipes.removeShaped(<tconstruct:channel>);   
recipes.removeShaped(<tcomplement:alloy_tank>);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:faucet>,<ceramics:faucet>,<liquid:liquid_grout>,288,true,200);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:casting:1>,<tcomplement:porcelain_casting:1>,<liquid:liquid_grout>,288,true,200);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:casting>,<tcomplement:porcelain_casting>,<liquid:liquid_grout>,288,true,200);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:seared_tank>,<tcomplement:porcelain_tank>,<liquid:liquid_grout>,288,true,200);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:smeltery_io>,<ceramics:clay_hard>,<liquid:liquid_grout>,288,true,200);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:channel>,<ceramics:channel>,<liquid:liquid_grout>,288,true,200);
mods.tconstruct.Casting.addBasinRecipe(<tcomplement:alloy_tank>,<tcomplement:porcelain_alloy_tank>,<liquid:liquid_grout>,288,true,200);

#slime boots
recipes.remove(<tconstruct:slime_boots>);
recipes.addShaped("CTtcbootsgreen", <tconstruct:slime_boots>, [[null, null, null],[<ic2:itemmisc:450>, <ic2:itemmisc:254>, <ic2:itemmisc:450>], [<tconstruct:slime_congealed>, <ic2:itemarmorrubboots>, <tconstruct:slime_congealed>]]);
mods.jei.JEI.removeAndHide(<tconstruct:slime_boots:1>);
mods.jei.JEI.removeAndHide(<tconstruct:slime_boots:2>);
mods.jei.JEI.removeAndHide(<tconstruct:slime_boots:3>);
mods.jei.JEI.removeAndHide(<tconstruct:slime_boots:4>);

#slimesling
recipes.remove(<tconstruct:slimesling>);
recipes.addShaped(<tconstruct:slimesling>, [[<actuallyadditions:item_crystal:2>, <tconstruct:slime_congealed>, <actuallyadditions:item_crystal:2>],[<tconstruct:slime_congealed>, null, <minecraft:slime_ball>], [null, <tconstruct:slime_congealed>, null]]);
mods.jei.JEI.removeAndHide(<tconstruct:slimesling:1>);
mods.jei.JEI.removeAndHide(<tconstruct:slimesling:2>);
mods.jei.JEI.removeAndHide(<tconstruct:slimesling:3>);
mods.jei.JEI.removeAndHide(<tconstruct:slimesling:4>);

#Primal Mana
mods.tconstruct.Alloy.addRecipe(<liquid:mana> * 288, [<liquid:gold> * 32, <liquid:liquid_death> * 100, <liquid:xpjuice> * 80, <liquid:manasteel> * 32, <liquid:pyrotheum> * 125 ]);

#Runic Matrix
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:infusion_matrix>);
mods.tconstruct.Casting.addBasinRecipe(<thaumcraft:infusion_matrix>, <contenttweaker:infusion_block>, <liquid:mana>, 288, true, 1000);

#Mana Infused Ore
mods.tconstruct.Casting.addBasinRecipe(<thermalfoundation:ore:8>, <thermalfoundation:ore:6>, <liquid:mana>, 72, true, 100);

#Firewood Gated
recipes.remove(<tconstruct:firewood:1>);
recipes.addShaped("Ctfirewood", <tconstruct:firewood:1>,
	[[<bloodmagic:lava_crystal>, <tconstruct:firewood>, null],
	[null, null, null],
	[null, null, null]]);