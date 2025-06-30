function readBackspaces(rawInput)
    local parsedInput = {}
    for i = 1, #rawInput do
        local currentChar = rawInput:sub(i,i)

        if currentChar == "<" then
            if #parsedInput > 0 then
                table.remove(parsedInput, #parsedInput)
            end
        else
            table.insert(parsedInput, currentChar)
        end
    end

    return table.concat(parsedInput)
end

local rawInput = io.read()

print(readBackspaces(rawInput))
