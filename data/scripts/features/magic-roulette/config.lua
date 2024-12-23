--[[
	Description: This file is part of Roulette System (refactored)
	Author: Ly�
	Discord: Ly�#8767
]]
local Slot = require('data/scripts/features/magic-roulette/lib/classes/slot')

local defaultWinEffects = { CONST_ANI_FIRE, CONST_ME_SOUND_YELLOW, CONST_ME_SOUND_PURPLE, CONST_ME_SOUND_BLUE,
    CONST_ME_SOUND_WHITE }

return {
    slots = {
        [56371] = Slot {
            winEffects = defaultWinEffects,
            needItem = {
                id = 19082,
                count = 1
            },
            tilesPerSlot = 7,
            centerPosition = Position(32369, 32239, 6),

            items = { {
                id = 49999,
                count = 100,
                chance = 0.1,
                rare = true
            }, {
                id = 43898,
                count = 1,
                chance = 0.3,
                rare = true
            }, {
                id = 34109,
                count = 1,
                chance = 0.6,
                rare = true
            }, {
                id = 19082,
                count = 2,
                chance = 9
            }, {
                id = 19082,
                count = 1,
                chance = 9
            }, {
                id = 49999,
                count = 5,
                chance = 9
            }, {
                id = 49999,
                count = 2,
                chance = 9
            }, {
                id = 50000,
                count = 1,
                chance = 9
            }, {
                id = 5898,
                count = 1,
                chance = 9
            }, {
                id = 3079,
                count = 1,
                chance = 9
            }, {
                id = 50001,
                count = 1,
                chance = 9
            }, {
                id = 3278,
                count = 1,
                chance = 9
            }, {
                id = 5903,
                count = 1,
                chance = 9
            }, {
                id = 3043,
                count = 50,
                chance = 9
            } }
        }

    }
}
