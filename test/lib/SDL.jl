using SimpleDirectMediaLayer.LibSDL2
using Test

SDL2_pkg_dir = joinpath(@__DIR__, "..", "..")

@testset "Init+Quit" begin
    # Test that you can init and quit SDL multiple times correctly.
    @test SDL_Init(SDL_INIT_VIDEO) == 0
    SDL_Quit()

    @test SDL_Init(SDL_INIT_VIDEO) == 0
    SDL_Quit()
end


@testset "Window open+close" begin
    @test SDL_Init(SDL_INIT_VIDEO) == 0
    # Create window
    win = SDL_CreateWindow("Hello World!", 100, 100, 300, 400, SDL_WINDOW_HIDDEN)
    @test win != C_NULL

    renderer = SDL_CreateRenderer(win, -1, SDL_RENDERER_SOFTWARE)
    if get(ENV, "HAS_JOSH_K_SEAL_OF_APPROVAL", "") == "true" && Sys.islinux()
        @test_broken renderer != C_NULL
    else
        @test renderer != C_NULL
    end

    # Close window
    SDL_DestroyWindow(win)

    # Create window again
    win = SDL_CreateWindow("Hello World!", 100, 100, 300, 400, SDL_WINDOW_HIDDEN)
    @test win != C_NULL
    renderer = SDL_CreateRenderer(win, -1, SDL_RENDERER_SOFTWARE)
    @test renderer != C_NULL

    SDL_Quit()
end

@testset "Window" begin
    @test SDL_Init(SDL_INIT_VIDEO) == 0

    win = SDL_CreateWindow("Hello World!", 100, 100, 300, 400, SDL_WINDOW_HIDDEN)

    # Test get size
    w, h = Ref{Cint}(-1), Ref{Cint}(-1)
    SDL_GetWindowSize(win, w, h)
    @test w[] == 300
    @test h[] == 400

    # Test drawing
    renderer = SDL_CreateRenderer(win, -1, SDL_RENDERER_SOFTWARE)

    rect = SDL_Rect(1, 1, 50, 50)
    @test SDL_RenderFillRect(renderer, Ref(rect)) == 0

    @testset "Load/Save BMP" begin
        img = SDL_LoadBMP_RW(SDL_RWFromFile(joinpath(SDL2_pkg_dir, "assets/cat.bmp"), "rb"), 1)
        @test img != C_NULL

        img_tex = SDL_CreateTextureFromSurface(renderer, img)
        @test img_tex != C_NULL

        src = SDL_Rect(0,0,0,0)
        @test SDL_RenderCopy(renderer, img_tex, C_NULL, C_NULL) == 0 # Fill the renderer with img
        SDL_RenderPresent(renderer)

        # Save bmp
        tmpFile = tempname()*".bmp"
        @test SDL_SaveBMP_RW(img, SDL_RWFromFile(tmpFile, "w"), 1) == 0

        img2 = SDL_LoadBMP_RW(SDL_RWFromFile(tmpFile, "r"), 1)
        @test img2 != C_NULL

        # Compare the two images
        # Some surfaces must be locked before accessing pixels.
        @test 0 == SDL_LockSurface(img)
        @test 0 == SDL_LockSurface(img2)

        img_surface1 = unsafe_load(img)
        img_surface2 = unsafe_load(img2)

        @test (img_surface1.w, img_surface1.h) == (img_surface2.w, img_surface2.h)

        @test img_surface1.format != C_NULL
        @test img_surface2.format != C_NULL

        # Test pixels are equal
        pxl_format1 = unsafe_load(img_surface1.format)
        numPixelBytes = img_surface1.w * img_surface1.h * pxl_format1.BytesPerPixel
        pixels1 = [unsafe_load(Ptr{UInt8}(img_surface1.pixels), i) for i in 1:numPixelBytes]
        pixels2 = [unsafe_load(Ptr{UInt8}(img_surface2.pixels), i) for i in 1:numPixelBytes]

        @test pixels1 == pixels2

        # Some surfaces must be locked/unlocked while accessing pixels.
        SDL_UnlockSurface(img)
        SDL_UnlockSurface(img2)
    end

    # Close window
    SDL_DestroyWindow(win)
    SDL_Quit()
end
