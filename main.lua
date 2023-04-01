player = nil
x = 400
y = 300
bgcolorr = 0
bgcolorg = 255
bgcolorb = 255
roomnum = 1
batteryroom = love.math.random(1, 4)
print("Battery location is now room ")
print(batteryroom)
power = 5000
badcomic = nil
powerimage = nil
couch = nil
chair = nil
drawers = nil
lampontable = nil
door = nil
firstbutton = nil
bookcase = nil
bed = nil
secondbutton = nil
thirdbutton = nil
blbbox = nil
toycubes = nil
fourthbutton = nil
balcony = nil
fifthbutton = nil
chairsandtable = nil
sixthbutton = nil

function love.load()
    player = love.graphics.newImage("assets/player.png")
    badcomic = love.graphics.newFont("assets/badcomic.ttf")
    powerimage = love.graphics.newImage("assets/power.png")
    drawers = love.graphics.newImage("assets/drawers.png")
    chair = love.graphics.newImage("assets/chair.png")
    lampontable = love.graphics.newImage("assets/lampontable.png")
    door = love.graphics.newImage("assets/door.png")
    firstbutton = love.graphics.newImage("assets/firstbutton.png")
    bookcase = love.graphics.newImage("assets/bookcase.png")
    bed = love.graphics.newImage("assets/bed.png")
    secondbutton = love.graphics.newImage("assets/secondbutton.png")
    thirdbutton = love.graphics.newImage("assets/thirdbutton.png")
    blbbox = love.graphics.newImage("assets/ballpitballs.png")
    toycubes = love.graphics.newImage("assets/toycubes.png")
    fourthbutton = love.graphics.newImage("assets/fourthbutton.png")
    balcony = love.graphics.newImage("assets/balconyfloor.png")
    fifthbutton = love.graphics.newImage("assets/fifthbutton.png")
    chairsandtable = love.graphics.newImage("assets/2chairsand1table.png")
    sixthbutton = love.graphics.newImage("assets/sixthbutton.png")
end

function love.update(dt)
    if love.keyboard.isDown("g") and roomnum == batteryroom then
        power = power + 1000
        print("Battery location is now room")
        print(batteryroom)
        batteryroom = love.math.random(1, 4)
    end
    if love.keyboard.isDown("left") then
        player = love.graphics.newImage("assets/playerleft.png")
        x = x - 6
    end
    if love.keyboard.isDown("right") then
                player = love.graphics.newImage("assets/player.png")
        x = x + 6
    end
    power = power - 1
    if power == 0 then
        print("You failed!")
        love.event.quit(1)
    end
    if power < 10000 then
        love.filesystem.write("phacwcertificate.txt", "[NAME] has won! Please do not distribute this file anywhere other than your computer. I hope you enjoyed Power-hungry!")
        love.window.showMessageBox("You won!", "Power-hungry has created a PHACW (Power hungry alarm clock winner) certificate inside of the LOVE/Power-hungry folder in AppData/Roaming.", "info", false)
        love.event.quit(1)
    end
    if roomnum == 1 and love.keyboard.isDown("a") then
        roomnum = 2
    end
    if roomnum == 2 and love.keyboard.isDown("b") then
        roomnum = 1
    end
    if roomnum == 2 and love.keyboard.isDown("c") then
        roomnum = 3
    end
    if roomnum == 3 and love.keyboard.isDown("d") then
        roomnum = 2
    end
    if roomnum == 3 and love.keyboard.isDown("e") then
        roomnum = 4
    end
    if roomnum == 4 and love.keyboard.isDown("f") then
        roomnum = 3
    end
end

function love.draw()
    if roomnum == 1 then
        love.graphics.clear(bgcolorr, bgcolorg, bgcolorb)
        love.graphics.draw(drawers, 30, 300)
        love.graphics.draw(chair, 200, 300)
        love.graphics.draw(lampontable, 330, 364)
        love.graphics.draw(door, 600, 235)
        love.graphics.draw(firstbutton, 670, 340)
        love.graphics.draw(player, x, y)
        love.graphics.draw(powerimage, 10, 10)
        love.graphics.print(power, badcomic, 60, 60)
    end
    if roomnum == 2 then
        love.graphics.clear(0, 152, 0)
        love.graphics.draw(bookcase, 50, 300)
        love.graphics.draw(bed, 190, 300)
        love.graphics.draw(door, 390, 235)
        love.graphics.draw(secondbutton, 460, 345)
        love.graphics.draw(door, 590, 235)
        love.graphics.draw(thirdbutton, 660, 345)
        love.graphics.draw(player, x, y)
        love.graphics.draw(powerimage, 10, 10)
        love.graphics.print(power, badcomic, 60, 60)
    end
    if roomnum == 3 then
        love.graphics.clear(255, 165, 0)
        love.graphics.draw(blbbox, 50, 300)
        love.graphics.draw(toycubes, 200, 300)
        love.graphics.draw(door, 300, 235)
        love.graphics.draw(fourthbutton, 370, 350)
        love.graphics.draw(door, 500, 235)
        love.graphics.draw(fifthbutton, 570, 350)
        love.graphics.draw(player, x, y)
        love.graphics.draw(powerimage, 10, 10)
        love.graphics.print(power, badcomic, 60, 60)
    end
    if roomnum == 4 then
        love.graphics.clear(0, 0, 0)
        love.graphics.draw(balcony, 0, 0)
        love.graphics.draw(chairsandtable, 600, 325)
        love.graphics.draw(door, 20, 300)
        love.graphics.draw(sixthbutton, 95, 400)
        love.graphics.draw(player, x, y)
        love.graphics.draw(powerimage, 10, 10)
        love.graphics.print(power, badcomic, 60, 60)
    end
end
