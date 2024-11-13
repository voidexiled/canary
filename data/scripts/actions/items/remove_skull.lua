local removeSkull = Action()

function removeSkull.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if player:getSkull() ~= SKULL_NONE then
        item:remove(1)
        player:setSkull(SKULL_NONE)
        player:sendTextMessage(MESSAGE_STATUS, "You have removed your skull.")
    else
        player:sendTextMessage(MESSAGE_STATUS, "You don't have a skull.")
    end
    return true
end

removeSkull:id(12905)
removeSkull:register()
