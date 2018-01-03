local config = {
    positions = {
        ["Bem-"]   = { x = 441, y = 547, z = 7 },
        ["Vindo"]   = { x = 442, y = 547, z = 7},
        ["Ao"]   = { x = 443, y = 547, z = 7}, 

    }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(1, 255))
    end
    
    return TRUE
end  