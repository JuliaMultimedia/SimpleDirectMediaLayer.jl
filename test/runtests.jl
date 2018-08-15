using SimpleDirectMediaLayer
const SDL2 = SimpleDirectMediaLayer
using Test

include("lib/SDL.jl")
include("lib/SDL_ttf.jl")
include("lib/SDL_mixer.jl")

# Integration tests
@testset "example1" begin
    include(joinpath(@__DIR__,"..","src","examples","example1.jl"))
end
