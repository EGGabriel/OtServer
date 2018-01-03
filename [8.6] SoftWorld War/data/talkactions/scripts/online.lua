function onSay(cid, words, param, channel)
	local players = getPlayersOnline()
	local n = 0
	for i, _ in pairs(players) do
		n = n + 1
	end
	doPlayerSendTextMessage(cid, 25, "Há "..n.." players online.")
	return TRUE
end
