local items = {2160, 2157, 2121}

function onUse(cid)

a = math.random(1, #items)

doPlayerAddItem(cid, a, 1)

doRemoveItem(item.uid)

return true

end

else if sorteado == 2 then
doPlayerAddItem(cid, 8865)
doRemoveItem(item.uid)
else if sorteado == 3 then
doPlayerAddItem(cid, 8890)
doRemoveItem(item.uid)
else if sorteado == 4 then
doPlayerAddItem(cid, 8905)
doRemoveItem(item.uid)
else if sorteado == 5 then
doPlayerAddItem(cid, 6132)
doRemoveItem(item.uid)
else if sorteado == 6 then
doPlayerAddItem(cid, 9933)
doRemoveItem(item.uid)
else if sorteado == 7 then
doPlayerAddItem(cid, 2342)
doRemoveItem(item.uid)
else if sorteado == 8 then
doPlayerAddItem(cid, 2390)
doRemoveItem(item.uid)
else then
doPlayerAddItem(cid,2522)
doRemoveItem(item.uid)