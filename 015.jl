# F = forward
# - = -90
# + = 90

using Luxor

function executerule(turtle, prule)
    if prule == "F"
        Forward(turtle, 10)
    elseif prule == "-"
        Orientation(turtle, rad2deg(turtle.orientation)-90)
    elseif prule == "+"
        Orientation(turtle, rad2deg(turtle.orientation)+90)
    end
end

function turtledraw(commands)
    turtle = Turtle()
    Pencolor(turtle, "cyan")
    Penwidth(turtle, 1.25)

    for command in split(commands, "")
        executerule(turtle, command)
    end
end

function stddraw(commands, startangle=0, stepsize=5, ox=0, oy=0)
    α = startangle
    d = stepsize
    x = ox
    y = oy
    for command in split(commands, "")
        current_loc = Point(x, y)
        if command == "F"
            x = x + d*cos(deg2rad(α))
            y = y + d*sin(deg2rad(α))
            line(current_loc, Point(x, y), :stroke)
        elseif command == "-"
            α -= 90
        elseif command == "+"
            α += 90
        end
    end
end

@pdf begin
    commands = "FFF-FF-F-F+F+FF-F-FFF"
    turtledraw(commands)
end
