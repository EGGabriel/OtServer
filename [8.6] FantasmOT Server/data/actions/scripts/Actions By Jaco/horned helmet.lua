function onUse(cid, item, frompos, item2, topos)

	if item.uid == 10065 then
 	queststatus = getPlayerStorageValue(cid,10658)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Voc� achou o Horned Hemet.")
 	doPlayerAddItem(cid,2496,1)
 	setPlayerStorageValue(cid,10658,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Voc� ja pegou este item.")
	end
	else
	return 0
	end
	
	return 1
	end 