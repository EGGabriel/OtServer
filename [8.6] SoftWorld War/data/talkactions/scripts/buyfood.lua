-- Script by: The Sleeper
function onSay(cid, words, param)

if doPlayerRemoveMoney(cid, 10000) == TRUE then
local bp = doPlayerAddItem(cid, 2789, 80)
doCreatureSay(cid, "Vamo COMER!", TALKTYPE_ORANGE_1)
else
doCreatureSay(cid, "Você não tem Dinheiro.", TALKTYPE_ORANGE_1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
end