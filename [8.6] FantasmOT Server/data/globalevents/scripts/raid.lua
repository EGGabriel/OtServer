local storage = 1344
local raids = {
	"Morgaroth",
	"Ghazbaran"
}
function onThink(interval, lastExecution, thinkInterval)
	if getGlobalStorageValue(storage) == -1 or getGlobalStorageValue(storage) < os.time() then
		executeRaid(raids[math.random(1, #raids)])
		setGlobalStorageValue(storage, os.time() + 9 * 60 * 60)
	end
	return TRUE
end