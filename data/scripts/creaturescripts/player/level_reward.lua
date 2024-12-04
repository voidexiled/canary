local table = {
    -- [level] = type = "item", id = {ITEM_ID, QUANTITY}, msg = "MESSAGE"},
    -- [level] = type = "bank", id = {QUANTITY, 0}, msg = "MESSAGE"},
    -- [level] = type = "addon", id = {ID_ADDON_FEMALE, ID_ADDON_MALE}, msg = "MESSAGE"},
    -- [level] = type = "coin", id = {QUANTITY, 0}, msg = "MESSAGE"},
    -- [level] = type = "mount", id = {ID_MOUNT, 0}, msg = "MESSAGE"},

    [10] = {
        type = "item",
        id = { 3043, 1 },
        msg = "Ganaste 1 cc como recompensa por subir a nivel 10!"
    },
    [15] = {
        type = "item",
        id = { 3059, 1 },
        msg = "Obtuviste un Spellbook como recompensa por subir a nivel 15!"
    },
    [20] = {
        type = "item",
        id = { 3043, 1 },
        msg = "Ganaste 1 cc como recompensa por subir a nivel 20!"
    },
    [25] = {
        type = "item",
        id = { 3725, 100 },
        msg = "Obtuviste un 100 Brown Mushrooms como recompensa por subir a nivel 30!"
    },
    [30] = {
        type = "item",
        id = { 3043, 1 },
        msg = "Ganaste 1 cc como recompensa por subir a nivel 30!"
    },
    [40] = {
        type = "item",
        id = { 3043, 1 },
        msg = "Ganaste 1 cc como recompensa por subir a nivel 40!"
    },
    [50] = {
        type = "item",
        id = { 3043, 2 },
        msg = "Ganaste 2 cc como recompensa por subir a nivel 50!"
    },
    [60] = {
        type = "item",
        id = { 3043, 2.5 },
        msg = "Ganaste 2.5 cc en tu banco como recompensa por subir a nivel 60!"
    },
    [70] = {
        type = "item",
        id = { 3043, 2.5 },
        msg = "Ganaste 2.5 cc como recompensa por subir a nivel 70!"
    },
    [80] = {
        type = "item",
        id = { 3043, 2.5 },
        msg = "Ganaste 2.5 cc como recompensa por subir a nivel 80!"
    },
    [90] = {
        type = "item",
        id = { 3043, 2.5 },
        msg = "Ganaste 2.5 cc como recompensa por subir a nivel 90!"
    },
    [100] = {
        type = "addon",
        id = { 136, 128 },
        msg = "Obtuviste Citizen Full Addon como recompensa por subir a nivel 100!"
    },
    [110] = {
        type = "mount",
        id = { 19, 0 },
        msg = "Obtuviste Tamed Panda Mount como recompensa por subir a nivel 110!"
    },
    [120] = {
        type = "item",
        id = { 3079, 1 },
        msg = "Obtuviste Boots of Haste como recompensa por subir a nivel 120!"
    },
    [150] = {
        type = "bank",
        id = { 100000, 0 },
        msg = "Ganaste 10 cc en tu banco como recompensa por subir a nivel 150!"
    },
    [200] = {
        type = "bank",
        id = { 100000, 0 },
        msg = "Ganaste 10 cc en tu banco como recompensa por subir a nivel 200!"
    },
    [250] = {
        type = "bank",
        id = { 200000, 0 },
        msg = "Ganaste 20 cc en tu banco como recompensa por subir a nivel 250!"
    },
    [300] = {
        type = "coin",
        id = { 50, 0 },
        msg = "Ganaste 50 Tibia Coins como recompensa por subir a nivel 300!"
    },
    [350] = {
        type = "bank",
        id = { 1000000, 0 },
        msg = "Ganaste 1 kk como recompensa por subir a nivel 350!"
    },
    [450] = {
        type = "coin",
        id = { 50, 0 },
        msg = "Ganaste 50 Tibia Coins como recompensa por subir a nivel 450!"
    },
    [500] = {
        type = "bank",
        id = { 1000000, 0 },
        msg = "Ganaste 1 kk como recompensa por subir a nivel 500!"
    },
    [550] = {
        type = "coin",
        id = { 100, 0 },
        msg = "Ganaste 100 Tibia Coins como recompensa por subir a nivel 550!"
    },
    [600] = {
        type = "bank",
        id = { 1000000, 0 },
        msg = "Ganaste 1 kk como recompensa por subir a nivel 600!"
    },
    [650] = {
        type = "coin",
        id = { 100, 0 },
        msg = "Ganaste 100 Tibia Coins como recompensa por subir a nivel 650!"
    },
    [700] = {
        type = "bank",
        id = { 2000000, 0 },
        msg = "Ganaste 2 kk como recompensa por subir a nivel 700!"
    },
    [750] = {
        type = "coin",
        id = { 150, 0 },
        msg = "Ganaste 150 Tibia Coins como recompensa por subir a nivel 750!"
    },
    [800] = {
        type = "bank",
        id = { 2000000, 0 },
        msg = "Ganaste 2 kk como recompensa por subir a nivel 800!"
    },
    [850] = {
        type = "coin",
        id = { 150, 0 },
        msg = "Ganaste 150 Tibia Coins como recompensa por subir a nivel 850!"
    },
    [900] = {
        type = "bank",
        id = { 2000000, 0 },
        msg = "Ganaste 2 kk como recompensa por subir a nivel 900!"
    },
    [950] = {
        type = "coin",
        id = { 150, 0 },
        msg = "Ganaste 150 Tibia Coins como recompensa por subir a nivel 950!"
    },
    [1000] = {
        type = "bank",
        id = { 5000000, 0 },
        msg = "Ganaste 5 kk como recompensa por subir a nivel 1000!"
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

            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "[Lvl Reward][" .. level .. "] " .. table[level].msg)
            player:setStorageValue(storage, level)
        end
    end

    player:save()

    return true
end

levelReward:register()
