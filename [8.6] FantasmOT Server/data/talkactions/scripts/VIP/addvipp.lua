function onSay(cid, words, param)
         if param == "" then
            return  doPlayerPopupFYI(cid,"Esta con problemas?\nAprenda los comandos!\n---------------\nAdicionar vip:\n/vip add days player\n/vip add 30 GOD Keltera\n---------------\nBorrar vip:\n/vip del player\n/vip del GOD Keltera\n---------------\nVer vip:\n/vip see player\n/vip see GOD Keltera\n---------------\n")
         end
         if param:lower():find('add') == 1 and 3 then
            local _,_,id,name = param:lower():find('add (%d+) (.+)')
            name = name or ""
            id = tonumber(id or 1) or 1
            if tonumber(id) == nil or getPlayerByName(name) == false then
               return doPlayerSendTextMessage(cid,25,"Adicionar vip:\n/vip add days player\n/vip add 30 GOD Keltera\n [Player: "..name.."]")
            end  
            if isPlayer(getPlayerByName(name)) == TRUE then
            vip.addVipByAccount(getPlayerAccount(getPlayerByName(name)) ,vip.getDays(id))

            doPlayerSendTextMessage(cid,25,"Foram adicionados "..tonumber(id).." dias de vip a "..name..".")
            doPlayerSendTextMessage(getPlayerByName(name),25,"Você recebeu "..tonumber(id).." dias de vip.")
         else
           doPlayerSendTextMessage(cid,25,name.." no esta online o no existe.")
         end
         elseif param:lower():find('del') == 1 and 3 then
            local _,_,name = param:lower():find('del (.+)')
            if getPlayerByName(name) == false then
               return doPlayerSendTextMessage(cid,25,"Deletar vip:\n/vip del player\n/vip del GOD Keltera\n")
            end

            vip.setVipByAccount(getPlayerAccount(getPlayerByName(name)),-os.time())
            doPlayerSendTextMessage(cid,25,"A vip de "..name.." foi apagada.")                                                                                                                                               
         elseif param:lower():find('see') == 1 and 3 then
            local _,_,name = param:lower():find('see (.+)')
            name = name or ""
            if getPlayerByName(name) == false then
               return doPlayerSendTextMessage(cid,25,"Ver vip:\n/vip see player\n/vip see GOD Keltera\n")
            end
            local ret_ = vip.getVip(getPlayerByName(name))
            if ret_ == 0 then
              return doPlayerSendTextMessage(cid, 25,name.." No tiene vip.")
            else
              return doPlayerSendTextMessage(cid, 25, "A vip de "..name.." Acaba/terminou em "..os.date("%d %B %Y %X ",ret_))
            end
         end
         return TRUE
end