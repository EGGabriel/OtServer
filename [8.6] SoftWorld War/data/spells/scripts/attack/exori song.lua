local helmet = 11296
local armor = 11295
local legs = 11298


local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_YELLOW)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -19.5, -200, -20.7, -200)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_BLUE)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -23.8, -250, -26.5, -250)

arr1 = {
{0, 0, 0, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 3, 1, 1, 1},
{0, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0}
}

arr2 = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 3, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)

setCombatArea(combat1, area1)
setCombatArea(combat2, area2)


function onCastSpell(cid, var)
if getPlayerSlotItem(cid, 1).itemid == helmet  and getPlayerSlotItem(cid, 4).itemid == armor and getPlayerSlotItem(cid, 7).itemid == legs then
return doCombat(cid, combat2, var)

else
return doCombat(cid, combat1, var)

end
end 