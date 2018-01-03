function onUse(cid, item, frompos, item2, topos)

	if item.uid == 4260 then
 	queststatus = getPlayerStorageValue(cid,5891)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você achou a Solar Axe.")
 	doPlayerAddItem(cid,8925,1)
 	setPlayerStorageValue(cid,5891,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você ja pegou este item.")
	end
	else
	return 0
	end
	
	return 1
	end 