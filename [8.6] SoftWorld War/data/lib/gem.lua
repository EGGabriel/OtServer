--[[

]]
Gem = {}
--##config##
char = {"' . ,     ", "  . ' ,", "' . ,   ", ", ' .  ",". , '  "} --characters do effect
interval = 600 --intervalo de execução de cada effect
gemstorage = 1111 --storage da gem
color = {180,13,5,210,180,13,5,210}
msg_activegem = "Voce adquiriu uma gema espiritual."
msg_deactivegem = "Voce acabou de utilizar a sua gema."
msg_havegem = "Voce ja possui uma gem."
--##end config##

function Gem:new(cid)
	return setmetatable({
			gemStatus = getPlayerStorageValue(cid, gemstorage) == 1 and true or false,
			cid = cid,
			stor = gemstorage
	},{ __index = self }
	)
end
function Gem:sendGemEffect()
	if(isPlayer(self.cid) and getPlayerStorageValue(self.cid, self.stor) == 1)then
		doSendAnimatedText(getThingPos(self.cid), char[math.random(1, #char)], color[getPlayerVocation(self.cid)])
		addEvent(function() self:sendGemEffect() end, interval)
	end
	return true
end
function Gem:activeGem(item)
	if not(self:isActiveGem())then
		setPlayerStorageValue(self.cid, self.stor, 1)
		doRemoveItem(item.uid,1)
		doPlayerSendTextMessage(self.cid, MESSAGE_STATUS_WARNING,msg_activegem)
		doSendMagicEffect(getThingPos(self.cid), 65)
		self.gemStatus = true
		self:sendGemEffect()
		return true
	else
		doPlayerSendCancel(self.cid, msg_havegem)	
	end
	return false
end	
function Gem:removeGem()
	self.gemStatus = false
	return setPlayerStorageValue(self.cid, self.stor, -1)
end
function Gem:isActiveGem()
	return self.gemStatus
end
