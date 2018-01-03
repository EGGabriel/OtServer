function onUse(cid, item, frompos, item2, topos)

	if item.uid == 3060 then
 	queststatus = getPlayerStorageValue(cid,4570)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você achou a Boots of Haste.")
 	doPlayerAddItem(cid,2195,1)
 	setPlayerStorageValue(cid,4570,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você ja pegou este item.")
	end
	else
	return 0
	end
	
	return 1
	end 