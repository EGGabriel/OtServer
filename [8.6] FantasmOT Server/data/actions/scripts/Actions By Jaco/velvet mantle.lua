function onUse(cid, item, frompos, item2, topos)

	if item.uid == 3022 then
 	queststatus = getPlayerStorageValue(cid,3023)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você encontrou a Magic Plate Armor.")
 	doPlayerAddItem(cid,2472,1)
 	setPlayerStorageValue(cid,3023,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você ja pegou este item.")
	end
	else
	return 0
	end
	
	return 1
	end 