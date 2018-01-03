function onSay(cid, words, param)  
local maxLen = 15 -- tamanho maximo do nome 
local itemid = 2361 ------ Numero do Item que será removido 
local proibido = {} -- simbolos proibidos

 
      for i = 1, #proibido do           
          if string.find(tostring(param), proibido[i]) then              
             doPlayerSendCancel(cid,"Esse Nick não pode ser usado.")              
             return TRUE          
          end      
      end               
      
      if tostring(param) == "" then -- checkar se não é nome vazio         
         doPlayerSendCancel(cid, "Você deve informar um nome.")         
         return TRUE       
      end              
      
      if string.len(tostring(param)) > maxLen then          
         doPlayerSendCancel(cid, "Você pode usar no máximo " .. maxLen .. " letras.")          
         return TRUE       
      end             
      
      if not getTilePzInfo(getCreaturePosition(cid)) then       
         doPlayerSendCancel(cid,"So pode ser usado em pz.")       
         return TRUE       
      end                    
      
      if getPlayerItemCount(cid, itemid) >= 1 then           
         doPlayerRemoveItem(cid, itemid, 1)           
         db.executeQuery("UPDATE `players` SET `name` = '"..param.."' WHERE `id` = "..getPlayerGUID(cid)..";")            
         doPlayerSendTextMessage(cid,25,"Você será kickado em 5 segundos.")           
         addEvent(doRemoveCreature, 5*1000, cid, true)      
      else          
         doPlayerSendCancel(cid,"Você não possui o item " .. getItemNameById(itemid) .. ".")       
      end 
return TRUE 
end