function onUse(cid, item, frompos, item2, topos)

voc = getPlayerVocation(cid)
queststatus = getPlayerStorageValue(cid,11554)


if voc == 1 then
if queststatus == -1 then
doPlayerAddItem(cid,2494,1)
doPlayerAddItem(cid,2495,1)
doPlayerAddItem(cid,2520,1)
doPlayerAddItem(cid,2493,1)
doPlayerAddItem(cid,2640,1)
doPlayerAddItem(cid,8922,1)
doPlayerAddItem(cid,7590,100)
doPlayerAddItem(cid,2268,1)
doPlayerAddItem(cid,10518,1)
doPlayerAddItem(cid,2160,100)
doPlayerAddItem(cid,2173,1)
setPlayerStorageValue(cid,11554,1)
else
doPlayerSendTextMessage(cid,22,"Você já pegou o seu prêmio.")
end
elseif voc == 2 then
if queststatus == -1 then
doPlayerAddItem(cid,2494,1)
doPlayerAddItem(cid,2495,1)
doPlayerAddItem(cid,2520,1)
doPlayerAddItem(cid,2493,1)
doPlayerAddItem(cid,2640,1)
doPlayerAddItem(cid,8910,1)
doPlayerAddItem(cid,7590,100)
doPlayerAddItem(cid,2268,1)
doPlayerAddItem(cid,10518,1)
doPlayerAddItem(cid,2160,100)
doPlayerAddItem(cid,2173,1)
setPlayerStorageValue(cid,11554,1)
else
doPlayerSendTextMessage(cid,22,"Você já pegou o seu prêmio.")
end
elseif voc == 3 then
if queststatus == -1 then
doPlayerAddItem(cid,7368,1)
doPlayerAddItem(cid,2492,1)
doPlayerAddItem(cid,2522,1)
doPlayerAddItem(cid,2469,1)
doPlayerAddItem(cid,2506,1)
doPlayerAddItem(cid,11114,1)
doPlayerAddItem(cid,8472,100)
doPlayerAddItem(cid,2268,1)
doPlayerAddItem(cid,10518,1)
doPlayerAddItem(cid,2160,100)
doPlayerAddItem(cid,2173,1)
setPlayerStorageValue(cid,11554,1)
else
doPlayerSendTextMessage(cid,22,"Você já pegou o seu prêmio.")
end
elseif voc == 4 then
if queststatus == -1 then
doPlayerAddItem(cid,8930,1)
doPlayerAddItem(cid,2492,1)
doPlayerAddItem(cid,2469,1)
doPlayerAddItem(cid,2506,1)
doPlayerAddItem(cid,11114,1)
doPlayerAddItem(cid,8473,100)
doPlayerAddItem(cid,2268,1)
doPlayerAddItem(cid,10518,1)
doPlayerAddItem(cid,2160,100)
doPlayerAddItem(cid,2173,1)
doPlayerAddItem(cid,2522,1)
setPlayerStorageValue(cid,11554,1) 
else
doPlayerSendTextMessage(cid,22,"Você já pegou o seu prêmio.")
end
else
return 0
end

return 1
end