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

    local missionTo = config[item.aid].to

    player:teleportTo(missionTo.to)
    return true
end

rottenBloodEntranceExitMoveEvent:type("stepin")
rottenBloodEntranceExitMoveEvent:aid(63000)
rottenBloodEntranceExitMoveEvent:register()
