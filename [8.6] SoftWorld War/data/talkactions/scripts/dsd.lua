function onSay(cid, words, param)

-- configs
access = 1
days = 30
-- end configs

if doPlayerRemoveItem(cid, 2157,30) == TRUE then
setPlayerStorageValue(cid,13500,1)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Agor� voc� recebeu 30 dias VIP e tem acesso a area VIP.")
doSendMagicEffect(getPlayerPosition(cid), 12)
else
doPlayerSendCancel(cid, "Voc� preci�a ter 30 Vip Coins para adquirir VIP.")
end
end