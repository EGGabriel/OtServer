function onUse(cid, item, frompos, item2, topos)

	if item.uid == 3065 then
 	queststatus = getPlayerStorageValue(cid,4575)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você achou a Aura Boots.")
 	doPlayerAddItem(cid,9932,1)
 	setPlayerStorageValue(cid,4575,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você ja pegou este item.")
	end
	else
	return 0
	end
	
	return 1
	end 