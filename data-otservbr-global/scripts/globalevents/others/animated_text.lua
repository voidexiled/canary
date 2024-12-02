local effects = {
    { position = Position(32366, 32246, 7), text = 'Npc island', effect = 42 },
    { position = Position(32375, 32243, 7), text = 'Trainers', effect = 42 },
    { position = Position(32363, 32246, 7), text = 'Events', effect = 42 },
    { position = Position(32365, 32233, 7), text = 'Weekly Reward (PRONTO)', effect = 32 }

    --{ position = Position(32364, 32242, 7), text = 'Vip !autoloot on/off' },
    --{ position = Position(32369, 32242, 7), text = "Join Discord" }
}

local animatedText = GlobalEvent("AnimatedText")
function animatedText.onThink(interval)
    for i = 1, #effects do
        local settings = effects[i]
        local spectators = Game.getSpectators(settings.position, false, true, 7, 7, 5, 5)
        if #spectators > 0 then
            if settings.text then
                for i = 1, #spectators do
                    spectators[i]:say(settings.text, TALKTYPE_MONSTER_SAY, false, spectators[i], settings.position)
                end
            end
            if settings.effect then
                settings.position:sendMagicEffect(settings.effect)
            end
        end
    end
    return true
end

animatedText:interval(4550)
animatedText:register()
