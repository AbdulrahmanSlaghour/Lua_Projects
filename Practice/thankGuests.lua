local guestAmount = io.read()

local guestTable = {}
for i = 1, tonumber(guestAmount) do
    local currentGuest = io.read()

    table.insert(guestTable, currentGuest)
end

for i = 1, guestAmount do
    print("Takk ".. guestTable[i])
end