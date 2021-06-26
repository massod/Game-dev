Shape = Object:extend() -- this gets its oop features from Object claasic

function Shape:new(x,y)
    self.x = x          
    self.y = y          --these parameters shares across other objects by extending 
    self.speed = 100
end

function Shape:update(dt)
    self.x = self.x + self.speed * dt
end
                         --another function added for shared across my children
function Shape:reverse()
    if self.x > 800 or self.x <= 0 then
        self.speed = self.speed * -1
    end
end
