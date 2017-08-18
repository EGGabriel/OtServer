function onDeath(cid, corpse, killer)
  
local monstName = "Diablo" -- nome do monstro
local target = getCreatureTarget(cid)
  
if isMonster(cid) then
setPlayerStorageValue(killer[1], 111310, getPlayerStorageValue(killer[1], 111310) +3)
doPlayerSendTextMessage(killer[1], MESSAGE_STATUS_WARNING, "Você absorveu a técnica Death Rain(3x).")
doBroadcastMessage("O jogador "..getPlayerName(killer[1]).." absorveu a técnica Death Rain ao desferir o último golpe no Diablo.")
doSendMagicEffect(getPlayerPosition(target), 65)
end
return TRUE
end