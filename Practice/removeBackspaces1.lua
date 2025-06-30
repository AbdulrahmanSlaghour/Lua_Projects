function stringToTable(rawInput)
    local tableInput = {}
    for i = 1, #rawInput do
        table.insert(tableInput, rawInput:sub(i,i))
    end

    return tableInput
end
--first time i've personally used recursion ◝(ᵔᗜᵔ)◜
function readBackspaces(rawInput, index)
    if index > #rawInput then
        return table.concat(rawInput)
    end

    if rawInput[index] == "<" then
        table.remove(rawInput, index)
        if index > 1 and #rawInput > 0 then
            table.remove(rawInput, index - 1)
            index = index - 1
        end
        index = index - 1
    end

    return readBackspaces(rawInput, index + 1)
end

local rawInput = io.read()

local tableInput = stringToTable(rawInput)

print(readBackspaces(tableInput, 1))