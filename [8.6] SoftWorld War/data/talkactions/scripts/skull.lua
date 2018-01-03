--- skull remover by kakilo - quinto script

function onSay(cid, words, param, channel)

if (getCreatureSkullType(cid) == SKULL_BLACK) then
if doPlayerRemoveMoney(cid, 1500000) then
doCreatureSetSkullType(cid, SKULL_NONE)
doPlayerSendTextMessage(cid, 22, "SKULL Removida!")
else
doPlayerSendTextMessage(cid, 22, "Voce precisa de MUITA grana para remover a sua Skull")
end
end

if (getCreatureSkullType(cid) == SKULL_RED) then
if doPlayerRemoveMoney(cid, 1000000) then
doCreatureSetSkullType(cid, SKULL_NONE)
doPlayerSendTextMessage(cid, 22, "Red Skull Retirada.")
else
doPlayerSendTextMessage(cid, 22, "Voce precisa de MUITA grana para remover a sua Skull")
end
end

if (getCreatureSkullType(cid) == SKULL_NONE) then
doPlayerSendTextMessage(cid, 22, "SKULL Removida!")
end

return TRUE
end