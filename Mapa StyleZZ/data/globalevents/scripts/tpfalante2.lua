 local config = {
    pos = {
        ["Aura Full"] = { x = 438, y = 557, z = 8 }, 

        
    }
}
 
function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.pos) do
        doSendAnimatedText(pos, text, math.random(1, 217))
    end
    
    return 1
end  