# benvest 6/18/20

using Luxor

function draw(turtle)
    n = 2
    for t=0:500
        Forward(turtle, n)
        Turn(turtle, 30)
        Forward(turtle, n)
        Turn(turtle, 60)
        Forward(turtle, n)
        Turn(turtle, 89.5)
        HueShift(turtle)
        n += 0.75
    end
end

@pdf begin
    origin()
    background("grey15")
    setantialias(6)
    turtle = Turtle()
    Pencolor(turtle, "cyan")
    Penwidth(turtle, 1.25)
    draw(turtle)
    finish()
    # preview()
end 800 800

# This is kinda a cool swirl pattern
#
# Next step is to parameterize more of this so that I can start to see more general patterns
