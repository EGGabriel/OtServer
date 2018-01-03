local lasthit = {1990, 1} -- lasthitkiller = {itemid, amount}
local mostdmg = {1990, 1} -- mostdamagekiller = {itemid, amount}

function onDeath(cid, corpse, deathList)
    local last = deathList
    
    if isPlayer(last) then
        if getPlayerFreeCap(last) > getItemWeightById(lasthit[1], lasthit[2]) then
            doPlayerAddItem(last, lasthit[1], lasthit[2])
            doPlayerSendTextMessage(last, MESSAGE_INFO_DESCR, 'Voce recebeu um PRESENTE por ter dado o ultimo hit no boss ... .')
        end
    end   
    return true
end