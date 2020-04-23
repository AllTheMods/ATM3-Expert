import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

#modloaded akashictome

print(" =====================Akashic Tome================= ");
print(" ================================================== ");
/*
	Script just for the "all books included" tome to make it easier
	to see/find/edit/organize things related to just this tome
*/


//======Akashic Tome ======
//
	var completeTome = <akashictome:tome>.withTag(

	{
		"akashictome:is_morphing": 1 as byte,
		"akashictome:data": {
			tconstruct: {
				id: "tconstruct:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "tconstruct"
				},
				Damage: 0 as short
			},
			industrialforegoing: {
				id: "industrialforegoing:book_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "industrialforegoing"
					},
					Damage: 0 as short
			},
			astralsorcery: {
				id: "astralsorcery:itemjournal",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "astralsorcery"
				},
				Damage: 0 as short
			},
			immersiveengineering: {
				id: "immersiveengineering:tool",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "immersiveengineering"
				},
				Damage: 3 as short
			},
			rftools: {
				id: "rftools:rftools_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "rftools"
				},
				Damage: 0 as short
			},
			botania: {
				id: "botania:lexicon",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "botania"
					},
					Damage: 0 as short
			},
			draconicevolution: {
			id: "draconicevolution:info_tablet",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "draconicevolution"
				},
				Damage: 0 as short
			},
			extrautils2: {
				id: "extrautils2:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "extrautils2"
				},
				Damage: 0 as short
			},
			thermalfoundation: {
				id: "thermalfoundation:tome_lexicon",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "thermalfoundation"
				},
				Damage: 0 as short
			},
			bloodmagic: {
				id: "guideapi:bloodmagic-guide",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "bloodmagic"
				},
				Damage: 0 as short
			},
			xnet: {
				id: "xnet:xnet_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "xnet"
				},
				Damage: 0 as short
			},
		  	forestry: {
				id: "forestry:book_forester",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "forestry"
				},
				Damage: 0 as short
			},
			openblocks: {
				id: "openblocks:info_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "openblocks"
				},
				Damage: 0 as short
			},
			rftools1: {
				id: "rftools:rftools_shape_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "rftools1"
				},
				Damage: 0 as short
			},
			envtech: {
				id: "valkyrielib:guide",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "envtech"
				},
				Damage: 0 as short
			},
			totemic: {
				id: "totemic:totempedia",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "totemic"
				},
				Damage: 0 as short
			},
			actuallyadditions: {
				id: "actuallyadditions:item_booklet",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "actuallyadditions"
				},
				Damage: 0 as short
			}
		}
	}

	);

	//metadata to item
	completeTome.addTooltip(format.aqua("Contains all basic mod manuals/guides aleady included"));
	mods.jei.JEI.addDescription(completeTome, "The Akashic tome is a book for your books...",
											  "This recipe of 1 dirt = full book is added by All the Mods to ALREADY                                                                                        contain most/all modded manuals as a convenience for our players");

	//add the full book to JEI as it's own entry
	mods.jei.JEI.addItem(completeTome);

	//1 dirt = book
	recipes.addShapeless(completeTome, [<minecraft:dirt>]);

	// Starting item
	mods.initialinventory.InvHandler.addStartingItem(completeTome);
    mods.initialinventory.InvHandler.addStartingItem(<ftbquests:book>);

//====== Tooltip for added books ====
//
	var addedBooks = [
		<tconstruct:book>,
		<industrialforegoing:book_manual>,
		<astralsorcery:itemjournal>,
		<immersiveengineering:tool:3>,
		<rftools:rftools_manual>,
		<botania:lexicon>,
		<draconicevolution:info_tablet>,
		<extrautils2:book>,
		<thermalfoundation:tome_lexicon>,
		<guideapi:bloodmagic-guide>,
		<xnet:xnet_manual>,
		<forestry:book_forester>,
		<openblocks:info_book>,
		<rftools:rftools_shape_manual>,
		<valkyrielib:guide>,
		<totemic:totempedia>,
		<actuallyadditions:item_booklet>
	] as IItemStack[];

	for itemBook in addedBooks {
		itemBook.addTooltip(format.aqua("Included within the \"default\" Akashic Tome"));
	}
