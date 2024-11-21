local smallstaminarefill = Action()
function smallstaminarefill.onUse(player, item, ...)
    local stamina = player:getStamina()
    if stamina >= 2520 then
        player:sendCancelMessage("Ya tienes stamina llena.")
        return true
    end
    player:setStamina(math.min(2520, stamina + 120))
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
    player:sendCancelMessage("Regeneraste 2 horas de stamina.")
    item:remove(1)
    return true
end

smallstaminarefill:id(50006)
smallstaminarefill:register()
