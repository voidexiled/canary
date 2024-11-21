local supremeCube = Action()

local config = {
    cubeID = 50002,
    price = 0,
    storage = 97000,
    cooldown = 30,
    towns = {
        { name = "Ab'Dendriel", teleport = Position(32732, 31634, 7) },
        { name = "Ankrahmun", teleport = Position(33194, 32853, 8) },
        { name = "Carlin", teleport = Position(32360, 31782, 7) },
        { name = "Darashia", teleport = Position(33213, 32454, 1) },
        { name = "Edron", teleport = Position(33217, 31814, 8) },
        { name = "Farmine", teleport = Position(33023, 31521, 11) },
        { name = "Issavi", teleport = Position(33921, 31477, 5) },
        { name = "Kazordoon", teleport = Position(32649, 31925, 11) },
        { name = "Krailos", teleport = Position(33657, 31665, 8) },
        { name = "Liberty Bay", teleport = Position(32317, 32826, 7) },
        { name = "Marapur", teleport = Position(33842, 32853, 7) },
        { name = "Port Hope", teleport = Position(32594, 32745, 7) },
        { name = "Rathleton", teleport = Position(33594, 31899, 6) },
        { name = "Roshamuul", teleport = Position(33513, 32363, 6) },
        { name = "Svargrond", teleport = Position(32212, 31132, 7) },
        { name = "Thais", teleport = Position(32369, 32241, 7) },
        { name = "Venore", teleport = Position(32957, 32076, 7) },
        { name = "Yalahar", teleport = Position(32787, 31276, 7) },
    }
}

local function supremeCubeMessage(player, effect, message)
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, message)
    player:getPosition():sendMagicEffect(effect)
end

function supremeCube.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local inPz = player:getTile():hasFlag(TILESTATE_PROTECTIONZONE)
    local inFight = player:isPzLocked() or player:getCondition(CONDITION_INFIGHT, CONDITIONID_DEFAULT)

    if not inPz and inFight then
        supremeCubeMessage(player, CONST_ME_POFF, "No puedes usarlo mientras estas en combate.")
        return false
    end

    if player:getMoney() + player:getBankBalance() < config.price then
        supremeCubeMessage(player, CONST_ME_POFF, "Te hacen falta " ..
            config.price - (player:getMoney() + player:getBankBalance()) .. " gold coins.")
        return false
    end

    if player:getStorageValue(config.storage) > os.time() then
        local remainingTime = player:getStorageValue(config.storage) - os.time()
        supremeCubeMessage(player, CONST_ME_POFF, "Puedes usarlo de nuevo en: " .. remainingTime .. " segundos.")
        return false
    end

    local window = ModalWindow({
        title = "Noctera Cube",
        message = "Seleccionar Destination - Price: " .. config.price .. " gold.",
    })
    window:addChoice("House", function(player, button, choice)
        if button.name == "Seleccionar" then
            local house = player:getHouse()
            if house then
                player:teleportTo(house:getExitPosition(), true)
                player:removeMoneyBank(config.price)
                supremeCubeMessage(player, CONST_ME_TELEPORT, "Bienvenido a tu casa!.")
                player:setStorageValue(config.storage, os.time() + config.cooldown)
            else
                supremeCubeMessage(player, CONST_ME_POFF, "No tienes una casa.")
            end
        end
        return true
    end)

    for _, town in pairs(config.towns) do
        if town.name then
            window:addChoice(town.name, function(player, button, choice)
                if button.name == "Seleccionar" then
                    player:teleportTo(town.teleport, true)
                    player:removeMoneyBank(config.price)
                    supremeCubeMessage(player, CONST_ME_TELEPORT, "Bienvenido a " .. town.name)
                    player:setStorageValue(config.storage, os.time() + config.cooldown)
                end
                return true
            end)
        end
    end

    window:addButton("Seleccionar")
    window:addButton("Cerrar")
    window:setDefaultEnterButton(0)
    window:setDefaultEscapeButton(1)
    window:sendToPlayer(player)
    return true
end

supremeCube:id(config.cubeID)
supremeCube:register()
