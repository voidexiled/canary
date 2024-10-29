local internalNpcName = "A Bloodshade"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 3000
npcConfig.walkRadius = 2

npcConfig.outfit = {
    lookType = 1733,
}

npcConfig.flags = {
    floorchange = false,
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
    npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
    npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
    npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
    npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
    npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
    npcHandler:onCloseChannel(npc, creature)
end

local function greetCallback(npc, creature)
    local playerId = creature:getId()
    local player = Player(creature)
    -- if lvl is enought for quest
    if player:getStorageValue(Storage.Quest.U13_20.RottenBlood.QuestLine) < 1 then
        npcHandler:setMessage(MESSAGE_GREET, "?") -- IDK
        return true
    end
    if player:getStorageValue(Storage.Quest.U13_20.RottenBlood.QuestLine) > 0 and player:getStorageValue(Storage.Quest.U13_20.RottenBlood.QuestLine) < 4 then
        npcHandler:setMessage(MESSAGE_GREET, "Mortal! If you are on a {quest} to serve the blood god, my master - be greeted!")
        return true
    else
        npcHandler:setMessage(MESSAGE_GREET, "Go now and search the ancient temple in the north-west part of the drefian ruins. Slay the evil that lurks there and cleanse the foul place from its taint!")
    end
    return true
end

local function creatureSayCallback(npc, creature, type, message)
    local player = Player(creature)
    local playerId = player:getId()

    if not npcHandler:checkInteraction(npc, creature) then
        return false
    end

    if player:getStorageValue(Storage.Quest.U13_20.RottenBlood.QuestLine) > 0 and player:getStorageValue(Storage.Quest.U13_20.RottenBlood.QuestLine) < 4 then
        if npcHandler:getTopic(playerId) == 0 then
            if MsgContains(message, "quest") then
                npcHandler:say({ "To enter the realm of the sanguine master and destroy its spawn, a sufficient sacrifice is imperative. ...",
                    "Find and slay the keeper of blooded tears and bring the nectar of his eyes before the blood god. Present your gift on the sacrificial altar. ...",
                    "After - and under no circumstances before - you have completed this procedure, you can enter the sacred fluid. You can, of course also take a slightly faster... {detour}."
                }, npc, creature)
                if player:getStorageValue(Storage.Quest.U13_20.RottenBlood.QuestLine) < 2 then
                    player:setStorageValue(Storage.Quest.U13_20.RottenBlood.QuestLine, 2)
                end
                npcHandler:setTopic(playerId, 1)
            end
        elseif npcHandler:getTopic(playerId) == 1 then
            if MsgContains(message, "detour") then
                npcHandler:say({ "Hm. I see. Well, I will be frank. Every blood sacrifice has its price. Blood money will please the blood god... just as well. ...",
                    "The sum would be five million gold pieces and I... my master will be pleased. Are you prepared for a sacrifice such as this?"
                }, npc, creature)
                npcHandler:setTopic(playerId, 2)
            end
        elseif npcHandler:getTopic(playerId) == 2 then
            if MsgContains(message, "yes") then
                npcHandler:say("You are willing to pay 5,000,000 gold pieces, then? There is no turning back after our... transaction is complete. Are you sure?", npc, player)
                npcHandler:setTopic(playerId, 3)
            end
        elseif npcHandler:getTopic(playerId) == 3 then
            if MsgContains(message, "yes") then
                if player:removeMoney(5000000) then
                    npcHandler:say("The bargain has been made, the business is done.")
                    player:setStorageValue(Storage.Quest.U13_20.RottenBlood.QuestLine, 4)
                else
                    npcHandler:say("You don't have five million gold pieces with you, DONT LOST MY TIME!")
                end
            end
        end
    else
        npcHandler:say("Go now and search the ancient temple in the north-west part of the drefian ruins. Slay the evil that lurks there and cleanse the foul place from its taint!")
    end
    return true
end


npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:setMessage(MESSAGE_GREET, greetCallback)

npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye then.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Good bye then.")

npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)
