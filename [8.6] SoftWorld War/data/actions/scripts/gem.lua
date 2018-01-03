--[[
##############################
# Autor: Dalvo               #
# Msn: dalvo_rsn@hotmail.com #
# Skype: dalvorsn            #
##############################
]]
function onUse(cid, item, fromPosition, itemEx, toPosition)
	--##config##
	minLevel = 190 -- level minimo para usar
	erro = {"Vocação incorreta", -- item errado para vocação
		"Voce não tem level suficiente, precisa ser level ".. minLevel.." ou maior para usar" -- sem level para usar
	}
	ids = {2156, 2155, 2158, 2154, 2156, 2155, 2158, 2154, } -- id por vocação
	--##end config##
	gem = Gem:new(cid)
	if(getPlayerLevel(cid) > minLevel)then
		if(item.itemid == ids[getPlayerVocation(cid)])then
			gem:activeGem(item)
		else
			return doPlayerSendCancel(cid, erro[1])
		end
	else
		return doPlayerSendCancel(cid, erro[2])
	end
	return true
end
