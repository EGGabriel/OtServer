local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)

local arr = {
{0, 0, 0},
{0, 0, 0},
{0, 0, 0},
{0, 0, 0},
{0, 3, 0}
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
doSendAnimatedText(getPlayerPosition(cid), "CREW", TEXTCOLOR_LIGHTGREEN)
doSendAnimatedText(getThingPos(target), ' Ai', 1)
	return doCombat(cid, combat, var)
end
