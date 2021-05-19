using SimpleDirectMediaLayer.LibSDL2
using Test

SDL2_pkg_dir = joinpath(@__DIR__, "..", "..")

@testset "Init+Quit" begin
    # Test that you can init and quit SDL_ttf multiple times correctly.
    @test SDL_Init(SDL_INIT_EVERYTHING) == 0
    @test TTF_Init() == 0
    TTF_Quit()
    SDL_Quit()

    @test SDL_Init(SDL_INIT_EVERYTHING) == 0
    @test TTF_Init() == 0
    TTF_Quit()
    SDL_Quit()
end

@testset "Text" begin
    @test SDL_Init(SDL_INIT_EVERYTHING) == 0
    @test TTF_Init() == 0

    @testset "Simple text" begin
        font = TTF_OpenFont(joinpath(SDL2_pkg_dir, "assets/fonts/FiraCode/ttf/FiraCode-Regular.ttf"), 14)
        @test font != C_NULL
        txt = "Hello World!"
        text = TTF_RenderText_Blended(font, txt, SDL_Color(20, 20, 20, 255))
        @test text != C_NULL

        fx, fy = Ref{Cint}(0), Ref{Cint}(0)
        @test TTF_SizeText(font, txt, fx, fy) == 0
        @test fx[] > 0
        @test fy[] > 0
    end

    TTF_Quit()
    SDL_Quit()
end

@testset "Rendering" begin
    @test SDL_Init(SDL_INIT_EVERYTHING) == 0
    @test TTF_Init() == 0
    win = SDL_CreateWindow("Hello World!", 100, 100, 300, 400, 0)
    renderer = SDL_CreateRenderer(win, -1, 0)

    # try rendering with complicated text
    @testset "Special Characters text" begin
        font = TTF_OpenFont(joinpath(SDL2_pkg_dir, "assets/fonts/FiraCode/ttf/FiraCode-Regular.ttf"), 14)
        @test font != C_NULL
        txt = "@BinDeps.install Dict([ (:glib, :libglib) ])"
        text = TTF_RenderText_Blended(font, txt, SDL_Color(20, 20, 20, 255))
        @test text != C_NULL
        tex = SDL_CreateTextureFromSurface(renderer, text)
        @test tex != C_NULL

        fx, fy = Ref{Cint}(0), Ref{Cint}(0)
        @test TTF_SizeText(font, txt, fx, fy) == 0
        @test fx[] > 0
        @test fy[] > 0
        @test SDL_RenderCopy(renderer, tex, C_NULL, Ref(SDL_Rect(0, 0, fx[], fy[]))) == 0

        SDL_RenderPresent(renderer)
    end

    TTF_Quit()
    SDL_Quit()
end
