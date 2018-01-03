local waittime = 60 --Default (60 seconds)
local storage = 5560
 
function onSay(cid, words, param, channel) 
    if exhaustion.get(cid, storage) == FALSE then
        doPlayerSave(cid)
        exhaustion.set(cid, storage, waittime)
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Saved Character.")
    else
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Você só pode usar o Comando daqui " .. exhaustion.get(cid, storage) .. " seconds.")
    end    
    return TRUE 
end