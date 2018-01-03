local bless = {1, 2, 3, 4, 5}
local cost = 80000
function onSay(cid, words, param)
for i = 1, table.maxn(bless) do
if(getPlayerBlessing(cid, bless[i])) then
doPlayerSendCancel(cid, "Você ja tem todas as bless.")
doSendMagicEffect(getPlayerPosition(cid), 2)
return TRUE
end
end

if(doPlayerRemoveMoney(cid, cost) == TRUE) then
for i = 1, table.maxn(bless) do
doPlayerAddBlessing(cid, bless[i])
end
doCreatureSay(cid, "Você comprou Bless!" ,19)
doSendMagicEffect(getPlayerPosition(cid), 27)
else
doPlayerSendCancel(cid, "Voce precisa de 80k para a bless.")
end
return TRUE
end