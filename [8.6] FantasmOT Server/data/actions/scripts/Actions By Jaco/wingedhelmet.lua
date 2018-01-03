function onUse(cid, item, frompos, item2, topos)

	if item.uid == 4563 then
 	queststatus = getPlayerStorageValue(cid,6245)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você achou a winged helmet.")
 	doPlayerAddItem(cid,2474,1)
 	setPlayerStorageValue(cid,6245,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você ja pegou este item.")
	end
	else
	return 0
	end
	
	return 1
	end 