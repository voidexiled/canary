local vocationRewards = {

    -- [1,5] = VOCATION ID
    -- [LEVEL] = {items = {{itemid = ITEM_ID, count = COUNT}}, msg = "MESSAGE"}

    [{1, 5}] = {
        [50] = {
            items = {{
                itemid = 3073,
                count = 1
            }},
            msg = "Recibiste una Wand of Cosmic Energy por alcanzar el nivel 50!"
        }
    }
}

local storageBase = 21005

local rewardLevel = CreatureEvent("RewardLevel")
function rewardLevel.onAdvance(player, skill, oldLevel, newLevel)
    if skill ~= SKILL_LEVEL or newLevel <= oldLevel then
        return true
    end

    local vocationId = player:getVocation():getId()
    local playerStorage = storageBase + vocationId

    for vocations, rewards in pairs(vocationRewards) do
        if isInArray(vocations, vocationId) then
            for level, reward in pairs(rewards) do
                if newLevel >= level and player:getStorageValue(playerStorage) < level then
                    for _, item in ipairs(reward.items) do
                        player:addItem(item.itemid, item.count)
                    end
                    player:sendTextMessage(MESSAGE_EVENT_ADVANCE,
                        "[Vocation Lvl Reward][" .. level .. "] " .. reward.msg)
                    player:setStorageValue(playerStorage, level)
                end
            end
            break
        end
    end
    return true
end

rewardLevel:register()
