-- [( Script created by DoidinMapper )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"Ranks: !rank level / !rank axe / !rank magic...",
"Comandos Principais : !aol,!bless,!promotion,!runas e etcs..",
"Premium: !premium",
"Bless: !bless",
"Acesse: www.FantasmOT.com para ver mas informações do Servidor....",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],22)
return TRUE
end