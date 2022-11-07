using SimpleDirectMediaLayer.LibSDL2
using Test

if haskey(ENV, "CI") && !Sys.isapple()
    include("lib/SDL.jl")
end
include("lib/SDL_image.jl")
include("lib/SDL_ttf.jl")
include("lib/SDL_mixer.jl")
