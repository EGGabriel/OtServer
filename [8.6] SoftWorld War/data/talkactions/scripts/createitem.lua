function onSay(cid, words, param, channel)
	if(param == '') then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
		return true
	end

	local t = string.explode(param, ",")
	local ret = RETURNVALUE_NOERROR
	local tmp = getCreaturePosition(cid)

	local id = tonumber(t[1])
	if(not id) then
		id = getItemIdByName(t[1], false)
		if(not id) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Veja direito o nome do item que voce quer sumona...esse nome nao existe.")
			return true
		end
	end

	local amount = 100
	if(t[2]) then
		amount = t[2]
	end

	local item = doCreateItemEx(id, amount)
	if(t[3] and getBooleanFromString(t[3])) then
		if(t[4] and getBooleanFromString(t[4])) then
			tmp = getPlayerLookPos(cid)
		end

		ret = doTileAddItemEx(tmp, item)
	else
		ret = doPlayerAddItemEx(cid, item, true)
	end

	if(ret ~= RETURNVALUE_NOERROR) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Couldn't add item: " .. t[1])
		return true
	end

		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Item sumonado com Sucesso.")
	return true

end
