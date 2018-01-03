function onLogin(cid)

	if getPlayerLevel(cid) < 200 then
	doPlayerAddExperience(cid, (getExperienceForLevel(200) - getPlayerExperience(cid)))
end
return TRUE
end