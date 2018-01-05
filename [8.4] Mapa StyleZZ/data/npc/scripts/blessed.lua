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

	if(msgcontains(msg, 'velho')) then
		selfSay('Ao Longo dos anos o Pharao Helmet, tem sido muito cobicado por todos os seres do Foxworld.', cid) 
		selfSay('E por ao longo de varios anos no deserto estudando todos os fenomenos para defender Versia, eu decobri uma maneira de deixa-lo mais forte!', cid)
		selfSay('Eu posso usar uma magia para melhorar o seu Pharao Helmet facilmente, contanto que me de uma {ajudinha} em uma coisa', cid) 

	end
-----------------------------------------------------------------	
	if(msgcontains(msg, 'ajudinha')) then
        	selfSay('Ao norte de VERSIA, existe uma criatura chamada Witch Doctor, onde ele esta causando um CAOS la!', cid)
        	selfSay('Preciso que um bravo guerreiro consiga mata-lo, para restaurar o paz de toda cidade!', cid)
        	selfSay('Voce Aceita essa {tarefa}?', cid)
	end
-----------------------------------------------------------------
	if(msgcontains(msg, 'tarefa')) then
        	selfSay('Agora, voce pode tentar matar o Witch Doctor e retomar a paz de VERSIA.', cid)
        	setPlayerStorageValue(cid, 698, 1)
	end
-----------------------------------------------------------------
	if(msgcontains(msg, 'blessar')) then
        selfSay('Voce ainda nao matou o Witch Doctor, ou nao esta com um Pharao Helmet!', cid)
		else if (getPlayerStorageValue(cid,698) == 1) and (doPlayerRemoveItem(cid, 2342, 1) == TRUE) then
			doPlayerAddItem(cid, 2343)
			selfSay('Voce blessou seu Pharao Helmet!', cid)
		end
	end
end    

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())