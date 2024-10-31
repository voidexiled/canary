local vocationRewards = {
    -- [1,5] = VOCATION ID
    -- [LEVEL] = {items = {{itemid = ITEM_ID, count = COUNT}}, msg = "MESSAGE"}
    -- [Sorcerer]
    [{ 1, 2, 3, 4, 5, 6, 7, 8 }] = {
        [40] = {
            items = { {
                itemid = 266,
                count = 15
            }, {
                itemid = 268,
                count = 15
            } },
            msg = "Haz recibido pociones como recompensa por subir a nivel 40!"
        }
    },
    [{ 1, 2, 5, 6 }] = {
        [80] = {
            items = { {
                itemid = 238,
                count = 100
            } },
            msg = "Haz recibido 100 Great Mana Potion como recompensa por subir a nivel 80!"
        }
    },
    [{ 1, 5 }] = {
        [50] = {
            items = { {
                itemid = 8094,
                count = 1
            } },
            msg = "Recibiste una Wand of Voodo por alcanzar el nivel 50!"
        }
    },
    -- [Druid]
    [{ 2, 6 }] = {
        [50] = {
            items = { {
                itemid = 8082,
                count = 1
            } },
            msg = "Recibiste una Underworld Rod por alcanzar el nivel 50!"
        }
    },
    -- [Paladin]
    [{ 3, 7 }] = {
        [50] = {
            items = { {
                itemid = 8027,
                count = 1
            },
                {
                    itemid = 7365,
                    count = 200
                },
                {
                    itemid = 35562,
                    count = 1
                }
            },
            msg = "Recibiste armas por alcanzar el nivel 50!"
        },
        [80] = {
            items = { {
                itemid = 7642,
                count = 50
            }, {
                itemid = 237,
                count = 50
            } },
            msg = "Haz recibido pociones como recompensa por subir a nivel 80!"
        }
    },
    -- [Knight]
    [{ 4, 8 }] = {
        [50] = {
            items = { {
                itemid = 7383,
                count = 1
            }, {
                itemid = 7411,
                count = 1
            }, {
                itemid = 3312,
                count = 1
            } },
            msg = "Recibiste armas por alcanzar el nivel 50!"
        },
        [80] = {
            items = {
                {
                    itemid = 268,
                    count = 100
                },
                {
                    itemid = 239,
                    count = 25
                }
            },
            msg = "Haz recibido pociones como recompensa por subir a nivel 80!"
        }
    }
}

local storageBase = 21005

local rewardLevel = CreatureEvent("RewardLevelVocation")
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
