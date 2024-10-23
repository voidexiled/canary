local flask = TalkAction("!flask")

function flask.onSay(player, words, param)
	if param == "" then
		player:sendCancelMessage("You need to specify on/off param.")
		return true
	end
	if param == "on" then
		player:kv():set("talkaction.potions.flask", true)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You will not receive flasks!")
		player:getPosition():sendMagicEffect(CONST_ME_REDSMOKE)
	elseif param == "off" then
		player:kv():remove("talkaction.potions.flask")
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You will receive flasks.")
		player:getPosition():sendMagicEffect(CONST_ME_REDSMOKE)
	end
	return true
end

flask:separator(" ")
flask:groupType("normal")
flask:register()
