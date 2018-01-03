local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_NONE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_BLOCKHIT)

local area = createCombatArea(AREA_CROSS1X1)
setCombatArea(combat, area)

local maxsummons = 1

function onCastSpell(cid, var)


doCreatureSay(cid, "Maoli will kill you!", TALKTYPE_ORANGE_1)
    local summoncount = getCreatureSummons(cid)
    if #summoncount < 1 then
        for i = 1, maxsummons - #summoncount do
            local mid = doSummonCreature("maoli", getCreaturePosition(cid))
                if mid == false then
                return combat:execute(creature, var)
            end
            doConvinceCreature(cid, mid)

        end
    end
    return doCombat(cid, combat, var)
	
end