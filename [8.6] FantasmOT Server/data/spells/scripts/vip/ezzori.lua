local config = {
  manapercent = 75,
  seconds = 10,
  storage = 47112120,
  semMana = "Você não têm mana suficiente.",
  msg = "Você precisa aguardar %d segundos para acumular espírito.",
}

local combat = createCombatObject()
 setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
 setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONAREA)
setCombatFormula(combat,COMBAT_FORMULA_LEVELMAGIC, -18.2, -1890, -18.7, -1890)

local condition = createConditionObject(CONDITION_PARALYZE)
 setConditionParam(condition, CONDITION_PARAM_TICKS, 20000)
  -- setConditionParam(condition, CONDITION_PARAM_SPEED, -70)
 setConditionFormula(condition, -0.9, 0, -0.9, 0)
setCombatCondition(combat, condition)

arr = {
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0,0,0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0,0,0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0,0,0},
{1, 0, 1, 1, 1, 1, 1, 1, 1, 0,1,0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1,0,0},
{0, 0, 1, 1, 1, 3, 1, 1, 1, 0,0,0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1,0,0},
{1, 0, 1, 1, 1, 1, 1, 1, 1, 0,1,0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0,0,0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0,0,0},
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0,0,0},
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
  if getPlayerStorageValue(cid, config.storage) == -1 then
    setPlayerStorageValue(cid, config.storage, os.time()-config.seconds)
  end
  if config.seconds-(os.time()-getPlayerStorageValue(cid, config.storage)) > 0 then
    doPlayerSendCancel(cid, string.format(config.msg, config.seconds-(os.time()-getPlayerStorageValue(cid, config.storage))))
    return true
  end
if getPlayerMana(cid) >= ((config.manapercent/100)*getCreatureMaxMana(cid))  then
doPlayerAddMana(cid, -((config.manapercent/100)*getCreatureMaxMana(cid)))
    setPlayerStorageValue(cid, config.storage, os.time())
local parameters = { cid = cid, var = var, combat = combat,}
        addEvent(onCastSpell1, 500, parameters)
      return doCombat(cid, combat, var)
  else
	doPlayerSendCancel(cid, config.semMana)
  end
  return true
end
