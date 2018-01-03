local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_CREATEITEM, 1499)

arr = {
{1, 1, 1,},
{1, 3, 1,},
{1, 0, 1,},
}

local area = createCombatArea(arr)

setCombatArea(combat, area)



function onCastSpell(cid, var)
if isExhausted(cid, "exevo grav mas") == FALSE then

return doCombat(cid, combat, var),
setCooldown(cid, "exevo grav mas", 20)
end

return false, doPlayerSendCancel(cid, "Voc\ê preci\ça aguardar " .. math.ceil(getCooldown(cid, "exevo grav mas")) .. " segundos para acumular o esp\írito.")
end


local storage = 12456

function onCastSpell(cid, var)
local parameters = { cid = cid, var = var, combat }
if getPlayerStorageValue(cid, storage) >= 1 then
if isExhausted(cid, "exevo grav mas") == FALSE then

return doCombat(cid, combat, var),
setCooldown(cid, "exevo grav mas", 20)
end
return false, doPlayerSendCancel(cid, "Voc\ê preci\ça aguardar " .. math.ceil(getCooldown(cid, "exevo grav mas")) .. " segundos para acumular o esp\írito.")
end
doPlayerSendCancel(cid, "Você ainda não adquiriu essa Special Skills no Shop.") 

return TRUE
end 