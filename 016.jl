using Luxor

function executerule(turtle, c, length, angle=90)
    if c == "F"
        Forward(turtle, length)
    elseif c == "-"
        Orientation(turtle, rad2deg(turtle.orientation)-angle)
    elseif c == "+"
        Orientation(turtle, rad2deg(turtle.orientation)+angle)
    end
end

function turtledraw(commands)
    turtle = Turtle(-1000, 1000)
    Pencolor(turtle, "green")
    Penwidth(turtle, 1.25)

    length = 1.5
    for command in split(commands, "")
        executerule(turtle, command, length, 90)
    end
end

function rule(p)
    if p == "F"
        return "FF-F-F-F-FF"
    else
        return p
    end
end
rewrite(s) = join(map(rule, split(s, "")))
function rewriter(axiom, n)
    r = axiom
    for i=1:n
        r = rewrite(r)
    end
    return r
end
@pdf begin
    background("grey15")
    setantialias(3)
    # origin(-30, 0)
    axiom = "F-F-F-F"
    commands = rewriter(axiom, 7)
    turtledraw(commands)
end 5000 5000
