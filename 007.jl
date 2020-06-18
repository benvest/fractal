# benvest 007 6-17-20
#
# spirals
using Luxor, Colors

Drawing(600,400,"07.pdf")
origin()

spiraldata = [
  (-2, "Lituus",      50),
  (-1, "Hyperbolic", 100),
  ( 1, "Archimedes",   1),
  ( 2, "Fermat",       5)
]

grid = GridRect(O - (200, 0), 130, 50)

for aspiral in spiraldata
    @layer begin
        translate(nextgridpoint(grid))
        spiral(last(aspiral), first(aspiral), period=20π, :stroke)
        label(aspiral[2], :S, offset=100)
    end
end

finish()
preview()
