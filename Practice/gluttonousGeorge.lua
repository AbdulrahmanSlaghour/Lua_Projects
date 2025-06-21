function stringSplitter(userString, partition)
    --instantiate an empty array (or table) to store the final group of distinct words after parsing
    local wordArray = {}

    --instead of calling the gmatch() function as a member of string, just self call gmatch through the variable userString and use the variable as the first parameter through :
    for word in string.gmatch(userString, '([^'..partition..']+)') do
        --use table class's insert function to append the new word in the wordArray
        table.insert(wordArray, word)
    end

    --since the operation to parse through userString and split according to partition has been executed, return wordArray as result
    return wordArray
end

function validateStringSplitter(stringSplitterArray)
    print("split array length: " .. #stringSplitterArray)
    for i, word in ipairs(stringSplitterArray) do
        io.write("type: " .. type(word))
        print(word)
    end
end

function checkBigger(array)
    if tonumber(array[1]) > tonumber(array[3]) then
        return ">"
    elseif tonumber(array[1]) < tonumber(array[3]) then
        return "<"
    else
        return "Goggi svangur!"
    end
end

--take in question's string input and store it in questionString variable for future use
local questionString = io.read()

--instead of calling stringSplitter and inputting questionString as the first parameter, just use : and call the method then input space as the partition parameter
local wordArray = stringSplitter(questionString, "%s")

validateStringSplitter(wordArray)

print(checkBigger(wordArray))
