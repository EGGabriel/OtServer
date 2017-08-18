function Msg(cid)
broadcastMessage("Ferumbras: Todos os seres vivos no universo ir�o pagar, ir�o conhe�er meu soldado, Orshabaal! Mwa-Ha-Ha-Ha-Ha !", MESSAGE_EVENT_ADVANCE)
end

function Msg2(cid)
broadcastMessage("Habitantes de Solaris: H�rois,n�o deixem que a cidade seja tomada pelos soldados de Ferumbras, eu suplico! destruam todas as criaturas malignas e derrote Orshabaal!", MESSAGE_INFO_DESCR)
end

function onSay(cid, words, param)

monstro1 = "demon"
monstro3 = "juggernaut"
monstro4 = "hellfire fighter"
monstro5 = "banshiria"
monstro6 = "hand of cursed fate"
monstro7 = "banshee"
monstro8 = "demon skeleton"
monstro10 = "orshabaal"

--Posicoes Comeco
local demon_pos = {
{x=482, y=537, z=6},
{x=481, y=541, z=6},
{x=485, y=528, z=7},
{x=485, y=516, z=7},
{x=480, y=501, z=7},
{x=480, y=512, z=7}
}

local hellfirefighter_pos = {
{x=483, y=541, z=6},
{x=483, y=521, z=7},
{x=483, y=520, z=7}
}

local banshee_pos = {
{x=481, y=516, z=7},
{x=478, y=598, z=7},
{x=478, y=527, z=7}
}

local demonskeleton_pos = {
{x=486, y=526, z=7},
{x=486, y=530, z=7},
{x=481, y=522, z=7}
}

local banshiria_pos = {
{x=538, y=523, z=8}
}

handofcursedfate1_pos = {x=480, y=497, z=7}
handofcursedfate2_pos = {x=484, y=512, z=7}
orshabaal1_pos = {x=538, y=521, z=8}
juggernaut1_pos = {x=473, y=501, z=7}
demonskeleton4_pos = {x=478, y=506, z=7}
-- Posicoes Fim

if getPlayerAccess(cid) >= 5 then

-- Invocacao Comeco
doCreateMonster(monstro3, juggernaut1_pos)
doCreateMonster(monstro6, handofcursedfate1_pos)
doCreateMonster(monstro6, handofcursedfate2_pos)
doCreateMonster(monstro10, orshabaal1_pos)
doCreateMonster(monstro8, demonskeleton4_pos)
for x = 4,6 do
doCreateMonster(monstro1, demon_pos[x])
end
for i = 1,3 do
for x = 4,14 do
doCreateMonster(monstro5, banshiria_pos[x])
end
end
for x = 1,3 do
doCreateMonster(monstro4, hellfirefighter_pos[x])
doCreateMonster(monstro1, demon_pos[x])
doCreateMonster(monstro7, banshee_pos[x])
doCreateMonster(monstro5, banshiria_pos[x])
doCreateMonster(monstro8, demonskeleton_pos[x])
end
-- Invocacao Fim

broadcastMessage("Ferumbras: Todos os seres vivos ir�o sentir uma furia jamais vista, curvem-se e n�o ser�o mortos!", MESSAGE_EVENT_ADVANCE)
addEvent(Msg, 10000)
addEvent(Msg2, 20000)
end

return TRUE
end