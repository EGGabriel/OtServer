local messages = {
"Bem Vindo ao SoftWorld War",
}

local i = 0
function onThink(interval, lastExecution)
local message = messages[(i % #messages) + 1]
doBroadcastMessage("Informacion: " .. message,19)
i = i + 1
return TRUE
end