##########################################################################################
#modloaded unidict
#priority 500

import crafttweaker.oredict.IOreDictEntry;
import mods.unidict.removalByKind;

print("==================== loading misc oredict.zs ====================");
##########################################################################################


### ORE DICTIONARY ###

// obsidian dust
<ore:dustObsidian>.add(<ic2:itemmisc:9>);
<ore:dustObsidian>.add(<thermalfoundation:material:770>);

// empowered restonia
<ore:blockCrystalEmpoweredRestonia>.add(<actuallyadditions:block_crystal_empowered:0>);
// empowered palis
<ore:blockCrystalEmpoweredPalis>.add(<actuallyadditions:block_crystal_empowered:1>);
// empowered diamatine
<ore:blockCrystalEmpoweredDiamatine>.add(<actuallyadditions:block_crystal_empowered:2>);
// empowered void
<ore:blockCrystalEmpoweredVoid>.add(<actuallyadditions:block_crystal_empowered:3>);
// empowered emeradic
<ore:blockCrystalEmpoweredEmeradic>.add(<actuallyadditions:block_crystal_empowered:4>);
// empowered enori
<ore:blockCrystalEmpoweredEnori>.add(<actuallyadditions:block_crystal_empowered:5>);

// black quartz
<ore:blockQuartzBlack>.add(<actuallyadditions:block_misc:2>);
// ethetic quartz
<ore:blockQuartzEthetic>.add(<actuallyadditions:block_testifi_bucks_white_wall>);

// hardened glass copper
<ore:blockGlassHardenedCopper>.add(<thermalfoundation:glass:0>);
// hardened glass tin
<ore:blockGlassHardenedTin>.add(<thermalfoundation:glass:1>);
// hardened glass silver
<ore:blockGlassHardenedSilver>.add(<thermalfoundation:glass:2>);
// hardened glass lead
<ore:blockGlassHardenedLead>.add(<thermalfoundation:glass:3>);
// hardened glass aluminum
<ore:blockGlassHardenedAluminum>.add(<thermalfoundation:glass:4>);
// hardened glass nickel
<ore:blockGlassHardenedNickel>.add(<thermalfoundation:glass:5>);
// hardened glass platinum
<ore:blockGlassHardenedPlatinum>.add(<thermalfoundation:glass:6>);

// vis crystals
val itemVisCrystal = <ore:itemVisCrystal>;
itemVisCrystal.add(<thaumcraft:crystal_essence:*>);


### UNIDICT ###

removalByKind.get("Crafting").remove("gear");
removalByKind.get("Crafting").remove("plate");


##########################################################################################
print("==================== end of misc oredict.zs ====================");
