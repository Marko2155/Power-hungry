# Power-hungry
A game made in LÖVE Lua where you are a robotic clock and to wake your owner up on time you need batteries. Your owner charges you "all night", but when he falls asleep, you want to just roam around. You have 20% power left, and you have to find batteries to stay alive. If your power reaches 0 then the game will close, meaning you lost. If your power reaches 100%, congrats! You win the game and you get a PHACW certificate.

# Controls
A, B for navigation through room1 and room2

C, D for navigation through room2 and room3

E for navigation through room3 and balcony

# How 2 build
It's super duper easy!
## .love file
First, download [LÖVE](https://love2d.org). Then, download the source and put all of the source files into a ```Power-hungry.zip``` file. 

Then rename it to ```Power-hungry.love```.

## Native executable
Make sure you've done the last step, then go to this one.

For macOS, put the Power-hungry.love file in ```love.app/Contents/Resources```.

For Windows, open a CMD window, CD into the directory where love.exe and Power-hungry.love is located.

Then type ```copy /b love.exe+Power-hungry.love Power-hungry.exe```.

For Linux, open a terminal window, CD into the folder with love.AppImage and Power-hungry.love is located. 

Then type ```cat love.AppImage Power-hungry.love > Power-hungry```. 

Press enter and then type ```chmod +x ./Power-hungry```.

# Room Contents

## Room 1 a.k.a The Study
2 Drawers - referenced in code as "drawers"

1 Chair - referenced in code as "chair"

1 Table with Lamp - referenced in code as "lampontable"

1 Door - referenced in code as "door"

1 A Letter Image - referenced in code as "firstbutton"

## Room 2 a.k.a The Bedroom
1 Bed - referenced in code as "bed"

2 Doors - referenced in code as "door"

1 B Letter Image - referenced in code as "secondbutton"

1 C Letter Image - referenced in code as "thirdbutton"

1 Bookcase - referenced in code as "bookcase"

## Room 3 a.k.a The Toy Room
1 Box with Ball Pit Balls falling out - referenced in code as "blbbox"

3 Toy Cubes - referenced in code as "toycubes"

2 Doors - referenced in code as "door"

1 D Letter Image - referenced in code as "fourthbutton"

1 E Letter Image - referenced in code as "fifthbutton"

## Room4 a.k.a The Balcony
2 Chairs & 1 table - referenced in code as "chairsandtable"

1 Door - referenced in code as "door"

1 F Letter Image - referenced in code as "sixthbutton"
