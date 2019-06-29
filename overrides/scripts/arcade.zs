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


#removing the coins we dont use 
mods.jei.JEI.removeAndHide(<ore:coinNickel>);
mods.jei.JEI.removeAndHide(<ore:coinCopper>);
mods.jei.JEI.removeAndHide(<ore:coinPlatinum>);
mods.jei.JEI.removeAndHide(<ore:coinSilver>);
mods.jei.JEI.removeAndHide(<ore:coinConstantan>);
mods.jei.JEI.removeAndHide(<ore:coinIridium>);
mods.jei.JEI.removeAndHide(<ore:coinAluminum>);
mods.jei.JEI.removeAndHide(<ore:coinInvar>);
mods.jei.JEI.removeAndHide(<ore:coinLead>);
mods.jei.JEI.removeAndHide(<ore:coinBronze>);
mods.jei.JEI.removeAndHide(<ore:coinLumium>);
mods.jei.JEI.removeAndHide(<ore:coinMithril>);
mods.jei.JEI.removeAndHide(<ore:coinTin>);

#changing the coin names of the ones we do 
<thermalfoundation:coin>.displayName = "Tier 1 Coin";
<thermalfoundation:coin:1>.displayName = "Tier 2 Coin";
<thermalfoundation:coin:96>.displayName = "Tier 3 Coin";
<thermalfoundation:coin:97>.displayName = "Tier 4 Coin";
<thermalfoundation:coin:101>.displayName = "Tier 5 Coin";
<thermalfoundation:coin:103>.displayName = "Tier 6 Coin";
