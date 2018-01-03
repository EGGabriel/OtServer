-- [( Script created by Doidin for XTibia.com )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"Seja Bem-Vindo, ao FoxWAR, Com sistemas de PVP rápido e inovador.",
"FoxWAR, jogue, divirta-se, aproveite!.",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],22)
return TRUE
end