-- in load function the code runs once

--local listOfReactangels = {}
function love.load()
  require("example")
  --a table to hold a list of reactangles
  listOfReactangels = {}
  myColor = {0.3,0.9,1}
  test = 10
end 

--function to create rectangles
function createRect()
  --creating a table to hold the individual component of a rectangle
  local rect = {}

  --setting up the values to rect table 
  rect.x = love.math.random(30,800)
  rect.y = love.math.random(40,600)
  rect.w = 70
  rect.h = 90
  rect.speed = 100

  --inserting an item to listofReactangle table in this case rect "listOfReactangles{ rect{x,y,w,h,speed}}"
  table.insert(listOfReactangels,rect)
end

--when this function calls it will invoke createRect function 
function love.keypressed(key)
  if key == "up" then
    createRect()
  end
end

-- in draw and update the code runs in a loop
function love.update(dt)
   for key,value in ipairs(listOfReactangels) do
      value.x = value.x + value.speed * dt
   end
  end


function love.draw() 
  love.graphics.setColor(myColor)
  for k,v in ipairs(listOfReactangels) do
    love.graphics.rectangle("line", v.x,v.y,v.w,v.h)
  end
  love.graphics.print(test,100 ,100)  
end

