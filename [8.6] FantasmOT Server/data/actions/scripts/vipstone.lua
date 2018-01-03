function onUse(cid, item, frompos, item2, topos)

	if item.uid == 2351 then
 	queststatus = getPlayerStorageValue(cid,2350)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você conseguiu pegar sua vip.")
 	doPlayerAddItem(cid,7633,1)
 	setPlayerStorageValue(cid,2350,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você ja pegou sua vip.")
	end
	else
	return 0
	end
	
	return 1
	end 