local config = {
    [63000] = { -- exit entrance
        to = Position(32954, 32398, 9)
    }
}

local rottenBloodEntranceExitMoveEvent = MoveEvent()

function rottenBloodEntranceExitMoveEvent.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return false
    end

    if not config[item.aid] then
        return false
    end

    player:teleportTo(config[item.aid].to)
    return true
end

rottenBloodEntranceExitMoveEvent:type("stepin")
rottenBloodEntranceExitMoveEvent:aid(63000)
rottenBloodEntranceExitMoveEvent:register()
