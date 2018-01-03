local config = {
    positions = {
        ["FantasmOT"] = { x = 442, y = 548, z = 7 },
        ["VIP city"] = { x = 369, y = 598, z = 7 },
        ["Trainers"] = { x = 439, y = 547, z = 7 },
        ["Teleports"]   = { x = 439, y = 549, z = 7 },
        ["Asauchi"]   = { x = 435, y = 495, z = 6 },
        ["Valinor"]   = { x = 432, y = 495, z = 6 },
        ["Nevalia"]   = { x = 344, y = 522, z = 6 },

    }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(1, 255))
    end
    
    return TRUE
end  