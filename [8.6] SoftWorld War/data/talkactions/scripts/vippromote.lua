function onSay(cid,words,params)

local vocstatus = getPlayerStorageValue(cid, 1593)
if vocstatus == -1 then
if doPlayerRemoveMoney(cid, 10000) == TRUE then
if getPlayerVocation(cid) >= 5 and getPlayerVocation(cid) <= 8 then
if getPlayerLevel(cid) >= 8 then
doPlayerSetVocation(cid, getPlayerVocation(cid) + 4)
setPlayerStorageValue(cid, 1593, 1)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Congratulations, now you are second promoted.")
else
return doPlayerSendCancel(cid,"You are not strong enought to become a second promoted.")
end
else
return doPlayerSendCancel(cid,"Only first promoteds can become second promoteds.")
end
else
return doPlayerSendCancel(cid,"You dont't have money to promote yourself.")
end
else
return doPlayerSendCancel(cid,"You have already used this talkaction.")
end
end