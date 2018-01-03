  local commonItems = {
  -- ITEMS ALL VOCS RECEIVE
  {itemid=2120, count=1}, -- rope
  {itemid=5710, count=1}, -- shovel
  {itemid=2160, count=100}, -- grana
  {itemid=2789, count=100}, -- brown mushrooms
  {itemid=2305, count=100}, -- fire bomb rune
  {itemid=2261, count=100}, -- destroy field rune
  {itemid=2268, count=100}, -- destroy field rune
}

local firstItems = {
  { -- SORC ITEMS
    {itemid=7900, count=1}, -- hat of the mad
    {itemid=7899, count=1}, -- focus cape
    {itemid=7894, count=1}, -- blue legs
    {itemid=9933, count=1}, -- boots of haste
    {itemid=6391, count=1}, -- spellbook of mind control
    {itemid=1951, count=1}, -- Carta
    {itemid=2127, count=1}, -- Ring
    {itemid=7429, count=1}, -- Aura Wand 
    {itemid=2156, count=1}, -- Gema 

    {itemid=2268, count=100}, -- sd
    {itemid=2273, count=100}, -- uh
    {itemid=2293, count=100}, -- mw
    {itemid=2269, count=100}, -- wg
    {itemid=2278, count=100}, -- para
    {itemid=2296, count=100}, -- mana
  },
  { -- DRUID ITEMS
    {itemid=7900, count=1}, -- hat of the mad
    {itemid=7899, count=1}, -- focus cape
    {itemid=7894, count=1}, -- blue legs
    {itemid=9933, count=1}, -- boots of haste
    {itemid=6391, count=1}, -- spellbook of mind control
    {itemid=1951, count=1}, -- Carta
    {itemid=2127, count=1}, -- Ring
    {itemid=7410, count=1}, -- Aura Rod
   {itemid=2155, count=1}, -- Gema 

    {itemid=2268, count=100}, -- sd
    {itemid=2273, count=100}, -- uh
    {itemid=2293, count=100}, -- mw
    {itemid=2269, count=100}, -- wg
    {itemid=2278, count=100}, -- para
    {itemid=2296, count=100}, -- mana
  },
  { -- PALADIN ITEMS
    {itemid=7901, count=1}, -- demon helmet
    {itemid=7898, count=1}, -- paladin armor
    {itemid=7895, count=1}, -- blue legs
    {itemid=9933, count=1}, -- boots of haste
    {itemid=1951, count=1}, -- Carta
    {itemid=2127, count=1}, -- Ring
    {itemid=8858, count=1}, -- Aura Bow
   {itemid=2158, count=1}, -- Gema 

    {itemid=2273, count=100}, -- uh
    {itemid=2293, count=100}, -- mw
    {itemid=2269, count=100}, -- wg
    {itemid=2278, count=100}, -- para
    {itemid=2296, count=100}, -- mana
  },
  { -- KNIGHT ITEMS
    {itemid=2474, count=1}, -- demon helmet
    {itemid=2503, count=1}, -- magic plate armor
    {itemid=2504, count=1}, -- golden legs
    {itemid=9933, count=1}, -- boots of haste
    {itemid=6391, count=1}, -- spellbook of mind control
    {itemid=1951, count=1}, -- Carta
    {itemid=2127, count=1}, -- Ring
    {itemid=7878, count=1}, -- Aura Axe
    {itemid=2154, count=1}, -- Gema 

    {itemid=2273, count=100}, -- uh
    {itemid=2293, count=100}, -- mw
    {itemid=2269, count=100}, -- wg
    {itemid=2296, count=100}, -- mana
  }
}

for _, items in ipairs(firstItems) do
  for _, item in ipairs(commonItems) do
    table.insert(items, item)
  end
end

function onLogin(cid)
  if getPlayerGroupId(cid) < 2 then
    local hasReceivedFirstItems = getPlayerStorageValue(cid, 67708)

    if hasReceivedFirstItems == -1 then
      --[[local backpack = ]]doPlayerAddItem(cid, 1988, 1)

      local giveItems = firstItems[getPlayerVocation(cid)]

      if giveItems ~= nil then
        for _, v in ipairs(giveItems) do
          --doAddContainerItem(backpack, v.itemid, v.count or 1)
          doPlayerAddItem(cid, v.itemid, v.count or 1)
        end

        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "You have recieved your equipment")
        setPlayerStorageValue(cid, 67708, 1)  
      end
    end
  end
  return TRUE
end 