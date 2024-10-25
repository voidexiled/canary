local consts = {}
local config = {
    tiles = {
        [61000] = {
            name = "RottenBloodEnter",
            reqStorage = {Storage.RottenBlood.Entrance},
            from = Position(32953, 32398, 94),
            to = Position(33714, 32797, 14),
            failMessage = "You need to talk with Torkada to enter."
        }
    }
}

local rottenBloodMoveEvent = MoveEvent()

function rottenBloodMoveEvent.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return false
    end

    local destPosition = config.tiles[item.uid].to

    if not destPosition then
        return false
    end

    if not player:hasStorage(config.tiles[item.uid].reqStorage) then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, config.tiles[item.uid].failMessage)
        player:teleportTo(fromPosition)
        return false
    end

    if not player:getStorageValue(Storage.RottenBlood.Entrance) > 0 then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, config.tiles[item.uid].failMessage)
        player:teleportTo(fromPosition)
        return false
    end

    player:teleportTo(destPosition)
    return true
end
