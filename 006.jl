# benvest 006 6-17-20
#
# hypotrochoids
#
# from a demo

using Luxor

Drawing()
origin()
background("grey15")
sethue("antiquewhite")
setline(1)
p = hypotrochoid(100, 25, 55, :stroke, stepby=0.01, vertices=true)
for i=0:3:15
    poly(offsetpoly(p, i), :stroke, close=true)
end
finish()
preview()
