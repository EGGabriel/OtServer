-- Script By: David
function onSay(cid, words, param)

if doPlayerRemoveMoney(cid, 10000) == TRUE then
local bp = doPlayerAddItem(cid, 2173, 1)
doCreatureSay(cid, "SoftWorld Server O Melhor!", TALKTYPE_ORANGE_1)
else
doCreatureSay(cid, "Você não tem Dinheiro.", TALKTYPE_ORANGE_1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
end