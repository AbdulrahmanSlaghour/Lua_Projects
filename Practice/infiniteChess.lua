function stringSplitter(userString, partition)
    local splitString = {}
    for word in userString:gmatch('([^'..partition..']+)') do
        table.insert(splitString, word)
    end

    return splitString
end

function moveCount(rook, pawn)
    if rook[1] == pawn[1] or rook[2] == pawn[2] then
        return 1
    else
        return 2
    end
end

local petraPosition = io.read()
local garoarPosition = io.read()

petraPosition = stringSplitter(petraPosition, "%s")
garoarPosition = stringSplitter(garoarPosition, "%s")

print(moveCount(petraPosition, garoarPosition))