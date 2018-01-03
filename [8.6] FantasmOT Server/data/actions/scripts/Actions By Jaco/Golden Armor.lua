function onUse(cid, item, frompos, item2, topos)

	if item.uid == 4512 then
 	queststatus = getPlayerStorageValue(cid,6219)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você achou o winged helmet.")
 	doPlayerAddItem(cid,2474,1)
 	setPlayerStorageValue(cid,6219,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você ja pegou este item.")
	end
	else
	return 0
	end
	
	return 1
	end 