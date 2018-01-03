function getCooldown(cid, spellname)

local storage = tostring(getPlayerStorageValue(cid, 40001))
local spellname = '"' .. spellname .. '"'

return string.find(storage, spellname) and tonumber(string.match(storage, "%d+", string.find(storage, spellname) + #spellname)) - os.time() or 0
end

function setCooldown(cid, spellname, seconds)

local storage = getPlayerStorageValue(cid, 40001) == -1 and "" or tostring(getPlayerStorageValue(cid, 40001))
local spellname = '"' .. spellname .. '"'

if string.find(storage, spellname) then
local gsub = string.gsub(storage, string.match(storage, "%d+", string.find(storage, spellname) + #spellname), tostring(os.time() + seconds))
setPlayerStorageValue(cid, 40001, gsub)
else
setPlayerStorageValue(cid, 40001, storage .. spellname .. " " .. tostring(seconds + os.time()) .. " ")
end

end

function isExhausted(cid, spellname)

return getCooldown(cid, spellname) > 0
end