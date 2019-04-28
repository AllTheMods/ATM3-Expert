#loader contenttweaker 

import mods.contenttweaker.Color;
import mods.contenttweaker.VanillaFactory;

var moltenSand = VanillaFactory.createFluid("Molten_Sand", Color.fromHex("E8EEBB"));
moltenSand.register();

var moltenGrout = VanillaFactory.createFluid("Liquid_Grout", Color.fromHex("434147"));
moltenGrout.register();

var solderingalloy =  VanillaFactory.createFluid("Soldering_Alloy", Color.fromHex("959191"));
solderingalloy.register();