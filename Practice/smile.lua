SmileCounter = 0
SmileTable = {}

function checkEyes(index, userString)
    --print("checkEyes' userString: " .. userString)
    local smileStart = index-1
    --print("smileStart for smile #" ..SmileCounter+1.. " : " .. smileStart)
    local suspectedSmile = userString:sub(smileStart, index)
    if suspectedSmile == ":)" or suspectedSmile == ";)" then
        table.insert(SmileTable, smileStart)
        SmileCounter = SmileCounter + 1
    end
end

function checkNose(index, inputString)
    --print("checkNose's inputString: " .. inputString)
    local smileStart = index-2
    --print("smileStart for smile #" ..SmileCounter+1.. " : " .. smileStart)
    local suspectedSmile = inputString:sub(smileStart, index)
    if suspectedSmile == ":-)" or suspectedSmile == ";-)" then
        table.insert(SmileTable, smileStart)
        SmileCounter = SmileCounter + 1
    end
end

function checkSmiles(inputString)
    --print("checkSmiles' inputString: " .. inputString)
    local i = 1
    for i in inputString:gmatch"()%)" do
        if i > 2 then
            checkNose(i, inputString)
        end

        if i > 1 then
            checkEyes(i, inputString)
        end
    end

    return SmileTable
end

local userString = io.read()

checkSmiles(userString)

for _, number in pairs(SmileTable) do
    print(number - 1)
end