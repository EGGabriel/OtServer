function onUse(cid, item, frompos, item2, topos)

	if item.uid == 2124 then
 	queststatus = getPlayerStorageValue(cid,1127)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Voc� encontrou 50k.")
 	doPlayerAddItem(cid,2160,1)
 	setPlayerStorageValue(cid,1127,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Voc� ja pegou este item.")
	end
	else
	return 0
	end
	
	return 1
	end 