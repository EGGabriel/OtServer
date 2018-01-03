function onUse(cid, item, frompos, item2, topos)

	if item.uid == 3342 then
 	queststatus = getPlayerStorageValue(cid,6280)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você achou a Paladin Armor.")
 	doPlayerAddItem(cid,8891,1)
 	setPlayerStorageValue(cid,6280,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você ja pegou este item.")
	end
	else
	return 0
	end
	
	return 1
	end 