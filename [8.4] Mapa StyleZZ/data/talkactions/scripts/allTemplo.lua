function onSay(cid, words, param, channel)
local temple = { x = 442, y = 548, z = 7 }  
    for _, cid in ipairs(getPlayersOnline()) do
        if(param == '') then
            doTeleportThing(cid, temple)
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Todos Os Jogadores foram teletransportados para o Templo!.")
            doSendMagicEffect(getCreaturePosition(cid), CONST_ME_GIFT_WRAPS)
        else
        local t = string.explode(param, ",")
            doTeleportThing(cid, { x = t[1], y = t[2], z = t[3] }  )
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "All players have been teleported to the coords [X:"..t[1].."], [Y:"..t[2].."], [Z:"..t[3].."]")
            doSendMagicEffect(getCreaturePosition(cid), CONST_ME_GIFT_WRAPS)
        end
    end
    return TRUE
end