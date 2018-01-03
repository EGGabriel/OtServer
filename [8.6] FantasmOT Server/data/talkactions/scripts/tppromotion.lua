function onSay(cid, words, param, channel)
    local configs = {
    cost = 20000,
    level = 20
    }

    if isPremium(cid) then
        if getPlayerLevel(cid) >= configs.level then
            if getPlayerPromotionLevel(cid) < 1 then
                if configs.cost <= 0 or doPlayerRemoveMoney(cid, configs.cost) then
                    setPlayerPromotionLevel(cid, 1)
                else
                    doPlayerSendCancel(cid, "Voc� nao tem o dinheiro suficiente que � " .. configs.cost .. " gold coins.")
                end
            else
                doPlayerSendCancel(cid, "Voc� j� � promovido.")
            end
        else
            doPlayerSendCancel(cid, "Voc� precisa ser level " .. configs.level .. " ou maior para adiquirir a promotion.")
        end
    else
        doPlayerSendCancel(cid, "Voc� precisa ser premium account para adiquirir a promotion.")
        end
return TRUE
end