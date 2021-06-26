
function love.load()
Object =  require "classic" --this file imitates oop behaviour accross the program
require "shape"
require "circle"    --refrences to indivdual files
require "rectangle"
obj1 = Circle(100,100,75)
obj2 = Circle(300,300,85)
obj3 = Rectangle(500,450,80,30)
end

function love.update(dt)
    obj1:update(dt)
    obj2:update(dt)
    obj3:update(dt)
end

function love.draw()
   obj1:draw()
   obj2:draw()
   obj3:draw()
end

