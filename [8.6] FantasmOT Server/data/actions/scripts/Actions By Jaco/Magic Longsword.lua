function onUse(cid, item, frompos, item2, topos)

	if item.uid == 4259 then
 	queststatus = getPlayerStorageValue(cid,5891)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você achou a Magic Longsword.")
 	doPlayerAddItem(cid,2390,1)
 	setPlayerStorageValue(cid,5891,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você ja pegou este item.")
	end
	else
	return 0
	end
	
	return 1
	end 