local SACRIFICIAL_PLATE_AID = 61000
local SANGUINE_TEAR_ID = 32594

local sacrificialPlate = Action()

function sacrificialPlate.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getActionId() == SACRIFICIAL_PLATE_AID then
        local valueStorageQuestline = player:getStorageValue(Storage.Quest.U13_20.RottenBlood.QuestLine)

        if valueStorageQuestline == 1 then
            return false
        end

        if valueStorageQuestline > 1 and valueStorageQuestline < 4 then
            -- check if player has sanguine tears in his inventory
            if player:getItemCount(SANGUINE_TEAR_ID) == 0 then
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Find the keeper of sanguine tears and offer his life fluids to the sanguine master of this realm.")
                return false
            else
                player:removeItem(SANGUINE_TEAR_ID, 1)
                player:getPosition():sendMagicEffect(CONST_ME_DRAWBLOOD)
                player:setStorageValue(Storage.Quest.U13_20.RottenBlood.QuestLine, valueStorageQuestline + 1) -- Sumar 1 al storage cada que el player ofrece sanguine tears

                if player:getStorageValue(Storage.Quest.U13_20.RottenBlood.QuestLine) == 4 then -- Dar acceso al tile para la zona de bosses si ya entrego los 2 sanguine tears
                    player:setStorageValue(Storage.Quest.U13_20.RottenBlood.Access.JadedRoots, 1)
                end

                return true
            end
        end
    end
    return true
end

sacrificialPlate:aid(SACRIFICIAL_PLATE_AID)
sacrificialPlate:register()
