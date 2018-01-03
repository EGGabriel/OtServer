local lasthit = {6119, 1}

function onDeath(cid, corpse, deathList)
    local x = math.random (1, 100)
	if x >= 1 then
		if x <= 10 then
			local last = deathList
			if isPlayer(last) then
				doPlayerAddItem(last, lasthit[1], lasthit[2])
				doPlayerSendTextMessage(last, MESSAGE_INFO_DESCR, 'Voce recebeu um pergaminho de nivel 1!')
			end
		end
	end
    return true
end