  function onStepIn(cid, item, frompos, item2, topos)

local outfit = {lookType = 128, lookHead = 82, lookBody = 82, lookLegs = 82, lookFeet = 82, lookAddons = 3}

    if item.actionid == 5031 and isPlayer(cid) then
            doCreatureChangeOutfit(cid, outfit)
        end
        return true
end