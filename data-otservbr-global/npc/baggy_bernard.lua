local internalNpcName = "Baggy Bernard"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 0
npcConfig.walkRadius = 0

npcConfig.outfit = {
    lookType = 4091, -- Cambia esto si necesitas un lookType diferente
    lookHead = 0, -- Apariencia de Baggy Bernard
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
}

npcConfig.flags = {
    floorchange = false,
}

npcConfig.voices = {
    interval = 15000,
    chance = 50,
    { text = "Need something to carry your loot? I've got the best backpacks in town!" },
    { text = "Backpacks for every adventurer! Take your pick!" },
    { text = "Don't leave without a reliable pack!" },
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

npcHandler:setMessage(MESSAGE_GREET, "Hello, traveler! Looking for a sturdy backpack?")
npcHandler:setMessage(MESSAGE_FAREWELL, "Safe travels, and don't let your pack get too heavy!")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Come back anytime if you need a new pack!")

npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

npcConfig.shop = {
    { itemName = "bag", clientId = 2853, buy = 12 },
    { itemName = "green bag", clientId = 2857, buy = 12 },
    { itemName = "yellow bag", clientId = 2858, buy = 12 },
    { itemName = "red bag", clientId = 2859, buy = 12 },
    { itemName = "purple bag", clientId = 2860, buy = 12 },
    { itemName = "blue bag", clientId = 2861, buy = 12 },
    { itemName = "grey bag", clientId = 2862, buy = 12 },
    { itemName = "orange bag", clientId = 9603, buy = 12 },
    { itemName = "golden bag", clientId = 2863, buy = 12 },
    { itemName = "camouflage bag", clientId = 2864, buy = 300 },
    { itemName = "pirate bag", clientId = 5927, buy = 500 },
    { itemName = "beach bag", clientId = 5950, buy = 500 },
    { itemName = "fur bag", clientId = 6343, buy = 500 },
    { itemName = "brocade bag", clientId = 8861, buy = 500 },
    { itemName = "expedition bag", clientId = 10325, buy = 500 },

    { itemName = "backpack", clientId = 2854, buy = 1000 },
    { itemName = "camouflage bag", clientId = 2864, buy = 1000 },
    { itemName = "green backpack", clientId = 2865, buy = 1000 },
    { itemName = "yellow backpack", clientId = 2866, buy = 1000 },
    { itemName = "red backpack", clientId = 2867, buy = 1000 },
    { itemName = "blue backpack", clientId = 2868, buy = 1000 },
    { itemName = "purple backpack", clientId = 2869, buy = 1000 },
    { itemName = "grey backpack", clientId = 2870, buy = 1000 },
    { itemName = "orange backpack", clientId = 9602, buy = 1000 },
    { itemName = "golden backpack", clientId = 2871, buy = 1000 },
    { itemName = "camouflage backpack", clientId = 2872, buy = 2500 },
    { itemName = "beach backpack", clientId = 5949, buy = 2500 },
    { itemName = "backpack of holding", clientId = 3253, buy = 10000 },
    { itemName = "jewelled backpack", clientId = 5801, buy = 10000 },
    { itemName = "pirate backpack", clientId = 5926, buy = 10000 },
    { itemName = "fur backpack", clientId = 7342, buy = 10000 },
    { itemName = "brocade backpack", clientId = 8860, buy = 10000 },
    { itemName = "demon backpack", clientId = 9601, buy = 10000 },
    { itemName = "moon backpack", clientId = 9604, buy = 10000 },
    { itemName = "crown backpack", clientId = 9605, buy = 10000 },
    { itemName = "heart backpack", clientId = 10202, buy = 10000 },
    { itemName = "expedition backpack", clientId = 10324, buy = 10000 },
    { itemName = "dragon backpack", clientId = 10326, buy = 10000 },
    { itemName = "minotaur backpack", clientId = 10327, buy = 10000 },
    --{ itemName = "santa backpack", clientId = 10346, buy = 10000 },
    { itemName = "deepling backpack", clientId = 14248, buy = 10000 },
    { itemName = "buggy backpack", clientId = 14249, buy = 10000 },
    { itemName = "mushroom backpack", clientId = 16099, buy = 10000 },
    { itemName = "crystal backpack", clientId = 16100, buy = 10000 },
    { itemName = "pannier backpack", clientId = 19159, buy = 10000 },
    { itemName = "cake backpack", clientId = 20347, buy = 10000 },
    { itemName = "glooth backpack", clientId = 21295, buy = 10000 },






}
-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, ignore, inBackpacks, totalCost)
    npc:sellItem(player, itemId, amount, subType, 0, ignore, inBackpacks)
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, itemId, subtype, amount, ignore, name, totalCost)
    player:sendTextMessage(MESSAGE_TRADE, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType) end

npcType:register(npcConfig)
