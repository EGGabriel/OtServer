function onUse(cid, item, frompos, item2, topos)

	if item.uid == 2155 then
 	queststatus = getPlayerStorageValue(cid,2155)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você Adiquiril 1x Jukai Kousan.")
 	doPlayerAddItem(cid,2155,1)
 	setPlayerStorageValue(cid,2155,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você Já Adquiril 1x Jukai Kousan.")
	end
	else
	return 0
	end
	
	return 1
	end 