# A bunch more to implement from 'http://paulbourke.net/fractals/lsys/'
#
# Triangle:
# axiom = F+F+F
# F -> F-F+F
# angle = 120
#
# Quadratic Gosper:
# axiom = -YF
# X -> XFX-YF-YF+FX+FX-YF-YFFX+YF+FXFXYF-FX+YF+FXFX+YF-FXYF-YF-FX+FX+YFYF-
# Y -> +FXFX-YF-YF+FX+FXYF+FX-YFYF-FX-YF+FXYFYF-FX-YFFX+FX+YF-YF-FX+FX+YFY
# angle = 90
#
# Square Serpinski:
# axiom = F+XF+F+XF
# X -> XF-F+F-XF+F+XF-F+F-X
# angle = 90
#
# Crystal:
# axiom = F+F+F+F
# F -> FF+F++F+F
# angle = 90
#
# Peano:
# axiom = X
# X -> XFYFX+F+YFXFY-F-XFYFX
# Y -> YFXFY-F-XFYFX+F+YFXFY
# angle = 90
#
# Quadratic Snowflake:
# axiom = F
# F -> F-F+F+F-F
# angle = 90
#
# Variation 1:
# axiom = FF+FF+FF+FF
# F -> F+F-F-F+F
# angle = 90
#
# Quadratic Koch Island:
# axiom = F+F+F+F
# F -> F+F-F-FFF+F+F-F
# angle = 90
# String length: 63
#
# Variation 1:
# axiom = F+F+F+F
# F -> F-FF+FF+F+F-F-FF+F+F-F-FF-FF+F
# angle = 90
#
# Variation 2:
# axiom = X+X+X+X+X+X+X+X
# X -> X+YF++YF-FX--FXFX-YF+X
# Y -> -FX+YFYF++YF+FX--FX-YF
# angle = 45
#
# Koch Curve:
# axiom = F+F+F+F
# F -> F+F-F-FF+F+F-F
# angle = 90
#
# Board:
# axiom = F+F+F+F
# F -> FF+F+F+F+FF
# angle = 90
#
# Hilbert:
# axiom = X
# X -> -YF+XFX+FY-
# Y -> +XF-YFY-FX+
# angle = 90
#
# Sierpinski Arrowhead:
# axiom = YF
# X -> YF+XF+Y
# Y -> XF-YF-X
# angle = 60
#
# Von Koch Snowflake:
# axiom = F++F++F
# F -> F-F++F-F
# angle = 60
#
# Cross:
# axiom = F+F+F+F
# F -> F+FF++F+F
# angle = 90
#
# Variation 1:
# axiom = F+F+F+F
# F -> F+F-F+F+F
# angle = 90
#
# Pentaplexity:
# axiom = F++F++F++F++F
# F -> F++F++F|F-F++F
# angle = 36
#
# Tiles:
# axiom = F+F+F+F
# F -> FF+F-F+F+FF
# angle = 90
#
# Rings:
# axiom = F+F+F+F
# F -> FF+F+F+F+F+F-F
# angle = 90
#
# Dragon:
# axiom = FX
# X -> X+YF+
# Y -> -FX-Y
# angle = 90
#
# Hexagonal Gosper:
# axiom = XF
# X -> X+YF++YF-FX--FXFX-YF+
# Y -> -FX+YFYF++YF+FX--FX-Y
# angle = 60
#
# Lévy curve:
# axiom = F
# F -> -F++F-
# angle = 45
#
# Sierpinski:
# axiom = F--XF--F--XF
# X -> XF+F+XF--F--XF+F+X
# angle = 45
#
# Krishna Anklets:
# axiom = -X--X
# X -> XFX--XFX
# angle = 45
#
#
# Kolam:
# axiom = (-D--D)
# A -> F++FFFF--F--FFFF++F++FFFF--F
# B -> F--FFFF++F++FFFF--F--FFFF++F
# C -> BFA--BFA
# D -> CFC--CFC
# angle = 45
