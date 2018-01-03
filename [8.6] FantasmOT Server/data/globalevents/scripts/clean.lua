function executeClean()
	doCleanMap()
	doBroadcastMessage("Mapa limpio, siguiente limpieza en 2 horas.")
	return true
end
function onThink(interval, lastExecution, thinkInterval)
	doBroadcastMessage("El Mapa se limpiara en 30 segundos, porfavor recoje tus items!")
	addEvent(executeClean, 30000)
	return true
end