local priceBless = 1000

function onSay(cid, words, param)
if getPlayerBlessing(cid, 1) or getPlayerBlessing(cid, 2) or getPlayerBlessing(cid, 3) or getPlayerBlessing(cid, 4) or getPlayerBlessing(cid, 5) then
doPlayerSendCancel(cid,'You have already got one or more blessings!')
else
if doPlayerRemoveMoney(cid, priceBless) == TRUE then
doPlayerAddBlessing(cid, 1)
doPlayerAddBlessing(cid, 2)
doPlayerAddBlessing(cid, 3)
doPlayerAddBlessing(cid, 4)
doPlayerAddBlessing(cid, 5)
doPlayerAddItem(cid, 2173,1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_HOLYDAMAGE)
doPlayerSendTextMessage(cid,25,'You have been blessed by the gods and receive a free amulet of loss.')
else
doPlayerSendCancel(cid, "You need "..priceBless.." gold coins to get all blessings!")
end
end 
return 1
end