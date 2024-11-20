local frag_remover = Action()

function frag_remover.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if player:getSkull() ~= SKULL_NONE then
        item:remove(1)
        player:setSkull(SKULL_NONE)
        player:sendTextMessage(MESSAGE_STATUS, "You have removed your skull.")
    else
        player:sendTextMessage(MESSAGE_STATUS, "You don't have a skull.")
    end
    return true
end

frag_remover:id(50005)
frag_remover:register()
