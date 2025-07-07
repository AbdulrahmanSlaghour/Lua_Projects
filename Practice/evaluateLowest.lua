local friendAmount = tonumber(io.read())

local lowest = tonumber(io.read())

for i = 1, friendAmount - 1 do
    local currentNum = tonumber(io.read())
    
    if currentNum < lowest then
        lowest = currentNum
    end
end

print(lowest)
