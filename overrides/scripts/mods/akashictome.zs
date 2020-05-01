##########################################################################################
#modloaded akashictome
#priority 100

import mods.jei.JEI.addItem;
import mods.jei.JEI.addDescription;
import mods.initialinventory.InvHandler;

print("==================== loading mods akashictome.zs ====================");
##########################################################################################


// tome generation
val tome = <akashictome:tome>.withTag({
    "akashictome:is_morphing": 1 as byte,
    "akashictome:data": {
        actuallyadditions: {
            id: "actuallyadditions:item_booklet",
            Count: 1 as byte,
            tag: {
                "akashictome:definedMod": "actuallyadditions"
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
        bloodmagic: {
            id: "guideapi:bloodmagic-guide",
            Count: 1 as byte,
            tag: {
                "akashictome:definedMod": "bloodmagic"
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
        envtech: {
            id: "valkyrielib:guide",
            Count: 1 as byte,
            tag: {
                "akashictome:definedMod": "envtech"
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
        forestry: {
            id: "forestry:book_forester",
            Count: 1 as byte,
            tag: {
                "akashictome:definedMod": "forestry"
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
        industrialforegoing: {
            id: "industrialforegoing:book_manual",
            Count: 1 as byte,
            tag: {
                "akashictome:definedMod": "industrialforegoing"
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
        rftools: {
            id: "rftools:rftools_manual",
            Count: 1 as byte,
            tag: {
                "akashictome:definedMod": "rftools"
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
        tconstruct: {
            id: "tconstruct:book",
            Count: 1 as byte,
            tag: {
                "akashictome:definedMod": "tconstruct"
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
        totemic: {
            id: "totemic:totempedia",
            Count: 1 as byte,
            tag: {
                "akashictome:definedMod": "totemic"
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
        }
    }
});

// custom tooltip
tome.addTooltip(format.aqua("Contains all basic manuals you need."));

// custom description
addDescription(tome,
    "The Akashic Tome is able to hold all your books.",
    "",
    "All basic manuals are already included. In case you want to add more, just craft it together.",
    "To get the initial Akashic Tome that already includes most manuals, put a dirt block in a crafting grid."
);

// create crafting recipe for the book
recipes.addShapeless(tome, [
    <minecraft:dirt>
]);

// add book to JEI
addItem(tome);

// add book to initial inventory
InvHandler.addStartingItem(tome);
// add quest book to initial inventory
InvHandler.addStartingItem(<ftbquests:book>);


##########################################################################################
print("==================== end of mods akashictome.zs ====================");
