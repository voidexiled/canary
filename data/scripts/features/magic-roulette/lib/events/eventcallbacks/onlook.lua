local Constants = require('data/scripts/features/magic-roulette/lib/core/constants')

local ec = EventCallback("PlayerOnLookRouletteDummy")
function ec.playerOnLook(player, inspectedThing, inspectedPosition, lookDistance)
    if inspectedThing:getName() == Constants.ROULETTE_DUMMY_NAME then
        local item = ItemType(inspectedThing:getOutfit().lookTypeEx)

        return ('You see %s.\n%s'):format(item:getName(), item:getDescription())
    end
    return description
end
ec:register()
