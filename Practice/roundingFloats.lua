function round(float)
    local integerPart = tonumber(string.format("%.0f", float))
    if float + 0.49999999999999994 < integerPart then
        return integerPart + 1
    else
        return integerPart
    end
end
local floatInput = io.read()

local roundedNumber = round(floatInput)
print(roundedNumber)
