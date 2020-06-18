# benvest 6-17-20
#
# box maps

using Luxor

function drawfibmap()
    fib = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]

    # make a boxmap and store the tiles
    tiles = boxmap(fib, BoundingBox()[1], 800, 450)

    for (n, t) in enumerate(tiles)
        randomhue()
        bb = BoundingBox(t)
        sethue("black")
        box(bb - 5, :stroke)

        randomhue()
        box(bb - 8, :fill)

        # text labels
        sethue("white")

        # rescale text to fit better
        fontsize(boxwidth(bb) > boxheight(bb) ? boxheight(bb)/4 : boxwidth(bb)/4)
        text(string(sort(fib, rev=true)[n]),
            midpoint(bb[1], bb[2]),
            halign=:center,
            valign=:middle)
    end
end

function drawbasic()
    fontsize(16)
    fontface("HelveticaBold")
    pt = Point(-200, -200)
    a = rand(10:200, 15)
    tiles = boxmap(a, Point(-200, -200), 400, 400)
    for (n, t) in enumerate(tiles)
        randomhue()
        bb = BoundingBox(t)
        box(bb - 2, :stroke)
        box(bb - 5, :fill)
        sethue("white")
        text(string(n), midpoint(bb[1], bb[2]), halign=:center)
    end
end

Drawing()
background("white")
origin()

drawfibmap()
# drawbasic()

finish()
preview()
