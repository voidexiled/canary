local loyalty = TalkAction("!loyalty")

function loyalty.onSay(player, words, param, type)
    local loyaltyTitle = player:getLoyaltyTitle()
    local loyaltyPoints = player:getLoyaltyPoints()
    local loyaltyBonus = player:getLoyaltyBonus()

    if loyaltyTitle ~= nil then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("You are a %s with %d loyalty points and %d bonus points.", loyaltyTitle, loyaltyPoints, loyaltyBonus))
        return true
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You don't have any loyalty.")
    end

    return true
end

loyalty:groupType("normal")
loyalty:register()
