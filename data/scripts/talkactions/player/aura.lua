local config_aura = {
    effect = 5; -- efeito que vai ficar girando no player
    effect_health = 162; -- efeito qnd curar o player
    level_use = { -- level que vai ser usado (min/max)
        min = 1,
        max = 600,
    } ;
    health = 10; -- tanto que vai curar por time configurado
    pos_aura = { -- não mexa
        [1] = {x = 0, y = -1};
        [2] = {x = 1, y = -1};
        [3] = {x = 1, y = 0};
        [4] = {x = 1, y = 1};
        [5] = {x = 0, y = 1};
        [6] = {x = -1, y = 1};
        [7] = {x = -1, y = 0};
        [8] = {x = -1, y = -1};
    };
    storage_pos = 1547637649; -- não mexa e nem repita esse valor em outro script!!
    storage = 165477963; -- não mexa e nem repita esse valor em outro script!!
    tempo_aura = 100; -- tempo da aurea para passar em cada posição
}

local function calculePosAurea(player_uid)
    local player = Player(player_uid)
    if(not(player))then
        return(nil)
    end

    if(player:getStorageValue(config_aura.storage) <= 0)then
        return(nil)
    end

    if(player:getStorageValue(config_aura.storage_pos) >= 8)then
        player:setStorageValue(config_aura.storage_pos, 0)
    end

    player:setStorageValue(config_aura.storage_pos, player:getStorageValue(config_aura.storage_pos) + 1)
    return(player:getStorageValue(config_aura.storage_pos))
end

local function posAurea(player_uid)
    local player = Player(player_uid)
    if(not(player))then
        return(nil)
    end

    if(player:getStorageValue(config_aura.storage) <= 0)then
        return(nil)
    end

    local pos_x = player:getPosition().x
    local pos_y = player:getPosition().y
    local pos_z = player:getPosition().z

    local aa = calculePosAurea(player_uid)

    local pos = Position(pos_x + config_aura.pos_aura[aa].x, pos_y + config_aura.pos_aura[aa].y, pos_z)
    if(not(pos))then
        return(nil)
    end
   return(pos)
end

local function aurea(player_uid)
    local player = Player(player_uid)
    if(not(player))then
        return(nil)
    end

    if(player:getStorageValue(config_aura.storage) <= 0)then
        return(nil)
    end

    player:addHealth(config_aura.health)
    player:getPosition():sendMagicEffect(config_aura.effect_health)

    local position = posAurea(player_uid)
    position:sendMagicEffect(config_aura.effect)
    addEvent(aurea, config_aura.tempo_aura, player_uid)
end

local aura = TalkAction("!aura")
function aura.onSay(player, words, param)
    if param == "on" then
        if(player:getLevel() > config_aura.level_use.max)then
            return(not(player:sendTextMessage(MESSAGE_STATUS_SMALL, player:getName() .. " seu level(" .. player:getLevel() .. ") precisa ser maior(" .. config_aura.level_use.max)))
        end

        if(player:getLevel() < config_aura.level_use.min)then
            return(not(player:sendTextMessage(MESSAGE_STATUS_SMALL, player:getName() .. " seu level(" .. player:getLevel() .. ") precisa ser menor(" .. config_aura.level_use.max)))
        end

        if(player:getStorageValue(config_aura.storage) >= 1)then
            return(not(player:sendTextMessage(MESSAGE_STATUS_SMALL, player:getName() .. " Você ja esta com a aurea ligada")))
        end

        player:setStorageValue(config_aura.storage, 1)
        player:setStorageValue(config_aura.storage_pos, 0)
        aurea(player.uid)
    elseif param == "off" then
        player:setStorageValue(config_aura.storage, 0)
    end

  return(false)
end

aura:separator(" ")
aura:groupType("normal")
aura:register()