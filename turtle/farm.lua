function farmBlockBelow()
    local exists, data = turtle.inspectDown();

    if exists then
        if data["state"]["age"] == 3 then
            turtle.digDown();
            turtle.placeDown();
        end
    else
        turtle.digDown();
        turtle.placeDown();
    end
end

function farmPlot()
    turtle.select(2);
    turtle.forward();

    for i = 0, 7, 1 do
        farmBlockBelow();
        for j = 0, 7, 1 do
            turtle.forward();
            farmBlockBelow();
        end

        if i % 2 == 0 then
            turtle.turnRight();
            turtle.forward();
            turtle.turnRight();
        else
            turtle.turnLeft();
            turtle.forward();
            turtle.turnLeft();
        end
    end

    farmBlockBelow();
    for j = 0, 7, 1 do
        turtle.forward();
        farmBlockBelow();
    end

    turtle.turnLeft();
    for j = 0, 7, 1 do
        turtle.forward();
        farmBlockBelow();
    end
    turtle.turnLeft();
    for j = 0, 7, 1 do
        turtle.forward();
        farmBlockBelow();
    end

    turtle.forward();
    turtle.turnLeft();
    turtle.turnLeft();
end

local continueFarm = true;
while continueFarm do
    farmPlot();
    local id = os.startTimer(60);
    os.pullEvent();
    settings.load();
    continueFarm = settings.get("farm", true);
end