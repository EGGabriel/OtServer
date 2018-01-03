function getPosByDir(fromPosition, direction, size)
        local n = size or 1

        local pos = fromPosition
        if(direction == NORTH) then
                pos.y = pos.y - n
        elseif(direction == SOUTH) then
                pos.y = pos.y + n
        elseif(direction == WEST) then
                pos.x = pos.x - n
        elseif(direction == EAST) then
                pos.x = pos.x + n
        elseif(direction == NORTHWEST) then
                pos.y = pos.y - n
                pos.x = pos.x - n
        elseif(direction == NORTHEAST) then
                pos.y = pos.y - n
                pos.x = pos.x + n
        elseif(direction == SOUTHWEST) then
                pos.y = pos.y + n
                pos.x = pos.x - n
        elseif(direction == SOUTHEAST) then
                pos.y = pos.y + n
                pos.x = pos.x + n
        end