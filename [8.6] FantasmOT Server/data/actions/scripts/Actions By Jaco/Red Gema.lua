function onUse(cid, item, frompos, item2, topos)

	if item.uid == 2156 then
 	queststatus = getPlayerStorageValue(cid,2156)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você Adiquiril 1x Zesshou Hachimon.")
 	doPlayerAddItem(cid,2156,1)
 	setPlayerStorageValue(cid,2156,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você Já Adquiril 1x Zesshou Hachimon.")
	end
	else
	return 0
	end
	
	return 1
	end 