local velocidade = 3000 -- 3 segundos
local function loop(valores)

doSendMagicEffect(getPlayerPosition(cid), CONST_ME_EFFECT, 66)

addEvent(loop,  velocidade, valore) -- Não remova isso
end


function onUse(cid, item, frompos, item2, topos)
valore = {cid = cid, topos = topos}
addEvent(loop,  velocidade, valore)
end