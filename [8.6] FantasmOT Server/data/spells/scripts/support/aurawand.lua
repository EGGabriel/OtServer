local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 28)

local area = createCombatArea(AREA_SQUARE1X1)
setCombatArea(combat, area)

function onCastSpell(cid, var)
if getPlayerSlotItem(cid, CONST_SLOT_RING).itemid == 8979 then
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Ok, Pode usar!")
doPlayerAddItem(cid,7429,1) 
return doCombat(cid, combat, var)
else 
doPlayerSendCancel(cid, "Você precisa de uma Aura Medal para poder Conjurar.")
doSendMagicEffect(getPlayerPosition(cid), 2)
end
end