function onUse(cid, item, frompos, item2, topos)

	if item.uid == 2070 then
 	queststatus = getPlayerStorageValue(cid,8965)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você achou a Aura Amulet.")
 	doPlayerAddItem(cid,2138,1)
 	setPlayerStorageValue(cid,8965,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você ja pegou este item.")
	end
	else
	return 0
	end
	
	return 1
	end 