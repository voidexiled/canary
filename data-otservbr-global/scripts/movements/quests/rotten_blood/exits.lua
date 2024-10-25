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

    if not config[item.uid] then
        return false
    end
    if not config[item.uid].to then
        return false
    end
    local missionTo = config[item.uid].to

    player:teleportTo(missionTo.to)
    return true
end

rottenBloodEntranceExitMoveEvent:type("stepin")
rottenBloodEntranceExitMoveEvent:aid(63000)
rottenBloodEntranceExitMoveEvent:register()
