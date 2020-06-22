# benvest 010 6/18/20
using Luxor

function draw(primarysize=500)
    sides = 6

    circlesize = primarysize/4
    secondarysize = primarysize/2

    setline(1.35)
    circle(O, circlesize, :stroke)

    outerpts = ngon(O, primarysize, sides)
    innerpts = ngon(O, secondarysize, sides)

    # iterate over the points; draw a circle at each point, then connect the point to every other point
    for j=1:sides
        pt = outerpts[j]
        circle(pt, circlesize, :stroke)
        for other_point in filter(x -> x != pt, outerpts)
            line(pt, other_point, :stroke)
        end
        for innerpt in innerpts
            line(pt, innerpt, :stroke)
        end
    end
    # iterate over the points; draw a circle at each point, then connect the point to every other point
    for j=1:sides
        pt = innerpts[j]
        circle(pt, circlesize, :stroke)
        for other_point in filter(x -> x != pt, innerpts)
            line(pt, other_point, :stroke)
        end
    end
end

@png begin
    draw(500)
    draw(250)
    draw(125)
    draw(62.5)
end 1200 1200

# some other stuff to try that I haven't yet done:
# * Recursivly draw as many layers as desired, I think we could stack this structure many many times and get an interesting result
# * ^ then draw recursivly while rotating
# * change colors based on which one it is and such
# * animate this into something that moves in and out like the lumen in tripp
# * expand into 3d
# * rigorous geometric study of the angles and such?
