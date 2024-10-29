local rejectPosition = Position(32955, 32398, 9)
local bossesRoom = Position(34070, 31975, 14)
local bloodTile = MoveEvent()

local function reject(player, position)
    local playerHp = player:getHealth()
    local playerNewHp = playerHp - (playerHp * 0.4)
    if playerNewHp < 3 then
        playerNewHp = 3
    end
    position:sendMagicEffect(CONST_ME_DRAWBLOOD)
    player:setHealth(playerNewHp)
    player:teleportTo(rejectPosition)
    player:setDirection(DIRECTION_WEST)
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
    -- turn to the left
end


function bloodTile.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return false
    end
    
    print("Storage: " .. player:getStorageValue(Storage.Quest.U13_20.RottenBlood.QuestLine))
    if player:getStorageValue(Storage.Quest.U13_20.RottenBlood.QuestLine) == 4 then
        player:teleportTo(bossesRoom)
        return true
    else
        reject(player, fromPosition)
        return true
    end

    return false
end

bloodTile:type("stepin")
bloodTile:uid(62000)
bloodTile:register()


local teleportDoorExit = MoveEvent()

function teleportDoorExit.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return false
    end

    player:teleportTo(rejectPosition)

    return true
end

teleportDoorExit:type("stepin")
teleportDoorExit:uid(62001)
teleportDoorExit:register()
