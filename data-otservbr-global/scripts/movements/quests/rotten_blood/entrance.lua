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

    local missionTo = config[item.uid].to
    if not missionTo then
        return false
    end

    if config[item.uid].storage and player:getStorageValue(config[item.uid].storage) < config[item.uid].minValue then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, config[item.uid].failMessage)
        player:teleportTo(fromPosition)
        return false
    end

    player:teleportTo(missionTo.to)
    return true
end

rottenBloodEntranceMoveEvent:type("stepin")
rottenBloodEntranceMoveEvent:aid(61000)
rottenBloodEntranceMoveEvent:register()

