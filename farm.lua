select(2);

turtle.forward();
turtle.forward();
exists, data = turtle.inspectDown();

if exists then
    if data["state"]["age"] == 3 then
        turtle.digDown();
--        turtle.placeDown();
    end
else
    turtle.digDown();
    turtle.placeDown();
end

turtle.back();