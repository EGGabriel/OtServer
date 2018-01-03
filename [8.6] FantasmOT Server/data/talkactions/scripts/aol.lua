function onSay(cid, words, param)
if doPlayerRemoveMoney(cid, 10000) == TRUE then
doPlayerAddItem(cid, 2173, 1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_BATS)
else
doPlayerSendCancel(cid, "You need 10.000 gold coins to get AOL!")
end
return TRUE
end