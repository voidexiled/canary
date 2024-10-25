local config = {
    [62000] = { -- entrance aid
        to = Position(34070, 31975, 14),
        storage = 61000,
        minValue = 1,
        failMessage = "You need to talk with Torkada to enter."
    }

}

local rottenBloodEntranceMoveEvent = MoveEvent()

function rottenBloodEntranceMoveEvent.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return false
    end

    local mission = config[item.uid]
    if not mission then
        return false
    end

    if config[item.uid].storage and player:getStorageValue(config[item.uid].storage) < config[item.uid].minValue then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, config[item.uid].failMessage)
        player:teleportTo(fromPosition)
        return false
    end

    player:teleportTo(mission.to)
    return true
end

rottenBloodEntranceMoveEvent:type("stepin")
rottenBloodEntranceMoveEvent:uid(62000)
rottenBloodEntranceMoveEvent:register()

