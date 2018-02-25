using SDL2
using Base.Test

# write your own tests here
include(joinpath("..","src","examples","example1_cairo.jl"))
@test example1() == 1