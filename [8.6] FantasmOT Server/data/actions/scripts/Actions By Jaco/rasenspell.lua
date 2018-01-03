function onUse(cid, item, frompos, item2, topos)

	if item.uid == 5685 then
 	queststatus = getPlayerStorageValue(cid,5865)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Você adquiriu a spell RasenShuriken, parabéns.")
        doPlayerLearnSpell(cid,RasenShuriken,1) 
 	setPlayerStorageValue(cid,5865,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Você ja possui esta spell.")
	end
	else
	return 0
	end
	
	return 1
	end 