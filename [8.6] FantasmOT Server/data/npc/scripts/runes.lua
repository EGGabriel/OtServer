local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()					npcHandler:onThink()					end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'spellbook'}, 2175, 150, 'spellbook')
shopModule:addBuyableItem({'magic lightwand'}, 2163, 400, 'magic lightwand')

shopModule:addBuyableItem({'small health'}, 8704, 20, 1, 'small health potion')
shopModule:addBuyableItem({'health potion'}, 7618, 45, 1, 'health potion')
shopModule:addBuyableItem({'mana potion'}, 7620, 50, 1, 'mana potion')
shopModule:addBuyableItem({'strong health'}, 7588, 100, 1, 'strong health potion')
shopModule:addBuyableItem({'strong mana'}, 7589, 80, 1, 'strong mana potion')
shopModule:addBuyableItem({'great health'}, 7591, 190, 1, 'great health potion')
shopModule:addBuyableItem({'great mana'}, 7590, 120, 1, 'great mana potion')
shopModule:addBuyableItem({'great spirit'}, 8472, 190, 1, 'great spirit potion')
shopModule:addBuyableItem({'ultimate health'}, 8473, 310, 1, 'ultimate health potion')
shopModule:addBuyableItem({'antidote potion'}, 8474, 50, 1, 'antidote potion')

shopModule:addSellableItem({'normal potion flask', 'normal flask'}, 7636, 5, 'empty small potion flask')
shopModule:addSellableItem({'strong potion flask', 'strong flask'}, 7634, 10, 'empty strong potion flask')
shopModule:addSellableItem({'great potion flask', 'great flask'}, 7635, 15, 'empty great potion flask')

shopModule:addBuyableItemContainer({'bp intense healing'}, 2000, 2265, 1900, 25, 'backpack of intense healing rune')
shopModule:addBuyableItemContainer({'bp blank rune'}, 2000, 2260, 200, 25, 'backpack of blank rune')
shopModule:addBuyableItemContainer({'bp ultimate healing'}, 2000, 2273, 3500, 25, 'backpack of ultimate healing rune')
shopModule:addBuyableItemContainer({'bp magic wall'}, 2000, 2293, 7000, 25, 'backpack of magic wall rune')
shopModule:addBuyableItemContainer({'bp destroy field'}, 2000, 2261, 900, 25, 'backpack of destroy field rune')
shopModule:addBuyableItemContainer({'bp light magic missile'}, 2000, 2287, 800, 25, 'backpack of light magic missile rune')
shopModule:addBuyableItemContainer({'bp heavy magic missile'}, 2000, 2311, 2400, 25, 'backpack of heavy magic missile rune')
shopModule:addBuyableItemContainer({'bp great fireball'}, 2000, 2304, 3600, 25, 'backpack of great fireball rune')
shopModule:addBuyableItemContainer({'bp explosion'}, 2000, 2313, 5000, 25, 'backpack of explosion rune')
shopModule:addBuyableItemContainer({'bp sudden death'}, 2000, 2268, 6500, 25, 'backpack of sudden death rune')
shopModule:addBuyableItemContainer({'bp paralyze'}, 2000, 2278, 14000, 25, 'backpack of paralyze rune')
shopModule:addBuyableItemContainer({'bp animate dead'}, 2000, 2316, 6500, 25, 'backpack of animate dead rune')
shopModule:addBuyableItemContainer({'bp convince creature'}, 2000, 2290, 1600, 25, 'backpack of convince creature rune')
shopModule:addBuyableItemContainer({'bp chameleon'}, 2000, 2291, 4200, 25, 'backpack of chameleon rune')
shopModule:addBuyableItemContainer({'bp desintegrate'}, 2000, 2310, 1600, 25, 'backpack of desintegreate rune')
shopModule:addBuyableItemContainer({'bp icicle'}, 2000, 2271, 2000, 25, 'backpack of icicle rune')
shopModule:addBuyableItemContainer({'bp stalagmite'}, 2000, 2292, 2000, 25, 'backpack of stalagmite rune')
shopModule:addBuyableItemContainer({'bp avalanche'}, 2000, 2274, 2000, 25, 'backpack of avalanche rune')
shopModule:addBuyableItemContainer({'bp stone shower'}, 2000, 2288, 2000, 25, 'backpack of stone shower rune')

shopModule:addBuyableItem({'instense healing'}, 2265, 95, 25, 'intense healing rune')
shopModule:addBuyableItem({'blank rune'}, 2260, 10, 1, 'blank rune')
shopModule:addBuyableItem({'ultimate healing'}, 2273, 175, 25, 'ultimate healing rune')
shopModule:addBuyableItem({'magic wall'}, 2293, 350, 25, 'magic wall rune')
shopModule:addBuyableItem({'destroy field'}, 2261, 45, 25, 'destroy field rune')
shopModule:addBuyableItem({'light magic missile'}, 2287, 40, 25, 'light magic missile rune')
shopModule:addBuyableItem({'heavy magic missile'}, 2311, 120, 25, 'heavy magic missile rune')
shopModule:addBuyableItem({'great fireball'}, 2304, 180, 25, 'great fireball rune')
shopModule:addBuyableItem({'explosion'}, 2313, 250, 25, 'explosion rune')
shopModule:addBuyableItem({'sudden death'}, 2268, 350, 25, 'sudden death rune')
shopModule:addBuyableItem({'creat bomb'}, 2264, 100000, 25, 'creat bomb rune')
shopModule:addBuyableItem({'paralyze'}, 2278, 700, 25, 'paralyze rune')
shopModule:addBuyableItem({'animate dead'}, 2316, 375, 25, 'animate dead rune')
shopModule:addBuyableItem({'convince creature'}, 2290, 80, 25, 'convince creature rune')
shopModule:addBuyableItem({'chameleon'}, 2291, 210, 25, 'chameleon rune')
shopModule:addBuyableItem({'desintegrate'}, 2310, 80,  25, 'desintegreate rune')
shopModule:addBuyableItem({'icicle'}, 2271, 100,  25, 'icicle rune')
shopModule:addBuyableItem({'stalagmite'}, 2292, 100,  25, 'stalagmite rune')
shopModule:addBuyableItem({'avalanche'}, 2274, 100,  25, 'avalanche rune')
shopModule:addBuyableItem({'stone shower'}, 2288, 100,  25, 'stone shower rune')


shopModule:addBuyableItemContainer({'bp slhp'}, 2000, 8704, 400, 1, 'backpack of small health potions')
shopModule:addBuyableItemContainer({'bp hp'}, 2000, 7618, 900, 1, 'backpack of health potions')
shopModule:addBuyableItemContainer({'bp mp'}, 2001, 7620, 1000, 1, 'backpack of mana potions')
shopModule:addBuyableItemContainer({'bp shp'}, 2000, 7588, 2000, 1, 'backpack of strong health potions')
shopModule:addBuyableItemContainer({'bp smp'}, 2001, 7589, 1600, 1, 'backpack of strong mana potions')
shopModule:addBuyableItemContainer({'bp ghp'}, 2000, 7591, 3800, 1, 'backpack of great health potions')
shopModule:addBuyableItemContainer({'bp gmp'}, 2001, 7590, 2400, 1, 'backpack of great mana potions')
shopModule:addBuyableItemContainer({'bp gsp'}, 1999, 8472, 3800, 1, 'backpack of great spirit potions')
shopModule:addBuyableItemContainer({'bp uhp'}, 2000, 8473, 6200, 1, 'backpack of ultimate health potions')
shopModule:addBuyableItemContainer({'bp ap'}, 2002, 8474, 2000, 1, 'backpack of antidote potions')

shopModule:addBuyableItem({'wand of vortex', 'vortex'}, 2190, 500, 'wand of vortex')
shopModule:addBuyableItem({'wand of dragonbreath', 'dragonbreath'}, 2191, 1000, 'wand of dragonbreath')
shopModule:addBuyableItem({'wand of decay', 'decay'}, 2188, 5000, 'wand of decay')
shopModule:addBuyableItem({'wand of draconia', 'draconia'}, 8921, 7500, 'wand of draconia')
shopModule:addBuyableItem({'wand of cosmic energy', 'cosmic energy'}, 2189, 10000, 'wand of cosmic energy')
shopModule:addBuyableItem({'wand of starstorm', 'starstorm'}, 8920, 18000, 'wand of starstorm')
shopModule:addBuyableItem({'wand of voodoo', 'voodoo'}, 8922, 22000, 'wand of voodoo')

shopModule:addBuyableItem({'snakebite rod', 'snakebite'}, 2182, 500, 'snakebite rod')
shopModule:addBuyableItem({'moonlight rod', 'moonlight'}, 2186, 1000, 'moonlight rod')
shopModule:addBuyableItem({'necrotic rod', 'necrotic'}, 2185, 5000, 'necrotic rod')
shopModule:addBuyableItem({'northwind rod', 'northwind'}, 8911, 7500, 'northwind rod')
shopModule:addBuyableItem({'terra rod', 'terra'}, 2181, 10000, 'terra rod')
shopModule:addBuyableItem({'hailstorm rod', 'hailstorm'}, 2183, 15000, 'hailstorm rod')
shopModule:addBuyableItem({'springsprout rod', 'springsprout'}, 8912, 18000, 'springsprout rod')
shopModule:addBuyableItem({'underworld rod', 'underworld'}, 8910, 22000, 'underworld rod')

shopModule:addSellableItem({'wand of vortex', 'vortex'}, 2190, 250, 'wand of vortex')
shopModule:addSellableItem({'wand of dragonbreath', 'dragonbreath'}, 2191, 500, 'wand of dragonbreath')
shopModule:addSellableItem({'wand of decay', 'decay'}, 2188, 2500, 'wand of decay')
shopModule:addSellableItem({'wand of draconia', 'draconia'}, 8921, 3750, 'wand of draconia')
shopModule:addSellableItem({'wand of cosmic energy', 'cosmic energy'}, 2189, 5000, 'wand of cosmic energy')
shopModule:addSellableItem({'wand of inferno', 'inferno'},2187, 7500, 'wand of inferno')
shopModule:addSellableItem({'wand of starstorm', 'starstorm'}, 8920, 9000, 'wand of starstorm')
shopModule:addSellableItem({'wand of voodoo', 'voodoo'}, 8922, 11000, 'wand of voodoo')

shopModule:addSellableItem({'snakebite rod', 'snakebite'}, 2182, 250,'snakebite rod')
shopModule:addSellableItem({'moonlight rod', 'moonlight'}, 2186, 500,   'moonlight rod')
shopModule:addSellableItem({'necrotic rod', 'necrotic'}, 2185, 2500, 'necrotic rod')
shopModule:addSellableItem({'northwind rod', 'northwind'}, 8911, 3750, 'northwind rod')
shopModule:addSellableItem({'terra rod', 'terra'}, 2181, 5000, 'terra rod')
shopModule:addSellableItem({'hailstorm rod', 'hailstorm'}, 2183, 7500, 'hailstorm rod')
shopModule:addSellableItem({'springsprout rod', 'springsprout'}, 8912, 9000, 'springsprout rod')
shopModule:addSellableItem({'underworld rod', 'underworld'}, 8910, 11000, 'underworld rod')
shopModule:addSellableItem({'Mana Rune', 'Mana Rune'}, 2296, 1000, 'Mana Rune')

function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	local items = {[1] = 2190, [2] = 2182, [5] = 2190, [6] = 2182}

	if(msgcontains(msg, 'first rod') or msgcontains(msg, 'first wand')) then
		if(isSorcerer(cid) or isDruid(cid)) then
			if(getPlayerStorageValue(cid, 30002) == -1) then
				selfSay('So you ask me for a {' .. getItemNameById(items[getPlayerVocation(cid)]) .. '} to begin your advanture?', cid)
				talkState[talkUser] = 1
			else
				selfSay('What? I have already gave you one {' .. getItemNameById(items[getPlayerVocation(cid)]) .. '}!', cid)
			end
		else
			selfSay('Sorry, you aren\'t a druid either a sorcerer.', cid)
		end
	elseif(msgcontains(msg, 'yes')) then
		if(talkState[talkUser] == 1) then
			doPlayerAddItem(cid, items[getPlayerVocation(cid)], 1)
			selfSay('Here you are young adept, take care yourself.', cid)
			setPlayerStorageValue(cid, 30002, 1)
		end
		talkState[talkUser] = 0
	elseif(msgcontains(msg, 'no') and isInArray({1}, talkState[talkUser]) == TRUE) then
		selfSay('Ok then.', cid)
		talkState[talkUser] = 0
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
