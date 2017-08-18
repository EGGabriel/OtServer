 local config = {
    pos = {
        ["Itens!"] = { x = 442, y = 548, z = 4 }, 

        
    }
}
 
function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.pos) do
        doSendAnimatedText(pos, text, math.random(1, 217))
    end
    
    return 1
end  