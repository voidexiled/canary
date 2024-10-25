local consts = {
    Entrance = 61000
}
local config = {
    tiles = {
        [61000] = {
            name = "RottenBloodEnter",
            reqStorage = consts.Entrance,
            minValue = 1,
            to = Position(34070, 31975, 14),
            failMessage = "You need to talk with Torkada to enter."
        },
        [61001] = {
            name = "RottenBloodEntranceExit",
            to = Position(32953, 32398, 9)
        }
    }
}

local rottenBloodMoveEvent = MoveEvent()

function rottenBloodMoveEvent.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return false
    end

    if not config.tiles[item.uid] then
        return false
    end
    -- Teleport to destination positions if no storage requeriments
    if not config.tiles[item.uid].reqStorage then
        player:teleportTo(config.tiles[item.uid].to)
        return true
    end

    local destPosition = config.tiles[item.uid].to

    if not destPosition then
        return false
    end

    if player:getStorageValue(config.tiles[item.uid].reqStorage) < config.tiles[item.uid].minValue then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, config.tiles[item.uid].failMessage)
        player:teleportTo(fromPosition)
        return false
    end

    player:teleportTo(destPosition)
    return true
end

rottenBloodMoveEvent:type("stepin")
rottenBloodMoveEvent:uid(61000)
rottenBloodMoveEvent:register()
