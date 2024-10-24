local Constants = require('data/scripts/features/magic-roulette/lib/core/constants')

local ec = EventCallback("PlayerOnLookRouletteDummy")
ec.onLook = function(self, thing, position, distance, description)
    if thing:getName() == Constants.ROULETTE_DUMMY_NAME then
        local item = ItemType(thing:getOutfit().lookTypeEx)

        return ('You see %s.\n%s'):format(item:getName(), item:getDescription())
    end
    return description
end
ec:register()
