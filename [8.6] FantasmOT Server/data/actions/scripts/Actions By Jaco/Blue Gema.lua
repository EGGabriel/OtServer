function onUse(cid, item, frompos, item2, topos)

	if item.uid == 2158 then
 	queststatus = getPlayerStorageValue(cid,2158)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você Adiquiril 1x Mugen Shiki.")
 	doPlayerAddItem(cid,2158,1)
 	setPlayerStorageValue(cid,2158,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você Já Adquiril 1x Mugen Shiki.")
	end
	else
	return 0
	end
	
	return 1
	end 