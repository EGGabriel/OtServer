local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 26)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -28.5, -100, -30.7, -100)


local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 26)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -28.5, -100, -30.7, -100)

arr1 = {
{0, 0, 0, 1, 0, 0, 0},
{0, 1, 0, 1, 0, 1, 0},
{0, 0, 1, 1, 1, 0, 0},
{1, 1, 1, 3, 1, 1, 1},
{0, 0, 1, 1, 1, 0, 0},
{0, 1, 0, 1, 0, 1, 0},
{0, 0, 0, 1, 0, 0, 0}
}


arr2 = {
{0, 0, 0, 1, 0, 0, 0},
{0, 1, 0, 1, 0, 1, 0},
{0, 0, 1, 1, 1, 0, 0},
{1, 1, 1, 3, 1, 1, 1},
{0, 0, 1, 1, 1, 0, 0},
{0, 1, 0, 1, 0, 1, 0},
{0, 0, 0, 1, 0, 0, 0}
}

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)

setCombatArea(combat1, area1)
setCombatArea(combat2, area2)

local function onCastSpell1(parameters)
doCombat(parameters.cid, parameters.combat1, parameters.var)
end
local function onCastSpell2(parameters)
doCombat(parameters.cid, parameters.combat2, parameters.var)
end


local storage = 12456

function onCastSpell(cid, var)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2 }
if getPlayerStorageValue(cid, storage) >= 1 then
return doCombat(cid, combat1, var)
else
return doCombat(cid, combat2, var)
end
return TRUE
end