-- [( Script created by Doidin for XTibia.com )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"N�o temos vagas, por favor n�o me pe�a vaga porque voc� ir� ficar PRESO por 5 minutos!",
"D�vidas somente com o [ADM]",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],25)
return TRUE
end