-- First slot is always fuel

-- file = fs.open("file.lua", "w"); file.write(http.get("url").readAll()); file.close();

select(1);

local maxFuel = turtle.getFuelLimit();
local fuel = turtle.getFuelLevel();
local fuelPercent = (fuel / maxFuel) * 100;
if fuelPercent < 80 then
    turtle.refuel();
end

fuel = turtle.getFuelLevel();
fuelPercent = (fuel / maxFuel) * 100;

local termWidth, termHight = term.getSize();

paintutils.drawPixel(termWidth - 1, 1, colors.white);

paintutils.drawPixel(termWidth - 2, 2, colors.white);
paintutils.drawPixel(termWidth - 1, 2, colors.white);
paintutils.drawPixel(termWidth , 2, colors.white);

for i = 3, termHight - 1, 1 do
    paintutils.drawPixel(termWidth - 2, i, colors.white);
    paintutils.drawPixel(termWidth, i, colors.white);

    if fuelPercent >= (termHight - i) / termHight then
        paintutils.drawPixel(termWidth - 1, i, colors.blue);
    else
        paintutils.drawPixel(termWidth - 1, i, colors.black);
    end
end

paintutils.drawPixel(termWidth - 2, termHight, colors.white);
paintutils.drawPixel(termWidth - 1, termHight, colors.white);
paintutils.drawPixel(termWidth , termHight, colors.white);

term.setCursorPos(1,1);