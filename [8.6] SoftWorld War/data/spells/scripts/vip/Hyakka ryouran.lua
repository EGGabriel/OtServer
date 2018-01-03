local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 54)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -11.5, -75, -13.5, -75)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 54)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -11.5, -75, -13.5, -75)

local condition2 = createConditionObject(CONDITION_POISON)
setConditionParam(condition2, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition2, 5, 2000, -500)
setCombatCondition(combat2, condition2)

local condition2 = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition2, CONDITION_PARAM_TICKS, 20000)
--setConditionParam(condition2, CONDITION_PARAM_SPEED, -500)
setConditionFormula(condition2, -0.8, 0, -0.8, 0)
setCombatCondition(combat2, condition2)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 54)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -11.5, -75, -13.5, -75)

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 54)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -11.5, -75, -13.5, -75)

local condition4 = createConditionObject(CONDITION_POISON)
setConditionParam(condition4, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition4, 5, 2000, -500)
setCombatCondition(combat4, condition4)

local condition4 = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition4, CONDITION_PARAM_TICKS, 20000)
--setConditionParam(condition4, CONDITION_PARAM_SPEED, -500)
setConditionFormula(condition4, -0.8, 0, -0.8, 0)
setCombatCondition(combat4, condition4)

arr1 = {
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}
arr2 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0},
}

arr3 = {
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}
arr4 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0},
}

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
local area3 = createCombatArea(arr3)
local area4 = createCombatArea(arr4)

setCombatArea(combat1, area1)
setCombatArea(combat2, area2)
setCombatArea(combat3, area3)
setCombatArea(combat4, area4)

local function spell(parameters)
 doCombat(parameters.cid, parameters.combat2, parameters.var)
end
local function spell(parameters)
 doCombat(parameters.cid, parameters.combat4, parameters.var)
end

local storage = 12456

function onCastSpell(cid, var)
local parameters = { cid = cid, var = var, combat2 = combat2, combat4 = combat4}

if not isExhausted(cid, "hyakka ryouran") then
	setCooldown(cid, "hyakka ryouran", 10)
	if getPlayerStorageValue(cid, storage) >= 1 then
addEvent(doCombat, 350, cid, combat2, var)
return doCombat(cid, combat1, var)
else
addEvent(doCombat, 350, cid, combat4, var)
return doCombat(cid, combat3, var)
	end
else
	return false, doPlayerSendCancel(cid, "Voc\ê preci\ça aguardar " .. math.ceil(getCooldown(cid, "hyakka ryouran")) .. " segundos para acumular o esp\írito.")
end

end



  