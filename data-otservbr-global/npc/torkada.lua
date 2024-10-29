local internalNpcName = "Torkada"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 5000
npcConfig.walkRadius = 1

npcConfig.outfit = {
    lookType = 1243,
    lookHead = 52,
    lookBody = 97,
    lookLegs = 114,
    lookFeet = 0,
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
    if player:getStorageValue(Storage.Quest.U13_20.RottenBlood.Questline) < 1 then
        npcHandler:setMessage(MESSAGE_GREET, "Greetings! This isn't the {time} to chitchat though.")
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

    if player:getStorageValue(Storage.Quest.U13_20.RottenBlood.QuestLine) < 1 then
        if npcHandler:getTopic(playerId) == 0 then
            if MsgContains(message, "time") then
                npcHandler:say("This expedition is here on an important {mission} for the inquisition.", npc, creature)
                npcHandler:setTopic(playerId, 1)
            end
        elseif npcHandler:getTopic(playerId) == 1 then
            if MsgContains(message, "mission") then
                npcHandler:say("Are you willing, to bring the fury of the inquisition to that foul place and eradicate all evil you find? Speak, {yes} or no?", npc, creature)
                npcHandler:setTopic(playerId, 2)
            end
        elseif npcHandler:getTopic(playerId) == 2 then
            if MsgContains(message, "yes") then
                npcHandler:say({ "So hereby receive the blessings of the gods, provided by me as the voice of the inquisition! ...",
                    "Go now and search the ancient temple in the north-west part of the drefian ruins. Slay the evil that lurks there and cleanse the foul place from its taint!" }, npc, creature)
                player:setStorageValue(Storage.Quest.U13_20.RottenBlood.QuestLine, 1)
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
