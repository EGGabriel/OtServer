local combat1 = createCombatObject()

setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)

setCombatParam(combat1, COMBAT_PARAM_EFFECT, 20)

setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -1.8, -189, -2.0, -199)


local condition1 = createConditionObject(CONDITION_POISON)
addDamageCondition(condition1, 5, 2000, -100)
setCombatCondition(combat1, condition1)

local combat2 = createCombatObject()

setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)

setCombatParam(combat2, COMBAT_PARAM_EFFECT, 8)

setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -1.3, -183, -1.4, -195)

local condition2 = createConditionObject(CONDITION_POISON)
addDamageCondition(condition2, 5, 2000, -100)
setCombatCondition(combat2, condition2)

arr1 = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0,0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0,0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0,0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1,0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1,0},
{1, 1, 1, 1, 1, 3, 1, 1, 1, 1,1},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1,0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1,0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0,0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0,0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0,0},
}
local area1 = createCombatArea(arr1)

setCombatArea(combat1, area1)



arr2 = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0,0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0,0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0,0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1,0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1,0},
{1, 1, 1, 1, 1, 3, 1, 1, 1, 1,1},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1,0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1,0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0,0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0,0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0,0},
}
local area2 = createCombatArea(arr2)

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