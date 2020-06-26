# benvest
#
# cantor set

# the cantor set splits the closed region [0,1] into successivly smaller regions
# by "removing" the middle third of the region each time. performed iterativly
# this has lots of interesting consequences, and is one of the most basic fractals.

# since we are removing the middle third each time and will be dealing with ℝ we can
# simply convert to ternary then iterate over ℕ.

function convert(number, base=3, remainders=[])
    r=remainders
    if number >= base
        result = divrem(number, base)
        if typeof(result[2])<:Int
            push!(r, result[2])
            return convert(result[1], base, r)
        else
            push!(r, result[2])
            return convert(result[1]*2, base, r)
        end
    else
        push!(r, number)
        return join(reverse(map(x->string(x), r)))
    end
end
