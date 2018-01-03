local config = {
	rateExp = getConfigInfo('rateExp'),
	rateSkill = getConfigInfo('rateSkill'),
	rateLoot = getConfigInfo('rateLoot'),
	rateMagic = getConfigInfo('rateMagic'),
	rateSpawn = getConfigInfo('rateSpawn'),
	protectionLevel = getConfigInfo('protectionLevel')
}

function onSay(cid, words, param)
	local str = "#The New Spells by [GOD] LeziN#\n\n[Para Premium Account]\n\n[Para Supreme Sorcerers]\n Exevo Aura Wand (LvL 50, Mana 200)\n Housenka (LvL 150, Mana 2400)\n Utani Gran Hur(LvL 14, mana 100)\n\n[Para Majestic druids]\n Exevo Aura Rod (LvL 50, Mana 200)\n Hyakka Ryouran (LvL 150, mana 600)\n Exevo Grav Mas (LvL 180, mana 800)\n Utani Gran Hur(LvL 14, mana 100)\n\n[Para Lord Paladins]\n Exevo Aura Bow (LvL 50, Mana 200)\n Rasenshuriken (LvL 150, Mana 1200)\n karamatsu No Mai (LvL 200, Mana 900)\n Senpou Hur (LvL 200, mana 600)\n\n[Para Monster Knights]\n Exevo Aura Axe (LvL 50, Mana 200)\n Exevo Aura Sword (LvL 50, Mana 200)\n Exevo Aura Club (LvL 50, Mana 200)\n Ezzori (LvL 200, Mana 1000)\n Senpou Hur (LvL 200, mana 600)\n\n#The New Runes by [GOD] LeziN#\n\n--------------------------------------------------------------------\n-Protection level: " .. config.protectionLevel
	doPlayerPopupFYI(cid, str)
	return FALSE
end