using SimpleDirectMediaLayer
const SDL2 = SimpleDirectMediaLayer
using Test

SDL2_pkg_dir = joinpath(@__DIR__, "..","..")

@testset "Init+Quit" begin
# Test that you can init
@test 0 == SDL2.Init(UInt32(SDL2.INIT_VIDEO))

@show SDL2.GetPlatform()

SDL2.Quit()
end
