function onUse(cid, item, frompos, item2, topos)

	if item.uid == 2300 then
 	queststatus = getPlayerStorageValue(cid,2350)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você achou a Arcane Staff.")
 	doPlayerAddItem(cid,2453,1)
 	setPlayerStorageValue(cid,2350,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você ja pegou este item.")
	end
	else
	return 0
	end
	
	return 1
	end 