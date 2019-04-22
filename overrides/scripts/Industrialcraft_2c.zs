#industrialcraft 2 classic recipes

import mods.jei.JEI.removeAndHide;

val = slag <immersiveengineering:material:7>
val = concrete <immersiveengineering:stone_decoration:5>

#Stone macerator recipe
mods.jei.JEI.removeAndHide(<ic2:blockmachinelv:15>);

#Macerator
recipes.remove(<ic2:blockmachinelv:3>);
recipes.addshaped(<<ic2:blockmachinelv:3>,
[[slag, slag, slag],
[concrete, <ic2:blockmachinelv>, concrete],
[null, <ic2:itemmisc:451>, null]]);