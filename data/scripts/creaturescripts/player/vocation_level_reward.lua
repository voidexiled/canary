local vocationRewards = {
    -- [1,5] = VOCATION ID
    -- [LEVEL] = {items = {{itemid = ITEM_ID, count = COUNT}}, msg = "MESSAGE"}
    -- [Sorcerer]
    [{1, 5}] = {
        [50] = {
            items = {{
                itemid = 8094,
                count = 1
            }},
            msg = "Recibiste una Wand of Voodo por alcanzar el nivel 50!"
        }
    },
    -- [Druid]
    [{2, 6}] = {
        [50] = {
            items = {{
                itemid = 8082,
                count = 1
            }},
            msg = "Recibiste una Underworld Rod por alcanzar el nivel 50!"
        }
    },
    -- [Paladin]
    [{3, 7}] = {
        [50] = {
            items = {{
                itemid = 8027,
                count = 1
            }},
            msg = "Recibiste un Composite Hornbow por alcanzar el nivel 50!"
        }
    },
    -- [Knight]
    [{4, 8}] = {
        [50] = {
            items = {{
                itemid = 7383,
                count = 1
            }, {
                itemid = 7411,
                count = 1
            }, {
                itemid = 3312,
                count = 1
            }},
            msg = "Recibiste armas por alcanzar el nivel 50!"
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
