# benvest 010 6/18/20

function draw(radius, circlesize, sides)
    # stroke the polygon path
    #   close=true does this `line(first(pts), last(pts), :stroke)`
    #   poly(pts, :stroke, close=true)
    #       Just as a reminder this is kind of cool, since I am already drawing a line to each point that is
    #       not the point that a circle is being drawn at the shape of the polygon is ensured.

    pts = ngon(O, radius, sides)
    # iterate over the points; draw a circle at each point, then connect the point to every other point
    for j=1:sides
        pt = pts[j]
        circle(pt, circlesize, :stroke)
        for other_point in filter(x -> x != pt, pts)
            line(pt, other_point, :stroke)
        end
    end
end

@png begin
    points = 6
    primarysize = 220
    circlesize = primarysize/4
    secondarysize = primarysize/2

    setline(1.35)
    circle(O, circlesize, :stroke)
    draw(primarysize, circlesize, points)
    draw(secondarysize, circlesize, points)
end

# some other stuff to try that I haven't yet done:
# * change colors based on which one it is and such
# * animate this into something that moves in and out like the lumen in tripp
# * expand into 3d
# * rigorous geometric study of the angles and such?
