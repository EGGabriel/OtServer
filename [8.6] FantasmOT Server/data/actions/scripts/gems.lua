local config =
{
 minLevel = 200, -- Level mínimo para adquirir a gema.
 }

function onUse(cid, item, fromPosition, itemEx, toPosition)
 if getPlayerLevel(cid) >= config.minLevel then
  gem = gems.id[getPlayerVocation(cid)]
  if item.itemid == gem then
    doUseGem(cid, item, getPlayerVocation(cid))
     doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Você adquiriu uma gema espíritual.")
      doSendMagicEffect(getCreaturePosition(cid), 65)
     end
    else
   doPlayerSendCancel(cid, "Voc\ê precisa ser level "..config.minLevel.." para adquirir a gema esp\íritual.")
  end
  return TRUE
end