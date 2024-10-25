local consts = {
    Entrance = 61000
}
local config = {
    tiles = {
        [61000] = {
            name = "RottenBloodEnter",
            reqStorage = consts.Entrance,
            minValue = 1,
            from = Position(32953, 32398, 9),
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
    local mission = config.tiles[item.uid]

    -- Teleport to destination positions if no storage requeriments
    print(mission.reqStorage)
    if not mission.reqStorage then
        player:teleportTo(mission.to)
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

for index, value in pairs(config.tiles) do
    print(index + "uid registered")
    rottenBloodMoveEvent:uid(index)
end

rottenBloodMoveEvent:register()
