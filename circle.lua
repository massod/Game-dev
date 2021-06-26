Circle = Shape:extend()

function Circle:new(x,y,radius)
    Circle.super.new(self,x,y)  --these are the features extending from Shape file   the super method means its using the shape classes values
    self.radius = radius
end

function Circle:draw()
    love.graphics.circle("line",self.x,self.y,self.radius)
end