local frag_remover = Action()

function frag_remover.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not isInArray({ SKULL_RED, SKULL_BLACK }, player:getSkull()) then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Solo puedes remover RED SKULL o BLACK SKULL.")
        return true
    end
    if (not getTileInfo(player:getPosition()).protection) then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Debes estar en una zona de proteccion.")
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        return true
    end

    player:setSkull(0)
    player:setSkullTime(0)
    item:remove(1)
    removefrags(player)
    return true
end

frag_remover:id(50005)
frag_remover:register()
