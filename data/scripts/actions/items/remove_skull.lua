local action = Action()

function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if player:getSkull() ~= SKULL_NONE then
        player:setSkull(SKULL_NONE)
        player:sendTextMessage(MESSAGE_EVENT, "You have removed your skull.")
        item:remove(1)
    else
        player:sendTextMessage(MESSAGE_EVENT, "You don't have a skull.")
    end
    return true
end

action:id(12904)
action:register()
