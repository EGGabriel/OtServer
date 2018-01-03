function onUse(cid, item, frompos, item2, topos)

	if item.uid == 3660 then
 	queststatus = getPlayerStorageValue(cid,3665)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você encontrou o Demon Helmet.")
 	doPlayerAddItem(cid,2493,1)
 	setPlayerStorageValue(cid,3665,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você ja pegou este item.")
	end
	else
	return 0
	end
	
	return 1
	end 