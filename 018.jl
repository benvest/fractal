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
    # not sure what the best way to center it would be?
    turtle = Turtle()
    Pencolor(turtle, "green")
    Penwidth(turtle, 1.25)

    length = 10
    for command in split(commands, "")
        executerule(turtle, command, length, 90)
    end
end

function rule(p)
    if p == "X"
        return "X+YF+"
    elseif p == "Y"
        return "-FX-Y"
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
    axiom = "FX"
    commands = rewriter(axiom, 20)
    turtledraw(commands)
end 25000 25000

# Some thoughts on where all this is going.

# Now that I have figured out how to represent an L-System using Luxor the next step is to proceduralize
# and stucture the grammer such that I can experiment with new designs.

# Something that strikes me, without much investigation, is that being able to describe an L-System just based
# off of a visual description (read: rasta data) would be incredibly interesting and potentially useful.
#
# So given the basics lets add structure where appropriate and build this out with the goal of always having
# something pretty to look at. If it is not making images then it is not aligned with the goal of learning,
# in other words, this is a brief transgression into the fact that this is not a software engineering project
# and I will probably be the only developer that will ever use this thing.
#
# (with that out of the way)
#
# Each of the operations should be fully parameterized by default, the higher levels (programming interface)
# can be created as a subset of what was created for the lower levels such that fully parametarized can be turned
# off if that level of detail is too much for whatever I'm trying to do.
#
# Use other writing and code as a guide but make sure that everything that goes into this repo was coded by
# me not someone else, such that if needed I could recreate each of the images with c and an old vga cable
# and duct tape as well since that fits into this weird making it work with limited resources theme.
