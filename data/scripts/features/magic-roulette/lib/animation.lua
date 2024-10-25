--[[
	Description: This file is part of Roulette System (refactored)
	Author: Lyµ
	Discord: Lyµ#8767
]] local Constants = require('data/scripts/features/magic-roulette/lib/core/constants')

local Animation = {}

function Animation:moveDummies(slot, speed)
    local position = Position(slot.startPosition)

    for i = 1, slot.tilesPerSlot do
        local tile = Tile(position)
        if tile then
            local dummy = tile:getTopCreature()
            if dummy then
                if position.x == slot.startPosition.x then
                    dummy:remove()
                else
                    dummy:setSpeed(speed)
                    dummy:move(DIRECTION_WEST)
                    -- ?? sound
                    slot.centerPosition:sendSingleSoundEffect(17)
                end
            end
            position.x = position.x + 1
        end
    end
end

function Animation:createDummy(slot, defaultSpeed, lookTypeEx)
    local dummy = Game.createMonster(Constants.ROULETTE_DUMMY_NAME, slot.endPosition, false, true)
    if dummy then
        dummy:setSpeed(defaultSpeed)
        dummy:setOutfit{
            lookTypeEx = lookTypeEx
        }
    end

    return dummy
end

function Animation:start(args)
    local speeds = {}
    local events = {}

    local initEvent = 12
    local initSpeed = 7000
    local formula = 1.1

    for i = 42, 1, -1 do
        initEvent = initEvent * formula
        initSpeed = initSpeed / formula

        events[#events + 1] = initEvent
        speeds[#speeds + 1] = initSpeed
    end

    -- little fix on animation middle
    for i, speed in ipairs(speeds) do
        if i > 13 and i < 28 then
            speeds[i] = speed * 1.65
        end
    end

    local slot = args.slot
    local rewardId = args.reward.id
    local animationItems = slot:buildAnimationItems(rewardId)
    local i = 1

    local function move()
        self:moveDummies(slot, speeds[i])
        self:createDummy(slot, speeds[i], animationItems[i])

        if i >= 42 then
            addEvent(function()
                slot.startPosition:sendDistanceEffect(slot.centerPosition, 38)
                slot.endPosition:sendDistanceEffect(slot.centerPosition, 38)
                slot.centerPosition:sendMagicEffect(7)

                addEvent(function()
                    args.onFinish()
                    if args.reward.rare then
                        self:drawFireworks(slot)
                        self:drawRewardHighlight(slot, rewardId)
                    end
                end, 500)
            end, 700)
        else
            addEvent(move, events[i])
        end

        i = i + 1
    end
    move()
end

function Animation:drawFireworks(slot)
    local count = 0

    local function decrease()
        if slot:isRolling() then
            return
        end

        local time = 20 - count
        if time > 0 then
            count = count + 1
            for _, position in ipairs(slot:getPositions()) do
                position:sendMagicEffect(math.random(28, 31))
            end
            addEvent(decrease, 850)
        end
    end

    decrease()
end

function Animation:drawRewardHighlight(slot, rewardId)
    for _, position in ipairs(slot:getPositions()) do
        local tile = Tile(position)
        if tile then
            local dummy = tile:getTopCreature()
            if dummy then
                dummy:setOutfit{
                    lookTypeEx = rewardId
                }
                -- only horizontal
                local minus = (slot.tilesPerSlot - 1) / 2
                local leftPosition = Position(slot.centerPosition.x - minus, slot.centerPosition.y,
                    slot.centerPosition.z)
                local rightPosition = Position(slot.centerPosition.x + minus, slot.centerPosition.y,
                    slot.centerPosition.z)

                -- send distance effect from edges to center
                leftPosition:sendMagicEffect(slot.centerPosition, slot.winEffects[1])
                rightPosition:sendMagicEffect(slot.centerPosition, slot.winEffects[1])
                local randomEffect = random(0, #slot.winEffects)
                while randomEffect == slot.winEffects[1] do
                    randomEffect = random(0, #slot.winEffects)
                end

                -- Reward Effect at dummy position
                dummy:getPosition():sendMagicEffect(randomEffect)
                -- ?? sound reward
                slot.centerPosition:sendSingleSoundEffect(18)
            end
        end
    end
end

return Animation
