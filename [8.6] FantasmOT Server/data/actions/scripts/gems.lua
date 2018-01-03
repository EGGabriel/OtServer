local config =
{
 minLevel = 200, -- Level m�nimo para adquirir a gema.
 }

function onUse(cid, item, fromPosition, itemEx, toPosition)
 if getPlayerLevel(cid) >= config.minLevel then
  gem = gems.id[getPlayerVocation(cid)]
  if item.itemid == gem then
    doUseGem(cid, item, getPlayerVocation(cid))
     doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Voc� adquiriu uma gema esp�ritual.")
      doSendMagicEffect(getCreaturePosition(cid), 65)
     end
    else
   doPlayerSendCancel(cid, "Voc\� precisa ser level "..config.minLevel.." para adquirir a gema esp\�ritual.")
  end
  return TRUE
end