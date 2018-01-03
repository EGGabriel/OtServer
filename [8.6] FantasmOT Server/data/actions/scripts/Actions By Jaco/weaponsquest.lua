--- Made by Mazen ---
function onUse(cid, item, fromPosition, itemEx, toPosition)

       if item.uid == 4030 then
           queststatus = getPlayerStorageValue(cid,83410)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Aura Magic Club.")
               doPlayerAddItem(cid,8929,1)
               setPlayerStorageValue(cid,83410,1)
           else
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
           end
       elseif item.uid == 4031 then
           queststatus = getPlayerStorageValue(cid,83410)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,22,"You have found a Aura Magic Sword.")
               doPlayerAddItem(cid,8931,1)
               setPlayerStorageValue(cid,83410,1)
           else
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
           end
       elseif item.uid == 4032 then
           queststatus = getPlayerStorageValue(cid,83410)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,22,"You have found a Aura Magic Axe.")
               doPlayerAddItem(cid,8293,1)
               setPlayerStorageValue(cid,83410,1)
           else
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
           end
       elseif item.uid == 4033 then
           queststatus = getPlayerStorageValue(cid,83410)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,22,"You have found a Aura Magic Rod.")
               doPlayerAddItem(cid,7424,1)
               setPlayerStorageValue(cid,83410,1)
           else
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
           end
       elseif item.uid == 4034 then
           queststatus = getPlayerStorageValue(cid,83410)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Aura Magic Lance.")
               doPlayerAddItem(cid,2425,1)
               setPlayerStorageValue(cid,83410,1)
           else
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
        end
       elseif item.uid == 4035 then
           queststatus = getPlayerStorageValue(cid,83410)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Aura Magic Wand.")
               doPlayerAddItem(cid,2184,1)
               setPlayerStorageValue(cid,83410,1)
           else
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
           end
    end
       return 1
end