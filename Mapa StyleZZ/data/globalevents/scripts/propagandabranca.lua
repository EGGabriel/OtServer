-- [( Script created by Doidin for XTibia.com )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"Nosso servidor tem um sistema de troca de Itens VIP, para saber mais fale com o ADM! Itens estão a amostra no último andar do templo.",
"Nosso servidor tem um sistema de troca de Itens VIP, para saber mais fale com o ADM!.",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],22)
return TRUE
end