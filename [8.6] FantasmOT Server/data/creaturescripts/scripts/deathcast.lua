--[[ By.God Keltera. ]]--
function onKill(cid, target, lastHit)

if isPlayer(target) == TRUE then
doBroadcastMessage("The player " .. getCreatureName(target) .. " was killed by ".. getCreatureName(cid) .."!")
end
return TRUE
end