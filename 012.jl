# benvest
#
# cantor set

# the cantor set splits the closed region [0,1] into successivly smaller regions
# by "removing" the middle third of the region each time. performed iterativly
# this has lots of interesting consequences, and is one of the most basic fractals.

# since we are removing the middle third each time and will be dealing with ℝ we can
# simply convert to ternary then iterate over ℕ.

function changebase(number, base=3, remainders=[])
    r=remainders
    if number >= base
        result = divrem(number, base)
        if typeof(result[2])<:Int
            push!(r, result[2])
            return changebase(result[1], base, r)
        else
            push!(r, result[2])
            return changebase(result[1]*2, base, r)
        end
    else
        push!(r, number)
        return reverse(r)
    end
end

# now that I can convert numbers from base 10 to base anything I'm going to try to figure out how to make
# some things by using the numbers 0 through 100 along with some rules to decide which direction and from
# what point a line is drawn.

function generatenumbers(n=100)
    numbers = []
    for i = 1:n
        push!(numbers, changebase(i, 2))
    end
    return numbers
end

function draw()
    numbers = generatenumbers(10)
    @png begin
        for row in numbers
            for col in row

            end
        end
    end
end

linelength = 100
0 = right
1 = 120degrees
2 = 240degrees

0 right100
line(origin, (100, 0))
1
line(origin, (linelength+cos(2π/3), linelength+sin(2π/3)))
2
line(origin, (linelength+cos(4π/3), linelength+sin(4π/3)))
1 0
line(origin, (linelength+cos(2π/3), linelength+sin(2π/3)))
line(origin, (100, 0))

1 1
1 2
2 0
2 1
2 2
1 0 0
1 0 1
