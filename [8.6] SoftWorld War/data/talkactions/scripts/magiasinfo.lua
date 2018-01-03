local config = {
	rateExp = getConfigInfo('rateExp'),
	rateSkill = getConfigInfo('rateSkill'),
	rateLoot = getConfigInfo('rateLoot'),
	rateMagic = getConfigInfo('rateMagic'),
	rateSpawn = getConfigInfo('rateSpawn'),
	protectionLevel = getConfigInfo('protectionLevel')
}

function onSay(cid, words, param)
	local str = "#The New Spells by [GOD] LeziN#\n\n[Para Free Account]\n\n[Para Sorcerers]\n Exevo Gran Mas vis (LvL 70, Mana 1600)\n Utani gran hur (LvL 14, mana 100)\n\n[Para druids]\n Exevo gran mas pox (LvL 50, mana 600)\n Utani gran hur(LvL 14, mana 100)\n\n[Para Paladins]\n Exori Song (LvL 100, Mana 430)\n Utani Hur (LvL 14, Mana 60)\n karamatsu no mai (LvL 200, Mana 900)\n\n[Para Knights]\n Uber exori (LvL 100, Mana 500)\n Utani Hur (LvL 14, Mana 60)\n\n#The New Runes by [GOD] LeziN#\n\n--------------------------------------------------------------------\n-Protection level: " .. config.protectionLevel
	doPlayerPopupFYI(cid, str)
	return FALSE
end