using SimpleDirectMediaLayer
using Test

SDL2_pkg_dir = joinpath(@__DIR__, "..","..")

@testset "FPS Manager" begin
    @test SDL_Init(SDL_INIT_VIDEO) == 0
    fpsManager = Ref(LibSDL2.FPSmanager(UInt32(0), Cfloat(0.0), UInt32(0), UInt32(0), UInt32(0)))
    @test fpsManager != C_NULL
	SDL_initFramerate(fpsManager)
    @test SDL_getFramerate(fpsManager) == 30 # default value
	SDL_setFramerate(fpsManager, UInt32(60))
    @test SDL_getFramerate(fpsManager) == 60
    SDL_Quit()
end

@testset "GFX Primitives" begin
    @test SDL_Init(SDL_INIT_VIDEO) == 0
    win = SDL_CreateWindow("Hello World!", 100, 100, 300, 400, 0)
    renderer = SDL_CreateRenderer(win, -1, 0)

    num_vertices = 100  # Number of vertices for the shape (e.g., 10 for a circle-like shape)

    size1 = 2000
    size2 = 2000
    centroid_x = round((size1 + size2 + size1) / 3)  # calculate the original centroid x-coordinate
    centroid_y = round((size1 + size1 + size2) / 3)  # calculate the original centroid y-coordinate

    offset_x = 500 - centroid_x
    offset_y = 500 - centroid_y

    radius = 100  # radius of the circle-like shape
    
    theta = 2 * pi / num_vertices  # angle between each vertex
    x_coords = Vector{Int16}(undef, num_vertices)
    y_coords = Vector{Int16}(undef, num_vertices)

    for i in 1:num_vertices
        angle = i * theta
        x = centroid_x + offset_x + radius * cos(angle)
        y = centroid_y + offset_y + radius * sin(angle)
        x_coords[i] = round(x)
        y_coords[i] = round(y)
    end
    
    LibSDL2.filledPolygonRGBA(renderer, Ref(x_coords, 1), Ref(y_coords, 1), length(x_coords), 255, 255, 255, 255);
    SDL_Quit()
end

@testset "Image Filter" begin
    @test SDL_Init(SDL_INIT_VIDEO) == 0
    LibSDL2.SDL_imageFilterMMXdetect()
    SDL_Quit()
end

@testset "Rotozoom" begin
    @test SDL_Init(SDL_INIT_VIDEO) == 0
    cat = IMG_Load(joinpath(SDL2_pkg_dir, "assets", "cat.bmp"))
    LibSDL2.rotozoomSurface(cat, 1.0, 2.0, 2)
    SDL_Quit()
end