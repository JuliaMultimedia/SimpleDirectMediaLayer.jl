using SimpleDirectMediaLayer
using Test

SDL2_pkg_dir = joinpath(@__DIR__, "..","..")

@testset "Image" begin
    @test SDL_Init(SDL_INIT_VIDEO) == 0
    @test IMG_Load(joinpath(SDL2_pkg_dir, "assets", "cat.bmp")) != C_NULL
    @test IMG_Load(joinpath(SDL2_pkg_dir, "assets", "cat.png")) != C_NULL
    @test IMG_Load(joinpath(SDL2_pkg_dir, "assets", "cat.jpg")) != C_NULL
    SDL_Quit()
end
