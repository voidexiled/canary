local internalNpcName = "Seller"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 80,
	lookHead = 19,
	lookBody = 86,
	lookLegs = 87,
	lookFeet = 95,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.voices = {
	interval = 15000,
	chance = 50,
	{ text = "General goods and paperware for sale!" },
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

local function creatureSayCallback(npc, creature, type, message)
	local player = Player(creature)
	local playerId = player:getId()

	if not npcHandler:checkInteraction(npc, creature) then
		return false
	end

	if MsgContains(message, "football") then
		npcHandler:say("Do you want to buy a football for 111 gold?", npc, creature)
		npcHandler:setTopic(playerId, 1)
	elseif MsgContains(message, "yes") then
		if npcHandler:getTopic(playerId) == 1 then
			local player = Player(creature)
			if player:getMoney() + player:getBankBalance() >= 111 then
				npcHandler:say("Here it is.", npc, creature)
				player:addItem(2990, 1)
				player:removeMoneyBank(111)
			else
				npcHandler:say("You don't have enough money.", npc, creature)
			end
			npcHandler:setTopic(playerId, 0)
		end
	end
	return true
end

npcConfig.shop = {
	{ itemName = "abyss hammer", clientId = 7414, sell = 20000 },
	{ itemName = "albino plate", clientId = 19358, sell = 1500 },
	{ itemName = "amber staff", clientId = 7426, sell = 8000 },
	{ itemName = "ancient amulet", clientId = 3025, sell = 200 },
	{ itemName = "assassin dagger", clientId = 7404, sell = 20000 },
	{ itemName = "bandana", clientId = 5917, sell = 150 },
	{ itemName = "beastslayer axe", clientId = 3344, sell = 1500 },
	{ itemName = "beetle necklace", clientId = 10457, sell = 1500 },
	{ itemName = "berserker", clientId = 7403, sell = 40000 },
	{ itemName = "blacksteel sword", clientId = 7406, sell = 6000 },
	{ itemName = "blessed sceptre", clientId = 7429, sell = 40000 },
	{ itemName = "bone shield", clientId = 3441, sell = 80 },
	{ itemName = "bonelord helmet", clientId = 3408, sell = 7500 },
	{ itemName = "brutetamer's staff", clientId = 7379, sell = 1500 },
	{ itemName = "buckle", clientId = 17829, sell = 7000 },
	{ itemName = "castle shield", clientId = 3435, sell = 5000 },
	{ itemName = "chain bolter", clientId = 8022, sell = 40000 },
	{ itemName = "chaos mace", clientId = 7427, sell = 9000 },
	{ itemName = "cobra crown", clientId = 11674, sell = 50000 },
	{ itemName = "coconut shoes", clientId = 9017, sell = 500 },
	{ itemName = "composite hornbow", clientId = 8027, sell = 25000 },
	{ itemName = "cranial basher", clientId = 7415, sell = 30000 },
	{ itemName = "crocodile boots", clientId = 3556, sell = 1000 },
	{ itemName = "crystal crossbow", clientId = 16163, sell = 35000 },
	{ itemName = "crystal mace", clientId = 3333, sell = 12000 },
	{ itemName = "crystal necklace", clientId = 3008, sell = 400 },
	{ itemName = "crystal ring", clientId = 3007, sell = 250 },
	{ itemName = "crystal sword", clientId = 7449, sell = 600 },
	{ itemName = "crystalline armor", clientId = 8050, sell = 16000 },
	{ itemName = "daramian mace", clientId = 3327, sell = 110 },
	{ itemName = "daramian waraxe", clientId = 3328, sell = 1000 },
	{ itemName = "dark shield", clientId = 3421, sell = 400 },
	{ itemName = "death ring", clientId = 6299, sell = 1000 },
	{ itemName = "demon shield", clientId = 3420, sell = 30000 },
	{ itemName = "demonbone amulet", clientId = 3019, sell = 32000 },
	{ itemName = "demonrage sword", clientId = 7382, sell = 36000 },
	{ itemName = "devil helmet", clientId = 3356, sell = 1000 },
	{ itemName = "diamond sceptre", clientId = 7387, sell = 3000 },
	{ itemName = "divine plate", clientId = 8057, sell = 55000 },
	{ itemName = "djinn blade", clientId = 3339, sell = 15000 },
	{ itemName = "doll", clientId = 2991, sell = 200 },
	{ itemName = "dragon scale mail", clientId = 3386, sell = 40000 },
	{ itemName = "dragon slayer", clientId = 7402, sell = 15000 },
	{ itemName = "dragonbone staff", clientId = 7430, sell = 3000 },
	{ itemName = "dreaded cleaver", clientId = 7419, sell = 10000 },
	{ itemName = "dwarven armor", clientId = 3397, sell = 30000 },
	{ itemName = "elvish bow", clientId = 7438, sell = 2000 },
	{ itemName = "emerald bangle", clientId = 3010, sell = 800 },
	{ itemName = "epee", clientId = 3326, sell = 8000 },
	{ itemName = "flower dress", clientId = 9015, sell = 1000 },
	{ itemName = "flower wreath", clientId = 9013, sell = 500 },
	{ itemName = "fur boots", clientId = 7457, sell = 2000 },
	{ itemName = "furry club", clientId = 7432, sell = 1000 },
	{ itemName = "glacier amulet", clientId = 815, sell = 1500 },
	{ itemName = "glacier kilt", clientId = 823, sell = 11000 },
	{ itemName = "glacier mask", clientId = 829, sell = 2500 },
	{ itemName = "glacier robe", clientId = 824, sell = 11000 },
	{ itemName = "glacier shoes", clientId = 819, sell = 2500 },
	{ itemName = "gold ring", clientId = 3063, sell = 8000 },
	{ itemName = "golden armor", clientId = 3360, sell = 20000 },
	{ itemName = "golden legs", clientId = 3364, sell = 30000 },
	{ itemName = "goo shell", clientId = 19372, sell = 4000 },
	{ itemName = "griffin shield", clientId = 3433, sell = 3000 },
	{ itemName = "guardian halberd", clientId = 3315, sell = 11000 },
	{ itemName = "hammer of wrath", clientId = 3332, sell = 30000 },
	{ itemName = "headchopper", clientId = 7380, sell = 6000 },
	{ itemName = "heavy mace", clientId = 3340, sell = 50000 },
	{ itemName = "heavy machete", clientId = 3330, sell = 90 },
	{ itemName = "heavy trident", clientId = 12683, sell = 2000 },
	{ itemName = "helmet of the lost", clientId = 17852, sell = 2000 },
	{ itemName = "heroic axe", clientId = 7389, sell = 30000 },
	{ itemName = "hibiscus dress", clientId = 8045, sell = 3000 },
	{ itemName = "hieroglyph banner", clientId = 12482, sell = 500 },
	{ itemName = "horn", clientId = 19359, sell = 300 },
	{ itemName = "jade hammer", clientId = 7422, sell = 25000 },
	{ itemName = "krimhorn helmet", clientId = 7461, sell = 200 },
	{ itemName = "lavos armor", clientId = 8049, sell = 16000 },
	{ itemName = "leaf legs", clientId = 9014, sell = 500 },
	{ itemName = "leopard armor", clientId = 3404, sell = 1000 },
	{ itemName = "leviathan's amulet", clientId = 9303, sell = 3000 },
	{ itemName = "light shovel", clientId = 5710, sell = 300 },
	{ itemName = "lightning boots", clientId = 820, sell = 2500 },
	{ itemName = "lightning headband", clientId = 828, sell = 2500 },
	{ itemName = "lightning legs", clientId = 822, sell = 11000 },
	{ itemName = "lightning pendant", clientId = 816, sell = 1500 },
	{ itemName = "lightning robe", clientId = 825, sell = 11000 },
	{ itemName = "lunar staff", clientId = 7424, sell = 5000 },
	{ itemName = "magic plate armor", clientId = 3366, sell = 90000 },
	{ itemName = "magma amulet", clientId = 817, sell = 1500 },
	{ itemName = "magma boots", clientId = 818, sell = 2500 },
	{ itemName = "magma coat", clientId = 826, sell = 11000 },
	{ itemName = "magma legs", clientId = 821, sell = 11000 },
	{ itemName = "magma monocle", clientId = 827, sell = 2500 },
	{ itemName = "mammoth fur cape", clientId = 7463, sell = 6000 },
	{ itemName = "mammoth fur shorts", clientId = 7464, sell = 850 },
	{ itemName = "mammoth whopper", clientId = 7381, sell = 300 },
	{ itemName = "mastermind shield", clientId = 3414, sell = 50000 },
	{ itemName = "medusa shield", clientId = 3436, sell = 9000 },
	{ itemName = "mercenary sword", clientId = 7386, sell = 12000 },
	{ itemName = "model ship", clientId = 2994, sell = 1000 },
	{ itemName = "mycological bow", clientId = 16164, sell = 35000 },
	{ itemName = "mystic blade", clientId = 7384, sell = 30000 },
	{ itemName = "naginata", clientId = 3314, sell = 2000 },
	{ itemName = "nightmare blade", clientId = 7418, sell = 35000 },
	{ itemName = "noble axe", clientId = 7456, sell = 10000 },
	{ itemName = "norse shield", clientId = 7460, sell = 1500 },
	{ itemName = "onyx pendant", clientId = 22195, sell = 3500 },
	{ itemName = "orcish maul", clientId = 7392, sell = 6000 },
	{ itemName = "oriental shoes", clientId = 21981, sell = 15000 },
	{ itemName = "pair of iron fists", clientId = 17828, sell = 4000 },
	{ itemName = "paladin armor", clientId = 8063, sell = 15000 },
	{ itemName = "patched boots", clientId = 3550, sell = 2000 },
	{ itemName = "pharaoh banner", clientId = 12483, sell = 1000 },
	{ itemName = "pharaoh sword", clientId = 3334, sell = 23000 },
	{ itemName = "pirate boots", clientId = 5461, sell = 3000 },
	{ itemName = "pirate hat", clientId = 6096, sell = 1000 },
	{ itemName = "pirate knee breeches", clientId = 5918, sell = 200 },
	{ itemName = "pirate shirt", clientId = 6095, sell = 500 },
	{ itemName = "pirate voodoo doll", clientId = 5810, sell = 500 },
	{ itemName = "platinum amulet", clientId = 3055, sell = 2500 },
	{ itemName = "ragnir helmet", clientId = 7462, sell = 400 },
	{ itemName = "relic sword", clientId = 7383, sell = 25000 },
	{ itemName = "rift bow", clientId = 22866, sell = 45000 },
	{ itemName = "rift crossbow", clientId = 22867, sell = 45000 },
	{ itemName = "rift lance", clientId = 22727, sell = 30000 },
	{ itemName = "rift shield", clientId = 22726, sell = 50000 },
	{ itemName = "ring of the sky", clientId = 3006, sell = 30000 },
	{ itemName = "royal axe", clientId = 7434, sell = 40000 },
	{ itemName = "ruby necklace", clientId = 3016, sell = 2000 },
	{ itemName = "ruthless axe", clientId = 6553, sell = 45000 },
	{ itemName = "sacred tree amulet", clientId = 9302, sell = 3000 },
	{ itemName = "sapphire hammer", clientId = 7437, sell = 7000 },
	{ itemName = "scarab amulet", clientId = 3018, sell = 200 },
	{ itemName = "scarab shield", clientId = 3440, sell = 2000 },
	{ itemName = "shockwave amulet", clientId = 9304, sell = 3000 },
	{ itemName = "silver brooch", clientId = 3017, sell = 150 },
	{ itemName = "silver dagger", clientId = 3290, sell = 500 },
	{ itemName = "skull helmet", clientId = 5741, sell = 40000 },
	{ itemName = "skullcracker armor", clientId = 8061, sell = 18000 },
	{ itemName = "spiked squelcher", clientId = 7452, sell = 5000 },
	{ itemName = "steel boots", clientId = 3554, sell = 30000 },
	{ itemName = "swamplair armor", clientId = 8052, sell = 16000 },
	{ itemName = "taurus mace", clientId = 7425, sell = 500 },
	{ itemName = "tempest shield", clientId = 3442, sell = 35000 },
	{ itemName = "terra amulet", clientId = 814, sell = 1500 },
	{ itemName = "terra boots", clientId = 813, sell = 2500 },
	{ itemName = "terra hood", clientId = 830, sell = 2500 },
	{ itemName = "terra legs", clientId = 812, sell = 11000 },
	{ itemName = "terra mantle", clientId = 811, sell = 11000 },
	{ itemName = "the justice seeker", clientId = 7390, sell = 40000 },
	{ itemName = "tortoise shield", clientId = 6131, sell = 150 },
	{ itemName = "vile axe", clientId = 7388, sell = 30000 },
	{ itemName = "voodoo doll", clientId = 3002, sell = 400 },
	{ itemName = "war axe", clientId = 3342, sell = 12000 },
	{ itemName = "war horn", clientId = 2958, sell = 8000 },
	{ itemName = "witch hat", clientId = 9653, sell = 5000 },
	{ itemName = "wyvern fang", clientId = 7408, sell = 1500 },
	{ itemName = "angelic axe", clientId = 7436, sell = 5000 },
	{ itemName = "blue robe", clientId = 3567, sell = 10000 },
	{ itemName = "bonelord shield", clientId = 3418, sell = 1200 },
	{ itemName = "boots of haste", clientId = 3079, sell = 30000 },
	{ itemName = "broadsword", clientId = 3301, sell = 500 },
	{ itemName = "butcher's axe", clientId = 7412, sell = 18000 },
	{ itemName = "crown armor", clientId = 3381, sell = 12000 },
	{ itemName = "crown helmet", clientId = 3385, sell = 2500 },
	{ itemName = "crown legs", clientId = 3382, sell = 12000 },
	{ itemName = "crown shield", clientId = 3419, sell = 8000 },
	{ itemName = "crusader helmet", clientId = 3391, sell = 6000 },
	{ itemName = "dragon lance", clientId = 3302, sell = 9000 },
	{ itemName = "dragon shield", clientId = 3416, sell = 4000 },
	{ itemName = "fire axe", clientId = 3320, sell = 8000 },
	{ itemName = "fire sword", clientId = 3280, sell = 4000 },
	{ itemName = "glorious axe", clientId = 7454, sell = 3000 },
	{ itemName = "guardian shield", clientId = 3415, sell = 2000 },
	{ itemName = "ice rapier", clientId = 3284, sell = 1000 },
	{ itemName = "noble armor", clientId = 3380, sell = 900 },
	{ itemName = "obsidian lance", clientId = 3313, sell = 500 },
	{ itemName = "phoenix shield", clientId = 3439, sell = 16000 },
	{ itemName = "queen's sceptre", clientId = 7410, sell = 20000 },
	{ itemName = "royal helmet", clientId = 3392, sell = 30000 },
	{ itemName = "shadow sceptre", clientId = 7451, sell = 10000 },
	{ itemName = "spike sword", clientId = 3271, sell = 1000 },
	{ itemName = "thaian sword", clientId = 7391, sell = 16000 },
	{ itemName = "war hammer", clientId = 3279, sell = 1200 },
	{ itemName = "ankh", clientId = 3077, sell = 100 },
	{ itemName = "dragon necklace", clientId = 3085, buy = 1000, sell = 100, count = 200 },
	{ itemName = "dwarven ring", clientId = 3097, buy = 2000, sell = 100 },
	{ itemName = "energy ring", clientId = 3051, buy = 2000, sell = 100 },
	{ itemName = "glacial rod", clientId = 16118, sell = 6500 },
	{ itemName = "hailstorm rod", clientId = 3067, sell = 3000 },
	{ itemName = "life ring", clientId = 3052, buy = 900, sell = 50 },
	{ itemName = "might ring", clientId = 3048, buy = 5000, sell = 250, count = 20 },
	{ itemName = "moonlight rod", clientId = 3070, sell = 200 },
	{ itemName = "muck rod", clientId = 16117, sell = 6000 },
	{ itemName = "mysterious fetish", clientId = 3078, sell = 50 },
	{ itemName = "necrotic rod", clientId = 3069, sell = 1000 },
	{ itemName = "northwind rod", clientId = 8083, sell = 1500 },
	{ itemName = "protection amulet", clientId = 3084, sell = 100, count = 250 },
	{ itemName = "ring of healing", clientId = 3098, buy = 2000, sell = 100 },
	{ itemName = "silver amulet", clientId = 3054, buy = 100, sell = 50, count = 200 },
	{ itemName = "snakebite rod", clientId = 3066, sell = 100 },
	{ itemName = "springsprout rod", clientId = 8084, sell = 3600 },
	{ itemName = "strange talisman", clientId = 3045, buy = 100, sell = 30, count = 200 },
	{ itemName = "terra rod", clientId = 3065, sell = 2000 },
	{ itemName = "time ring", clientId = 3053, buy = 2000, sell = 100 },
	{ itemName = "underworld rod", clientId = 8082, sell = 4400 },
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
