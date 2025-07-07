function printDictionary(dictionary)
    for key, value in pairs(dictionary) do
        print(key, value[1], value[2])
    end
end

function printTable(table)
    for i = 1, #table do
        print(table[i])
    end
end

function stringSplitter(input)
    local seperator = "%s"
    local splitInput = {}
    for string in string.gmatch(input, '([^'..seperator..']+)') do
        table.insert(splitInput, string)
    end

    return splitInput
end

function checkCollision(friendDictionary, newFriendBirthday)
    if friendDictionary[newFriendBirthday] == nil then
        return false
    else
        return true
    end
end

function evaluateFriendship(oldFriendTable, newFriendTable, friendDictionary, birthday)
    if tonumber(oldFriendTable[2]) < tonumber(newFriendTable[2]) then
        friendDictionary[birthday] = newFriendTable
    end
end

function sortAlphabetically(a, b)
    --return a:lower() < b:lower()
    return a < b
end

local friendAmount = io.read()

local friendDictionary = {
    --[birthday: String] = {importance: string, friendName: string}
}

for i = 1, friendAmount do
    local currentLine = io.read()

    local splitLine = stringSplitter(currentLine)

    local currentFriendName = splitLine[1]
    local currentFriendshipLevel = splitLine[2]
    local currentBirthday = splitLine[3]

    local currentFriendTable = {currentFriendName, currentFriendshipLevel}

    if checkCollision(friendDictionary, currentBirthday) == false then
        friendDictionary[currentBirthday] = currentFriendTable
    else
        evaluateFriendship(friendDictionary[currentBirthday], currentFriendTable, friendDictionary, currentBirthday)
    end
end

local finalFriends = {}

for key, friendTable in pairs(friendDictionary) do
    local currentName = friendTable[1]
    table.insert(finalFriends, currentName)
end

table.sort(finalFriends, sortAlphabetically)
print(#finalFriends)
printTable(finalFriends)
