local config = 
 {
  pontaDeCima = {x=242, y=139, z=7},   -- Localização da ponta do tapete que tem no templo   << /\.
   pontaDeBaixo = {x=248, y=143, z=7},   -- Localização da ponta do tapete que tem no templo   >> \/.
  toPos = {x=115, y=90, z=7},   -- Para onde o player será teleportado após falar !arena.
 minLevel = 80   -- Level mínimo para entrar na arena usando o comando.
}

local function isInRange(position, fromPosition, toPosition)
 return (position.x >= fromPosition.x and position.y >= fromPosition.y and position.z >= fromPosition.z and position.x <= toPosition.x and position.y <= toPosition.y and position.z <= toPosition.z)
end

function onSay(cid, words, param, channel)
 if getPlayerLevel(cid) >= config.minLevel then
  if not isInRange(getCreaturePosition(cid), config.pontaDeCima, config.pontaDeBaixo) then
   doPlayerSendCancel(cid, "Voc\ê precisa estar no tapete do templo.")
    else
     doTeleportThing(cid, config.toPos, TRUE)
     doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "BAIXA O SARRAFO NELES!")
      doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
     end
    else
   doPlayerSendCancel(cid, "Voc\ê precisa ser level "..config.minLevel.." para entar na arena.")
  end
 return TRUE
end