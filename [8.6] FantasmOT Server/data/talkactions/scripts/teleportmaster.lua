-- [[ Teleport talkaction - By: GOD Keltera ]] --
function onSay(cid, words, param)
pos = {x=442, y=548, z=7}
if words == '/t' then
doTeleportThing(cid, pos)
doSendMagicEffect(pos, 10)
return TRUE
end
end