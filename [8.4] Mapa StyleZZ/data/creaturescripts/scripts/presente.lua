local lasthit = {1990, 1} -- lasthitkiller = {ID do Item, Quantidade}

function onDeath(cid, corpse, deathList)
    local last = deathList
    
    if isPlayer(last) then
            doPlayerAddItem(last, lasthit[1], lasthit[2])
            doPlayerSendTextMessage(last, MESSAGE_INFO_DESCR, 'Voce recebeu um presente do ADM KinG EG e do ADM LeziN!')
    end
    return true
end