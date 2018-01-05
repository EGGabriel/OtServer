local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 3)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_REGENERATION)
setConditionParam(condition, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition, CONDITION_PARAM_SUBID, 1)
setConditionParam(condition, CONDITION_PARAM_TICKS, 5 * 60 * 1000)
setConditionParam(condition, CONDITION_PARAM_HEALTHGAIN, 20)
setConditionParam(condition, CONDITION_PARAM_HEALTHTICKS, 2000)
setConditionParam(condition, CONDITION_PARAM_MANAGAIN, 15)
setConditionParam(condition, CONDITION_PARAM_MANATICKS, 2000)
setCombatCondition(combat, condition)

local condition2 = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition2, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition2, CONDITION_PARAM_SUBID, 2)
setConditionParam(condition2, CONDITION_PARAM_TICKS, 5 * 60 * 1000)
setConditionParam(condition2, CONDITION_PARAM_SKILL_DISTANCE, 20)
setConditionParam(condition2, CONDITION_PARAM_SKILL_SHIELD, 8)
setConditionParam(condition2, CONDITION_PARAM_STAT_MAXHEALTHPERCENT, 110)
setCombatCondition(combat, condition2)

local condition3 = createConditionObject(CONDITION_LIGHT)
setConditionParam(condition3, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition3, CONDITION_PARAM_SUBID, 4)
setConditionParam(condition3, CONDITION_PARAM_TICKS, 5 * 60 * 1000)
setConditionParam(condition3, CONDITION_PARAM_LIGHT_LEVEL, 6)
setConditionParam(condition3, CONDITION_PARAM_LIGHT_COLOR, 62842)
setCombatCondition(combat, condition3)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end