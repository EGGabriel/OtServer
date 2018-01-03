function onUse(cid, item, fromPosition, itemEx, toPosition)
  gem = gems.id[getPlayerVocation(cid)]
  if item.itemid == gem then
    doUseGem(cid, item, getPlayerVocation(cid))
  end
  return TRUE
end
 