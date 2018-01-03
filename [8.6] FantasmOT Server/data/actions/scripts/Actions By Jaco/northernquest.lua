--- Made by Mazen ---
function onUse(cid, item, fromPosition, itemEx, toPosition)

       if item.uid == 2030 then
           queststatus = getPlayerStorageValue(cid,8963)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Aura Archer's Armor.")
               doPlayerAddItem(cid,8891,1)
               setPlayerStorageValue(cid,8963,1)
           else
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
           end
       elseif item.uid == 2031 then
           queststatus = getPlayerStorageValue(cid,8963)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,22,"You have found a Aura Warrior's Armor.")
               doPlayerAddItem(cid,9776,1)
               setPlayerStorageValue(cid,8963,1)
           else
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
           end
       elseif item.uid == 2032 then
           queststatus = getPlayerStorageValue(cid,8963)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Aura Coat.")
               doPlayerAddItem(cid,8866,1)
               setPlayerStorageValue(cid,8963,1)
           else
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
        end
       elseif item.uid == 2033 then
           queststatus = getPlayerStorageValue(cid,8963)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Aura Robe.")
               doPlayerAddItem(cid,8870,1)
               setPlayerStorageValue(cid,8963,1)
           else
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
           end
    end
       return 1
end