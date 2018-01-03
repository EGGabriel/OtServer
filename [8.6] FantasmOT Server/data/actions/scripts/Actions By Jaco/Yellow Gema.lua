function onUse(cid, item, frompos, item2, topos)

	if item.uid == 2154 then
 	queststatus = getPlayerStorageValue(cid,2154)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você Adiquiril 1x Yahumuki.")
 	doPlayerAddItem(cid,2154,1)
 	setPlayerStorageValue(cid,2154,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você Já Adquiril 1x Yahumuki.")
	end
	else
	return 0
	end
	
	return 1
	end 