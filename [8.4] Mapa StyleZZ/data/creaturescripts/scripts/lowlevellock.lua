function onLogin(cid)

	if getPlayerLevel(cid) < 350 then
	doPlayerAddExperience(cid, (getExperienceForLevel(350) - getPlayerExperience(cid)))
end
return TRUE
end