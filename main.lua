-- main game template file
function love.load()
    love.graphics.print("Hello World", 400,300)
    x = 100
    y = 200

    --Window width and window height
    pWidth = love.graphics.getPixelWidth()
    pHeight = love.graphics.getPixelHeight()
end

function love.update()
  whale = love.graphics.newImage("whale.png")
  x = x + 0.5
  y  = y + 1.5
  
end

function love.draw()
 -- love.graphics.rectangle("line", 100, 50, 200,150)
    -- love.graphics.draw(whale,x,y,0.3,0.3)
    -- love.graphics.setBackgroundColor(0,0,0.5)
    love.graphics.print(pWidth, 400,300)
    love.graphics.print(pHeight,300,200)

end

