local outfits = {

    -- Config
    dollID = 50007, -- Change this to your dolls or items, item ID

    -- Main Window Messages (The first window the player sees)
    mainTitle = "Escoje un outfit",
    mainMsg = "Recibiras también ambos addons del outfit que escojas.",


    -- Already Owned Window (The window that appears when the player already owns the addon)
    ownedTitle = "Whoops!",
    ownedMsg = "Ya tienes este outfit, escoje otro.",

    -- No Doll in Backpack (The window that appears when the player doesnt have the doll in their backpack)
    dollTitle = "Whoops!",
    dollMsg = "El addon doll debe estar en tu mochila.",
    -- End Config

    -- Outfit Table
    [1] = { name = "Rift Warrior", male = 846, female = 845 },

}

local addondoll = Action()

function addondoll.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    player:sendAddonWindow(outfits)
    return true
end

addondoll:id(outfits.dollID)
addondoll:register()
