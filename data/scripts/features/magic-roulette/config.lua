--[[
	Description: This file is part of Roulette System (refactored)
	Author: Ly�
	Discord: Ly�#8767
]] local Slot = require('data/scripts/features/magic-roulette/lib/classes/slot')

return {
    slots = {
        [56371] = Slot {
            needItem = {
                id = 19082,
                count = 1
            },
            tilesPerSlot = 11,
            centerPosition = Position(32533, 32372, 7),

            items = {{
                id = 49999,
                count = 100,
                chance = 0.1,
                rare = true
            }, {
                id = 19082,
                count = 1,
                chance = 9
            }, {
                id = 50001,
                count = 1,
                chance = 9
            }, {
                id = 5903,
                count = 1,
                chance = 9
            }}
        }

    }
}
