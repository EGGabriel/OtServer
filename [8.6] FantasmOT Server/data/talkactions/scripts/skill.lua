--[[SKILL_FIST = 0
SKILL_CLUB = 1
SKILL_SWORD = 2
SKILL_AXE = 3
SKILL_DISTANCE = 4
SKILL_SHIELD = 5
SKILL_FISHING = 6
SKILL__MAGLEVEL = 7
SKILL__LEVEL = 8]]

function onSay(cid, words, param)

 -- configs--
local skill = 1 -- id do skill logo acima.
local money = 30000  -- preço por pontos de skill.
local maxbuy = 10 -- pontos maximo que pode comprar por vez.
local limite = 10 -- apartir de tantos pontos num pode mais comprar.

    if getPlayerSkill(cid,skill) <= limite then
     if getPlayerMoney(cid) >= param*money then
      if tonumber(math.ceil(param)) <= maxbuy then
           doPlayerAddSkillTry(cid,skill,param)
           doPlayerRemoveMoney(cid,param*money)
       end
      else
        doPlayerSendCancel(cid,"Você não tem dinheiro suficiente.")
      end
         else
             doPlayerSendCancel(cid,"Nesse Skill não é mais possivel usar esse comando.")
          end
                  
return true
end