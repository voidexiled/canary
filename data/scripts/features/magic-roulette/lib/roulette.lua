--[[
	Description: This file is part of Roulette System (refactored)
	Author: Ly�
	Discord: Ly�#8767
]] local Config = require('data/scripts/features/magic-roulette/config')
local Animation = require('data/scripts/features/magic-roulette/lib/animation')
local DatabaseRoulettePlays = require('data/scripts/features/magic-roulette/lib/database/roulette_plays')
local Strings = require('data/scripts/features/magic-roulette/lib/core/strings')

local Roulette = {}

function Roulette:startup()
    DatabaseRoulettePlays:updateAllRollingToPending()

    self.slots = Config.slots
    for actionid, slot in pairs(self.slots) do
        slot:generatePositions()
        slot:loadChances(actionid)
    end
end

function Roulette:roll(player, slot)
    if slot:isRolling() then
        player:sendCancelMessage(Strings.WAIT_TO_SPIN)
        return false
    end

    local reward = slot:generateReward()
    if not reward then
        player:sendTextMessage(MESSAGE_STATUS, Strings.GENERATE_REWARD_FAILURE)
        return false
    end

    local needItem = slot:getNeedItem()
    local needItemName = ItemType(needItem.id):getName()

    if not player:removeItem(needItem.id, needItem.count) then
        player:sendTextMessage(MESSAGE_STATUS, Strings.NEEDITEM_TO_SPIN:format(needItem.count, needItemName))
        return false
    end

    local playerName = player:getName()

    slot.uuid = uuid()
    DatabaseRoulettePlays:create(slot.uuid, player:getGuid(), reward)

    slot:setRolling(true)
    slot:clearDummies()

    local onFinish = function()
        slot:deliverReward()
        slot:setRolling(false)

        if reward.rare then
            local plural = ""
            if reward.count > 1 then
                plural = "s"
            end
            Game.broadcastMessage(string.format("{%d|%s} El jugador %s ganó {%dx|%s} {%dx|%s} {%dx|%s} en la ruleta!",
                MESSAGE_COLOR_YELLOW, "[ROULETTE WINNER]", playerName, MESSAGE_COLOR_BLUE, reward.count,
                ItemType(reward.id):getName()), plural, MESSAGE_LOOT)
            --[[Game.broadcastMessage(Strings.GIVE_REWARD_FOUND_RARE:format(playerName, reward.count,
                ItemType(reward.id):getName()), MESSAGE_EVENT_ADVANCE)
                ]] --
        end
    end

    Animation:start({
        slot = slot,
        reward = reward,
        onFinish = onFinish
    })
    return true
end

function Roulette:getSlot(actionid)
    return self.slots[actionid]
end

return Roulette
