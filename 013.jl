using Luxor
function draw(dir, x, y, length)
    if dir == "up"
        orientation = 90
    elseif dir == "down"
        orientation = 270
    elseif dir == "right"
        orientation = 0
    elseif dir == "left"
        orientation = 180
    else
        "invalid dir $dir"
        return
    end

    if length < 10
        return
    end
    newlength = length*1/sqrt(2)
    if dir == "up"
        draw("right", x+newlength, y, newlength)
        turtle = Turtle()
        Reposition(turtle, x, y)
        Pencolor(turtle, "grey9")
        Penwidth(turtle, 1.25)
        # HueShift(turtle, rand(-1000:1000))
        Orientation(turtle, orientation)
        Forward(turtle, length)
        draw("left", x-newlength, y, newlength)
    elseif dir == "down"
        draw("right", x+newlength, y, newlength)
        turtle = Turtle()
        Reposition(turtle, x, y)
        Pencolor(turtle, "grey9")
        Penwidth(turtle, 1.25)
        # HueShift(turtle, rand(-1000:1000))
        Orientation(turtle, orientation)
        Forward(turtle, length)
        HueShift(turtle)
        draw("left", x-newlength, y, newlength)
    elseif dir == "right"
        draw("up", x, y+newlength, newlength)
        turtle = Turtle()
        Reposition(turtle, x, y)
        Pencolor(turtle, "grey9")
        Penwidth(turtle, 1.25)
        # HueShift(turtle, rand(-1000:1000))
        Orientation(turtle, orientation)
        Forward(turtle, length)
        HueShift(turtle)
        draw("down", x, y-newlength, newlength)
    elseif dir == "left"
        draw("up", x, y+newlength, newlength)
        turtle = Turtle()
        Reposition(turtle, x, y)
        Pencolor(turtle, "grey9")
        Penwidth(turtle, 1.25)
        # HueShift(turtle, rand(-1000:1000))
        Orientation(turtle, orientation)
        Forward(turtle, length)
        HueShift(turtle)
        draw("down", x, y-newlength, newlength)
    end
end
Drawing(800, 800, "09.pdf")
origin()
# background("grey15")
#setantialias(6)

draw("left", 0, 0, 325)
draw("right", 0, 0, 325)
finish()
preview()
