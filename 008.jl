# benvest 008 6-17-20
#
# turtle graphic demo square cool colors

using Luxor, Colors
Drawing(600, 400, "turtlez.pdf")
origin()
background("midnightblue")
setantialias(6)

🐢 = Turtle() # you can type the turtle emoji with \:turtle:
Pencolor(🐢, "cyan")
Penwidth(🐢, 1.5)
n = 5
for i in 1:400
    global n
    Forward(🐢, n)
    Turn(🐢, 89.5)
    HueShift(🐢)
    n += 0.75
end
fontsize(20)
# Message(🐢, "finished")
finish()
preview()
