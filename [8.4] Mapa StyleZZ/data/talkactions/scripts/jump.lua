---[Jump basic, made by Nogard, acess tibiadev.com for support]----

function onSay (cid, words, param)

local obstacle = {1285, 1534, 2785, }


 if not isInArray(obstacle, getThingFromPos(getPlayerLookPos(cid)).itemid) then
    doPlayerSendCancel(cid, 'You do not can jump this.')
     return false
   end 
 
 

  local direction = getDirectionTo(getCreaturePosition(cid), getPlayerLookPos(cid))
  

    addEvent(doTeleportThing, 1*1000, cid, getPlayerLookPos(cid))
     addEvent(doMoveCreature, 2*1000, cid, direction)
      doSendAnimatedText(getCreaturePosition(cid), 'Jumping', 8)
       doPlayerSetNoMove(cid, true)          
        addEvent(doPlayerSetNoMove, 2*1000, cid, false)
           
      
       
    return true
       end