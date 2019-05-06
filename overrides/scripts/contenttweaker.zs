#loader contenttweaker 

import mods.contenttweaker.Color;
import mods.contenttweaker.VanillaFactory;

var moltenSand = VanillaFactory.createFluid("Molten_Sand", Color.fromHex("E8EEBB"));
moltenSand.register();

var moltenGrout = VanillaFactory.createFluid("Liquid_Grout", Color.fromHex("434147"));
moltenGrout.register();

var solderingalloy =  VanillaFactory.createFluid("Soldering_Alloy", Color.fromHex("959191"));
solderingalloy.register();

var coldIronIngot = VanillaFactory.createItem("ColdIronIngot");
coldIronIngot.register();

var coldIronPlate = VanillaFactory.createItem("ColdIronPlate");
coldIronPlate.register();

var UnrefinedHotSteel = VanillaFactory.createItem("UnrefinedHotSteel");
UnrefinedHotSteel.register();

var QuartzIngot = VanillaFactory.createItem("QuartzIngot");
QuartzIngot.register();

var QuartzPlate = VanillaFactory.createItem("QuartzPlate");
QuartzPlate.register();

var ManaSteelPlate = VanillaFactory.createItem("ManaSteelPlate");
ManaSteelPlate.register();