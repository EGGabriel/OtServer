function onSay(cid, words, param)
if doPlayerRemoveMoney(cid, 10000) == TRUE then
doPlayerAddItem(cid,2261,100)
doPlayerAddItem(cid,2293,100)
doPlayerAddItem(cid,2273,100)
doPlayerAddItem(cid,2271,100)
doPlayerAddItem(cid,2302,100)
doPlayerAddItem(cid,2278,100)
doPlayerAddItem(cid,2268,100)
doPlayerAddItem(cid,2296,100)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_BATS)
else
doPlayerSendCancel(cid, "Você comprou seu Conjunto de Runas")
end
return TRUE
end