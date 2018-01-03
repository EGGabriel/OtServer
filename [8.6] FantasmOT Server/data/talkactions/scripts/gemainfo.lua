local config = {
	rateSpawn = getConfigInfo('rateSpawn'),
	rateSkill = getConfigInfo('rateSkill'),
	rateLoot = getConfigInfo('rateLoot'),
	rateMagic = getConfigInfo('rateMagic'),
	rateSpawn = getConfigInfo('rateSpawn'),
	autoSaveEachMinutes = getConfigInfo('autoSaveEachMinutes')
}

function onSay(cid, words, param)
	local str = "#Gema DarkFox#\n\n[Gema]:\n * A gema é um espirito que te da o direito de usar certa magia.\n\n [Como conseguir?]\n * É comprada no npc que fica no templo.\n\n [O que ela faz?]\n * Alem de te deixar com uns efeitos bonitos no char\n ela te da o direito de usar uma magia.\n\n[Que magias sao essas?]\n * Mugen Shiki (Royal Paladin de level 200)\n * Jukai Kousan (Elder Druid de level 200)\n * Yahumuki (Elite Knight de level 200)\n * Zesshou Hachimon (Master Sorcerer de level 200)\n\n[OBS]:\n # Quando você usar a magia da gema você a perde."
	doPlayerPopupFYI(cid, str)
	return FALSE
end