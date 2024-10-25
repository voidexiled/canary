local consts = {

    Entrance = {
        storageId = 61000,
        uid = 61000
    },
    EntranceExit = {
        uid = 61001
    }
}

local config = {
    tiles = {
        [61000] = {
            name = "RottenBloodEnter",
            reqStorage = consts.Entrance.storageId,
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

local rottenBloodEntranceMoveEvent = MoveEvent()

function rottenBloodEntranceMoveEvent.onStepIn(creature, item, position, fromPosition)
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

local rottenBloodEntranceExitMoveEvent = MoveEvent()

function rottenBloodEntranceExitMoveEvent.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return false
    end

    local mission = config.tiles[item.uid]
    if not mission then
        return false
    end

    player:teleportTo(mission.to)
    return true
end

rottenBloodEntranceMoveEvent:type("stepin")
rottenBloodEntranceMoveEvent:uid(consts.Entrance.storageId)
rottenBloodEntranceMoveEvent:register()

rottenBloodEntranceExitMoveEvent:type("stepin")
rottenBloodEntranceExitMoveEvent:uid(consts.EntranceExit.uid)
rottenBloodEntranceExitMoveEvent:register()
