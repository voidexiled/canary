local table = {
    -- [level] = type = "item", id = {ITEM_ID, QUANTITY}, msg = "MESSAGE"},
    -- [level] = type = "bank", id = {QUANTITY, 0}, msg = "MESSAGE"},
    -- [level] = type = "addon", id = {ID_ADDON_FEMALE, ID_ADDON_MALE}, msg = "MESSAGE"},
    -- [level] = type = "coin", id = {QUANTITY, 0}, msg = "MESSAGE"},
    -- [level] = type = "mount", id = {ID_MOUNT, 0}, msg = "MESSAGE"},

    [60] = {
        type = "bank",
        id = {100000, 0},
        msg = "Ganaste 10 cc en tu banco como recompensa por subir a nivel 60!"
    },
    [100] = {
        type = "addon",
        id = {136, 128},
        msg = "Obtuviste Citizen Full Addon como recompensa por subir a nivel 100!"
    },
    [110] = {
        type = "mount",
        id = {19, 0},
        msg = "Obtuviste Tamed Panda Mount como recompensa por subir a nivel 110!"
    },
    [150] = {
        type = "bank",
        id = {250000, 0},
        msg = "Ganaste 25 cc en tu banco como recompensa por subir a nivel 150!"
    },
    [200] = {
        type = "coin",
        id = {50, 0},
        msg = "Ganaste 50 Tibia Coins como recompensa por subir a nivel 200!"
    },
    [250] = {
        type = "bank",
        id = {500000, 0},
        msg = "Ganaste 50 cc en tu banco como recompensa por subir a nivel 250!"
    },
    [300] = {
        type = "coin",
        id = {100, 0},
        msg = "Ganaste 100 Tibia Coins como recompensa por subir a nivel 300!"
    },
    [350] = {
        type = "bank",
        id = {1000000, 0},
        msg = "Ganaste 1 kk como recompensa por subir a nivel 350!"
    },
    [450] = {
        type = "coin",
        id = {200, 0},
        msg = "Ganaste 200 Tibia Coins como recompensa por subir a nivel 450!"
    },
    [500] = {
        type = "bank",
        id = {2000000, 0},
        msg = "Ganaste 2 kk como recompensa por subir a nivel 500!"
    },
    [550] = {
        type = "coin",
        id = {300, 0},
        msg = "Ganaste 300 Tibia Coins como recompensa por subir a nivel 550!"
    },
    [600] = {
        type = "bank",
        id = {3000000, 0},
        msg = "Ganaste 3 kk como recompensa por subir a nivel 600!"
    },
    [650] = {
        type = "coin",
        id = {400, 0},
        msg = "Ganaste 400 Tibia Coins como recompensa por subir a nivel 650!"
    },
    [700] = {
        type = "bank",
        id = {4000000, 0},
        msg = "Ganaste 4 kk como recompensa por subir a nivel 700!"
    },
    [750] = {
        type = "coin",
        id = {500, 0},
        msg = "Ganaste 500 Tibia Coins como recompensa por subir a nivel 750!"
    },
    [800] = {
        type = "bank",
        id = {5000000, 0},
        msg = "Ganaste 5 kk como recompensa por subir a nivel 800!"
    },
    [850] = {
        type = "coin",
        id = {600, 0},
        msg = "Ganaste 600 Tibia Coins como recompensa por subir a nivel 850!"
    },
    [900] = {
        type = "bank",
        id = {6000000, 0},
        msg = "Ganaste 6 kk como recompensa por subir a nivel 900!"
    },
    [950] = {
        type = "coin",
        id = {700, 0},
        msg = "Ganaste 700 Tibia Coins como recompensa por subir a nivel 950!"
    },
    [1000] = {
        type = "bank",
        id = {7000000, 0},
        msg = "Ganaste 7 kk como recompensa por subir a nivel 1000!"
    }
}

local storage = 15005

local levelReward = CreatureEvent("Level Reward")
function levelReward.onAdvance(player, skill, oldLevel, newLevel)

    if skill ~= SKILL_LEVEL or newLevel <= oldLevel then
        return true
    end

    for level, _ in pairs(table) do
        if newLevel >= level and player:getStorageValue(storage) < level then
            if table[level].type == "item" then
                player:addItem(table[level].id[1], table[level].id[2])
            elseif table[level].type == "bank" then
                player:setBankBalance(player:getBankBalance() + table[level].id[1])
            elseif table[level].type == "addon" then
                player:addOutfitAddon(table[level].id[1], 3)
                player:addOutfitAddon(table[level].id[2], 3)
            elseif table[level].type == "coin" then
                player:addTibiaCoins(table[level].id[1])
            elseif table[level].type == "mount" then
                player:addMount(table[level].id[1])
            else
                return false
            end

            player:sendTextMessage("[Level Reward][" .. level .. "] " .. MESSAGE_EVENT_ADVANCE, table[level].msg)
            player:setStorageValue(storage, level)
        end
    end

    player:save()

    return true
end

levelReward:register()
