
function love.load()
  require "collision"
  
  r1 = {
    x = 10,
    y = 100,
    width = 100,
    height = 100
  }
  --creating two rectangles based on table data
  r2 = {
    x = 250,
    y = 120,
    width = 150,
    height = 120
  }
  
end

function love.update(dt)
-- make one rectangle move in this case r1
   posX = love.mouse.getX()
   posY = love.mouse.getY()
   --r1.x = r1.x + 100 * dt
   r1.x = posX
   r1.y = posY
    

end

function love.draw()

  local mode
  if collision_detection(r1,r2) then
    mode = "fill"
  else
    mode = "line"
  end
  love.graphics.setColor(1,0,0)
  love.graphics.rectangle(mode,r1.x,r1.y,r1.width,r1.height)
  love.graphics.setColor(0,0,1)
  love.graphics.rectangle(mode, r2.x,r2.y,r2.width,r2.height)
  love.graphics.setColor(0,1,0)
  love.graphics.print(posX ,400,300)
  love.graphics.print(posY,450,300)
end

--comments are vital part of any programing it must be included
--comments helps you understand what the code does and helps to clear up the overall algorithms.

