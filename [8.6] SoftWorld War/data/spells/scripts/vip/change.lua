local config = {
        storage = 12456, -- storage que salva o delay da magia
        time = 3 * 60, -- tempo que deve esperar para usar a magia em segundos
        player = true, -- funciona com player true/false
        monster = false, -- funciona com monstros true/false
        npc = false, -- funciona com npc true/false
        chance = 100, -- numero de 1 a 100 representando a chance de sucesso
}

function onCastSpell(cid, var)
        
        local function doSend(pos1, pos2, num)
                doSendMagicEffect(getCreaturePosition(pos2), 47)
			doSendMagicEffect(getCreaturePosition(pos1), 47)
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
then
                doPlayerSendCancel(cid, "Voce nao pode fazer isso com essa criatura!")
                return false
        end
        
        if getPlayerStorageValue(cid, config.storage) > os.time() then
                doPlayerSendCancel(cid, "Seu Emo, Voce só pode usar Esta magia a cada 3 Minutos !")
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
