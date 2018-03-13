using SDL2
using Base.Test

include("lib/SDL.jl")

include("lib/SDL_ttf.jl")

# Integration tests
@testset "example1" begin
include(joinpath("..","src","examples","example1_cairo.jl"))
@test example1() == 1
SDL2.Quit()
end
