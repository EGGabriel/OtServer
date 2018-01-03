local config =
{
exhaust = 10, -- tempo sem segundos que ficara em exaust
storage = 13896,
manapercent = 45, -- mana em porcentagem que ira retirar
}

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 26)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -5000.500, 505050, -195555.3, 0)

arr = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 1, 1, 1, 3, 1, 1, 1, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
if (getPlayerStorageValue(cid, config.storage) <= os.time()) then
if getPlayerMana(cid) >= ((config.manapercent/100)*getCreatureMaxMana(cid))  then
doPlayerAddMana(cid, -((config.manapercent/100)*getCreatureMaxMana(cid)))
local parameters = { cid = cid, var = var, combat = combat,}
        addEvent(onCastSpell1, 500, parameters)
      return doCombat(cid, combat, var)

return TRUE
end