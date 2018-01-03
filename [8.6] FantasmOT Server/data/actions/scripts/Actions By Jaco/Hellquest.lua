--- Made by Mazen ---
function onUse(cid, item, fromPosition, itemEx, toPosition)

       if item.uid == 12901 then
           queststatus = getPlayerStorageValue(cid,50091)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Golden Helmet.")
               doPlayerAddItem(cid,2471,1)
               setPlayerStorageValue(cid,50091,1)
           else
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
           end
       elseif item.uid == 12902 then
           queststatus = getPlayerStorageValue(cid,50092)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid,22,"You have found a Mystical Boots.")
               doPlayerAddItem(cid,2640,1)
               setPlayerStorageValue(cid,50092,1)
           else
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
           end
       elseif item.uid == 12903 then
           queststatus = getPlayerStorageValue(cid,50093)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Crown.")
               doPlayerAddItem(cid,2128,1)
               setPlayerStorageValue(cid,50093,1)
           else
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
        end
       elseif item.uid == 12904 then
           queststatus = getPlayerStorageValue(cid,50094)
           if queststatus == -1 then
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found a Golden Boots.")
               doPlayerAddItem(cid,2646,1)
               setPlayerStorageValue(cid,50094,1)
           else
               doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"It is empty.")
           end
    end
       return 1
end