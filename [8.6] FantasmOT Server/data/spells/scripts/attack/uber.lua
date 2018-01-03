local combat1 = createCombatObject()

setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 26)

setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -31.8, 31, -32.3, 0)


local combat2 = createCombatObject()

setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)

setCombatParam(combat2, COMBAT_PARAM_EFFECT, 44)

setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -31.8, 32, -32.3, 0)


local area1 = createCombatArea(AREA_UBER)

setCombatArea(combat1, area1)


local area2 = createCombatArea(AREA_UBEER)

setCombatArea(combat2, area2)


local function onCastSpell1(parameters)

doCombat(parameters.cid, parameters.combat1, parameters.var)

end

local function onCastSpell2(parameters)

doCombat(parameters.cid, parameters.combat2, parameters.var)

end


function onCastSpell(cid, var)

local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2 }

-- Feito por Rique
ring = getPlayerSlotItem(cid, 9)

if ring.itemid == 8979 then
-- Close
return doCombat(cid, combat1, var)

else
return doCombat(cid, combat2, var)
end
end