debug = false

function love.conf(t)
    t.title = "Power-hungry"
    t.window.width = 800
    t.window.height = 600
    if debug == true then
        t.console = true
    else
        t.console = false
    end
    t.version = "11.4"
    t.author = "SPLASH!"
    love.filesystem.setIdentity("Power-hungry")
end