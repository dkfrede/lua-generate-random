

if arg[1] == "numbercount" then
    file = io.open("Output/counts.txt","w")
    local list = {}
    local currentNumber = tonumber(arg[2])
    local showNumber = 0
    for i=0,arg[3]-currentNumber do
        local correct = currentNumber.."\n"
        table.insert(list,correct)
        currentNumber = currentNumber + 1

        showNumber = showNumber +1
    end
    for i,v in pairs(list) do
        file:write(v)
    end
    showNumber = showNumber -1
    print("Created "..showNumber.." lines of numbers, inside Output/counts.txt!")

elseif arg[1] == 'randompasswords' then
    file = io.open("Output/randompasswords.txt","w")
    local list = {}
    local listOfNames = {'A','B','C','D','H','J','K','L','M','N','0','1','-','-','k','g','b','a','d','5','7','8','9','10','11'}
    local num = 0
    local name = ""
    local showNumber = 0
    for i=1,tonumber(arg[2]) do
        for i=1,arg[3] do
            local currentNum = math.random(1,25)
            local letter = listOfNames[currentNum]
            name = name..""..letter..""
        end
        table.insert(list,name.."\n")
        showNumber = showNumber +1
        name = ""
    end

    for k,v in pairs(list) do
        file:write(v)
    end
    print("Created "..showNumber.." lines of random generated passwords, inside Output/randompasswords.txt!")

elseif arg[1] == 'randomusernames' then
    file = io.open("Output/randomusernames.txt","w")
    local list = {}
    local listOfNames = {'A','B','C','D','E','F','D','O','P','Q','R','S','T','U','H','I','J'}
    local num = 0
    local name = ""
    local showNumber = 0
    for i=1,tonumber(arg[2]) do
        for i=1,arg[3] do
            local currentNum = math.random(1,17)
            local letter = listOfNames[currentNum]
            local lower = math.random(1,2)
            if lower == 1 then
                letter = string.lower(letter)
            end
            name = name..""..letter..""
        end
        table.insert(list,name.."\n")
        name = ""
        showNumber = showNumber +1

    end

    for k,v in pairs(list) do
        file:write(v)
    end
    print("Created "..showNumber.." lines of random generated usernames, inside Output/randomusernames.txt!")
end