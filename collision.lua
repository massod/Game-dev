
function collision_detection(a,b)
    --Fisrt objects perimeters
     local a_left  = a.x
     local a_right = a.x + a.width 
     local a_top = a.y
     local a_bottom = a.y + a. height

     --second objects perimeters
     local b_left  = b.x
     local b_right = b.x + b.width 
     local b_top = b.y
     local b_bottom = b.y + b. height
    --collision detection
    if a_right > b_left and a_left < b_right
        and a_bottom > b_top and a_top < b_bottom then
            return true
        else
            return false
    end
end