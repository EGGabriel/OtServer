function onUse(cid, item, frompos, item2, topos)
if item.uid == 4535 then
queststatus = getPlayerStorageValue(cid,4536)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 demon legs!.")
doPlayerAddItem(cid,2495,1 )
setPlayerStorageValue(cid,4536,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 