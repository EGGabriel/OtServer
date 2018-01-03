function onUse(cid, item, frompos, item2, topos)

	if item.uid == 7290 then
 	queststatus = getPlayerStorageValue(cid,7291)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você encontrou a Blue Legs.")
 	doPlayerAddItem(cid,7730,1)
 	setPlayerStorageValue(cid,7291,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você ja pegou este item.")
	end
	else
	return 0
	end
	
	return 1
	end 