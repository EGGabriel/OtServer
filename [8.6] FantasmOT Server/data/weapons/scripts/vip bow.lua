local combat1 = createCombatObject()
local combat2 = createCombatObject()

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 43)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 34)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, 0, -200, 0, -400) 

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, 0, -200, 0, -400)

arr1 = {
{0, 0, 0},
{0, 3, 0},
{0, 0, 0},
}

arr2 = {
{0, 0, 0},
{0, 3, 0},
{0, 0, 0},
}

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)

setCombatArea(combat1, area1)
setCombatArea(combat2, area2)

local function onUseWeapon1(parameters)
doCombat(parameters.cid, parameters.combat1, parameters.var)
end

local function onUseWeapon2(parameters)
doCombat(parameters.cid, parameters.combat2, parameters.var)
end

function onUseWeapon(cid, var)
doSendAnimatedText(getPlayerPosition(cid), "20", TEXTCOLOR_BLUE)
local parameters = { cid = cid, var = var,combat1 = combat1,combat2 = combat2 }
addEvent(onUseWeapon1, 100, parameters) -- tempo dos hits: 0,1 segundos
addEvent(onUseWeapon2, 100, parameters) -- entre cada hit.

end