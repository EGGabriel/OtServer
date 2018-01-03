function doUseGem(cid, item)
  local voc = getPlayerVocation(cid)
  local interval = gems.interval[voc]

  if item.itemid ~= gems.id[voc] or getPlayerStorageValue(cid, gems.storage[voc]) > 0 then
    return FALSE
  end

  setPlayerStorageValue(cid, gems.storage[voc], 1)
  sendGemEffect(cid, gems.storage[voc], gems.interval[voc])
  doRemoveItem(item.uid, 1)



  return TRUE  
end


function sendGemEffect(cid, storage, interval)
local pos = getThingPos(cid)
local voc = getPlayerVocation(cid)
local color = 1
if voc == 5 then
  color = gemMsg.colorDruid[math.random(1,#gemMsg.colorElderDruid)]
elseif voc == 6 then
  color = gemMsg.colorSorcerer[math.random(1,#gemMsg.colorMasterSorcerer)]
elseif voc == 7 then
  color = gemMsg.colorPaladin[math.random(1,#gemMsg.colorRoyalPaladin)]
elseif voc == 8 then
  color = gemMsg.colorKnight[math.random(1,#gemMsg.colorEliteKnight)]
end

doSendAnimatedText(pos, gemMsg.rnd[math.random(1,#gemMsg.rnd)], color)
  if getPlayerStorageValue(cid, gems.storage[getPlayerVocation(cid)]) >= 1 then 
    addEvent(sendGemEffect, interval, cid, storage, interval)
  end
end

function doRemoveGemEffect(cid)
  if getPlayerStorageValue(cid, gems.storage[getPlayerVocation(cid)]) < 1 then
    return FALSE
  end
  setPlayerStorageValue(cid, gems.storage[getPlayerVocation(cid)], 0)
  return TRUE
end

function doRemoveAllGemEffect(cid)
  for i = 1, table.maxn(gms.storage) do
    setPlayerStorageValue(cid, gems.storage[i], 0)
  end
  return TRUE
end

function isGemActivated(cid)
  if getPlayerStorageValue(cid, gems.storage[getPlayerVocation(cid)]) > 0 then
    return TRUE
  end
  return FALSE
end
