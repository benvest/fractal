# fractal

This project is intended to increase my understanding of the following.

- fractals, iterative mappings and chaos
- julia
- graphics and geometric considerations
- recursion and dynamic programming

Possible branching points:

- graphics generation / manipulation ui
- fractal vr graphics
- fractal zooms
- rendering high quality prints and getting them printed (automagically preferably)

# Notes

The primary library that I will be using for graphics rendering is Luxor. Luxor is built up on top of Cairo,
which is a wrapper around the C library of the same name. A nice aspect of Luxor is that it resembles in many
ways the graphics pipeline that I am familiar with from Swift, it also is quite similar to the Javascript
canvas API.

In the research directory both of these projects exist for additional reference. The Cairo library is a good
example of wrapping a C library, also.
