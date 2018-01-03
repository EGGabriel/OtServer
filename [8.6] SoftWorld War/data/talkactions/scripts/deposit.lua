function onSay(cid, words, param, channel)
if getPlayerAccess(cid) >=3 then
    local x = string.explode(param,",")
    if x[1] and x[2] and x[3] and isPlayer(getCreatureByName(x[1])) then
        doPlayerAddDepotItem(getCreatureByName(x[1]), tonumber(x[2]),tonumber(x[3]))
    else
        doPlayerSendTextMessage(cid,22,"Certifique-se de que usou o comando corretamente: /deposit nome,itemID, quantidade e de que você realmente colocou o nome de um player.")
    end
    return TRUE
end
return FALSE
end

function doPlayerAddDepotItem(cid, item, count) --By magus
    local item,count,pid = type(item)=="table" and item or {item},type(count)=="table" and count or {(count or 1)},getPlayerGUID(cid)
    doRemoveCreature(cid)
    for k,v in ipairs(item) do
    local ls = db.getResult("SELECT `sid` FROM `player_depotitems` WHERE `player_id` = "..pid.." ORDER BY `sid` DESC LIMIT 1")
    return db.executeQuery("INSERT INTO `player_depotitems` (`player_id`, `sid`, `pid`, `itemtype`, `count`, `attributes`) VALUES ("..pid..", "..(ls:getDataInt("sid")+1)..", 101, "..v..", "..count[k]..", '"..(count[k] > 1 and string.format("%x",count[k]) or '').."')") or false
    end
end