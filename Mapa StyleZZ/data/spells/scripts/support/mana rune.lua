local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_MANADRAIN)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, 370, 0, 470)   

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end

function onCastSpell(cid, var)

if getPlayerLevel(cid) > 200 then
doSendAnimatedText(getPlayerPosition(cid), "Aaaaah...", TEXTCOLOR_BLUE)

end
              if (((getPlayerLevel(cid))%10) == 0) then
              manaextra = (((getPlayerLevel(cid))/10)*3)
              else    
              manaextra = ((((getPlayerLevel(cid))/10)+0.5)*3)
              end   
              doCreatureAddMana(cid, manaextra)
              return doCombat(cid, combat, var)
end