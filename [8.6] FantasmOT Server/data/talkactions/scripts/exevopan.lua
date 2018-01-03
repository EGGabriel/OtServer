function onSay(cid, words, param)
if doPlayerRemoveMoney(cid, 100) == TRUE then
doPlayerAddItem(cid, 2789, 100)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_BATS)
else
doPlayerSendCancel(cid, "You need 100 gold coins Para comprar seu FOOD!")
end
return TRUE
end