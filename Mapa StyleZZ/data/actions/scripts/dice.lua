function onUse(cid, item, frompos, item2, topos)

if item.itemid == 1990 then
sorteado = 17

if sorteado == 1 then
doPlayerAddItem(cid, 8889)
doRemoveItem(item.uid)
doSendMagicEffect(getCreaturePosition(cid),CONST_ME_HOLYAREA)
doPlayerSendTextMessage(cid,22,"Você Ganhou uma Punisher's Armor")
end
if sorteado == 2 then
doPlayerAddItem(cid, 8865)
doRemoveItem(item.uid)
doSendMagicEffect(getCreaturePosition(cid),CONST_ME_HOLYAREA)
doPlayerSendTextMessage(cid,22,"Você Ganhou uma Punisher's Cape")
end
if sorteado == 3 then
doPlayerAddItem(cid, 8890)
doRemoveItem(item.uid)
doSendMagicEffect(getCreaturePosition(cid),CONST_ME_HOLYAREA)
doPlayerSendTextMessage(cid,22,"Você Ganhou uma Punisher's Robe")
end
if sorteado == 4 then
doPlayerAddItem(cid, 8905)
doRemoveItem(item.uid)
doSendMagicEffect(getCreaturePosition(cid),CONST_ME_HOLYAREA)
doPlayerSendTextMessage(cid,22,"Você Ganhou um Rainbow Shield")
end
if sorteado == 5 then
doPlayerAddItem(cid, 6132)
doRemoveItem(item.uid)
doSendMagicEffect(getCreaturePosition(cid),CONST_ME_HOLYAREA)
doPlayerSendTextMessage(cid,22,"Você Ganhou uma Soft Boots")
end
if sorteado == 6 then
doPlayerAddItem(cid, 9933)
doRemoveItem(item.uid)
doSendMagicEffect(getCreaturePosition(cid),CONST_ME_HOLYAREA)
doPlayerSendTextMessage(cid,22,"Você Ganhou uma Firewalker Boots")
end
if sorteado == 7 then
doPlayerAddItem(cid, 2342)
doRemoveItem(item.uid)
doSendMagicEffect(getCreaturePosition(cid),CONST_ME_HOLYAREA)
doPlayerSendTextMessage(cid,22,"Você Ganhou um Pharao Helmet")
end
if sorteado == 8 then
doPlayerAddItem(cid, 2390)
doRemoveItem(item.uid)
doSendMagicEffect(getCreaturePosition(cid),CONST_ME_HOLYAREA)
doPlayerSendTextMessage(cid,22,"Você Ganhou uma Magic Long Sword")
end
if sorteado == 9 then
doPlayerAddItem(cid,2522)
doRemoveItem(item.uid)
doSendMagicEffect(getCreaturePosition(cid),CONST_ME_HOLYAREA)
doPlayerSendTextMessage(cid,22,"Você Ganhou um Great Shield")
end
if sorteado == 10 then
doPlayerAddItem(cid,9774)
doRemoveItem(item.uid)
doSendMagicEffect(getCreaturePosition(cid),CONST_ME_HOLYAREA)
doPlayerSendTextMessage(cid,22,"Você Ganhou uma Brocade Backpack")
end
if sorteado == 11 then
doPlayerAddItem(cid,2646)
doRemoveItem(item.uid)
doSendMagicEffect(getCreaturePosition(cid),CONST_ME_HOLYAREA)
doPlayerSendTextMessage(cid,22,"Você Ganhou uma Golden Bots")
end
if sorteado == 12 then
doPlayerAddItem(cid,8909)
doRemoveItem(item.uid)
doSendMagicEffect(getCreaturePosition(cid),CONST_ME_HOLYAREA)
doPlayerSendTextMessage(cid,22,"Você Ganhou um Morthar shield")
end
if sorteado == 13 then
doPlayerAddItem(cid,8908)
doRemoveItem(item.uid)
doSendMagicEffect(getCreaturePosition(cid),CONST_ME_HOLYAREA)
doPlayerSendTextMessage(cid,22,"Você Ganhou um Sparker shield")
end
if sorteado == 14 then
doPlayerAddItem(cid,8906)
doRemoveItem(item.uid)
doSendMagicEffect(getCreaturePosition(cid),CONST_ME_HOLYAREA)
doPlayerSendTextMessage(cid,22,"Você Ganhou um Diablo shield")
end
if sorteado == 15 then
doPlayerAddItem(cid,8905)
doRemoveItem(item.uid)
doSendMagicEffect(getCreaturePosition(cid),CONST_ME_HOLYAREA)
doPlayerSendTextMessage(cid,22,"Você Ganhou um Rainbow shield")
end
if sorteado == 16 then
doPlayerAddItem(cid,8905)
doRemoveItem(item.uid)
doSendMagicEffect(getCreaturePosition(cid),CONST_ME_HOLYAREA)
doPlayerSendTextMessage(cid,22,"Você Ganhou uma aegis mask")
end
if sorteado == 17 then
doPlayerAddItem(cid,9776)
doRemoveItem(item.uid)
doSendMagicEffect(getCreaturePosition(cid),CONST_ME_HOLYAREA)
doPlayerSendTextMessage(cid,22,"Você Ganhou um aegis robe")
end
if sorteado == 18 then
doPlayerAddItem(cid,9777)
doRemoveItem(item.uid)
doSendMagicEffect(getCreaturePosition(cid),CONST_ME_HOLYAREA)
doPlayerSendTextMessage(cid,22,"Você Ganhou uma aegis leg piece")
end


else
end

return 1
end
