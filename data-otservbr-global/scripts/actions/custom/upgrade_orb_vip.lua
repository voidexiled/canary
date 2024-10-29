local ORB_UPGRADE_VIP_ID = 49990
local CONDITION_SUBID = 997

local tierConfig = {
    ["A"] = {
        manaGain = 35,
        manaTicks = 5000
    },
    ["S"] = {
        manaGain = 50,
        manaTicks = 5000
    },
    ["S+"] = {
        manaGain = 70,
        manaTicks = 4000
    }
}

local upgradeOrbVip = Action()

local validEquipments = {
    [3552] = true,
    [50000] = true
}

function isValidEquipment(item)
    return validEquipments[item.itemid] or false
end

function getNextTier(tier)
    if tier == "B" then
        return "A"
    elseif tier == "A" then
        return "S"
    elseif tier == "S" then
        return "S+"
    elseif tier == "S+" then
        return "S+"
    else
        return nil -- Para indicar un tier no válido
    end
end

function upgradeOrbVip.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local itemId = item.itemid

    if itemId == ORB_UPGRADE_VIP_ID then -- Si es el Orb Upgrade VIP
        if isValidEquipment(target) then
            -- Obtener el tier actual, "B" por defecto si no existe en la descripción
            local tier = target:getAttribute(ITEM_ATTRIBUTE_DESCRIPTION):match("Tier:%s*(%a+%+?)") or "B"
            local nextTier = getNextTier(tier)
            print("current tier: " .. tier)
            print("next tier: " .. nextTier)

            if not nextTier or tier == nextTier then
                player:sendTextMessage(MESSAGE_GAME_HIGHLIGHT, "You already have the highest tier.")
                player:getPosition():sendMagicEffect(CONST_ME_POFF)
                return true
            end

            local description = target:getAttribute(ITEM_ATTRIBUTE_DESCRIPTION)
            local name = target:getName()

            if tier == "B" then
                description = description .. "\nTier: " .. nextTier
                name = name .. " (VIP)"
            else
                description = description:gsub("Tier:%s*[ABS%+]*", "Tier: " .. nextTier)
            end

            target:setName(name)
            target:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, description)

            player:sendTextMessage(MESSAGE_GAME_HIGHLIGHT,
                "You have upgraded your " .. target:getName() .. " to a Noctera-Global VIP.")

            -- Efecto visual según el tier
            local effect = nil
            if nextTier == "A" then
                effect = CONST_ME_GREEN_FIREWORKS
            elseif nextTier == "S" then
                effect = CONST_ME_ORANGE_FIREWORKS
            elseif nextTier == "S+" then
                effect = CONST_ME_PINK_FIREWORKS
            end

            if effect then
                player:getPosition():sendMagicEffect(effect)
            end

            item:remove(1)
            return true
        else
            player:sendTextMessage(MESSAGE_GAME_HIGHLIGHT, "You can only upgrade your boots.")
            player:getPosition():sendMagicEffect(CONST_ME_POFF)
        end
    end

    return false
end

upgradeOrbVip:id(ORB_UPGRADE_VIP_ID)
upgradeOrbVip:checkFloor(true)
upgradeOrbVip:register()

local CONDITIONS = {
    [1] = {
        name = CONDITION_ATTRIBUTES,
        subId = 997,
        condition = Condition(CONDITION_ATTRIBUTES, CONDITIONID_FEET)

    },
    [2] = {
        name = CONDITION_REGENERATION,
        subId = 998,
        condition = Condition(CONDITION_REGENERATION, CONDITIONID_FEET)
    }
}
local regenerationCondition = Condition(CONDITION_REGENERATION, CONDITIONID_FEET)
local attributesCondition = Condition(CONDITION_ATTRIBUTES, CONDITIONID_FEET)
local BootsEquipOn = MoveEvent()

function BootsEquipOn.onEquip(player, item, position, fromPosition)
    if not player or player:isInGhostMode() then
        return true
    end

    local itemName = item:getName()

    if itemName and itemName:find("(VIP)") then
        local tier = item:getAttribute(ITEM_ATTRIBUTE_DESCRIPTION):match("Tier:%s*(%a+%+?)")
        if tierConfig[tier] then
            local manaGain = tierConfig[tier].manaGain
            local manaTicks = tierConfig[tier].manaTicks

            regenerationCondition:setParameter(CONDITION_PARAM_SUBID, 997)
            regenerationCondition:setParameter(COMBAT_PARAM_TYPE, COMBAT_MANADRAIN)
            regenerationCondition:setParameter(CONDITION_PARAM_TICKS, -1)
            regenerationCondition:setParameter(CONDITION_PARAM_MANAGAIN, manaGain)
            regenerationCondition:setParameter(CONDITION_PARAM_MANATICKS, manaTicks)

            attributesCondition:setParameter(CONDITION_PARAM_SUBID, 998)
            attributesCondition:setParameter(CONDITION_PARAM_TICKS, -1)
            attributesCondition:setParameter(CONDITION_PARAM_SKILL_SWORD, 15)
            attributesCondition:setParameter(CONDITION_PARAM_SKILL_AXE, 15)
            attributesCondition:setParameter(CONDITION_PARAM_SKILL_DISTANCE, 15)

            player:addCondition(regenerationCondition)
            player:addCondition(attributesCondition)
        end
    end
    return true
end

for id, valid in pairs(validEquipments) do
    BootsEquipOn:id(id)
end
BootsEquipOn:register()

local BootsEquipOff = MoveEvent()

function BootsEquipOff.onDeEquip(player, item, position, fromPosition)
    if not player then
        return true
    end

    local itemName = item:getName()
    if itemName and itemName:find("(VIP)") then
        player:removeCondition(CONDITION_REGENERATION, CONDITIONID_FEET, 997)
        player:removeCondition(CONDITION_ATTRIBUTES, CONDITIONID_FEET, 998)
    end
    return true
end

for id, valid in pairs(validEquipments) do
    BootsEquipOff:id(id)
end
BootsEquipOff:register()
