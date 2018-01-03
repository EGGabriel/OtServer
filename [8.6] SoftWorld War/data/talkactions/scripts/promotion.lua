function onSay(cid, words, param, channel)

    sorcerer = {
    cost = 2000,
    level = 20,
    text = "Promoted to Master Sorcerer",
    }
    druid = {
    cost = 2000,
    level = 20,
    text = "Promoted to Elder Druid",
    }
    paladin = {
    cost = 2000,
    level = 20,
    text = "Promoted to Royal Paladin",
    }
    knight = {
    cost = 2000,
    level = 20,
    text = "Promoted to Elite Knight",
    }

    if getPlayerVocation(cid) == 1 then
        voc = sorcerer
    elseif getPlayerVocation(cid) == 2 then
        voc = druid
    elseif getPlayerVocation(cid) == 3 then
        voc = paladin
    elseif getPlayerVocation(cid) == 4 then
        voc = knight
    else
        voc = nil
    end
    if voc ~= nil then
        if getPlayerLevel(cid) >= voc.level then
            if doPlayerRemoveMoney(cid,voc.cost) == TRUE then
                setPlayerPromotionLevel(cid, 1)
                doSendMagicEffect(getCreaturePosition(cid),14)
                doSendAnimatedText(getCreaturePosition(cid),voc.text,49)
            else
                doPlayerSendTextMessage(cid,18,"You need "..voc.cost.." to promote.")
            end
        else
            doPlayerSendTextMessage(cid,18,"You need level "..voc.level.." to promote.")
        end
    else
        doPlayerSendTextMessage(cid,18,"You already promoted.")
    end
    return TRUE
end