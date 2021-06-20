-- main game template file
function love.load()
    love.graphics.print("Hello World", 400,300)
    x = 100
    y = 200
    speed = 100 
    
    --Window width and window height
    Window_Width = love.graphics.getPixelWidth()
    Window_Height = love.graphics.getPixelHeight()
end

function love.update(dt)
  whale = love.graphics.newImage("whale.png")
  if love.keyboard.isDown("right") then
       x = x + speed * dt
  end

  if  x > Window_Width or x <= 0 then
    speed = (speed * -1) 
  end
  --y  = y + 1.5
  
end

function love.draw() -- love.graphics.rectangle("line", 100, 50, 200,150)
    love.graphics.draw(whale,x,y,0.5,0.5)
    love.graphics.setBackgroundColor(0,0,0.5)
    -- love.graphics.print(Window_Width, 400,300)
    -- love.graphics.print(Window_Height,300,200)
   

end

