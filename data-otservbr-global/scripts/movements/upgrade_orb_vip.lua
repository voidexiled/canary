local ORB_UPGRADE_VIP_ID = 49990
local HASTE_SUBID = 999
local ATTRIBUTES_SUBID = 998
local REGENERATION_SUBID = 997


local CONST_REGENERATION_CONFIG = 0
local CONST_ATTRIBUTES_CONFIG = 1

-- Configuración de cantidad de items necesarios para cada transición de tier
local tierRequirements = {
    ["B"] = { nextTier = "A", itemCost = 1, effect = CONST_ME_GREEN_FIREWORKS },
    ["A"] = { nextTier = "S", itemCost = 2, effect = CONST_ME_BLUE_FIREWORKS },
    ["S"] = { nextTier = "S+", itemCost = 4, effect = CONST_ME_PINK_FIREWORKS },
    ["S+"] = { nextTier = nil, itemCost = 0, effect = CONST_ME_POFF } -- Tier final
}


local flatSpeed = 40
-- Configuración para diferentes vocaciones y tiers
local tierConfig = {
    [0] = {
        [CONST_REGENERATION_CONFIG] = {
            ["A"] = { healthGain = 20, healthTicks = 4500, manaGain = 55, manaTicks = 4500 }, -- h -> 20 - 4.5s, m -> 55 - 4.5s
            ["S"] = { healthGain = 35, healthTicks = 4500, manaGain = 50, manaTicks = 4500 },
            ["S+"] = { healthGain = 65, healthTicks = 4100, manaGain = 90, manaTicks = 3800 }
        },
        [CONST_ATTRIBUTES_CONFIG] = {
            ["A"] = { magicLevel = 1 },
            ["S"] = { magicLevel = 2 },
            ["S+"] = { magicLevel = 4 },
        }
    },
    [1] = { -- Sorcerer
        [CONST_REGENERATION_CONFIG] = {
            ["A"] = { healthGain = 20, healthTicks = 4500, manaGain = 55, manaTicks = 4500 }, -- h -> 20 - 4.5s, m -> 55 - 4.5s
            ["S"] = { healthGain = 35, healthTicks = 4500, manaGain = 50, manaTicks = 4500 },
            ["S+"] = { healthGain = 65, healthTicks = 4100, manaGain = 90, manaTicks = 3800 }
        },
        [CONST_ATTRIBUTES_CONFIG] = {
            ["A"] = { magicLevel = 1 },
            ["S"] = { magicLevel = 2 },
            ["S+"] = { magicLevel = 4 },
        }
    },
    [2] = { -- Druid
        [CONST_REGENERATION_CONFIG] = {
            ["A"] = { healthGain = 20, healthTicks = 4500, manaGain = 55, manaTicks = 4500 },
            ["S"] = { healthGain = 35, healthTicks = 4500, manaGain = 50, manaTicks = 4500 },
            ["S+"] = { healthGain = 65, healthTicks = 4100, manaGain = 90, manaTicks = 3800 }
        },
        [CONST_ATTRIBUTES_CONFIG] = {
            ["A"] = { magicLevel = 1 },
            ["S"] = { magicLevel = 2 },
            ["S+"] = { magicLevel = 4 },
        }
    },
    [3] = { -- Knight
        [CONST_REGENERATION_CONFIG] = {
            ["A"] = { healthGain = 20, healthTicks = 4500, manaGain = 55, manaTicks = 4500 },
            ["S"] = { healthGain = 35, healthTicks = 4500, manaGain = 50, manaTicks = 4500 },
            ["S+"] = { healthGain = 65, healthTicks = 4100, manaGain = 80, manaTicks = 3800 }
        },
        [CONST_ATTRIBUTES_CONFIG] = {
            ["A"] = { skillDistance = 1 },
            ["S"] = { skillDistance = 2 },
            ["S+"] = { skillDistance = 4 },
        }
    },
    [4] = { -- Paladin
        [CONST_REGENERATION_CONFIG] = {
            ["A"] = { healthGain = 38, healthTicks = 4500, manaGain = 38, manaTicks = 4500 },
            ["S"] = { healthGain = 40, healthTicks = 4500, manaGain = 45, manaTicks = 4500 },
            ["S+"] = { healthGain = 65, healthTicks = 4100, manaGain = 80, manaTicks = 3800 }
        },
        [CONST_ATTRIBUTES_CONFIG] = {
            ["A"] = { skillSword = 1, skillAxe = 1, skillClub = 1 },
            ["S"] = { skillSword = 2, skillAxe = 2, skillClub = 2 },
            ["S+"] = { skillSword = 4, skillAxe = 4, skillClub = 4 },
        }
    },
}

local grey = 3003
local blue = 3043
local green = 3415
local purple = 36792
local yellow = 34021

local validEquipments = { 50000 }

local function isValidEquipment(item)
    return table.contains(validEquipments, item.itemid)
end

local function getNextTierAndCost(tier)
    local requirement = tierRequirements[tier]
    if requirement then
        return requirement.nextTier, requirement.itemCost, requirement.effect
    else
        return nil, nil, nil
    end
end

local function calcTime(ms)
    local seconds = math.floor(ms / 1000)
    local milliseconds = math.floor((ms % 1000) / 10)
    return seconds .. "." .. string.format("%02d", milliseconds) .. "s"
end

local function generateItemDescription(vocation, tier)
    local description = "Tier: " .. tier .. "\n"
    local vocationConfig = tierConfig[vocation]

    description = description .. "Speed -> " .. "+" .. flatSpeed .. "\n"

    -- Configuración de regeneración
    if vocationConfig[CONST_REGENERATION_CONFIG][tier] then
        local regenConfig = vocationConfig[CONST_REGENERATION_CONFIG][tier]
        if regenConfig.manaGain and regenConfig.manaGain > 0 then
            description = description .. "Mana regeneration -> " .. regenConfig.manaGain .. " every " .. calcTime(regenConfig.manaTicks) .. "\n"
        end
        if regenConfig.healthGain and regenConfig.healthGain > 0 then
            description = description .. "Health regeneration -> " .. regenConfig.healthGain .. " every " .. calcTime(regenConfig.healthTicks) .. "\n"
        end
    end

    -- Configuración de atributos
    if vocationConfig[CONST_ATTRIBUTES_CONFIG][tier] then
        local attrConfig = vocationConfig[CONST_ATTRIBUTES_CONFIG][tier]
        if attrConfig.magicLevel and attrConfig.magicLevel > 0 then
            description = description .. "Magic level -> +" .. attrConfig.magicLevel .. "\n"
        end
        if attrConfig.skillSword and attrConfig.skillSword > 0 then
            description = description .. "Sword skill -> +" .. attrConfig.skillSword .. "\n"
        end
        if attrConfig.skillAxe and attrConfig.skillAxe > 0 then
            description = description .. "Axe skill -> +" .. attrConfig.skillAxe .. "\n"
        end
        if attrConfig.skillClub and attrConfig.skillClub > 0 then
            description = description .. "Club skill -> +" .. attrConfig.skillClub .. "\n"
        end
        if attrConfig.skillDistance and attrConfig.skillDistance > 0 then
            description = description .. "Distance skill -> +" .. attrConfig.skillDistance .. "\n"
        end
    end

    return description
end



local upgradeOrbVip = Action()
-- todo: add sounds
function upgradeOrbVip.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item.itemid == ORB_UPGRADE_VIP_ID and isValidEquipment(target) then
        local tier = target:getAttribute(ITEM_ATTRIBUTE_DESCRIPTION):match("Tier:%s*(%a+%+?)") or "B"
        local nextTier, itemCost, effect = getNextTierAndCost(tier)

        if not nextTier then
            player:sendTextMessage(MESSAGE_LOOT, "You already have the highest tier.")
            player:getPosition():sendMagicEffect(CONST_ME_POFF)
            return true
        end

        if item:getCount() < itemCost then
            player:sendColoredMessage("You need {blue|" .. itemCost .. " upgrade orb" .. (itemCost > 1 and "s" or "") .. "} to reach the next tier.")
            player:getPosition():sendMagicEffect(CONST_ME_POFF)
            return true
        end

        -- Actualizamos la descripción del objeto con las estadísticas del nuevo tier
        local vocation = player:getVocation():getBaseId()
        local newDescription = generateItemDescription(vocation, nextTier)

        target:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, newDescription)
        player:sendColoredMessage("You successfully upgraded from tier {purple|" .. tier .. "} to tier {purple|" .. nextTier .. "}.")
        player:getPosition():sendMagicEffect(effect)

        item:remove(itemCost)
        target:setActionId(51234)
        return true
    else
        player:sendTextMessage(MESSAGE_LOOT, "You cant upgrade this item.")
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
    end
    return false
end

upgradeOrbVip:id(ORB_UPGRADE_VIP_ID)
upgradeOrbVip:register()

local regenerationCondition = Condition(CONDITION_REGENERATION, CONDITIONID_FEET)
local attributesCondition = Condition(CONDITION_ATTRIBUTES, CONDITIONID_FEET)
local hasteCondition = Condition(CONDITION_HASTE, CONDITIONID_FEET)

local bootsEquipOn = MoveEvent()

function bootsEquipOn.onEquip(player, item, position, fromPosition)
    print("entro0")
    if not player or player:isInGhostMode() then
        return true
    end

    local vocation = player:getVocation():getBaseId()
    local itemName = item:getName()
    if tierConfig[vocation] then
        print("entro1")
        local tier = item:getAttribute(ITEM_ATTRIBUTE_DESCRIPTION):match("Tier:%s*(%a+%+?)")
        local vocationConfig = tierConfig[vocation]

        hasteCondition:setParameter(CONDITION_PARAM_TICKS, -1)
        hasteCondition:setParameter(CONDITION_PARAM_SPEED, flatSpeed)
        hasteCondition:setParameter(CONDITION_PARAM_SUBID, HASTE_SUBID)
        player:addCondition(hasteCondition)

        if vocationConfig[CONST_REGENERATION_CONFIG][tier] then
            local regenConfig = vocationConfig[CONST_REGENERATION_CONFIG][tier]
            regenerationCondition:setParameter(CONDITION_PARAM_SUBID, REGENERATION_SUBID)
            regenerationCondition:setParameter(COMBAT_PARAM_TYPE, COMBAT_MANADRAIN)
            regenerationCondition:setParameter(CONDITION_PARAM_TICKS, -1)
            regenerationCondition:setParameter(CONDITION_PARAM_MANAGAIN, regenConfig.manaGain)
            regenerationCondition:setParameter(CONDITION_PARAM_MANATICKS, regenConfig.manaTicks)
            regenerationCondition:setParameter(CONDITION_PARAM_HEALTHGAIN, regenConfig.healthGain)
            regenerationCondition:setParameter(CONDITION_PARAM_HEALTHTICKS, regenConfig.healthTicks)

            player:addCondition(regenerationCondition)
        end

        if vocationConfig[CONST_ATTRIBUTES_CONFIG][tier] then
            local attrConfig = vocationConfig[CONST_ATTRIBUTES_CONFIG][tier]
            attributesCondition:setParameter(CONDITION_PARAM_SUBID, ATTRIBUTES_SUBID)
            attributesCondition:setParameter(CONDITION_PARAM_TICKS, -1)
            attributesCondition:setParameter(CONDITION_PARAM_SKILL_SWORD, attrConfig.skillSword or 0)
            attributesCondition:setParameter(CONDITION_PARAM_SKILL_AXE, attrConfig.skillAxe or 0)
            attributesCondition:setParameter(CONDITION_PARAM_SKILL_CLUB, attrConfig.skillClub or 0)

            attributesCondition:setParameter(CONDITION_PARAM_STAT_MAGICPOINTS, attrConfig.magicLevel or 0)

            attributesCondition:setParameter(CONDITION_PARAM_SKILL_DISTANCE, attrConfig.skillDistance or 0)

            player:addCondition(attributesCondition)
        end
        print("entro2")
    end
    return true
end

bootsEquipOn:aid(51234)
bootsEquipOn:slot("feet")
bootsEquipOn:register()

local bootsEquipOff = MoveEvent()

function bootsEquipOff.onDeEquip(player, item, position, fromPosition)
    print("entrodeseqiup0")
    if not player then
        return true
    end

    player:removeCondition(CONDITION_HASTE, CONDITIONID_FEET, HASTE_SUBID)
    player:removeCondition(CONDITION_REGENERATION, CONDITIONID_FEET, REGENERATION_SUBID)
    player:removeCondition(CONDITION_ATTRIBUTES, CONDITIONID_FEET, ATTRIBUTES_SUBID)
    print("entrodeseqiup1")

    return true
end

bootsEquipOff:aid(51234)
bootsEquipOff:slot("feet")
bootsEquipOff:register()
