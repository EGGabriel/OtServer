function onUse(cid, item, frompos, item2, topos)
if item.uid == 7964 then
if item.itemid == 4938 then

 nplayer1pos = {x=724, y=601, z=11}

 doTeleportThing(cid,nplayer1pos)

end
end
return 1
end