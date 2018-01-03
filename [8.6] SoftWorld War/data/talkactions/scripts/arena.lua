local config = 
 {
  pontaDeCima = {x=242, y=140, z=7},   -- Localiza��o da ponta do tapete que tem no templo   << /\.
   pontaDeBaixo = {x=244, y=142, z=7},   -- Localiza��o da ponta do tapete que tem no templo   >> \/.
  toPos = {x=129, y=85, z=7},   -- Para onde o player ser� teleportado ap�s falar !arena.
 minLevel = 80   -- Level m�nimo para entrar na arena usando o comando.
}

local function isInRange(position, fromPosition, toPosition)
 return (position.x >= fromPosition.x and position.y >= fromPosition.y and position.z >= fromPosition.z and position.x <= toPosition.x and position.y <= toPosition.y and position.z <= toPosition.z)
end

function onSay(cid, words, param, channel)
 if getPlayerLevel(cid) >= config.minLevel then
  if not isInRange(getCreaturePosition(cid), config.pontaDeCima, config.pontaDeBaixo) then
   doPlayerSendCancel(cid, "Voc\� n�o est� nos SQMs brancos do templo para entrar na Arena PVP Livre.")
    else
     doTeleportThing(cid, config.toPos, TRUE)
     doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "BAIXA O SARRAFO NELES!")
      doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
     end
    else
   doPlayerSendCancel(cid, "Voc\� precisa ser level "..config.minLevel.." para entar na arena.")
  end
 return TRUE
end