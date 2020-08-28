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
turtle.forward();

for i = 0, 7, 1 do
    farmBlockBelow();
    for j = 0, 7, 1 do
        turtle.forward();
        farmBlockBelow();
    end

    if i % 2 == 0 then
        turtle.turnLeft();
        turtle.forward();
        turtle.turnLeft();
    else
        turtle.turnRight();
        turtle.forward();
        turtle.turnRight();
    end
end

--for i = 0, 8, 1 do
--    turtle.back();
--end