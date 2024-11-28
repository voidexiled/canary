local freetc = TalkAction("/freetc")

function freetc.onSay(player, words, param)
	player:addTransferableCoins(10000)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have added 10000 tibia coins to your balance. Your total is now " .. player:getTransferableCoins() .. ".")
	player:getPosition():sendMagicEffect(CONST_ME_ORCSHAMAN_FIRE)
	return true
end

freetc:groupType("god")
freetc:register()
