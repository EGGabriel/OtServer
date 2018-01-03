--[[
]]
function onLogin(cid)
	gem = Gem:new(cid)
	if(gem:isActiveGem())then
		gem:sendGemEffect()
	end
	return true
end
