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
                count = 5,
                chance = 0.1,
                rare = true
            }, {
                id = 43895,
                count = 1,
                chance = 0.3,
                rare = true
            }, {
                id = 34109,
                count = 1,
                chance = 0.6,
                rare = true
            }, {
                id = 3397,
                count = 1,
                chance = 9
            }, {
                id = 3552,
                count = 1,
                chance = 9
            }, {
                id = 3035,
                count = 20,
                chance = 9
            }, {
                id = 16105,
                count = 1,
                chance = 9
            }, {
                id = 16110,
                count = 1,
                chance = 9
            }, {
                id = 16111,
                count = 1,
                chance = 9
            }, {
                id = 3079,
                count = 1,
                chance = 9
            }, {
                id = 3731,
                count = 5,
                chance = 8
            }, {
                id = 27449,
                count = 5,
                chance = 1
            }, {
                id = 27450,
                count = 5,
                chance = 1
            }, {
                id = 27451,
                count = 5,
                chance = 1
            }, {
                id = 27453,
                count = 5,
                chance = 1
            }, {
                id = 27454,
                count = 5,
                chance = 1
            }, {
                id = 27456,
                count = 5,
                chance = 1
            }, {
                id = 27458,
                count = 5,
                chance = 1
            }, {
                id = 27455,
                count = 5,
                chance = 1
            }, {
                id = 27457,
                count = 5,
                chance = 1
            }, {
                id = 281,
                count = 1,
                chance = 9
            }, {
                id = 3271,
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
