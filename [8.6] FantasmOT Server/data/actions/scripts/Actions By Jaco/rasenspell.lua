function onUse(cid, item, frompos, item2, topos)

	if item.uid == 5685 then
 	queststatus = getPlayerStorageValue(cid,5865)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Voc� adquiriu a spell RasenShuriken, parab�ns.")
        doPlayerLearnSpell(cid,RasenShuriken,1) 
 	setPlayerStorageValue(cid,5865,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Voc� ja possui esta spell.")
	end
	else
	return 0
	end
	
	return 1
	end 