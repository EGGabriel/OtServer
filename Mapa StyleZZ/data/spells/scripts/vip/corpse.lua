--< Osmaar >--
local config = {
        storage = 12456, --
        time = 3 * 60, -- 
        player = true, -- 
        monster = false, -- 
        npc = false, -- 
        chance = 100, --
}
function onCastSpell(cid, var)
        
        local function doSend(pos1, pos2, num)
                doSendDistanceShoot(getCreaturePosition(pos1), getCreaturePosition(pos2), 4)
                doSendDistanceShoot(getCreaturePosition(pos2), getCreaturePosition(pos1), 4)
                if type(num) == "number" and num == 1 then
                        if math.random(1, 100) <= config.chance then
                                local pp1 = getCreaturePosition(pos1)
                                local pp2 = getCreaturePosition(pos2)
                                doTeleportThing(pos2, pp1)
                                doTeleportThing(pos1, pp2)
                        else
                                doPlayerSendCancel(cid, "Opps que azar, tente denovo!")
                        end
                end
                return true
        end
        
        local target = getCreatureTarget(cid)
        
        if type(target) ~= "number" or target == 0 then
                doPlayerSendCancel(cid, "Você precisa selecionar alguma creature para fazer isso!")
                return false
        end
        
                if (config.player == false and isPlayer(target)) or (isPlayer(target) and getPlayerAccess(target) > getPlayerAccess(cid))
                doPlayerSendCancel(cid, "Voce nao pode fazer isso com essa criatura!")
                return false
        end
        
        if getPlayerStorageValue(cid, config.storage) > os.time() then
                doPlayerSendCancel(cid, "Voce so pode utilizar essa magia a cada 3 minutos!")
                                return false
        else
                for i = 1, 7 do
                        addEvent(doSend, i*250, cid, target, 0)
                end
                addEvent(doSend, 4*500, cid, target, 1)
                setPlayerStorageValue(cid, config.storage, os.time() + config.time)
        end
        
        return true
end