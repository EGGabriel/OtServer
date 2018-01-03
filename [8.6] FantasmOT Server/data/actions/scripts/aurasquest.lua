function onUse(cid, item, frompos, item2, topos)
   	-- Weapons Quest
   	if item.uid == 7500 then
   		if item.itemid == 1945 then
 
   			player1pos = {x=627, y=383, z=4, stackpos=253}
   			player1 = getThingfromPos(player1pos)
 
   			player2pos = {x=626, y=383, z=4, stackpos=253}
   			player2 = getThingfromPos(player2pos)
 
   			player3pos = {x=625, y=383, z=4, stackpos=253}
   			player3 = getThingfromPos(player3pos)
 
   			player4pos = {x=624, y=383, z=4, stackpos=253}
   			player4 = getThingfromPos(player4pos)
 
 
   			if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then
 
   				player1level = getPlayerLevel(player1.uid)
   				player2level = getPlayerLevel(player2.uid)
   				player3level = getPlayerLevel(player3.uid)
   				player4level = getPlayerLevel(player4.uid)
 
   				questlevel = 350
 
   				if player1level >= questlevel and player2level >= questlevel and player3level >= questlevel and player4level >= questlevel then
 
   					queststatus1 = getPlayerStorageValue(player1.uid,7500)
   					queststatus2 = getPlayerStorageValue(player2.uid,7500)
   					queststatus3 = getPlayerStorageValue(player3.uid,7500)
   					queststatus4 = getPlayerStorageValue(player4.uid,7500)
 
   					if queststatus1 == -1 and queststatus2 == -1 and queststatus3 == -1 and queststatus4 == -1 then
 
   						nplayer1pos = {x=629, y=445, z=7}
   						nplayer2pos = {x=628, y=445, z=7}
   						nplayer3pos = {x=627, y=445, z=7}
   						nplayer4pos = {x=626, y=445, z=7}
 
   						doSendMagicEffect(player1pos,2)
   						doSendMagicEffect(player2pos,2)
   						doSendMagicEffect(player3pos,2)
   						doSendMagicEffect(player4pos,2)
 
   						doTeleportThing(player1.uid,nplayer1pos)
   						doTeleportThing(player2.uid,nplayer2pos)
   						doTeleportThing(player3.uid,nplayer3pos)
   						doTeleportThing(player4.uid,nplayer4pos)
 
   						doSendMagicEffect(nplayer1pos,10)
   						doSendMagicEffect(nplayer2pos,10)
   						doSendMagicEffect(nplayer3pos,10)
   						doSendMagicEffect(nplayer4pos,10)
 
   						doTransformItem(item.uid,item.itemid+1)
 
   					else
   						doPlayerSendCancel(cid,"Você precisa de um time para fazer essa quest.")
   					end
   				else
   					doPlayerSendCancel(cid,"Todos os player precisam ter level 350 ou mais para entrar.")
   				end
   			else
   				doPlayerSendCancel(cid,"Você precisa de 4 jogadores.")
   			end
   		elseif item.itemid == 1946 then
   			if getPlayerAccess(cid) > 0 then
   				doTransformItem(item.uid,item.itemid-1)
   			else
   				doPlayerSendCancel(cid,"Um time entrou recentemente e a quest não está liberada.")
   			end
   		end
 
   	end
   return 1
   end