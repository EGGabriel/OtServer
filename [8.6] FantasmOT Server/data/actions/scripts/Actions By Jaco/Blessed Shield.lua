function onUse(cid, item, frompos, item2, topos)

	if item.uid == 5560 then
 	queststatus = getPlayerStorageValue(cid,5561)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você encontrou o Blessed Shield.")
 	doPlayerAddItem(cid,2523,1)
 	setPlayerStorageValue(cid,5561,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você ja pegou este item.")
	end
	else
	return 0
	end
	
	return 1
	end 