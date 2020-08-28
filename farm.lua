turtle.select(2);

for i = 0, 9, 1 do
    turtle.forward();
    exists, data = turtle.inspectDown();

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

for i = 0, 9, 1 do
    turtle.back();
end