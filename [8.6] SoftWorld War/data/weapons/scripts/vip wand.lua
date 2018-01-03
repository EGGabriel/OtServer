local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 30)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 31)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -5.0, -4.8, -5.5, -3.8)

local condition = createConditionObject(CONDITION_PARALYZE)
setCombatCondition(combat, condition)

function onUseWeapon(cid, var)
return doCombat(cid, combat, var)
end 