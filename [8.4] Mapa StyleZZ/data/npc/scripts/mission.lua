local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

NpcSystem.parseParameters(npcHandler)

local talkState = {}

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end
function creatureSayCallback(cid, type, msg)

	if(not npcHandler:isFocused(cid)) then
		return false
	end

local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

	if(msgcontains(msg, 'quest')) then
		selfSay('Para começar essa quest diga {mission}', cid) 
	end
-----------------------------------------------------------------
	if(msgcontains(msg, 'mission')) then
    	if(getPlayerStorageValue(cid,700) < 1) then
        	selfSay('Sua primira missão é conseguir 100 {magic sulphurs}.', cid)
        	talkState[talkUser] = 1
    	elseif (getPlayerStorageValue(cid,701) < 1) then
            	selfSay('Sua proxima missão é conseguir 100 {demon dust}.', cid)
            	talkState[talkUser] = 1
    	elseif (getPlayerStorageValue(cid,702) < 0) then
            	selfSay('Sua proxima missão é conseguir 100 {gold nuggets}.', cid)
            	talkState[talkUser] = 1
    	elseif (getPlayerStorageValue(cid,703) < 0) then
            	selfSay('Sua proxima missão é conseguir 1 {eternal flames}.', cid)
            	talkState[talkUser] = 1
    	elseif (getPlayerStorageValue(cid,703) == 1) then
            	selfSay('Você Já acabou com todas Missões.', cid)
            	talkState[talkUser] = 1
    	end
-------------------------------------------------------------------
    	elseif(msgcontains(msg, 'magic sulphurs') and talkState[talkUser] == 1 and (getPlayerStorageValue(cid,700) < 1)) then
    	if(doPlayerRemoveItem(cid, 5904, 100) == TRUE) then
        	setPlayerStorageValue(cid,700,1)
        	selfSay('Obrigado! Agora voce precisa de 100 {demon dust}.', cid)
        	talkState[talkUser] = 0
    	else
        	selfSay('Para terminar esta missao você precisa de  100 {magic sulphurs}.', cid)
    	end
-------------------------------------------------------------------
    	elseif(msgcontains(msg, 'demon dust') and talkState[talkUser] == 1  and (getPlayerStorageValue(cid,701) < 1) and (getPlayerStorageValue(cid,700) == 1)) then
    	if(doPlayerRemoveItem(cid, 5906, 100) == TRUE) then
        	setPlayerStorageValue(cid,701,1)
        	selfSay('Obrigado! Agora voce precisa de 100 {gold nuggets}', cid)
        	talkState[talkUser] = 0
    	else
        	selfSay('Para terminar esta missao você precisa de  100 {demon dust}.', cid)
    	end
-------------------------------------------------------------------
    	elseif(msgcontains(msg, 'gold nuggets') and talkState[talkUser] == 1  and (getPlayerStorageValue(cid,702) < 1) and (getPlayerStorageValue(cid,701) == 1)) then
    	if(doPlayerRemoveItem(cid, 2157, 100) == TRUE) then
        	setPlayerStorageValue(cid,702,1)
        	selfSay('Obrigado! Agora voce precisa de 1 {eternal flames}', cid)
        	talkState[talkUser] = 0
    	else
        	selfSay('Para terminar esta missao você precisa de  100 {gold nuggets}.', cid)
    	end
-------------------------------------------------------------------
    	elseif(msgcontains(msg, 'eternal flames') and talkState[talkUser] == 1 and (getPlayerStorageValue(cid,703) < 1) and (getPlayerStorageValue(cid,702) == 1)) then
    	if(doPlayerRemoveItem(cid, 8304, 1) == TRUE) then
        	setPlayerStorageValue(cid,703,1)
			doPlayerAddItem(cid, 2110)
        	selfSay('Obrigado. Agora você ganhou um FoxWorld Doll', cid)
        	talkState[talkUser] = 0
			setPlayerStorageValue(cid,700,0)
			setPlayerStorageValue(cid,701,0)
			setPlayerStorageValue(cid,702,0)
			setPlayerStorageValue(cid,703,0)
    	else
        	selfSay('Para terminar esta missao você precisa de 1 {eternal flames}.', cid)
    	end
-------------------------------------------------------------------
	end
end    

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())