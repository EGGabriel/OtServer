-- [( Script created by Doidin for XTibia.com )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"Não temos vagas, por favor não me peça vaga porque você irá ficar PRESO por 5 minutos!",
"Ajude os novos players a se divertir e entrosar no game!",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],25)
return TRUE
end