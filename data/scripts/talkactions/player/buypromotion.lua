local buypromotion = TalkAction("!promotion")

function buypromotion.onSay(player, words, param)
	local totalCost = 20000
	local promotion = player:getVocation():getPromotion()
	local hasPromotion = player:kv():get("promoted")
	if not promotion or hasPromotion then
		player:sendTextMessage(MESSAGE_STATUS, "You are already promoted!")
	elseif not player:removeMoneyBank(totalCost) then
		player:sendTextMessage(MESSAGE_STATUS, "You do not have enough money!")
	else
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have promoted!")
		player:setVocation(promotion)
		player:kv():set("promoted", true)
	end
	return true
end

buypromotion:groupType("normal")
buypromotion:register()
