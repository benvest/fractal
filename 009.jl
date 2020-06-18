# benvest 6-17-20
#
# archimedes spiral using turtle graphics

using Luxor

function draw(turtle, a=0.1, turns=16)
    n = a
    for t=0:a:turns*pi
        Orientation(turtle, rad2deg(t))
        Forward(turtle, n)
        HueShift(turtle)
        n += a
    end
end

Drawing(800, 800, "09.pdf")
origin()
background("grey15")
setantialias(6)
turtle = Turtle()
Pencolor(turtle, "cyan")
Penwidth(turtle, 1.25)
draw(turtle, 0.1, 8)
finish()
preview()
