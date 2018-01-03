local config = {
    positions = {
        ["Red Team"] = { x = 993, y = 1000, z = 10 },
        ["Gren Team"] = { x = 1008, y = 1000, z = 10 },
        ["Trainers"] = { x = 995, y = 984, z = 10 }

    }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(1, 255))
    end
    
    return TRUE
end