function onUse(cid, item, frompos, item2, topos)

	if item.uid == 2150 then
 	queststatus = getPlayerStorageValue(cid,2125)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você achou a Royal Crossbow.")
 	doPlayerAddItem(cid,8851,1)
 	setPlayerStorageValue(cid,2125,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você ja pegou este item.")
	end
	else
	return 0
	end
	
	return 1
	end 