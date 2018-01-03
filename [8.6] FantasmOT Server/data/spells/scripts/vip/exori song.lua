local config =
{
storage = 13896,
manapercent = 20, -- mana em porcentagem que ira retirar
}

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_BLUE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -3.0, -290, -3.5, -300)

arr = {
{0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 1, 1, 1, 1},
{0, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0},,
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
if (getPlayerStorageValue(cid, config.storage) <= os.time()) then
if getPlayerMana(cid) >= ((config.manapercent/100)*getCreatureMaxMana(cid))  then
doPlayerAddMana(cid, -((config.manapercent/100)*getCreatureMaxMana(cid)))
local parameters = { cid = cid, var = var, combat = combat}
addEvent(spell, 500, parameters)
return doCombat(cid, combat, var)
end