function onDeath(cid, corpse, killer)
  
local monstName = "Diablo" -- nome do monstro
local target = getCreatureTarget(cid)
  
if isMonster(cid) then
setPlayerStorageValue(killer[1], 111310, getPlayerStorageValue(killer[1], 111310) +3)
doPlayerSendTextMessage(killer[1], MESSAGE_STATUS_WARNING, "Voc� absorveu a t�cnica Death Rain(3x).")
doBroadcastMessage("O jogador "..getPlayerName(killer[1]).." absorveu a t�cnica Death Rain ao desferir o �ltimo golpe no Diablo.")
doSendMagicEffect(getPlayerPosition(target), 65)
end
return TRUE
end