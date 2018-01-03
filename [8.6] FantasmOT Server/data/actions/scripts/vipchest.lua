--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==13541 then
queststatus = getPlayerStorageValue(cid,13540)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Você já é um player VIP.")
 
else
doPlayerSendTextMessage(cid,22,"Você Ganhou acesso vip permanente e uma Aura Medal de presente do GOD Jaco.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,8979,1)
setPlayerStorageValue(cid,13540,1)
end
return 0
end
return 1
end
