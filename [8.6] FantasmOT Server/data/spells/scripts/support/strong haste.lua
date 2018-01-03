local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 14)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_HASTE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 20000)
setConditionFormula(condition, 0.7, -56, 0.7, -56)
setCombatCondition(combat, condition)
function onCastSpell(cid, var)

if getPlayerLookDir(cid) == 0 then
pos1 = {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y +2, z=getCreaturePosition(cid).z}	
pos2 = {x=getCreaturePosition(cid).x -1, y=getCreaturePosition(cid).y +2, z=getCreaturePosition(cid).z}
pos3 = {x=getCreaturePosition(cid).x +1, y=getCreaturePosition(cid).y +2, z=getCreaturePosition(cid).z}
elseif getPlayerLookDir(cid) == 1 then
pos1 = {x=getCreaturePosition(cid).x -2, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}	
pos2 = {x=getCreaturePosition(cid).x -2, y=getCreaturePosition(cid).y +1, z=getCreaturePosition(cid).z}
pos3 = {x=getCreaturePosition(cid).x -2, y=getCreaturePosition(cid).y -1, z=getCreaturePosition(cid).z}
elseif getPlayerLookDir(cid) == 2 then
pos1 = {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y -2, z=getCreaturePosition(cid).z}	
pos2 = {x=getCreaturePosition(cid).x -1, y=getCreaturePosition(cid).y -2, z=getCreaturePosition(cid).z}
pos3 = {x=getCreaturePosition(cid).x +1, y=getCreaturePosition(cid).y -2, z=getCreaturePosition(cid).z}
elseif getPlayerLookDir(cid) == 3 then
pos1 = {x=getCreaturePosition(cid).x +2, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}	
pos2 = {x=getCreaturePosition(cid).x +2, y=getCreaturePosition(cid).y +1, z=getCreaturePosition(cid).z}
pos3 = {x=getCreaturePosition(cid).x +2, y=getCreaturePosition(cid).y -1, z=getCreaturePosition(cid).z}
end

doSendDistanceShoot(getPlayerLookPos(cid), pos1, 40)
doSendDistanceShoot(getPlayerLookPos(cid), pos2, 40)
doSendDistanceShoot(getPlayerLookPos(cid), pos3, 40)
return doCombat(cid, combat, var)
end