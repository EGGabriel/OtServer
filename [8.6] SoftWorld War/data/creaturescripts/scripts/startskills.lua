function onLogin(cid)
local playerVoc = getPlayerVocation(cid)
local reqTries = getPlayerRequiredSkillTries
local skillStor = 56364
local gotSkills = getPlayerStorageValue(cid, 56364)


if playerVoc == 5 and gotSkills == -1 then
doPlayerAddSpentMana(cid, (getPlayerRequiredMana(cid,80)))
setPlayerStorageValue(cid, skillStor, 1)

elseif playerVoc == 6 and gotSkills == -1 then
doPlayerAddSpentMana(cid, (getPlayerRequiredMana(cid,80)))
setPlayerStorageValue(cid, skillStor, 1)

elseif playerVoc == 7 and gotSkills == -1 then
doPlayerAddSkillTry(cid, SKILL_DISTANCE, reqTries(cid, SKILL_DISTANCE, 127))
doPlayerAddSkillTry(cid, SKILL_SHIELD, reqTries(cid, SKILL_SHIELD, 2))
doPlayerAddSpentMana(cid, (getPlayerRequiredMana(cid,17)))
setPlayerStorageValue(cid, skillStor, 1)

elseif playerVoc == 8 and gotSkills == -1 then
doPlayerAddSkillTry(cid, SKILL_AXE, reqTries(cid, SKILL_AXE, 127))
doPlayerAddSkillTry(cid, SKILL_SWORD, reqTries(cid, SKILL_SWORD, 127))
doPlayerAddSkillTry(cid, SKILL_CLUB, reqTries(cid, SKILL_CLUB, 127))
doPlayerAddSkillTry(cid, SKILL_SHIELD, reqTries(cid, SKILL_SHIELD, 2))
doPlayerAddSpentMana(cid, (getPlayerRequiredMana(cid,17)))
setPlayerStorageValue(cid, skillStor, 1)

end
return TRUE
end
