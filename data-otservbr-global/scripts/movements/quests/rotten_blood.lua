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

    local mission = config.tiles[item.uid]
    if not mission then
        return false
    end

    local destPosition = mission.to
    if not destPosition then
        return false
    end

    if mission.reqStorage and player:getStorageValue(mission.reqStorage) < mission.minValue then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, mission.failMessage)
        player:teleportTo(fromPosition)
        return false
    end

    player:teleportTo(destPosition)
    return true
end

rottenBloodMoveEvent:type("stepin")

for uid, _ in pairs(config.tiles) do
    rottenBloodMoveEvent:uid(uid)
end

rottenBloodMoveEvent:register()
