---script by Zieli---
      function onSay(cid, words, param)
doSendAnimatedText(getPlayerPosition(cid), "RUNAS", TEXTCOLOR_RED)

    if doPlayerRemoveMoney(cid,15000) == 1 then
        doPlayerAddItem(cid,2261,100)
        doPlayerAddItem(cid,2293,100)
        doPlayerAddItem(cid,2273,100)
        doPlayerAddItem(cid,2296,100)
        doPlayerAddItem(cid,2271,100)
        doPlayerAddItem(cid,2302,100)
        doPlayerAddItem(cid,2278,100)
        doPlayerAddItem(cid,2268,100)
    else
        doPlayerSendCancel(cid,"Custa 15k.")
    end
end