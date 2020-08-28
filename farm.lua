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

turtle.select(2);

for i = 0, 8, 1 do
    for i = 0, 8, 1 do
        turtle.forward();
        farmBlockBelow();
    end

    turtle.turnRight();
    turtle.forward();
    turtle.turnRight();
    farmBlockBelow();
end

for i = 0, 8, 1 do
    turtle.back();
end