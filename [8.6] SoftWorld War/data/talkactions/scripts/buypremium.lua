function onSay(cid, words, param)
if getPlayerPremiumDays(cid) <= 360 then
if doPlayerRemoveItem(cid, 2157, 1) == TRUE then
doPlayerAddPremiumDays(cid, 1)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Agorá você recebeu 1 dias Premium Account e tem acesso a Area VIP.")
else
doPlayerSendCancel(cid, "Você preciça ter 1 VIP Coins para adquirir 1 dias de Premium Account para ter acesso a Area VIP.")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
else
doPlayerSendCancel(cid, "You can not buy more than one year of Premium Account.")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
return TRUE
end