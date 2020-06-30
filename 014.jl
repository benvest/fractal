using Luxor
using Printf

width = 800
height = 800

function branch(way, x, y, d)
    if way == :left
        newx = x-(width/(d*2))
    elseif way == :right
        newx = x+(width/(d*2))
    end
    newy = y+(height/(d*2))
    line(Point(x, y), Point(newx, y), :stroke)
    line(Point(newx, y), Point(newx, newy), :stroke)
    if d > 8
        return
    end
    branch(:left, newx, newy, (d+3))
    branch(:right, newx, newy, (d+3))
end

@pdf begin
    line(Point(0, -height/4), O, :stroke)
    branch(:left, 0, 0, 1)
    branch(:right, 0, 0, 1)
end 5000 5000
