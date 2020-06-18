# euclidean eggs tutorial http://juliagraphics.github.io/Luxor.jl/stable/tutorial/

using Luxor, Colors

function egg(radius=80, action=:none)
    A, B = [Point(x, 0) for x in [-radius, radius]]

    nints, C, D = intersectionlinecircle(Point(0, -2radius), Point(0, 2radius), A, 2radius)
    flag, C1 = intersectionlinecircle(C, D, O, radius)
    nints, I3, I4 = intersectionlinecircle(A, C1, A, 2radius)
    nints, I1, I2 = intersectionlinecircle(B, C1, B, 2radius)

    if distance(C1, I1) < distance(C1, I2)
        ip1 = I1
    else
        ip1 = I2
    end
    if distance(C1, I3) < distance(C1, I4)
        ip2 = I3
    else
        ip2 = I4
    end

    newpath()
    arc2r(B, A, ip1, :path)
    arc2r(C1, ip1, ip2, :path)
    arc2r(A, ip2, B, :path)
    arc2r(O, B, A, :path)
    closepath()

    do_action(action)
end

function rotational_petals()
    @png begin
        setopacity(0.7)
        for ϕ in range(0, step=π/2, length=6)
            @layer begin
                rotate(ϕ)
                translate(10,-80)

                for θ in range(0, step=π/6, length=12)
                    @layer begin
                        rotate(θ)
                        translate(0,-150)
                        egg(50, :path)
                        setline(10)
                        randomhue()
                        fillpreserve()
                        randomhue()
                        strokepath()
                    end
                end
            end
        end
    end
end

function spikeyegg()
    @png begin
        egg(80, :path)
        pgon = first(pathtopoly()) |> unique
        pc = polycentroid(pgon)

        for pt in 1:2:length(pgon)
            pgon[pt] = between(pc, pgon[pt], 0.8)
        end

        for i in 30:-3:-8
            randomhue()
            op = offsetpoly(pgon, i)
            poly(op, :stroke, close=true)
        end
    end 800 800 "/tmp/spike-egg.png"
end

@pdf begin
    setopacity(0.5)
    eg(a) = egg(250, a)
    sethue("gold")
    eg(:fill)
    eg(:clip)
    @layer begin
       for i in 540:-4:1
           sethue(Colors.HSV(i, 1.0, 0.8))
           rotate(π/30)
           ngon(O, i, 5, 0, :stroke)
       end
    end
    clipreset()
    sethue("red")
    eg(:stroke)
end 1000 1000 "crazyeggy.pdf"
