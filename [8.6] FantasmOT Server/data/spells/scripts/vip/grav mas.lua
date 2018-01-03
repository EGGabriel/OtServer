local config =
 {
  seconds = 10,
   storage = 47112120,
   msg = "Voc\ê preci\sa aguardar %d segundos para acumular o esp\írito.",
  mana = 800,
 semMana = "Voc\ê n\ão t\êm mana suficiente."
}

local function useAgain(cid)
 setPlayerStorageValue(cid, config.storage, 2)
 return TRUE
end

local function useAgain(cid)
 setPlayerStorageValue(cid, config.storage, 2)
 return TRUE
end

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_CREATEITEM, 1499)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 45)

arr = {
{1, 1, 1,},
{1, 2, 1,},
{1, 0, 1,},
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
     if getPlayerStorageValue(cid, config.storage) ~= 1 then
      if getPlayerMana(cid) >= config.mana then
       doPlayerAddMana(cid, -config.mana)
    setPlayerStorageValue(cid, config.storage, os.time())
         addEvent(useAgain, config.seconds*2000, cid)
      return doCombat(cid, combat, var)
     else
    doPlayerSendCancel(cid, config.semMana)
  end	
end
 return TRUE
end