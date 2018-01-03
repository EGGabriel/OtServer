local config =
{
        day = "Monday","Wednesday","Friday","Sunday",
        pos = {x=435, y=546, z=7},
        topos = {x=315, y=504, z=5},
        time = 5, -- tempo que o teleport ira sumir em minutos
        msg_open = "O Portal vai se abrir em 5 minutos.",
        msg_close = "O Portal se fechou."
}


local function DelTp()
        local t = getTileItemById(config.pos, 1387)
        if t then
                doRemoveItem(t.uid, 1)
                doSendMagicEffect(config.pos, CONST_ME_POFF)
        end
end


function onTimer()
       
        if (os.date("%A") == config.day) then
                doCreateTeleport(1387, config.topos, config.pos)
                doBroadcastMessage(config.msg_open)
                addEvent(DelTp, config.time*60*1000)
                addEvent(doBroadcastMessage, config.time*60*1000, config.msg_close)
        end


        return true
end