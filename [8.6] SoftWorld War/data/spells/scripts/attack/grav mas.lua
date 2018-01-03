local config =
 {
  seconds = 20,
   storage = 47112121,
   msg = "Voc\ê preci\ça aguardar 20 segundos para acumular o esp\írito.",
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

arr = {
{1, 1, 1,},
{1, 3, 1,},
{1, 0, 1,},
}

local area = createCombatArea(arr)

setCombatArea(combat, area)

function onCastSpell(cid, var)
 if getPlayerStorageValue(cid, config.storage) == 1 then
  doPlayerSendCancel(cid, config.msg)
   return TRUE
    end
     if getPlayerStorageValue(cid, config.storage) ~= 1 then
      if getPlayerMana(cid) >= config.mana then
       doPlayerAddMana(cid, -config.mana)
        setPlayerStorageValue(cid, config.storage, 1)
         addEvent(useAgain, config.seconds*2000, cid)
      return doCombat(cid, combat, var)
     else
    doPlayerSendCancel(cid, config.semMana)
  end	
end
 return TRUE
end