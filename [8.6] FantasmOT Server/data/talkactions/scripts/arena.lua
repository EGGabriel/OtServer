local config = {
pontaDeCima = {x=441, y=547, z=7}, -- Localização da ponta do tapete que tem no templo << /\.
pontaDeBaixo = {x=443, y=549, z=7}, -- Localização da ponta do tapete que tem no templo >> \/.
positions = {
{x=324, y=507, z=7},
{x=286, y=506, z=7},
{x=286, y=490, z=7},
{x=325, y=489, z=7},
{x=305, y=497, z=7}
},
minLevel = 80 -- Level mínimo para entrar na arena usando o comando.
}

local function isInRange(position, fromPosition, toPosition)
return (position.x >= fromPosition.x and position.y >= fromPosition.y and position.z >= fromPosition.z and position.x <= toPosition.x and position.y <= toPosition.y and position.z <= toPosition.z)
end

function onSay(cid, words, param, channel )
local random = math.random(1,5)
if getPlayerLevel(cid) >= config.minLevel then
if not isInRange(getCreaturePosition(cid), config.pontaDeCima, config.pontaDeBaixo) then
doPlayerSendCancel(cid, "Voc\ê não está nos SQMs brancos do templo para entrar na Arena PVP Livre.")
else
doTeleportThing(cid, config.positions[random], TRUE)
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
doSendMagicEffect(config.positions[random], CONST_ME_TELEPORT)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "BAIXA O SARRAFO NELES!")
end
else
doPlayerSendCancel(cid, "Voc\ê precisa ser level "..config.minLevel.." para entar na arena.")
end
return TRUE
end
